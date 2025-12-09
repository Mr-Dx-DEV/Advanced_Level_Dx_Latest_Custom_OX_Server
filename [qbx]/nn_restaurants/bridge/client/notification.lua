-- Client-side notification bridge for ox_lib

-- Show notification
bridge.notification.show = function(data)
    local notifData = {
        title = data.title or '',
        description = data.message or data.description or '',
        type = data.type or data.style or 'info',
        duration = data.duration or 5000
    }

    lib.notify(notifData)
end
