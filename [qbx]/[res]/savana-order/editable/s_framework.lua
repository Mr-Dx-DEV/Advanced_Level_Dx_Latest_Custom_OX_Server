Framework = {}

function Framework:GetPlayer(source)
    if Config.Framework == "qb" then
        return FrameworkObject.Functions.GetPlayer(source)
    elseif Config.Framework == "esx" then
        return FrameworkObject.GetPlayerFromId(source)
    else
        return false
    end
end

function Framework:GetPlayerName(source)
    local xPlayer = Framework:GetPlayer(tonumber(source))
    if Config.Framework == "qb" then
        return xPlayer.PlayerData.charinfo.firstname .. " " .. xPlayer.PlayerData.charinfo.lastname
    elseif Config.Framework == "esx" then
        return xPlayer.getName()
    else
        return "Unknown"
    end
end

function Framework:GetPlayerBankMoney(source)
    local xPlayer = Framework:GetPlayer(source)
    if Config.Framework == "qb" then
        return xPlayer.PlayerData.money.bank
    elseif Config.Framework == "esx" then
        return xPlayer.getAccount('bank').money
    else
        return 0
    end
end

function Framework:GetPlayerMoney(source)
    local xPlayer = Framework:GetPlayer(source)
    if Config.Framework == "qb" then
        return xPlayer.PlayerData.money.cash
    elseif Config.Framework == "esx" then
        return xPlayer.getMoney()
    else
        return 0
    end
end

function Framework:RemoveMoney(source, type, amount)
    amount = tonumber(amount)
    if Config.Framework == "qb" then
        local player = FrameworkObject.Functions.GetPlayer(source)
        if type == "bank" then
            if player.PlayerData.money["bank"] >= amount then
                player.Functions.RemoveMoney("bank", amount)
                return true
            else
                return false
            end
        elseif type == "cash" then
            if player.PlayerData.money["cash"] >= amount then
                player.Functions.RemoveMoney("cash", amount)
                return true
            else
                return false
            end
        else
            return false
        end
    elseif Config.Framework == "esx" then
        local xPlayer = FrameworkObject.GetPlayerFromId(source)
        if type == "bank" then
            if xPlayer.getAccount("bank").money >= amount then
                xPlayer.removeAccountMoney("bank", amount)
                return true
            else
                return false
            end
        elseif type == "cash" then
            if xPlayer.getMoney() >= amount then
                xPlayer.removeMoney(amount)
                return true
            else
                return false
            end
        else
            return false
        end
    else
        return false
    end
end

function Framework:GiveItem(source, item, amount)
    local player = Framework:GetPlayer(source)
    if Config.Framework == "qb" then
        player.Functions.AddItem(item, amount)
    elseif Config.Framework == "esx" then
        player.addInventoryItem(item, amount)
    end
end

function Framework:AddMoney(source, type, amount)
    if Config.Framework == "qb" then
        local player = FrameworkObject.Functions.GetPlayer(source)
        if type == "bank" then
            player.Functions.AddMoney("bank", amount)
            return true
        elseif type == "cash" then
            player.Functions.AddMoney("cash", amount)
            return true
        else
            return false
        end
    elseif Config.Framework == "esx" then
        local xPlayer = FrameworkObject.GetPlayerFromId(source)
        if type == "bank" then
            xPlayer.addAccountMoney("bank", amount)
            return true
        elseif type == "cash" then
            xPlayer.addMoney(amount)
            return true
        else
            return false
        end
    else
        return false
    end
end

function Framework:GetPlayerIdentifier(player)
    if Config.Framework == "qb" then
        return player.PlayerData.citizenid
    elseif Config.Framework == "esx" then
        return player.getIdentifier()
    else
        return false
    end
end

function Framework:GetJob(source)
    if Config.Framework == "qb" then
        local player = Framework:GetPlayer(source)
        return player.PlayerData.job.name
    elseif Config.Framework == "esx" then
        local xPlayer = Framework:GetPlayer(source)
        return xPlayer.job.name
    else
        return ""
    end
end

function Framework:GetJobGrade(source)
    if Config.Framework == "qb" then
        local player = Framework:GetPlayer(source)
        return player.PlayerData.job.grade.level
    elseif Config.Framework == "esx" then
        local xPlayer = Framework:GetPlayer(source)
        return xPlayer.job.grade
    else
        return ""
    end
end


function Framework:RemoveItem(source, item, amount)
    if Config.Framework == "qb" then
        local player = FrameworkObject.Functions.GetPlayer(source)
        player.Functions.RemoveItem(item, amount)
    elseif Config.Framework == "esx" then
        local xPlayer = FrameworkObject.GetPlayerFromId(source)
        xPlayer.removeInventoryItem(item, amount)
    end
end

function Framework:GetItemCount(source, item)
    local Player = Framework:GetPlayer(source)
    if Config.Framework == "qb" then
        return Player.Functions.GetItemByName(item) and Player.Functions.GetItemByName(item).amount or 0
    elseif Config.Framework == "esx" then
        return Player.getInventoryItem(item) and Player.getInventoryItem(item).count or 0
    end
end

function Framework:Notify(source, message, type)
    TriggerClientEvent('savana-order:client:sendNotify', source, message, type)
    -- if Config.Framework == "qb" then
    --     local player = FrameworkObject.Functions.GetPlayer(source)
    --     player.Functions.Notify(message)
    -- elseif Config.Framework == "esx" then
    --     local xPlayer = FrameworkObject.GetPlayerFromId(source)
    --     xPlayer.showNotification(message)
    -- end
end

function Framework:GetPlayers()
    if Config.Framework == "qb" then
        return FrameworkObject.Functions.GetPlayers()
    elseif Config.Framework == "esx" then
        return FrameworkObject.GetPlayers()
    end
end

function Framework:InsertBlankData(id)
    MySQL.Sync.execute('INSERT INTO savana_order (id, data, billing, transactions, money, totalSelling, totalVisit) VALUES (@id, @data, @billing, @transactions, @money, @totalSelling, @totalVisit)', {
        ['@id'] = id,
        ['@data'] = '{"menus":[],"products":[]}',
        ['@billing'] = '[]',
        ['@transactions'] = '[]',
        ['@money'] = 0,
        ['@totalSelling'] = 0,
        ['@totalVisit'] = 0,
    })
end

function Framework:CustomerPaidInvoice(src, amount)
    Framework:Notify(src, "Customer paid invoice total of $" .. amount .. ".", "success")
end

function Framework:CustomerCancelled(src)
    Framework:Notify(src, "Customer cancel the invoice.", "error")
end

