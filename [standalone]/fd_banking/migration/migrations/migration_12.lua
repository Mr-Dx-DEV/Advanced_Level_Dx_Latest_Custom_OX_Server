local Migration = {}

function Migration.up()
    local migrationExists = MySQL.scalar.await('SELECT COUNT(*) FROM fd_advanced_banking_migrations WHERE name = ?',
        { 'fd_advanced_banking_accounts_members_add_name' })

    if migrationExists == 0 then
        local insert = MySQL.query.await([[
            ALTER TABLE `fd_advanced_banking_accounts_members`
                ADD COLUMN `member_name` VARCHAR(255) DEFAULT NULL
        ]])

        if not insert then
            error('Migration failed! (fd_advanced_banking_accounts_members_add_name)')
        end

        MySQL.query.await('INSERT INTO fd_advanced_banking_migrations (name) VALUES (?)',
            { 'fd_advanced_banking_accounts_members_add_name' })
    end
end

function Migration.down()
    MySQL.query.await([[
        ALTER TABLE `fd_advanced_banking_accounts_members`
            DROP COLUMN `member_name`
    ]])

    MySQL.query.await('DELETE FROM fd_advanced_banking_migrations WHERE name = ?',
        { 'fd_advanced_banking_accounts_members_add_name' })
end

return Migration
