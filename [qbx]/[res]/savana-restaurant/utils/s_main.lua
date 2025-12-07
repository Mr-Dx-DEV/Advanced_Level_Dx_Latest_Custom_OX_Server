local Framework, frameworkName = getFramework()

RegisterNetEvent('savana-restaurant:giveItem')
AddEventHandler('savana-restaurant:giveItem', function(item, x)
    local source = source
    local Player = getPlayer(source)

    if frameworkName == "esx" then
        Player.addInventoryItem(item, x or 1)
        local Player = getPlayer(source)
        local identifier = Player.identifier
        MySQL.Async.execute('INSERT INTO savana_restaurant (citizenid, creator, job, itemname, amount, date) VALUES (@citizenid, @creator, @job, @itemname, @amount, @date)', {
            ['@citizenid'] = identifier,
            ['@creator'] = getName(source),
            ['@job'] = Player.job.name,
            ['@itemname'] = item,
            ['@amount'] = x or 1,
            ['@date'] = os.date("%d/%m/%Y"),
        })
        local result = MySQL.Sync.fetchAll("SELECT * FROM savana_restaurant WHERE job = @job", {["@job"] = Player.job.name})
        TriggerClientEvent('updateUI', source, result)
    else
        local Player = getPlayer(source)
        local identifier = Player.PlayerData.citizenid
        Player.Functions.AddItem(item, x or 1)
        MySQL.Async.execute('INSERT INTO savana_restaurant (citizenid, creator, job, itemname, amount, date) VALUES (@citizenid, @creator, @job, @itemname, @amount, @date)', {
            ['@citizenid'] = identifier,
            ['@creator'] = getName(source),
            ['@job'] = Player.PlayerData.job.name,
            ['@itemname'] = item,
            ['@amount'] = x or 1,
            ['@date'] = os.date("%d/%m/%Y"),
        })
        local result = MySQL.Sync.fetchAll("SELECT * FROM savana_restaurant WHERE job = @job", {["@job"] = Player.PlayerData.job.name})
        TriggerClientEvent('updateUI', source, result)
    end
end)

RegisterNetEvent('savana-restaurant:cancel')
AddEventHandler('savana-restaurant:cancel', function(items, x)
    local source = source
    local Player = getPlayer(source)

    for k,v in pairs(items) do
        if frameworkName == "esx" then
            Player.addInventoryItem(v.name, v.amount*x or 1)
        else
            Player.Functions.AddItem(v.name, v.amount*x or 1)
        end
    end
end)

function getPlayer(source)
    if frameworkName == "esx" then
        return Framework.GetPlayerFromId(source)
    else
        return Framework.Functions.GetPlayer(source)
    end
end

function getName(identifier)
    if identifier then
        if frameworkName == "esx" then
            local Info = MySQL.Sync.fetchAll("SELECT * FROM users WHERE identifier = @identifier", {["@identifier"] = identifier})
            return Info[1].firstname.." "..Info[1].lastname
        else
            local Player = GetPlayerFromIdentifier(identifier)
            return Player.PlayerData.charinfo.firstname.." "..Player.PlayerData.charinfo.lastname
        end
    else
        return "Not Found"
    end
end

function getMoney() --only esx

end

function addItem(item)
    local Player = getPlayer(source)
    if frameworkName == 'qb' then
        for k,v in pairs(item) do
           Player.Functions.AddItem(v.give,v.quantity)
        end
    else
        for k,v in pairs(item) do
            Player.addInventoryItem(v.give,v.quantity)
        end
    end
end

function removeMoney(source, type, amount)
    amount = tonumber(amount)
    if frameworkName == "qb" then
        local player = Framework.Functions.GetPlayer(source)
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
    elseif frameworkName == "esx" then
        local xPlayer = Framework.GetPlayerFromId(source)
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

--------------- DATABASE---------------

GetJsonData = function()
    local data = LoadResourceFile(GetCurrentResourceName(), 'data.json')
    if data then
        return json.decode(data)
    else
        return {}
    end
end