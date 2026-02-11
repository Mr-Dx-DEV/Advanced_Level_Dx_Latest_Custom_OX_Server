function canToggleTracking(source)
    if bridge.isStaff(source, Config.AdminPermissionToTrack) then
        return true
    end

    if not Config.EnableUsageTracking then
        return false
    end

    local society, grade = bridge.currentSocietyWithGrade(source)

    if Config.SocietyCanUseTracking[society] and Config.SocietyCanUseTracking[society] <= grade then
        return true
    end

    return false
end

if Config.EnableUsageTracking then
    lib.addCommand(Config.TrackingCommand, {
        params = {
            {
                name = 'target',
                type = 'playerId'
            }
        }
    }, function(source, args, raw)
        if not args.target then
            return
        end

        if not canToggleTracking(source) then
            bridge.notify(source, locale('you_dont_have_permission_to_use_this_command'), 'error')
            return
        end

        if tonumber(args.target) ~= nil then
            args.target = bridge.getIdentifier(tonumber(args.target))
        end

        if not args.target then
            bridge.notify(source, locale('invalid_player_id'), 'error')
            return
        end

        local isTracked = MySQL.single.await('SELECT * FROM fd_advanced_banking_tracking WHERE identifier = ?',
            { args.target })

        if isTracked then
            bridge.notify(source, locale('player_already_tracked'), 'error')
            return
        end

        MySQL.insert('INSERT INTO fd_advanced_banking_tracking (identifier) VALUES (?)', { args.target })

        bridge.notify(source, locale('player_is_being_tracked', args.target), 'success')
    end)

    lib.addCommand(Config.UntrackCommand, {
        params = {
            {
                name = 'target',
                type = 'playerId'
            }
        }
    }, function(source, args, raw)
        if not args.target then
            return
        end

        if not canToggleTracking(source) then
            bridge.notify(source, locale('you_dont_have_permission_to_use_this_command'), 'error')
            return
        end

        local isTracked = MySQL.single.await('SELECT * FROM fd_advanced_banking_tracking WHERE identifier = ?',
            { args.target })

        if not isTracked then
            bridge.notify(source, locale('player_is_not_being_tracked'), 'error')
            return
        end

        MySQL.query('DELETE FROM fd_advanced_banking_tracking WHERE identifier = ?', { args.target })

        bridge.notify(source, locale('player_tracking_removed', args.target), 'success')
    end, false)
end

RegisterNetEvent("fd_banking:server:isTracked", function(coords, type)
    local src = source
    local identifier = bridge.getIdentifier(source)

    if not identifier then
        return
    end

    local isTracked = MySQL.single.await('SELECT * FROM fd_advanced_banking_tracking WHERE identifier = ?',
        { identifier })

    if not isTracked then
        return
    end

    bridge.trackedPlayerUsed(src, identifier, coords, type)
end)
