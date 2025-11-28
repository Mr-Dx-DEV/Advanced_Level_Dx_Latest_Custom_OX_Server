ESX = exports['es_extended']:getSharedObject()

local json = json
local modules = {}

-- Ikeliam moduliai
modules.roulette = require('server/modules/roulette')
modules.crash    = require('server/modules/crash')
modules.dice     = require('server/modules/dice')
modules.mines    = require('server/modules/mines')

------------------------------------------------------------
-- Pagalbines funkcijos
------------------------------------------------------------
local function GetIdentifier(src)
    local xPlayer = ESX.GetPlayerFromId(src)
    if not xPlayer then return nil end
    return xPlayer.getIdentifier()
end

local function LoadCasinoBalance(identifier)
    local result = MySQL.scalar.await("SELECT balance FROM casino_accounts WHERE identifier = ?", {
        identifier
    })

    if result == nil then
        MySQL.insert.await("INSERT INTO casino_accounts (identifier, balance) VALUES (?, ?)", {
            identifier, 0
        })
        return 0
    end

    return tonumber(result)
end

local function SaveCasinoBalance(identifier, amount)
    MySQL.update.await("UPDATE casino_accounts SET balance = ? WHERE identifier = ?", {
        amount, identifier
    })
end

------------------------------------------------------------
-- Pagrindinis "prisijungimas" prie kazino
------------------------------------------------------------
lib.callback.register("onex:casino:openCasino", function(source)
    local identifier = GetIdentifier(source)
    if not identifier then return false end

    local balance = LoadCasinoBalance(identifier)

    TriggerClientEvent("onex:casino:updateBalance", source, balance)

    return true
end)

RegisterServerEvent("onex:casino:closeCasino", function()
    -- Nieko papildomai
end)

------------------------------------------------------------
-- Balanso keitimas (saugus)
------------------------------------------------------------
function AddBalance(source, amount)
    local identifier = GetIdentifier(source)
    if not identifier then return false end

    local balance = LoadCasinoBalance(identifier)
    balance = balance + amount

    if balance < 0 then balance = 0 end

    SaveCasinoBalance(identifier, balance)
    TriggerClientEvent("onex:casino:updateBalance", source, balance)

    return balance
end

function RemoveBalance(source, amount)
    return AddBalance(source, -amount)
end

exports("AddBalance", AddBalance)
exports("RemoveBalance", RemoveBalance)

------------------------------------------------------------
-- ROUTERIS ? moduliai (roulette, crash, dice, mines)
------------------------------------------------------------

lib.callback.register("onex:casino:getRoullete", function(src, bet)
    return modules.roulette.process(src, bet)
end)

lib.callback.register("onex:casino:getCrash", function(src, data)
    return modules.crash.process(src, data)
end)

lib.callback.register("onex:casino:getDice", function(src, data)
    return modules.dice.process(src, data)
end)

lib.callback.register("onex:casino:getMines", function(src, data)
    return modules.mines.processInit(src, data)
end)

lib.callback.register("onex:casino:revealCard", function(src, index)
    return modules.mines.revealCard(src, index)
end)

RegisterServerEvent("onex:casino:endGame", function()
    -- galutinis žaidimo pabaigos eventas
end)
