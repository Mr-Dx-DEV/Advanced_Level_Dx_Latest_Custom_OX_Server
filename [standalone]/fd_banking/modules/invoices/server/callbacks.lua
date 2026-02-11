lib.callback.register('fd_banking:server:cb:fetchUnpaidInvoices', function(source, page, limit)
    return fetchUnpaidInvoices(source, page, limit)
end)

lib.callback.register('fd_banking:server:cb:fetchOtherInvoices', function(source, page, limit)
    return fetchOtherInvoices(source, page, limit)
end)

lib.callback.register('fd_banking:server:cb:fetchUnpaidInvoicesSum', function(source)
    return fetchUnpaidInvoicesSum(source)
end)

lib.callback.register('fd_banking:server:cb:fetchUnpaidInvoicesCount', function(source)
    return fetchUnpaidInvoicesCount(source)
end)

lib.callback.register('fd_banking:server:cb:fetchPayInvoice', function(source, id)
    return fetchPayInvoice(source, id)
end)

lib.callback.register('fd_banking:server:cb:fetchDeclineInvoice', function(source, id)
    return fetchDeclineInvoice(source, id)
end)

lib.callback.register('fd_banking:server:cb:payAllInvoices', function(source)
    return payAllInvoices(source)
end)

function convertTimestampToReadableFormat(timestamp)
    return os.date("%Y-%m-%d %H:%M:%S", timestamp / 1000)
end

lib.callback.register('fd_banking:fetchUnpaidSocietyInvoices', function(source)
    local identifier = bridge.getIdentifier(source)
    local job = bridge.currentSociety(source)

    if not identifier or not job then
        return false
    end

    local businessAccount = getBusinessAccount(job)

    if not businessAccount then
        return false
    end


    if not identifier then
        return false
    end

    local invoices = MySQL.query.await([[
        SELECT
            *
        FROM
            fd_advanced_banking_invoices
        WHERE
            transfer_to = ? AND
            status = 1
        ORDER BY
            created_at DESC
    ]], { businessAccount.id })

    if not invoices then
        return false
    end

    for i = 1, #invoices do
        local recipient = bridge.firstLastNameByIdentifier(invoices[i].recipient)
        invoices[i].recipient = recipient or invoices[i].recipient

        invoices[i].created_at = convertTimestampToReadableFormat(invoices[i].created_at)
        invoices[i].due_on = convertTimestampToReadableFormat(invoices[i].due_on)
    end


    return invoices
end)


lib.callback.register('fd_banking:fetchPaidSocietyInvoices', function(source)
    local identifier = bridge.getIdentifier(source)
    local job = bridge.currentSociety(source)

    if not identifier or not job then
        return false
    end

    local businessAccount = getBusinessAccount(job)

    if not businessAccount then
        return false
    end


    if not identifier then
        return false
    end

    local invoices = MySQL.query.await([[
        SELECT
            *
        FROM
            fd_advanced_banking_invoices
        WHERE
            transfer_to = ? AND
            status = 2
        ORDER BY
            created_at DESC
    ]], { businessAccount.id })

    if not invoices then
        return false
    end

    for i = 1, #invoices do
        local recipient = bridge.firstLastNameByIdentifier(invoices[i].recipient)
        invoices[i].recipient = recipient or invoices[i].recipient
    end

    return invoices
end)
