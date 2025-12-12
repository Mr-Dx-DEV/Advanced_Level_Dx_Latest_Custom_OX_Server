local isClosed = false

local function safeShutdown()
    if not isClosed then
        isClosed = true
        ShutdownLoadingScreenNui()
    end
end

CreateThread(function()
    while not NetworkIsSessionActive() do Wait(500) end
    Wait(1200)
    safeShutdown()
end)

CreateThread(function()
    local ok, QBCore = pcall(function() return exports['qb-core']:GetCoreObject() end)
    if ok and QBCore then
        RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
            safeShutdown()
        end)
    end
end)

SetTimeout(30000, function() safeShutdown() end)
