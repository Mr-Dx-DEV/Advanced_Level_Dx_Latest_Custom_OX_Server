Sessions = {
    open = {},
    mines = {}
}

AddEventHandler('playerDropped', function()
    local src = source
    Sessions.open[src] = nil
    Sessions.mines[src] = nil
end)

Sessions.openCasino = function(src)
    if Sessions.open[src] then return false end
    Sessions.open[src] = true
    Sessions.mines[src] = nil
    return true
end

Sessions.closeCasino = function(src)
    Sessions.open[src] = nil
    Sessions.mines[src] = nil
end

Sessions.startMines = function(src, bombs)
    Sessions.mines[src] = {
        bombs = bombs,
        active = true
    }
end

Sessions.getMines = function(src)
    return Sessions.mines[src]
end

Sessions.endMines = function(src)
    Sessions.mines[src] = nil
end

return Sessions
