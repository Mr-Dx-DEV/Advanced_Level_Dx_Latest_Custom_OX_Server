QBCore = nil
local isMenuOpen = false
local noClipEnabled = false
local godModeEnabled = false
local invisibleEnabled = false
local devModeEnabled = false

-- Debug Print Function
local function DebugPrint(message)
    if Config.Debug then
        print("^3[N3X-AdminMenu] ^7" .. message .. "^7")
    end
end

-- Get QBCore
CreateThread(function()
    QBCore = exports['qb-core']:GetCoreObject()
    DebugPrint("QBCore object loaded")
end)

-- Keybind Support
if Config.UseKeybind then
    RegisterCommand('+openadminmenu', function()
        DebugPrint("Keybind pressed - Opening menu")
        OpenAdminMenu()
    end, false)

    RegisterCommand('-openadminmenu', function() end, false)

    RegisterKeyMapping('+openadminmenu', 'Open Admin Menu', 'keyboard', Config.Keybind)
    DebugPrint("Keybind registered: " .. Config.Keybind)
end

-- Dev Mode Keybinds (ALT + Z/X/C/V/F/G/H)

-- ALT + Z - NoClip
RegisterCommand('+devnoclip', function()
    if devModeEnabled and IsControlPressed(0, 19) then -- Check ALT is held
        ToggleNoClip()
    end
end, false)
RegisterCommand('-devnoclip', function() end, false)
RegisterKeyMapping('+devnoclip', 'Dev Mode: NoClip (Hold ALT)', 'keyboard', 'z')

-- ALT + X - God Mode
RegisterCommand('+devgod', function()
    if devModeEnabled and IsControlPressed(0, 19) then -- Check ALT is held
        ToggleGodMode()
    end
end, false)
RegisterCommand('-devgod', function() end, false)
RegisterKeyMapping('+devgod', 'Dev Mode: God Mode (Hold ALT)', 'keyboard', 'x')

-- ALT + C - Invisible
RegisterCommand('+devinvisible', function()
    if devModeEnabled and IsControlPressed(0, 19) then -- Check ALT is held
        ToggleInvisible()
    end
end, false)
RegisterCommand('-devinvisible', function() end, false)
RegisterKeyMapping('+devinvisible', 'Dev Mode: Invisible (Hold ALT)', 'keyboard', 'c')

-- ALT + V - Revive Self
RegisterCommand('+devrevive', function()
    if devModeEnabled and IsControlPressed(0, 19) then -- Check ALT is held
        local ped = PlayerPedId()
        SetEntityHealth(ped, GetEntityMaxHealth(ped))
        TriggerEvent(Config.ReviveEvent or 'hospital:client:Revive')
        QBCore.Functions.Notify('You have been revived!', 'success')
        DebugPrint("Dev Mode: Self revived")
    end
end, false)
RegisterCommand('-devrevive', function() end, false)
RegisterKeyMapping('+devrevive', 'Dev Mode: Revive Self (Hold ALT)', 'keyboard', 'v')

-- ALT + F - Fix Vehicle
RegisterCommand('+devfixveh', function()
    if devModeEnabled and IsControlPressed(0, 19) then -- Check ALT is held
        local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
        if vehicle ~= 0 then
            SetVehicleFixed(vehicle)
            SetVehicleDeformationFixed(vehicle)
            SetVehicleUndriveable(vehicle, false)
            SetVehicleEngineOn(vehicle, true, true)
            SetVehicleBodyHealth(vehicle, 1000.0)
            SetVehicleEngineHealth(vehicle, 1000.0)
            SetVehiclePetrolTankHealth(vehicle, 1000.0)
            QBCore.Functions.Notify('Vehicle repaired!', 'success')
            DebugPrint("Dev Mode: Vehicle fixed")
        else
            QBCore.Functions.Notify('You must be in a vehicle!', 'error')
        end
    end
end, false)
RegisterCommand('-devfixveh', function() end, false)
RegisterKeyMapping('+devfixveh', 'Dev Mode: Fix Vehicle (Hold ALT)', 'keyboard', 'f')

-- ALT + G - Heal Self
RegisterCommand('+devheal', function()
    if devModeEnabled and IsControlPressed(0, 19) then -- Check ALT is held
        local ped = PlayerPedId()
        SetEntityHealth(ped, GetEntityMaxHealth(ped))
        QBCore.Functions.Notify('Health restored!', 'success')
        DebugPrint("Dev Mode: Healed")
    end
end, false)
RegisterCommand('-devheal', function() end, false)
RegisterKeyMapping('+devheal', 'Dev Mode: Heal Self (Hold ALT)', 'keyboard', 'g')

-- ALT + H - Give Armor
RegisterCommand('+devarmor', function()
    if devModeEnabled and IsControlPressed(0, 19) then -- Check ALT is held
        SetPedArmour(PlayerPedId(), 100)
        QBCore.Functions.Notify('Armor added!', 'success')
        DebugPrint("Dev Mode: Armor given")
    end
end, false)
RegisterCommand('-devarmor', function() end, false)
RegisterKeyMapping('+devarmor', 'Dev Mode: Give Armor (Hold ALT)', 'keyboard', 'h')

-- Open Menu Command
RegisterCommand(Config.Command or 'adminmenu', function()
    DebugPrint("Command used - Opening menu")
    OpenAdminMenu()
end, false)

-- Open Admin Menu
function OpenAdminMenu()
    if isMenuOpen then
        DebugPrint("Menu already open")
        return
    end

    DebugPrint("Checking permissions...")

    -- Check if QBCore is loaded
    if not QBCore then
        DebugPrint("ERROR: QBCore not loaded yet!")
        QBCore = exports['qb-core']:GetCoreObject()
        Wait(500)
    end

    -- Add timeout protection
    local callbackReceived = false

    -- Check permission first
    QBCore.Functions.TriggerCallback('n3x-adminmenu:checkPermission', function(hasPermission)
        callbackReceived = true
        DebugPrint("Permission check result: " .. tostring(hasPermission))

        if not hasPermission then
            QBCore.Functions.Notify('You do not have permission to use the admin menu!', 'error')
            DebugPrint("Permission denied!")
            return
        end

        DebugPrint("Permission granted - Opening menu")
        isMenuOpen = true
        SetNuiFocus(true, true)

        -- Get online players
        QBCore.Functions.TriggerCallback('n3x-adminmenu:getPlayers', function(players)
            DebugPrint("Received " .. #players .. " players")
            SendNUIMessage({
                action = 'open',
                players = players
            })
        end)
    end)

    -- Timeout check
    SetTimeout(3000, function()
        if not callbackReceived then
            DebugPrint("ERROR: Permission callback timeout! Server not responding.")
            DebugPrint("Make sure the resource is started on the server.")
            QBCore.Functions.Notify('Error: Server not responding. Check console (F8)', 'error')
        end
    end)
end

-- Close Admin Menu
RegisterNUICallback('closeMenu', function(data, cb)
    if isMenuOpen then
        isMenuOpen = false
        SetNuiFocus(false, false)
        DebugPrint("Menu closed")
    end
    cb('ok')
end)

-- Toggle Dev Mode
RegisterNUICallback('toggleDevMode', function(data, cb)
    devModeEnabled = data.active
    if devModeEnabled then
        QBCore.Functions.Notify('Dev Mode Enabled - F1-F6 keybinds active', 'success')
        DebugPrint("Dev Mode enabled")
    else
        QBCore.Functions.Notify('Dev Mode Disabled', 'error')
        DebugPrint("Dev Mode disabled")
    end
    cb('ok')
end)

-- Copy Coordinates
RegisterNUICallback('copyCoords', function(data, cb)
    local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)
    local heading = GetEntityHeading(ped)
    local coordsString = ""

    if data.format == 'vector2' then
        coordsString = string.format('vector2(%.2f, %.2f)', coords.x, coords.y)
    elseif data.format == 'vector3' then
        coordsString = string.format('vector3(%.2f, %.2f, %.2f)', coords.x, coords.y, coords.z)
    elseif data.format == 'vector4' then
        coordsString = string.format('vector4(%.2f, %.2f, %.2f, %.2f)', coords.x, coords.y, coords.z, heading)
    else
        coordsString = string.format('vector3(%.2f, %.2f, %.2f)', coords.x, coords.y, coords.z)
    end

    -- Send to NUI to copy to clipboard
    SendNUIMessage({
        action = 'copyToClipboard',
        text = coordsString
    })

    QBCore.Functions.Notify('Copied: ' .. coordsString, 'success')
    DebugPrint("Copied coords: " .. coordsString)
    cb('ok')
end)

-- Execute Command
RegisterNUICallback('executeCommand', function(data, cb)
    local command = data.command
    DebugPrint("Executing command: " .. command)

    if command == 'announce' then
        TriggerServerEvent('n3x-adminmenu:server:announce', data.message)

    elseif command == 'changeplate' then
        local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
        if vehicle ~= 0 then
            SetVehicleNumberPlateText(vehicle, data.plate)
            QBCore.Functions.Notify('Plate changed to: ' .. data.plate, 'success')
        else
            QBCore.Functions.Notify('You must be in a vehicle!', 'error')
        end

    elseif command == 'clothes' then
        -- Trigger QB clothing menu
        TriggerEvent('qb-clothing:client:openMenu')

    elseif command == 'createjob' then
        TriggerServerEvent('n3x-adminmenu:server:createJobStash', data.jobname, data.size)

    elseif command == 'fixvehicle' then
        local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
        if vehicle ~= 0 then
            SetVehicleFixed(vehicle)
            SetVehicleDeformationFixed(vehicle)
            SetVehicleUndriveable(vehicle, false)
            SetVehicleEngineOn(vehicle, true, true)
            SetVehicleBodyHealth(vehicle, 1000.0)
            SetVehicleEngineHealth(vehicle, 1000.0)
            QBCore.Functions.Notify('Vehicle repaired!', 'success')
        else
            QBCore.Functions.Notify('You must be in a vehicle!', 'error')
        end

    elseif command == 'freeze' then
        TriggerServerEvent('n3x-adminmenu:server:freezePlayer', tonumber(data.playerid))

    elseif command == 'givecar' then
        TriggerServerEvent('n3x-adminmenu:server:giveVehicle', tonumber(data.playerid), data.vehicle)

    elseif command == 'giveitem' then
        TriggerServerEvent('n3x-adminmenu:server:giveItem', tonumber(data.playerid), data.item, tonumber(data.amount))

    elseif command == 'givejob' then
        TriggerServerEvent('n3x-adminmenu:server:setJob', tonumber(data.playerid), data.job, tonumber(data.grade))

    elseif command == 'givemoney' then
        TriggerServerEvent('n3x-adminmenu:server:giveMoney', tonumber(data.playerid), data.moneytype, tonumber(data.amount))

    elseif command == 'godmode' then
        ToggleGodMode()

    elseif command == 'invisible' then
        ToggleInvisible()

    elseif command == 'kick' then
        TriggerServerEvent('n3x-adminmenu:server:kickPlayer', tonumber(data.playerid), data.reason or 'No reason provided')

    elseif command == 'ban' then
        TriggerServerEvent('n3x-adminmenu:server:banPlayer', tonumber(data.playerid), data.reason or 'No reason provided', tonumber(data.duration))

    elseif command == 'noclip' then
        ToggleNoClip()

    elseif command == 'teleport' then
        if data.tptype == 'coords' and data.coords then
            -- Parse comma-separated coordinates
            local coords = {}
            for num in string.gmatch(data.coords, "[^,]+") do
                table.insert(coords, tonumber(num))
            end

            if #coords >= 3 then
                SetEntityCoords(PlayerPedId(), coords[1], coords[2], coords[3], false, false, false, false)
                QBCore.Functions.Notify('Teleported to coordinates!', 'success')
            else
                QBCore.Functions.Notify('Invalid coordinates format! Use: x, y, z', 'error')
            end
        elseif data.tptype == 'player' then
            TriggerServerEvent('n3x-adminmenu:server:teleportToPlayer', tonumber(data.playerid))
        elseif data.tptype == 'waypoint' then
            TeleportToWaypoint()
        end

    elseif command == 'revive' then
        TriggerServerEvent('n3x-adminmenu:server:revivePlayer', tonumber(data.playerid))

    elseif command == 'heal' then
        if data.target == 'self' then
            local ped = PlayerPedId()
            SetEntityHealth(ped, GetEntityMaxHealth(ped))
            QBCore.Functions.Notify('You have been healed!', 'success')
        else
            TriggerServerEvent('n3x-adminmenu:server:healPlayer', tonumber(data.playerid))
        end

    elseif command == 'armor' then
        if data.target == 'self' then
            SetPedArmour(PlayerPedId(), 100)
            QBCore.Functions.Notify('Armor added!', 'success')
        else
            TriggerServerEvent('n3x-adminmenu:server:giveArmor', tonumber(data.playerid))
        end

    elseif command == 'weapon' then
        local targetId = data.target == 'self' and PlayerId() or tonumber(data.playerid)
        TriggerServerEvent('n3x-adminmenu:server:giveWeapon', targetId, data.weapon, tonumber(data.ammo))

    elseif command == 'clearinv' then
        TriggerServerEvent('n3x-adminmenu:server:clearInventory', tonumber(data.playerid))

    elseif command == 'spectate' then
        TriggerServerEvent('n3x-adminmenu:server:spectatePlayer', tonumber(data.playerid))

    elseif command == 'bringplayer' then
        TriggerServerEvent('n3x-adminmenu:server:bringPlayer', tonumber(data.playerid))

    elseif command == 'gotoplayer' then
        TriggerServerEvent('n3x-adminmenu:server:gotoPlayer', tonumber(data.playerid))
    end

    cb('ok')
end)

-- NoClip Variables (from qbx_adminmenu)
local noclipCam = nil
local speed = 1.0
local maxSpeed = 32.0
local minY, maxY = -150.0, 160.0
local inputRotEnabled = false
local disableControls = { 32, 33, 34, 35, 36, 12, 13, 14, 15, 16, 17 }

-- NoClip Camera Thread
local function checkInputRotation()
    CreateThread(function()
        while inputRotEnabled do
            while not noclipCam or IsPauseMenuActive() do Wait(0) end
            local axisX = GetDisabledControlNormal(0, 1)
            local axisY = GetDisabledControlNormal(0, 2)
            local sensitivity = GetProfileSetting(14) * 2

            if GetProfileSetting(15) == 0 then
                sensitivity = -sensitivity
            end

            if math.abs(axisX) > 0 or math.abs(axisY) > 0 then
                local rotation = GetCamRot(noclipCam, 2)
                local rotz = rotation.z + (axisX * sensitivity)
                local yValue = axisY * sensitivity
                local rotx = rotation.x
                if rotx + yValue > minY and rotx + yValue < maxY then
                    rotx = rotation.x + yValue
                end

                SetCamRot(noclipCam, rotx, rotation.y, rotz, 2)
            end
            Wait(0)
        end
    end)
end

-- NoClip Movement Thread
local function toggleNoclipThread()
    CreateThread(function()
        local inVehicle = false
        local ent

        if IsPedInAnyVehicle(PlayerPedId(), false) then
            inVehicle = true
            ent = GetVehiclePedIsIn(PlayerPedId(), false)
        else
            ent = PlayerPedId()
        end

        local pos = GetEntityCoords(ent)
        local rot = GetEntityRotation(ent)
        noclipCam = CreateCamWithParams('DEFAULT_SCRIPTED_CAMERA', pos.x, pos.y, pos.z, 0.0, 0.0, rot.z, 75.0, true, 2)
        AttachCamToEntity(noclipCam, ent, 0.0, 0.0, 0.0, true)
        RenderScriptCams(true, false, 3000, true, false)
        FreezeEntityPosition(ent, true)
        SetEntityCollision(ent, false, false)
        SetEntityAlpha(ent, 0, false)
        SetPedCanRagdoll(PlayerPedId(), false)
        SetEntityVisible(ent, false, false)

        if not inVehicle then
            ClearPedTasksImmediately(PlayerPedId())
        end

        if inVehicle then
            FreezeEntityPosition(PlayerPedId(), true)
            SetEntityCollision(PlayerPedId(), false, false)
            SetEntityAlpha(PlayerPedId(), 0, false)
            SetEntityVisible(PlayerPedId(), false, false)
        end

        while noClipEnabled do
            Wait(0)
            local _, fv = GetCamMatrix(noclipCam)

            -- Speed controls
            if IsDisabledControlPressed(2, 17) then -- Scroll Up
                speed = math.min(speed + 0.1, maxSpeed)
            elseif IsDisabledControlPressed(2, 16) then -- Scroll Down
                speed = math.max(0.1, speed - 0.1)
            end

            local multiplier = 1.0
            if IsDisabledControlPressed(2, 209) then -- Left Shift
                multiplier = 2.0
            elseif IsDisabledControlPressed(2, 19) then -- Left Alt
                multiplier = 4.0
            elseif IsDisabledControlPressed(2, 36) then -- Left CTRL
                multiplier = 0.25
            end

            -- Forward/Backward (W/S)
            if IsDisabledControlPressed(2, 32) then -- W
                local setPos = GetEntityCoords(ent) + fv * (speed * multiplier)
                SetEntityCoordsNoOffset(ent, setPos.x, setPos.y, setPos.z, false, false, false)
                if not inVehicle then
                    SetEntityCoordsNoOffset(PlayerPedId(), setPos.x, setPos.y, setPos.z, false, false, false)
                end
            elseif IsDisabledControlPressed(2, 33) then -- S
                local setPos = GetEntityCoords(ent) - fv * (speed * multiplier)
                SetEntityCoordsNoOffset(ent, setPos.x, setPos.y, setPos.z, false, false, false)
                if not inVehicle then
                    SetEntityCoordsNoOffset(PlayerPedId(), setPos.x, setPos.y, setPos.z, false, false, false)
                end
            end

            -- Left/Right (A/D)
            if IsDisabledControlPressed(2, 34) then -- A
                local setPos = GetOffsetFromEntityInWorldCoords(ent, -speed * multiplier, 0.0, 0.0)
                SetEntityCoordsNoOffset(ent, setPos.x, setPos.y, setPos.z, false, false, false)
                if not inVehicle then
                    SetEntityCoordsNoOffset(PlayerPedId(), setPos.x, setPos.y, setPos.z, false, false, false)
                end
            elseif IsDisabledControlPressed(2, 35) then -- D
                local setPos = GetOffsetFromEntityInWorldCoords(ent, speed * multiplier, 0.0, 0.0)
                SetEntityCoordsNoOffset(ent, setPos.x, setPos.y, setPos.z, false, false, false)
                if not inVehicle then
                    SetEntityCoordsNoOffset(PlayerPedId(), setPos.x, setPos.y, setPos.z, false, false, false)
                end
            end

            -- Up/Down (Q/E)
            if IsDisabledControlPressed(2, 51) then -- E
                local setPos = GetOffsetFromEntityInWorldCoords(ent, 0.0, 0.0, multiplier * speed / 2)
                SetEntityCoordsNoOffset(ent, setPos.x, setPos.y, setPos.z, false, false, false)
                if not inVehicle then
                    SetEntityCoordsNoOffset(PlayerPedId(), setPos.x, setPos.y, setPos.z, false, false, false)
                end
            elseif IsDisabledControlPressed(2, 52) then -- Q
                local setPos = GetOffsetFromEntityInWorldCoords(ent, 0.0, 0.0, multiplier * -speed / 2)
                SetEntityCoordsNoOffset(ent, setPos.x, setPos.y, setPos.z, false, false, false)
                if not inVehicle then
                    SetEntityCoordsNoOffset(PlayerPedId(), setPos.x, setPos.y, setPos.z, false, false, false)
                end
            end

            local camRot = GetCamRot(noclipCam, 2)
            SetEntityHeading(ent, (360 + camRot.z) % 360)
            SetEntityVisible(ent, false, false)

            if inVehicle then
                SetEntityVisible(PlayerPedId(), false, false)
            end

            for i = 1, #disableControls do
                DisableControlAction(2, disableControls[i], true)
            end

            DisablePlayerFiring(PlayerId(), true)
        end

        -- Cleanup
        DestroyCam(noclipCam, false)
        noclipCam = nil
        RenderScriptCams(false, false, 3000, true, false)
        FreezeEntityPosition(ent, false)
        SetEntityCollision(ent, true, true)
        ResetEntityAlpha(ent)
        SetPedCanRagdoll(PlayerPedId(), true)
        SetEntityVisible(ent, not invisibleEnabled, false)
        ClearPedTasksImmediately(PlayerPedId())

        if inVehicle then
            FreezeEntityPosition(PlayerPedId(), false)
            SetEntityCollision(PlayerPedId(), true, true)
            ResetEntityAlpha(PlayerPedId())
            SetEntityVisible(PlayerPedId(), true, false)
            SetPedIntoVehicle(PlayerPedId(), ent, -1)
        end
    end)
end

-- Toggle NoClip
function ToggleNoClip()
    noClipEnabled = not noClipEnabled
    inputRotEnabled = noClipEnabled

    if noClipEnabled then
        QBCore.Functions.Notify('NoClip ON - Scroll: Speed | Shift: Fast | Alt: Faster | Ctrl: Slow', 'success', 4000)
        DebugPrint("NoClip enabled")
        toggleNoclipThread()
        checkInputRotation()
    else
        QBCore.Functions.Notify('NoClip OFF', 'error')
        DebugPrint("NoClip disabled")
    end
end

-- Toggle God Mode
function ToggleGodMode()
    godModeEnabled = not godModeEnabled
    local ped = PlayerPedId()

    if godModeEnabled then
        SetEntityInvincible(ped, true)
        QBCore.Functions.Notify('God Mode enabled!', 'success')
        DebugPrint("God Mode enabled")
    else
        SetEntityInvincible(ped, false)
        QBCore.Functions.Notify('God Mode disabled!', 'error')
        DebugPrint("God Mode disabled")
    end
end

-- Toggle Invisible
function ToggleInvisible()
    invisibleEnabled = not invisibleEnabled
    local ped = PlayerPedId()

    if invisibleEnabled then
        SetEntityVisible(ped, false, false)
        QBCore.Functions.Notify('Invisibility enabled!', 'success')
        DebugPrint("Invisibility enabled")
    else
        SetEntityVisible(ped, true, false)
        QBCore.Functions.Notify('Invisibility disabled!', 'error')
        DebugPrint("Invisibility disabled")
    end
end

-- Teleport to Waypoint
function TeleportToWaypoint()
    local waypoint = GetFirstBlipInfoId(8)

    if DoesBlipExist(waypoint) then
        local coords = GetBlipInfoIdCoord(waypoint)
        local ped = PlayerPedId()
        local vehicle = GetVehiclePedIsIn(ped, false)

        -- Find ground Z coordinate
        local found, groundZ = GetGroundZFor_3dCoord(coords.x, coords.y, 1000.0, false)

        if found then
            coords = vector3(coords.x, coords.y, groundZ)
        end

        if vehicle ~= 0 then
            SetEntityCoords(vehicle, coords.x, coords.y, coords.z + 1.0, false, false, false, false)
        else
            SetEntityCoords(ped, coords.x, coords.y, coords.z + 1.0, false, false, false, false)
        end

        QBCore.Functions.Notify('Teleported to waypoint!', 'success')
        DebugPrint("Teleported to waypoint")
    else
        QBCore.Functions.Notify('No waypoint set!', 'error')
        DebugPrint("No waypoint set")
    end
end

-- Client Events
RegisterNetEvent('n3x-adminmenu:client:freeze', function()
    local ped = PlayerPedId()
    local frozen = IsEntityPositionFrozen(ped)
    FreezeEntityPosition(ped, not frozen)

    if not frozen then
        QBCore.Functions.Notify('You have been frozen!', 'error')
    else
        QBCore.Functions.Notify('You have been unfrozen!', 'success')
    end
    DebugPrint("Freeze toggled: " .. tostring(not frozen))
end)

RegisterNetEvent('n3x-adminmenu:client:spawnVehicle', function(model)
    local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)
    local heading = GetEntityHeading(ped)

    DebugPrint("Spawning vehicle: " .. model)

    QBCore.Functions.SpawnVehicle(model, function(veh)
        SetVehicleNumberPlateText(veh, "ADMIN"..tostring(math.random(1000, 9999)))
        SetEntityHeading(veh, heading)
        TaskWarpPedIntoVehicle(ped, veh, -1)
        TriggerEvent("vehiclekeys:client:SetOwner", QBCore.Functions.GetPlate(veh))
        SetVehicleEngineOn(veh, true, true)
        QBCore.Functions.Notify('Vehicle spawned!', 'success')
        DebugPrint("Vehicle spawned successfully")
    end, coords, true)
end)

RegisterNetEvent('n3x-adminmenu:client:teleport', function(coords)
    local ped = PlayerPedId()
    SetEntityCoords(ped, coords.x, coords.y, coords.z, false, false, false, false)
    QBCore.Functions.Notify('Teleported!', 'success')
    DebugPrint("Teleported to coords")
end)

RegisterNetEvent('n3x-adminmenu:client:heal', function()
    local ped = PlayerPedId()
    SetEntityHealth(ped, GetEntityMaxHealth(ped))
    QBCore.Functions.Notify('You have been healed!', 'success')
    DebugPrint("Player healed")
end)

RegisterNetEvent('n3x-adminmenu:client:armor', function()
    SetPedArmour(PlayerPedId(), 100)
    QBCore.Functions.Notify('Armor added!', 'success')
    DebugPrint("Armor given")
end)

RegisterNetEvent('n3x-adminmenu:client:weapon', function(weapon, ammo)
    local ped = PlayerPedId()
    GiveWeaponToPed(ped, GetHashKey(weapon), ammo, false, true)
    QBCore.Functions.Notify('Weapon received!', 'success')
    DebugPrint("Weapon given: " .. weapon)
end)

RegisterNetEvent('n3x-adminmenu:client:spectate', function(targetId)
    local playerPed = PlayerPedId()
    local targetPed = GetPlayerPed(GetPlayerFromServerId(targetId))

    if targetPed then
        NetworkSetInSpectatorMode(true, targetPed)
        QBCore.Functions.Notify('Spectating player', 'success')
        DebugPrint("Spectating player: " .. targetId)
    end
end)

-- ESC to close menu
CreateThread(function()
    while true do
        Wait(0)
        if isMenuOpen then
            DisableControlAction(0, 1, true) -- Disable mouse look
            DisableControlAction(0, 2, true) -- Disable mouse look
            DisableControlAction(0, 24, true) -- Disable attack
            DisableControlAction(0, 25, true) -- Disable aim
        else
            Wait(500)
        end
    end
end)

-- Debug info on resource start
CreateThread(function()
    Wait(2000)
    DebugPrint("=================================")
    DebugPrint("N3X Admin Menu Loaded")
    DebugPrint("Command: /" .. (Config.Command or 'adminmenu'))
    DebugPrint("Keybind: " .. (Config.UseKeybind and Config.Keybind or "Disabled"))
    DebugPrint("ACE Mode: " .. tostring(Config.UseAce))
    DebugPrint("Debug Mode: " .. tostring(Config.Debug))
    DebugPrint("=================================")
end)
