Lib = exports["nn_lib"]:GetLibObject()
Restaurants = {}
local waitingNPCs = {}
local restaurantNPCEnabled = {}
State = {
    Fryers = {},
    Props = {},
    FriesPlates = {},
    Grills = {},
    Spatulas = {},
    TrashCans = {},
    Fridges = {},
    DrinksMachines = {}
}


bridge.framework.createUsableItem('restaurant_ticket', function(source, item)
    local src = source
    local player = bridge.framework.getPlayerData(src)
    if not player then return end
    
    local ticketData = item.metadata
    if not ticketData then
        ticketData = item.info
    end
    TriggerClientEvent('nn_food:useTicket', src, ticketData)
end)

function dprint(...)
    local args = { ... }
    local msg = ""
    for _, v in pairs(args) do
        msg = msg .. tostring(v) .. " "
    end
    print("^2[DEBUG] " .. msg .. "^0")
end

AddEventHandler('onResourceStart', function(resource)
    if resource == GetCurrentResourceName() then
        local response = MySQL.query.await('SELECT * FROM sn_restaurants')
        for _, v in pairs(response) do
            Restaurants[v.id] = v
        end

        dprint("Loaded " .. #response .. " restaurants")
    end
end)

Lib.registerCallback('nn_resto:getRestaurants', function(source, cb)
    cb(Restaurants)
end)

Lib.registerCallback('nn_cooking:hasItems', function(source, cb, items)
    local hasItems = true
    for _, item in pairs(items) do
        if not bridge.inventory.hasItem(source, item.name, item.count) then
            hasItems = false
            break
        end
    end
    cb(hasItems)
end)

Lib.registerCallback('nn_food:isEmployeeOfRestaurant', function(source, cb, restaurantId)
    local playerRestaurant = GetPlayerRestaurant(source)
    if not playerRestaurant then
        return cb(false)
    end
    
    if restaurantId and playerRestaurant.restaurantId ~= restaurantId then
        return cb(false)
    end
    
    cb(true)
end)

function GetClosestRestaurant(restaurantId)
    local rest = MySQL.query.await('SELECT * FROM sn_restaurants WHERE id = ?', {restaurantId})
    if not rest then return end

    rest = rest[1]
    local positions = type(rest.positions) == 'string' and json.decode(rest.positions) or rest.positions
    local restCoords = positions.blip
    restCoords = vector3(restCoords.x, restCoords.y, restCoords.z)
    local closestDistance = 1000000
    local closestRestaurant = nil
    for k,v in pairs(Config.Restaurants) do
        if v.Enabled then
            local distance = #(restCoords - v.coords)
            if distance < closestDistance then
                closestDistance = distance
                closestRestaurant = k
            end
        end
    end

    return closestRestaurant
end

function GetRestaurantName(restaurantId)
    local rest = MySQL.single.await('SELECT label FROM sn_restaurants WHERE id = ?', {restaurantId})
    if rest then
        return rest.label
    end
    return T('unknown_restaurant')
end

Lib.registerCallback('nn_food:getPlayerRestaurantData', function(source, cb)
    local playerRestaurant = GetPlayerRestaurant(source)
    if not playerRestaurant then return end
    cb({
        playerRestaurant = playerRestaurant,
        restaurant = GetClosestRestaurant(playerRestaurant.restaurantId)
    })
end)

RegisterNetEvent('nn_resto:createRestaurant', function(data)
    local restaurant = {
        label = data.name,
        info = {
            blipNumber = data.blipNumber,
            logoUrl = data.logoUrl,
            color = data.color,
        },
        positions = {
            management = data.positions.management,
            blip = data.positions.blip,
        }
    }
    local id = MySQL.insert.await('INSERT INTO sn_restaurants (label, info, positions) VALUES (?, ?, ?)', {
        restaurant.label,
        json.encode(restaurant.info),
        json.encode(restaurant.positions)
    })
    Restaurants[id] = restaurant
    TriggerClientEvent('nn_resto:AddRestoToState', -1, Restaurants[id])

    dprint('Restaurant ' .. restaurant.label .. ' created with id ' .. id .. ' successfully')
end)

function GetPlayerRestaurant(source)
    local player = bridge.framework.getPlayerData(source)
    if not player then
        return nil
    end
    
    local identifier = player.identifier
    if not identifier then
        return nil
    end
    
    local employee = MySQL.query.await('SELECT * FROM sn_rest_employees WHERE identifier = ? AND is_active = 1', {
        identifier
    })
    
    if not employee or #employee == 0 then
        return nil
    end
    
    local restaurantId = employee[1].restaurant_id
    local restaurant = Restaurants[restaurantId]
    
    if restaurant then
        return {
            restaurant = restaurant,
            employee = employee[1],
            restaurantId = restaurantId
        }
    end

    
    return nil
end

RegisterCommand('addemployee', function(source, args, rawCommand)
    local src = source
    
    if #args < 4 then
        if src == 0 then
            print("Usage: addemployee <restaurant_id> <player_id/name> <position> <salary> [performance]")
        else
            bridge.notification.show(src, {
                message = T('usage_addemployee'),
                type = 'error'
            })
        end
        return
    end
    
    local restaurantId = tonumber(args[1])
    local playerIdentifier = args[2]
    local position = args[3]
    local salary = tonumber(args[4])
    local performance = tonumber(args[5]) or 75
    
    if not restaurantId or not Restaurants[restaurantId] then
        local message = T('invalid_restaurant_id')
        for id, restaurant in pairs(Restaurants) do
            message = message .. '\n' .. id .. ': ' .. restaurant.label
        end
        
        if src == 0 then
            print(message)
        else
            bridge.notification.show(src, {
                message = T('invalid_restaurant_id_simple'),
                type = 'error'
            })
        end
        return
    end
    
    if not salary or salary < 0 then
        local message = T('invalid_salary_amount')
        if src == 0 then
            print(message)
        else
            bridge.notification.show(src, {
                message = message,
                type = 'error'
            })
        end
        return
    end
    
    if performance < 0 or performance > 100 then
        performance = 75
    end
    
    local targetPlayer = nil
    local targetIdentifier = nil
    local targetName = nil
    
    if string.match(playerIdentifier, '^[a-zA-Z0-9]+$') then
        local playerId = tonumber(playerIdentifier)
        if playerId then
            targetPlayer = bridge.framework.getPlayerData(playerId)
            if targetPlayer then
                targetIdentifier = targetPlayer.identifier
                targetName = targetPlayer.name.full or GetPlayerName(playerId)
            end
        else

            targetIdentifier = playerIdentifier
            targetName = playerIdentifier
        end
    else
        local players = GetPlayers()
        for _, playerId in ipairs(players) do
            local playerName = GetPlayerName(playerId)
            if playerName and string.find(string.lower(playerName), string.lower(playerIdentifier)) then
                targetPlayer = bridge.framework.getPlayerData(tonumber(playerId))
                if targetPlayer then
                    targetIdentifier = targetPlayer.identifier
                    targetName = playerName
                    break
                end
            end
        end
    end
    

    if not targetIdentifier then
        targetIdentifier = playerIdentifier
        targetName = playerIdentifier
    end
    
    local existingEmployee = MySQL.query.await('SELECT * FROM sn_rest_employees WHERE restaurant_id = ? AND identifier = ? AND is_active = 1', {
        restaurantId, targetIdentifier
    })
    
    if existingEmployee and #existingEmployee > 0 then
        local message = T('player_already_employee_restaurant')
        if src == 0 then
            print(message)
        else
            bridge.notification.show(src, {
                message = message,
                type = 'error'
            })
        end
        return
    end
    

   
    MySQL.insert.await('INSERT INTO sn_rest_employees (restaurant_id, identifier, name, position, salary, performance, hire_date) VALUES (?, ?, ?, ?, ?, ?, ?)', {
        restaurantId,
        targetIdentifier,
        targetName,
        position,
        salary,
        performance,
        os.date('%Y-%m-%d')
    })
    
    local restaurant = Restaurants[restaurantId]
    local message = T('successfully_added_employee', targetName, restaurant.label, position, salary, performance)
    
    if src == 0 then
        print(message)
    else
        bridge.notification.show(src, {
            message = message,
            type = 'success'
        })
    end
    

    TriggerClientEvent('nn_food:refreshEmployees', -1)

    local targetPlayerId = GetPlayerIdFromIdentifier(targetIdentifier)
    if targetPlayerId then
        TriggerClientEvent('nn_food:refreshPlayerRestaurantCache', targetPlayerId)
    end
    
    dprint('Employee added:', targetName, 'to restaurant', restaurant.label)
end, true)

RegisterCommand('listrestaurants', function(source, args, rawCommand)
    local src = source
    local message = T('available_restaurants')
    
    for id, restaurant in pairs(Restaurants) do
        message = message .. '\n' .. id .. ': ' .. restaurant.label
    end
    
    if src == 0 then
        print(message)
    else
        bridge.notification.show(src, {
            message = T('check_console_restaurant_list'),
            type = 'info'
        })
        print(message)
    end
end, true)

RegisterCommand('removeemployee', function(source, args, rawCommand)
    local src = source
    
    if #args < 2 then
        if src == 0 then
            print(T('usage_removeemployee'))
        else
            bridge.notification.show(src, {
                message = T('usage_removeemployee'),
                type = 'error'
            })
        end
        return
    end
    
    local restaurantId = tonumber(args[1])
    local playerIdentifier = args[2]
    
    if not restaurantId or not Restaurants[restaurantId] then
        local message = T('invalid_restaurant_id_simple')
        if src == 0 then
            print(message)
        else
            bridge.notification.show(src, {
                message = message,
                type = 'error'
            })
        end
        return
    end
    
    local employee = MySQL.query.await('SELECT * FROM sn_rest_employees WHERE restaurant_id = ? AND identifier = ? AND is_active = 1', {
        restaurantId, playerIdentifier
    })
    
    if not employee or #employee == 0 then
        local message = T('employee_not_found_restaurant')
        if src == 0 then
            print(message)
        else
            bridge.notification.show(src, {
                message = message,
                type = 'error'
            })
        end
        return
    end
    
    MySQL.update.await('UPDATE sn_rest_employees SET is_active = 0 WHERE restaurant_id = ? AND identifier = ?', {
        restaurantId, playerIdentifier
    })
    
    local restaurant = Restaurants[restaurantId]
            local message = T('employee_removed_successfully', employee[1].name, restaurant.label)
    
    if src == 0 then
        print(message)
    else
        bridge.notification.show(src, {
            message = message,
            type = 'success'
        })
    end
    
    TriggerClientEvent('nn_food:refreshEmployees', -1)
    
    local targetPlayerId = GetPlayerIdFromIdentifier(playerIdentifier)
    if targetPlayerId then
        TriggerClientEvent('nn_food:refreshPlayerRestaurantCache', targetPlayerId)
    end
    
    dprint('Employee removed:', employee[1].name, 'from restaurant', restaurant.label)
end, true)

RegisterCommand('listemployees', function(source, args, rawCommand)
    local src = source
    
    if #args < 1 then
        if src == 0 then
            print("Usage: listemployees <restaurant_id>")
        else
            bridge.notification.show(src, {
                message = T('usage_listemployees'),
                type = 'error'
            })
        end
        return
    end
    
    local restaurantId = tonumber(args[1])
    
    if not restaurantId or not Restaurants[restaurantId] then
        local message = T('invalid_restaurant_id')
        if src == 0 then
            print(message)
        else
            bridge.notification.show(src, {
                message = message,
                type = 'error'
            })
        end
        return
    end
    
    local employees = MySQL.query.await('SELECT * FROM sn_rest_employees WHERE restaurant_id = ? AND is_active = 1 ORDER BY hire_date ASC', {
        restaurantId
    })
    
    local restaurant = Restaurants[restaurantId]
    local message = string.format('Employees at %s (%d total):', restaurant.label, #employees)
    
    if #employees == 0 then
        message = message .. '\nNo employees found.'
    else
        for i, employee in ipairs(employees) do
            message = message .. string.format('\n%d. %s (%s) - %s - $%d - %d%% - Hired: %s', 
                i, 
                employee.name, 
                employee.identifier, 
                employee.position, 
                employee.salary, 
                employee.performance, 
                employee.hire_date
            )
        end
    end
    
    if src == 0 then
        print(message)
    else
        bridge.notification.show(src, {
            message = T('check_console_employee_list'),
            type = 'info'
        })
        print(message)
    end
end, true)

local restaurantDeletionConfirmations = {}

RegisterCommand('deleterestaurant', function(source, args, rawCommand)
    local src = source
    
    if source > 0 and not (args[3] and args[3] == Config.AdminPassword) then
        local player = bridge.framework.getPlayerData(src)
        if not player or not player.permission or not string.find(player.permission, "admin") then
            bridge.notification.show(src, {
                message = T('restaurant_deletion_no_permission'),
                type = 'error'
            })
            return
        end
    end

    if #args < 1 then
        if src == 0 then
            print("Usage: deleterestaurant <restaurant_id> [confirm]")
            print("Use 'confirm' as the second argument to bypass confirmation")
        else
            bridge.notification.show(src, {
                message = T('restaurant_deletion_usage'),
                type = 'error'
            })
        end
        return
    end
    
    local restaurantId = tonumber(args[1])
    local confirmFlag = args[2] and string.lower(args[2]) == "confirm"
    
    if not restaurantId or not Restaurants[restaurantId] then
        local message = "Invalid restaurant ID. Available restaurants:"
        for id, restaurant in pairs(Restaurants) do
            message = message .. '\n' .. id .. ': ' .. restaurant.label
        end
        
        if src == 0 then
            print(message)
        else
            bridge.notification.show(src, {
                message = T('invalid_restaurant_id_simple'),
                type = 'error'
            })
        end
        return
    end
    
    local restaurant = Restaurants[restaurantId]
    
    if not confirmFlag then
        restaurantDeletionConfirmations[src] = {
            restaurantId = restaurantId,
            restaurantName = restaurant.label,
            timestamp = os.time()
        }
        
        local confirmMessage = string.format(T('restaurant_deletion_confirm_message'), 
            restaurant.label, restaurantId, restaurantId)
        
        if src == 0 then
            print(confirmMessage)
        else
            bridge.notification.show(src, {
                message = string.format(T('restaurant_deletion_requires_confirmation'), restaurantId),
                type = 'warning'
            })
        end
        return
    end
    
    restaurantDeletionConfirmations[src] = nil
    
    DeleteRestaurantWithAllData(restaurantId, src)
end, true)

function DeleteRestaurantWithAllData(restaurantId, source)
    local restaurant = Restaurants[restaurantId]
    if not restaurant then
        local message = T('restaurant_deletion_not_found')
        if source == 0 then
            print(message)
        else
            bridge.notification.show(source, {
                message = message,
                type = 'error'
            })
        end
        return
    end
    
    local restaurantName = restaurant.label
    
    dprint('Starting deletion of restaurant:', restaurantName, 'ID:', restaurantId)
    
    MySQL.query.await('DELETE FROM sn_rest_pending_salaries WHERE restaurant_id = ?', {restaurantId})
    dprint('Deleted pending salaries for restaurant:', restaurantId)
    
    MySQL.query.await('DELETE FROM sn_rest_transactions WHERE restaurant_id = ?', {restaurantId})
    dprint('Deleted transactions for restaurant:', restaurantId)
    
    MySQL.query.await('DELETE FROM sn_rest_order_items WHERE order_id IN (SELECT id FROM sn_rest_orders WHERE restaurant_id = ?)', {restaurantId})
    dprint('Deleted order items for restaurant:', restaurantId)
    
    MySQL.query.await('DELETE FROM sn_rest_orders WHERE restaurant_id = ?', {restaurantId})
    dprint('Deleted orders for restaurant:', restaurantId)
    
    MySQL.query.await('DELETE FROM sn_rest_recipe_tips WHERE recipe_id IN (SELECT id FROM sn_rest_recipes WHERE restaurant_id = ?)', {restaurantId})
    dprint('Deleted recipe tips for restaurant:', restaurantId)
    
    MySQL.query.await('DELETE FROM sn_rest_recipe_notes WHERE recipe_id IN (SELECT id FROM sn_rest_recipes WHERE restaurant_id = ?)', {restaurantId})
    dprint('Deleted recipe notes for restaurant:', restaurantId)
    
    MySQL.query.await('DELETE FROM sn_rest_recipe_instructions WHERE recipe_id IN (SELECT id FROM sn_rest_recipes WHERE restaurant_id = ?)', {restaurantId})
    dprint('Deleted recipe instructions for restaurant:', restaurantId)
    
    MySQL.query.await('DELETE FROM sn_rest_recipes WHERE restaurant_id = ?', {restaurantId})
    dprint('Deleted recipes for restaurant:', restaurantId)
    
    MySQL.query.await('DELETE FROM sn_rest_menu_items WHERE restaurant_id = ?', {restaurantId})
    dprint('Deleted menu items for restaurant:', restaurantId)
    
    MySQL.query.await('DELETE FROM sn_rest_menu_categories WHERE restaurant_id = ?', {restaurantId})
    dprint('Deleted menu categories for restaurant:', restaurantId)
    
    MySQL.query.await('DELETE FROM sn_rest_tv_displays WHERE restaurant_id = ?', {restaurantId})
    dprint('Deleted TV displays for restaurant:', restaurantId)
    
    MySQL.query.await('DELETE FROM sn_rest_pos_systems WHERE restaurant_id = ?', {restaurantId})
    dprint('Deleted POS systems for restaurant:', restaurantId)
    
    MySQL.query.await('DELETE FROM sn_rest_settings WHERE restaurant_id = ?', {restaurantId})
    dprint('Deleted settings for restaurant:', restaurantId)
    
    MySQL.query.await('DELETE FROM sn_rest_invitations WHERE restaurant_id = ?', {restaurantId})
    dprint('Deleted invitations for restaurant:', restaurantId)
    
    MySQL.query.await('DELETE FROM sn_rest_inventory WHERE restaurant_id = ?', {restaurantId})
    dprint('Deleted inventory for restaurant:', restaurantId)
    
    MySQL.query.await('DELETE FROM sn_rest_analytics WHERE restaurant_id = ?', {restaurantId})
    dprint('Deleted analytics for restaurant:', restaurantId)
    
    MySQL.query.await('DELETE FROM sn_rest_finance WHERE restaurant_id = ?', {restaurantId})
    dprint('Deleted finance for restaurant:', restaurantId)
    
    MySQL.query.await('DELETE FROM sn_rest_employees WHERE restaurant_id = ?', {restaurantId})
    dprint('Deleted employees for restaurant:', restaurantId)
    
    MySQL.query.await('DELETE FROM sn_restaurants WHERE id = ?', {restaurantId})
    dprint('Deleted restaurant:', restaurantId)
        
    
    Restaurants[restaurantId] = nil
    
    TriggerClientEvent('nn_resto:restaurantDeleted', -1, restaurantId)
    
    local successMessage = string.format(T('restaurant_deletion_success'), restaurantName, restaurantId)
    if source == 0 then
        print(successMessage)
    else
        bridge.notification.show(source, {
            message = successMessage,
            type = 'success'
        })
    end
    
    dprint('Restaurant deletion completed:', restaurantName, 'ID:', restaurantId)
end

CreateThread(function()
    while true do
        Wait(60000)
        local currentTime = os.time()
        for source, confirmation in pairs(restaurantDeletionConfirmations) do
            if currentTime - confirmation.timestamp > 300 then
                restaurantDeletionConfirmations[source] = nil
            end
        end
    end
end)

RegisterCommand('setrestaurantowner', function(source, args, rawCommand)
    local src = source
    
    if source > 0 and not (args[3] and args[3] == Config.AdminPassword) then return end

    if #args < 2 then
        if src == 0 then
            print("Usage: setrestaurantowner <restaurant_id> <player_id/identifier>")
        end
        return
    end
    
    local restaurantId = tonumber(args[1])
    local playerIdentifier = args[2]
    
    if not restaurantId or not Restaurants[restaurantId] then
        local message = T('invalid_restaurant_id') .. '. Available restaurants:'
        for id, restaurant in pairs(Restaurants) do
            message = message .. '\n' .. id .. ': ' .. restaurant.label
        end
        
        if src == 0 then
            print(message)
        end
        
        return
    end
    
    local targetPlayer = nil
    local targetIdentifier = nil
    local targetName = nil
    
    if string.match(playerIdentifier, '^[a-zA-Z0-9]+$') then
        local playerId = tonumber(playerIdentifier)
        if playerId then
            targetPlayer = bridge.framework.getPlayerData(playerId)
            if targetPlayer then
                targetIdentifier = targetPlayer.identifier
                targetName = targetPlayer.name.full or GetPlayerName(playerId)
            end
        else
            targetIdentifier = playerIdentifier
            targetName = playerIdentifier
        end
    else
        local players = GetPlayers()
        for _, playerId in ipairs(players) do
            local playerName = GetPlayerName(playerId)
            if playerName and string.find(string.lower(playerName), string.lower(playerIdentifier)) then
                targetPlayer = bridge.framework.getPlayerData(tonumber(playerId))
                if targetPlayer then
                    targetIdentifier = targetPlayer.identifier
                    targetName = playerName
                    break
                end
            end
        end
    end
    
    if not targetIdentifier then
        targetIdentifier = playerIdentifier
        targetName = playerIdentifier
    end
    
    MySQL.update.await('UPDATE sn_rest_employees SET is_boss = 0 WHERE restaurant_id = ? AND is_boss = 1', {
        restaurantId
    })
    
    local existingEmployee = MySQL.query.await('SELECT * FROM sn_rest_employees WHERE restaurant_id = ? AND identifier = ? AND is_active = 1', {
        restaurantId, targetIdentifier
    })
    
    local restaurant = Restaurants[restaurantId]
    
    if existingEmployee and #existingEmployee > 0 then
        MySQL.update.await('UPDATE sn_rest_employees SET is_boss = 1, is_manager = 1, position = ? WHERE restaurant_id = ? AND identifier = ?', {
            T('owner'),
            restaurantId,
            targetIdentifier
        })
        
        MySQL.update.await('UPDATE sn_restaurants SET owner = ? WHERE id = ?', {
            targetIdentifier,
            restaurantId
        })
        
        local message = T('successfully_promoted_owner', targetName, restaurant.label)
        
        if src == 0 then
            print(message)
        else
            bridge.notification.show(src, {
                message = message,
                type = 'success'
            })
        end
    else
        MySQL.insert.await('INSERT INTO sn_rest_employees (restaurant_id, identifier, name, position, salary, performance, hire_date, is_boss, is_manager, is_active) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)', {
            restaurantId,
            targetIdentifier,
            targetName,
            T('owner'),
            10000,
            100,
            os.date('%Y-%m-%d'),
            1,
            1,
            1
        })
        
        MySQL.update.await('UPDATE sn_restaurants SET owner = ? WHERE id = ?', {
            targetIdentifier,
            restaurantId
        })
        
        local message = T('successfully_set_owner', targetName, restaurant.label)
        
        if src == 0 then
            print(message)
        else
            bridge.notification.show(src, {
                message = message,
                type = 'success'
            })
        end
    end
    
    TriggerClientEvent('nn_food:refreshEmployees', -1)
    
    local targetPlayerId = GetPlayerIdFromIdentifier(targetIdentifier)
    if targetPlayerId then
        TriggerClientEvent('nn_food:refreshPlayerRestaurantCache', targetPlayerId)
    end
    
    TriggerClientEvent('nn_food:employeeInvitationAccepted', tonumber(playerIdentifier), tonumber(restaurantId))
    dprint('Restaurant owner set:', targetName, 'for restaurant', restaurant.label)
end, true)

RegisterNetEvent('nn_food:getShopItems')
AddEventHandler('nn_food:getShopItems', function()
    local source = source
    local items = {}
    
    if not Config.ShopItems then
        TriggerClientEvent('nn_food:receiveShopItems', source, {})
        return
    end
    
    for _, item in pairs(Config.ShopItems) do
        if item and item.id then
            table.insert(items, {
                id = item.id,
                name = item.name,
                description = item.description,
                price = item.price,
                category = item.category,
                image = item.image,
                stock = item.stock,
                rating = item.rating or 4
            })
        end
    end
    
    TriggerClientEvent('nn_food:receiveShopItems', source, items)
end)

RegisterNetEvent('nn_food:getShopCategories')
AddEventHandler('nn_food:getShopCategories', function()
    local source = source
    local categories = {}
    local seenCategories = {}
    
    local categoryIcons = {
        ingredients = "🥖",
        vegetables = "🥬",
        dairy = "🧀",
        sides = "🍟",
        beverages = "🥤"
    }
    
    for _, item in pairs(Config.ShopItems) do
        if not seenCategories[item.category] then
            table.insert(categories, {
                name = item.category:gsub("^%l", string.upper),
                icon = categoryIcons[item.category] or "📦"
            })
            seenCategories[item.category] = true
        end
    end
    
    TriggerClientEvent('nn_food:receiveShopCategories', source, categories)
end)

RegisterNetEvent('nn_food:purchaseSupplies')
AddEventHandler('nn_food:purchaseSupplies', function(data)
    local source = source
    local items = data.items
    local total = data.total
    
    local playerRestaurant = GetPlayerRestaurant(source)
    if not playerRestaurant then
        TriggerClientEvent('nn_food:purchaseResult', source, {
            success = false,
            message = T('not_employee_any_restaurant')
        })
        return
    end
    
    local restaurantId = playerRestaurant.restaurantId
    local restaurant = Restaurants[restaurantId]
    
    local restaurantName = GetClosestRestaurant(restaurantId)
    local deliveryLocation = Config.SupplyDelivery.deliveryLocations[restaurantName]
    if not deliveryLocation then
        TriggerClientEvent('nn_food:purchaseResult', source, {
            success = false,
            message = T('no_delivery_location_configured')
        })
        return
    end
    
    local financeData = MySQL.single.await('SELECT * FROM sn_rest_finance WHERE restaurant_id = ?', {restaurantId})
    if not financeData then
        MySQL.insert.await('INSERT INTO sn_rest_finance (restaurant_id, current_balance, total_revenue, total_expenses, pending_salaries) VALUES (?, 0, 0, 0, 0)', {restaurantId})
        financeData = { current_balance = 0 }
    end
    
    if tonumber(financeData.current_balance) < tonumber(total) then
        TriggerClientEvent('nn_food:purchaseResult', source, {
            success = false,
            message = 'Insufficient funds in restaurant account!'
        })
        return
    end
    
    local deliveryData = {
        items = items,
        total = total,
        restaurantId = restaurantId,
        deliveryLocation = deliveryLocation,
        deliveryTime = os.time() + Config.SupplyDelivery.deliveryWaitTime
    }
    
    if not Deliveries then Deliveries = {} end
    local deliveryId = #Deliveries + 1
    Deliveries[deliveryId] = deliveryData
    
    local itemList = ""
    for i, item in ipairs(items) do
        if i > 1 then itemList = itemList .. ", " end
        itemList = itemList .. item.item.name .. " (x" .. item.quantity .. ")"
    end
    
    UpdateRestaurantFinanceExpense(restaurantId, 'Supply Purchase - ' .. itemList, total)
    
    TriggerClientEvent('nn_food:purchaseResult', source, {
        success = true,
        message = T('order_placed_delivery', deliveryData.deliveryTime, deliveryData.deliveryLocation.name),
        deliveryId = deliveryId,
        deliveryTime = deliveryData.deliveryTime
    })
    
    SetTimeout(Config.SupplyDelivery.deliveryWaitTime * 1000, function()
        TriggerClientEvent('nn_food:deliveryArrived', source, deliveryId, deliveryData)
    end)
end)

RegisterNetEvent('nn_food:openComputer')
AddEventHandler('nn_food:openComputer', function()
    local source = source
    TriggerClientEvent('nn_food:openComputer', source)
end)

RegisterNetEvent('nn_food:closeComputer')
AddEventHandler('nn_food:closeComputer', function()
    local source = source
    TriggerClientEvent('nn_food:closeComputer', source)
end)

RegisterNetEvent('nn_food:unpackDelivery')
AddEventHandler('nn_food:unpackDelivery', function(deliveryId)
    local source = source
    
    local delivery = Deliveries[deliveryId]
    if not delivery then
        bridge.notification.show(source, {
            message = T('delivery_not_found_unpack'),
            type = 'error'
        })
        return
    end
    
    local playerRestaurant = GetPlayerRestaurant(source)
    if not playerRestaurant or playerRestaurant.restaurantId ~= delivery.restaurantId then
        bridge.notification.show(source, {
            message = T('access_denied_not_employee_general'),
            type = 'error'
        })
        return
    end
    
    local itemCount = 0
    local addedItems = {}
    
    for _, cartItem in pairs(delivery.items) do
        local itemId = cartItem.item.id
        local quantity = cartItem.quantity
        
        bridge.inventory.addItem(source, itemId, quantity)
        itemCount = itemCount + quantity
        table.insert(addedItems, {
            name = cartItem.item.name,
            quantity = quantity
        })
    end
    
    Deliveries[deliveryId] = nil
    
    if itemCount > 0 then
        local itemList = ""
        for i, item in ipairs(addedItems) do
            if i > 1 then itemList = itemList .. ", " end
            itemList = itemList .. item.name .. " (x" .. item.quantity .. ")"
        end
        
        bridge.notification.show(source, {
            message = T('successfully_unpacked_items', itemCount, itemList),
            type = 'success'
        })
    else
        bridge.notification.show(source, {
            message = T('no_items_in_order'),
            type = 'error'
        })
    end
end)

Lib.registerCallback('nn_food:getFinanceData', function(source, cb)
    local src = source
    
    local playerRestaurant = GetPlayerRestaurant(src)
    if not playerRestaurant then
        return cb({})
    end
    
    local restaurantId = playerRestaurant.restaurantId
    
    local financeData = MySQL.single.await('SELECT * FROM sn_rest_finance WHERE restaurant_id = ?', {restaurantId})
    if not financeData then
        MySQL.insert.await('INSERT INTO sn_rest_finance (restaurant_id, current_balance, total_revenue, total_expenses, pending_salaries) VALUES (?, 0, 0, 0, 0)', {restaurantId})
        financeData = {
            current_balance = 0,
            total_revenue = 0,
            total_expenses = 0,
            pending_salaries = 0
        }
    end
    
    local transactions = MySQL.query.await([[
        SELECT 
            transaction_type,
            description,
            amount,
            created_at,
            employee_id,
            order_id
        FROM sn_rest_transactions 
        WHERE restaurant_id = ? 
        ORDER BY created_at DESC 
        LIMIT 10
    ]], {restaurantId})
    
    local formattedTransactions = {}
    for _, transaction in ipairs(transactions) do
        table.insert(formattedTransactions, {
            type = transaction.transaction_type,
            description = transaction.description,
            amount = transaction.amount,
            date = FormatDateSafely(transaction.created_at)
        })
    end
    
    local totalPendingSalaries = MySQL.scalar.await('SELECT COALESCE(SUM(amount), 0) FROM sn_rest_pending_salaries WHERE restaurant_id = ? AND claimed_at IS NULL', {restaurantId})
    
    cb({
        currentBalance = financeData.current_balance,
        totalRevenue = financeData.total_revenue,
        totalExpenses = financeData.total_expenses,
        pendingSalaries = totalPendingSalaries or 0,
        recentTransactions = formattedTransactions
    })
    
    MySQL.update.await('UPDATE sn_rest_finance SET pending_salaries = ? WHERE restaurant_id = ?', {totalPendingSalaries or 0, restaurantId})
end)

RegisterNetEvent('nn_food:withdrawMoney')
AddEventHandler('nn_food:withdrawMoney', function(data)
    local source = source
    local amount = data.amount
    
    local playerRestaurant = GetPlayerRestaurant(source)
    if not playerRestaurant then
        bridge.notification.show(source, {
            message = 'You are not authorized to perform this action!',
            type = 'error'
        })
        return
    end
    
    local restaurantId = playerRestaurant.restaurantId
    
    local financeData = MySQL.single.await('SELECT * FROM sn_rest_finance WHERE restaurant_id = ?', {restaurantId})
    if not financeData then
        bridge.notification.show(source, {
            message = T('finance_data_not_found'),
            type = 'error'
        })
        return
    end
    
    if tonumber(financeData.current_balance) < tonumber(amount) then
        bridge.notification.show(source, {
            message = T('insufficient_funds'),
            type = 'error'
        })
        return
    end
    
    MySQL.update.await('UPDATE sn_rest_finance SET current_balance = current_balance - ? WHERE restaurant_id = ?', {
        amount, restaurantId
    })
    
    MySQL.insert.await('INSERT INTO sn_rest_transactions (restaurant_id, transaction_type, description, amount) VALUES (?, ?, ?, ?)', {
        restaurantId, 'withdrawal', T('money_withdrawal'), amount
    })
    
    CleanupTransactionLogs(restaurantId)
    
    bridge.framework.addMoney(source, 'cash', amount)
    
    local updatedFinanceData = MySQL.single.await('SELECT * FROM sn_rest_finance WHERE restaurant_id = ?', {restaurantId})
    local totalPendingSalaries = MySQL.scalar.await('SELECT COALESCE(SUM(amount), 0) FROM sn_rest_pending_salaries WHERE restaurant_id = ? AND claimed_at IS NULL', {restaurantId})
    local transactions = MySQL.query.await([[
        SELECT 
            transaction_type,
            description,
            amount,
            created_at,
            employee_id,
            order_id
        FROM sn_rest_transactions 
        WHERE restaurant_id = ? 
        ORDER BY created_at DESC 
        LIMIT 10
    ]], {restaurantId})
    
    local formattedTransactions = {}
    for _, transaction in ipairs(transactions) do
        table.insert(formattedTransactions, {
            type = transaction.transaction_type,
            description = transaction.description,
            amount = transaction.amount,
            date = FormatDateSafely(transaction.created_at)
        })
    end
    
    TriggerClientEvent('nn_food:updateFinanceData', source, {
        currentBalance = updatedFinanceData.current_balance,
        totalRevenue = updatedFinanceData.total_revenue,
        totalExpenses = updatedFinanceData.total_expenses,
        pendingSalaries = totalPendingSalaries or 0,
        recentTransactions = formattedTransactions
    })
end)

RegisterNetEvent('nn_food:depositMoney')
AddEventHandler('nn_food:depositMoney', function(data)
    local source = source
    local amount = data.amount
    
    local playerRestaurant = GetPlayerRestaurant(source)
    if not playerRestaurant then
        bridge.notification.show(source, {
            message = 'You are not authorized to perform this action!',
            type = 'error'
        })
        return
    end
    
    local restaurantId = playerRestaurant.restaurantId
    
    local playerData = bridge.framework.getPlayerData(source)
    if playerData.money.cash < amount then
        bridge.notification.show(source, {
            message = T('not_enough_money'),
            type = 'error'
        })
        return
    end
    
    bridge.framework.removeMoney(source, 'cash', amount)
    
    MySQL.update.await('UPDATE sn_rest_finance SET current_balance = current_balance + ? WHERE restaurant_id = ?', {
        amount, restaurantId
    })
    
    MySQL.insert.await('INSERT INTO sn_rest_transactions (restaurant_id, transaction_type, description, amount) VALUES (?, ?, ?, ?)', {
        restaurantId, 'deposit', 'Money Deposit', amount
    })
    
    CleanupTransactionLogs(restaurantId)
    
    bridge.notification.show(source, {
        message = string.format('Successfully deposited $%.2f to restaurant account', amount),
        type = 'success'
    })
    
    local updatedFinanceData = MySQL.single.await('SELECT * FROM sn_rest_finance WHERE restaurant_id = ?', {restaurantId})
    local totalPendingSalaries = MySQL.scalar.await('SELECT COALESCE(SUM(amount), 0) FROM sn_rest_pending_salaries WHERE restaurant_id = ? AND claimed_at IS NULL', {restaurantId})
    local transactions = MySQL.query.await([[
        SELECT 
            transaction_type,
            description,
            amount,
            created_at,
            employee_id,
            order_id
        FROM sn_rest_transactions 
        WHERE restaurant_id = ? 
        ORDER BY created_at DESC 
        LIMIT 10
    ]], {restaurantId})
    
    local formattedTransactions = {}
    for _, transaction in ipairs(transactions) do
        table.insert(formattedTransactions, {
            type = transaction.transaction_type,
            description = transaction.description,
            amount = transaction.amount,
            date = FormatDateSafely(transaction.created_at)
        })
    end
    
    TriggerClientEvent('nn_food:updateFinanceData', source, {
        currentBalance = updatedFinanceData.current_balance,
        totalRevenue = updatedFinanceData.total_revenue,
        totalExpenses = updatedFinanceData.total_expenses,
        pendingSalaries = totalPendingSalaries or 0,
        recentTransactions = formattedTransactions
    })
end)

RegisterNetEvent('nn_food:paySalaries')
AddEventHandler('nn_food:paySalaries', function(data)
    local source = source
    local employeeId = data.employeeId
    local amount = data.amount
    
    local playerRestaurant = GetPlayerRestaurant(source)
    if not playerRestaurant then
        bridge.notification.show(source, {
            message = 'You are not authorized to perform this action!',
            type = 'error'
        })
        return
    end
    
    local restaurantId = playerRestaurant.restaurantId
    
    local financeData = MySQL.single.await('SELECT * FROM sn_rest_finance WHERE restaurant_id = ?', {restaurantId})
    if not financeData then
        bridge.notification.show(source, {
            message = 'Finance data not found!',
            type = 'error'
        })
        return
    end
    
            if tonumber(financeData.current_balance) < tonumber(amount) then
            bridge.notification.show(source, {
                message = T('insufficient_funds'),
                type = 'error'
            })
            return
        end
    
    MySQL.update.await('UPDATE sn_rest_finance SET current_balance = current_balance - ?, pending_salaries = pending_salaries - ? WHERE restaurant_id = ?', {
        amount, amount, restaurantId
    })
    
    local description = 'Salary Payment'
    if employeeId then
        local employee = MySQL.single.await('SELECT name FROM sn_rest_employees WHERE id = ?', {employeeId})
        if employee then
            description = string.format('Salary Payment - %s', employee.name)
        end
    else
        description = 'Salary Payments - All Employees'
    end
    
    MySQL.insert.await('INSERT INTO sn_rest_transactions (restaurant_id, transaction_type, description, amount, employee_id) VALUES (?, ?, ?, ?, ?)', {
        restaurantId, 'salary', description, amount, employeeId
    })
    
    CleanupTransactionLogs(restaurantId)
    
    if employeeId then
        local employee = MySQL.single.await('SELECT identifier FROM sn_rest_employees WHERE id = ?', {employeeId})
        if employee then
            MySQL.insert.await('INSERT INTO sn_rest_pending_salaries (restaurant_id, employee_id, employee_identifier, amount) VALUES (?, ?, ?, ?)', {
                restaurantId, employeeId, employee.identifier, amount
            })
        end
    else
        local employees = MySQL.query.await('SELECT id, identifier, salary FROM sn_rest_employees WHERE restaurant_id = ? AND is_active = 1', {restaurantId})
        for _, employee in ipairs(employees) do
            MySQL.insert.await('INSERT INTO sn_rest_pending_salaries (restaurant_id, employee_id, employee_identifier, amount) VALUES (?, ?, ?, ?)', {
                restaurantId, employee.id, employee.identifier, employee.salary
            })
        end
    end
    
    bridge.notification.show(source, {
        message = string.format('Successfully paid $%.2f in salaries', amount),
        type = 'success'
    })
    
    local updatedFinanceData = MySQL.single.await('SELECT * FROM sn_rest_finance WHERE restaurant_id = ?', {restaurantId})
    local totalPendingSalaries = MySQL.scalar.await('SELECT COALESCE(SUM(amount), 0) FROM sn_rest_pending_salaries WHERE restaurant_id = ? AND claimed_at IS NULL', {restaurantId})
    local transactions = MySQL.query.await([[
        SELECT 
            transaction_type,
            description,
            amount,
            created_at,
            employee_id,
            order_id
        FROM sn_rest_transactions 
        WHERE restaurant_id = ? 
        ORDER BY created_at DESC 
        LIMIT 10
    ]], {restaurantId})
    
    local formattedTransactions = {}
    for _, transaction in ipairs(transactions) do
        table.insert(formattedTransactions, {
            type = transaction.transaction_type,
            description = transaction.description,
            amount = transaction.amount,
            date = FormatDateSafely(transaction.created_at)
        })
    end
    
    TriggerClientEvent('nn_food:updateFinanceData', source, {
        currentBalance = updatedFinanceData.current_balance,
        totalRevenue = updatedFinanceData.total_revenue,
        totalExpenses = updatedFinanceData.total_expenses,
        pendingSalaries = totalPendingSalaries or 0,
        recentTransactions = formattedTransactions
    })
end)

function UpdateRestaurantFinance(restaurantId, orderId, totalAmount)
    if not restaurantId or not orderId or not totalAmount then
        return
    end
    
    orderId = tonumber(orderId)
    if not orderId then
        return
    end
    
    local financeData = MySQL.single.await('SELECT * FROM sn_rest_finance WHERE restaurant_id = ?', {restaurantId})
    if not financeData then
        MySQL.insert.await('INSERT INTO sn_rest_finance (restaurant_id, current_balance, total_revenue, total_expenses, pending_salaries) VALUES (?, 0, 0, 0, 0)', {restaurantId})
        financeData = {
            current_balance = 0,
            total_revenue = 0,
            total_expenses = 0,
            pending_salaries = 0
        }
    end
    
    MySQL.update.await('UPDATE sn_rest_finance SET current_balance = current_balance + ?, total_revenue = total_revenue + ? WHERE restaurant_id = ?', {
        totalAmount, totalAmount, restaurantId
    })
    
    local order = MySQL.single.await('SELECT order_number FROM sn_rest_orders WHERE id = ?', {orderId})
    local description = string.format('Order %s', order and order.order_number or 'Unknown')
    
    MySQL.insert.await('INSERT INTO sn_rest_transactions (restaurant_id, transaction_type, description, amount, order_id) VALUES (?, ?, ?, ?, ?)', {
        restaurantId, 'income', description, totalAmount, orderId
    })
    
    CleanupTransactionLogs(restaurantId)
end

function FormatDateSafely(timestamp)
    if not timestamp then
        return os.date('%m/%d/%Y')
    end
    
    local success, result = pcall(os.date, '%m/%d/%Y', timestamp)
    if success then
        return result
    else
        return os.date('%m/%d/%Y')
    end
end

function UpdateRestaurantFinanceExpense(restaurantId, description, amount)
    local financeData = MySQL.single.await('SELECT * FROM sn_rest_finance WHERE restaurant_id = ?', {restaurantId})
    if not financeData then
        MySQL.insert.await('INSERT INTO sn_rest_finance (restaurant_id, current_balance, total_revenue, total_expenses, pending_salaries) VALUES (?, 0, 0, 0, 0)', {restaurantId})
        financeData = { current_balance = 0, total_expenses = 0 }
    end
    
    MySQL.update.await('UPDATE sn_rest_finance SET current_balance = current_balance - ?, total_expenses = total_expenses + ? WHERE restaurant_id = ?', {
        amount, amount, restaurantId
    })
    
    MySQL.insert.await('INSERT INTO sn_rest_transactions (restaurant_id, transaction_type, description, amount) VALUES (?, ?, ?, ?)', {
        restaurantId, 'expense', description, amount
    })
    
    CleanupTransactionLogs(restaurantId)
end

function UpdateRestaurantFinanceIncome(restaurantId, description, amount)
    local financeData = MySQL.single.await('SELECT * FROM sn_rest_finance WHERE restaurant_id = ?', {restaurantId})
    if not financeData then
        MySQL.insert.await('INSERT INTO sn_rest_finance (restaurant_id, current_balance, total_revenue, total_expenses, pending_salaries) VALUES (?, 0, 0, 0, 0)', {restaurantId})
        financeData = { current_balance = 0, total_revenue = 0 }
    end
    
    MySQL.update.await('UPDATE sn_rest_finance SET current_balance = current_balance + ?, total_revenue = total_revenue + ? WHERE restaurant_id = ?', {
        amount, amount, restaurantId
    })
    
    MySQL.insert.await('INSERT INTO sn_rest_transactions (restaurant_id, transaction_type, description, amount) VALUES (?, ?, ?, ?)', {
        restaurantId, 'income', description, amount
    })
    
    CleanupTransactionLogs(restaurantId)
end

RegisterNetEvent('nn_food:checkPendingSalaries')
AddEventHandler('nn_food:checkPendingSalaries', function()
    local source = source
    local playerData = bridge.framework.getPlayerData(source)
    
    if not playerData or not playerData.identifier then
        return
    end
    local pendingSalaries = MySQL.query.await('SELECT * FROM sn_rest_pending_salaries WHERE employee_identifier = ? AND claimed_at IS NULL', {playerData.identifier})
    if pendingSalaries and #pendingSalaries > 0 then
        local totalAmount = 0
        local claimedIds = {}
        
        for _, salary in ipairs(pendingSalaries) do
            totalAmount = totalAmount + salary.amount
            table.insert(claimedIds, salary.id)
        end
        
        bridge.framework.addMoney(source, 'bank', totalAmount)
        
        if #claimedIds > 0 then
            MySQL.update.await('UPDATE sn_rest_pending_salaries SET claimed_at = NOW() WHERE id IN (' .. table.concat(claimedIds, ',') .. ')')
        end
        
        bridge.notification.show(source, {
            message = string.format('You received $%.2f in pending salary payments!', totalAmount),
            type = 'success'
        })
        
        local playerRestaurant = GetPlayerRestaurant(source)
        if playerRestaurant then
            TriggerClientEvent('nn_food:updateFinanceData', source, {
                currentBalance = 0,
                totalRevenue = 0,
                totalExpenses = 0,
                pendingSalaries = 0,
                recentTransactions = {}
            })
        end
    end
end)

RegisterNetEvent('nn_food:useTicketFromInventory')
AddEventHandler('nn_food:useTicketFromInventory', function(ticketData)
    local source = source
    
    TriggerClientEvent('nn_food:useTicket', source, ticketData)
end)

RegisterNetEvent('nn_food:playMusic', function(musicIndex, restaurantId)
    local source = source
    local restaurant = GetClosestRestaurant(restaurantId)
    if not restaurant then
        return
    end
    local cfg = Config.Restaurants[restaurant]
    for k, speaker in ipairs(cfg.Speakers) do
        local music = Config.Musics[musicIndex]
        if music then
            exports['xsound']:PlayUrlPos(-1, 'restaurant_music_' .. restaurantId .. '_' .. k, music.link, 0.3, speaker, true)
            TriggerClientEvent('nn_food:musicStarted', source, musicIndex, music.name)
        end
    end
    Wait(500)
    for k, speaker in ipairs(cfg.Speakers) do
        local music = Config.Musics[musicIndex]
        if music then
            exports['xsound']:setTimeStamp(-1,'restaurant_music_' .. restaurantId .. '_' .. k, 1)
        end
    end
end)

RegisterNetEvent('nn_food:stopMusic')
AddEventHandler('nn_food:stopMusic', function(restaurantId)
    local source = source
    local restaurant = GetClosestRestaurant(restaurantId)
    if not restaurant then
        return
    end
    local cfg = Config.Restaurants[restaurant]
    for k, _ in ipairs(cfg.Speakers) do
        exports['xsound']:Destroy(-1, 'restaurant_music_' .. restaurantId .. '_' .. k)
    end
    TriggerClientEvent('nn_food:musicStopped', source)
end)

RegisterNetEvent('nn_food:setMusicVolume')
AddEventHandler('nn_food:setMusicVolume', function(volume, restaurantId)
    local source = source
    local restaurant = GetClosestRestaurant(restaurantId)
    if not restaurant then
        return
    end
    local cfg = Config.Restaurants[restaurant]
    for k, _ in ipairs(cfg.Speakers) do
        exports['xsound']:setVolume(-1, 'restaurant_music_' .. restaurantId .. '_' .. k, volume)
    end
end)

Lib.registerCallback('nn_food:getMusicData', function(source, cb)
    cb(Config.Musics)
end)

RegisterNetEvent('nn_food:getMusicData')
AddEventHandler('nn_food:getMusicData', function()
    local source = source
    TriggerClientEvent('nn_food:receiveMusicData', source, Config.Musics)
end)

RegisterNetEvent('nn_food:acceptBill')
AddEventHandler('nn_food:acceptBill', function(billId, paymentMethod)
    local source = source
    local playerData = bridge.framework.getPlayerData(source)
    local orderData = MySQL.single.await('SELECT * FROM sn_rest_orders WHERE id = ?', {billId})
    if not orderData then
        TriggerClientEvent('chat:addMessage', source, {
            color = {255, 0, 0},
            multiline = true,
            args = {"Bill", "Order not found!"}
        })
        return
    end
    
    local orderItems = MySQL.query.await('SELECT oi.*, mi.name, r.output_item FROM sn_rest_order_items oi JOIN sn_rest_menu_items mi ON oi.menu_item_id = mi.id JOIN sn_rest_recipes r ON mi.recipe_id = r.id WHERE oi.order_id = ?', {billId})
    
    if not orderItems or #orderItems == 0 then
        TriggerClientEvent('chat:addMessage', source, {
            color = {255, 0, 0},
            multiline = true,
            args = {"Bill", "Order items not found!"}
        })
        return
    end
    
    local paymentSuccess = false
    if paymentMethod == 'cash' then
        local playerMoney = playerData.money.cash
        if playerMoney >= tonumber(orderData.total_amount) then
            bridge.framework.removeMoney(source, 'cash', tonumber(orderData.total_amount))
            paymentSuccess = true
        else
            TriggerClientEvent('chat:addMessage', source, {
                color = {255, 0, 0},
                multiline = true,
                args = {"Bill", "Insufficient cash! You need $" .. orderData.total_amount}
            })
            return
        end
    elseif paymentMethod == 'card' then
        local playerBank = playerData.money.bank
        if playerBank >= tonumber(orderData.total_amount) then
            bridge.framework.removeMoney(source, 'bank', tonumber(orderData.total_amount))
            paymentSuccess = true
        else
            TriggerClientEvent('chat:addMessage', source, {
                color = {255, 0, 0},
                multiline = true,
                args = {"Bill", "Insufficient bank balance! You need $" .. orderData.total_amount}
            })
            return
        end
    end
    
    if paymentSuccess then
        MySQL.update.await('UPDATE sn_rest_orders SET status = ?, payment_method = ? WHERE id = ?', {
            'pending', paymentMethod, billId
        })
        
        local restaurantId = orderData.restaurant_id
        UpdateRestaurantFinanceIncome(restaurantId, 'POS Order Payment - ' .. orderData.order_number, orderData.total_amount)
        
        local ticketItems = {}
        for _, item in ipairs(orderItems) do
            local menuItem = MySQL.single.await('SELECT id, name, price FROM sn_rest_menu_items WHERE id = ?', {item.menu_item_id})
            if menuItem then
                table.insert(ticketItems, {
                    id = tostring(menuItem.id),
                    name = menuItem.name,
                    quantity = item.quantity,
                    price = item.unit_price,
                    total = item.total_price
                })
            else
                table.insert(ticketItems, {
                    id = tostring(item.menu_item_id),
                    name = 'Unknown Item',
                    quantity = item.quantity,
                    price = item.unit_price,
                    total = item.total_price
                })
            end
        end
        
        local ticketData = GenerateTicketData(
            billId, 
            orderData.order_number, 
            orderData.order_type, 
            nil,
            ticketItems, 
            orderData.total_amount, 
            paymentMethod, 
            'Staff',
            restaurantId
        )
        
        local ticketMetadata = {
            ticketData = ticketData
        }
        bridge.inventory.addItem(source, Config.TicketSystem.TicketItem, 1, ticketMetadata)
        bridge.notification.show(source, {
            message = T('payment_accepted_successfully', paymentMethod or 'cash'),
            style = 'success'
        })
        
        TriggerClientEvent('nn_food:refreshPOSOrders', -1, restaurantId)
        TriggerClientEvent('nn_food:refreshTVDisplays', -1, restaurantId)
    end
end)

RegisterNetEvent('nn_food:declineBill')
AddEventHandler('nn_food:declineBill', function(billId)
    local source = source
    local playerData = bridge.framework.getPlayerData(source)

    MySQL.update.await('UPDATE sn_rest_orders SET status = ? WHERE id = ?', {
        'cancelled', billId
    })
    
    local orderData = MySQL.single.await('SELECT restaurant_id FROM sn_rest_orders WHERE id = ?', {billId})
    
    TriggerClientEvent('chat:addMessage', source, {
        color = {255, 165, 0},
        multiline = true,
        args = {"Bill", "Payment declined. Order cancelled."}
    })
    
    if orderData then
        TriggerClientEvent('nn_food:refreshPOSOrders', -1, orderData.restaurant_id)
        TriggerClientEvent('nn_food:refreshTVDisplays', -1, orderData.restaurant_id)
    end
end)

function ShowBillToPlayer(playerId, billData)
    TriggerClientEvent('nn_food:showBill', playerId, billData)
end

function HideBillFromPlayer(playerId)
    TriggerClientEvent('nn_food:hideBill', playerId)
end

function CleanupTransactionLogs(restaurantId)
    MySQL.query.await([[
        DELETE t1 FROM sn_rest_transactions t1
        INNER JOIN (
            SELECT id FROM sn_rest_transactions 
            WHERE restaurant_id = ? 
            ORDER BY created_at DESC 
            LIMIT 10 OFFSET 10
        ) t2 ON t1.id = t2.id
    ]], {restaurantId})
end

local spawnedNpcs = {}

function SpawnRestaurantNpcs(restaurantName, restaurantConfig)
    if not restaurantConfig.NpcEnabled or not restaurantConfig.NpcRoutes then
        return
    end
    
    if not restaurantNPCEnabled[restaurantName] then
        return
    end
    
    if not spawnedNpcs[restaurantName] then
        spawnedNpcs[restaurantName] = {}
    end
    
    Citizen.CreateThread(function()
        while restaurantNPCEnabled[restaurantName] do
            if HasAvailableWaitingSpaces(restaurantName) then
                for routeId, route in pairs(restaurantConfig.NpcRoutes) do
                    if #route > 0 then
                        local restaurantConfig = Config.Restaurants[restaurantName]
                        local totalWaitingLocations = 0
                        if restaurantConfig and restaurantConfig.NpcWaitingLocations then
                            for locationId, location in pairs(restaurantConfig.NpcWaitingLocations) do
                                totalWaitingLocations = totalWaitingLocations + 1
                            end
                        end
                        
                        if HasAvailableWaitingSpaces(restaurantName) and #spawnedNpcs[restaurantName] < totalWaitingLocations then
                            dprint('Spawning NPC for restaurant:', restaurantName, '- Current NPCs:', #spawnedNpcs[restaurantName], '- Max waiting locations:', totalWaitingLocations)
                            local randomModel = restaurantConfig.NpcModels[math.random(1, #restaurantConfig.NpcModels)]
                            local spawnCoords = route[1].coords
                            local npc = CreatePed(0, GetHashKey(randomModel), spawnCoords.x, spawnCoords.y, spawnCoords.z, 0.0, true, true)
                            while not DoesEntityExist(npc) do
                                Wait(100)
                            end
                            
                            Wait(1000)
                            spawnedNpcs[restaurantName][routeId] = {
                                ped = npc,
                                route = route,
                                currentStep = 1,
                                isMoving = false
                            }
                            StartNpcRoute(restaurantName, routeId)
                        else
                            local reason = not HasAvailableWaitingSpaces(restaurantName) and "no available waiting spaces" or "max NPCs reached"
                            dprint('Skipping NPC spawn for restaurant:', restaurantName, '- Reason:', reason, '- Current NPCs:', #spawnedNpcs[restaurantName], '- Max waiting locations:', totalWaitingLocations)
                        end
                    end
                    Wait(1000)
                end
            else
                dprint('No available waiting spaces for restaurant:', restaurantName, '- skipping NPC spawn')
                Wait(30000)
            end
            Wait(restaurantConfig.NpcInterval)
        end
    end)
end

function StartNpcRoute(restaurantName, routeId)
    local npcData = spawnedNpcs[restaurantName] and spawnedNpcs[restaurantName][routeId]
    if not npcData or not DoesEntityExist(npcData.ped) then
        return
    end
    CreateThread(function()
        while DoesEntityExist(npcData.ped) do
            local route = npcData.route
            local currentStep = npcData.currentStep
            
            if not npcData.isMoving then
                npcData.isMoving = true
                
                local destination = route[currentStep]
                if destination then    
                    TaskGoStraightToCoord(npcData.ped, destination.coords.x, destination.coords.y, destination.coords.z, 1.0, -1, destination.coords.w, 0.0)
                    
                    local newCoords = GetEntityCoords(npcData.ped)
                    local destCoords = vector3(destination.coords.x, destination.coords.y, destination.coords.z)
                    local distance = #(newCoords - destCoords)
                    while distance > 0.5 do
                        newCoords = GetEntityCoords(npcData.ped)
                        distance = #(newCoords - destCoords)
                        Wait(500)
                    end

                    if destination.delete then
                        DeleteEntity(npcData.ped)
                        return
                    end
                    
                    if destination.freeze then
                        Wait(1000)
                        FreezeEntityPosition(npcData.ped, true)
                    end

                    if destination.kiosk then
                        Wait(math.random(3000, 8000))
                        
                        CreateNPCOrder(restaurantName, npcData.ped)
                        
                        local npcNetworkId = NetworkGetNetworkIdFromEntity(npcData.ped)
                        local maxWaitTime = 120000
                        local startWaitTime = GetGameTimer()
                        
                        while DoesEntityExist(npcData.ped) and waitingNPCs[npcNetworkId] and (GetGameTimer() - startWaitTime) < maxWaitTime do
                            Wait(1000)
                        end
                        
                        if DoesEntityExist(npcData.ped) then
                            if waitingNPCs[npcNetworkId] then
                                RemoveNPCInteraction(npcData.ped)
                                waitingNPCs[npcNetworkId] = nil
                            end
                            FreezeEntityPosition(npcData.ped, false)
                        end
                    end

                    FreezeEntityPosition(npcData.ped, false)
                    npcData.currentStep = npcData.currentStep + 1
                    if npcData.currentStep > #route then
                        npcData.currentStep = 1
                    end
                end
                
                npcData.isMoving = false
            end
            Wait(1)
        end
    end)
end

function CleanupRestaurantNpcs(restaurantName)
    if spawnedNpcs[restaurantName] then
        for routeId, npcData in pairs(spawnedNpcs[restaurantName]) do
            if DoesEntityExist(npcData.ped) then
                DeleteEntity(npcData.ped)
            end
        end
        spawnedNpcs[restaurantName] = {}
    end
    for npcId, npcData in pairs(waitingNPCs) do
        if npcData.restaurantName == restaurantName then
            if DoesEntityExist(npcData.ped) then
                DeleteEntity(npcData.ped)
            end
            waitingNPCs[npcId] = nil
        end
    end
end

function InitializeRestaurantNpcs()
    for restaurantName, restaurantConfig in pairs(Config.Restaurants) do
        if restaurantConfig.NpcEnabled then
        end
    end
end

CreateThread(function()
    Wait(5000)
    InitializeRestaurantNpcs()
end)

AddEventHandler('onResourceStop', function(resourceName)
    if resourceName == GetCurrentResourceName() then
        for restaurantName, _ in pairs(spawnedNpcs) do
            CleanupRestaurantNpcs(restaurantName)
        end
    end
end)

function GetRestaurantIdFromName(restaurantName)
    local restaurantMapping = {}
    
    local closestDist = math.huge
    local closestRestaurant = nil
    Wait(3000)
    for id, restaurant in pairs(Restaurants) do
        local positions = type(restaurant.positions) == 'string' and json.decode(restaurant.positions) or restaurant.positions
        local coords = json.decode(restaurant.positions).blip
        coords = vector3(coords.x, coords.y, coords.z)
        local dist = #(coords - vector3(-1186.99, -880.45, 18.41))
        if dist < closestDist then
            closestDist = dist
            closestRestaurant = id
        end
    end
    return closestRestaurant
end

function FindAvailableWaitingLocation(restaurantName)
    local restaurantConfig = Config.Restaurants[restaurantName]
    if not restaurantConfig or not restaurantConfig.NpcWaitingLocations then
        return nil
    end
    
    for locationId, location in pairs(restaurantConfig.NpcWaitingLocations) do
        local isOccupied = false
        for npcId, npcData in pairs(waitingNPCs) do
            if npcData.waitingLocationId == locationId and npcData.restaurantName == restaurantName then
                isOccupied = true
                break
            end
        end
        
        if not isOccupied then
            return locationId, location
        end
    end
    
    return nil
end

function HasAvailableWaitingSpaces(restaurantName)
    local restaurantConfig = Config.Restaurants[restaurantName]
    if not restaurantConfig or not restaurantConfig.NpcWaitingLocations then
        return false
    end
    
    local occupiedSpaces = 0
    for npcId, npcData in pairs(waitingNPCs) do
        if npcData.restaurantName == restaurantName then
            occupiedSpaces = occupiedSpaces + 1
        end
    end
    
    local totalSpaces = 0
    for locationId, location in pairs(restaurantConfig.NpcWaitingLocations) do
        totalSpaces = totalSpaces + 1
    end
    
    local spawnedNpcCount = spawnedNpcs[restaurantName] and #spawnedNpcs[restaurantName] or 0
    
    return occupiedSpaces < totalSpaces and spawnedNpcCount < totalSpaces
end

function GetWaitingSpaceStatus(restaurantName)
    local restaurantConfig = Config.Restaurants[restaurantName]
    if not restaurantConfig or not restaurantConfig.NpcWaitingLocations then
        return { total = 0, occupied = 0, available = 0, spawned = 0 }
    end
    
    local occupiedSpaces = 0
    for npcId, npcData in pairs(waitingNPCs) do
        if npcData.restaurantName == restaurantName then
            occupiedSpaces = occupiedSpaces + 1
        end
    end
    
    local totalSpaces = 0
    for locationId, location in pairs(restaurantConfig.NpcWaitingLocations) do
        totalSpaces = totalSpaces + 1
    end
    
    local spawnedNpcCount = spawnedNpcs[restaurantName] and #spawnedNpcs[restaurantName] or 0
    
    return {
        total = totalSpaces,
        occupied = occupiedSpaces,
        available = totalSpaces - occupiedSpaces,
        spawned = spawnedNpcCount
    }
end

function CreateNPCInteraction(npcPed, npcData)
    local npcId = NetworkGetNetworkIdFromEntity(npcPed)
    
    TriggerClientEvent('nn_food:createNPCInteraction', -1, npcId, npcData)
end

function RemoveNPCInteraction(npcPed)
    local npcId = NetworkGetNetworkIdFromEntity(npcPed)
    
    TriggerClientEvent('nn_food:removeNPCInteraction', -1, npcId)
end

function MoveNPCToWaitingLocation(npcPed, restaurantName, orderData)
    local locationId, location = FindAvailableWaitingLocation(restaurantName)
    
    if not locationId then
        return false
    end
    
    local npcId = NetworkGetNetworkIdFromEntity(npcPed)
    
    waitingNPCs[npcId] = {
        ped = npcPed,
        restaurantName = restaurantName,
        waitingLocationId = locationId,
        orderId = orderData.orderId,
        orderNumber = orderData.orderNumber,
        orderItems = orderData.orderItems,
        wrongAttempts = 0,
        maxAttempts = 2,
        waitStartTime = GetGameTimer()
    }
    
    TaskGoStraightToCoord(npcPed, location.x, location.y, location.z, 1.0, -1, location.w, 0.0)
    
    Citizen.CreateThread(function()
        local startTime = GetGameTimer()
        while GetGameTimer() - startTime < 30000 do
            local npcCoords = GetEntityCoords(npcPed)
            local distance = #(npcCoords - vector3(location.x, location.y, location.z))
            
            if distance < 1.0 then
                Wait(1500)
                FreezeEntityPosition(npcPed, true)
                CreateNPCInteraction(npcPed, waitingNPCs[npcId])
                break
            end
            
            Wait(500)
        end
    end)
    
    Citizen.CreateThread(function()
        Wait(120000)
        
        if waitingNPCs[npcId] then
            RemoveNPCInteraction(waitingNPCs[npcId].ped)
            FreezeEntityPosition(waitingNPCs[npcId].ped, false)
            
            MySQL.update.await('UPDATE sn_rest_orders SET status = ? WHERE id = ?', {'cancelled', waitingNPCs[npcId].orderId})
            waitingNPCs[npcId] = nil
            
            local restaurantId = GetRestaurantIdFromName(restaurantName)
            if restaurantId then
                TriggerClientEvent('nn_food:refreshTVDisplays', -1, restaurantId)
            end
        end
    end)
    
    return true
end

function CreateNPCOrder(restaurantName, npcPed)
    local restaurantId = GetRestaurantIdFromName(restaurantName)
    if not restaurantId then
        dprint('Error: Could not find restaurant ID for', restaurantName)
        return
    end
    
    local menuItems = MySQL.query.await('SELECT id, name, price FROM sn_rest_menu_items WHERE restaurant_id = ? AND is_available = 1', {restaurantId})
    
    if not menuItems or #menuItems == 0 then
        dprint('Error: No menu items found for restaurant', restaurantName)
        return
    end
    
    local orderItemCount = 1
    local selectedItems = {}
    local totalAmount = 0
    
    for i = 1, orderItemCount do
        local randomItem = menuItems[math.random(1, #menuItems)]
        local quantity = 1
        
        local existingItem = nil
        for _, item in pairs(selectedItems) do
            if item.id == randomItem.id then
                existingItem = item
                break
            end
        end
        
        if existingItem then
            existingItem.quantity = existingItem.quantity + quantity
        else
            table.insert(selectedItems, {
                id = randomItem.id,
                name = randomItem.name,
                price = randomItem.price,
                quantity = quantity
            })
        end
    end
    
    for _, item in pairs(selectedItems) do
        totalAmount = totalAmount + (item.price * item.quantity)
    end
    
    totalAmount = totalAmount * 1.085
    
    local timestamp = os.time()
    local randomSuffix = math.random(100, 999)
    local orderNumber = 'NPC-' .. timestamp .. '-' .. randomSuffix
    
    local orderId = MySQL.insert.await('INSERT INTO sn_rest_orders (restaurant_id, order_number, customer_identifier, order_type, total_amount, payment_method, status, order_date) VALUES (?, ?, ?, ?, ?, ?, ?, ?)', {
        restaurantId,
        orderNumber,
        'npc_customer',
        'kiosk',
        totalAmount,
        'cash',
        'pending',
        os.date('%Y-%m-%d %H:%M:%S')
    })
    
    for _, item in pairs(selectedItems) do
        MySQL.insert.await('INSERT INTO sn_rest_order_items (order_id, menu_item_id, quantity, unit_price, total_price) VALUES (?, ?, ?, ?, ?)', {
            orderId,
            item.id,
            item.quantity,
            item.price,
            item.price * item.quantity
        })
    end
    
    local today = os.date('%Y-%m-%d')
    local existingAnalytics = MySQL.query.await('SELECT * FROM sn_rest_analytics WHERE restaurant_id = ? AND date = ?', {restaurantId, today})
    
    if existingAnalytics[1] then
        MySQL.update.await('UPDATE sn_rest_analytics SET total_orders = total_orders + 1 WHERE restaurant_id = ? AND date = ?', {
            restaurantId, today
        })
    else
        MySQL.insert.await('INSERT INTO sn_rest_analytics (restaurant_id, date, total_orders, total_revenue) VALUES (?, ?, ?, ?)', {
            restaurantId, today, 1, 0
        })
    end
    

    CleanupTransactionLogs(restaurantId)
    TriggerClientEvent('nn_food:refreshTVDisplays', -1, restaurantId)
    
    local orderData = {
        orderId = orderId,
        orderNumber = orderNumber,
        orderItems = selectedItems
    }

    FreezeEntityPosition(npcPed, false)
    dprint('Moving NPC to waiting location', npcPed, restaurantName, orderData)
    MoveNPCToWaitingLocation(npcPed, restaurantName, orderData)
    
    return orderId
end

RegisterNetEvent('nn_food:checkNPCOrderDelivery', function(npcNetworkId, orderId)
    local src = source
    local playerData = bridge.framework.getPlayerData(src)
    
    local playerRestaurant = GetPlayerRestaurant(src)
    if not playerRestaurant then
        bridge.notification.show(src, {
            message = T('you_not_restaurant_employee'),
            type = 'error'
        })
        return
    end
    
    local npcData = waitingNPCs[npcNetworkId]
    if not npcData then
        bridge.notification.show(src, {
            message = T('order_not_found'),
            type = 'error'
        })
        return
    end
    
    local orderItems = MySQL.query.await('SELECT oi.*, mi.name, r.output_item FROM sn_rest_order_items oi JOIN sn_rest_menu_items mi ON oi.menu_item_id = mi.id JOIN sn_rest_recipes r ON mi.recipe_id = r.id WHERE oi.order_id = ?', {orderId})
    if not orderItems or #orderItems == 0 then
        bridge.notification.show(src, {
            message = T('order_items_not_found'),
            type = 'error'
        })
        return
    end
    
    local hasAllItems = true
    local missingItems = {}
    
    for _, orderItem in pairs(orderItems) do
        local itemName = orderItem.output_item
        
        local hasItem = bridge.inventory.hasItem(src, itemName, orderItem.quantity)
        
        if not hasItem then
            hasAllItems = false
            local playerItem = bridge.inventory.hasItem(src, itemName, orderItem.quantity)
            table.insert(missingItems, {
                name = orderItem.name,
                needed = orderItem.quantity,
                has = playerItem and playerItem.amount or 0
            })
        end
    end
    
    if hasAllItems then
        for _, orderItem in pairs(orderItems) do
            local itemName = orderItem.output_item
            bridge.inventory.removeItem(src, itemName, orderItem.quantity)
        end
        
        MySQL.update.await('UPDATE sn_rest_orders SET status = ? WHERE id = ?', {'completed', orderId})
        
        local orderData = MySQL.single.await('SELECT total_amount FROM sn_rest_orders WHERE id = ?', {orderId})
        if orderData then
            UpdateRestaurantFinance(playerRestaurant.restaurantId, orderId, orderData.total_amount)
            
            local today = os.date('%Y-%m-%d')
            MySQL.update.await('UPDATE sn_rest_analytics SET total_revenue = total_revenue + ? WHERE restaurant_id = ? AND date = ?', {
                orderData.total_amount, playerRestaurant.restaurantId, today
            })
        end
        
        RemoveNPCInteraction(npcData.ped)
        FreezeEntityPosition(npcData.ped, false)
        
        waitingNPCs[npcNetworkId] = nil
        
        bridge.notification.show(src, {
            message = T('order_delivered_successfully', npcData.orderNumber),
            type = 'success'
        })
        
        TriggerClientEvent('nn_food:refreshTVDisplays', -1, playerRestaurant.restaurantId)
        
    else
        npcData.wrongAttempts = npcData.wrongAttempts + 1
        
        if npcData.wrongAttempts >= npcData.maxAttempts then
            bridge.notification.show(src, {
                message = T('customer_angry_left', npcData.orderNumber),
                type = 'error'
            })
            
            RemoveNPCInteraction(npcData.ped)
            FreezeEntityPosition(npcData.ped, false)
            
            MySQL.update.await('UPDATE sn_rest_orders SET status = ? WHERE id = ?', {'cancelled', orderId})
            
            waitingNPCs[npcNetworkId] = nil
            
            TriggerClientEvent('nn_food:refreshTVDisplays', -1, playerRestaurant.restaurantId)
        else
            local missingText = ''
            for _, missing in pairs(missingItems) do
                missingText = missingText .. missing.name .. ' (need ' .. missing.needed .. ', have ' .. missing.has .. '), '
            end
            missingText = missingText:sub(1, -3)
            
            bridge.notification.show(src, {
                message = T('wrong_order_missing', missingText, npcData.wrongAttempts, npcData.maxAttempts),
                type = 'error'
            })
            
            dprint('Wrong order attempt:', npcData.wrongAttempts, 'for order:', npcData.orderNumber)
        end
    end
end)

AddEventHandler('onResourceStop', function(resourceName)
    if resourceName == GetCurrentResourceName() then
        for npcId, npcData in pairs(waitingNPCs) do
            if DoesEntityExist(npcData.ped) then
                DeleteEntity(npcData.ped)
            end
        end
        waitingNPCs = {}
    end
end)

RegisterNetEvent('nn_food:toggleNPCOrdering', function(restaurantId, enabled)
    local src = source
    local playerRestaurant = GetPlayerRestaurant(src)
    
    if not playerRestaurant or playerRestaurant.restaurantId ~= restaurantId then
        bridge.notification.show(src, {
            message = T('access_denied_not_employee_restaurant'),
            type = 'error'
        })
        return
    end
    
    local restaurantName = GetClosestRestaurant(restaurantId)
    if not restaurantName then
        bridge.notification.show(src, {
            message = T('restaurant_configuration_not_found'),
            type = 'error'
        })
        return
    end
    
    restaurantNPCEnabled[restaurantName] = enabled
    
    if enabled then
        if Config.Restaurants[restaurantName] and Config.Restaurants[restaurantName].NpcEnabled then
            SpawnRestaurantNpcs(restaurantName, Config.Restaurants[restaurantName])
            bridge.notification.show(src, {
                message = T('npc_ordering_enabled', restaurantName),
                type = 'success'
            })
        else
            bridge.notification.show(src, {
                message = T('npc_ordering_disabled_server'),
                type = 'error'
            })
            restaurantNPCEnabled[restaurantName] = false
        end
    else
        CleanupRestaurantNpcs(restaurantName)
        bridge.notification.show(src, {
            message = T('npc_ordering_disabled', restaurantName),
            type = 'info'
        })
    end
end)

Lib.registerCallback('nn_food:getNPCOrderingState', function(source, cb, restaurantId)
    local playerRestaurant = GetPlayerRestaurant(source)
    if not playerRestaurant or playerRestaurant.restaurantId ~= restaurantId then
        return cb(false)
    end
    
    local restaurantName = GetClosestRestaurant(restaurantId)
    
    if not restaurantName then
        return cb(false)
    end
    
    local configEnabled = Config.Restaurants[restaurantName] and Config.Restaurants[restaurantName].NpcEnabled or false
    local currentEnabled = restaurantNPCEnabled[restaurantName] or false
    
    cb({
        configEnabled = configEnabled,
        currentEnabled = currentEnabled,
        restaurantName = restaurantName
    })
end)

Lib.registerCallback('nn_food:getWaitingSpaceStatus', function(source, cb, restaurantId)
    local playerRestaurant = GetPlayerRestaurant(source)
    if not playerRestaurant or playerRestaurant.restaurantId ~= restaurantId then
        return cb(false)
    end
    
    local restaurantName = GetClosestRestaurant(restaurantId)
    
    if not restaurantName then
        return cb(false)
    end
    
    local status = GetWaitingSpaceStatus(restaurantName)
    cb(status)
end)

function GetPlayerIdFromIdentifier(identifier)
    for _, playerId in ipairs(GetPlayers()) do
        local player = bridge.framework.getPlayerData(tonumber(playerId))
        if player and player.identifier == identifier then
            return tonumber(playerId)
        end
    end
    return nil
end

Lib.registerCallback('nn_food:getRestaurantOwner', function(source, cb, restaurantId)
    local restaurant = MySQL.query.await('SELECT owner FROM sn_restaurants WHERE id = ?', {restaurantId})
    if not restaurant[1] or not restaurant[1].owner then
        return cb(nil)
    end
    
    local ownerIdentifier = restaurant[1].owner
    local owner = MySQL.query.await('SELECT * FROM sn_rest_employees WHERE restaurant_id = ? AND identifier = ? AND is_active = 1 AND is_boss = 1', {
        restaurantId, ownerIdentifier
    })
    
    if owner[1] then
        cb({
            identifier = ownerIdentifier,
            name = owner[1].name,
            employee_data = owner[1]
        })
    else
        cb(nil)
    end
end)

Lib.registerCallback('nn_resto:getTranslations', function(source, cb, data)
    local language = data and data.language or Config.Language or 'en'
    
    if Translations[language] then
        cb({
            success = true,
            translations = Translations[language]
        })
    else
        cb({
            success = true,
            translations = Translations['en']
        })
    end
end)

RegisterNetEvent("nn_food:server:openStash", function(id, slots, weight)
    local src = source
    OpenStash(id, slots, weight, src)
end)