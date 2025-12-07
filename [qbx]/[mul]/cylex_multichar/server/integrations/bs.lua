if Config.core ~= 'bs' then return end

BSCore = exports['bs-core']:GetCoreObject()

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

local function GiveStarterItems(src)
    local Player = BSCore.Functions.GetPlayer(src)
    if not Player then return end
    for _, v in pairs(Config.StarterItems) do
        
        if Player.Functions.AddItem then
            if info and next(info) ~= nil then
                Player.Functions.AddItem(v.name, v.amount, false, info )
            else
                Player.Functions.AddItem(v.name, v.amount)
            end
        end
    end
end

CORE_INTEGRATIONS['bs'] = {
    getCharacters = function(self, source)
        local p = promise:new()

        local identifierType = Config.IdentifierType
        local identifier = BSCore.Functions.GetIdentifier(source, Config.IdentifierType)
        MySQL.query('SELECT * FROM players WHERE ' .. Config.IdentifierType .. ' = ? ORDER BY citizenid ASC', {identifier}, function(result)
            local characters = {}
            for i = 1, #result, 1 do
                if result[i] then
                    result[i].charinfo = json.decode(result[i].charinfo)
                    result[i].money = json.decode(result[i].money)
                    result[i].job = json.decode(result[i].job)
                    if not result[i].job then 
                        result[i].job = {
                            name = 'Unknown',
                            grade = {
                                name = 'None'
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
            end
            p:resolve(characters)
        end)

        return Citizen.Await(p)
    end,
    logout = function(self, source)
        if BSCore.Functions.GetPlayer(source) then
            BSCore.Player.Logout(source)
        end
    end,
    selectCharacter = function(self, src, charid, isNew, data)
        if not isNew then
            local cData = {
                citizenid = charid,
            }
            if BSCore.Player.Login(src, charid) then
                BSCore.Commands.Refresh(src)
                local success, error = pcall(function()
                    loadHouseData(src)
                end)
                
                TriggerClientEvent('cylex_multicharacter:qb:lastLocation', src, cData)

                local discord = BSCore.Functions.GetIdentifier(src, 'discord')
                TriggerEvent("qb-log:server:CreateLog", "joinleave", "Loaded", "green", 
                    string.format("**%s** (<@%s> |  ||%s|| | %s | %s | %d) loaded..",
                    GetPlayerName(src),
                    (discord and (discord:gsub("discord:", "") or "unknown")),
                    (BSCore.Functions.GetIdentifier(src, 'ip') or 'undefined'),
                    (BSCore.Functions.GetIdentifier(src, 'license') or 'undefined'),
                    charid,
                    src
                ))

                SetTimeout(2500, function()
                    local player = BSCore.Functions.GetPlayer(src)
                    if player then
                        local charinfo = player.PlayerData.charinfo
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
            if BSCore.Player.Login(src, false, newData) then
                print(('%s %s (%s) has created new character!'):format(data.firstName, data.lastName, GetPlayerName(src)))
                local discord = BSCore.Functions.GetIdentifier(src, 'discord')
                TriggerEvent("qb-log:server:CreateLog", "joinleave", "New Character", "green", 
                    string.format("**%s** (<@%s> |  ||%s|| | %s | %s | %d) created new character!",
                    GetPlayerName(src),
                    (discord and (discord:gsub("discord:", "") or "unknown")),
                    (BSCore.Functions.GetIdentifier(src, 'ip') or 'undefined'),
                    (BSCore.Functions.GetIdentifier(src, 'license') or 'undefined'),
                    charid,
                    src
                ))
                BSCore.Commands.Refresh(src)

                local success, error = pcall(function()
                    loadHouseData(src)
                end)

                TriggerEvent('apartments:client:SetHomeBlip', nil)
                newData.temp_apartment = exports["bs-apartments"]:onCharacterCreated(src)
                TriggerClientEvent('cylex_multicharacter:qb:firstSpawn', src, newData)

                SetTimeout(3000, function()
                    GiveStarterItems(src)
                    
                end)

                return true
            end
        end
    end,
    deleteCharacter = function(self, source, charid)
        if not charid then return false end
        BSCore.Player.DeleteCharacter(source, charid)
        return true
    end,
    getPlayerId = function(self, source)
        local player = BSCore.Functions.GetPlayer(tonumber(source))
        return player and player.PlayerData.citizenid or nil
    end,
}