local resourceName = 'es_extended'

if not GetResourceState(resourceName):find('start') then return end

SetTimeout(0, function()
    framework = 'esx'

    core = exports[resourceName]:getSharedObject()

    PlayerData = core.GetPlayerData()

    RegisterNetEvent('esx:playerLoaded', function(xPlayer)
        PlayerData = xPlayer
    end)

    function bridge.getIdentifier()
        return PlayerData?.identifier or cache.player
    end

    function bridge.notify(msg, type)
        lib.notify({
            description = msg,
            type = type,
        })
    end

    function bridge.progress(data)
        if lib.progressCircle(data) then
            return true
        end

        return false
    end

    function bridge.getPlayerJobInfo()
        PlayerData = core.GetPlayerData()

        return {
            name = PlayerData.job.name,
            label = PlayerData.job.label
        }
    end

    RegisterNetEvent('esx:setJob', function(job, lastJob)
        if not PlayerData.job then
            return
        end

        if PlayerData.job.name ~= job.name and lastJob.grade_name == 'boss' then
            TriggerServerEvent('fd_banking:server:removedFromSociety', lastJob.name)
        end

        if PlayerData.job.name == lastJob.name and lastJob.grade_name == 'boss' and job.grade_name ~= 'boss' then
            TriggerServerEvent('fd_banking:server:downgradedFromSociety', job.name)
        end

        if job.grade_name == 'boss' then
            TriggerServerEvent('fd_banking:server:addedToSociety', job.name)
        end

        PlayerData.job = job
    end)

    function bridge.beforeOpening(type)
        -- type: bank, atm
        if GetResourceState('ox_inventory') == 'started' then
            exports.ox_inventory:closeInventory()
        end

        LocalPlayer.state.invBusy = true

        return true
    end

    function bridge.afterClosing(type)
        -- type: bank, atm
        LocalPlayer.state.invBusy = false

        return true
    end

    function bridge.beforeAction(action)
        -- before action hook, triggered before each action
        -- actions: deposit, withdraw, transfer
        if GetResourceState('ox_inventory') == 'started' then
            exports.ox_inventory:closeInventory()
        end

        if LocalPlayer.state.invBusy then
            return true
        end

        LocalPlayer.state.invBusy = true

        return true
    end

    function bridge.afterAction(action, wasSuccessful)
        -- after action hook
        -- actions: deposit, withdraw, transfer
        LocalPlayer.state.invBusy = false
        return true
    end
end)
