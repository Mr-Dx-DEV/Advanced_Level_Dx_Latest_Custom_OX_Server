-- jg-dealerships | universal NUI focus guard
-- Fixes stuck mouse after closing dealership UIs (management/showroom/direct sales/etc.)

local function ReleaseUIFocus()
    pcall(function() SetNuiFocus(false, false) end)
    pcall(function() SetNuiFocusKeepInput(false) end)
    -- Best-effort hide if the UI listens to a generic type
    pcall(function() SendNUIMessage({ type = "hide" }) end)
end

local function ArmKeepInput()
    -- Allow game controls while NUI is focused so ESC/BACKSPACE can be caught
    pcall(function() SetNuiFocusKeepInput(true) end)
end

-- Register a wide net of "close-ish" NUI callbacks used by many menus
local CLOSE_NAMES = {
    -- generic
    "close", "hide", "escape", "closeUI", "exit", "back", "cancel", "dismiss",
    -- likely per-view
    "close-admin", "close-management", "close-showroom", "close-direct-sale",
    "close-finance", "close-employees", "close-purchase", "close-sell-vehicle",
    "admin:close", "management:close", "showroom:close", "directsale:close",
    "finance:close", "employees:close", "purchase:close", "sell:close",
}

for _, name in ipairs(CLOSE_NAMES) do
    RegisterNUICallback(name, function(_, cb)
        ReleaseUIFocus()
        if cb then cb(1) end
    end)
end

-- Exported event so other scripts can force-close if needed
RegisterNetEvent("jg-dealerships:client:force-close-ui", function()
    ReleaseUIFocus()
end)

-- Panic command (manual)
RegisterCommand("fixcursor", function()
    ReleaseUIFocus()
end, false)

-- Optional keymapping for folks who like bindings
RegisterKeyMapping("fixcursor", "Release NUI focus (cursor stuck)", "keyboard", "F11")

-- Watchdog: Disabled aggressive ESC/BACKSPACE interception to prevent UI bugs
-- UIs should handle their own close events properly
-- This thread only manages SetNuiFocusKeepInput cleanup
CreateThread(function()
    local lastFocused = false
    while true do
        if IsNuiFocused() then
            if not lastFocused then
                lastFocused = true
            end
        elseif lastFocused then
            -- Lost focus, clean up keepInput
            pcall(function() SetNuiFocusKeepInput(false) end)
            lastFocused = false
        end
        Wait(100)
    end
end)

-- Safety on resource stop
AddEventHandler("onResourceStop", function(res)
    if res ~= GetCurrentResourceName() then return end
    ReleaseUIFocus()
end)
