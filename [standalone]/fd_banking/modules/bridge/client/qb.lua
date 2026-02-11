local resourceName = 'qb-core'

if not GetResourceState(resourceName):find('start') then return end

SetTimeout(0, function()
    framework = 'qb'

    core = exports[resourceName]:GetCoreObject()
    local isQBX = GetResourceState('qbx_core'):find('start') or false

    PlayerData = isQBX and exports.qbx_core:GetPlayerData() or core.Functions.GetPlayerData()

    -- Handles state right when the player selects their character and location.
    RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
        PlayerData = isQBX and exports.qbx_core:GetPlayerData() or core.Functions.GetPlayerData()
    end)

    function bridge.getIdentifier()
        return PlayerData?.citizenid or cache.player
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
        return {
            name = PlayerData.job.name,
            label = PlayerData.job.label
        }
    end

    RegisterNetEvent("QBCore:Client:OnJobUpdate", function(job)
        if not PlayerData.job then
            return
        end

        if PlayerData.job.name ~= job.name and PlayerData.job.isboss then
            TriggerServerEvent('fd_banking:server:removedFromSociety', PlayerData.job.name)
        end

        if PlayerData.job.name == job.name and PlayerData.job.isboss and not job.isboss then
            TriggerServerEvent('fd_banking:server:downgradedFromSociety', PlayerData.job.name)
        end

        if job.isboss then
            TriggerServerEvent('fd_banking:server:addedToSociety', job.name)
        end

        PlayerData.job = job
    end)

    RegisterNetEvent("QBCore:Client:OnGangUpdate", function(gang)
        if not PlayerData.gang then
            return
        end

        if PlayerData.gang.name ~= gang.name and PlayerData.gang.isboss then
            TriggerServerEvent('fd_banking:server:removedFromSociety', PlayerData.gang.name, true)
        end

        if PlayerData.gang.name == gang.name and not gang.isboss then
            TriggerServerEvent('fd_banking:server:downgradedFromSociety', PlayerData.gang.name, true)
        end

        if gang.isboss then
            TriggerServerEvent('fd_banking:server:addedToSociety', gang.name, true)
        end

        PlayerData.gang = gang
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
