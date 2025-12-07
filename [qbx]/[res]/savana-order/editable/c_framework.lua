Framework = {}

function Framework:GetIdentifier()
    if Config.Framework == "qb" then
        return FrameworkObject.Functions.GetPlayerData().citizenid
    elseif Config.Framework == "esx" then
        return FrameworkObject.GetPlayerData().identifier
    else
        -- Write your own code.
        return nil
    end
end

RegisterNetEvent('savana-order:client:sendNotify')
AddEventHandler('savana-order:client:sendNotify', function(msg, type)
    Framework:Notify(msg, type)
end)

function Framework:Notify(msg, type)
    SendNUIMessage({
        action = "notify",
        type = type,
        message = msg
    })
    -- if Config.Framework == "qb" then
    --     FrameworkObject.Functions.Notify(msg, type)
    -- elseif Config.Framework == "esx" then
    --     TriggerEvent('esx:showNotification', source, msg)
    -- else
    --     -- Write your own code.
    --     return nil
    -- end
end