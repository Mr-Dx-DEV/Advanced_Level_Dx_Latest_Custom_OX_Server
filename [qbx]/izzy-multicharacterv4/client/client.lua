current = {
    cam = nil,
    ped = nil,
    characters = {}
}

function SendReactMessage(action, data)
    SendNUIMessage({
        action = action,
        data = data
    })
end

CreateThread(function()
    DoScreenFadeOut(0)
    Wait(1500)
    DisplayRadar(0)
    while true do
        Wait(100)
        if NetworkIsSessionActive() or NetworkIsPlayerActive(PlayerId()) then
            DoScreenFadeIn(400)
            if GetResourceState('spawnmanager') == 'started' then
                exports.spawnmanager:setAutoSpawn(false)
            end
            Wait(1000)
            if cfg.manualShutdown then
                ShutdownLoadingScreen()
                ShutdownLoadingScreenNui()
            end
            TriggerEvent('izzy-multicharacterv4:server:resetCurrentChar')
            TriggerEvent('esx:loadingScreenOff')
            setDisplay(true)
            break
        end
    end
end)

function setDisplay(state)
    if state then
        initialize()
    else
        close()
    end

    Wait(cfg.waitInterval)

    SetNuiFocus(state, state)
    SendReactMessage("HandleDisplay", state)
    SendReactMessage('setLang', cfg.locales[cfg.locale])
end

function easeOutQuad(t)
    return 1 - (1 - t) * (1 - t)
end

function moveCameraToPoint(coords)
    local camCoords = coords
    local startTime = GetGameTimer()
    local duration = cfg.camScenarioDuration

    CreateThread(function()
        while GetGameTimer() - startTime < duration do
            local elapsed = GetGameTimer() - startTime
            local progress = elapsed / duration
            local easedProgress = easeOutQuad(progress)
            local newY = camCoords.y + (2 * (1 - easedProgress))
            
            SetCamCoord(current.cam, camCoords.x, newY, camCoords.z)
            Wait(0)
        end

        SetCamCoord(current.cam, camCoords.x, camCoords.y, camCoords.z)
    end)
end


function setupCam()
    local camCoords = cfg.pedCamCoords
    RequestCollisionAtCoord(0.0, 0.0, 777.0)
    RequestCollisionAtCoord(camCoords.xyz)
    current.cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", camCoords.x - 10.0, camCoords.y, camCoords.z, 0.0, 0.0, camCoords.w, cfg.cameraFov, true)
    SetCamActive(current.cam, true)
    RenderScriptCams(true, false, 0, true, true)
    SetEntityCoords(PlayerPedId(), camCoords.x, camCoords.y, camCoords.z - 2.0)
    SetEntityVisible(PlayerPedId(), false)
    FreezeEntityPosition(PlayerPedId(), true)
    moveCameraToPoint(camCoords)
    SetFocusEntity(PlayerPedId())
    SetFocusEntity(current.ped)
    SetCamUseShallowDofMode(current.cam, true)
    SetCamNearDof(current.cam, 0.3)
    SetCamFarDof(current.cam, 1.3)
    SetCamDofStrength(current.cam, 1.0)

    CreateThread(function()
        repeat
            SetUseHiDof()
            Wait(0)
        until not DoesCamExist(current.cam)
    end)
end

function initialize()
    Wait(1000)
    updateCharacters()
    Wait(1000)
    updateConfig()
    TriggerServerEvent("izzy-multicharacterv4:server:setBucket", false)
    setupCam()
end

function close()
    if DoesCamExist(current.cam) then
        SetCamActive(current.cam, false)
        DestroyCam(current.cam)
        RenderScriptCams(false, true, 0, true)
    end
end

function updateCharacters()
    table.wipe(current.characters)
    local characters = izzy.callback("izzy-multicharacterv4:getCharacters")
    if #characters <= 0 then
        SendReactMessage('setPage', 'creator')
    end
    SendReactMessage("setData", { characters = characters })
    current.characters = characters
    updateSelected(characters[1] and characters[1] or 'm')
end

function updateConfig()
    local slots = izzy.callback("izzy-multicharacterv4:getCollection", "slots")
    SendReactMessage("setData", {
        freeSlotAmount = type(slots) == "number" and slots or cfg.defaultFreeSlotAmount,
        maxSlotAmount = cfg.maxSlotAmount,
        socialMedias = cfg.socialMedias,
        canDelete = cfg.canDeleteCharacter,
        nationalities = cfg.nationalities
    })
end

function updateSelected(data)
    if data and data.identifier then
        local skin = izzy.callback("izzy-multicharacterv4:getSkin", data.identifier)
        SendReactMessage('setData', { active = data })
        spawnPed(skin)
    else
        spawnPed({
            sModel = cfg.models[data == "m" and 0 or 1]
        })
    end
end


function spawnPed(data)
    if not data then return "yok" end
    local model = data.sModel
    model = model ~= nil and framework == "qb" and tonumber(model) or model or false
    local skinData = data.skinData

    if DoesEntityExist(current.ped) then
        DeleteEntity(current.ped)
    end
    
    current.ped = izzy.spawnPed(model, vec3(cfg.pedCoords.x, cfg.pedCoords.y, cfg.pedCoords.z - 1.0), cfg.pedCoords.w, true)
    SetPedComponentVariation(current.ped, 0, 0, 0, 2)
    SetEntityInvincible(current.ped, true)
    PlaceObjectOnGroundProperly(current.ped)
    SetBlockingOfNonTemporaryEvents(current.ped, true)
    local animation = cfg.animations[math.random(1, #cfg.animations)]

    izzy.loadAnimDict(animation[1])
    TaskPlayAnim(current.ped, animation[1], animation[2], 8.0, 1.0, -1, 1, 0, 0, 0, 0)
    if skinData then
        setPedClothes(current.ped, skinData)
    end
end

function play(values, isNew)
    if isNew then
        for k, v in pairs(values) do
            if izzy.trim(v) == "" then
                izzy.notification("error", izzy._t("fillParts"))
                return
            end
        end
    end

    TriggerServerEvent("izzy-multicharacterv4:server:play", values, isNew)
    TriggerServerEvent("izzy-multicharacterv4:server:setBucket", true)
    if DoesEntityExist(current.ped) then
        DeleteEntity(current.ped)
    end
end

RegisterNUICallback("play", function(data, cb)
    play(data, false)
    cb({ 'ok' })
end)

RegisterNUICallback('create', function(data, cb)
    play(data, true)
    cb({ 'ok' })
end)

RegisterNUICallback('delete', function(identifier, cb)
    local res = izzy.callback('izzy-multicharacterv4:deleteCharacter', identifier)
    if res then
        updateCharacters()
    end

    cb({ 'ok' })
end)

RegisterNUICallback('redeem', function(code, cb)
    local retval = izzy.callback("izzy-multicharacterv4:isKeyValid", code)
    if not retval then
        izzy.notification("error", izzy._t("code_not_found"))
        cb({})
        return
    end
    TriggerServerEvent("izzy-multicharacterv4:server:applyCode", code)
    SendReactMessage('setPage', 'character')
    cb({ 'ok' })
end)

RegisterNUICallback('updateActive', function(data, cb)
    updateSelected(data)
    cb({ 'ok' })
end)

RegisterNUICallback('changeGender', function(data, cb)
    updateSelected(data)
    cb({ 'ok' })
end)

RegisterNUICallback('changeFilter', function(data, cb)
    if data.id == 'default' then
        ClearTimecycleModifier("", 4.2)
    else
        SetTimecycleModifier(data.id, 0.0)
        SetTimecycleModifierStrength(1.0)
    end

    cb({ 'ok' })
end)

RegisterNetEvent("izzy-multicharacterv4:open", function()
    setDisplay(true)
end)

RegisterNetEvent("izzy-multicharacterv4:close", function()
    setDisplay(false)
end)

RegisterNetEvent("izzy-multicharacterv4:updateConfig", updateConfig)