local syncing = false

RegisterNetEvent("fd_banking:server:removedFromSociety", function(society, isGang)
    local src = source

    if not Config.UseSocietyAccounts and not Config.UseGangAccounts then
        return
    end

    local searchSociety = society

    if string.sub(society, 1, 3) == "off" then
        searchSociety = string.sub(society, 4)
    end

    local account = MySQL.single.await(
        'SELECT * FROM fd_advanced_banking_accounts WHERE business = ? AND is_society = 1', { searchSociety })

    if not account then
        return
    end

    local identifier = bridge.getIdentifier(src)

    if not identifier then
        return
    end

    if bridge.currentSociety(src, isGang) == society then
        return
    end

    MySQL.query.await('DELETE FROM fd_advanced_banking_accounts_members WHERE account_id = ? AND identifier = ?',
        { account.id, identifier })
end)

RegisterNetEvent("fd_banking:server:downgradedFromSociety", function(society, isGang)
    local src = source

    if not Config.UseSocietyAccounts and not Config.UseGangAccounts then
        return
    end

    local account = MySQL.single.await(
        'SELECT * FROM fd_advanced_banking_accounts WHERE business = ? AND is_society = 1', { society })

    if not account then
        return
    end

    local identifier = bridge.getIdentifier(src)

    if not identifier then
        return
    end

    if bridge.currentSociety(src, isGang) ~= society then
        return
    end

    MySQL.query.await('DELETE FROM fd_advanced_banking_accounts_members WHERE account_id = ? AND identifier = ?',
        { account.id, identifier })
end)

RegisterNetEvent("fd_banking:server:addedToSociety", function(society, isGang)
    local src = source
    societyLogger:info(("Attempting to add player %s to %s"):format(src, society), true)

    if not Config.UseSocietyAccounts and not Config.UseGangAccounts then
        societyLogger:info("Society accounts disabled", true)
        return
    end

    local searchSociety = society

    if string.sub(society, 1, 3) == "off" then
        searchSociety = string.sub(society, 4)
    end

    local account = MySQL.single.await(
        'SELECT * FROM fd_advanced_banking_accounts WHERE business = ? AND is_society = 1', { searchSociety })

    if not account then
        societyLogger:info(("Society not found"):format(searchSociety), true)
        return
    end

    local identifier = bridge.getIdentifier(src)

    if not identifier then
        societyLogger:info("Player not online", true)
        return
    end

    local currentSociety = bridge.currentSociety(src, isGang)
    if currentSociety ~= society then
        societyLogger:info(("Player %s is not in %s. Currenly in %s"):format(src, society, currentSociety), true)
        return
    end

    if not bridge.isPlayerBoss(src, isGang) then
        societyLogger:info("Player is not boss", true)
        return
    end

    societyLogger:info(("Adding player %s to %s"):format(src, society), true)
    MySQL.query.await(
        'INSERT INTO fd_advanced_banking_accounts_members (account_id, identifier, is_owner) VALUES (?, ?, ?)',
        { account.id, identifier, true })
end)

local function syncBosses(jobs)
    societyLogger:info('Syncing bosses')

    local queries = {}
    local accountIds = {}

    -- First pass: collect all account IDs and prepare data
    for job, info in pairs(jobs) do
        local searchJob = job
        local isOffJob = false

        if string.sub(job, 1, 3) == "off" then
            searchJob = string.sub(job, 4)
            isOffJob = true
        end

        if not info.account_id then
            local account = MySQL.single.await(
                'SELECT * FROM fd_advanced_banking_accounts WHERE business = ? AND is_society = 1', { searchJob })
            if not account then
                goto continue
            end

            info.account_id = account.id
        end

        -- Collect account IDs for batch delete
        table.insert(accountIds, info.account_id)

        for _, grade in pairs(info.grades) do
            local players = bridge.getPlayersByGrade(job, grade)

            for _, player in pairs(players) do
                local identifier = player.citizenid

                if not identifier then
                    identifier = player.identifier
                end
                societyLogger:info('Adding ' .. identifier .. ' to ' .. job)

                table.insert(queries, {
                    query =
                    'INSERT INTO fd_advanced_banking_accounts_members (account_id, identifier, is_owner) VALUES (:account_id, :identifier, :is_owner)',
                    values = { ["account_id"] = info.account_id, ["identifier"] = identifier, ["is_owner"] = true }
                })
            end
        end

        ::continue::
    end

    -- Add DELETE queries at the beginning of the transaction (in order by account_id to prevent deadlocks)
    table.sort(accountIds)
    local deleteQueries = {}
    for _, accountId in ipairs(accountIds) do
        table.insert(deleteQueries, {
            query = 'DELETE FROM fd_advanced_banking_accounts_members WHERE account_id = :account_id AND is_owner = 1',
            values = { ["account_id"] = accountId }
        })
    end

    -- Prepend deletes to inserts so they run first in the transaction
    for i = #deleteQueries, 1, -1 do
        table.insert(queries, 1, deleteQueries[i])
    end

    local success = MySQL.transaction.await(queries)

    if not success then
        societyLogger:err('Failed to sync bosses')
        return
    end

    societyLogger:info('Society bosses synced!')
    syncing = false
end

local function syncSocietyAccounts()
    if not Config.UseSocietyAccounts then return end

    if framework ~= 'qb' then
        Wait(2500)
    end

    CreateThread(function()
        syncing = true

        local societys = bridge.getJobs()

        local accounts = MySQL.query.await(
            'SELECT * FROM fd_advanced_banking_accounts WHERE business IS NOT NULL AND is_society = 1')
        local updatedAccounts = {}
        local queries = {}

        for key, society in pairs(societys) do
            local searchKey = key
            local isOffJob = false

            if string.sub(key, 1, 3) == "off" then
                searchKey = string.sub(key, 4)
                isOffJob = true
            end

            local account = MySQL.single.await(
                'SELECT * FROM fd_advanced_banking_accounts WHERE business = ? AND is_society = 1', { searchKey })

            local bossGrades = {}

            for gradeKey, grade in pairs(society.grades) do
                if bridge.isBossGrade(grade) then
                    table.insert(bossGrades, gradeKey)
                end
            end

            if #bossGrades < 1 then
                goto continue
            end
            if not isOffJob then
                if account then
                    local query = 'UPDATE fd_advanced_banking_accounts SET name = :name WHERE business = :business'
                    local params = { ["name"] = society.label or 'Unknown', ["business"] = searchKey }

                    table.insert(queries, {
                        query = query,
                        values = params
                    })
                else
                    local iban = getFreeIbanNumber()

                    local balance = 0

                    if bridge.getSocietyMoney ~= nil then
                        balance = bridge.getSocietyMoney(key)
                    end

                    table.insert(queries, {
                        query =
                        'INSERT INTO fd_advanced_banking_accounts (name, iban, balance, type, business, is_society) VALUES (:name, :iban, :balance, :type, :business, :is_society)',
                        values = { ["name"] = society.label, ["iban"] = iban, ["balance"] = balance, ["type"] = 'business', ["business"] = searchKey, ["is_society"] = true }
                    })

                    societyLogger:info('Created society account for ' .. searchKey)
                end
            end

            updatedAccounts[key] = {
                account_id = account?.id or nil,
                job = key,
                grades = bossGrades
            }

            ::continue::
        end

        local success = MySQL.transaction.await(queries)

        if not success then
            societyLogger:err('Failed to sync society accounts')
            return
        end

        for _, account in pairs(accounts) do
            if not updatedAccounts[account.business] then
                MySQL.query.await('DELETE FROM fd_advanced_banking_accounts WHERE business = ? AND is_society = 1',
                    { account.business })
            end
        end

        societyLogger:info('Society accounts synced!')
        syncBosses(updatedAccounts)
    end)
end

-- Compatibility for qb-management
local function getSocietyAccount(society)
    local searchSociety = society

    if string.sub(society, 1, 3) == "off" then
        searchSociety = string.sub(society, 4)
    end

    local account = MySQL.single.await(
        'SELECT * FROM fd_advanced_banking_accounts WHERE business = ? AND is_society = 1', { searchSociety })

    if account then
        return account.balance
    end

    return 0
end
exports('GetAccount', getSocietyAccount)
exports('GetGangAccount', getSocietyAccount)

local function addSocietyMoney(society, amount, reason)
    local searchSociety = society

    if string.sub(society, 1, 3) == "off" then
        searchSociety = string.sub(society, 4)
    end

    local account = MySQL.single.await(
        'SELECT * FROM fd_advanced_banking_accounts WHERE business = ? AND is_society = 1', { searchSociety })

    if account then
        local newBalance = math.floor(account.balance + amount)

        Citizen.CreateThread(function()
            handleDepositToAnyAccount(locale('system'), account, amount, newBalance, reason)
        end)

        if Config.UpdateQbManagementTable then
            MySQL.query.await('UPDATE `' .. Config.QbManagementTableName .. '` SET `amount` = ? WHERE `job_name` = ?',
                { newBalance, searchSociety })
        end

        return true
    end

    return false
end
exports('AddMoney', addSocietyMoney)
exports('AddGangMoney', addSocietyMoney)

local function removeSocietyMoney(society, amount, reason)
    local searchSociety = society

    if string.sub(society, 1, 3) == "off" then
        searchSociety = string.sub(society, 4)
    end

    local account = MySQL.single.await(
        'SELECT * FROM fd_advanced_banking_accounts WHERE business = ? AND is_society = 1', { searchSociety })

    if account then
        local newBalance = math.floor(account.balance - amount)

        Citizen.CreateThread(function()
            handleWithdrawalFromAccount(locale('system'), account, amount, math.floor(account.balance - amount), reason)
        end)

        if Config.UpdateQbManagementTable then
            MySQL.query.await('UPDATE `' .. Config.QbManagementTableName .. '` SET `amount` = ? WHERE `job_name` = ?',
                { newBalance, searchSociety })
        end

        return true
    end

    return false
end
exports('RemoveMoney', removeSocietyMoney)
exports('RemoveGangMoney', removeSocietyMoney)


AddEventHandler("fd_banking:migrationsFinished", function()
    if not Config.EnableSocietyAccountsSyncing then return end

    Citizen.CreateThread(function()
        syncSocietyAccounts()
    end)
end)

AddEventHandler("fd_banking:UpdateObject", function()
    Citizen.CreateThread(function()
        while syncing do
            Citizen.Wait(1000)
        end

        syncSocietyAccounts()
    end)
end)

RegisterCommand("syncAccounts", function(source, args, rawCommand)
    if source ~= 0 then return end

    syncSocietyAccounts()
end, true)

lib.addCommand('createBusinessAccount', {
    help = 'createBusinessAccount',
    params = {},
    restricted = 'group.admin'
}, function(source, args, raw)
    local data = lib.callback.await("fd_banking:server:cb:createBusinessAccount", source)

    if not data then
        return bridge.notify(source, 'No information provided.', 'error')
    end

    local identifier = bridge.getIdentifier(data.owner)

    if not identifier then
        return bridge.notify(source, 'Player not online.', 'error')
    end

    local iban = getFreeIbanNumber()

    MySQL.insert(
        'INSERT INTO fd_advanced_banking_accounts (name, iban, balance, type) VALUES (?, ?, ?, ?)',
        { data.name, iban, data.balance or 0, 'business' },
        function(insertId)
            MySQL.insert(
                'INSERT INTO fd_advanced_banking_accounts_members (account_id, identifier, is_owner) VALUES (?, ?, ?)',
                { insertId, identifier, true },
                function(insertId)
                end
            )
        end)
end)

lib.addCommand('addMemberToBusinessAccount', {
    help = 'addMemberToAccount',
    params = {
        {
            name = 'iban',
            type = 'number'
        },
        {
            name = 'target',
            type = 'playerId'
        }
    },
    restricted = 'group.admin'
}, function(source, args, raw)
    local identifier = bridge.getIdentifier(args.target)

    if not identifier then
        return bridge.notify(source, 'Player not online.', 'error')
    end

    local accountId = MySQL.scalar.await('SELECT `id` FROM `fd_advanced_banking_accounts` WHERE `iban` = ? LIMIT 1', {
        args.iban
    })

    if not accountId then
        return bridge.notify(source, 'Account not found.', 'error')
    end

    MySQL.insert(
        'INSERT INTO fd_advanced_banking_accounts_members (account_id, identifier, is_owner) VALUES (?, ?, ?)',
        { accountId, identifier, true },
        function()
        end
    )
end)
