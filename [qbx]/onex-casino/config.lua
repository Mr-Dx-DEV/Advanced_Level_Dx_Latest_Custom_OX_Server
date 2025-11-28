-- config.lua

Config = {}

-- Ar naudoti realius ESX banko pinigus
-- false = tik vizualūs kazino pinigai (nereali ekonomika)
-- true  = statymai ir laimėjimai nuskaitomi / pridedami iš ESX banko
Config.UseBankMoney = false

-- Bendrai nustatymai
Config.Debug = false

-- Minimalus statymas visiems žaidimams
Config.MinBet = 10000

-- Maksimalus statymas (front'e yra ribotuvas, bet dar kartą tikrinam serveryje)
Config.MaxBet = 5000000

-- Galimi darbai, kuriems leidžiama atsidaryti kazino
-- Palik tuščią, jeigu nori leisti visiems
Config.AllowedJobs = {
    -- 'casino',
    -- 'police',
    -- 'mechanic',
}

-- Mines žaidimo nustatymai
Config.Mines = {
    TotalCards = 35,  -- 5 eilės * 7 stulpeliai
    Bombs      = 5,   -- kiek minų lentoje
}

-- Roulette nustatymai
Config.Roulette = {
    Numbers = {}, -- užpildoma server/main.lua
}

-- Logų į DB nustatymai
Config.LogToDatabase = true
Config.LogTableName  = 'onex_casino_logs'
