State = {
    Interactions = {},
    Props = {},
    Fryers = {},
    FriesPlates = {},
    Grills = {},
    Spatulas = {},
    TrashCans = {},
    Fridges = {},
    DrinksMachines = {},
    CookingStations = {},
    FryerParticles = {},
GrillParticles = {},
    PlayerRestaurant = nil,
    CurrentAttachedMeat = nil,
    CurrentDrinksMachine = nil
}

local npcInteractions = {}

function dprint(...)
    local args = { ... }
    local msg = ""
    for _, v in pairs(args) do
        msg = msg .. tostring(v) .. " "
    end
    if Config.devMode then
        print("^2[DEBUG] " .. msg .. "^0")
    end
end

AddEventHandler('onResourceStop', function(resource)
    if resource == GetCurrentResourceName() then
        for _, interaction in pairs(State.Interactions) do
            exports['is_interaction']:RemoveInteraction(interaction)
        end
        for npcNetworkId, interaction in pairs(npcInteractions) do
            exports['is_interaction']:RemoveInteraction(interaction)
        end
        npcInteractions = {}
    end
end)

function CloseUI()
    TriggerScreenblurFadeOut(200)
    SetNuiFocus(false, false)
    SendNUIMessage({
        action = "setVisibility",
        data = {
            page = "creator",
            visible = false,
            action = "setVisible",
        }
    })

    CloseDrinksMachine()
end

function CloseDrinksMachine()
    if State.CurrentDrinksMachine then
        Lib.Callback('nn_drinks:closeMachine', function(success)
            if success then
                SendNUIMessage({
                    action = 'setVisibility',
                    data = {
                        visible = false,
                        page = 'drinks_machine'
                    }
                })
                SetNuiFocus(false, false)
                TriggerScreenblurFadeOut(200)
                State.CurrentDrinksMachine = nil
            end
        end, State.CurrentDrinksMachine)
    end
end

RegisterNUICallback('hideFrame', function(data, cb)
    CloseUI()
    cb('ok')
end)

-- Drinks Machine NUI Callbacks
RegisterNUICallback('closeDrinksMachine', function(data, cb)
    CloseDrinksMachine()
    cb('ok')
end)

RegisterNUICallback('completeDrinksMinigame', function(data, cb)
    if State.CurrentDrinksMachine then
        TriggerServerEvent('nn_food:playDrinksSound', 'drinks_pouring_complete', GetEntityCoords(PlayerPedId()),  State.CurrentDrinksMachine)
        Lib.Callback('nn_drinks:completeMinigame', function(success, message)
            if success then
                bridge.notification.show({
                    message = T('drink_created_successfully'),
                    type = 'success'
                })
            else
                bridge.notification.show({
                    message = T('failed_to_create_drink'),
                    type = 'error'
                })
            end
        end, State.CurrentDrinksMachine, data.drinkId, data.score)
    end
    cb('ok')
end)

RegisterNUICallback('playDrinksSound', function(data, cb)
    local soundName = data.sound
    local machineCoords = data.machineCoords
    local machineIndex = State.CurrentDrinksMachine
    
    if soundName == 'pouring_soda_start' then
        TriggerServerEvent('nn_food:playDrinksSound', 'drinks_pouring_soda_start', machineCoords, machineIndex)
    elseif soundName == 'pouring_coffee_start' then
        TriggerServerEvent('nn_food:playDrinksSound', 'drinks_pouring_coffee_start', machineCoords, machineIndex)
    end
    
    cb('ok')
end)

-- Supply Management NUI Callbacks
RegisterNUICallback('openSupplyManagement', function(data, cb)
    if State.CurrentDrinksMachine then
        Lib.Callback('nn_drinks:openSupplyManagement', function(success, machineData)
            if success then
                SendNUIMessage({
                    action = 'setVisibility',
                    data = {
                        visible = true,
                        page = 'supply_management'
                    }
                })
                SendNUIMessage({
                    action = 'openSupplyManagement',
                    data = machineData
                })
            else
                bridge.notification.show({
                    title = 'Error',
                    message = machineData or 'Failed to open supply management',
                    type = 'error'
                })
            end
        end, State.CurrentDrinksMachine)
    end
    cb('ok')
end)

RegisterNUICallback('closeSupplyManagement', function(data, cb)
    SendNUIMessage({
        action = 'setVisibility',
        data = {
            visible = true,
            page = 'drinks_machine'
        }
    })
    SendNUIMessage({
        action = 'closeSupplyManagement'
    })
    cb('ok')
end)

RegisterNUICallback('addSupply', function(data, cb)
    if State.CurrentDrinksMachine then
        Lib.Callback('nn_drinks:addSupply', function(success, message)
            if success then
                bridge.notification.show({
                    title = 'Success',
                    message = message or 'Supplies added successfully',
                    type = 'success'
                })
                -- Refresh supply management UI
                Lib.Callback('nn_drinks:openSupplyManagement', function(refreshSuccess, machineData)
                    if refreshSuccess then
                        SendNUIMessage({
                            action = 'openSupplyManagement',
                            data = machineData
                        })
                    end
                end, State.CurrentDrinksMachine)
            else
                bridge.notification.show({
                    title = 'Error',
                    message = message or 'Failed to add supplies',
                    type = 'error'
                })
            end
        end, State.CurrentDrinksMachine, data.supplyId, data.amount)
    end
    cb('ok')
end)

RegisterNUICallback('checkDrinkSupplies', function(data, cb)
    if State.CurrentDrinksMachine then
        Lib.Callback('nn_drinks:checkDrinkSupplies', function(success, message)
            cb({ success = success, message = message })
        end, State.CurrentDrinksMachine, data.drinkId)
    else
        cb({ success = false, message = 'No machine selected' })
    end
end)

RegisterNetEvent('nn_food:openRecipeBook', function(restaurantId)
    Lib.Callback('nn_food:getRecipeBookData', function(data)
        SendNUIMessage({
            action = 'setRecipeBookData',
            data = data
        })
        SetNuiFocus(true, true)
        SendTranslationsAndOpenUI({
            action = 'setVisibility',
            data = {
                page = "recipe-book",
                visible = true,
                action = "setVisible",
            },
        })
    end, restaurantId)
end)

RegisterNetEvent('nn_food:setRecipeBookData', function(data)
    SendNUIMessage({
        action = 'setRecipeBookData',
        data = data
    })
end)

RegisterNUICallback('checkInventory', function(data, cb)
    if not data.ingredients then
        return cb({})
    end
    
    Lib.Callback('nn_food:checkPlayerInventory', function(hasIngredients)
        cb(hasIngredients)
    end, data.ingredients)
end)


RegisterNUICallback('startCooking', function(data, cb)
    if not data.recipeId then
        return cb('error')
    end
    bridge.progressbar.show({
        duration = 10000,
        title = 'Cooking...',
        useWhileDead = false,
        canCancel = false,
        animation = {
            dict = 'anim@scripted@player@mission@tunf_bunk_ig3_nas_upload@',
            anim = 'normal_typing',
        },
        disable = {
            move = true,
            car = true,
            combat = true,
        },
    }, function()
        TriggerServerEvent('nn_food:startCookingRecipe', data.recipeId)
    end)
    cb('ok')
end)

function RefreshAllInteractions()
    for key, interaction in pairs(State.Interactions) do
        if string.find(key, "management-") or string.find(key, "pos_") or string.find(key, "fryer-") or string.find(key, "grill-") or string.find(key, "dumpster-") or string.find(key, "kiosk-") then
            exports['is_interaction']:RemoveInteraction(interaction)
            State.Interactions[key] = nil
        end
    end
    
    Wait(500)
    SetupRestaurants()
    CreatePOSInteractions()
    CreateKioskInteractions()
    SetupDumpsterInteractions()
    SetupCookingStations()
end

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    TriggerServerEvent('nn_food:askForProps')
    Lib.Callback('nn_resto:ready', function(ready)
        if ready then
            Init()
        end
    end)
end)

RegisterNetEvent('nn_food:employeeInvitationAccepted', function(restaurantId)
    Init()
end)

RegisterNetEvent('esx:playerLoaded', function()
    TriggerServerEvent('nn_food:askForProps')
    Lib.Callback('nn_resto:ready', function(ready)
        if ready then
            Init()
        end
    end)
end)


function Init()
    Citizen.CreateThread(function()
        Wait(1000)
        Lib.Callback('nn_resto:getRestaurants', function(data)
            State.Restaurants = data
            for k, v in pairs(State.Restaurants) do
                local positions = type(v.positions) == "string" and json.decode(v.positions) or v.positions
                local info = type(v.info) == "string" and json.decode(v.info) or v.info
                local blipCoords = vector3(positions.blip.x, positions.blip.y, positions.blip.z)
                local blip = AddBlipForCoord(blipCoords)
                SetBlipSprite(blip, tonumber(info.blipNumber))
                SetBlipDisplay(blip, 4)
                SetBlipScale(blip, 0.8)
                BeginTextCommandSetBlipName('STRING')
                AddTextComponentString(v.label)
                EndTextCommandSetBlipName(blip)
                SetBlipAsShortRange(blip, true)
                SetBlipColour(blip, 1)
            end
            
            SetupRestaurants()
            Lib.Callback('nn_food:getPlayerRestaurantData', function(data)
                State.PlayerRestaurant = data.playerRestaurant
                State.RestaurantMLO = data.restaurant
                dprint('Player restaurant data cached:', data.playerRestaurant and data.playerRestaurant.restaurant.label or 'No restaurant')
                
                
                RefreshAllInteractions()
            end)
            while not State.PlayerRestaurant do
                Wait(100)
            end
            Wait(1000)
            local positions = type(State.PlayerRestaurant.restaurant.positions) == "string" and json.decode(State.PlayerRestaurant.restaurant.positions) or State.PlayerRestaurant.restaurant.positions
            local blipCoords = vector3(positions.blip.x, positions.blip.y, positions.blip.z)
            Citizen.CreateThread(function()
                local created = false
                while not created do
                    local playerCoords = GetEntityCoords(PlayerPedId())
                    local distance = #(playerCoords - blipCoords)
                    if distance < 30.0 then
                        Wait(1000)
                        TriggerServerEvent('nn_cooking:requestCookingState')
                        Wait(500) -- Wait for state sync
                        TriggerServerEvent("nn_cooking:requestKitchenInts", State.PlayerRestaurant.restaurantId)
                        TriggerServerEvent("nn_cooking:requestGrillInts", State.PlayerRestaurant.restaurantId)
                        SetupDumpsterInteractions()
                        SetupCookingStations()
                        created = true      
                        break
                    end
                    Wait(1000)
                end
            end)
            
            Wait(1000)
            CreateKioskInteractions()
            
            
            for id, restaurant in pairs(State.Restaurants) do
                LoadRestaurantTVs(id)
            end
        end)
    end)
end

Citizen.CreateThread(function()
    Wait(1000)
    local language = Config.Language or 'en'
    
    SendNUIMessage({
        action = 'setConfigLanguage',
        data = { language = language }
    })
    
    if Translations[language] then
        SendNUIMessage({
            action = 'translationsReceived',
            data = Translations[language]
        })
    else
        SendNUIMessage({
            action = 'translationsReceived',
            data = Translations['en']
        })
    end
end)


Wait(10000)
TriggerServerEvent('nn_food:askForProps')
Lib.Callback('nn_resto:ready', function(ready)
    if ready then
        Init()
    end
end)

RegisterNetEvent('nn_food:client:codem-inventory:openStash', function(id, data)
    TriggerServerEvent('codem-inventory:server:openstash', id, data.slots, data.weight, data.label)
end)

RegisterNetEvent('nn_food:client:qb-inventory:openStash', function(id, data)
    TriggerEvent("inventory:client:SetCurrentStash", id)
    TriggerServerEvent('inventory:server:OpenInventory', 'stash', id, { maxweight = data.weight, slots = data.slots })
end)

RegisterNetEvent('nn_food:client:ps-inventory:openStash', function(id, data)
    if source ~= 65535 then return end
    TriggerEvent('ps-inventory:client:SetCurrentStash', id)
    TriggerServerEvent('ps-inventory:server:OpenInventory', 'stash', id, { maxweight = data.weight, slots = data.slots })
end)

RegisterNetEvent('nn_resto:AddRestoToState', function(restaurant)
    local positions = type(restaurant.positions) == "string" and json.decode(restaurant.positions) or restaurant.positions
    local info = type(restaurant.info) == "string" and json.decode(restaurant.info) or restaurant.info
    local blipCoords = vector3(positions.blip.x, positions.blip.y, positions.blip.z)
    local blip = AddBlipForCoord(blipCoords)
    
    SetBlipSprite(blip, tonumber(info.blipNumber))
    SetBlipDisplay(blip, 4)
    SetBlipScale(blip, 0.8)
    BeginTextCommandSetBlipName('STRING')
    AddTextComponentString(restaurant.label)
    EndTextCommandSetBlipName(blip)
    SetBlipAsShortRange(blip, true)
    SetBlipColour(blip, 1)
end)


RegisterNetEvent('nn_resto:restaurantDeleted', function(restaurantId)
    
    if State.Restaurants and State.Restaurants[restaurantId] then
        State.Restaurants[restaurantId] = nil
        dprint('Restaurant removed from client state:', restaurantId)
    end
    
    
    if State.PlayerRestaurant and State.PlayerRestaurant.restaurantId == restaurantId then
        State.PlayerRestaurant = nil
        State.RestaurantMLO = nil
        dprint('Player restaurant data cleared due to deletion:', restaurantId)
        
        
        RefreshAllInteractions()
    end
    
    
    bridge.notification.show({
        message = T('restaurant_deleted_notification'),
        type = 'info'
    })
end)

function SetupRestaurants()
    for id, restaurant in pairs(State.Restaurants) do
        SetupManagementPoint(id)
    end
end

function SetupManagementPoint(id)
    local rest = State.Restaurants[id]
    local positions = type(rest.positions) == 'string' and json.decode(rest.positions) or rest.positions
    local management = vector3(positions.management.x, positions.management.y, positions.management.z)
    if not IsPlayerEmployee(id) then
        return
    end

    local int = exports['is_interaction']:addInteractionCoords('management-' .. id, management, {
        hideSquare = false,
        checkVisibility = true,
        showInVehicle = false,
        distance = 5.0,
        distanceText = 1.0,
        offset = {
            text = {x = 0.0, y = 0.0, z = 0.5},
            target = {x = 0.0, y = 0.0, z = 0.3}
        },
        bone = nil,
        options = {
            {
                name = "restaurant_management",
                icon = "fa-solid fa-door-open",
                label = T('restaurant_management'),
                key = "E",
                duration = 500,
                onSelect = function()
                    if IsPlayerEmployee(id) then
                        OpenManagementPanel(id)
                    else
                        ShowEmployeeAccessError()
                    end
                end
            },
            {
                name = "restaurant_computer",
                icon = "fa-solid fa-computer",
                label = T('restaurant_computer'),
                key = "E",
                duration = 500,
                onSelect = function()
                    if IsPlayerEmployee(id) then
                        ExecuteCommand('computer')
                    else
                        ShowEmployeeAccessError()
                    end
                end    
            }
        },
    })

    State.Interactions['management-' .. id] = int
end

RegisterCommand('nn_food:management', function(source, args)
    local restaurantId = tonumber(args[1]) or 1
    OpenManagementPanel(restaurantId)
end, false)

RegisterNetEvent('nn_food:refreshPlayerRestaurantCache', function()
    RefreshPlayerRestaurantCache()
end)

function GetClosestRestaurant(restCoords)
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


function SetupCookingStations()
    for restaurantId, restaurant in pairs(Config.Restaurants) do
        local positions = type(State.PlayerRestaurant.restaurant.positions) == "string" and json.decode(State.PlayerRestaurant.restaurant.positions) or State.PlayerRestaurant.restaurant.positions
        local blipCoords = vector3(positions.blip.x, positions.blip.y, positions.blip.z)
        local restName = GetClosestRestaurant(blipCoords)
        if restaurantId == restName then
            if restaurant.CookingStations then
                for i, station in pairs(restaurant.CookingStations) do
                    SetupCookingStation(State.PlayerRestaurant.restaurantId, i, station)
                end
            end
        end
    end
end


function SetupCookingStation(restaurantId, stationIndex, station)
    local interactions = {
        {
            name = "cooking_station_recipe_book_" .. restaurantId .. "_" .. stationIndex,
            icon = "fa-solid fa-book",
            label = T('open_recipe_book'),
            key = "E",
            duration = 500,
            onSelect = function()
                TriggerServerEvent('nn_food:openRecipeBook', restaurantId)
            end
        }
    }

    local int = exports['is_interaction']:addInteractionCoords('cooking-station-' .. restaurantId .. '-' .. stationIndex, station.coords, {
        hideSquare = false,
        checkVisibility = true,
        showInVehicle = false,
        distance = 3.0,
        distanceText = 1.5,
        offset = {
            text = {x = 0.0, y = 0.0, z = 0.8},
            target = {x = 0.0, y = 0.0, z = 0.5}
        },
        bone = nil,
        options = interactions
    })

    State.Interactions['cooking-station-' .. restaurantId .. '-' .. stationIndex] = int
    State.CookingStations[restaurantId .. '-' .. stationIndex] = {
        restaurantId = restaurantId,
        stationIndex = stationIndex,
        coords = station.coords
    }
end


RegisterNetEvent('nn_food:useTicket')
AddEventHandler('nn_food:useTicket', function(ticketData)
    SetNuiFocus(true, true)
    SendNUIMessage({
        action = 'setTicketData',
        data = ticketData
    })
    SendTranslationsAndOpenUI({
        action = 'setVisibility',
        data = {
            visible = true,
            page = 'ticket',
            action = "setVisible",
        }
    })
end)


RegisterNUICallback('useTicketItem', function(data, cb)
    local ticketData = data.ticketData
    if ticketData then
        TriggerEvent('nn_food:useTicket', ticketData)
    end
    cb('ok')
end)


RegisterNUICallback('closeTicket', function(data, cb)
    SetNuiFocus(false, false)
    cb('ok')
end)


RegisterCommand('testticket', function()
    local testTicketData = {
        receiptNumber = 'TEST-12345',
        orderType = 'DINE IN',
        tableNumber = '5',
        serverName = 'John Doe',
        items = {
            {
                id = '1',
                name = 'Classic Burger',
                quantity = 2,
                price = 12.99,
                total = 25.98
            },
            {
                id = '2',
                name = 'French Fries',
                quantity = 1,
                price = 5.99,
                total = 5.99
            }
        },
        subtotal = 31.97,
        tax = 2.72,
        total = 34.69,
        paymentMethod = 'CASH',
        amountPaid = 40.00,
        change = 5.31,
        timestamp = '2024-01-15 14:30:25',
        restaurantName = "MARIO'S RESTAURANT"
    }
    
    TriggerEvent('nn_food:useTicket', testTicketData)
end, false)


RegisterNetEvent('nn_food:musicStarted')
AddEventHandler('nn_food:musicStarted', function(musicIndex, musicName)
    SendNUIMessage({
        action = 'musicStarted',
        data = {
            musicIndex = musicIndex,
            musicName = musicName
        }
    })
end)

RegisterNetEvent('nn_food:musicStopped')
AddEventHandler('nn_food:musicStopped', function()
    SendNUIMessage({
        action = 'musicStopped'
    })
end)

RegisterNUICallback('playMusic', function(data, cb)
    TriggerServerEvent('nn_food:playMusic', data.musicIndex, State.PlayerRestaurant.restaurantId)
    cb({})
end)

RegisterNUICallback('stopMusic', function(data, cb)
    TriggerServerEvent('nn_food:stopMusic', State.PlayerRestaurant.restaurantId)
    cb({})
end)

RegisterNUICallback('setMusicVolume', function(data, cb)
    TriggerServerEvent('nn_food:setMusicVolume', data.volume, State.PlayerRestaurant.restaurantId)
    cb({})
end)

RegisterNUICallback('closeBill', function(data, cb)
    SendNUIMessage({
        action = 'setVisibility',
        data = {
            visible = false,
            page = 'bill',
            action = "setVisible",
        }
    })
    SetNuiFocus(false, false)
    TriggerScreenblurFadeOut(200)
    cb({})
end)


RegisterNUICallback('acceptBill', function(data, cb)
    TriggerServerEvent('nn_food:acceptBill', data.billId, data.paymentMethod)
    cb({})
end)

RegisterNUICallback('declineBill', function(data, cb)
    TriggerServerEvent('nn_food:declineBill', data.billId)
    cb({})
end)


RegisterNetEvent('nn_food:showBill')
AddEventHandler('nn_food:showBill', function(billData)
    SendNUIMessage({
        action = 'setBillData',
        data = billData
    })
    SendTranslationsAndOpenUI({
        action = 'setVisibility',
        data = {
            visible = true,
            page = 'bill',
            action = "setVisible",
        }
    })
    SetNuiFocus(true, true)
end)

RegisterNetEvent('nn_food:hideBill')
AddEventHandler('nn_food:hideBill', function()
    SendNUIMessage({
        action = 'setVisibility',
        data = {
            visible = false,
            page = 'bill',
            action = "setVisible",
        }
    })
    SetNuiFocus(false, false)
end)


RegisterNetEvent('nn_food:deliverNPCOrder', function(npcNetworkId, orderId)
    
end)


RegisterNetEvent('nn_food:createNPCInteraction', function(npcNetworkId, npcData)
    local npcPed = NetworkGetEntityFromNetworkId(npcNetworkId)
    
    if not DoesEntityExist(npcPed) then
        return
    end
    
    
    if npcInteractions[npcNetworkId] then
        exports['is_interaction']:removeLocalEntity(npcPed)
    end
    
    
    local int = exports['is_interaction']:addInteractionLocalEntity('npc-order-' .. npcNetworkId, npcPed, {
        hideSquare = false,
        checkVisibility = true,
        showInVehicle = false,
        distance = 3.0,
        distanceText = 1.5,
        offset = {
            text = {x = 0.0, y = 0.0, z = 0.6},
            target = {x = 0.0, y = 0.0, z = 0.4}
        },
        bone = nil,
        options = {
            {
                name = "deliver_npc_order",
                icon = "fa-solid fa-shopping-bag",
                label = T('deliver_order') .. npcData.orderNumber,
                key = "E",
                duration = 500,
                onSelect = function()
                    
                    if not State.PlayerRestaurant or not State.PlayerRestaurant.restaurantId then
                        bridge.notification.show({
                            message = T('you_not_restaurant_employee'),
                            style = "error"
                        })
                        return
                    end
                    
                    
                    TriggerServerEvent('nn_food:checkNPCOrderDelivery', npcNetworkId, npcData.orderId)
                end
            }
        }
    })
    
    npcInteractions[npcNetworkId] = int
end)


RegisterNetEvent('nn_food:removeNPCInteraction', function(npcNetworkId)
    local npcPed = NetworkGetEntityFromNetworkId(npcNetworkId)
    SetBlockingOfNonTemporaryEvents(npcPed, true)
    if DoesEntityExist(npcPed) then
        exports['is_interaction']:removeLocalEntity(npcPed)
    end
    npcInteractions[npcNetworkId] = nil
end)


RegisterNUICallback('requestTranslations', function(data, cb)
    local language = data.language or Config.Language or 'en'
    
    SendNUIMessage({
        action = 'setConfigLanguage',
        data = { language = Config.Language or 'en' }
    })
    
    if Translations[language] then
        SendNUIMessage({
            action = 'translationsReceived',
            data = Translations[language]
        })
    else
        SendNUIMessage({
            action = 'translationsReceived',
            data = Translations['en']
        })
    end
    
    cb({})
end)


function SendTranslationsAndOpenUI(uiData)
    local language = Config.Language or 'en'
    
    
    SendNUIMessage({
        action = 'setConfigLanguage',
        data = { language = language }
    })
    
    
    if Translations[language] then
        SendNUIMessage({
            action = 'translationsReceived',
            data = Translations[language]
        })
    else
        SendNUIMessage({
            action = 'translationsReceived',
            data = Translations['en']
        })
    end
    
    
    Wait(100)
    
    
    SendNUIMessage(uiData)
end


