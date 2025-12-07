Config = Config or {} -- do not touch

Config.DefaultMaxSlot = 7
Config.BotToken = ""
Config.GuildId = "1153699594950152266"
Config.RoleSlots = {
    -- ["1168918990945538068"] = 2, -- Tester
    -- ["Administrator"] = 4 -- Administrator
}
Config.ServerRolesUpdateInterval = 60000


Config.Type = 'config' -- sql or config (DO NOT TOUCH THIS)
-- This table overrides the discord role for player
Config.IdentifierSlots = {
    -- ["license:b4a06f39d0987252d5c15c4548e83e48f8660b83"] = 5,
    -- ["license:a9cacd4d5ed8124ed46c390a1008a1f1ad35536d"] = 7,
}

exports('GetSlots', function()
    return Config.IdentifierSlots
end)

RegisterCommand("logout", function(source)
    Core.logout(source)
    TriggerClientEvent("cylex_multichar:logout", source)
end, true)

RPC.register("cylex_multicharacter:getSkin", function(source, cid)
    local model, skin = 'mp_m_freemode_01', {}
    local identifier = cid
    if Config.core == 'esx' then 
        identifier = "char" .. cid .. ":" .. GetIdentifier(source)
    end
    if Config.clothing == 'bl_appearance' then
        local appearance = exports.bl_appearance:GetPlayerAppearance(identifier)
        if appearance then
            model = appearance.model
            if appearance.skin then 
                skin = appearance.skin
            else
                skin = appearance
            end
        end
    elseif Config.clothing == 'rcore_clothing' then
        local appearance = exports.rcore_clothing:getSkinByIdentifier(identifier)
        if appearance then
            model = appearance.ped_model
            skin = appearance.skin
        end
    elseif Config.clothing == 'tgiann-clothing' then
        local result = MySQL.single.await('SELECT `model`, `skin` FROM `tgiann_skin` WHERE `citizenid` = ? LIMIT 1', {identifier})
        if result and result.model and result.skin then
            model = result.model
            skin = json.decode(result.skin)
        end
    elseif Config.clothing == 'skinchanger' then
        local result = MySQL.single.await('SELECT `skin`, `sex` FROM `users` WHERE `identifier` = ?', {identifier})
        if result then
            if result.skin then
                skin = json.decode(result.skin)
            end
            if result.sex ~= nil then
                model = ('mp_%s_freemode_01'):format(result.sex)
            end
        end

    else
        local skinQuery = nil

        if Config.skinTable == 'playerskins' then
            skinQuery = MySQL.single.await('SELECT * FROM playerskins WHERE citizenid = ? AND active = ?', {identifier, 1})
        else
            skinQuery = MySQL.single.await('SELECT skin FROM users WHERE identifier = ?', {identifier})
        end


        if skinQuery ~= nil then
            skinQuery.model = tonumber(skinQuery.model) or skinQuery.model
            if Config.skinTable == 'playerskins' then
                model = skinQuery.model
                skin = json.decode(skinQuery.skin)
            else
                skin = json.decode(skinQuery.skin)
                model = skin.model
            end
        end
    end

    return model, skin
end)