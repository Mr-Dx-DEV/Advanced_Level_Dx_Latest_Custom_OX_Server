local Utils = require('server.modules.utils')

Crash = {}

lib.callback.register('onex:casino:getCrash', function(source, data)
    if type(data) ~= 'table' then return false end

    local bet = Utils.clampBet(tonumber(data.amount) or 0)
    local exit = tonumber(data.checkout) or 1.0

    if bet <= 0 then return false end

    if exit < 1.0 then exit = 1.0 end
    if exit > 10.0 then exit = 10.0 end

    local crashPoint = math.random(100, 1000) / 100.0
    local win = crashPoint >= exit
    local payout = win and math.floor(bet * exit) or 0

    Utils.handleBankMoney(source, bet, payout)
    Utils.logGame(source, 'crash', bet, payout, win and 'win' or 'lose')

    return crashPoint, { crashPoint = crashPoint }
end)

return Crash
