

-- =================================================================
-- INITIALIZATION
-- =================================================================

-- State variables to track the chat and cursor status
chatOpen = false
cursorOpen = false
chatLoaded = false

-- Core object for framework integration (e.g., ESX, QBCore)
Core = nil

-- =================================================================
-- CORE & FRAMEWORK SETUP
-- =================================================================

-- Thread to detect and set the framework Core object on resource start
CreateThread(function()
    -- GetCore is a function that should be defined elsewhere in the resource
    -- to identify the framework being used (e.g., ESX, QBCore, standalone).
    Core, Config.Framework = GetCore()
end)

-- =================================================================
-- NET EVENTS & EVENT HANDLERS
-- =================================================================

-- Register client-side events that can be triggered by the server or other scripts
RegisterNetEvent("mChat:PlayTagSound")
RegisterNetEvent("mChat:ToggleCustomChatAccess")

-- Handler to play a sound when a player is tagged in a message
AddEventHandler("mChat:PlayTagSound", function()
    SendNUIMessage({
        action = "PLAY_TAG_SOUND"
    })
end)

-- Handler to toggle visibility of a custom chat tab based on permissions
AddEventHandler("mChat:ToggleCustomChatAccess", function(hasAccess)
    SendNUIMessage({
        action = "TOGGLE_CUSTOM_CHAT_TAB",
        payload = hasAccess
    })
end)

-- =================================================================
-- UI & NUI CALLBACKS
-- =================================================================

-- This callback is triggered by the NUI (UI/HTML) when it has fully loaded.
RegisterNUICallback("loaded", function(data, cb)
    if not chatLoaded then
        -- Inform the server that this client's chat is ready
        TriggerServerEvent("chat:init")
        -- Load command suggestions
        refreshCommands()
        chatLoaded = true
    end
    -- Acknowledge the callback
    cb("ok")
end)

-- This callback is triggered when the user closes the chat from the UI (e.g., pressing ESC).
RegisterNUICallback("close", function(data, cb)
    ToggleChat(false)
    cb("ok")
end)

-- This callback allows the UI to request a cursor toggle (e.g., for dropdowns).
RegisterNUICallback("toggleCursor", function(data, cb)
    if chatOpen then
        ToggleCursor(not cursorOpen)
    end
    cb("ok")
end)

-- =================================================================
-- CHAT STATE MANAGEMENT
-- =================================================================

-- Toggles the main chat window's visibility and state.
function ToggleChat(shouldBeOpen)
    -- Send a message to the UI to show or hide it
    SendNUIMessage({
        action = "TOGGLE_CHAT",
        payload = shouldBeOpen
    })
    chatOpen = shouldBeOpen
    -- Update the typing indicator status
    ToggleTypingIndicator()
    -- Ensure the cursor is hidden when the chat is toggled
    ToggleCursor(false)
end

-- Toggles the mouse cursor's visibility and NUI focus.
function ToggleCursor(shouldBeVisible)
    -- SetNuiFocus(isChatOpen, isCursorVisible)
    SetNuiFocus(chatOpen, shouldBeVisible)
    cursorOpen = shouldBeVisible
end

-- Triggers events for the typing indicator feature when the chat opens or closes.
function ToggleTypingIndicator()
    if Config.EnableTypingIndicator then
        if chatOpen then
            TriggerEvent("mChat:OnChatOpen")
        else
            TriggerEvent("mChat:OnChatClose")
        end
    end
end

-- =================================================================
-- CONFIGURATION & DATA LOADING
-- =================================================================

-- Thread to wait for the player's session to be active, then load all necessary data into the UI.
CreateThread(function()
    while true do
        Wait(1000)
        if NetworkIsSessionStarted() then
            -- Tell the UI that the chat system is ready to be displayed
            SendNUIMessage({
                action = "CHAT_LOADED",
                payload = GetCurrentResourceName()
            })

            -- Wait until the NUI confirms it's loaded before sending data
            if chatLoaded then
                LoadTags()
                ShowId()
                LoadLogo()
                Wait(1000) -- Small delay to ensure UI can process initial data
                LoadBlacklistedWords()
                -- Stop this thread after loading is complete
                return
            end
        end
    end
end)

-- Sends the server logo URL from the config to the UI.
function LoadLogo()
    SendNUIMessage({
        action = "SET_LOGO",
        payload = Config.SettingsLogo
    })
end

-- Tells the UI whether to show player server IDs in messages.
function ShowId()
    SendNUIMessage({
        action = "SHOW_ID",
        payload = Config.ShowID
    })
end

-- Sends the list of blacklisted words to the UI for client-side filtering.
function LoadBlacklistedWords()
    SendNUIMessage({
        action = "SET_BLACKLISTEDWORDS",
        payload = Config.BlacklistedWords
    })
end

-- Loads chat tags (e.g., for staff, police) from the config and sends them to the UI.
function LoadTags()
    local filteredTags = {}
    -- Iterate through configured tags
    for tagName, tagData in pairs(Config.Tags) do
        filteredTags[tagName] = {}
        -- Copy tag data, but explicitly exclude the 'members' list to avoid sending unnecessary data
        for key, value in pairs(tagData) do
            if key ~= "members" then
                filteredTags[tagName][key] = value
            end
        end
    end

    SendNUIMessage({
        action = "SET_TAGS",
        payload = filteredTags
    })
end

-- =================================================================
-- UTILITY & MISC
-- =================================================================
local lastState = false -- Used to track the last day/night state

-- Checks if the current in-game time is night (between 9 PM and 5 AM).
function IsNight()
    local currentHour = GetClockHours()
    if currentHour >= 21 or currentHour <= 5 then
        return true
    end
    return false
end

-- Checks if the day/night state has changed and updates the UI overlay accordingly.
function CheckOverlayShouldChange()
    local isNightNow = IsNight()
    local stateChanged = false
    if lastState ~= isNightNow then
        stateChanged = true
    end

    if stateChanged then
        SendNUIMessage({
            action = "IS_NIGHT",
            payload = isNightNow
        })
    end
    lastState = isNightNow
end

-- Thread to periodically check if the day/night overlay needs to change.
CreateThread(function()
    while true do
        Wait(1000)
        -- Only run the check if the chat is open to save resources
        if chatOpen then
            CheckOverlayShouldChange()
        end
    end
end)

-- Register a '/clear' command to clear the chat window.
RegisterCommand("clear", function()
    TriggerEvent("chat:clear")
end, false) -- 'false' indicates it's not a restricted command