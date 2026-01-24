--[[
    TextUI Wrapper using Wasabi UI Kit
    Fully dynamic version that syncs with Config.DrawTextUI live.
    Drop-in replacement for ox_lib's TextUI functions.
]]

---@class TextUIOptions
---@field key? string                  -- optional control key (e.g. 'E')
---@field position? 'bottom'|'top'|'left'|'right' -- screen position override
---@field style? 'normal'|'keyTop'|'keyBottom'|'keySeparated' -- style override

local isOpen = false
local currentText = nil
local currentKey = nil

--- Helper to get current Wasabi DrawTextUI config dynamically
---@return string, string
local function getCurrentDrawTextUIConfig()
    local pos = 'bottom'
    local style = 'keySeparated'
    if Config and Config.DrawTextUI then
        pos = Config.DrawTextUI.Position or pos
        style = Config.DrawTextUI.style or style
    end
    return pos, style
end

--- Show TextUI (Wasabi version)
---@param text string
---@param options? TextUIOptions
function lib.showTextUI(text, options)
    if currentText == text then return end
    if not options then options = {} end

    local key = options.key or 'E'

    -- Always get live config (in case it was changed/reloaded)
    local cfgPos, cfgStyle = getCurrentDrawTextUIConfig()
    local position = cfgPos
    local style = cfgStyle

    currentText = text
    currentKey = key

    if GetResourceState('wasabi_uikit') == 'started' then
        exports.wasabi_uikit:OpenTextUI(text, key, position, style)
    else
        print(('[textui.lua] ⚠️ Wasabi UI Kit not running! Unable to display TextUI (%s)'):format(text))
    end

    isOpen = true
end

--- Hide TextUI
function lib.hideTextUI()
    if not isOpen then return end

    if GetResourceState('wasabi_uikit') == 'started' then
        exports.wasabi_uikit:CloseTextUI()
    end

    isOpen = false
    currentText = nil
    currentKey = nil
end

--- Change TextUI (update text or key)
---@param text string
---@param key? string
function lib.changeTextUI(text, key)
    if not isOpen then return end
    key = key or currentKey
    currentText = text

    if GetResourceState('wasabi_uikit') == 'started' then
        exports.wasabi_uikit:ChangeTextUI(text, key)
    end
end

--- Check if TextUI is open
---@return boolean, string | nil
function lib.isTextUIOpen()
    return isOpen, currentText
end
