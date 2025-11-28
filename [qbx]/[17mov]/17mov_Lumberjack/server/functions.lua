local Core
Config.Framework = "vRP"
local Proxy = module("lib/Proxy")
local Tunnel = module("lib/Tunnel")
local vRP = Proxy.getInterface("vRP")
TriggerEvent("__cfx_export_qb-core_GetCoreObject", function(getCore)
    Core = getCore()
    Config.Framework = "QBCore"
end)

TriggerEvent("__cfx_export_es_extended_getSharedObject", function(getCore)
    Core = getCore()
    Config.Framework = "ESX"
end)

CreateThread(function()
    Wait(1000)
    if Core == nil then
        TriggerEvent("esx:getSharedObject", function(obj)
            Core = obj
            Config.Framework = "ESX"
        end)
    end
end)

local cachedNames = {}
function GetPlayerIdentity(source)
    if cachedNames[source] ~= nil then
        return cachedNames[source]
    end

    if Config.Framework == "QBCore" then
        local xPlayer = Core.Functions.GetPlayer(source)

        local timeout = 50
        while xPlayer == nil and timeout > 0 do
            Wait(100)
            xPlayer = Core.Functions.GetPlayer(source)
            timeout = timeout - 1
        end

        if xPlayer == nil then return "Example Name" end

        cachedNames[source] = xPlayer.PlayerData.charinfo.firstname .. " " .. xPlayer.PlayerData.charinfo.lastname
    elseif Config.Framework == "ESX" then
        local xPlayer = Core.GetPlayerFromId(source)

        local timeout = 50
        while xPlayer == nil and timeout > 0 do
            Wait(100)
            xPlayer = Core.GetPlayerFromId(source)
            timeout = timeout - 1
        end

        if xPlayer == nil then return "Example Name" end

        cachedNames[source] = xPlayer.getName()
    else
        cachedNames[source] = GetPlayerName(source)
    end

    return cachedNames[source]
end

function Notify(source, msg)
    if Config.UseBuiltInNotifications then
        TriggerClientEvent("17mov_DrawDefaultNotification"..GetCurrentResourceName(), source, msg)
    else
        if Config.Framework == "QBCore" then
            TriggerClientEvent("QBCore:Notify", source, msg)
        elseif Config.Framework == "ESX" then
            TriggerClientEvent("esx:showNotification", source, msg)
        else
            TriggerClientEvent('vRP:Notif', source, msg, 'info', 'Job', 5000)
        end
    end
end

function Pay(source, amount, logsItem, planksItems, chipsItems, lobbySize)
    if Config.Framework == "QBCore" then
        local Player = Core.Functions.GetPlayer(source)
        if Player ~= nil and Player.Functions ~= nil then
            Player.Functions.AddMoney("cash", amount)
        end

        for itemName, count in pairs(logsItem) do
            if count >= 1 then
                Player.Functions.AddItem(itemName, count)
            end
        end

        for itemName, count in pairs(planksItems) do
            if count >= 1 then
                Player.Functions.AddItem(itemName, count)
            end
        end

        for itemName, count in pairs(chipsItems) do
            if count >= 1 then
                Player.Functions.AddItem(itemName, count)
            end
        end
    elseif Config.Framework == "ESX" then
        local xPlayer = Core.GetPlayerFromId(source)
        if xPlayer ~= nil and xPlayer.addMoney ~= nil then
            xPlayer.addMoney(amount)
        end

        for itemName, count in pairs(logsItem) do
            if count >= 1 then
                xPlayer.addInventoryItem(itemName, count)
            end
        end

        for itemName, count in pairs(planksItems) do
            if count >= 1 then
                xPlayer.addInventoryItem(itemName, count)
            end
        end

        for itemName, count in pairs(chipsItems) do
            if count >= 1 then
                xPlayer.addInventoryItem(itemName, count)
            end
        end
    else
        local xPlayer = vRP.getUserId{source}
        if xPlayer ~= nil then
            vRP.giveMoney{xPlayer, amount}
        end

        for itemName, count in pairs(logsItem) do
            if count >= 1 then
                vRP.giveInventoryItem{xPlayer, itemName, count, true}
            end
        end

        for itemName, count in pairs(planksItems) do
            if count >= 1 then
                vRP.giveInventoryItem{xPlayer, itemName, count, true}
            end
        end

        for itemName, count in pairs(chipsItems) do
            if count >= 1 then
                vRP.giveInventoryItem{xPlayer, itemName, count, true}
            end
        end
    end
end

function PayPenalty(source, amount)
    if Config.Framework == "QBCore" then
        local Player = Core.Functions.GetPlayer(source)
        if Player ~= nil and Player.Functions ~= nil then
            Player.Functions.RemoveMoney("cash", amount)
        end
    elseif Config.Framework == "ESX" then
        local xPlayer = Core.GetPlayerFromId(source)
        if xPlayer ~= nil and xPlayer.removeMoney ~= nil then
            xPlayer.removeMoney(amount)
        end
    else
        local xPlayer = vRP.getUserId{source}
        if xPlayer ~= nil then
            vRP.tryPayment{xPlayer, amount}
        end
    end
end

function IsHaveRequiredItem(source)
    if Config.RequiredItem ~= "none" then
        if Config.Framework == "QBCore" then
            local counter = 0
            for k,v in pairs(Core.Functions.GetPlayer(source).PlayerData.items) do
                if v.name == Config.RequiredItem then
                    local amount = v.amount
                    if amount == nil then amount = v.count end
                    counter = counter + amount
                    if amount > 0 then break end
                end
            end

            return counter > 0
        elseif Config.Framework == "ESX" then
            return Core.GetPlayerFromId(source).getInventoryItem(Config.RequiredItem).count > 0
        else
            return vRP.getInventoryItemAmount{vRP.getUserId{source}, Config.RequiredItem} > 0
        end
    end

    return true
end

function GetPlayerJob(source)
    if source == nil or type(source) ~= "number" then return "unknown" end
    if Config.Framework == "QBCore" then
        return Core.Functions.GetPlayer(source).PlayerData.job.name
    elseif Config.Framework == "ESX" then
        return Core.GetPlayerFromId(source).job.name
    else
        return "unknown"
    end
end