local Framework, frameworkName = getFramework()

local lib = nil
if frameworkName == "qb" then
    lib = exports['qb-core']:GetCoreObject()
else
    lib = exports['ox_lib']
end

if lib and lib.callback then
    -- lib has callback
else
    lib = {
        callback = function(name, cb, ...)
            if cb then
                Framework.Functions.TriggerCallback(name, cb, ...)
            else
                return Framework.Functions.TriggerCallback(name, ...)
            end
        end
    }
end

local loaded = false

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
        -- Check job before opening menu
        Framework.Functions.TriggerCallback('savana-restaurant:checkJob', function(hasJob)
            if hasJob then
                targetStore = store
                open()
            else
                DebugPrint('no permission')
                notify('error', getMessage('no_perm'))
            end
        end, Config.Stores[store].job)
    else
        DebugPrint('no near store found')
    end
end)

function open()
    loadMenu()

    SendNUIMessage({
        action = "open"
    })

    SetNuiFocus(true, true)
end

function loadMenu()
    if not loaded then
        local image = GetMugShotBase64(PlayerPedId(), false)
        Framework.Functions.TriggerCallback('savana-restaurant:getInformation', function(fetch)
            SendNUIMessage({
                action = "updateProfile",
                image = image,
                name = fetch["name"],
                money = fetch["money"]
            })
        end)

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

    -- Check job before crafting
    Framework.Functions.TriggerCallback('savana-restaurant:checkJob', function(hasJob)
        if not hasJob then
            DebugPrint('no permission')
            notify('error', getMessage('no_perm'))
            cb(false)
            return
        end

        Framework.Functions.TriggerCallback('savana-restaurant:craft', function(fetch)
            if fetch == "ok" then
                DebugPrint('item successfully crafted')
                notify('success', getMessage('craft'))
                cb(true)
                progress(data.id, data.x)
            elseif fetch == "id" then
                DebugPrint('id of the item to be crafted was not found')
                cb(false)
            else
                DebugPrint('no item')
                notify('error', getMessage('noItem'))
                cb(false)
            end
        end, targetStore, data)
    end, Config.Stores[targetStore].job)
end)

RegisterNUICallback('loadDetails', function(data, cb)
    Framework.Functions.TriggerCallback('savana-restaurant:loadDetails', function(fetch)
        local active = true -- Always enable craft button

        if fetch then
            for k,v in pairs(fetch) do
                SendNUIMessage({
                    action = "AddDetail",
                    id = k,
                    value = v
                })

                -- No need to check status, always craftable
            end

            SendNUIMessage({
                action = "updateCraft",
                value = active
            })

            cb(true)
        end
    end, targetStore, data.id, data.x)
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
    progressBar(info, x)
end

function progressBar(info, x)
    loadAnimDict(info.animation.dict)
    exports['progressbar']:Progress({
        name = "crafting",
        duration = info.craftTime * x,
        label = "Crafting " .. info.title,
        useWhileDead = false,
        canCancel = true,
        controlDisables = {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        },
        animation = {
            animDict = info.animation.dict,
            anim = info.animation.anim,
            flags = 1,
        },
        prop = {},
    }, function(status)
        if not status then
            -- Done
            TriggerServerEvent('savana-restaurant:giveItem', info.item, x)
        else
            -- Cancel
            TriggerServerEvent('savana-restaurant:cancel', info.requirements, x)
        end
    end)
end

function loadAnimDict(animDict)
    RequestAnimDict(animDict)
    while not HasAnimDictLoaded(animDict) do
        Citizen.Wait(100)
    end
end

function DebugPrint(txt)
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