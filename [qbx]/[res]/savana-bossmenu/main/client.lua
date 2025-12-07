local Framework, frameworkName = getFramework()

local loaded = false
local targetStore = false

function getNearMenu()
    for k,v in pairs(Config.Shops) do
        if (GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), v.bossMenu, true) < 10.0) then
            return k
        elseif (GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), v.duty, true) < 10.0) then
            return k
        elseif (GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), v.wardrobe, true) < 10.0) then
            return k
        end
    end
    return nil
end

function openWardrobe()
    local shop = getNearMenu()

    targetStore = shop

    local fetch = lib.callback.await('savana-bossmenu:getPermission', false, targetStore)

    if fetch then
        if fetch["wardrobe"] then
            openWardrobeMenu()
            return true
        else
            notify('error', getMessage('noPerm'))
            return false
        end
    else
        debuk('failed to open wardrobe')
        return false
    end
end

function openStorage()
    local shop = getNearMenu()

    targetStore = shop

    local fetch = lib.callback.await('savana-bossmenu:getPermission', false, targetStore)

    if fetch then
        if fetch["storage"] then
            openStorageMenu(targetStore)
            return true
        else
            notify('error', getMessage('noPerm'))
            return false
        end
    else
        debuk('failed to open storage')
        return false
    end
end

RegisterNetEvent('savana-bossmenu:openMenu')
AddEventHandler('savana-bossmenu:openMenu', function()
    local shop = getNearMenu()

    targetStore = shop

    if shop then
        local fetch = lib.callback.await('savana-bossmenu:access', false, shop)

        if fetch then
            if getDuty() then
                loadMenu(shop)
                SendNUIMessage({
                    action = "open"
                })
                SetNuiFocus(true, true)
            else
                notify('success',getMessage('duty'))
            end
        else
            notify('error', getMessage('noAccess'))
        end
    else
        debuk('near boss menu not found')
    end
end)

function getDuty()
    if Config.Shops["type"] == "job" then
        local fetch = lib.callback.await('savana-bossmenu:getDuty', false)

        if fetch == "on" then
            return true
        else
            return false
        end

        return true
    else
        return true
    end
end

RegisterNetEvent('savana-bossmenu:duty')
AddEventHandler('savana-bossmenu:duty', function()
    local shop = getNearMenu()

    targetStore = shop

    local fetch = lib.callback.await('savana-bossmenu:duty', false, targetStore)

    if fetch then
        if fetch == "on" then
            notify('success', getMessage("dutyOn"))
        else
            notify('error', getMessage('dutyOff'))
        end
    else
        notify('error', getMessage('noPerm'))
    end
end)

function getTabelCount(table)
    local number = 0
    local deposit = 0

    for k,v in pairs(table) do
        number = number+1
        if v.type == "deposit" then
            deposit = deposit+1
        end
    end

    return number, deposit
end

function loadMenu(shop)
    local fetch = lib.callback.await('savana-bossmenu:getData', false, shop)

    SendNUIMessage({
        action = "resetMember"
    })

    local number = 0

    if fetch then
        -- resetMugshot()

        local transaction, deposit = getTabelCount(fetch.transaction)

        local transactionTable = {}
        local transactionNumber = transaction
        local transactionCount = 0

        while transactionCount < 15 do
            if fetch.transaction[transactionNumber] then
                table.insert(transactionTable, fetch.transaction[transactionNumber])
                transactionNumber = transactionNumber-1
                transactionCount = transactionCount+1
            else
                break
            end
            Citizen.Wait(1)
        end

        for k,v in pairs(transactionTable) do
            SendNUIMessage({
                action = "addTransaction",
                value = v
            })
        end


        for k,v in pairs(fetch["players"]) do
            local image = "public/avatar.png"

            if v.image then
                image = v.image
            end

            SendNUIMessage({
                action = "addPlayer",
                id = k,
                value = v,
                image = image
            })
            number= number+1
        end

        SendNUIMessage({
            action = "updateProfile",
            name = fetch.name,
            money = fetch.money,
            image = fetch.image,
            balance = fetch.balance,
            trans = transaction,
            deposit = deposit,
            isBoss = fetch.isBoss,
            permissions = fetch.permissions,
        })

        SendNUIMessage({
            action = "updateMemberCount",
            value = number
        })
    else
        debuk("menu not loaded")
    end
end

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

function debuk(txt)
    if Config.debug then
        print("[Debug] [savana-bossmenu] "..txt)
    end
end

RegisterNUICallback('permission', function(data, cb)
    local fetch = lib.callback.await('savana-bossmenu:getPermission', false, targetStore, data.id)
    if fetch then
        for k,v in pairs(fetch) do
            SendNUIMessage({
                action = "permission",
                id = k,
                value = v
            })
        end
        cb(true)
        debuk('player permission successfully loaded')
    else
        cb(false)
    end
end)

RegisterNUICallback('updateGrade', function(data, cb)
    local fetch = lib.callback.await('savana-bossmenu:getGrades', false, targetStore, data.id)

    if fetch then
        SendNUIMessage({
            action = "updateGradeName",
            name = fetch.name
        })

        for k,v in pairs(fetch.grades) do
            SendNUIMessage({
                action = "addGrades",
                grade = k,
                label = v,
                isMyJob = tonumber(k) == fetch["myGrade"]
            })
        end
        cb(true)
        debuk('player grades successfully loaded')
    else
        cb(false)
    end
end)

RegisterNUICallback('updatePlayerGrade', function(data, cb)
    local fetch = lib.callback.await('savana-bossmenu:updateGrade', false, targetStore, data)

    if fetch then
        loadMenu(targetStore)
        cb(true)
        debuk('player grades successfully updated')
    else
        cb(false)
    end
end)

RegisterNUICallback('updatePermission', function(data, cb)
    local fetch = lib.callback.await('savana-bossmenu:updatePermission', false, targetStore, data)

    if fetch then
        updatePermission(data.id)
        cb(true)
        debuk('player permission successfully updated')
    else
        debuk("player permission didn't updated (1)")
        cb(false)
    end
end)

RegisterNUICallback('loadNearPlayers', function(data, cb)
    local players = getNearPlayers()
    local fetch = lib.callback.await('savana-bossmenu:getNames', false, players)

    for _, id in pairs(players) do
        SendNUIMessage({
            action = "addNewPlayer",
            id = id,
            name = fetch[id]
        })
    end
    cb(true)
end)

RegisterNUICallback('addPlayer', function(data, cb)
    local fetch = lib.callback.await('savana-bossmenu:addPlayer', false, data, targetStore)

    if fetch then
        loadMenu(targetStore)
    end

    cb(true)
end)

function getNearPlayers()
    local players = GetActivePlayers()
    local playerPed = PlayerPedId()
    local playerCoords = GetEntityCoords(playerPed)
    local nearbyPlayers = {}

    for _, playerId in ipairs(players) do
        local targetPed = GetPlayerPed(playerId)
        local targetCoords = GetEntityCoords(targetPed)
        local distance = #(playerCoords - targetCoords)

        if distance <= 10.0 then
            table.insert(nearbyPlayers, GetPlayerServerId(playerId))
        end
    end

    return nearbyPlayers
end

function updatePermission(id)
    local fetch = lib.callback.await('savana-bossmenu:getPermission', false, targetStore, id)

    if fetch then
        for k,v in pairs(fetch) do
            SendNUIMessage({
                action = "permission",
                id = k,
                value = v
            })
        end
        debuk('player permission successfully loaded')
    else
        debuk("player permission didn't updated (2)")
    end
end

RegisterNUICallback('kick', function(data, cb)
    local fetch = lib.callback.await('savana-bossmenu:kick', false, targetStore, data)

    if fetch then
        loadMenu(targetStore)
        debuk('player successfully kicked')
        cb(true)
    else
        debuk("player didn't kicked (1)")
        cb(false)
    end
end)

RegisterNUICallback('withdraw', function(data, cb)
    local fetch = lib.callback.await('savana-bossmenu:withdraw', false, targetStore, data)

    if fetch then
        loadMenu(targetStore)
        notify('success', getMessage('withdraw'))
        debuk('player successfully withdrawed')
    else
        notify('error', getMessage('noSocietyMoney'))
        debuk('player failed to withdraw, no money in society')
    end
    cb(true)
end)

RegisterNUICallback('deposit', function(data, cb)
    local fetch = lib.callback.await('savana-bossmenu:deposit', false, targetStore, data)

    if fetch then
        loadMenu(targetStore)
        notify('success', getMessage('deposit'))
        debuk('player successfully deposited')
    else
        notify('error', getMessage('noMoney'))
        debuk('player failed to deposit, no money have in player')
    end
    cb(true)
end)

RegisterNUICallback('exit', function(data, cb)
    SetNuiFocus(false, false)
    -- resetMugshot()
end)

RegisterNUICallback('event', function(data, cb)
    if data.value == "wardrobe" then
        TriggerEvent('savana-bossmenu:wardrobe')
        local status = openWardrobe()
        cb(status)
    else
        local status = openStorage()
        cb(status)
    end
end)

function addMoney(store, money)
    TriggerServerEvent('savana-bossmenu:addMoney', store, money)
end

function removeMoney(store, money)
    TriggerServerEvent('savana-bossmenu:removeMoney', store, money)
end