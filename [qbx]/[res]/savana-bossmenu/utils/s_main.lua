local Framework, frameworkName = getFramework()

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
            if Info and Info[1] then
                return Info[1].firstname .. " " .. Info[1].lastname
            else
                return "Name not found"
            end
        else
            local Player = GetPlayerFromIdentifier(identifier)
            if Player then
                return Player.PlayerData.charinfo.firstname .. " " .. Player.PlayerData.charinfo.lastname
            else
                local Info = MySQL.Sync.fetchAll("SELECT charinfo FROM players WHERE citizenid = @citizenid", {["@citizenid"] = identifier})
                if Info and Info[1] and Info[1].charinfo then
                    local decode = json.decode(Info[1].charinfo)
                    if decode and decode.firstname and decode.lastname then
                        return decode.firstname .. " " .. decode.lastname
                    else
                        return "Invalid charinfo data"
                    end
                else
                    return "Player not found"
                end
            end
        end
    else
        return "Identifier not provided"
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