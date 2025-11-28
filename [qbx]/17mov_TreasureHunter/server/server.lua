--============================================================
--  Lobby / Team & Callback Storage
--============================================================

---@type table<integer, { host: number, clients: number[], treasures: number, rewardsOptions: table<number, number>, vehNetId?: number, localTreasure?: {coords: vector3, isFake: boolean} }>
local Lobbies = {}      -- was L0_1

local LegacyTable1 = {} -- was L1_1 (unused in this snippet, kept for compatibility)

---@type table<string, fun(source: number, ...): any>
local ServerCallbacks = {} -- was L2_1

local SOME_CONSTANT_4 = 4 -- was L3_1 (unused here, kept)

--============================================================
--  Global / Shared Treasure (for SharedTreasureFeature)
--============================================================

---@type {coords: vector3, isFake: boolean}
local CurrentGlobalTreasure = {} -- was L4_1

do
    local locations = Config.TreasureLocations
    local index = math.random(1, #locations)
    CurrentGlobalTreasure.coords = locations[index]
    CurrentGlobalTreasure.isFake = false
end

--============================================================
--  Safe wrappers around some natives
--============================================================

local Original_GetPlayerIdentifierByType = GetPlayerIdentifierByType
local Original_GetPlayerPing             = GetPlayerPing
local Original_TriggerClientEvent        = TriggerClientEvent

-- Safer GetPlayerIdentifierByType
function GetPlayerIdentifierByType(source, idType)
    if source == nil then
        return 0
    end

    if Original_GetPlayerIdentifierByType ~= nil then
        return Original_GetPlayerIdentifierByType(source, idType)
    else
        -- Fallback if the native isn't available on this framework
        return GetPlayerIdentifier(source, 1)
    end
end

-- Safer GetPlayerPing
function GetPlayerPing(source, ...)
    if source ~= nil then
        return Original_GetPlayerPing(source, ...)
    end
end

-- Safer TriggerClientEvent (ignore nil targets)
function TriggerClientEvent(eventName, target, ...)
    if target ~= nil then
        return Original_TriggerClientEvent(eventName, target, ...)
    end
end

--============================================================
--  Server-side callback system
--============================================================

function RegisterServerCallback(name, cb)
    ServerCallbacks[name] = cb
end

-- Server receives callback request from client
RegisterNetEvent("17mov_Callbacks:GetResponse" .. GetCurrentResourceName())
AddEventHandler("17mov_Callbacks:GetResponse" .. GetCurrentResourceName(), function(cbName, cbId, ...)
    local cb = ServerCallbacks[cbName]
    if cb == nil then
        return
    end

    local src = source

    -- Support multiple return values, like original code
    local r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11 =
        cb(src, ...)

    TriggerClientEvent(
        "17mov_Callbacks:receiveData" .. GetCurrentResourceName(),
        src,
        cbName,
        cbId,
        r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11
    )
end)

--============================================================
--  Reward recalculation
--============================================================

local function _RecalculateRewards(hostSource)
    local lobbyId = 0

    -- Find which lobby this host owns
    for id, lobby in pairs(Lobbies) do
        if lobby.host == hostSource then
            lobbyId = id
        end
    end

    local lobby = Lobbies[lobbyId]
    lobby.rewardsOptions = {}

    local memberCount = #lobby.clients + 1 -- + host
    local share = math.floor(100 / memberCount)

    -- Give equal shares to clients
    for i = 1, memberCount - 1 do
        local clientSource = lobby.clients[i]
        lobby.rewardsOptions[clientSource] = share
    end

    -- And to the host
    lobby.rewardsOptions[hostSource] = share

    -- Update all members
    TriggerForAllMembers(hostSource, "17mov_divers:SetMyReward", share)
    TriggerClientEvent("17mov_divers:UpdateHostPercentages", hostSource, share)
end

RecalculateRewards = _RecalculateRewards

--============================================================
--  Treasure generation (global / shared)
--============================================================

function GenerateNewLocation(optionalLobbyMembers)
    -- Make sure we don't pick the same coords as last time
    local previousCoords = CurrentGlobalTreasure.coords
    local newCoords = previousCoords

    while newCoords == previousCoords do
        local locations = Config.TreasureLocations
        local index = math.random(1, #locations)
        newCoords = locations[index]

        Citizen.Wait(10)
    end

    -- Decide if it's a fake location
    local isFake = false
    local roll = math.random(1, 100)
    if roll < Config.FakeLocationChance then
        isFake = true
    end

    CurrentGlobalTreasure = {
        coords = newCoords,
        isFake = isFake
    }

    -- List of players close enough / in the lobby, etc.
    if optionalLobbyMembers == nil then
        optionalLobbyMembers = {}
    end

    -- Broadcast new target to everyone (-1)
    TriggerClientEvent("17mov_divers:SendNewTarget", -1, CurrentGlobalTreasure, optionalLobbyMembers)

    -- If this was fake, schedule a new one after a delay
    CreateThread(function()
        if isFake then
            Citizen.Wait(Config.FakeRestart)
            GenerateNewLocation()
        end
    end)
end

--============================================================
--  Treasure generation (local per-lobby)
--============================================================

function GenerateNewLocalLocation()
    local coords = vec3(0, 0, 0)

    -- Make sure we don't return the zero vector
    while coords == vec3(0, 0, 0) do
        local locations = Config.TreasureLocations
        local index = math.random(1, #locations)
        coords = locations[index]
        Citizen.Wait(10)
    end

    local isFake = false
    local roll = math.random(1, 100)
    if roll < Config.FakeLocationChance then
        isFake = true
    end

    return {
        coords = coords,
        isFake = isFake
    }
end

--============================================================
--  Collect treasure event
--============================================================

RegisterNetEvent("17mov_divers:CollectTreasure_")
AddEventHandler("17mov_divers:CollectTreasure_", function(_unusedArg)
    local src = source
    local ped = GetPlayerPed(src)
    local playerCoords = GetEntityCoords(ped)

    local teamMembers = {} ---@type number[]
    local lobbyId = nil

    -- Find lobby and all members (host + clients)
    for id, lobby in pairs(Lobbies) do
        if lobby.host == src then
            lobbyId = id
            table.insert(teamMembers, lobby.host)

            for i = 1, #lobby.clients do
                table.insert(teamMembers, lobby.clients[i])
            end

            break
        end

        for i = 1, #lobby.clients do
            local client = lobby.clients[i]
            if client == src then
                lobbyId = id
                table.insert(teamMembers, lobby.host)

                for j = 1, #lobby.clients do
                    table.insert(teamMembers, lobby.clients[j])
                end

                break
            end
        end

        if lobbyId ~= nil then
            break
        end
    end

    if Config.SharedTreasureFeature then
        -- SHARED GLOBAL TREASURE
        local distance = #(playerCoords - CurrentGlobalTreasure.coords)
        if distance > 15.0 then
            print(("[17mov_TreasureHunter] Player %s tried to collect treasure being far away"):format(src))
            return
        end

        -- Move current treasure far away, then generate new one
        CurrentGlobalTreasure.coords = vec3(100, 100, 100)
        GenerateNewLocation(teamMembers)

        local lobby = Lobbies[lobbyId]
        lobby.treasures = lobby.treasures + 1

        -- Notify all team members
        for i = 1, #teamMembers do
            Notify(teamMembers[i], Config.Lang.yourTeamWon)
        end
    else
        -- LOCAL TREASURE PER LOBBY
        local lobby = Lobbies[lobbyId]
        local currentLocal = lobby.localTreasure

        local distance = #(playerCoords - currentLocal.coords)
        if distance > 15.0 then
            print(("[17mov_TreasureHunter] Player %s tried to collect treasure being far away"):format(src))
            return
        end

        local newLocalTreasure = GenerateNewLocalLocation()

        lobby.treasures = lobby.treasures + 1
        lobby.localTreasure = newLocalTreasure

        for i = 1, #teamMembers do
            local member = teamMembers[i]
            Notify(member, Config.Lang.yourTeamWon)
            TriggerClientEvent("17mov_divers:SendNewTarget", member, newLocalTreasure, teamMembers)
        end
    end
end)

--============================================================
--  Main server thread: register callbacks & init
--============================================================

Citizen.CreateThread(function()
    ----------------------------------------------------------------
    -- 17mov_divers:GetPlayersNames
    ----------------------------------------------------------------
    RegisterServerCallback("17mov_divers:GetPlayersNames", function(src, ids)
        local result = {}

        for i = 1, #ids do
            table.insert(result, {
                id   = ids[i],
                name = GetPlayerIdentity(ids[i])
            })
        end

        return result
    end)

    ----------------------------------------------------------------
    -- 17mov_divers:getCurrentTreasure
    ----------------------------------------------------------------
    RegisterServerCallback("17mov_divers:getCurrentTreasure", function(src, _)
        if Config.SharedTreasureFeature then
            return CurrentGlobalTreasure
        else
            local lobbyId = 0

            -- Find lobby containing this player
            for id, lobby in pairs(Lobbies) do
                if lobby.host == src then
                    lobbyId = id
                    break
                end

                for i = 1, #lobby.clients do
                    if lobby.clients[i] == src then
                        lobbyId = id
                        break
                    end
                end
            end

            -- Wait until localTreasure is ready
            while Lobbies[lobbyId].localTreasure == nil do
                Citizen.Wait(100)
            end

            return Lobbies[lobbyId].localTreasure
        end
    end)

    ----------------------------------------------------------------
    -- 17mov_divers:IfPlayerIsHost
    ----------------------------------------------------------------
    RegisterServerCallback("17mov_divers:IfPlayerIsHost", function(src)
        local isHost = true
        local lobbyId = 0

        -- Check if player is in any lobby as client
        for id, lobby in pairs(Lobbies) do
            for i = 1, #lobby.clients do
                if lobby.clients[i] == src then
                    isHost = false
                    lobbyId = id
                    break
                end
            end
        end

        -- If they are client, but host has ping 0 -> transfer ownership
        if not isHost then
            local hostPing = GetPlayerPing(Lobbies[lobbyId].host)
            if hostPing == 0 then
                isHost = true
                Lobbies[lobbyId].host = src
            end
        end

        return isHost
    end)

    ----------------------------------------------------------------
    -- 17mov_divers:IfPlayerOwnsTeam
    ----------------------------------------------------------------
    RegisterServerCallback("17mov_divers:IfPlayerOwnsTeam", function(src)
        local ownsTeam = false

        for _, lobby in pairs(Lobbies) do
            if lobby.host == src then
                ownsTeam = true
                break
            end
        end

        return ownsTeam
    end)

    ----------------------------------------------------------------
    -- 17mov_divers:CheckThisReward
    ----------------------------------------------------------------
    RegisterServerCallback("17mov_divers:CheckThisReward", function(src, value, targetId)
        local lobbyId = 0

        -- Find lobby which this player belongs to (host or client)
        for id, lobby in pairs(Lobbies) do
            if lobby.host == src then
                lobbyId = id
                break
            end

            for i = 1, #lobby.clients do
                if lobby.clients[i] == src then
                    lobbyId = id
                    break
                end
            end
        end

        -- Sum all rewards except target's
        local sum = 0
        for id, reward in pairs(Lobbies[lobbyId].rewardsOptions) do
            if id ~= targetId then
                sum = sum + reward
            end
        end

        if sum + value > 100 then
            return false
        else
            Lobbies[lobbyId].rewardsOptions[targetId] = value
            TriggerClientEvent("17mov_divers:SetMyReward", targetId, value)
            return true
        end
    end)

    ----------------------------------------------------------------
    -- 17mov_divers:init
    ----------------------------------------------------------------
    RegisterServerCallback("17mov_divers:init", function(src)
        local result = {}
        result.name   = GetPlayerIdentity(src)
        result.source = src
        return result
    end)

    ----------------------------------------------------------------
    -- 17mov_divers:GetLobbyVehicleId
    ----------------------------------------------------------------
    RegisterServerCallback("17mov_divers:GetLobbyVehicleId", function(src, hostId)
        local vehNetId = 0

        for _, lobby in pairs(Lobbies) do
            if lobby.host == hostId and lobby.vehNetId ~= nil then
                vehNetId = lobby.vehNetId
            end
        end

        return vehNetId
    end)

    ----------------------------------------------------------------
    -- 17mov_divers:GetLobbyMembers
    ----------------------------------------------------------------
    RegisterServerCallback("17mov_divers:GetLobbyMembers", function(src, hostId)
        if hostId == nil then
            return {}
        end

        local members = { hostId }

        for _, lobby in pairs(Lobbies) do
            if lobby.host == hostId then
                for i = 1, #lobby.clients do
                    table.insert(members, lobby.clients[i])
                end
            end
        end

        return members
    end)

    -- Initial global treasure
    Citizen.Wait(1000)
    GenerateNewLocation()
end)

--============================================================
--  Lobby / Invite / Cooldown structures
--============================================================

---@type table<integer, {host: number, clients: number[], treasures: number, working: boolean, rewardsOptions?: table<number, number>, vehNetId?: number, localTreasure?: {coords: vector3, isFake: boolean}}>
Lobbies = Lobbies or {}

---Pending invites: array of { host = src, client = target }
---@type { host: number, client: number }[]
PendingInvites = PendingInvites or {}

---Job cooldown licenses (was L8_1 in obfuscated code)
---@type table<string, boolean>
JobCooldownLicenses = JobCooldownLicenses or {}

---license -> last job timestamp (os.time)
CooldownsTime = CooldownsTime or {}

---Maximum party size including host (same value as original L3_1 = 4)
local MAX_PARTY_SIZE = 4

--============================================================
--  Send Invite: 17mov_divers:SendRequestToClient_sv
--============================================================

RegisterNetEvent("17mov_divers:SendRequestToClient_sv")
AddEventHandler("17mov_divers:SendRequestToClient_sv", function(targetId)
    local src = source

    -- 1) Make sure target is not already a host or client in any lobby
    for _, lobby in pairs(Lobbies) do
        if lobby.host == targetId then
            Notify(src, Config.Lang.isAlreadyHost)
            return
        else
            for i = 1, #lobby.clients do
                if lobby.clients[i] == targetId then
                    Notify(src, Config.Lang.isBusy)
                    return
                end
            end
        end
    end

    -- 2) Check pending invites table (PendingInvites)
    for _, invite in pairs(PendingInvites) do
        -- Target already has invite
        if invite.client == targetId then
            Notify(src, Config.Lang.hasActiveInvite)
            return
        end

        -- This host already has an outgoing invite
        if invite.host == src and invite.client ~= nil then
            Notify(src, Config.Lang.HaveActiveInvite)
            return
        end
    end

    -- 3) Check party size of host lobby (if any)
    local currentClients = {}
    for _, lobby in pairs(Lobbies) do
        if lobby.host == src then
            currentClients = lobby.clients
        end
    end

    local membersCount = #currentClients + 1 -- + host
    if membersCount >= MAX_PARTY_SIZE then
        Notify(src, Config.Lang.partyIsFull)
        return
    end

    -- 4) Add pending invite and notify both sides
    table.insert(PendingInvites, {
        host   = src,
        client = targetId
    })

    Notify(src, Config.Lang.inviteSent)

    TriggerClientEvent(
        "17mov_divers:SendRequestToClient_cl",
        targetId,
        GetPlayerIdentity(src)
    )
end)

--============================================================
--  Client reacts to invite: 17mov_divers:ClientReactRequest
--============================================================

RegisterNetEvent("17mov_divers:ClientReactRequest")
AddEventHandler("17mov_divers:ClientReactRequest", function(accepted)
    local src = source   -- client who reacted
    local hostId = nil
    local joinedExistingLobby = false

    -- Find invite entry for this client and remove it from PendingInvites
    for index, invite in pairs(PendingInvites) do
        if invite.client == src then
            hostId = invite.host
            PendingInvites[index] = nil
            break
        end
    end

    if accepted then
        if hostId ~= nil and src ~= nil then
            -- Try to add player to existing lobby of this host
            for _, lobby in pairs(Lobbies) do
                if lobby.host == hostId then
                    if lobby.clients ~= nil then
                        table.insert(lobby.clients, src)
                        joinedExistingLobby = true
                    end
                end
            end

            -- If host did not have a lobby yet, create a new one
            if not joinedExistingLobby then
                table.insert(Lobbies, {
                    host      = hostId,
                    clients   = { src },
                    treasures = 0,
                    working   = false
                })
            end

            -- Recalculate rewards for modern UI
            if Config.useModernUI then
                RecalculateRewards(hostId)
            end

            -- Notify host & refresh UI for all members
            Notify(hostId, Config.Lang.InviteAccepted)

            local mugs = GetAllPartyMugs(hostId)
            TriggerForAllMembers(hostId, "17mov_divers:RefreshMugs", mugs)
        else
            -- Something broke (no host found etc.)
            Notify(src, Config.Lang.error)
            if hostId then
                Notify(hostId, Config.Lang.error)
            end
        end
    else
        -- Invite declined
        if hostId then
            Notify(hostId, Config.Lang.InviteDeclined)
        end
    end
end)

--============================================================
--  Kick player from lobby: 17mov_divers:KickPlayerFromLobby
--============================================================

RegisterNetEvent("17mov_divers:KickPlayerFromLobby")
AddEventHandler("17mov_divers:KickPlayerFromLobby", function(targetId, notifyTarget, byMemberId)
    local kickedId = targetId
    local hostId   = nil

    -- If byMemberId is nil: host kicked someone
    if byMemberId == nil then
        hostId = source
        for _, lobby in pairs(Lobbies) do
            for i = 1, #lobby.clients do
                if lobby.host == hostId and lobby.clients[i] == kickedId then
                    lobby.clients[i] = nil
                    break
                end
            end
        end
    else
        -- Someone left lobby, find lobby by memberId
        for _, lobby in pairs(Lobbies) do
            for i = 1, #lobby.clients do
                if lobby.clients[i] == byMemberId then
                    hostId = lobby.host
                    lobby.clients[i] = nil
                    break
                end
            end
        end
    end

    -- Tell kicked player (if requested)
    if notifyTarget then
        Notify(kickedId, Config.Lang.kickedOut)
    end

    -- ================= Modern UI branch =================
    if Config.useModernUI then
        -- Reset kicked player's UI as if they own their own “solo” lobby
        local solo = {
            {
                id      = kickedId,
                name    = GetPlayerIdentity(kickedId),
                isHost  = true,
                -- rewardPercent is handled client-side by SetMyReward(100)
            }
        }

        TriggerClientEvent("17mov_divers:RefreshMugs", kickedId, solo, kickedId)
        TriggerClientEvent("17mov_divers:clearMyLobby", kickedId)
        TriggerClientEvent("17mov_divers:SetMyReward", kickedId, 100)

        -- Refresh host lobby UI
        if hostId then
            local mugs = GetAllPartyMugs(hostId)
            TriggerForAllMembers(hostId, "17mov_divers:RefreshMugs", mugs)
            RecalculateRewards(hostId)
        end

        -- Remove empty lobbies (no clients)
        for lobbyIndex, lobby in pairs(Lobbies) do
            if #lobby.clients == 0 and lobby.host == hostId then
                Lobbies[lobbyIndex] = nil
                if hostId then
                    TriggerClientEvent("17mov_divers:clearMyLobby", hostId)
                end
            end
        end

    -- ================= Legacy UI branch =================
    else
        local solo = {
            {
                id     = kickedId,
                name   = GetPlayerIdentity(kickedId),
                isHost = true
            }
        }

        TriggerClientEvent("17mov_divers:RefreshMugs", kickedId, solo, kickedId)

        if hostId then
            local mugs = GetAllPartyMugs(hostId)
            TriggerForAllMembers(hostId, "17mov_divers:RefreshMugs", mugs)
        end

        -- Remove empty lobbies (no clients)
        for lobbyIndex, lobby in pairs(Lobbies) do
            if #lobby.clients == 0 and lobby.host == hostId then
                Lobbies[lobbyIndex] = nil
            end
        end
    end
end)

--============================================================
--  End Job: 17mov_divers:endJob_sv
--============================================================

RegisterNetEvent("17mov_divers:endJob_sv")
AddEventHandler("17mov_divers:endJob_sv", function(hasVehicle)
    local src       = source
    local treasures = nil

    -- End job for all members (client side)
    TriggerForAllMembers(src, "17mov_divers:endJob_cl", 0)

    for lobbyIndex, lobby in pairs(Lobbies) do
        if lobby.host == src then
            treasures     = lobby.treasures
            lobby.treasures = 0
            lobby.working   = false

            -- Collect all members (clients + host)
            local members = {}
            for i = 1, #lobby.clients do
                table.insert(members, lobby.clients[i])
            end
            table.insert(members, lobby.host)

            -- Base reward (before splits / multipliers)
            local rewardPerTreasure = Config.reward
            local baseTotalReward   = treasures * rewardPerTreasure

            -- Multiply reward for group work
            if Config.multiplyRewardWhileWorkingInGroup then
                baseTotalReward = math.floor(baseTotalReward * (#lobby.clients + 1))
            end

            -- If using modern UI and there are no clients, recalc host reward to full 100%
            if Config.useModernUI then
                if #lobby.clients == 0 then
                    RecalculateRewards(src)
                end
            end

            -- Prevent double-pay for same ID
            local paidMap = {}

            for i = 1, #members do
                local memberId = members[i]
                local amount   = 0

                -- Determine individual reward
                if Config.useModernUI and Config.letBossSplitReward then
                    -- Host-defined split (percent stored in lobby.rewardsOptions[playerId])
                    amount = math.floor(
                        (lobby.rewardsOptions[memberId] / 100) * baseTotalReward
                    )
                else
                    if not Config.useModernUI and Config.splitReward then
                        -- Equal split between host + all clients
                        amount = math.floor(
                            baseTotalReward / (#lobby.clients + 1)
                        )
                    else
                        -- No split: everyone gets full amount
                        amount = baseTotalReward
                    end
                end

                -- If job was ended *without* vehicle => penalty logic
                if not hasVehicle then
                    PayPenalty(memberId, Config.PenaltyAmount)
                    Notify(memberId, Config.Lang.penalty .. Config.PenaltyAmount)
                end

                -- If no vehicle AND DontPayRewardWithoutVehicle ~= false => skip reward
                if not hasVehicle then
                    if Config.DontPayRewardWithoutVehicle ~= false then
                        goto continue_member
                    end
                end

                -- Pay reward only once per unique id
                if not paidMap[memberId] then
                    paidMap[memberId] = true
                    Pay(memberId, amount, treasures, #members)
                    Notify(memberId, Config.Lang.reward .. amount)
                end

                ::continue_member::
            end

            -- If no more clients left in this lobby, delete it and clear host lobby UI
            if #lobby.clients == 0 then
                Lobbies[lobbyIndex] = nil
                TriggerClientEvent("17mov_divers:clearMyLobby", src)
            end
        end
    end
end)

--============================================================
--  Start Job: 17mov_divers:StartJob_sv
--============================================================

RegisterNetEvent("17mov_divers:StartJob_sv")
AddEventHandler("17mov_divers:StartJob_sv", function()
    local src        = source
    local members    = nil  -- lobby clients
    local lobbyIndex = nil

    -- Find lobby where this player is host
    for id, lobby in pairs(Lobbies) do
        if lobby.host == src then
            members    = lobby.clients
            lobbyIndex = id
            break
        end
    end

    ----------------------------------------------------------------
    -- Required job for friends (RequireJobAlsoForFriends)
    ----------------------------------------------------------------
    if Config.RequireJobAlsoForFriends then
        if Config.RequiredJob ~= "none" and members ~= nil then
            for i = 1, #members do
                local jobName = GetPlayerJob(members[i])
                if jobName ~= Config.RequiredJob then
                    return Notify(src, Config.Lang.notEverybodyHasRequiredJob)
                end
            end
        end
    end

    ----------------------------------------------------------------
    -- Required item checks (host + optionally whole team)
    ----------------------------------------------------------------
    if not IsHaveRequiredItem(src) then
        return Notify(src, Config.Lang.dontHaveReqItem)
    end

    if Config.RequireItemFromWholeTeam and members ~= nil then
        for i = 1, #members do
            if not IsHaveRequiredItem(members[i]) then
                return Notify(src, Config.Lang.dontHaveReqItem)
            end
        end
    end

    ----------------------------------------------------------------
    -- Cooldown checks
    ----------------------------------------------------------------
    local jobCooldown = Config.JobCooldown
    if jobCooldown > 0 then
        CooldownsTime = CooldownsTime or {}

        local now      = os.time()
        local hostLic  = GetPlayerIdentifierByType(src, "license")

        -- Host cooldown check
        if JobCooldownLicenses[hostLic] then
            local diff = now - CooldownsTime[hostLic]
            if diff >= jobCooldown then
                JobCooldownLicenses[hostLic] = nil
                CooldownsTime[hostLic]       = nil
            else
                local remaining = jobCooldown - diff

                local h = math.floor(remaining / 3600)
                local m = math.floor((remaining % 3600) / 60)
                local s = remaining % 60

                local txt = ""
                if h > 0 then
                    txt = txt .. h .. Config.Lang.hours .. " "
                end
                if m > 0 then
                    txt = txt .. m .. Config.Lang.minutes .. " "
                end
                txt = txt .. s .. Config.Lang.seconds

                return Notify(
                    src,
                    string.format(
                        Config.Lang.someoneIsOnCooldown,
                        GetPlayerIdentity(src),
                        txt
                    )
                )
            end
        end

        -- Friends cooldown check
        if members ~= nil then
            for i = 1, #members do
                local lic = GetPlayerIdentifierByType(members[i], "license")
                if JobCooldownLicenses[lic] then
                    local diff = now - CooldownsTime[lic]
                    if diff >= jobCooldown then
                        JobCooldownLicenses[lic] = nil
                        CooldownsTime[lic]       = nil
                    else
                        local remaining = jobCooldown - diff

                        local h = math.floor(remaining / 3600)
                        local m = math.floor((remaining % 3600) / 60)
                        local s = remaining % 60

                        local txt = ""
                        if h > 0 then
                            txt = txt .. h .. Config.Lang.hours .. " "
                        end
                        if m > 0 then
                            txt = txt .. m .. Config.Lang.minutes .. " "
                        end
                        txt = txt .. s .. Config.Lang.seconds

                        return Notify(
                            src,
                            string.format(
                                Config.Lang.someoneIsOnCooldown,
                                GetPlayerIdentity(members[i]),
                                txt
                            )
                        )
                    end
                end
            end
        end

        -- Set cooldowns for host + all members
        JobCooldownLicenses[hostLic] = true
        CooldownsTime[hostLic]       = now

        if members ~= nil then
            for i = 1, #members do
                local lic = GetPlayerIdentifierByType(members[i], "license")
                JobCooldownLicenses[lic] = true
                CooldownsTime[lic]       = now
            end
        end
    end

    ----------------------------------------------------------------
    -- Start job: with or without RequireOneFriendMinimum
    ----------------------------------------------------------------
    if Config.RequireOneFriendMinimum then
        if members ~= nil and #members > 0 then
            TriggerForAllMembers(src, "17mov_divers:StartJob_cl", src)

            local lobby = Lobbies[lobbyIndex]
            lobby.localTreasure = GenerateNewLocalLocation()
            lobby.working       = true
        else
            Notify(src, Config.Lang.RequireOneFriend)
        end
    else
        -- If host has no lobby, create one (solo play)
        if members == nil then
            table.insert(Lobbies, {
                host      = src,
                clients   = {},
                treasures = 0,
                working   = false
            })
        end

        -- Find lobbyIndex again (in case we just added it)
        for id, lobby in pairs(Lobbies) do
            if lobby.host == src then
                lobbyIndex = id
                break
            end
        end

        TriggerForAllMembers(src, "17mov_divers:StartJob_cl", src)

        local lobby = Lobbies[lobbyIndex]
        lobby.working       = true
        lobby.localTreasure = GenerateNewLocalLocation()
    end
end)

------------------------------------------------------------
-- GetAllPartyMugs: build UI list of lobby members
------------------------------------------------------------
function GetAllPartyMugs(hostId)
    local mugs      = {}
    local clients   = {}
    local lobbyIndex

    -- Find lobby by host
    for idx, lobby in pairs(Lobbies) do
        if lobby.host == hostId then
            clients    = lobby.clients or {}
            lobbyIndex = idx
            break
        end
    end

    -- If no lobby found, return empty list (prevents crashes)
    if not lobbyIndex then
        return mugs
    end

    local lobby = Lobbies[lobbyIndex]

    if Config.useModernUI then
        -- Add all clients
        for _, clientId in ipairs(clients) do
            table.insert(mugs, {
                id            = clientId,
                name          = GetPlayerIdentity(clientId),
                isHost        = false,
                rewardPercent = lobby.rewardsOptions and lobby.rewardsOptions[clientId]
            })
        end

        -- Add host at the end
        table.insert(mugs, {
            id            = hostId,
            name          = GetPlayerIdentity(hostId),
            isHost        = true,
            rewardPercent = lobby.rewardsOptions and lobby.rewardsOptions[hostId]
        })
    else
        -- Legacy UI: no reward percent
        for _, clientId in ipairs(clients) do
            table.insert(mugs, {
                id     = clientId,
                name   = GetPlayerIdentity(clientId),
                isHost = false
            })
        end

        table.insert(mugs, {
            id     = hostId,
            name   = GetPlayerIdentity(hostId),
            isHost = true
        })
    end

    return mugs
end

------------------------------------------------------------
-- TriggerForAllMembers: send event to host + all clients
------------------------------------------------------------
function TriggerForAllMembers(hostId, eventName, payload)
    local clients = {}

    -- Find clients for this host
    for _, lobby in pairs(Lobbies) do
        if lobby.host == hostId then
            clients = lobby.clients or {}
            break
        end
    end

    -- Send to each client + host
    for i = 1, #clients + 1 do
        local targetId = clients[i]
        if i > #clients then
            targetId = hostId
        end

        if targetId ~= nil and type(targetId) == "number" then
            if eventName == "17mov_divers:RefreshMugs"
            or eventName == "17mov_divers:StartJob_cl" then
                -- These events expect (payload, myId)
                TriggerClientEvent(eventName, targetId, payload, targetId)
            else
                TriggerClientEvent(eventName, targetId, payload)
            end
        end
    end
end

------------------------------------------------------------
-- Upload job vehicle net ID to lobby
------------------------------------------------------------
RegisterNetEvent("17mov_divers:UploadVehicleNetId")
AddEventHandler("17mov_divers:UploadVehicleNetId", function(netId)
    local src = source

    for _, lobby in pairs(Lobbies) do
        if lobby.host == src then
            lobby.vehNetId = netId
        end
    end
end)

------------------------------------------------------------
-- Handle player disconnect (playerDropped)
------------------------------------------------------------
AddEventHandler("playerDropped", function()
    local src       = source
    local lobbyIdx  = nil

    -- Find lobby where this player is host or client
    for index, lobby in pairs(Lobbies) do
        if lobby.host == src then
            -- Host left: try to promote a client with non-zero ping
            for i = 1, #lobby.clients do
                local clientId = lobby.clients[i]
                local ping     = GetPlayerPing(clientId)

                if ping ~= 0 then
                    lobby.host = clientId
                    Notify(clientId, Config.Lang.newBoss)
                    lobby.clients[i] = nil
                    break
                end
            end

            lobbyIdx = index
            break
        else
            -- Check if leaving player is one of the clients
            for i = 1, #lobby.clients do
                if lobby.clients[i] == src then
                    lobby.clients[i] = nil
                    lobbyIdx = index
                    break
                end
            end
        end
    end

    -- Player was not in any lobby
    if not lobbyIdx then
        return
    end

    local lobby   = Lobbies[lobbyIdx]
    local hostId  = lobby.host
    local working = lobby.working

    if working then
        -- Job in progress
        if #lobby.clients == 0 then
            -- No more clients, just clear host UI
            TriggerClientEvent("17mov_divers:clearMyLobby", hostId)
        else
            -- Refresh mugs + recalc rewards
            local mugs = GetAllPartyMugs(hostId)
            TriggerForAllMembers(hostId, "17mov_divers:RefreshMugs", mugs)

            if Config.useModernUI then
                RecalculateRewards(hostId)
            end
        end
    else
        -- Not working; if no clients left, nuke lobby
        if #lobby.clients == 0 then
            TriggerClientEvent("17mov_divers:clearMyLobby", hostId)
            Lobbies[lobbyIdx] = nil
        end
    end
end)

