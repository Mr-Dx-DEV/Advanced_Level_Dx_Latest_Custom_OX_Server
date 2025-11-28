local loaded = false

local function CloseLoadingScreen()
    if not loaded then
        loaded = true
        SendNUIMessage({type = 'forceClose'})
        ShutdownLoadingScreenNui()
        SetNuiFocus(false, false)
        print("^2[Loading Screen] Closed successfully^0")
    end
end

-- OX Core - Character loaded event
RegisterNetEvent('ox:playerLoaded', function()
    Citizen.Wait(500)
    CloseLoadingScreen()
end)

-- ESX - Character loaded event
RegisterNetEvent('esx:playerLoaded', function()
    Citizen.Wait(500)
    CloseLoadingScreen()
end)

-- QB Core - Character loaded event
RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    Citizen.Wait(500)
    CloseLoadingScreen()
end)

-- Handle initial player spawn (fallback)
AddEventHandler("playerSpawned", function()
    Citizen.Wait(2000)
    CloseLoadingScreen()
end)

-- Network activation event (works for most frameworks)
AddEventHandler('gameEventTriggered', function(name, args)
    if name == 'CEventNetworkPlayerActivate' then
        Citizen.Wait(3000)
        CloseLoadingScreen()
    end
end)

-- Start loading screen
Citizen.CreateThread(function()
    SendNUIMessage({type = 'startLoading'})
    print("^3[Loading Screen] Started^0")
end)

-- Safety fallback timer (30 seconds max)
Citizen.CreateThread(function()
    local maxWait = 30000
    local waited = 0

    while not loaded and waited < maxWait do
        Citizen.Wait(1000)
        waited = waited + 1000
    end

    if not loaded then
        print("^1[Loading Screen] Force closed after 30 seconds^0")
        CloseLoadingScreen()
    end
end)