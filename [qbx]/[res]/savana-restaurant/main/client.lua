local Framework, frameworkName = getFramework()

local loaded = false
local vehicle, destination, driver, currentStore, orderBlip, active = nil, nil, nil, 0, nil, false

local orderItems = {}


function getNearMenu()
    for k,v in pairs(Config.Stores) do
        if (GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), v.coords, true) < 10.0) then
            return k
        end
    end
    return nil
end



RegisterNetEvent('savana-restaurant:openMenu')
AddEventHandler('savana-restaurant:openMenu', function()
    local store = getNearMenu()
    if store then
        targetStore = store
        fetch = lib.callback.await('savana-restaurant:getJob', false)

        if fetch then
            if Config.Stores[targetStore]["job"] == fetch then
                open()
            else
                notify('error', getMessage('no_perm'))
            end
        else
            debuk("player's job not found")
        end

    else
        debuk('no near store found')
    end
end)

function open()
    loadMenu()
    local money = lib.callback.await('savana-restaurant:getInformation', false)
    SendNUIMessage({
        action = "open",
        market = Config.whoSeller,
        bank = money.money.bank,
        cash = money.money.cash,
        wac = Config.whoSellerActiv
    })

    local data = lib.callback.await('savana-restaurant:getHistory', false)

    local ekle = {}
    
    for k,v in pairs(data) do
        table.insert(ekle, {
            creator = v.creator,
            itemName = v.itemname,
            amount = v.amount,
            date = v.date
        })
    end

    SendNUIMessage({
        action = 'updateHistory',
        history = ekle
    })

    SetNuiFocus(true, true)
end




function order()
    if not active then 
        local playerPed = PlayerPedId()
        local model = GetHashKey(Config.orderSettings.orderCar)
        local targetStore = getNearMenu()
        RequestModel(model)
        while not HasModelLoaded(model) do
            Wait(500)
        end

        currentStore = Config.Stores[targetStore]

        local spawnCoords = currentStore.order.vehicleSpawn
        vehicle = CreateVehicle(model, spawnCoords.x, spawnCoords.y, spawnCoords.z, spawnCoords.w, true, false)

        local driverModel = GetHashKey(Config.orderSettings.orderDriverPed)
        RequestModel(driverModel)
        while not HasModelLoaded(driverModel) do
            Wait(500)
        end

        driver = CreatePedInsideVehicle(vehicle, 4, driverModel, -1, true, false)
        SetEntityInvincible(driver, true)
        SetPedCanRagdoll(driver, false)
        SetPedCanBeKnockedOffVehicle(driver, 1)
        SetEntityProofs(driver, true, true, true, true, true, true, true, true)
        destination = currentStore.order.destination
        TaskVehicleDriveToCoord(driver, vehicle, destination, 20.0, 0, GetEntityModel(vehicle), 786603, 1.0, true)

        whoSellerBlip(vehicle)

        notify('success', Config.Locale.orderVeh)
        active = true
    else
        notify('error', Config.Locale.alreadyOrder)
    end
end

RegisterNUICallback('buy', function(data)
    if not active then
        local sendData = {}
        for k,v in pairs(data.basket) do
            table.insert(sendData, v)
            table.insert(orderItems, v)
        end
        if #sendData > 0 then
            local ok = lib.callback.await('savana-restaurant:buy', false, sendData, data.type)
            if ok == 'no' then
                notify('error', Config.Locale.noMoney)
            elseif ok == 'ok' then
                order()
            end
        else
            notify('error', Config.Locale.emptyBasket)
        end
    else
        notify('error', Config.Locale.alreadyOrder)
    end
end)

local zoneCreated = false

CreateThread(function()
    while true do
        Wait(1000)
        if active and vehicle ~= nil then
            local vehCoords = GetEntityCoords(vehicle)
            local dist = #(vector3(vehCoords.x - destination.x, vehCoords.y - destination.y, vehCoords.z - destination.z))
            SetBlipCoords(orderBlip, vehCoords.x, vehCoords.y, vehCoords.z)

            if dist < 3.0 and not zoneCreated then
                SetVehicleDoorOpen(vehicle, 2, false, false)
                SetVehicleDoorOpen(vehicle, 3, false, false)
                local coords = GetEntityCoords(vehicle)
                local forward = GetEntityForwardVector(vehicle)
                local trunkCoords = coords - (forward * 2.5)

                zone = lib.zones.sphere({
                    coords = trunkCoords,
                    radius = 2.5,
                    debug = Config.debug,
                    onEnter = function()   
                        lib.showTextUI(Config.Locale.takeItems)
                    end,
                    onExit = function()
                        lib.hideTextUI()
                    end,
                    inside = function()
                        if IsControlJustPressed(0, 38) then
                            fetch = lib.callback.await('savana-restaurant:getJob', false)
                            if currentStore["job"] == fetch then
                                if #orderItems > 0 then
                                    RemoveBlip(orderBlip)
                                    orderBlip = nil
                                    lib.hideTextUI()
                                    TriggerServerEvent('savana-restaurant:giveOrderItems', orderItems)
                                    orderItems = {}
                                    notify('success', Config.Locale.orderSuccess)
                                    TaskVehicleDriveToCoord(driver, vehicle, currentStore.order.vehicleDelete, 20.0, 0, GetEntityModel(vehicle), 786603, 1.0, true)
                                    Wait(1000)
                                    SetVehicleDoorOpen(vehicle, 2, true, true)
                                    SetVehicleDoorOpen(vehicle, 3, true, true)
                                    Wait(3000)
                                    DeleteVehicle(vehicle)
                                    DeletePed(driver)
                                    vehicle, driver = nil, nil
                                    active = false
                                    zoneCreated = false
                                    zone:remove()
                                    return
                                else
                                    notify('error', Config.Locale.noYou)
                                end
                            else
                                notify('error', Config.Locale.noYou)
                            end
                        end
                    end,
                })
                zoneCreated = true
            end
        end
    end
end)


function loadMenu()
    if not loaded then
        local image = GetMugShotBase64(PlayerPedId(), false)
        local fetch = lib.callback.await('savana-restaurant:getInformation', false)

        SendNUIMessage({
            action = "updateProfile",
            image = image,
            name = fetch["name"],
            money = fetch.money.cash
        })

        local playerJob = Config.Stores[targetStore].job -- Oyuncunun mesleğini al

        for k, v in pairs(Config.Categories) do
            if v.jobs and tableHasValue(v.jobs, playerJob) then
                SendNUIMessage({
                    action = "addCategory",
                    value = v
                })
            end
        end

        for k, v in pairs(Config.Stores[targetStore].items) do
            SendNUIMessage({
                action = "addItem",
                id = k,
                value = v
            })
            addRequirements(k, v.requirements)
        end
        loaded = true
    end
end


function tableHasValue(tbl, value)
    for _, v in pairs(tbl) do
        if v == value then
            return true
        end
    end
    return false
end

function addRequirements(item, requirements)
    for k,v in pairs(requirements) do
        SendNUIMessage({
            action = "addRequirement",
            id = item,
            value = v
        })
    end
end

RegisterNUICallback('craft', function(data, cb)
    data["id"] = tonumber(data.id)

    local fetch = lib.callback.await('savana-restaurant:craft', false, targetStore, data)
    if fetch == "ok" then
        debuk('item successfully crafted')
        notify('success', getMessage('craft'))
        cb(true)
        progress(data.id, data.x)
    elseif fetch == "id" then
        debuk('id of the item to be crafted was not found')
        cb(false)
    else
        debuk('no item')
        notify('error', getMessage('noItem'))
        cb(false)
    end
end)


RegisterNUICallback('loadDetails', function(data, cb)
    local fetch = lib.callback.await('savana-restaurant:loadDetails', false, targetStore, tonumber(data.id), tonumber(data.x) or 1)

    local active = true

    if fetch then
        
        for k,v in pairs(fetch) do
            SendNUIMessage({
                action = "AddDetail",
                id = k,
                value = v
            })

            if not v.status then
                active = false
            end

        end

        SendNUIMessage({
            action = "updateCraft",
            value = active
        })

        cb(true)
    end
end)

RegisterNUICallback('exit', function(data, cb)
    SetNuiFocus(false, false)
    resetMugshot()
end)

function getMessage(message)
    return Config.Locale[message]
end

function notify(status, message)
    SendNUIMessage({
        action = "notify",
        status = status,
        text = message
    })
end

function progress(id, x)
    local info = Config.Stores[targetStore]["items"][id]
    loadAnimDict(info.animation.dict)
    
    TaskPlayAnim(PlayerPedId(), info.animation.dict, info.animation.anim, 8.0, -8.0, -1, 1, 0, false, false, false)

    progressBar(info, x)
end

function loadAnimDict(animDict)
    RequestAnimDict(animDict)
    while not HasAnimDictLoaded(animDict) do
        Citizen.Wait(100)
    end
end

function debuk(txt)
    if Config.debug then
        print("[Debug] [savana-restaurant] "..txt)
    end
end

RegisterNetEvent('esx:setJob', function()
    loaded = false

    SendNUIMessage({
        action = "reset"
    })
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate')
AddEventHandler('QBCore:Client:OnJobUpdate', function()
    loaded = false

    SendNUIMessage({
        action = "reset"
    })
end)


RegisterNetEvent('updateUI', function(data)
    local ekle = {}
    for k,v in pairs(data) do
        table.insert(ekle, {
            creator = v.creator,
            itemName = v.itemname,
            amount = v.amount,
            date = v.date
        })
    end
    SendNUIMessage({
        action = 'updateHistory',
        history = ekle
    })
end)

