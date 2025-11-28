local ESX = exports['es_extended']:getSharedObject()

Utils = {}

Utils.debug = function(msg)
    if Config.Debug then
        print(('[OneX Casino DEBUG] %s'):format(msg))
    end
end

Utils.getPlayer = function(src)
    local xPlayer = ESX.GetPlayerFromId(src)
    if not xPlayer then
        Utils.debug(('Player %s nerastas ESX sistemoje'):format(src))
        return nil
    end
    return xPlayer
end

Utils.getIdentifier = function(xPlayer)
    return xPlayer.getIdentifier and xPlayer:getIdentifier() or xPlayer.identifier
end

Utils.clampBet = function(amount)
    if type(amount) ~= 'number' then return 0 end
    if amount < Config.MinBet then return 0 end
    if amount > Config.MaxBet then return Config.MaxBet end
    return math.floor(amount)
end

Utils.handleBankMoney = function(src, bet, payout)
    if not Config.UseBankMoney then return end

    local xPlayer = Utils.getPlayer(src)
    if not xPlayer then return end

    local bank = xPlayer.getAccount('bank')
    local balance = bank.money

    if balance < bet then
        return
    end

    xPlayer.removeAccountMoney('bank', bet)

    if payout > 0 then
        xPlayer.addAccountMoney('bank', payout)
    end
end

Utils.logGame = function(src, game, bet, payout, result)
    if not Config.LogToDatabase then return end

    local xPlayer = Utils.getPlayer(src)
    if not xPlayer then return end

    local identifier = Utils.getIdentifier(xPlayer)

    MySQL.query([[
        CREATE TABLE IF NOT EXISTS ]] .. Config.LogTableName .. [[ (
            id INT UNSIGNED NOT NULL AUTO_INCREMENT,
            identifier VARCHAR(64) NOT NULL,
            game VARCHAR(32) NOT NULL,
            bet INT UNSIGNED NOT NULL,
            payout INT UNSIGNED NOT NULL,
            result VARCHAR(16) NOT NULL,
            created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
            PRIMARY KEY(id)
        )
    ]])

    MySQL.insert('INSERT INTO `' .. Config.LogTableName .. '` (identifier, game, bet, payout, result) VALUES (?, ?, ?, ?, ?)', {
        identifier, game, bet, payout, result
    })
end

return Utils
