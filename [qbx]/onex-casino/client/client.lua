local isUiOpen = false

local tabletProp = nil
local tabletDict = "amb@world_human_tourist_map@male@base"
local tabletAnim = "base"
local tabletModel = "prop_cs_tablet"

local function startTabletAnimation()
    lib.requestAnimDict(tabletDict)

    lib.requestModel(tabletModel)

    tabletProp = CreateObject(GetHashKey(tabletModel), 0, 0, 0, true, true, true)

    local boneIndex = GetPedBoneIndex(cache.ped, 28422)

    AttachEntityToEntity(
        tabletProp,
        cache.ped,
        boneIndex,
        0.0,    -- X offset
        -0.03,  -- Y offset
        0.0,    -- Z offset
        20.0,   -- X rotation
        -90.0,  -- Y rotation
        0.0,    -- Z rotation
        true,   -- p9
        true,   -- useSoftPinning
        false,  -- collision
        true,   -- isPed
        1,      -- vertexIndex
        true    -- fixedRot
    )

    TaskPlayAnim(cache.ped, tabletDict, tabletAnim, 8.0, -8.0, -1, 50, 0, false, false, false)
end

local function stopTabletAnimation()
    StopAnimTask(cache.ped, tabletDict, tabletAnim, 1.0)

    if tabletProp then
        DeleteObject(tabletProp)
        tabletProp = nil
    end
end

local function openUI()
    if not isUiOpen then
        local canConnect = lib.callback.await('onex:casino:openCasino', false)
        if not canConnect then return end

        startTabletAnimation()

        SendNUIMessage({
            type = 'show',
            show = true,
            balance = ESX.GetAccount('bank')?.money or 0
        })
        isUiOpen = true
        SetNuiFocus(true, true)
    else
        TriggerServerEvent('onex:casino:closeCasino')

        SendNUIMessage({
            type = 'show',
            show = false
        })
        isUiOpen = false
        SetNuiFocus(false, false)

        stopTabletAnimation()
    end
end

RegisterNUICallback('roullete:start', function (nuidata, resultCallback)
    if not nuidata then return resultCallback(false) end
    local data, error = lib.callback.await('onex:casino:getRoullete', false, nuidata.bet)

    if data and not error then
        resultCallback(data)
    else
        resultCallback(false)
    end
end)

RegisterNuiCallback('crash:getPoint', function (nuidata, resultCallback)
    if not nuidata then return resultCallback(false) end
    local crashPoint, gameData = lib.callback.await('onex:casino:getCrash', false, {
        amount = nuidata.amount,
        checkout = nuidata.checkout
    })

    if crashPoint and type(gameData) == 'table' then
        resultCallback(crashPoint)
    else
        resultCallback(false)
    end
end)

RegisterNUICallback('dice:getData', function (nuidata, resultCallback)
    if not nuidata then return resultCallback(false) end
    local result, error = lib.callback.await('onex:casino:getDice', false, nuidata)

    if result and not error then
        resultCallback(result)
    else
        resultCallback(false)
    end
end)

RegisterNUICallback('mines:getData', function (nuidata, resultCallback)
    if not nuidata then return resultCallback(false) end
    local result, error = lib.callback.await('onex:casino:getMines', false, nuidata)

    if result and not error then
        resultCallback(result)
    else
        resultCallback(false)
    end
end)

RegisterNUICallback('mines:revealCard', function (nuidata, resultCallback)
    if not nuidata then return resultCallback(false) end

    local success, isMine = lib.callback.await('onex:casino:revealCard', false, nuidata.cardIndex)
    if success then
        resultCallback({
            isMine = isMine,
        })
    else
        resultCallback(false)
    end
end)

RegisterNUICallback('casino:endGame', function (nuidata, resultCallback)
    if not nuidata then return resultCallback(false) end

    TriggerServerEvent('onex:casino:endGame')

    resultCallback(true)
end)

RegisterNUICallback('casino:logout', function (nuidata, resultCallback)
    if not nuidata then return resultCallback(false) end
    if isUiOpen then openUI() end
end)

RegisterNetEvent("onex:casino:openAdminPanel")
AddEventHandler("onex:casino:openAdminPanel", function()
    SetNuiFocus(true, true)
    SendNUIMessage({
        action = "openAdmin"
    })
end)


RegisterCommand('casino', function()
    openUI()
end, false)