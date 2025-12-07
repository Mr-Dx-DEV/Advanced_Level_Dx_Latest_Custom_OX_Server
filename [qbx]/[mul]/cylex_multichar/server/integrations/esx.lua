if Config.core ~= 'esx' then return end

local databaseConnected = false
local databaseFound = false

local DATABASE
do
    local connectionString = GetConvar("mysql_connection_string", "")

    if connectionString == "" then
        error(connectionString .. "\n^1Unable to start Multicharacter - unable to determine database from mysql_connection_string^0", 0)
    elseif connectionString:find("mysql://") then
        connectionString = connectionString:sub(9, -1)
        DATABASE = connectionString:sub(connectionString:find("/") + 1, -1):gsub("[%?]+[%w%p]*$", "")
        databaseFound = true
    else
        connectionString = { string.strsplit(";", connectionString) }

        for i = 1, #connectionString do
            local v = connectionString[i]
            if v:match("database") then
                DATABASE = v:sub(10, #v)
                databaseFound = true
                break
            end
        end
    end
end

local DB_TABLES = { 
    users = "identifier" 
}
local SLOTS = Config.Slots or 4
local PREFIX = Config.Prefix or "char"
local PRIMARY_IDENTIFIER = ESX.GetConfig().Identifier or GetConvar("sv_lan", "") == "true" and "ip" or "license"


function GetIdentifier(source)
    local fxDk = GetConvarInt("sv_fxdkMode", 0)
    if fxDk == 1 then
        return "ESX-DEBUG-LICENCE"
    end
    local identifier = GetPlayerIdentifierByType(source, PRIMARY_IDENTIFIER)
    return identifier and identifier:gsub(PRIMARY_IDENTIFIER .. ":", "")
end

if next(ESX.Players) then
    local players = table.clone(ESX.Players)
    table.wipe(ESX.Players)
    for _, v in pairs(players) do
        ESX.Players[GetIdentifier(v.source)] = true
    end
else
    ESX.Players = {}
end

MySQL.ready(function()
    local length = 42 + #PREFIX
    local DB_COLUMNS = MySQL.query.await(('SELECT TABLE_NAME, COLUMN_NAME, CHARACTER_MAXIMUM_LENGTH FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA = "%s" AND DATA_TYPE = "varchar" AND COLUMN_NAME IN (?)'):format(DATABASE, length), {
        { "identifier", "owner" },
    })

    if DB_COLUMNS then
        local columns = {}
        local count = 0

        for i = 1, #DB_COLUMNS do
            local column = DB_COLUMNS[i]
            DB_TABLES[column.TABLE_NAME] = column.COLUMN_NAME

            if column?.CHARACTER_MAXIMUM_LENGTH ~= length then
                count = count + 1
                columns[column.TABLE_NAME] = column.COLUMN_NAME
            end
        end

        if next(columns) then
            local query = "ALTER TABLE `%s` MODIFY COLUMN `%s` VARCHAR(%s)"
            local queries = table.create(count, 0)

            for k, v in pairs(columns) do
                queries[#queries + 1] = { query = query:format(k, v, length) }
            end

            if MySQL.transaction.await(queries) then
                print(("[^2INFO^7] Updated ^5%s^7 columns to use ^5VARCHAR(%s)^7"):format(count, length))
            else
                print(("[^2INFO^7] Unable to update ^5%s^7 columns to use ^5VARCHAR(%s)^7"):format(count, length))
            end
        end

        databaseConnected = true

        while not next(ESX.Jobs) do
            Wait(500)
            ESX.Jobs = ESX.GetJobs()
        end
    end
end)

local function DeleteCharacter(source, charid)
    local identifier = ("%s%s:%s"):format(PREFIX, charid, GetIdentifier(source))
    local query = "DELETE FROM `%s` WHERE %s = ?"
    local queries = {}
    local count = 0

    for table, column in pairs(DB_TABLES) do
        count = count + 1
        queries[count] = { query = query:format(table, column), values = { identifier } }
    end

    MySQL.transaction(queries, function(result)
        if result then
            print(("[^2INFO^7] Player ^5%s %s^7 has deleted a character ^5(%s)^7"):format(GetPlayerName(source), source, identifier))
            Wait(50)
        else
            error("\n^1Transaction failed while trying to delete " .. identifier .. "^0")
        end
    end)

    return true
end

local function GiveStarterItems(src)
    for _, v in pairs(Config.StarterItems) do
        if GetResourceState("ox_inventory") == "started" then
            exports.ox_inventory:AddItem(src, v.name, v.amount)
        end
    end
end


CORE_INTEGRATIONS['esx'] = {
    getCharacters = function(self, source)
        while not databaseConnected do
            Wait(100)
        end
        
        local identifier = GetIdentifier(source)
        ESX.Players[identifier] = true

        local slots = MySQL.scalar.await("SELECT slots FROM multicharacter_slots WHERE identifier = ?", { identifier }) or SLOTS
        identifier = PREFIX .. "%:" .. identifier

        local result = MySQL.query.await("SELECT identifier, accounts, job, job_grade, firstname, lastname, dateofbirth, sex, skin, disabled FROM users WHERE identifier LIKE ? LIMIT ?", { identifier, slots })
        local characters = {}

        if result then
            local characterCount = #result    
            for i = 1, characterCount, 1 do
                local v = result[i]
                local job, grade = v.job or "unemployed", tostring(v.job_grade)

                if ESX.Jobs[job] and ESX.Jobs[job].grades[grade] then
                    if job ~= "unemployed" then
                        grade = ESX.Jobs[job].grades[grade].label
                    else
                        grade = ""
                    end
                    job = ESX.Jobs[job].label
                end
    
                local accounts = json.decode(v.accounts)
                local id = tonumber(string.sub(v.identifier, #PREFIX + 1, string.find(v.identifier, ":") - 1))
                local skin = {}
                if v.skin and v.skin ~= nil then 
                    skin = json.decode(v.skin)
                end
                -- print("playerSkin", json.encode(skin))
                if not v.disabled then
                    characters[#characters + 1] = {
                        charId = id,
                        cid = #characters + 1,
                        bank = accounts.bank,
                        cash = accounts.money,
                        job = job .. " " .. grade,
                        firstName = v.firstname,
                        lastName = v.lastname,
                        dob = v.dateofbirth,
                        skin = skin or {},
                        gender = v.sex == "m" and "male" or "female",
                        nationality = "American",
                        playTime = GetPlayerPlayTime(id, source),
                    }
                end
            end
        end

        return characters
    end,
    logout = function(self, source)
        local xPlayer = ESX.GetPlayerFromId(source)
        if xPlayer then
            TriggerEvent("esx:playerLogout", source)
        end
    end,
    selectCharacter = function(self, source, charid, isNew, data)
        if type(charid) == "number" and string.len(charid) <= 2 and type(isNew) == "boolean" then
            if not isNew then
                if not ESX.GetConfig().EnableDebug then
                    local identifier = PREFIX .. charid .. ":" .. GetIdentifier(source)
                    if ESX.GetPlayerFromIdentifier(identifier) then
                        DropPlayer(source, "Your identifier " .. identifier .. " is already on the server!")
                        return
                    end
                end
                TriggerEvent("esx:onPlayerJoined", source, PREFIX .. charid)
                ESX.Players[GetIdentifier(source)] = true
            else
                TriggerEvent("esx:onPlayerJoined", source, PREFIX .. charid, data)
                SetTimeout(3000, function()
                    GiveStarterItems(source)
                end)
            end
            return true
        end

        return false
    end,
    deleteCharacter = function(self, source, charid)
        return DeleteCharacter(source, charid)
    end,
    getPlayerId = function(self, source)
        local xPlayer = ESX.GetPlayerFromId(tonumber(source))
        return xPlayer and xPlayer.identifier or nil
    end,
}