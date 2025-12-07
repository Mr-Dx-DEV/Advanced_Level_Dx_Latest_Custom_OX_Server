local Framework, frameworkName = getFramework()

lib.callback.register('savana-restaurant:getHistory', function(source) 
    local Player = getPlayer(source)
    local identifier = nil
    local job = nil
    if frameworkName == 'esx' then
        identifier = Player.identifier
        job = Player.job.name
    elseif frameworkName == 'qb' then
        identifier = Player.PlayerData.citizenid
        job = Player.PlayerData.job.name
    end
        
    local result = MySQL.Sync.fetchAll("SELECT * FROM savana_restaurant WHERE job = @job", {["@job"] = job})
    return result
end)

lib.callback.register('savana-restaurant:buy', function(source,data, type)
    if #data > 0 then
        local requiredMoney = 0
        local items = {}
        for k,v in pairs(data) do
            requiredMoney = requiredMoney + (v.quantity * v.price)
            table.insert(items, {
                item = v.give,
                quantity = v.quantity
            })
        end

        if removeMoney(source,type, requiredMoney) then
            return 'ok'
        else
            return 'no'
        end
    else
        return 'noSelected'
    end
end)

RegisterNetEvent('savana-restaurant:giveOrderItems', function(data) 
    addItem(data)
end)

lib.callback.register('savana-restaurant:craft', function(source, store, data)
    local source = source
    local Player = getPlayer(source)

    data.id = tonumber(data.id)
    data.x = tonumber(data.x) or 1
    local item = Config.Stores[store].items[data.id]["item"]

    if data.id then
        local items = Config.Stores[store].items[data.id]
        if items then
            local okay = true

            for k,v in pairs(items.requirements) do
                if frameworkName == "esx" then
                    local item = Player.getInventoryItem(v.name)
                    if item then
                        local count = item.count or item.amount

                        if count < v.amount*data.x then
                            okay = false
                            break
                        end
                    else
                        okay = false
                        break
                    end
                else
                    local item = Player.Functions.GetItemByName(v.name)
                    if item then
                        local count = item.count or item.amount

                        if count < v.amount*data.x then
                            okay = false
                            break
                        end
                    else
                        okay = false
                        break
                    end
                end
            end

            if okay then
                for k,v in pairs(items.requirements) do
                    if frameworkName == "esx" then
                        Player.removeInventoryItem(v.name, v.amount*data.x)
                    else
                        Player.Functions.RemoveItem(v.name, v.amount*data.x)  
                    end
                end
                return 'ok'
            else
                return false
            end

        else
            return 'id'
        end
    else
        return 'id'
    end
end)

lib.callback.register('savana-restaurant:loadDetails', function(source, store, id, x)
    local Player = getPlayer(source)

    local items = Config.Stores[store]["items"][id].requirements
    
    local data = {}

    for k,v in pairs(items) do
        local count = 0

        if frameworkName == "esx" then
            local item = Player.getInventoryItem(v.name)

            if item then
                count = item.count or item.amount
            end
        else
            local item = Player.Functions.GetItemByName(v.name)

            if item then
                count = item.count or item.amount
            end
        end

        data[v.name] = {
            value = v,
            amount = v.amount*x,
            status = count >= v.amount*x
        }
    end

    return data
end)

lib.callback.register('savana-restaurant:getInformation', function(source, data)
    local Player = getPlayer(source)
    local money = 0

    if frameworkName == "esx" then
        cash = Player.getMoney()
        bank = Player.getAccount("bank").money
    else
        cash = Player.PlayerData.money["cash"]
        bank = Player.PlayerData.money["bank"]
    end

    return {
        name = getName(source),
        money = {
            cash = cash,
            bank = bank
        }
    }
end)

lib.callback.register('savana-restaurant:getJob', function(source)
    local Player = getPlayer(source)
    local money = 0
    local job = nil

    if frameworkName == "esx" then        
        job = Player.job.name
    else
        job = Player.PlayerData.job.name
    end

    return job
end)

function getName(source)
    if frameworkName == "esx" then
        local xPlayer = Framework.GetPlayerFromId(source)
        local Info = MySQL.Sync.fetchAll("SELECT * FROM users WHERE identifier = @identifier", {["@identifier"] = xPlayer.identifier})
        return Info[1].firstname.." "..Info[1].lastname
    else
        local xPlayer = Framework.Functions.GetPlayer(source)
        return xPlayer.PlayerData.charinfo.firstname.." "..xPlayer.PlayerData.charinfo.lastname
    end
end

function getPlayer(source)
    if frameworkName == "esx" then
        return Framework.GetPlayerFromId(source)
    else
        return Framework.Functions.GetPlayer(source)
    end
end