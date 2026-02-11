function fetchUnpaidInvoices(data)
    local response = lib.callback.await("fd_banking:server:cb:fetchUnpaidInvoices", false, data.page, data.limit)

    return response
end

function fetchPaidInvoices(data)
    local response = lib.callback.await("fd_banking:server:cb:fetchOtherInvoices", false, data.page, data.limit)

    return response
end

local function viewInvoices(type)
    local event = 'fd_banking:fetchUnpaidSocietyInvoices'

    if type == 'paid' then
        event = 'fd_banking:fetchPaidSocietyInvoices'
    end

    local response = lib.callback.await(event, false)

    if not response then
        return false
    end

    local records = {}

    for i = 1, #response do
        table.insert(records, {
            title = ("#%s"):format(response[i].id),
            description = ([[
%s: %s
%s: %s
%s: %s
%s: %s
%s: %s
%s: %s
]]):format(
                locale('invoices_recipient'),
                response[i].recipient,
                locale('invoices_issued_by'),
                response[i].issued_by,
                locale('invoices_status'),
                response[i].status == 2 and locale('invoice_paid_status') or locale('invoice_unpaid_status'),
                locale('invoices_amount'),
                response[i].amount,
                locale('invoice_created_at'),
                response[i].created_at,
                locale('invoice_due_on'),
                response[i].due_on
            ),
            icon = 'receipt',
        })
    end

    lib.registerContext({
        id = 'view_invoice_menu',
        title = locale(type == 'paid' and 'paid_invoices_title' or 'unpaid_invoices_title'),
        options = records
    })

    lib.showContext('view_invoice_menu')
end

local function invoiceDialog(isSociety)
    local input = lib.inputDialog(locale('issue_invoice_dialog_title'), {
        { type = 'number', label = locale("player_id_title") },
        { type = 'number', label = locale("invoice_amount") },
        { type = 'input',  label = locale("invoice_description") }
    })

    if input then
        if tonumber(input[2]) <= 0 then
            bridge.notify(locale('invalid_amount'), 'error')

            return
        end

        if tonumber(input[1]) < 1 then
            bridge.notify(locale('invalid_player_id'), 'error')

            return
        end

        if not input[3] then
            bridge.notify(locale('invalid_description'), 'error')

            return
        end

        TriggerServerEvent("fd_banking:server:issueInvoice", tonumber(input[1]), tonumber(input[2]), input[3], isSociety)
    end
end

function lookupCitizen()
    local input = lib.inputDialog(locale('lookup_citizen_dialog_title'), {
        { type = 'number', label = locale("player_id_title") },
    })

    if input then
        if tonumber(input[1]) < 1 then
            bridge.notify(locale('invalid_player_id'), 'error')

            return
        end

        TriggerServerEvent("fd_banking:server:lookupCitizen", tonumber(input[1]))
    end
end

function lookupInvoice()
    local input = lib.inputDialog(locale('lookup_invoice_dialog_title'), {
        { type = 'number', label = locale("invoice_id_title") },
    })

    if input then
        if tonumber(input[1]) < 1 then
            bridge.notify(locale('invalid_invoice_id'), 'error')

            return
        end

        TriggerServerEvent("fd_banking:server:showInvoice", tonumber(input[1]))
    end
end

function cancelInvoice()
    local input = lib.inputDialog(locale('cancel_invoice_dialog_title'), {
        { type = 'number', label = locale("invoice_id_title") },
    })

    if input then
        if tonumber(input[1]) < 1 then
            bridge.notify(locale('invalid_invoice_id'), 'error')

            return
        end

        TriggerServerEvent("fd_banking:server:cancelInvoice", tonumber(input[1]))
    end
end

function payAllInvoices()
    local response = lib.callback.await("fd_banking:server:cb:payAllInvoices")

    return response
end

function openBilling()
    local menus = {}

    if Config.PersonalInvoicesAllowed then
        table.insert(menus, {
            title = locale('issue_personal_invoice_title'),
            description = locale('issue_personal_invoice_description'),
            icon = 'piggy-bank',
            onSelect = function()
                Citizen.CreateThread(function()
                    invoiceDialog()
                end)
            end,
        })
    end

    local job = bridge.getPlayerJobInfo()

    if Config.SocietiesInvoicesEnabled[job.name] then
        table.insert(menus, {
            title = locale('issue_society_invoice_title'),
            description = locale('issue_society_invoice_description'),
            icon = 'money-check-dollar',
            onSelect = function()
                Citizen.CreateThread(function()
                    invoiceDialog(true)
                end)
            end,
        })
    end

    if Config.SocietiesInvoicesEnabled[job.name] then
        table.insert(menus, {
            title = locale('unpaid_society_invoice_title'),
            description = locale('unpaid_society_invoice_description'),
            icon = 'receipt',
            onSelect = function()
                Citizen.CreateThread(function()
                    viewInvoices('unpaid')
                end)
            end,
        })
    end

    if Config.SocietiesInvoicesEnabled[job.name] then
        table.insert(menus, {
            title = locale('paid_society_invoice_title'),
            description = locale('paid_society_invoice_description'),
            icon = 'receipt',
            onSelect = function()
                Citizen.CreateThread(function()
                    viewInvoices('paid')
                end)
            end,
        })
    end

    if Config.SocietiesCitizenInvoicesLookup[job.name] then
        table.insert(menus, {
            title = locale('issue_society_lookup_title'),
            description = locale('issue_society_lookup_description'),
            icon = 'magnifying-glass',
            onSelect = function()
                Citizen.CreateThread(function()
                    lookupCitizen()
                end)
            end,
        })
    end

    if Config.PersonalInvoicesAllowed or Config.SocietiesInvoicesEnabled[job.name] then
        table.insert(menus, {
            title = locale('lookup_issued_invoice_title'),
            description = locale('lookup_issued_invoice_description'),
            icon = 'magnifying-glass',
            onSelect = function()
                Citizen.CreateThread(function()
                    lookupInvoice()
                end)
            end,
        })

        table.insert(menus, {
            title = locale('cancel_issued_invoice_title'),
            description = locale('cancel_issued_invoice_description'),
            icon = 'xmark',
            onSelect = function()
                Citizen.CreateThread(function()
                    cancelInvoice()
                end)
            end,
        })
    end

    lib.registerContext({
        id = 'billing_menu',
        title = locale('billing_menu'),
        options = menus
    })

    lib.showContext('billing_menu')
end

exports('openBilling', openBilling)

function fetchUnpaidInvoicesSum()
    local response = lib.callback.await("fd_banking:server:cb:fetchUnpaidInvoicesSum")

    return response
end

function fetchUnpaidInvoicesCount()
    local response = lib.callback.await("fd_banking:server:cb:fetchUnpaidInvoicesCount")

    return response
end

function fetchPayInvoice(data)
    local response = lib.callback.await("fd_banking:server:cb:fetchPayInvoice", false, data.id)

    return response
end

function fetchDeclineInvoice(data)
    local response = lib.callback.await("fd_banking:server:cb:fetchDeclineInvoice", false, data.id)

    return response
end

exports('openBilling', openBilling)

if Config.BillingCommand then
    RegisterCommand(Config.BillingCommand, function()
        openBilling()
    end, false)
end
