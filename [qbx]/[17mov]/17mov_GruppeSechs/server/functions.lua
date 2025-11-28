local Core

Config.Framework = "STANDALONE"

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
    Citizen.Wait(1000)
    if Core == nil then
        TriggerEvent("esx:getSharedObject", function(obj)
            Core = obj
            Config.Framework = "ESX"
        end)
    end
end)

function RegisterUsableItem(name, cbFunction)
    if Config.Framework == "QBCore" then
        Core.Functions.CreateUseableItem(name, cbFunction)
    elseif Config.Framework == "ESX" then
        Core.RegisterUsableItem(name, cbFunction)
    else
        -- RegisterCommand("gruppeSechsTablet", cbFunction)
        vRP.defInventoryItem({name,"Tableta mafiot", "Tableta jaf Transport Bancar",function ()
            return{
                Foloseste = {cbFunction}
            }
            end,0.5})
    end
end

local cachedNames = {}
function GetPlayerIdentity(source)
    if cachedNames[source] ~= nil then
        return cachedNames[source]
    end

    if Config.Framework == "QBCore" then
        local xPlayer = Core.Functions.GetPlayer(source)

        local timeout = 50
        while xPlayer == nil and timeout > 0 do
            Citizen.Wait(100)
            xPlayer = Core.Functions.GetPlayer(source)
            timeout = timeout - 1
        end

        if xPlayer == nil then return "Example Name" end

        cachedNames[source] = xPlayer.PlayerData.charinfo.firstname .. " " .. xPlayer.PlayerData.charinfo.lastname 
    elseif Config.Framework == "ESX" then
        local xPlayer = Core.GetPlayerFromId(source)

        local timeout = 50
        while xPlayer == nil and timeout > 0 do
            Citizen.Wait(100)
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
            TriggerClientEvent("vrp_notify:Alert", source, "Info", msg, 5000, "info")
        end
    end
end

function Pay(source, amount)
    if Config.Framework == "QBCore" then
        local Player = Core.Functions.GetPlayer(source)
        if Player ~= nil and Player.Functions ~= nil then
            Player.Functions.AddMoney("cash", amount)

            for _, item in pairs(Config.RewardItemsToGive) do
                if math.random(100) <= item.chance then
                    if item.amount >= 1 then
                        Player.Functions.AddItem(item.item_name, item.amount)
                    end
                end
            end
        end
    elseif Config.Framework == "ESX" then
        local xPlayer = Core.GetPlayerFromId(source)
        if xPlayer ~= nil and xPlayer.addMoney ~= nil then
            xPlayer.addMoney(amount)

            for _, item in pairs(Config.RewardItemsToGive) do
                if math.random(100) <= item.chance then
                    if item.amount >= 1 then
                        xPlayer.addInventoryItem(item.item_name, item.amount)
                    end
                end
            end
        end
    else
        local user_id = vRP.getUserId({source})
        if not user_id then return end
        vRP.givebankMoney({user_id, amount})
        for _, item in pairs(Config.RewardItemsToGive) do
            if math.random(100) <= item.chance then
                if item.amount >= 1 then
                    vRP.giveInventoryItem({user_id, item.item_name, item.amount})
                end
            end
        end
    end

    TriggerEvent('esx_addonaccount:getSharedAccount', 'society_gobierno', function(account)
        if account then
            account.addMoney((price/100)*20)
        end
    end)
end

function PayForCrime(source, amount)
    if Config.Framework == "QBCore" then
        local Player = Core.Functions.GetPlayer(source)
        if Player ~= nil and Player.Functions ~= nil then
            Player.Functions.AddMoney("cash", amount)
        end
    elseif Config.Framework == "ESX" then
        local xPlayer = Core.GetPlayerFromId(source)
        if xPlayer ~= nil and xPlayer.addMoney ~= nil then
            xPlayer.addMoney(amount)
        end
    else
        local user_id = vRP.getUserId({source})
        if not user_id then return end
        vRP.giveMoney({user_id, amount})
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
        local user_id = vRP.getUserId({source})
        if not user_id then return end
        vRP.tryFullPayment({user_id, amount})
    end
end

function isHaveRequiredItem(source)
    if Config.RequiredItem ~= "none" then
        if Config.Framework == "QBCore" then
            local counter = 0
            for k,v in pairs(Core.Functions.GetPlayer(source).PlayerData.items) do
                if v.name == Config.RequiredItem then
                    counter = counter + v.amount
                    if v.amount > 0 then break end
                end
            end

            return counter > 0
        elseif Config.Framework == "ESX" then
            return Core.GetPlayerFromId(source).getInventoryItem(Config.RequiredItem).count > 0
        end
        local user_id = vRP.getUserId({source})
        if not user_id then return end
        return vRP.hasInventoryItem({user_id, Config.RequiredItem, 1})
    end

    return true
end

function GetPlayerJob(source)
    if source == nil or type(source) ~= "number" then return "unknown" end
    if Config.Framework == "QBCore" then
        return Core.Functions.GetPlayer(source).PlayerData.job.name or "unknown"
    elseif Config.Framework == "ESX" then
        return Core.GetPlayerFromId(source).job.name or "unknown"
    else
        return "unknown"
    end
end

function IsEnoughPolice()
    local counter = 0
    if Config.Framework == "QBCore" then
        for _, v in pairs(Core.Functions.GetPlayers()) do
            local Player = Core.Functions.GetPlayer(v)
            if Player.PlayerData.job.name == "police" and Player.PlayerData.job.onduty then
                counter = counter + 1
            end
        end
    elseif Config.Framework == "ESX" then
        local xPlayers = Core.GetPlayers()
        for i = 1, #xPlayers, 1 do
            local xPlayer = Core.GetPlayerFromId(xPlayers[i])
            if xPlayer and xPlayer.job.name == "police" then
                counter = counter + 1
            end
        end
    else
        local cops = vRP.getOnlineUsersByFaction({"Politie"})
        counter = #cops
    end

    return counter >= Config.MinimumCopsToStartHeist
end

function NotifyCops(coords, vehNetId, plate)
    if Config.Framework == "QBCore" then
        for k, v in pairs(Core.Functions.GetPlayers()) do
            local Player = Core.Functions.GetPlayer(v)
            if Player.PlayerData.job.name == "police" and Player.PlayerData.job.onduty then
                TriggerClientEvent("17mov_GruppeSechs:CopsNotify", v, coords, vehNetId, plate)
            end
        end
    elseif Config.Framework == "ESX" then
        local xPlayers = Core.GetPlayers()
        for i = 1, #xPlayers, 1 do
            local xPlayer = Core.GetPlayerFromId(xPlayers[i])
            if xPlayer and xPlayer.job.name == "police" then
                TriggerClientEvent("17mov_GruppeSechs:CopsNotify", xPlayers[i], coords, vehNetId, plate)
            end
        end
    else
        local cops = vRP.getOnlineUsersByFaction({"Politie"})
        
        for _,user_id in next,cops do
            local kSource = vRP.getUserSource({user_id});
            if not kSource then goto skip end;
            
            TriggerClientEvent("17mov_GruppeSechs:CopsNotify", kSource, coords, vehNetId, plate)
            ::skip::
        end
    end
end

function DisableNotificationForCops(vehNetId)
    if Config.Framework == "QBCore" then
        for k, v in pairs(Core.Functions.GetPlayers()) do
            local Player = Core.Functions.GetPlayer(v)
            if Player.PlayerData.job.name == "police" and Player.PlayerData.job.onduty then
                TriggerClientEvent("17mov_GruppeSechs:disableCopsNotify", v, vehNetId)
            end
        end
    elseif Config.Framework == "ESX" then
        local xPlayers = Core.GetPlayers()
        for i = 1, #xPlayers, 1 do
            local xPlayer = Core.GetPlayerFromId(xPlayers[i])
            if xPlayer and xPlayer.job.name == "police" then
                TriggerClientEvent("17mov_GruppeSechs:disableCopsNotify", xPlayers[i], vehNetId)
            end
        end
    end
    local cops = vRP.getOnlineUsersByFaction({"Politie"})
        
    for _,user_id in next,cops do
        local kSource = vRP.getUserSource({user_id});
        if not kSource then goto skip1 end;
        
        TriggerClientEvent("17mov_GruppeSechs:disableCopsNotify", kSource, vehNetId)
        ::skip1::
    end
end

local cld = {}

RegisterServerEvent(GetCurrentResourceName() .. ":tryStartJob", function()
    local source = source
    local user_id = vRP.getUserId({source})
    if not user_id then return end
    if not cld[user_id] then cld[user_id] = os.time() - 1 end
    if cld[user_id] >= os.time() then return TriggerClientEvent("vrp_notify:Alert", source, "Eroare", "Poti face acest lucru peste "..(cld[user_id]-os.time()).." secunde!", 5000, "error") end
    cld[user_id] = os.time() + 5
    if vRP.getUserHoursPlayed({user_id}) >= Config.RequiredHours then
        TriggerClientEvent(GetCurrentResourceName() .. ":startJob", source);
    else
        TriggerClientEvent("vrp_notify:Alert", source, "Eroare", "Nu ai lunile necesare pentru a practica acest job!<br><br>Luni Necesare: ".. Config.RequiredHours, 5000, "error")
    end
end)

RegisterServerEvent(GetCurrentResourceName() .. ":tryInvitePlayer", function(id)
    local source = source
    local user_id = vRP.getUserId({id})
    if not user_id then return end
    if not cld[user_id] then cld[user_id] = os.time() - 1 end
    if cld[user_id] >= os.time() then return TriggerClientEvent("vrp_notify:Alert", source, "Eroare", "Poti face acest lucru peste "..(cld[user_id]-os.time()).." secunde!", 5000, "error") end
    cld[user_id] = os.time() + 5
    if #(GetEntityCoords(GetPlayerPed(source)) - GetEntityCoords(GetPlayerPed(id))) > 20 then
        return TriggerClientEvent("vrp_notify:Alert", source, "Eroare", GetPlayerName(id) .. " nu se afla langa tine", 5000, "error")
    end
    if vRP.getUserHoursPlayed({user_id}) >= Config.RequiredHours then
        TriggerClientEvent(GetCurrentResourceName() .. ":doSendRequest", source, id);
    else
        TriggerClientEvent("vrp_notify:Alert", source, "Eroare", GetPlayerName(id) .. " nu are lunile necesare pentru a practica acest job!<br><br>Luni Necesare: ".. Config.RequiredHours, 5000, "error")
    end
end)

AddEventHandler('vRP:playerLeave',function(user_id)
    if cld[user_id] then
        cld[user_id] = nil
    end
end)