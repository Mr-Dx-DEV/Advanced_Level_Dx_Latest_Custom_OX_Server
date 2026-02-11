UI = {}

function UI.openBank(dontCheckDistance)
    bridge.beforeOpening('bank')

    if not dontCheckDistance then
        if not isNearBank() then
            return false
        end
    end

    if Config.BankTheme == 'maze' then
        UI.setMazeTheme()
    elseif Config.BankTheme == 'lombank' then
        UI.setLombankTheme()
    else
        UI.setFleecaTheme()
    end

    local progress = bridge.progress({
        name = "bank:open",
        duration = 3000,
        label = locale('checking_documents'),
        useWhileDead = false,
        allowRagdoll = false,
        allowCuffed = false,
        allowFalling = false,
        canCancel = true,
        position = "bottom",
        anim = {
            dict = 'amb@prop_human_atm@male@enter',
            clip = 'enter',
            duration = 3000
        },
        disable = {
            move = true,
            car = true,
            combat = true,
            mouse = false,
        },
    })

    if not progress then
        bridge.afterClosing('bank')
        return false
    end

    isTrackedTrigger('bank')

    SetNuiFocus(true, true)

    SendNUIMessage({
        action = 'bank:open',
        data = {}
    })

    return true
end

function UI.openAtm()
    bridge.beforeOpening('atm')

    local progress = bridge.progress({
        name = "atm:open",
        duration = 2000,
        label = locale('checking_card'),
        useWhileDead = false,
        allowRagdoll = false,
        allowCuffed = false,
        allowFalling = false,
        canCancel = true,
        position = "bottom",
        anim = {
            dict = 'amb@prop_human_atm@male@enter',
            clip = 'enter',
            duration = 2000
        },
        disable = {
            move = true,
            car = true,
            combat = true,
            mouse = false,
        },
    })

    if not progress then
        bridge.afterClosing('atm')
        return
    end

    isTrackedTrigger('atm')

    SetNuiFocus(true, true)

    SendNUIMessage({
        action = 'atm:open',
        data = {}
    })
end

function UI.setAccounts(accounts)
    SendNUIMessage({
        action = 'bank:setAccounts',
        data = {
            accounts = accounts
        }
    })
end

function UI.setAccount(account)
    SendNUIMessage({
        action = 'bank:setAccount',
        data = {
            account = account
        }
    })
end

function UI.setCash(amount)
    SendNUIMessage({
        action = 'bank:setCash',
        data = {
            amount = amount
        }
    })
end

function UI.closeBank()
    bridge.afterClosing('bank')
    SetNuiFocus(false, false)

    SendNUIMessage({
        action = 'bank:close',
        data = {}
    })
end

function UI.openATM()
    bridge.beforeOpening('atm')
    SetNuiFocus(true, true)

    SendNUIMessage({
        action = 'atm:open',
        data = {}
    })
end

function UI.closeATM()
    bridge.afterClosing('atm')
    SetNuiFocus(false, false)

    SendNUIMessage({
        action = 'atm:close',
        data = {}
    })
end

function UI.setFleecaTheme()
    SendNUIMessage({
        action = 'bank:fleecaTheme',
        data = {}
    })
end

function UI.setMazeTheme()
    SendNUIMessage({
        action = 'bank:mazeTheme',
        data = {}
    })
end

function UI.setLombankTheme()
    SendNUIMessage({
        action = 'bank:lombankTheme',
        data = {}
    })
end

function UI.sendExportAnswer(isSuccess, url)
    SendNUIMessage({
        action = 'bank:exportAnswer',
        data = {
            isSuccess = isSuccess,
            url = url
        }
    })
end

function UI.sendMembersAnswer(isSuccess, members)
    SendNUIMessage({
        action = 'bank:fetchMembers',
        data = {
            isSuccess = isSuccess,
            members = members
        }
    })
end

function UI.sendAddMembersAnswer(isSuccess)
    SendNUIMessage({
        action = 'bank:addMemberAnswer',
        data = {
            isSuccess = isSuccess
        }
    })
end

function UI.sendEditMembersAnswer(isSuccess)
    SendNUIMessage({
        action = 'bank:editMemberAnswer',
        data = {
            isSuccess = isSuccess
        }
    })
end

function UI.sendDeleteMembersAnswer(isSuccess)
    SendNUIMessage({
        action = 'bank:deleteMemberAnswer',
        data = {
            isSuccess = isSuccess
        }
    })
end

function UI.informAboutAccountUpdate(accountId)
    SendNUIMessage({
        action = 'bank:accountUpdated',
        data = {
            accountId = accountId
        }
    })
end

function UI.informAboutAccountDeleted(accountId)
    SendNUIMessage({
        action = 'bank:accountDeleted',
        data = {
            accountId = accountId
        }
    })
end

function UI.sendMemberEvent(id, event)
    SendNUIMessage({
        action = 'bank:memberEvent',
        data = {
            id = id,
            event = event
        }
    })
end

exports('sendUIAction', function(action, data)
    SendNUIMessage({
        action = action,
        data = data
    })
end)

RegisterNUICallback('bankClosed', function(data, cb)
    SetNuiFocus(false, false)

    bridge.progress({
        name = "bank:close",
        duration = 2000,
        label = locale('giving_back_documents'),
        canCancel = false,
        position = "bottom",
        anim = {
            dict = 'amb@prop_human_atm@male@exit',
            clip = 'exit',
            duration = 2000
        },
        disable = {
            move = true,
            car = true,
            combat = true,
            mouse = false,
        },
    })

    bridge.afterClosing('bank')

    cb('ok')
end)

RegisterNUICallback('atmClosed', function(data, cb)
    SetNuiFocus(false, false)

    bridge.progress({
        name = "atm:close",
        duration = 2000,
        label = locale('giving_back_card'),
        canCancel = false,
        position = "bottom",
        anim = {
            dict = 'amb@prop_human_atm@male@exit',
            clip = 'exit',
            duration = 2000
        },
        disable = {
            move = true,
            car = true,
            combat = true,
            mouse = false,
        },
    })

    bridge.afterClosing('atm')

    cb('ok')
end)

function openBank(dontCheckDistance)
    local shouldOpen = UI.openBank(dontCheckDistance)

    if shouldOpen then
        TriggerServerEvent('fd_banking:server:fetchAccounts')
    end
end

exports('openBank', function(dontCheckDistance)
    openBank(dontCheckDistance)
end)

function openAtm()
    UI.openAtm()

    TriggerServerEvent('fd_banking:server:fetchAccounts')
end

exports('openAtm', function()
    openAtm()
end)
