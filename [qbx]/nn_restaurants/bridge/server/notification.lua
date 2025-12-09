-- Server-side notification bridge for ox_lib

-- Show notification to player
bridge.notification.show = function(source, data)
    local notifData = {
        title = data.title or '',
        description = data.message or data.description or '',
        type = data.type or 'info',
        duration = data.duration or 5000
    }

    TriggerClientEvent('ox_lib:notify', source, notifData)
end
