CreateCallback('0r-outfitsaver:getSavedOutfits:server', function(source, cb)
    local src = source
    local myOutfits = MySQL.query.await('SELECT id, outfitname, tags FROM 0r_clothing_saved_outfits WHERE identifier = ?', {GetPlayerLicenseCore(src)})
    if myOutfits and myOutfits[1] and next(myOutfits) then
        cb(myOutfits)
    else
        cb({data = "empty"})
    end
end)

CreateCallback('0r-outfitsaver:getSavedOutfitSkinById:server', function(source, cb, id)
    local src = source
    local myOutfits = MySQL.query.await('SELECT skin, model FROM 0r_clothing_saved_outfits WHERE id = ?', {id})
    if myOutfits and myOutfits[1] and next(myOutfits) then
        cb({skin = json.decode(myOutfits[1].skin), model = myOutfits[1].model})
    else
        cb({})
    end
end)

CreateCallback('0r-outfitsaver:getPlayerSkin:server', function(source, cb)
    local src = source
    local skin = getCharSkin(GetPlayerLicenseCore(src))
    if skin and next(skin) then
        cb(skin)
    else
        cb({})
    end
end)

RegisterNetEvent('0r-outfitsaver:saveOutfit:server', function(outfitName, model, tags)
    local src = source
    local skin = getCharSkin(GetPlayerLicenseCore(src))
    if not next(skin) then return print("Skin problem.") end
    MySQL.insert('INSERT INTO 0r_clothing_saved_outfits (identifier, outfitname, skin, model, tags) VALUES (?, ?, ?, ?, ?)', {
        GetPlayerLicenseCore(src),
        outfitName,
        json.encode(skin.skin),
        model,
        json.encode(tags)
    }, function()
        local result = MySQL.query.await('SELECT id, outfitname, tags FROM 0r_clothing_saved_outfits WHERE identifier = ?', {GetPlayerLicenseCore(src)})
        if result[1] ~= nil then
            TriggerClientEvent('0r-outfitsaver:reloadOutfits:client', src, result)
        else
            TriggerClientEvent('0r-outfitsaver:reloadOutfits:client', src, nil)
        end
    end)
end)

RegisterNetEvent('0r-outfitsaver:deleteOutfit:server', function(outfitName, outfitId)
    local src = source
    MySQL.query('DELETE FROM 0r_clothing_saved_outfits WHERE identifier = ? AND outfitname = ? AND id = ?', {
        GetPlayerLicenseCore(src),
        outfitName,
        outfitId
    }, function()
        local result = MySQL.query.await('SELECT id, outfitname, tags FROM 0r_clothing_saved_outfits WHERE identifier = ?', {GetPlayerLicenseCore(src)})
        if result[1] ~= nil then
            TriggerClientEvent('0r-outfitsaver:reloadOutfits:client', src, result)
        else
            TriggerClientEvent('0r-outfitsaver:reloadOutfits:client', src, nil)
        end
    end)
end)

RegisterNetEvent('0r-outfitsaver:saveSkin:server', function(model, skin)
    local src = source
    local player = GetPlayer(src)
    if not player then return print("There is a problem with player data.") end
    if CoreName == "qb" then
        MySQL.query('DELETE FROM playerskins WHERE citizenid = ?', {player.PlayerData.citizenid}, function()
            MySQL.insert('INSERT INTO playerskins (citizenid, model, skin, active) VALUES (?, ?, ?, ?)', {
                player.PlayerData.citizenid,
                model,
                json.encode(skin),
                1
            })
        end)
    elseif CoreName == "esx" then
        MySQL.Async.execute('UPDATE users SET `skin` = @skin WHERE identifier = @identifier', {
            ['@skin'] = json.encode(skin),
            ['@identifier'] = player.identifier
        })
    end
end)

RegisterNetEvent('0r-outfitsaver:editOutfit:server', function(id, name, tags)
    local src = source
    local player = GetPlayer(src)
    local outfit = MySQL.query.await('SELECT id FROM 0r_clothing_saved_outfits WHERE identifier = ? AND id = ?', {GetPlayerLicenseCore(src), id})
    if outfit and outfit[1] and next(outfit) then
        MySQL.update("UPDATE 0r_clothing_saved_outfits SET outfitname = @outfitname, tags = @tags WHERE id = @id", {
            ["@outfitname"] = name,
            ["@tags"] = json.encode(tags),
            ["@id"] = id,
        })
    end
    Citizen.Wait(500)
    local result = MySQL.query.await('SELECT id, outfitname, tags FROM 0r_clothing_saved_outfits WHERE identifier = ?', {GetPlayerLicenseCore(src)})
    if result[1] ~= nil then
        TriggerClientEvent('0r-outfitsaver:reloadOutfits:client', src, result)
    else
        TriggerClientEvent('0r-outfitsaver:reloadOutfits:client', src, nil)
    end
end)

RegisterNetEvent('0r-outfitsaver:openMenu:server', function()
    TriggerClientEvent('0r-outfitsaver:openMenu:client', source)
end)