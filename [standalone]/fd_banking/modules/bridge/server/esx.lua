local resourceName = 'es_extended'

if not GetResourceState(resourceName):find('start') then return end
GlobalState.bankingBridge = 'esx'

if Config.AutomaticTransactionsDeletion then
    SetTimeout(0, function()
        MySQL.query("delete from fd_advanced_banking_accounts_transactions where created_at < now() - interval 30 DAY",
            {},
            function() end)
    end)
end

SetTimeout(0, function()
    core = exports[resourceName]:getSharedObject()

    local Jobs = core.GetJobs()

    function bridge.getPlayer(source)
        return core.GetPlayerFromId(source)
    end

    function bridge.getPlayerByCitizenId(identifier)
        return core.GetPlayerFromIdentifier(identifier)
    end

    local function loaded(playerSource)
        createDefaultAccountOrSync(playerSource)
        processOverdueInvoices(playerSource)
    end

    RegisterNetEvent('esx:playerLoaded', function(playerSource)
        loaded(tonumber(playerSource))
    end)

    AddEventHandler('esx:setAccountMoney', function(playerId, accountName, money, reason)
        if accountName ~= 'bank' then return end

        if reason:find('<!skip!>') then
            return
        end

        forceSetPersonalBalance(playerId, money, reason)
    end)

    AddEventHandler('esx:addAccountMoney', function(playerId, accountName, money, reason)
        if accountName ~= 'bank' then return end
        local identifier = bridge.getIdentifier(playerId)

        if not identifier then return end

        local account = getPersonalAccount(identifier)

        if not account then return end

        if reason:find('<!skip!>') then
            return
        end

        if not data then
            data = {}
        end

        if reason:find('<!>') then
            local customFrom, splitReason = reason:match('^(.-)<!>(.+)')
            data.from = customFrom
            reason = splitReason
        end

        handleDepositToPersonalAccount(playerId, money, account.balance + money, reason, data)
    end)

    AddEventHandler('esx:removeAccountMoney', function(playerId, accountName, money, reason)
        if accountName ~= 'bank' then return end
        local identifier = bridge.getIdentifier(playerId)

        if not identifier then return end

        local account = getPersonalAccount(identifier)

        if not account then return end

        if reason:find('<!skip!>') then
            return
        end

        if not data then
            data = {}
        end

        if reason:find('<!>') then
            local customTo, splitReason = reason:match('^(.-)<!>(.+)$')
            data.to = customTo
            reason = splitReason
        end

        handleWithdrawFromPersonalAccount(playerId, money, account.balance - money, reason, data)
    end)

    function bridge.getIdentifier(source)
        local player = bridge.getPlayer(source)

        if player then
            return player.identifier, player
        end

        return false
    end

    function bridge.getSourceFromIdentifier(identifier)
        local player = bridge.getPlayerByCitizenId(identifier)

        if player then
            return player.playerId, player
        end

        return false
    end

    function bridge.isPlayerOnline(source)
        local player = bridge.getPlayer(source)

        if player then
            return true
        end

        return false
    end

    function bridge.currentSociety(source, isGang)
        local player = bridge.getPlayer(source)

        if player then
            if isGang then
                return player.gang.name
            end

            return player.job.name
        end

        return false
    end

    function bridge.currentSocietyWithGrade(source, isGang)
        local player = bridge.getPlayer(source)

        if player then
            if isGang then
                return false, false
            end

            return player.job.name, player.job.grade
        end

        return false
    end

    function bridge.getJobLabel(job)
        return Jobs[job]?.label or nil
    end

    function bridge.isPlayerBoss(source, isGang)
        local player = bridge.getPlayer(source)

        if player then
            if isGang then
                return false
            end

            return player.job.grade_name == 'boss'
        end

        return false
    end

    function bridge.firstLastNameByIdentifier(identifier)
        local player = bridge.getPlayerByCitizenId(identifier)

        if player then
            return player.name
        end

        return source
    end

    function bridge.firstLastName(source)
        local player = bridge.getPlayer(source)

        if player then
            return player.name
        end

        return source
    end

    function bridge.getAccountAmount(source, account)
        local player = bridge.getPlayer(source)

        if account == 'cash' then
            account = 'money'
        end

        if player then
            return player.getAccount(account)?.money or false
        end

        return false
    end

    function bridge.setAccountAmount(source, account, amount, reason, data)
        local player = bridge.getPlayer(source)

        if account == 'cash' then
            account = 'money'
        end

        if data?.skipTransaction then
            reason = ("<!skip!>%s"):format(reason)
        end

        if player then
            player.setAccountMoney(account, amount)
            return true
        end

        return false
    end

    function bridge.removeMoney(source, account, amount, reason, data)
        local player = bridge.getPlayer(source)

        if account == 'cash' then
            account = 'money'
        end

        if data?.skipTransaction then
            reason = ("<!skip!>%s"):format(reason)
        end

        if player then
            player.removeAccountMoney(account, amount, reason)
            return true
        end

        return false
    end

    function bridge.addMoney(source, account, amount, reason, data)
        local player = bridge.getPlayer(source)

        if account == 'cash' then
            account = 'money'
        end

        if data?.skipTransaction then
            reason = ("<!skip!>%s"):format(reason)
        end

        if player then
            player.addAccountMoney(account, amount, reason)
            return true
        end

        return false
    end

    function bridge.notify(source, message, type)
        TriggerClientEvent('ox_lib:notify', source, {
            description = message,
            type = type
        })
    end

    function bridge.getJobs()
        Jobs = core.GetJobs()

        local societys = {}

        if Config.UseSocietyAccounts then
            for k, v in pairs(Jobs) do
                societys[k] = v
            end
        end

        return societys
    end

    function bridge.isStaff(source, permission)
        return IsPrincipalAceAllowed(source, 'group.admin')
    end

    function bridge.getPlayersByGrade(job, grade)
        return MySQL.query.await([[
            SELECT
                *
            FROM
                users
            WHERE
                job = ? AND
                job_grade = ?
        ]], { job, grade })
    end

    function bridge.createLog(source, data)
        lib.logger(source, "banking", data.message, data)
    end

    function bridge.trackedPlayerUsed(source, identifier, coords, type)
        Citizen.CreateThread(function()
            local players = GetPlayers()

            for _, id in ipairs(players) do
                local job = bridge.currentSociety(tonumber(id))

                if job and job == "police" then
                    bridge.notify(tonumber(id), ('%s used %s, at %s'):format(identifier, type, coords), 'error')
                end
            end
        end)
    end

    function bridge.isBossGrade(grade)
        return grade.name == 'boss'
    end

    function bridge.getSocietyMoney(business)
        local p = promise.new()
        local society = exports.esx_society:GetSociety(business)

        if not society then
            p:resolve(0)
            return Citizen.Await(p)
        end

        TriggerEvent('esx_addonaccount:getSharedAccount', society.account, function(account)
            p:resolve(account.money)
        end)

        return Citizen.Await(p)
    end

    function bridge.setSocietyMoney(business, amount)
        local p = promise.new()
        local society = exports.esx_society:GetSociety(business)

        if not society then
            p:resolve(false)
            return Citizen.Await(p)
        end

        TriggerEvent('esx_addonaccount:getSharedAccount', society.account, function(account)
            account.setMoney(amount)
            p:resolve(true)
        end)

        return Citizen.Await(p)
    end

    AddEventHandler('esx_addonaccount:addMoney', function(accountName, money)
        if not string.find(accountName, "society_") then return end
        local society = accountName:gsub('society_', '')

        exports[GetCurrentResourceName()]:AddMoney(society, money, 'Money Deposit')
    end)

    AddEventHandler('esx_addonaccount:removeMoney', function(accountName, money)
        if not string.find(accountName, "society_") then return end
        local society = accountName:gsub('society_', '')

        exports[GetCurrentResourceName()]:RemoveMoney(society, money, 'Money withdrawal')
    end)

    local onlinePlayers = GetPlayers()

    for _, id in ipairs(onlinePlayers) do
        loaded(tonumber(id))
    end
end)
