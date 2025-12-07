selectedRestaurant = nil
mugshot = nil

function findRestaurantJob(id)
    for k,v in pairs(Config.POSZones) do
        if k == id then
            return v.job
        end
    end
end

function findRestaurantJobGrade(id)
    for k,v in pairs(Config.POSZones) do
        if k == id then
            return v.grade
        end
    end
end

function openRestaurant()
    local data = lib.callback.await('savana-order:server:openRestaurant', false, selectedRestaurant)

    if cachedMugshot == nil then
        cachedMugshot = GetMugShotBase64(PlayerPedId(), false)
    end

    if data then
        local job = lib.callback.await('savana-order:server:getJob', false)

        -- print("My Job:", job.name, "Needed Job:", findRestaurantJob(selectedRestaurant))

        if job.name == findRestaurantJob(selectedRestaurant) then
            SetNuiFocus(true, true)
            SendNUIMessage({
                action = "openRestaurant",
                mugshot = cachedMugshot,
                playerInfo = lib.callback.await('savana-order:server:getPlayerInfo', false),
                data = data,
                products = Config.Products[findRestaurantJob(selectedRestaurant)],
                categories = Config.Categories[findRestaurantJob(selectedRestaurant)],
                hasJob = true
            })
        else
            SetNuiFocus(true, true)
            SendNUIMessage({
                action = "openRestaurant",
                mugshot = cachedMugshot,
                playerInfo = lib.callback.await('savana-order:server:getPlayerInfo', false),
                data = data,
                products = Config.Products[findRestaurantJob(selectedRestaurant)],
                categories = Config.Categories[findRestaurantJob(selectedRestaurant)],
                hasJob = false
            })
        end
        
    end
end

function openAdmin()
    local data = lib.callback.await('savana-order:server:openAdmin', false, selectedRestaurant)

    if cachedMugshot == nil then
        cachedMugshot = GetMugShotBase64(PlayerPedId(), false)
    end

    if data then
        SetNuiFocus(true, true)
        SendNUIMessage({
            action = "openAdmin",
            mugshot = cachedMugshot,
            playerInfo = lib.callback.await('savana-order:server:getPlayerInfo', false),
            data = data,
            products = Config.Products[findRestaurantJob(selectedRestaurant)],
            categories = Config.Categories[findRestaurantJob(selectedRestaurant)]
        })
    end
end

function close()
    SetNuiFocus(false, false)
    SendNUIMessage({
        action = "close",
    })
end

RegisterNUICallback('closeUi', function()
    close()
    return true
end)

RegisterNUICallback('cancelPayment', function(data, cb)
    local data = lib.callback.await('savana-order:server:invoiceCancelled', false, data.senderId)
    cb(true)
end)

RegisterNUICallback('withdrawMoney', function(data, cb)
    local amount = tonumber(data.amount)
    local data = lib.callback.await('savana-order:server:withdrawMoney', false, selectedRestaurant, amount)

    if data then
        cb(data)
    else
        cb(false)
    end
end)

RegisterNUICallback('depositMoney', function(data, cb)
    local amount = tonumber(data.amount)
    local data = lib.callback.await('savana-order:server:depositMoney', false, selectedRestaurant, amount)

    if data then
        cb(data)
    else
        cb(false)
    end
end)

RegisterNUICallback('addMenu', function(data, cb)
    local response = lib.callback.await('savana-order:server:addMenu', false, selectedRestaurant, data)

    if response then
        cb(response)
    else
        cb(false)
    end
end)

RegisterNUICallback('editMenu', function(data, cb)
    local response = lib.callback.await('savana-order:server:editMenu', false, selectedRestaurant, data)

    if response then
        cb(response)
    else
        cb(false)
    end
end)

RegisterNUICallback('deleteMenu', function(data, cb)
    local response = lib.callback.await('savana-order:server:deleteMenu', false, selectedRestaurant, data)

    if response then
        cb(response)
    else
        cb(false)
    end
end)

RegisterNUICallback('deleteProduct', function(data, cb)
    local response = lib.callback.await('savana-order:server:deleteProduct', false, selectedRestaurant, data)

    if response then
        cb(response)
    else
        cb(false)
    end
end)

RegisterNUICallback('addProduct', function(data, cb)
    local response = lib.callback.await('savana-order:server:addProduct', false, selectedRestaurant, data)

    if response then
        cb(response)
    else
        cb(false)
    end
end)

RegisterNUICallback('editProduct', function(data, cb)
    local response = lib.callback.await('savana-order:server:editProduct', false, selectedRestaurant, data)

    if response then
        cb(response)
    else
        cb(false)
    end
end)

RegisterNUICallback('getPlayers', function(data, cb)
    local response = lib.callback.await('savana-order:server:getPlayers', false, selectedRestaurant)
    -- print(json.encode(response))
    if response then
        cb(response)
    else
        cb(false)
    end
end)

RegisterNUICallback('sendPayment', function(data, cb)
    data.restaurantId = selectedRestaurant
    local response = lib.callback.await('savana-order:server:sendPayment', false, selectedRestaurant, data)

    if response then
        cb(response)
    else
        cb(false)
    end
end)

RegisterNUICallback('completePayment', function(data, cb)
    local response = lib.callback.await('savana-order:server:completePayment', 2000, data.restaurantId, data)

    if response then
        cb(response)
    else
        cb(false)
    end
end)

RegisterNetEvent('savana-order:client:openPayment')
AddEventHandler('savana-order:client:openPayment', function(data, sender, senderId, restaurantId)
    SetNuiFocus(true, true)
    SendNUIMessage({
        action = "openPayment",
        id = id,
        data = data,
        sender = sender,
        taxRate = Config.TaxRate,
        senderId = senderId,
        categories = Config.Categories[findRestaurantJob(restaurantId)],
        restaurantId = restaurantId
    })
end)

Citizen.CreateThread(function()
    for k,v in pairs(Config.POSZones) do
        if Config.UseTarget then
            if GetResourceState('ox_target') == 'started' then
                -- POS Zone
                exports.ox_target:addBoxZone({
                    coords = v.pos,
                    size = vec3(2.5, 2.5, 2),
                    rotation = 0,
                    debug = false,
                    minZ = v.pos.z - 2,
                    maxZ = v.pos.z + 2,
                    options = {
                        {
                            name = "pos" .. k,
                            icon = 'fas fa-door-open',
                            label = Config.Locales.openpostarget,
                            onSelect = function()
                                selectedRestaurant = k
                                openRestaurant()
                            end,
                        },
                    },
                    distance = 2.0,
                })

                -- Admin Zone
                exports.ox_target:addBoxZone({
                    coords = v.admin,
                    size = vec3(2.5, 2.5, 2),
                    rotation = 0,
                    debug = false,
                    minZ = v.admin.z - 2,
                    maxZ = v.admin.z + 2,
                    options = {
                        {
                            name = "admin" .. k,
                            icon = 'fas fa-door-open',
                            label = Config.Locales.openadmintarget,
                            onSelect = function()
                                selectedRestaurant = k
                                openAdmin()
                            end,
                            canInteract = function(entity, distance, coords)
                                selectedRestaurant = k

                                local job = lib.callback.await('savana-order:server:getJob', false)
                                
                                if job.name == findRestaurantJob(k) and job.grade == findRestaurantJobGrade(k) then
                                    return true
                                else
                                    return false
                                end
                            end,
                        },
                    },
                    distance = 2.0,
                })
            else

                exports['qb-target']:AddBoxZone("pos" .. k, v.pos, 2.5, 2.5, {
                    name = "pos" .. k,
                    debugPoly = false,
                    minZ = v.pos.z-2,
                    maxZ = v.pos.z+2
                },
                {
                    options = {
                        {
                            icon = 'fas fa-door-open',
                            label = Config.Locales.openpostarget,
                            action = function()
                                selectedRestaurant = k
                                openRestaurant()
                            end,
                        },
                    },
                    distance = 2.0,
                })

                exports['qb-target']:AddBoxZone("admin" .. k, v.admin, 2.5, 2.5, {
                    name = "admin" .. k,
                    debugPoly = false,
                    minZ = v.admin.z-2,
                    maxZ = v.admin.z+2
                },
                {
                    options = {
                        {
                            icon = 'fas fa-door-open',
                            label = Config.Locales.openadmintarget,
                            action = function()
                                selectedRestaurant = k
                                openAdmin()
                            end,
                            canInteract = function()
                                selectedRestaurant = k

                                local job = lib.callback.await('savana-order:server:getJob', false)
                                
                                if job.name == findRestaurantJob(k) and job.grade == findRestaurantJobGrade(k) then
                                    return true
                                else
                                    return false
                                end
                            end
                        },
                    },
                    distance = 2.0,
                })
            end
        else
            lib.zones.sphere({
                coords = v.pos,
                radius = 3.0,
                debug = false,
                onEnter = function()
                    -- local job = lib.callback.await('savana-order:server:getJob', false)
                    lib.showTextUI(Config.Locales.openpos)
                    -- if job.name == findRestaurantJob(k) then
                    --     lib.showTextUI(Config.Locales.openpos)
                    -- end
                end,
                onExit = function()
                    lib.hideTextUI()
                end,
                inside = function()
                    selectedRestaurant = k
                    if IsControlJustPressed(0, 38) then
                        openRestaurant()
                    end
                end,
            })

            lib.zones.sphere({
                coords = v.admin,
                radius = 2.5,
                debug = false,
                onEnter = function()
                    selectedRestaurant = k

                    local job = lib.callback.await('savana-order:server:getJob', false)
                    
                    if job.name == findRestaurantJob(k) and job.grade == findRestaurantJobGrade(k) then
                        lib.showTextUI(Config.Locales.openadmin)
                    end
                end,
                onExit = function()
                    lib.hideTextUI()
                end,
                inside = function()
                    if IsControlJustPressed(0, 38) then
                        openAdmin()
                    end
                end,
            })
        end
    end
end)