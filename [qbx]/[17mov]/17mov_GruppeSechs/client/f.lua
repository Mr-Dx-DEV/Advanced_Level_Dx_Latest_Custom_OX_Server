local old = OpenDutyMenu
OpenDutyMenu = function()
    TriggerServerEvent(GetCurrentResourceName() .. ":tryStartJob")
end

RegisterNetEvent(GetCurrentResourceName() .. ":startJob", function()
    old()
end)

RegisterNUICallback('trySendRequest', function(data, cb)
    print("try")
    TriggerServerEvent(GetCurrentResourceName() .. ":tryInvitePlayer", data.id)
    cb("ok")
end)

RegisterNetEvent(GetCurrentResourceName() .. ":doSendRequest", function(id)
    SendNUIMessage({
        id = id,
        action = "doSendRequest"
    })
end)
-- local oldcveh = CreateVehicle

-- CreateVehicle = function (a, b, c, d)
--     TriggerServerEvent("ac:getSpawnPoint")
--     local masina = oldcveh(GetHashKey(a), b, c ,d)
--     SetNetworkIdCanMigrate(masina, true)
--     NetworkFadeInEntity(masina, 0)

--     DecorSetInt(masina, "vOwner", tonumber(LocalPlayer.state.user_id))
--     DecorSetInt(masina, "vModel", Config.JobVehicleModel)
--     SetPedIntoVehicle(PlayerPedId(), masina, -1)
--     return masina
-- end