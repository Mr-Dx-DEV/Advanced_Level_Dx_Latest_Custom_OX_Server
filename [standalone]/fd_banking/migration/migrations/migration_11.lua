local Migration = {}

function Migration.up()
    local migrationExists = MySQL.scalar.await('SELECT COUNT(*) FROM fd_advanced_banking_migrations WHERE name = ?',
        { 'fd_banking_change_to_account_type' })

    if migrationExists == 0 then
        local insert = MySQL.query.await([[
            ALTER TABLE `fd_advanced_banking_accounts_transactions`
                MODIFY `to_account` VARCHAR(100) DEFAULT NULL
        ]])

        if not insert then
            error('Migration failed! (fd_banking_change_to_account_type)')
        end

        MySQL.query.await('INSERT INTO fd_advanced_banking_migrations (name) VALUES (?)',
            { 'fd_banking_change_to_account_type' })
    end
end

function Migration.down()
    MySQL.query.await([[
        ALTER TABLE `fd_advanced_banking_accounts_transactions`
            MODIFY `to_account` INT(20) DEFAULT NULL
    ]])

    MySQL.query.await('DELETE FROM fd_advanced_banking_migrations WHERE name = ?',
        { 'fd_banking_change_to_account_type' })
end

return Migration
