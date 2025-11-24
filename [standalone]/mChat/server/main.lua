

-- =================================================================
-- INITIALIZATION
-- =================================================================

-- Core object for framework integration (e.g., ESX, QBCore)
Core = nil
-- Table to store the last known job of a player, used for updating chat tabs.
lastJobs = {}

-- Thread to detect and set the framework Core object on resource start.
CreateThread(function()
    -- GetCore is a function that should be defined elsewhere to identify the framework.
    Core, Config.Framework = GetCore()
end)

-- =================================================================
-- PLAYER IDENTIFICATION & UTILITIES
-- =================================================================

--- Retrieves a player's rockstar license identifier.
--- @param playerId number The server ID of the player.
--- @return string|nil The player's license identifier or nil if not found.
function GetLicense(playerId)
    for _, identifier in ipairs(GetPlayerIdentifiers(playerId)) do
        if string.match(identifier, "license:") then
            return identifier
        end
    end
    return nil
end

--- Checks if a chat channel is a private/job-based channel and returns a list of players in it.
--- @param source number The server ID of the player sending the message.
--- @param channel string The name of the channel to check (e.g., "police", "admin").
--- @return table|false A table of player IDs in the channel, or false if not a private channel.
function CheckIsPrivateChannel(source, channel)
    -- Check if the player has the required job or is an admin.
    local hasJob = CheckPlayerJob(source)
    local isAdmin = CheckIsAdmin(source)
    local recipientList = {}

    -- Iterate through all available tags/channels in the config.
    for tagName, tagData in pairs(Config.Tags) do
        -- Check if the message is intended for this channel and the sender has permission.
        if channel == tagName and (hasJob or isAdmin) then
            -- Find all online players who are part of this channel.
            for _, playerId in ipairs(GetPlayers()) do
                local targetPlayerId = tonumber(playerId)
                local targetHasJob = CheckPlayerJob(targetPlayerId)
                local targetIsAdmin = CheckIsAdmin(targetPlayerId)
                local targetJobName = targetHasJob and targetHasJob[2] or nil

                -- Add player to recipient list if they have the matching job, or if it's the admin channel and they are an admin.
                if (targetJobName == channel) or (targetIsAdmin and channel == "admin") then
                    table.insert(recipientList, targetPlayerId)
                end
            end

            if #recipientList > 0 then
                return recipientList
            end
        end
    end
    return false
end

--- Removes duplicate entries from a table.
--- @param tbl table The table to process.
--- @return table A new table with unique values.
function RemoveDuplicate(tbl)
    local uniqueEntries = {}
    local seen = {}
    for _, value in pairs(tbl) do
        if not seen[value] then
            table.insert(uniqueEntries, value)
            seen[value] = true
        end
    end
    return uniqueEntries
end

--- Checks if a given player source ID is currently online.
--- @param source string|number The server ID of the player to check.
--- @return boolean True if the player is online, false otherwise.
function IsSourceOnline(source)
    local sourceId = tonumber(source)
    for _, playerId in ipairs(GetPlayers()) do
        if sourceId == tonumber(playerId) then
            return true
        end
    end
    return false
end

--- Parses a message to find tagged player IDs (e.g., "@1").
--- @param message string The chat message to parse.
--- @return table A table of player IDs found in the message.
function CheckIsReply(message)
    local taggedPlayers = {}
    -- string.gmatch finds all occurrences of the pattern "@(any number)"
    for playerId in string.gmatch(message, "@(%d+)") do
        table.insert(taggedPlayers, playerId)
    end
    return taggedPlayers
end

-- =================================================================
-- EVENT HANDLERS
-- =================================================================

-- Register the server event for the typing indicator.
RegisterServerEvent("mChat:SyncTypingIndicator")

-- Handle the typing indicator sync event from a client.
AddEventHandler("mChat:SyncTypingIndicator", function(isTyping)
    local sourcePlayer = source
    -- If the feature is enabled, broadcast the player's typing status to all other clients.
    if Config.EnableTypingIndicator then
        TriggerClientEvent("mChat:SyncTypingIndicator", -1, sourcePlayer, isTyping)
    end
end)