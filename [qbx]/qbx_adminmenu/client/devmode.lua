-- Dev Mode System
local devModeEnabled = false
local devModeSpeed = 1.0

-- Toggle Dev Mode
local function toggleDevMode()
    devModeEnabled = not devModeEnabled

    if devModeEnabled then
        SendNUIMessage({
            action = 'showDevHUD'
        })
        exports.qbx_core:Notify('Dev Mode Enabled - F1-F6 Active', 'success', 3000)
    else
        SendNUIMessage({
            action = 'hideDevHUD'
        })
        exports.qbx_core:Notify('Dev Mode Disabled', 'error', 2000)
    end
end

-- Register Dev Mode Toggle Command
RegisterCommand('devmode', function()
    if not exports.qbx_core:HasPermission('admin') then
        exports.qbx_core:Notify('No permission', 'error')
        return
    end
    toggleDevMode()
end, false)

-- F1 - NoClip Toggle
RegisterCommand('+devnoclip', function()
    if not devModeEnabled then return end
    if not exports.qbx_core:HasPermission('admin') then return end
    TriggerEvent('qbx_admin:client:ToggleNoClip')
end, false)
RegisterCommand('-devnoclip', function() end, false)
RegisterKeyMapping('+devnoclip', 'Dev Mode: NoClip', 'keyboard', 'F1')

-- F2 - God Mode Toggle
RegisterCommand('+devgod', function()
    if not devModeEnabled then return end
    if not exports.qbx_core:HasPermission('admin') then return end

    local godmode = not GetPlayerInvincible(cache.playerId)
    SetPlayerInvincible(cache.playerId, godmode)

    if godmode then
        exports.qbx_core:Notify('God Mode ON', 'success', 2000)
    else
        exports.qbx_core:Notify('God Mode OFF', 'error', 2000)
    end
end, false)
RegisterCommand('-devgod', function() end, false)
RegisterKeyMapping('+devgod', 'Dev Mode: God Mode', 'keyboard', 'F2')

-- F3 - Invisible Toggle
RegisterCommand('+devinvisible', function()
    if not devModeEnabled then return end
    if not exports.qbx_core:HasPermission('admin') then return end

    local visible = IsEntityVisible(cache.ped)
    SetEntityVisible(cache.ped, not visible, false)

    if visible then
        exports.qbx_core:Notify('Invisible ON', 'success', 2000)
    else
        exports.qbx_core:Notify('Invisible OFF', 'error', 2000)
    end
end, false)
RegisterCommand('-devinvisible', function() end, false)
RegisterKeyMapping('+devinvisible', 'Dev Mode: Invisible', 'keyboard', 'F3')

-- F5 - Revive Self
RegisterCommand('+devrevive', function()
    if not devModeEnabled then return end
    if not exports.qbx_core:HasPermission('admin') then return end

    TriggerEvent('qbx_medical:client:playerRevived')
    exports.qbx_core:Notify('You have been revived!', 'success', 2000)
end, false)
RegisterCommand('-devrevive', function() end, false)
RegisterKeyMapping('+devrevive', 'Dev Mode: Revive Self', 'keyboard', 'F5')

-- F6 - Fix Vehicle
RegisterCommand('+devfixveh', function()
    if not devModeEnabled then return end
    if not exports.qbx_core:HasPermission('admin') then return end

    if cache.vehicle then
        SetVehicleFixed(cache.vehicle)
        SetVehicleDeformationFixed(cache.vehicle)
        SetVehicleUndriveable(cache.vehicle, false)
        SetVehicleEngineOn(cache.vehicle, true, true)
        SetVehicleBodyHealth(cache.vehicle, 1000.0)
        SetVehicleEngineHealth(cache.vehicle, 1000.0)
        SetVehiclePetrolTankHealth(cache.vehicle, 1000.0)
        exports.qbx_core:Notify('Vehicle Fixed!', 'success', 2000)
    else
        exports.qbx_core:Notify('You must be in a vehicle!', 'error', 2000)
    end
end, false)
RegisterCommand('-devfixveh', function() end, false)
RegisterKeyMapping('+devfixveh', 'Dev Mode: Fix Vehicle', 'keyboard', 'F6')

-- Update NoClip Speed Display
CreateThread(function()
    while true do
        if devModeEnabled and noclipEnabled then
            local currentSpeed = speed or 1.0
            SendNUIMessage({
                action = 'updateSpeed',
                speed = currentSpeed
            })
        end
        Wait(100)
    end
end)
