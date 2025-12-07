local Framework, frameworkName = getFramework()

RegisterNetEvent('savana-restaurant:giveItem')
AddEventHandler('savana-restaurant:giveItem', function(item, x)
    local source = source
    local Player = getPlayer(source)
    
    if frameworkName == "esx" then
        Player.addInventoryItem(item, x or 1)
    else
        Player.Functions.AddItem(item, x or 1)
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

Framework.Functions.CreateCallback('savana-restaurant:craft', function(source, cb, store, data)
    if not store or not Config.Stores[store] then
        cb('id')
        return
    end

    local Player = getPlayer(source)

    data.id = tonumber(data.id)
    data.x = tonumber(data.x) or 1
    local item = Config.Stores[store].items[data.id]["item"]

    if data.id then
        local items = Config.Stores[store].items[data.id]
        if items then
            -- Check requirements
            local requirements = items.requirements
            local canCraft = true

            for k,v in pairs(requirements) do
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

                if count < (v.amount * data.x) then
                    canCraft = false
                    break
                end
            end

            if canCraft then
                -- Remove requirements
                for k,v in pairs(requirements) do
                    if frameworkName == "esx" then
                        Player.removeInventoryItem(v.name, v.amount * data.x)
                    else
                        Player.Functions.RemoveItem(v.name, v.amount * data.x)
                    end
                end
                cb('ok')
            else
                cb('noItem')
            end
        else
            cb('id')
        end
    else
        cb('id')
    end
end)

Framework.Functions.CreateCallback('savana-restaurant:loadDetails', function(source, cb, store, id, x)
    if not store or not Config.Stores[store] or not Config.Stores[store]["items"][id] then
        cb({})
        return
    end

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

        local status = count >= (v.amount * x)

        data[v.name] = {
            value = v,
            amount = v.amount*x,
            status = status
        }
    end

    cb(data)
end)

Framework.Functions.CreateCallback('savana-restaurant:getInformation', function(source, cb)
    local Player = getPlayer(source)
    local money = 0

    if frameworkName == "esx" then
        money = Player.getMoney()
    else
        money = Player.PlayerData.money["cash"]
    end

    cb({
        name = getName(source),
        money = money
    })
end)

Framework.Functions.CreateCallback('savana-restaurant:getJob', function(source, cb)
    local Player = getPlayer(source)
    local money = 0
    local job = nil

    if frameworkName == "esx" then
        job = Player.job.name
    else
        job = Player.PlayerData.job.name
    end

    cb(job)
end)

Framework.Functions.CreateCallback('savana-restaurant:checkJob', function(source, cb, requiredJob)
    local Player = getPlayer(source)
    local job = nil

    if frameworkName == "esx" then
        job = Player.job.name
    else
        job = Player.PlayerData.job.name
    end

    cb(job == requiredJob)
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