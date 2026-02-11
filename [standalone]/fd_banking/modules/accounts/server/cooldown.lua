local onCooldown = {}

function startCooldown(source)
    onCooldown[source] = true

    SetTimeout((Config.Cooldown or 5) * 1000, function()
        onCooldown[source] = nil
    end)
end

function isOnCooldown(source)
    return onCooldown[source] or false
end
