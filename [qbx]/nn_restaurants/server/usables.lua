function clamp(value, min, max)
    if value < min then
        return min
    elseif value > max then
        return max
    else
        return value
    end
end

function AddHunger(source, amount)
    if Config.Framework == 'qb' or Config.Framework == 'qbx' then
        QBCore = exports['qb-core']:GetCoreObject()
        local player = QBCore.Functions.GetPlayer(source)
        if not player then return end
        local playerData = player.PlayerData
        local newHunger = (playerData.metadata.hunger or 0) + amount
        player.Functions.SetMetaData('hunger', clamp(newHunger, 0, 100))
        TriggerClientEvent('hud:client:UpdateNeeds', source, newHunger, playerData.metadata.thirst)
        return newHunger
    elseif Config.Framework == 'esx' then
        ESX = exports['es_extended']:getSharedObject()
        local clampIT = clamp(amount, 0, 200000)
        local levelForEsx = clampIT * 2000
        TriggerClientEvent('esx_status:add', source, 'hunger', levelForEsx)
        return levelForEsx
    else
        print('Please setup your own framework code in server/usables.lua')
    end
end

function AddThirst(source, amount)
    if Config.Framework == 'qb' or Config.Framework == 'qbx' then
        QBCore = exports['qb-core']:GetCoreObject()
        local player = QBCore.Functions.GetPlayer(source)
        if not player then return end
        local playerData = player.PlayerData
        local newThirst = (playerData.metadata.thirst or 0) + amount
        player.Functions.SetMetaData('thirst', clamp(newThirst, 0, 100))
        TriggerClientEvent('hud:client:UpdateNeeds', source, playerData.metadata.hunger, newThirst)
        return newThirst
    elseif Config.Framework == 'esx' then
        ESX = exports['es_extended']:getSharedObject()
        local clampIT = clamp(amount, 0, 200000)
        local levelForEsx = clampIT * 2000
        TriggerClientEvent('esx_status:add', source, 'thirst', levelForEsx)
        return levelForEsx
    else
        print('Please setup your own framework code in server/usables.lua')
    end
end
Wait(1000)
for k, v in pairs(Config.Usables) do
    bridge.framework.createUsableItem(k, function(source, item)
        local Player = bridge.framework.getPlayerData(source)
        if v.type == 'food' then
            AddHunger(source, v.hunger)
        elseif v.type == 'drink' then
            AddThirst(source, v.thirst)
        end

        TriggerClientEvent('nn_food:eatingAnim', source, v.anim, v.type)
    end)
end