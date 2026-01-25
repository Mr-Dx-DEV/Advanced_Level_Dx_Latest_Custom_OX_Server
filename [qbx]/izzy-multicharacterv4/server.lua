if framework == "esx" then
    while ESX == nil do
        Wait(1)
    end

    if next(ESX.Players) then
		local players = table.clone(ESX.Players)
		table.wipe(ESX.Players)
		for _, v in pairs(players) do
			ESX.Players[v.identifier] = true
		end
	else ESX.Players = {} end
end


function isKeyValid(key)
    local p = promise.new()
    local url = ("https://plugin.tebex.io/payments/%s"):format(key)

    PerformHttpRequest(url, function(statusCode, response, headers)
        if not response then
            p:resolve(false)
        end
        response = json.decode(response)

        if statusCode == 200 and response.packages[1].id == packageId then
            p:resolve(true)
        else
            p:resolve(false)
        end
    end, "GET", "", {
        ["X-Tebex-Secret"] = tebexSecret
    })

    return Citizen.Await(p)
end

function getCollectionData(collection)
    local table = LoadResourceFile(GetCurrentResourceName(), ("%s.json"):format(collection))

    if table then 
        return json.decode(table) 
    end
    return nil
end

function removePrefix(str, prefix)
    if str:sub(1, #prefix) == prefix then
        return str:sub(#prefix + 1)
    else
        return str
    end
end

izzy.createCallback("izzy-multicharacterv4:getCharacters", function(src)
    return getCharacters(src)
end)

izzy.createCallback("izzy-multicharacterv4:getSkin", function(src, identifier)
    if not identifier then identifier = getIdentifier(src) end
    local x = getPlayerSkin(identifier)

    return { skinData = x[1], sModel = x[2] }
end)

izzy.createCallback("izzy-multicharacterv4:getCollection", function(src, db)
    local identifier = izzy.getIdentifiers(src, "license")
    local collection = getCollectionData(db)
    
    if not collection[identifier] then
        collection[identifier] = {}
    end

    return collection[identifier]
end)

izzy.createCallback("izzy-multicharacterv4:isKeyValid", function(_, key)
    local codes = getCollectionData("codes")
    local have = codes[key]
    if have then
        codes[key] = nil
        SaveResourceFile(GetCurrentResourceName(), "codes.json", json.encode(codes, {indent = true}))
    end
    return have and true or isKeyValid(key)
end)

izzy.createCallback("izzy-multicharacterv4:deleteCharacter", function(src, identifier)
    if framework == 'qb' then
        QBCore.Player.DeleteCharacter(src, identifier)
    elseif framework == 'esx' then
        local p = promise.new()
        izzy.sql.async.update('DELETE FROM users WHERE identifier = ?', { identifier }, function(result)
            p:resolve(true)
        end)

        return Citizen.Await(p)
    else
        print('unknown framework')
    end

    return true
end)

RegisterServerEvent("izzy-multicharacterv4:server:resetCurrentChar", function()
    local src = source

    TriggerEvent('esx:playerLogout', src)
    ESX.Players[src] = nil
end)

RegisterNetEvent("izzy-multicharacterv4:server:play", function(data, isNew)
    spawnCharacter(source, data, isNew)
end)

RegisterNetEvent("izzy-multicharacterv4:server:applyCode", function(code)
    local src = source
    local identifier = izzy.getIdentifiers(src, "license")
    if not identifier then return end
    local transactions = getCollectionData("transactions")
    local slots = getCollectionData("slots")
    code = tostring(code)

    if transactions[code] then
        izzy.notification(src, "error", izzy._t("this_code_used"))
        return
    end

    transactions[code] = true
    slots[identifier] = slots[identifier] ~= nil and slots[identifier] + 1 or cfg.defaultFreeSlotAmount + 1
    SaveResourceFile(GetCurrentResourceName(), "transactions.json", json.encode(transactions, {indent = true}))
    SaveResourceFile(GetCurrentResourceName(), "slots.json", json.encode(slots, {indent = true}))
    TriggerClientEvent("izzy-multicharacterv4:updateConfig", src)
end)

RegisterCommand(cfg.createCodeCommand, function(src, args)
    if src == 0 or cfg.admins[izzy.getIdentifiers(src, 'license')] then
        local code = tostring(args[1])
        local codes = getCollectionData("codes")
        if codes[code] then
            print('there is such a code!')
            return
        end

        print('code created!')
        codes[code] = true
        SaveResourceFile(GetCurrentResourceName(), "codes.json", json.encode(codes, {indent = true}))
    end
end)

RegisterServerEvent("izzy-multicharacterv4:server:setBucket", function(real)
    SetPlayerRoutingBucket(source, not real and math.random(0, 65535) or 0)
end)


izzy.createCallback('izzy-multicharacterv4:getHouses', function(_, cid)
    if cfg.housing == 'none' then return {} end
    if cid ~= nil then
        local houses = izzy.sql.sync.query('SELECT * FROM player_houses WHERE citizenid = ?', {cid})
        if houses[1] ~= nil then
            return houses
        else
            return {}
        end
    else
        return {}
    end
end)
