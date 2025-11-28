-- State
OnDuty = false
JobVehicleNetId = nil
CurrentTreasure = {}
CanCollect = true

-- Local state
local treasureObject = nil       -- spawned treasure prop entity
local anchorEnabled = false      -- is boat anchor toggled
local hasInitFromServer = false  -- set after lobby init
local lobbyData = {}             -- your lobby data (cleared on clearMyLobby)
local menuOpen = true            -- set false on menu close
local currentTutorial = ""       -- which tutorial is open (for KVP key)
local driverLoaded = false       -- NUI driver loaded
local nuiLoaded = false          -- NUI fully loaded

-- Server callback handling
local serverCallbacks = {}
local callbackCounter = 0

-- Not used further here, but kept (was L13_1)
local playerServerId = GetPlayerServerId(PlayerId())

-- NUI: driver loaded
RegisterNUICallback("driverLoaded", function()
    driverLoaded = true
end)

-- NUI: html/ui loaded
RegisterNUICallback("nuiLoaded", function()
    nuiLoaded = true
end)

-- UI init thread
CreateThread(function()
    -- Wait for driver
    while not driverLoaded do
        Citizen.Wait(100)
    end

    -- Choose UI style
    if Config.useModernUI then
        SendNUIMessage({ ui = "new" })
    else
        SendNUIMessage({ ui = "old" })
        nuiLoaded = true
        Citizen.Wait(500)
    end

    -- Wait for NUI to be fully ready
    while not nuiLoaded do
        Citizen.Wait(100)
    end

    -- Progress bar alignment & offset
    SendNUIMessage({
        action = "setProgressBarAlign",
        align = Config.ProgressBarAlign,
        offset = Config.ProgressBarOffset
    })

    -- Optionally hide cloakroom
    if not Config.EnableCloakroom then
        SendNUIMessage({ action = "hideCloakroom" })
    end
end)

-- NUI: tutorial closed
RegisterNUICallback("tutorialClosed", function()
    SetNuiFocus(false, false)
    currentTutorial = ""
end)

-- Server -> client: host reward percentages
RegisterNetEvent("17mov_divers:UpdateHostPercentages")
AddEventHandler("17mov_divers:UpdateHostPercentages", function(value)
    SendNUIMessage({
        action = "updateHostRewards",
        value = value
    })
end)

-- NUI: menu closed
RegisterNUICallback("menuClosed", function()
    menuOpen = false
    SetNuiFocus(false, false)
end)

-- NUI: don't show this tutorial again
RegisterNUICallback("dontShowTutorialAgain", function(_, _)
    -- Save KVP with current tutorial key
    SetResourceKvpInt("17mov_Tutorials:" .. currentTutorial, 1)
end)

-- Server -> client: set my reward
RegisterNetEvent("17mov_divers:SetMyReward")
AddEventHandler("17mov_divers:SetMyReward", function(reward)
    SendNUIMessage({
        action = "updateMyReward",
        reward = reward
    })
end)

-- Boss can or cannot split rewards
if Config.letBossSplitReward then
    -- NUI: boss checks if a given reward percentage is valid
    RegisterNUICallback("checkIfThisRewardIsFine", function(data, cb)
        local value = math.floor(data.value)
        local plyId = data.plyId

        if value > 100 or value < 0 then
            Notify(Config.Lang.wrongReward1)
            cb(false)
            return
        end

        TriggerServerCallback("17mov_divers:CheckThisReward", function(ok)
            if ok then
                cb(true)
            else
                cb(false)
                Notify(Config.Lang.wrongReward2)
            end
        end, value, plyId)
    end)
else
    -- If boss cannot split rewards, hide the manage rewards UI once NUI is ready
    CreateThread(function()
        while not nuiLoaded do
            Citizen.Wait(100)
        end

        SendNUIMessage({
            action = "hideManageRewards"
        })
    end)
end

-- Server -> client: clear my lobby and re-init
RegisterNetEvent("17mov_divers:clearMyLobby")
AddEventHandler("17mov_divers:clearMyLobby", function()
    lobbyData = {}

    TriggerServerCallback("17mov_divers:init", function(info)
        SendNUIMessage({
            action = "Init",
            name   = info.name,
            myId   = info.source
        })

        hasInitFromServer = true
    end)
end)

-- Generic server callback system
function TriggerServerCallback(eventName, cb, ...)
    local id = callbackCounter
    callbackCounter = callbackCounter + 1

    serverCallbacks[eventName] = {}
    serverCallbacks[eventName][id] = cb

    local event = "17mov_Callbacks:GetResponse" .. GetCurrentResourceName()
    TriggerServerEvent(event, eventName, id, ...)
end

-- Server -> client: callback response handler
RegisterNetEvent("17mov_Callbacks:receiveData" .. GetCurrentResourceName())
AddEventHandler("17mov_Callbacks:receiveData" .. GetCurrentResourceName(), function(eventName, callbackId, ...)
    local callbacksByEvent = serverCallbacks[eventName]
    if not callbacksByEvent then
        return
    end

    local cb = callbacksByEvent[callbackId]
    if not cb then
        return
    end

    cb(...)

    callbacksByEvent[callbackId] = nil

    -- If the table is empty, clean it up
    if next(callbacksByEvent) == nil then
        serverCallbacks[eventName] = nil
    end
end)

-- Spawn treasure prop at given coords
function SpawnTreasure(coords)
    RequestModel(Config.TreasureProp)
    while not HasModelLoaded(Config.TreasureProp) do
        Citizen.Wait(100)
    end

    treasureObject = CreateObject(
        Config.TreasureProp,
        coords.x,
        coords.y,
        coords.z,
        false,
        false,
        false
    )

    FreezeEntityPosition(treasureObject, true)
    PlaceObjectOnGroundProperly(treasureObject)
end

-- Check if another player is within 5 units of distance
function IsThereSomebodyClose()
    local players = GetActivePlayers()
    local myPed = PlayerPedId()
    local myCoords = GetEntityCoords(myPed)
    local maxDistance = 5.0

    for _, playerId in ipairs(players) do
        local ped = GetPlayerPed(playerId)
        if ped ~= myPed then
            local otherCoords = GetEntityCoords(ped)
            local diff = myCoords - otherCoords
            local distance = #diff

            if distance <= maxDistance then
                return true
            end
        end
    end

    return false
end

-- Server -> client: collect treasure (triggered by server)
RegisterNetEvent("17mov_divers:collectTreasure")
AddEventHandler("17mov_divers:collectTreasure", function()
    if IsThereSomebodyClose() then
        return Notify(Config.Lang.exploit)
    end

    CanCollect = false
    TriggerServerEvent("17mov_divers:CollectTreasure_")
end)

-- Server -> client: toggle boat anchor (host only)
RegisterNetEvent("17mov_divers:attachAnhor")
AddEventHandler("17mov_divers:attachAnhor", function()
    TriggerServerCallback("17mov_divers:IfPlayerIsHost", function(isHost)
        if not isHost then
            Notify(Config.Lang.no_permission)
            return
        end

        if not JobVehicleNetId then
            return
        end

        local boat = NetToVeh(JobVehicleNetId)

        if not anchorEnabled then
            -- Turn anchor ON
            anchorEnabled = true
            Notify(Config.Lang.anchorNotifytrue)

            -- Keep refreshing boat from (global) vehicleNetId every 20s
            CreateThread(function()
                while anchorEnabled do
                    Citizen.Wait(20000)
                    boat = NetToVeh(vehicleNetId) -- uses global vehicleNetId as in original code
                end
            end)

            -- Apply anchor-related flags continuously
            CreateThread(function()
                while anchorEnabled do
                    Citizen.Wait(0)
                    SetBoatMovementResistance(boat, 0)
                    SetBoatFrozenWhenAnchored(boat, true)
                    SetForcedBoatLocationWhenAnchored(boat, true)
                    SetBoatAnchor(boat, true)
                end
            end)
        else
            -- Turn anchor OFF
            anchorEnabled = false
            Notify(Config.Lang.anchorNotifyfalse)

            Citizen.Wait(300)

            SetBoatMovementResistance(boat, 1)
            SetBoatFrozenWhenAnchored(boat, false)
            SetForcedBoatLocationWhenAnchored(boat, false)
            SetBoatAnchor(boat, false)
        end
    end)
end)

---------------------------------------------------------------------
-- New target from server
---------------------------------------------------------------------

-- These replace old L5_1 / L6_1 / L7_1
local treasureBlip          -- main blip
local treasureAreaBlip      -- radius / guidance blip
-- treasureObject is assumed to be defined earlier (SpawnTreasure uses it)
-- CurrentTreasure, CanCollect, OnDuty must also exist globally

-- This replaces the old L2_1 flag
NewTargetWhileOffDuty = NewTargetWhileOffDuty or true

RegisterNetEvent("17mov_divers:SendNewTarget")
AddEventHandler("17mov_divers:SendNewTarget", function(newTargetData, crewServerIds)
    -- newTargetData = { coords = vector3(...), isFake = bool }
    -- crewServerIds = table of server IDs that already know about the target

    CurrentTreasure = newTargetData
    CanCollect = true

    -- Remove old blips
    if treasureBlip then
        RemoveBlip(treasureBlip)
        treasureBlip = nil
    end

    if treasureAreaBlip then
        RemoveBlip(treasureAreaBlip)
        treasureAreaBlip = nil
    end

    -- Remove old spawned treasure object (if any)
    if treasureObject then
        DeleteObject(treasureObject)
        treasureObject = nil
    end

    -- Clean up any stray treasure props near the new coords
    if GetGamePool then
        local objects = GetGamePool("CObject")
        if objects and type(objects) == "table" then
            for _, obj in pairs(objects) do
                if obj then
                    local dist = #(CurrentTreasure.coords - GetEntityCoords(obj))
                    if dist < 0.5 then
                        local model = GetEntityModel(obj)
                        if model == Config.TreasureProp then
                            SetEntityAsMissionEntity(obj, true, true)
                            DeleteObject(obj)
                            DeleteEntity(obj)
                        end
                    end
                end
            end
        end
    end

    -- Only show blip / prop if we are on duty
    if OnDuty then
        -- Old L2_1 = false
        NewTargetWhileOffDuty = false

        -- Check if this player is in crewServerIds; if NOT, we show a notification
        local shouldNotify = true
        local myServerId = GetPlayerServerId(PlayerId())

        for _, serverId in pairs(crewServerIds) do
            if myServerId == serverId then
                shouldNotify = false
                break
            end
        end

        if shouldNotify then
            Notify(Config.Lang.newTarget)
        end

        -- Add blips for this treasure
        local blip, areaBlip = AddBlipForTreasure(newTargetData.coords)
        treasureBlip = blip
        treasureAreaBlip = areaBlip

        -- Spawn real treasure object if this is not a fake target
        if not newTargetData.isFake then
            SpawnTreasure(newTargetData.coords)
        end
    else
        -- Old L2_1 = true
        NewTargetWhileOffDuty = true
    end
end)

---------------------------------------------------------------------
-- Marker loop (job locations / interactions)
---------------------------------------------------------------------

-- Replaces old L18_1 flag
local markerThreadRunning = false

-- Global state used by marker enter/exit logic (assumed already declared somewhere):
-- HasAlreadyEnteredMarker, LastStation, LastPart, LastPartNum
-- Also uses: OnDuty, Config, spawnedPed, SpawnStartingPed

local function handleMarkersForLocations(playerData, locations)
    local playerPed = PlayerPedId()
    local playerCoords = GetEntityCoords(playerPed)

    local isInMarker = false
    local shouldSleepLong = true
    local currentStation, currentPart, currentPartIndex = nil, nil, nil

    -- Check job requirement
    local requiredJob = Config.RequiredJob
    local jobMatches = (requiredJob == "none" or playerData.job.name == requiredJob)

    if jobMatches then
        for stationName, station in pairs(locations) do
            -- Grade requirement
            if not station.grade or playerData.job.grade >= station.grade then
                -- If off duty, only show "duty" markers
                if OnDuty or station.type == "duty" then
                    for partIndex, coords in pairs(station.Coords) do
                        local distance = #(playerCoords - coords)

                        if distance < 50.0 then
                            shouldSleepLong = false
                            local radius = station.scale.x

                            if distance > radius then
                                -- In range but outside interaction radius: inactive marker
                                DrawMarker(
                                    6,
                                    coords.x, coords.y, coords.z - 1.0,
                                    0.0, 0.0, 0.0,
                                    -90.0, 0.0, 0.0,
                                    station.scale.x, station.scale.y, station.scale.z,
                                    Config.MarkerSettings.UnActive.r,
                                    Config.MarkerSettings.UnActive.g,
                                    Config.MarkerSettings.UnActive.b,
                                    Config.MarkerSettings.UnActive.a,
                                    false, false, 2, false, false, false, false
                                )
                            else
                                -- Inside interaction radius: active marker
                                DrawMarker(
                                    6,
                                    coords.x, coords.y, coords.z - 1.0,
                                    0.0, 0.0, 0.0,
                                    -90.0, 0.0, 0.0,
                                    station.scale.x, station.scale.y, station.scale.z,
                                    Config.MarkerSettings.Active.r,
                                    Config.MarkerSettings.Active.g,
                                    Config.MarkerSettings.Active.b,
                                    Config.MarkerSettings.Active.a,
                                    false, false, 2, false, false, false, false
                                )

                                isInMarker = true
                                currentStation = stationName
                                currentPart = station.type      -- what EnteredMarker receives
                                currentPartIndex = partIndex
                            end
                        end
                    end
                end
            end
        end
    end

    ----------------------------------------------------------------
    -- Entered / exited marker detection
    ----------------------------------------------------------------
    if isInMarker then
        if not HasAlreadyEnteredMarker
            or LastStation ~= currentStation
            or LastPart ~= currentPart
            or LastPartNum ~= currentPartIndex
        then
            -- Exited previous marker (if any)
            if LastStation and LastPart and LastPartNum then
                TriggerEvent("17mov_divers:ExitedMarker", LastStation, LastPart, LastPartNum)
            end

            HasAlreadyEnteredMarker = true
            LastStation = currentStation
            LastPart = currentPart
            LastPartNum = currentPartIndex

            -- Entered new marker
            TriggerEvent("17mov_divers:EnteredMarker", currentPart)
        end
    else
        -- Not in any marker but we were before
        if HasAlreadyEnteredMarker then
            HasAlreadyEnteredMarker = false
            TriggerEvent("17mov_divers:ExitedMarker", LastStation, LastPart, LastPartNum)
        end
    end

    -- If we are far from all markers, slow down the loop
    if shouldSleepLong then
        Citizen.Wait(500)
    end
end

-- This is the old function L19_1(A0_2)
-- playerData must have: playerData.job.name, playerData.job.grade
function StartDiverJobLoop(playerData)
    if markerThreadRunning then
        return
    end

    local requiredJob = Config.RequiredJob
    if requiredJob ~= "none" and playerData.job.name ~= requiredJob then
        markerThreadRunning = false
        return
    end

    markerThreadRunning = true

    if Config.UseTarget then
        -- With target system: spawn the starting ped and only use FinishJob
        SpawnStartingPed()

        Config.Locations2 = {
            FinishJob = Config.Locations.FinishJob
        }

        while markerThreadRunning do
            Citizen.Wait(0)
            handleMarkersForLocations(playerData, Config.Locations2)
        end

        if spawnedPed then
            DeleteEntity(spawnedPed)
            spawnedPed = nil
        end
    else
        -- Without target system: use all locations
        while markerThreadRunning do
            Citizen.Wait(0)
            handleMarkersForLocations(playerData, Config.Locations)
        end
    end
end

---------------------------------------------------------------------
-- MARKER & BLIP MANAGEMENT / INIT
---------------------------------------------------------------------

-- This should match the StartDiverJobLoop function I rewrote earlier
-- (old L19_1(A0_2)).
StartMarkers = StartDiverJobLoop

-- Cached player data (old L1_1)
local playerData = nil

-- Have we already created our blips? (old L19_1)
local blipsCreated = false

---------------------------------------------------------------------
-- Auto-start markers & initial blips on script load
---------------------------------------------------------------------
CreateThread(function()
    -- Wait until framework player data with job is available
    playerData = GetPlayerData()
    while not (playerData and playerData.job) do
        playerData = GetPlayerData()
        Citizen.Wait(1000)
    end

    -- Optionally restrict blips to a specific job
    if not Config.RestrictBlipToRequiredJob 
        or Config.RequiredJob == playerData.job.name 
    then
        MakeBlip()
    end

    -- Give the framework a few seconds to finish other stuff
    Citizen.Wait(5000)

    -- Start marker detection thread
    StartMarkers(playerData)
end)

---------------------------------------------------------------------
-- Blip creation / deletion
---------------------------------------------------------------------

function MakeBlip()
    if blipsCreated then
        return
    end
    blipsCreated = true

    for _, cfg in pairs(Config.Blips) do
        local blip = AddBlipForCoord(cfg.Pos.x, cfg.Pos.y, cfg.Pos.z)
        cfg.blip = blip

        SetBlipSprite(blip,  cfg.Sprite)
        SetBlipDisplay(blip, 4)
        SetBlipScale(blip,   cfg.Scale)
        SetBlipColour(blip,  cfg.Color)
        SetBlipAsShortRange(blip, true)

        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(cfg.Label)
        EndTextCommandSetBlipName(blip)
    end
end

function DeleteBlip()
    blipsCreated = false

    for _, cfg in pairs(Config.Blips) do
        if cfg.blip then
            RemoveBlip(cfg.blip)
            cfg.blip = nil
        end
    end
end

---------------------------------------------------------------------
-- SCRIPT INITIALIZATION (NUI + BLIPS + "Init" NUI message)
---------------------------------------------------------------------

-- Was the client-side script fully initialized? (old L4_1)
local scriptInitialized = false

function InitalizeScript(skipExtraWait)
    if scriptInitialized then
        return
    end

    -- Wait for NUI or just a fixed time depending on UI type
    if Config.useModernUI then
        while not nuiLoaded do
            Citizen.Wait(100)
        end
    else
        Citizen.Wait(5500)
    end

    -- Cache player data
    playerData = GetPlayerData()

    if not skipExtraWait then
        Citizen.Wait(5500)
    end

    scriptInitialized = true

    -- Job / blip logic (kept as in original, even though a bit odd)
    local requiredJob = Config.RequiredJob
    if requiredJob ~= "none" then
        local restrictToJob = Config.RestrictBlipToRequiredJob
        if restrictToJob then
            -- Wait until we have job data in playerData
            while not (playerData and playerData.job) do
                playerData = GetPlayerData()
                Citizen.Wait(100)
            end

            local jobName = playerData.job.name
            local neededJob = Config.RequiredJob

            -- Original decompiled logic: this assignment is redundant,
            -- but we keep it to preserve behavior.
            if jobName ~= neededJob then
                restrictToJob = Config.RestrictBlipToRequiredJob
            end

            if not restrictToJob then
                MakeBlip()
            end
        end
    else
        -- No required job set: always create blips
        MakeBlip()
    end

    -- Send initial data to NUI once
    TriggerServerCallback("17mov_divers:init", function(data)
        SendNUIMessage({
            action = "Init",
            name   = data.name,
            myId   = data.source
        })
        hasInitFromServer = true
    end)
end

---------------------------------------------------------------------
-- PLAYER LOADED EVENTS (QBCore / ESX)
---------------------------------------------------------------------

RegisterNetEvent("QBCore:Client:OnPlayerLoaded")
AddEventHandler("QBCore:Client:OnPlayerLoaded", function()
    InitalizeScript()
end)

RegisterNetEvent("esx:playerLoaded")
AddEventHandler("esx:playerLoaded", function()
    InitalizeScript()
end)

---------------------------------------------------------------------
-- JOB UPDATE EVENTS (QBCore)
---------------------------------------------------------------------

RegisterNetEvent("QBCore:Client:OnJobUpdate")
AddEventHandler("QBCore:Client:OnJobUpdate", function(job)
    -- Refresh cached playerData from framework
    playerData = GetPlayerData()

    -- Decide whether to make or delete blips.
    -- This simplifies the original logic but keeps the same behavior:
    -- it effectively only depends on Config.RestrictBlipToRequiredJob.
    local restrictToJob = Config.RestrictBlipToRequiredJob
    if restrictToJob then
        DeleteBlip()
    else
        MakeBlip()
    end

    -- Start/stop the marker loop based on job requirement
    local requiredJob = Config.RequiredJob
    if requiredJob ~= "none" then
        local myJobName = playerData.job.name
        local neededJob = Config.RequiredJob

        -- If job matches the required job, fall through with requiredJob
        if myJobName == neededJob then
            -- requiredJob stays whatever it was
        else
            requiredJob = Config.RequiredJob
        end
    end

    if requiredJob == "none" then
        StartMarkers(playerData)
    else
        -- Stop marker loop (old L18_1 = false)
        markerThreadRunning = false
    end
end)

---------------------------------------------------------------------
-- JOB UPDATE EVENTS (ESX)
---------------------------------------------------------------------

RegisterNetEvent("esx:setJob")
AddEventHandler("esx:setJob", function(job)
    -- Ensure playerData & job exists
    while not (playerData and playerData.job) do
        playerData = GetPlayerData()
        Citizen.Wait(1000)
    end

    -- Update local cached job
    playerData.job = job

    -- Same blip logic as QBCore handler above
    local restrictToJob = Config.RestrictBlipToRequiredJob
    if restrictToJob then
        DeleteBlip()
    else
        MakeBlip()
    end

    local requiredJob = Config.RequiredJob
    if requiredJob ~= "none" then
        local myJobName = playerData.job.name
        local neededJob = Config.RequiredJob

        if myJobName == neededJob then
            -- keep requiredJob as is
        else
            requiredJob = Config.RequiredJob
        end
    end

    if requiredJob == "none" then
        StartMarkers(playerData)
    else
        markerThreadRunning = false
    end
end)

---------------------------------------------------------------------
-- MARKER ENTER / EXIT EVENTS (HELP TEXT / ACTION HANDLING)
---------------------------------------------------------------------

AddEventHandler("17mov_divers:EnteredMarker", function(locationKey)
    local locCfg  = nil
    local locName = nil

    -- 1) Try Config.Locations[locationKey] directly
    if Config.Locations then
        locCfg  = Config.Locations[locationKey]
        locName = locationKey
    end

    -- 2) If not found, search by type field in Config.Locations
    if not locCfg and Config.Locations then
        for name, cfg in pairs(Config.Locations) do
            if cfg.type == locationKey then
                locCfg  = cfg
                locName = name
                break
            end
        end
    end

    -- 3) Also try Config.Locations2 if your script uses it
    if not locCfg and Config.Locations2 then
        locCfg  = Config.Locations2[locationKey]
        locName = locationKey

        if not locCfg then
            for name, cfg in pairs(Config.Locations2) do
                if cfg.type == locationKey then
                    locCfg  = cfg
                    locName = name
                    break
                end
            end
        end
    end

    -- Still nothing? Bail gracefully.
    if not locCfg then
        print(("[17mov_divers] EnteredMarker: unknown locationKey '%s'"):format(tostring(locationKey)))
        CurrentAction        = nil
        CurrentActionMsg     = nil
        CurrentActionStation = nil
        return
    end

    CurrentAction        = locCfg.CurrentAction
    CurrentActionMsg     = locCfg.CurrentActionMsg
    CurrentActionStation = locName

    -- Show help notification for a short period
    local loops = 0
    while loops < 500 do
        Citizen.Wait(0)
        ShowHelpNotification(CurrentActionMsg)
        loops = loops + 1
    end
end)


AddEventHandler("17mov_divers:ExitedMarker", function(_locationKey)
    CurrentAction        = nil
    CurrentActionMsg     = nil
    CurrentActionStation = nil
end)

---------------------------------------------------------------------
-- KEYBIND FOR MARKER ACTION (E KEY)
---------------------------------------------------------------------

-- Press (down) does nothing – actual action on key *release* below
RegisterCommand("+17movDiversStartMarkerAction", function() end, false)

-- On key release, perform the current action
RegisterCommand("-17movDiversStartMarkerAction", function()
    if not CurrentAction then
        return
    end

    if CurrentAction == "open_dutyToggle" then
        OpenDutyMenu()
        return
    end

    if CurrentAction == "finish_job" then
        TriggerServerCallback("17mov_divers:IfPlayerIsHost", function(isHost)
            if isHost then
                EndJob()
            else
                Notify(Config.Lang.no_permission)
            end
        end)
    end
end, false)

-- Remove chat suggestions for the + / - commands
TriggerEvent("chat:removeSuggestion", "/+17movDiversStartMarkerAction")
TriggerEvent("chat:removeSuggestion", "/-17movDiversStartMarkerAction")

-- Bind E to our logical action name
RegisterKeyMapping(
    "+17movDiversStartMarkerAction",
    Config.Lang.keybind,
    "keyboard",
    "E"
)

---------------------------------------------------------------------
-- DUTY MENU (MODERN UI vs OLD UI)
---------------------------------------------------------------------

-- Nearby players cache for the modern UI host menu (old L20_1 table)
local nearbyPlayersCache = {}

if Config.useModernUI then
    -----------------------------------------------------------------
    -- MODERN UI: OpenDutyMenu
    -----------------------------------------------------------------
    function OpenDutyMenu()
        -- Ensure script is initialized
        if not scriptInitialized then
            InitalizeScript(true)
            print("SCRIPT NOT READY - WAIT UNTIL SCRIPT PROPERLY LOAD")
            return
        end

        -- Ensure we got initial data from server for NUI
        if not hasInitFromServer then
            TriggerServerCallback("17mov_divers:init", function(data)
                SendNUIMessage({
                    action = "Init",
                    name   = data.name,
                    myId   = data.source
                })
                hasInitFromServer = true
            end)

            print("SCRIPT NOT READY - WAIT UNTIL SCRIPT PROPERLY LOAD")
            return
        end

        -- Open the work menu
        SendNUIMessage({ action = "OpenWorkMenu" })
        SetNuiFocus(true, true)
        menuOpen = true

        -- Flags for the nearby-player tab logic
        local isNearbyTabVisible   = false -- old L0_2
        local deletingInProgress   = false -- old L1_2
        local hadNearbyPreviously  = false -- old L2_2

        -- Background thread: track nearby players (within 10.0 units)
        CreateThread(function()
            while menuOpen do
                local activePlayers = GetActivePlayers()
                local myCoords      = GetEntityCoords(PlayerPedId())
                local closeServerIds = {}
                local hasNewNearby   = false  -- old L3_3

                for _, playerId in pairs(activePlayers) do
                    if PlayerId() ~= playerId then
                        local ped = GetPlayerPed(playerId)
                        local pedCoords = GetEntityCoords(ped)
                        local distance  = #(myCoords - pedCoords)

                        if distance < 10.0 then
                            table.insert(closeServerIds, GetPlayerServerId(playerId))
                        end
                    end
                end

                -- If no one nearby and we never had nearby players, skip callback
                if #closeServerIds == 0 and not hadNearbyPreviously then
                    Citizen.Wait(2500)
                    goto continue
                end

                TriggerServerCallback("17mov_divers:GetPlayersNames", function(playersInfo)
                    -- playersInfo: table of { id, name, ... }
                    -- lobbyData: existing lobby members (from earlier code)

                    -- 1) ADD / UPDATE NEARBY PLAYERS
                    for idx, info in pairs(playersInfo) do
                        if lobbyData[info.id] == nil then
                            hasNewNearby = true

                            -- Only track if we haven't already
                            if not nearbyPlayersCache[info.id] then
                                nearbyPlayersCache[info.id] = {
                                    id   = info.id,
                                    name = info.name
                                }

                                -- Wait until the tab is actually visible
                                CreateThread(function()
                                    while not isNearbyTabVisible do
                                        Citizen.Wait(10)
                                    end

                                    SendNUIMessage({
                                        action = "addNewNearbyPlayer",
                                        id     = info.id,
                                        name   = info.name
                                    })
                                end)
                            end
                        else
                            -- Player is already in lobby; original code nulled this entry,
                            -- but that doesn't affect the final behavior much. We can keep:
                            playersInfo[idx] = nil
                        end
                    end

                    -- 2) REMOVE PLAYERS WHO ARE NO LONGER NEARBY
                    hadNearbyPreviously = false
                    for id, data in pairs(nearbyPlayersCache) do
                        hadNearbyPreviously = true

                        local stillNearby = false
                        for _, info in pairs(playersInfo) do
                            if info.id == id then
                                stillNearby = true
                                break
                            end
                        end

                        if not stillNearby then
                            nearbyPlayersCache[id] = nil
                            deletingInProgress = true

                            SendNUIMessage({
                                action = "DeleteNearbyPlayer",
                                id     = data.id
                            })

                            CreateThread(function()
                                Citizen.Wait(250)
                                deletingInProgress = false
                            end)
                        end
                    end

                    -- 3) SHOW / HIDE THE NEARBY PLAYERS TAB
                    if not hasNewNearby then
                        -- No valid nearby players
                        if isNearbyTabVisible then
                            CreateThread(function()
                                -- Wait until removals are done
                                while deletingInProgress do
                                    Citizen.Wait(10)
                                end

                                SendNUIMessage({ action = "hideNearbyPlayersTab" })

                                CreateThread(function()
                                    Citizen.Wait(250)
                                    isNearbyTabVisible = false
                                end)
                            end)
                        end
                    else
                        -- We have at least one nearby player
                        if not isNearbyTabVisible then
                            SendNUIMessage({ action = "showNearbyPlayersTab" })
                            CreateThread(function()
                                Citizen.Wait(250)
                                isNearbyTabVisible = true
                            end)
                        end
                    end
                end, closeServerIds)

                ::continue::
                Citizen.Wait(2500)
            end
        end)
    end

else
    -----------------------------------------------------------------
    -- OLD UI: OpenDutyMenu
    -----------------------------------------------------------------
    function OpenDutyMenu()
        -- Ensure script is initialized
        if not scriptInitialized then
            InitalizeScript(true)
            print("SCRIPT NOT READY - WAIT UNTIL SCRIPT PROPERLY LOAD")
            return
        end

        -- Ensure NUI got "Init" data from server
        if not hasInitFromServer then
            TriggerServerCallback("17mov_divers:init", function(data)
                SendNUIMessage({
                    action = "Init",
                    name   = data.name,
                    myId   = data.source
                })
                hasInitFromServer = true
            end)

            print("SCRIPT NOT READY - WAIT UNTIL SCRIPT PROPERLY LOAD")
            return
        end

        -- For old UI, also refresh host status before opening
        TriggerServerCallback("17mov_divers:IfPlayerIsHost", function(isHost)
            SendNUIMessage({
                action = "HostStatusUpdate",
                status = isHost
            })

            SendNUIMessage({
                action = "OpenWorkMenu"
            })

            SetNuiFocus(true, true)
        end)
    end
end

---------------------------------------------------------------------
-- CLOTHING (CLOAKROOM)
---------------------------------------------------------------------

-- Was last chosen outfit the work outfit?
IsWearingWorkClothes = false

RegisterNUICallback("changeClothes", function(data)
    if data.type == "work" then
        IsWearingWorkClothes = true
        ChangeClothes("work")
    else
        IsWearingWorkClothes = false
        ChangeClothes("citizen")
    end
end)

---------------------------------------------------------------------
-- NUI: GET CLOSEST PLAYERS (FOR INVITES)
---------------------------------------------------------------------

RegisterNUICallback("GetClosestPlayers", function(_, cb)
    local activePlayers = GetActivePlayers()
    local myCoords      = GetEntityCoords(PlayerPedId())
    local nearbyIds     = {}

    for _, clientId in pairs(activePlayers) do
        if clientId ~= PlayerId() then
            local ped    = GetPlayerPed(clientId)
            local coords = GetEntityCoords(ped)
            local dist   = #(myCoords - coords)

            if dist < 20.0 then
                table.insert(nearbyIds, GetPlayerServerId(clientId))
            end
        end
    end

    TriggerServerCallback("17mov_divers:IfPlayerIsHost", function(isHost)
        if isHost then
            TriggerServerCallback("17mov_divers:GetPlayersNames", function(players)
                cb(players)

                if #players == 0 then
                    Notify(Config.Lang.nobodyNearby)
                end
            end, nearbyIds)
        else
            Notify(Config.Lang.no_permission)
        end
    end)
end)

---------------------------------------------------------------------
-- NUI: REACT TO INVITE
---------------------------------------------------------------------

RegisterNUICallback("requestReacted", function(data)
    local accepted = data.boolean
    TriggerServerEvent("17mov_divers:ClientReactRequest", accepted)
end)

---------------------------------------------------------------------
-- NUI: SEND INVITE
---------------------------------------------------------------------

RegisterNUICallback("sendRequest", function(data)
    if OnDuty then
        Notify(Config.Lang.cantInvite)
        return
    end

    TriggerServerEvent(
        "17mov_divers:SendRequestToClient_sv",
        tonumber(data.id)
    )
end)

---------------------------------------------------------------------
-- NUI: KICK PLAYER FROM LOBBY
---------------------------------------------------------------------

RegisterNUICallback("kickPlayerFromLobby", function(data)
    local targetId = tonumber(data.id)

    Notify(string.format(
        Config.Lang.kicked,
        lobbyData[targetId].name
    ))

    TriggerServerEvent("17mov_divers:KickPlayerFromLobby", targetId, true)
end)

---------------------------------------------------------------------
-- NUI: FOCUS / GENERIC NOTIFY
---------------------------------------------------------------------

RegisterNUICallback("focusOff", function(_)
    SetNuiFocus(false, false)
end)

RegisterNUICallback("notify", function(data)
    Notify(data.msg)
end)

---------------------------------------------------------------------
-- RECEIVE INVITE FROM SERVER
---------------------------------------------------------------------

RegisterNetEvent("17mov_divers:SendRequestToClient_cl")
AddEventHandler("17mov_divers:SendRequestToClient_cl", function(name, _source)
    SendNUIMessage({
        action = "ShowInviteBox",
        name   = name
    })

    SetNuiFocus(true, true)
end)

---------------------------------------------------------------------
-- REFRESH LOBBY (MODERN UI)
---------------------------------------------------------------------

if Config.useModernUI then
    RegisterNetEvent("17mov_divers:RefreshMugs")
    AddEventHandler("17mov_divers:RefreshMugs", function(members, myId)
        -- Wait until NUI Init has completed
        while not hasInitFromServer do
            Citizen.Wait(100)
        end

        -- 1) Remove from "nearby" list & rebuild lobbyData
        for _, info in pairs(members) do
            -- Remove from nearby-player UI
            SendNUIMessage({
                action = "DeleteNearbyPlayer",
                id     = info.id
            })

            if lobbyData[info.id] == nil then
                if playerServerId == info.id then
                    lobbyData[info.id] = {
                        name          = info.name,
                        id            = info.id,
                        isHost        = info.isHost,
                        rewardPercent = info.rewardPercent,
                        itsMe         = true
                    }
                else
                    lobbyData[info.id] = {
                        name          = info.name,
                        id            = info.id,
                        isHost        = info.isHost,
                        rewardPercent = info.rewardPercent,
                        itsMe         = false
                    }
                end

                -- Add as full lobby member to NUI
                SendNUIMessage({
                    action       = "addNewMember",
                    name         = info.name,
                    id           = info.id,
                    isHost       = info.isHost,
                    rewardPercent = info.rewardPercent,
                    showQuitBtn  = lobbyData[info.id].itsMe
                })
            end
        end

        -- 2) Remove players that are no longer members
        local memberCount = 0

        for _, data in pairs(lobbyData) do
            local id      = data.id
            local present = false

            for _, info in pairs(members) do
                if info.id == id then
                    present = true
                    break
                end
            end

            if not present then
                lobbyData[id] = nil
                SendNUIMessage({
                    action = "DeletePlayer",
                    id     = id
                })
            else
                memberCount = memberCount + 1
            end
        end

        -- 3) If only one member left, re-init UI (keep original behavior)
        if memberCount == 1 then
            TriggerServerCallback("17mov_divers:init", function(data)
                SendNUIMessage({
                    action = "Init",
                    name   = data.name,
                    myId   = data.source
                })
                hasInitFromServer = true
            end)
        end

        -- 4) Toggle host HUD based on ownership
        TriggerServerCallback("17mov_divers:IfPlayerOwnsTeam", function(isOwner)
            SendNUIMessage({
                action  = "ToggleHostHUD",
                boolean = isOwner
            })
        end)
    end)

---------------------------------------------------------------------
-- REFRESH LOBBY (OLD UI)
---------------------------------------------------------------------

else
    RegisterNetEvent("17mov_divers:RefreshMugs")
    AddEventHandler("17mov_divers:RefreshMugs", function(members, myId)
        while not hasInitFromServer do
            Citizen.Wait(100)
        end

        Citizen.Wait(100)

        SendNUIMessage({
            action = "refreshMugs",
            names  = members,
            myId   = myId
        })

        TriggerServerCallback("17mov_divers:IfPlayerIsHost", function(isHost)
            SendNUIMessage({
                action = "HostStatusUpdate",
                status = isHost
            })
        end)
    end)
end

---------------------------------------------------------------------
-- SPAWN POINT CHECK
---------------------------------------------------------------------

function IsSpawnPointClear()
    local spawnPos = vec3(
        Config.SpawnPoint.x,
        Config.SpawnPoint.y,
        Config.SpawnPoint.z
    )

    local vehicles = GetGamePool("CVehicle")
    if not vehicles or type(vehicles) ~= "table" then
        print("FAILED TO FETCH GAMEPOOL - Returning CLEAR")
        return true
    end

    for _, veh in pairs(vehicles) do
        local dist = #(GetEntityCoords(veh) - spawnPos)
        if dist < 6.0 then
            return false
        end
    end

    return true
end

---------------------------------------------------------------------
-- NUI: START JOB
---------------------------------------------------------------------

RegisterNUICallback("startJob", function(_)
    if not OnDuty then
        if IsSpawnPointClear() then
            TriggerServerEvent("17mov_divers:StartJob_sv")
        else
            Notify(Config.Lang.spawnpointOccupied)
        end
    else
        Notify(Config.Lang.alreadyWorking)
    end
end)

---------------------------------------------------------------------
-- NUI: LEAVE LOBBY
---------------------------------------------------------------------

RegisterNUICallback("leaveLobby", function(data)
    if OnDuty then
        Notify(Config.Lang.cantLeaveLobby)
        return
    end

    local targetId = tonumber(data.id)

    TriggerServerEvent(
        "17mov_divers:KickPlayerFromLobby",
        targetId,
        false,
        GetPlayerServerId(PlayerId())
    )

    Notify(Config.Lang.quit)
end)

---------------------------------------------------------------------
-- VEHICLE SPAWNING
---------------------------------------------------------------------

-- Spawns & prepares the job vehicle; returns the vehicle entity
function SpawnJobVehicle(modelHash, spawnData)
    -- spawnData = vec4(x, y, z, heading)
    PrepeareVehicle()

    local attempts = 100
    RequestModel(modelHash)

    while not HasModelLoaded(modelHash) and attempts > 0 do
        Citizen.Wait(100)
        attempts = attempts - 1
        RequestModel(modelHash)
    end

    local veh = CreateVehicle(
        modelHash,
        spawnData.x,
        spawnData.y,
        spawnData.z,
        spawnData.w,
        true,
        false
    )

    SetEntityAsMissionEntity(veh, true, true)
    SetVehicleNeedsToBeHotwired(veh, false)
    SetVehRadioStation(veh, "OFF")
    SetVehicleFuelLevel(veh, 100.0)

    if Config.EnableVehicleTeleporting then
        TaskWarpPedIntoVehicle(PlayerPedId(), veh, -1)
    end

    -- Custom function from this script (sets globals, etc.)
    SetVehicle(veh)

    local existsAttempts = 100
    while not DoesEntityExist(veh) and existsAttempts > 0 do
        Citizen.Wait(100)
        existsAttempts = existsAttempts - 1
    end

    return veh
end

---------------------------------------------------------------------
-- GLOBAL: current job vehicle entity (client-side)
---------------------------------------------------------------------
JobVehicle = JobVehicle or nil

---------------------------------------------------------------------
-- START JOB (client event)
---------------------------------------------------------------------

RegisterNetEvent("17mov_divers:StartJob_cl")
AddEventHandler("17mov_divers:StartJob_cl", function(myId, hostId, lobbyId, isJoiningMidJob)
    local spawnPoint = Config.SpawnPoint
    local myCoords   = GetEntityCoords(PlayerPedId())

    BagsCounter = 0

    -- Reset anchor state & internal flags
    anchorEnabled = false          -- (old L8_1)
    -- This flag was set and immediately checked but always true in decompiled code.
    -- Effectively: always fetch current treasure. We'll just do that directly.

    -- Get current treasure (if any) and spawn its blip / prop
    TriggerServerCallback("17mov_divers:getCurrentTreasure", function(treasure)
        CurrentTreasure = treasure

        local blip, areaBlip = AddBlipForTreasure(CurrentTreasure.coords)
        treasureBlip         = blip     -- old L5_1
        treasureAreaBlip     = areaBlip -- old L6_1

        if not CurrentTreasure.isFake then
            SpawnTreasure(CurrentTreasure.coords)
        end
    end)

    OnDuty = true

    -----------------------------------------------------------------
    -- Auto switch to work clothes if required
    -----------------------------------------------------------------
    CreateThread(function()
        if not IsWearingWorkClothes and Config.RequireWorkClothes then
            IsWearingWorkClothes = true
            ChangeClothes("work")
        end
    end)

    -----------------------------------------------------------------
    -- Show tutorial (only if not joining mid-job)
    -----------------------------------------------------------------
    if not isJoiningMidJob then
        local kvpValue = GetResourceKvpInt("17mov_Tutorials:diverTutorial")
        if kvpValue == 0 then
            currentTutorial = "diverTutorial"

            SendNUIMessage({
                action     = "showTutorial",
                customText = Config.Lang.tutorial
            })

            SetNuiFocus(true, true)
        end
    end

    -----------------------------------------------------------------
    -- HOST spawns vehicle (not joining mid-job)
    -----------------------------------------------------------------
    if myId == hostId and not isJoiningMidJob then
        if Config.EnableVehicleTeleporting then
            DoScreenFadeOut(300)
            Citizen.Wait(1000)
        end

        JobVehicle = SpawnJobVehicle(Config.JobVehicleModel, Config.SpawnPoint)

        Citizen.Wait(2000)
        DoScreenFadeIn(300)

        JobVehicleNetId = VehToNet(JobVehicle)

        TriggerServerEvent("17mov_divers:UploadVehicleNetId", JobVehicleNetId)

        if Config.UseTarget then
            AddTargetEntity(JobVehicle)
        end

    -----------------------------------------------------------------
    -- Joining mid-job: ask server for existing lobby vehicle netid
    -----------------------------------------------------------------
    elseif isJoiningMidJob then
        local foundVehicle = false

        while not foundVehicle do
            Citizen.Wait(300)

            TriggerServerCallback("17mov_divers:GetLobbyVehicleId", function(netId)
                if netId ~= nil and netId ~= 0 then
                    local veh = NetToVeh(netId)

                    -- Original decompiled checks: veh ~= netId and veh ~= 0
                    if veh ~= netId and veh ~= 0 then
                        if DoesEntityExist(veh) then
                            JobVehicleNetId = netId
                            JobVehicle      = veh
                            foundVehicle    = true
                        end
                    end
                end
            end, myId)

            if foundVehicle then
                -- Delay then switch clothes
                CreateThread(function()
                    Citizen.Wait(3500)
                    ChangeClothes("work")
                end)
                break
            end
        end

    -----------------------------------------------------------------
    -- Non-host starting with host: assume host boat is at spawnpoint
    -----------------------------------------------------------------
    else
        while true do
            Citizen.Wait(0)

            local closestVehicle = GetClosestVehicle(
                vector3(spawnPoint.x, spawnPoint.y, spawnPoint.z)
            )

            if closestVehicle ~= nil then
                local spawnVec   = vector3(spawnPoint.x, spawnPoint.y, spawnPoint.z)
                local vehCoords  = GetEntityCoords(closestVehicle)
                local distance   = #(spawnVec - vehCoords)

                if distance < 5.0 then
                    Citizen.Wait(300)

                    while not DoesEntityExist(closestVehicle) do
                        Citizen.Wait(100)
                    end

                    JobVehicleNetId = VehToNet(closestVehicle)
                    JobVehicle      = closestVehicle
                    break
                end
            end
        end
    end

    -- Give keys to all lobby members (host / non-host)
    if Config.GiveKeysToAllLobby and JobVehicle then
        SetVehicle(JobVehicle)
    end

    -----------------------------------------------------------------
    -- Tracker sound when close to treasure
    -----------------------------------------------------------------
    if Config.EnableTrackerSound then
        CreateThread(function()
            while OnDuty do
                local pedCoords = GetEntityCoords(PlayerPedId())
                local dist      = #(pedCoords - CurrentTreasure.coords)

                if dist < Config.TrakcerSoundMinimumDistance then
                    if dist > Config.TreaureBlipDistance then
                        PlaySoundFrontend(
                            -1,
                            "Beep_Red",
                            "DLC_HEIST_HACKING_SNAKE_SOUNDS",
                            true
                        )
                    end
                end

                Citizen.Wait(1500)
            end
        end)
    end

    -----------------------------------------------------------------
    -- Easy mode marker + “blip when nearby”
    -----------------------------------------------------------------
    Citizen.CreateThread(function()
        while OnDuty do
            Citizen.Wait(0)

            if not CurrentTreasure.isFake then
                local pedCoords = GetEntityCoords(PlayerPedId())
                local dist      = #(pedCoords - CurrentTreasure.coords)

                -- EasyMode: big marker above treasure
                if Config.EasyMode then
                    if dist < 20.0 then
                        DrawMarker(
                            20,
                            CurrentTreasure.coords.x,
                            CurrentTreasure.coords.y,
                            CurrentTreasure.coords.z + 6.0,
                            0.0, 0.0, 0.0,
                            0.0, 180.0, 0.0,
                            4.0, 4.0, 4.0,
                            191, 11, 11, 150,
                            true, false, 2, false, false, false, false
                        )
                    else
                        Citizen.Wait(500)
                    end
                end

                -- Show small blip only when nearby
                if Config.ShowBlipWhenNearby then
                    if dist < Config.TreaureBlipDistance then
                        if nearbyTreasureBlip == 0 then
                            nearbyTreasureBlip = AddBlipWhenNearby(CurrentTreasure.coords)
                        end
                    else
                        RemoveBlip(nearbyTreasureBlip)
                        nearbyTreasureBlip = 0
                    end
                end
            else
                -- Fake treasure: do nothing but avoid tight loop
                Citizen.Wait(1000)
            end
        end
    end)

    -----------------------------------------------------------------
    -- Depth warning (NUI)
    -----------------------------------------------------------------
    local depthWarningShown = false
    CreateThread(function()
        while OnDuty do
            Citizen.Wait(2500)

            local z = GetEntityCoords(PlayerPedId()).z

            if z < -145.0 then
                if not depthWarningShown then
                    depthWarningShown = true
                    SendNUIMessage({ action = "showDepthWarning" })
                end
            else
                if depthWarningShown then
                    depthWarningShown = false
                    SendNUIMessage({ action = "hideDepthWarning" })
                end
            end
        end
    end)

    -----------------------------------------------------------------
    -- Anchor interaction (if not using target)
    -----------------------------------------------------------------
    if not Config.UseTarget then
        -- E to drop anchor at boat’s anchor bone
        CreateThread(function()
            while OnDuty do
                Citizen.Wait(0)

                if not JobVehicle or not DoesEntityExist(JobVehicle) then
                    Citizen.Wait(300)
                    goto continue
                end

                local boneIndex = GetEntityBoneIndexByName(JobVehicle, Config.AnchorBone)
                local bonePos   = GetWorldPositionOfEntityBone(JobVehicle, boneIndex)

                local pedCoords = GetEntityCoords(PlayerPedId())
                local dist      = #(pedCoords - bonePos)

                if dist < 3.5 then
                    if not IsPedInAnyBoat(PlayerPedId()) then
                        DrawText3Ds(
                            bonePos.x,
                            bonePos.y,
                            bonePos.z,
                            ("~r~[E] | ~s~%s"):format(Config.Lang.dropAnchor)
                        )

                        if IsControlJustReleased(0, 38) then -- E
                            TriggerEvent("17mov_divers:attachAnhor", JobVehicle)
                        end
                    end
                else
                    Citizen.Wait(300)
                end

                ::continue::
            end
        end)

        -----------------------------------------------------------------
        -- E to collect treasure (non-target mode)
        -----------------------------------------------------------------
        Citizen.CreateThread(function()
            while true do
                Citizen.Wait(0)

                if not OnDuty then
                    break
                end

                local pedCoords = GetEntityCoords(PlayerPedId())
                local dist      = #(pedCoords - CurrentTreasure.coords)

                if dist < 2.0 then
                    DrawText3Ds(
                        CurrentTreasure.coords.x,
                        CurrentTreasure.coords.y,
                        CurrentTreasure.coords.z,
                        ("~r~[E] | ~s~%s"):format(Config.Lang.collectTreasure)
                    )

                    if IsControlJustReleased(0, 38) then -- E
                        if CanCollect then
                            TriggerEvent("17mov_divers:collectTreasure")
                            Citizen.Wait(2000)
                        end
                    end
                else
                    Citizen.Wait(500)
                end
            end
        end)
    end
end)

---------------------------------------------------------------------
-- END JOB (client-side)
---------------------------------------------------------------------

-- Simple lock so EndJob can't be spammed (old L22_1)
local canEndJob = true

function EndJob()
    if not canEndJob then
        return
    end
    canEndJob = false

    -- Check if player is the driver of the vehicle they're in
    local veh = GetVehiclePedIsIn(PlayerPedId(), false)
    local driverPed = GetPedInVehicleSeat(veh, -1)
    local ped = PlayerPedId()

    if driverPed ~= ped then
        if IsPedInAnyVehicle(ped, false) then
            Notify(Config.Lang.notADriver)
            canEndJob = true
            return
        end
    end

    -- If it's the job vehicle, just delete it and end job immediately
    local model      = GetEntityModel(veh)
    local jobModel   = GetHashKey(Config.JobVehicleModel)

    if model == jobModel then
        -- Keep this call for parity with original code (result unused)
        local _engineHealth = GetVehicleEngineHealth(veh)

        DeleteVehicleByCore(veh)
        TriggerServerEvent("17mov_divers:endJob_sv", true)

        canEndJob = true
        return
    end

    -- Otherwise show a confirmation warning via NUI
    SetNuiFocus(true, true)
    SendNUIMessage({ action = "openWarning" })

    canEndJob = true
end

---------------------------------------------------------------------
-- NUI: CONFIRM END JOB WARNING
---------------------------------------------------------------------

RegisterNUICallback("acceptWarning", function(_)
    -- Tell server to end job, without "free" vehicle delete
    TriggerServerEvent("17mov_divers:endJob_sv", false)

    if Config.DeleteVehicleWithPenalty then
        local veh = GetVehiclePedIsIn(PlayerPedId(), false)
        DeleteVehicleByCore(veh)
    end
end)

---------------------------------------------------------------------
-- END JOB (server -> client cleanup)
---------------------------------------------------------------------

RegisterNetEvent("17mov_divers:endJob_cl")
AddEventHandler("17mov_divers:endJob_cl", function()
    -- Remove keys if integration exists
    if RemoveKeys ~= nil then
        RemoveKeys()
    end

    -----------------------------------------------------------------
    -- Teleport back near duty toggle if close enough
    -----------------------------------------------------------------
    local pedCoords  = GetEntityCoords(PlayerPedId())
    local dutyCoords = Config.Locations.DutyToggle.Coords[1]
    local dist       = #(pedCoords - dutyCoords)

    if dist < 50.0 and Config.EnableVehicleTeleporting then
        DoScreenFadeOut(250)
        Citizen.Wait(1000)

        SetEntityCoords(
            PlayerPedId(),
            dutyCoords.x,
            dutyCoords.y,
            dutyCoords.z,
            false, false, false, false
        )
    end

    -- Flag used in the treasure-target logic (old L2_1)
    NewTargetWhileOffDuty = true

    -- Remove main treasure blips (old L5_1 / L6_1)
    if treasureBlip then
        RemoveBlip(treasureBlip)
        treasureBlip = nil
    end

    if treasureAreaBlip then
        RemoveBlip(treasureAreaBlip)
        treasureAreaBlip = nil
    end

    Citizen.Wait(1000)
    DoScreenFadeIn(300)

    -- Reset anchor state, bag counter & duty flag (old L8_1, BagsCounter, OnDuty)
    anchorActive = false
    BagsCounter  = 0
    OnDuty       = false

    -----------------------------------------------------------------
    -- Restore clothes if required-work-clothes were forced
    -----------------------------------------------------------------
    if Config.RequireWorkClothes and not Config.EnableCloakroom then
        IsWearingWorkClothes = false
        ChangeClothes("citizen")
    end
end)

