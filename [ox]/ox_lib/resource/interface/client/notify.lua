--[[
    https://github.com/overextended/ox_lib

    This file is licensed under LGPL-3.0 or higher <https://www.gnu.org/licenses/lgpl-3.0.en.html>
    Copyright © 2025 Linden <https://github.com/thelindat>
]]

---@alias NotificationPosition 'top' | 'top-right' | 'top-left' | 'bottom' | 'bottom-right' | 'bottom-left' | 'center-right' | 'center-left'
---@alias NotificationType 'info' | 'warning' | 'success' | 'error'

---@class NotifyProps
---@field id? string
---@field title? string
---@field description? string
---@field duration? number
---@field position? NotificationPosition
---@field type? NotificationType
---@field icon? string
---@field color? string

--- `client`
---@param data NotifyProps
---@diagnostic disable-next-line: duplicate-set-field
function lib.notify(data)
    local notifType = data.type or 'info'
    local icon = data.icon or 'fa-solid fa-info-circle'

    if notifType == 'success' then
        icon = 'fa-solid fa-check-circle'
    elseif notifType == 'error' then
        icon = 'fa-solid fa-times-circle'
    elseif notifType == 'warning' then
        icon = 'fa-solid fa-exclamation-triangle'
    end

    -- ✅ Wasabi UIKit Notification Export
    exports.wasabi_uikit:Notification({
        title = data.title or 'Notification',
        text = data.description or '',
        type = notifType,                          -- info | success | warning | error
        time = data.duration or 5000,              -- milliseconds
        id = data.id,                              -- optional
        icon = icon,                               -- FontAwesome or custom
        color = data.color                         -- optional HEX/RGB custom color
    })
end

---@class DefaultNotifyProps
---@field title? string
---@field description? string
---@field du
