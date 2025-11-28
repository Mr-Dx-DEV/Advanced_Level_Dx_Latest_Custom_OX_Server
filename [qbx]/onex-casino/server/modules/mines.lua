local Utils = require('server.modules.utils')
local Sessions = require('server.modules.sessions')

Mines = {}

lib.callback.register('onex:casino:getMines', function(source, amount)
    amount = Utils.clampBet(tonumber(amount) or 0)
    if amount <= 0 then return false end

    Utils.handleBankMoney(source, amount, 0)
    Utils.logGame(source, 'mines', amount, 0, 'start')

    local total = Config.Mines.TotalCards
    local bombsCount = Config.Mines.Bombs

    if bombsCount >= total then bombsCount = total - 1 end

    local cards = {}
    for i = 0, total - 1 do cards[#cards+1] = i end

    for i = #cards, 2, -1 do
        local j = math.random(i)
        cards[i], cards[j] = cards[j], cards[i]
    end

    local bombs = {}
    for i = 1, bombsCount do
        bombs[cards[i]] = true
    end

    Sessions.startMines(source, bombs)

    return true, false
end)

lib.callback.register('onex:casino:revealCard', function(source, index)
    local session = Sessions.getMines(source)
    if not session or not session.active then
        return false, false
    end

    index = tonumber(index)
    if not index or index < 0 or index >= Config.Mines.TotalCards then
        return false, false
    end

    local isBomb = session.bombs[index] == true

    if isBomb then
        session.active = false
    end

    return true, isBomb
end)

return Mines
