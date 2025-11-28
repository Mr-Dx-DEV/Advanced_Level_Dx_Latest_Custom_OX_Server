local Utils = require('server.modules.utils')

Dice = {}

lib.callback.register('onex:casino:getDice', function(source, amount)
    amount = Utils.clampBet(tonumber(amount) or 0)
    if amount <= 0 then return false end

    local player = math.random(1, 6)
    local server = math.random(1, 6)

    local payout = 0
    local result = 'lose'

    if player > server then
        payout = amount * 2
        result = 'win'
    end

    Utils.handleBankMoney(source, amount, payout)
    Utils.logGame(source, 'dice', amount, payout, result)

    return {
        type = {
            playerNumber = player,
            serverNumber = server
        }
    }, false
end)

return Dice
