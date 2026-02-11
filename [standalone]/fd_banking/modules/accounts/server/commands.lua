if framework ~= 'qb' then return end
if Config.IsFreezingEnabled then
    -- Freeze by id
    lib.addCommand(Config.FreezingCommandById, {
        params = {
            {
                name = 'playerId',
                type = 'playerId'
            }
        }
    }, function(source, args, raw)
        if not args.playerId then
            return
        end

        local identifier = bridge.getIdentifier(source)

        if not identifier then
            return
        end

        if not canFreezeAccount(source) then
            bridge.notify(source, locale('you_dont_have_permission_to_use_this_command'), 'error')
            return
        end

        local targetPlayerIdentifier = bridge.getIdentifier(tonumber(args.playerId))

        if not targetPlayerIdentifier then
            bridge.notify(source, locale('player_not_online'), 'error')
            return
        end

        local account = getPersonalAccount(targetPlayerIdentifier)

        if not account then
            bridge.notify(source, locale('account_not_found'), 'error')
            return
        end

        if account.is_frozen then
            bridge.notify(source, locale('account_frozen'), 'error')
            return
        end

        MySQL.update('UPDATE fd_advanced_banking_accounts SET is_frozen = 1 WHERE id = ?', { account.id })

        bridge.notify(source, locale('account_frozen_successfully'), 'success')
    end)

    lib.addCommand(Config.UnfreezingCommandById, {
        params = {
            {
                name = 'playerId',
                type = 'playerId'
            }
        }
    }, function(source, args, raw)
        if not args.playerId then
            return
        end

        local identifier = bridge.getIdentifier(source)

        if not identifier then
            return
        end

        if not canFreezeAccount(source) then
            bridge.notify(source, locale('you_dont_have_permission_to_use_this_command'), 'error')
            return
        end

        local targetPlayerIdentifier = bridge.getIdentifier(args.playerId)

        if not targetPlayerIdentifier then
            bridge.notify(locale('player_not_online'), 'error')
            return
        end

        local account = getPersonalAccount(targetPlayerIdentifier)

        if not account then
            bridge.notify(source, locale('account_not_found'), 'error')
            return
        end

        if not account.is_frozen or account.is_frozen == 0 then
            bridge.notify(source, locale('account_not_frozen'), 'error')
            return
        end

        MySQL.update('UPDATE fd_advanced_banking_accounts SET is_frozen = 0 WHERE id = ?', { account.id })

        bridge.notify(source, locale('account_unfrozen_successfully'), 'success')
    end, false)

    -- Freeze by identifier
    lib.addCommand(Config.FreezingCommandByIdentifier, {
        params = {
            {
                name = 'citizenid',
                type = 'string'
            }
        }
    }, function(source, args, raw)
        if not args.citizenid then
            return
        end

        local identifier = bridge.getIdentifier(source)

        if not identifier then
            return
        end

        if not canFreezeAccount(source) then
            bridge.notify(source, locale('you_dont_have_permission_to_use_this_command'), 'error')
            return
        end

        local account = getPersonalAccount(args.citizenid)

        if not account then
            bridge.notify(source, locale('account_not_found'), 'error')
            return
        end

        if account.is_frozen then
            bridge.notify(source, locale('account_frozen'), 'error')
            return
        end

        MySQL.update('UPDATE fd_advanced_banking_accounts SET is_frozen = 1 WHERE id = ?', { account.id })

        bridge.notify(source, locale('account_frozen_successfully'), 'success')
    end)

    lib.addCommand(Config.UnfreezingCommandByIdentifier, {
        params = {
            {
                name = 'citizenid',
                type = 'string'
            }
        }
    }, function(source, args, raw)
        if not args.citizenid then
            return
        end

        local identifier = bridge.getIdentifier(source)

        if not identifier then
            return
        end

        if not canFreezeAccount(source) then
            bridge.notify(source, locale('you_dont_have_permission_to_use_this_command'), 'error')
            return
        end

        local account = getPersonalAccount(args.citizenid)

        if not account then
            bridge.notify(source, locale('account_not_found'), 'error')
            return
        end

        if not account.is_frozen or account.is_frozen == 0 then
            bridge.notify(source, locale('account_not_frozen'), 'error')
            return
        end

        MySQL.update('UPDATE fd_advanced_banking_accounts SET is_frozen = 0 WHERE id = ?', { account.id })

        bridge.notify(source, locale('account_unfrozen_successfully'), 'success')
    end, false)
end
