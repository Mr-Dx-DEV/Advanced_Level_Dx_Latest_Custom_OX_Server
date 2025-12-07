if Config.core ~= 'bs' then return end

BSCore = exports['bs-core']:GetCoreObject()

local function PreSpawnPlayer()
    DoScreenFadeOut(0)
    SetRainLevel(0.0)
    Wait(2000)
end

local function PostSpawnPlayer(ped)
    FreezeEntityPosition(ped, false)
    RenderScriptCams(false, true, 500, true, true)
    SetCamActive(cam, false)
    DestroyCam(cam, true)
    SetCamActive(cam2, false)
    DestroyCam(cam2, true)
    SetEntityVisible(ped, true)
    Wait(1000)
    DoScreenFadeIn(500)
end

RegisterNetEvent('cylex_multicharacter:qb:lastLocation', function(cData)
    PreSpawnPlayer()
    local cid = cData.citizenid
    local PlayerData = BSCore.Functions.GetPlayerData()
    local insideMeta = PlayerData.metadata["inside"]
    BSCore.Functions.GetPlayerData(function(pd)
        ped = PlayerPedId()
        SetEntityCoords(ped, pd.position.x, pd.position.y, pd.position.z)
        SetEntityHeading(ped, pd.position.a)
        FreezeEntityPosition(ped, false)
    end)

    if insideMeta.house ~= nil then
        local houseId = insideMeta.house
        TriggerEvent('qb-houses:client:LastLocationHouse', houseId)
    elseif insideMeta.apartment.apartmentType ~= nil or insideMeta.apartment.apartmentId ~= nil then
        local apartmentType = insideMeta.apartment.apartmentType
        local apartmentId = insideMeta.apartment.apartmentId
        TriggerEvent('qb-apartments:client:LastLocationHouse', apartmentType, apartmentId)
    end

    if not Config.CustomSpawnSelector then
        TriggerServerEvent('BSCore:Server:OnPlayerLoaded')
        TriggerEvent('BSCore:Client:OnPlayerLoaded')
    end
    PostSpawnPlayer(PlayerPedId())
    SpawnSelectorFunctions(false, cData)
end)

RegisterNetEvent('cylex_multicharacter:qb:firstSpawn', function(cData)
    PreSpawnPlayer()
    local cid = cData.citizenid
    local loc = Config.FirstSpawnLocation
    SetEntityCoords(PlayerPedId(), loc.x, loc.y, loc.z)

    TriggerServerEvent('BSCore:Server:OnPlayerLoaded')
    TriggerEvent('BSCore:Client:OnPlayerLoaded')

    Wait(1000)
    PostSpawnPlayer(PlayerPedId())
    SpawnSelectorFunctions(true, cData)
end)

CORE_INTEGRATIONS['bs'] = {
    load = function(self)
        return BeforeCharactersLoad()
    end,
    spawn = function(self, character, isNew)
        return OnCharacterSelected(character, isNew)
    end,
    pedSkin = function(self, ped, skin)
        return OnClothing(ped, skin)
    end,
    getSkin = function(self, charId)
        return GetSkin(charId)
    end,
}