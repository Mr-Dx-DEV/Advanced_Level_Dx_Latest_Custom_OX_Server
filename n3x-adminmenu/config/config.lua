Config = {}

-- Admin Menu Command
Config.Command = 'adminmenu'

-- Admin Groups (for QB-Core)
-- Uses QB-Core permissions: 'god', 'admin', 'mod'
Config.AdminGroups = {
    'god',
    'admin'
}

-- Use ACE Permissions instead of QB permissions
Config.UseAce = true
Config.AcePermission = 'n3x.admin'

-- Keybind to open menu (optional)
Config.UseKeybind = true
Config.Keybind = 'F10'

-- Notifications
Config.Notifications = {
    ['no_permission'] = 'You do not have permission to use this!',
    ['success'] = 'Action completed successfully!',
    ['error'] = 'An error occurred!',
    ['player_not_found'] = 'Player not found!',
    ['invalid_input'] = 'Invalid input!',
}

-- Framework
Config.Framework = 'QB' -- QB-Core

-- Debug Mode (prints to console for troubleshooting)
Config.Debug = true

-- Discord Webhook for logging (optional)
Config.Webhook = {
    enabled = false,
    url = 'YOUR_WEBHOOK_URL_HERE',
    color = 3447003, -- Blue
    title = 'N3X Admin Menu Logs',
    footer = 'N3X Admin Menu',
}

-- Commands that require confirmation
Config.RequireConfirmation = {
    'ban',
    'clearinv',
    'kick'
}

-- Revive Event (change based on your ambulance script)
Config.ReviveEvent = 'hospital:client:Revive' -- Default QB-Core
-- Config.ReviveEvent = 'qb-ambulancejob:client:Revive' -- Alternative

return Config
