if Config.core ~= 'qbox' then return end

local functions = exports.qbx_core
identiferQBOX = {}
local function loadHouseData(src)
    local HouseGarages = {}
    local Houses = {}
    local result = MySQL.query.await('SELECT * FROM houselocations', {})
    if result[1] ~= nil then
        for _, v in pairs(result) do
            local owned = false
            if tonumber(v.owned) == 1 then
                owned = true
            end
            local garage = v.garage ~= nil and json.decode(v.garage) or {}
            Houses[v.name] = {
                coords = json.decode(v.coords),
                owned = owned,
                price = v.price,
                locked = true,
                adress = v.label,
                tier = v.tier,
                garage = garage,
                decorations = {},
            }
            HouseGarages[v.name] = {
                label = v.label,
                takeVehicle = garage,
            }
        end
    end
    TriggerClientEvent("qb-garages:client:houseGarageConfig", src, HouseGarages)
    TriggerClientEvent("qb-houses:client:setHouseConfig", src, Houses)
end

local starterItems = { -- Character starting items
    { name = 'phone', amount = 1 },
    { name = 'water', amount = 5 },
    { name = 'hamburger', amount = 5 },
    { name = 'firstaid', amount = 2 },
    { name = 'id_card', amount = 1, 
        metadata = function(source)
            if GetResourceState('bl_idcard') == 'started' then
                return exports.bl_idcard:createLicense(source, {'id_card'})
            end

            if GetResourceState('qbx_idcard') == 'started' then
                return exports.qbx_idcard:GetMetaLicense(source, {'id_card'})
            end
        end
    },
    { name = 'driver_license', amount = 1, 
        metadata = function(source)
            if GetResourceState('bl_idcard') == 'started' then
                return exports.bl_idcard:createLicense(source, {'driver_license'})
            end

            if GetResourceState('qbx_idcard') == 'started' then
                return exports.qbx_idcard:GetMetaLicense(source, {'driver_license'})
            end
        end
    },
}

local function GiveStarterItems(source)
    if GetResourceState('ox_inventory') == 'missing' then return end
    while not exports.ox_inventory:GetInventory(source) do
        Wait(100)
    end
    for i = 1, #starterItems do
        local item = starterItems[i]
        if item.metadata and type(item.metadata) == 'function' then
            exports.ox_inventory:AddItem(source, item.name, item.amount, item.metadata(source))
        else
            exports.ox_inventory:AddItem(source, item.name, item.amount, item.metadata)
        end
    end
end

local GetIdentifier = function(source, type)
    local identifiers = GetPlayerIdentifiers(source)
    for _, v in pairs(identifiers) do
        if string.find(v, type) then
            return v
        end
    end
    return nil
end

CORE_INTEGRATIONS['qbox'] = {
    getCharacters = function(self, source)
        local p = promise:new()

        local identifierType = Config.IdentifierType
        local identifier = GetIdentifier(source, Config.IdentifierType)
        local identifier2 = GetIdentifier(source, 'license2')
        local query = 'SELECT * FROM players WHERE ' .. Config.IdentifierType .. ' = ? ORDER BY id ASC'
        local params = {identifier}
        if identifier2 and Config.IdentifierType == 'license' then
            query = 'SELECT * FROM players WHERE license = ? OR license = ? ORDER BY id ASC'
            params = {identifier, identifier2}
        end

        MySQL.query(query, params, function(result)
            local characters = {}
            for i = 1, (#result), 1 do
                result[i].charinfo = json.decode(result[i].charinfo)
                result[i].money = json.decode(result[i].money)
                result[i].job = json.decode(result[i].job)
                if not result[i].job then 
                    result[i].job = {
                        name = 'Unknown',
                        grade = {
                            name = 'None',
                            level = 0
                        }
                    }
                end
                if not result[i].job.name then 
                    result[i].job.name = 'Unknown'
                end
                if not result[i].job.grade.name then 
                    result[i].job.grade.name = 'Unknown'
                end
                characters[result[i].cid] = {
                    charId = result[i].citizenid,
                    cid = result[i].cid,
                    bank = result[i].money.bank,
                    cash = result[i].money.cash,
                    job = result[i].job.label .. " " .. result[i].job.grade.name,
                    firstName = result[i].charinfo.firstname,
                    lastName = result[i].charinfo.lastname,
                    dob = result[i].charinfo.birthdate,
                    skin = {},
                    gender = result[i].charinfo.gender == 0 and "male" or "female",
                    nationality = result[i].charinfo.nationality,
                    playTime = GetPlayerPlayTime(result[i].citizenid),
                }
            end
            p:resolve(characters)
        end)

        return Citizen.Await(p)
    end,
    logout = function(self, source)
        exports['qbx_core']:Logout(source)
    end,
    selectCharacter = function(self, src, charid, isNew, data)
        if not isNew then
            local cData = {
                citizenid = charid,
            }
            if exports['qbx_core']:Login(src, charid) then
                local success, error = pcall(function()
                    loadHouseData(src)
                end)
                
                TriggerClientEvent('cylex_multicharacter:qb:lastLocation', src, cData)
   
                local discord = GetIdentifier(src, 'discord')
                TriggerEvent("qb-log:server:CreateLog", "joinleave", "Loaded", "green", 
                    string.format("**%s** (<@%s> |  ||%s|| | %s | %s | %d) loaded..",
                    GetPlayerName(src),
                    (discord and (discord:gsub("discord:", "") or "unknown")),
                    (GetIdentifier(src, 'ip') or 'undefined'),
                    (GetIdentifier(src, 'license') or 'undefined'),
                    charid,
                    src
                ))

                SetTimeout(2500, function()
                    local player = functions.GetPlayer(src)
                    if player then
                        local charinfo = player.PlayerData.charinfo
                        identiferQBOX[src] = player.PlayerData.citizenid

                        print(('%s %s (CID: %s) has entered game!'):format(charinfo.firstname, charinfo.lastname, charid))
                    end
                end)
                return true
            end
        else
            local newData = {
                cid = charid,
                charinfo = {
                    firstname = data.firstName,
                    lastname = data.lastName,
                    birthdate = data.date,
                    gender = data.gender == "male" and 0 or 1,
                    nationality = data.nationality,
                }
            }
            if exports['qbx_core']:Login(src, false, newData) then
                print(('%s %s (%s) has created new character!'):format(data.firstName, data.lastName, GetPlayerName(src)))

                local success, error = pcall(function()
                    loadHouseData(src)
                end)

                TriggerEvent('apartments:client:SetHomeBlip', nil)
                TriggerClientEvent('cylex_multicharacter:qb:firstSpawn', src, newData)

                SetTimeout(3000, function()
                    identiferQBOX[src] = player.PlayerData.citizenid
                    GiveStarterItems(src)
                end)
                return true
            end
        end
    end,
    deleteCharacter = function(self, source, charid)
        if not charid then return false end
        local success, error = pcall(function()
            exports['qbx_core']:ForceDeleteCharacter(charid) 
        end)
        local success, error = pcall(function()
            exports['qbx_core']:DeleteCharacter(charid) 
        end)

        return true
    end,
    getPlayerId = function(self, source)
        local player = exports['qbx_core']:GetPlayer(tonumber(source))
        return player and player.PlayerData.citizenid or nil
    end,
}