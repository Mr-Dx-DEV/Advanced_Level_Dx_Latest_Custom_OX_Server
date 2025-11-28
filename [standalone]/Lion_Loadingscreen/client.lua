local loaded = false

AddEventHandler("playerSpawned", function()
    if not loaded then
        SendNUIMessage({type = 'forceClose'})
        ShutdownLoadingScreenNui()
        SetNuiFocus(false, false)
        loaded = true
    end
end)

Citizen.CreateThread(function()
    SendNUIMessage({type = 'startLoading'})
end)