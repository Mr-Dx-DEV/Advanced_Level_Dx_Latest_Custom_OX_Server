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
            return Info[1].firstname.." "..Info[1].lastname
        else
            local Player = GetPlayerFromIdentifier(identifier)
            return Player.PlayerData.charinfo.firstname.." "..Player.PlayerData.charinfo.lastname
        end
    else
        return "Not Found"
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