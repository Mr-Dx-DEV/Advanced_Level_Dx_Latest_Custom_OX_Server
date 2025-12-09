-- Client-side framework bridge for QBX/QB-Core

-- Get QBCore
local QBCore = exports['qb-core']:GetCoreObject()

-- Get player data (not commonly used on client, but included for compatibility)
bridge.framework.getPlayerData = function()
    return QBCore.Functions.GetPlayerData()
end
