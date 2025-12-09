-- Server-side framework bridge for QBX/QB-Core

-- Get QBCore
local QBCore = exports['qb-core']:GetCoreObject()

-- Create usable item
bridge.framework.createUsableItem = function(itemName, callback)
    QBCore.Functions.CreateUseableItem(itemName, function(source, item)
        callback(source, item)
    end)
end

-- Get player data
bridge.framework.getPlayerData = function(source)
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return nil end

    return {
        source = source,
        identifier = Player.PlayerData.citizenid,
        name = {
            first = Player.PlayerData.charinfo.firstname,
            last = Player.PlayerData.charinfo.lastname,
            full = Player.PlayerData.charinfo.firstname .. ' ' .. Player.PlayerData.charinfo.lastname
        },
        job = {
            name = Player.PlayerData.job.name,
            label = Player.PlayerData.job.label,
            grade = Player.PlayerData.job.grade.level,
            onduty = Player.PlayerData.job.onduty
        },
        money = {
            cash = Player.PlayerData.money.cash or 0,
            bank = Player.PlayerData.money.bank or 0
        },
        permission = Player.PlayerData.permission or 'user'
    }
end

-- Add money to player
bridge.framework.addMoney = function(source, moneyType, amount)
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return false end

    Player.Functions.AddMoney(moneyType, amount)
    return true
end

-- Remove money from player
bridge.framework.removeMoney = function(source, moneyType, amount)
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return false end

    return Player.Functions.RemoveMoney(moneyType, amount)
end
