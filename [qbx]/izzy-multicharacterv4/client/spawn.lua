if not cfg.useOwnSpawnSelector then return end

local isApartment = false
local selectedId = nil
local cam = nil
local currents = {}

function doCamera(x,y,z,w)
    DoScreenFadeOut(1)
    if(not DoesCamExist(cam)) then
        cam = CreateCam('DEFAULT_SCRIPTED_CAMERA', true)
    end

    i = 3200
    SetFocusArea(x, y, z, 0.0, 0.0, 0.0)
    SetCamActive(cam,  true)
    RenderScriptCams(true,  false,  0,  true,  true)
    DoScreenFadeIn(1500)
    local camAngle = -90.0
    while i > 1 do
        local factor = i / 50

        if i < 150 then
            factor = factor / 2
        elseif i < 50 then
            factor = factor / 3
        end

        if i < 1 then i = 1 end
        i = i - factor
        SetCamCoord(cam, x + cfg.camPosition.x, y + cfg.camPosition.y, (z + cfg.camPosition.z) + i)
        
        if i < 1200 then
            DoScreenFadeIn(600)
        end
        if i < 90.0 then
            camAngle = i - i - i
        end
        SetCamRot(cam, camAngle, 0.0, w)
        Citizen.Wait(2/i)
    end
end


RegisterNUICallback('getLocations', function(_, cb)
    cb(currents)
end)

RegisterNUICallback('spawn', function(_, cb)
    local data = {}
    for k, v in pairs(currents) do
        if selectedId == v.id then
            data = v
        end
    end

    if isApartment and cfg.useQBApartments then
        setDisplay(false)
        ClearFocus()
        DestroyAllCams(true)
        RenderScriptCams(false, true, 1, true, true)
        TriggerServerEvent("apartments:server:CreateApartment", data.tmpName, data.name)
        afterPlayerSpawned()
    else
        RenderScriptCams(0, true, cfg.cameraRotationDuration, 1, 1)
        ClearFocus()
        SetCamActive(cam, false)
        SetCamActive(current.cam, false)
        DestroyAllCams(true)
        setDisplay(false)
        Wait(cfg.cameraRotationDuration)
        afterPlayerSpawned()

        if data.house then
            if cfg.housing == 'qb-houses' then
                TriggerEvent('qb-houses:client:LastLocationHouse', data.id)
            else
                TriggerServerEvent('ps-housing:server:enterProperty', tostring(data.id), 'spawn')
            end
        end
    end


    cb({ 'ok' })
end)

function updateLocation(data)
    selectedId = data.id
    local id = 0
    for k, v in pairs(currents) do
        if data.id == v.id then
            data = v
            break
        end
    end

    if isApartment then
        data.coords = data.coords?.enter and data.coords.enter or data.coords
    end
    
    if data.id == "lastLocation" then
        data.coords = vector4(getPlayerLastLocation(getPlayerData()).x, getPlayerLastLocation(getPlayerData()).y, getPlayerLastLocation(getPlayerData()).z, 0.0)
    end

    if data.coords then
        SetEntityCoords(PlayerPedId(), data.coords.xyz)
        SetEntityHeading(PlayerPedId(), data.coords.w)
        doCamera(data.coords.x, data.coords.y, data.coords.z, data.coords.w)
    end
end

RegisterNUICallback('updateLocation', function(data, cb)
    updateLocation(data)
    cb({ 'ok' })
end)

function open(_, new, apps)
    ClearFocus()
    DestroyAllCams(true)
    SendReactMessage('HandleDisplay', true)
    SetNuiFocus(true, true)
    SendReactMessage('setPage', 'spawn')

    FreezeEntityPosition(PlayerPedId(), false)
    SetEntityVisible(PlayerPedId(), true)

    if not new or cfg.useQBApartments == false then
        currents = cfg.locations
        local houses = izzy.callback('izzy-multicharacterv4:getHouses')
        for _, v in pairs(houses) do
            table.insert(currents, {
                house = true,
                id = cfg.housing == 'qb-houses' and v.house or v.property_id,
                name = cfg.housing == 'qb-houses' and v.adress or ((v.apartment or v.street) .. " " .. v.property_id)
            })
        end
    else
        local _apps = {}
        local formatApartment = function(k, data)
            data.tmpName = data.name
            data.name = data.label
        
            return data
        end
        for k, v in pairs(apps) do
            table.insert(_apps, formatApartment(k,v))
        end
        isApartment = true
        currents = _apps
    end

    updateLocation(currents[1])
    local data = izzy.callback('izzy-multicharacterv4:getSkin')
    if not data then return "yok" end
    local model = data.sModel
    model = model ~= nil and framework == "qb" and tonumber(model) or model or false

    Citizen.CreateThread(function()
        RequestModel(model)
        while not HasModelLoaded(model) do
            RequestModel(model)
            Citizen.Wait(0)
        end
        SetPlayerModel(PlayerId(), model)
        SetPedComponentVariation(PlayerPedId(), 0, 0, 0, 2)
        setPedClothes(PlayerPedId(), data.skinData)
    end)

end

exports("open", open)
RegisterNetEvent("izzy-multicharacterv4:openSpawn", open)
RegisterNetEvent("qb-spawn:client:openUI", open)
RegisterNetEvent("qb-spawn:client:setupSpawns", open)
