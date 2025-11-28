local Utils = require('server.modules.utils')

Roulette = {}

Roulette.ensureList = function()
    if Config.Roulette.Numbers and #Config.Roulette.Numbers > 0 then return end
    local tbl = {}
    for i = 0, 36 do
        tbl[#tbl+1] = i
    end
    Config.Roulette.Numbers = tbl
end

Roulette.getColor = function(num)
    if num == 0 then return 'green' end

    local red = {
        [1]=true,[3]=true,[5]=true,[7]=true,[9]=true,[12]=true,[14]=true,[16]=true,
        [18]=true,[19]=true,[21]=true,[23]=true,[25]=true,[27]=true,[30]=true,
        [32]=true,[34]=true,[36]=true
    }
    return red[num] and 'red' or 'black'
end

lib.callback.register('onex:casino:getRoullete', function(source, data)
    if type(data) ~= 'table' then return false end

    Roulette.ensureList()

    local red   = Utils.clampBet(tonumber(data.red) or 0)
    local black = Utils.clampBet(tonumber(data.black) or 0)
    local green = Utils.clampBet(tonumber(data.green) or 0)

    local total = red + black + green
    if total <= 0 then return false end

    local list = Config.Roulette.Numbers
    local number = list[math.random(#list)]
    local color = Roulette.getColor(number)

    local payout = 0
    if number == 0 then
        payout = green * 14
    elseif color == 'red' then
        payout = red * 2
    else
        payout = black * 2
    end

    Utils.handleBankMoney(source, total, payout)
    Utils.logGame(source, 'roulette', total, payout, payout > total and 'win' or 'lose')

    return { type = { winNumber = number } }, false
end)

return Roulette
