QBCore = nil

-- Debug Print Function
local function DebugPrint(message)
    if Config.Debug then
        print("^3[N3X-AdminMenu SERVER] ^7" .. message .. "^7")
    end
end

-- Admin permissions
local AdminGroups = Config.AdminGroups or {
    'god',
    'admin'
}

-- Wait for QBCore to be ready
CreateThread(function()
    while QBCore == nil do
        QBCore = exports['qb-core']:GetCoreObject()
        Wait(100)
    end
    DebugPrint("QBCore object loaded")

    -- Register callbacks AFTER QBCore is loaded
    RegisterCallbacks()

    DebugPrint("=================================")
    DebugPrint("N3X Admin Menu Server Started")
    DebugPrint("ACE Mode: " .. tostring(Config.UseAce))
    if Config.UseAce then
        DebugPrint("ACE Permission: " .. Config.AcePermission)
    else
        DebugPrint("QB Permissions: " .. table.concat(AdminGroups, ", "))
    end
    DebugPrint("Debug Mode: " .. tostring(Config.Debug))
    DebugPrint("=================================")
end)

-- Check Permission
function IsPlayerAdmin(source)
    DebugPrint("Checking permission for player: " .. source)

    -- ACE Permission Check
    if Config.UseAce then
        local hasAce = IsPlayerAceAllowed(source, Config.AcePermission)
        DebugPrint("ACE Permission '" .. Config.AcePermission .. "' for player " .. source .. ": " .. tostring(hasAce))
        return hasAce
    end

    -- QB-Core Permission Check
    if not QBCore then
        DebugPrint("ERROR: QBCore not loaded yet!")
        return false
    end

    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then
        DebugPrint("Player object not found for ID: " .. source)
        return false
    end

    local permission = QBCore.Functions.GetPermission(source)
    DebugPrint("Player " .. source .. " permission level: " .. tostring(permission))

    for _, group in ipairs(AdminGroups) do
        if permission == group then
            DebugPrint("Player " .. source .. " has permission: " .. group)
            return true
        end
    end

    DebugPrint("Player " .. source .. " does not have required permission")
    return false
end

-- Register Callbacks Function
function RegisterCallbacks()
    -- Check Permission Callback
    QBCore.Functions.CreateCallback('n3x-adminmenu:checkPermission', function(source, cb)
        local hasPermission = IsPlayerAdmin(source)
        DebugPrint("Permission callback result for player " .. source .. ": " .. tostring(hasPermission))
        cb(hasPermission)
    end)

    -- Get Online Players
    QBCore.Functions.CreateCallback('n3x-adminmenu:getPlayers', function(source, cb)
        local players = {}

        for _, playerId in ipairs(GetPlayers()) do
            local Player = QBCore.Functions.GetPlayer(tonumber(playerId))
            if Player then
                table.insert(players, {
                    id = playerId,
                    name = GetPlayerName(playerId),
                    citizenid = Player.PlayerData.citizenid
                })
            end
        end

        DebugPrint("Sent " .. #players .. " players to client " .. source)
        cb(players)
    end)

    DebugPrint("Callbacks registered successfully")
end

-- Announce
RegisterNetEvent('n3x-adminmenu:server:announce', function(message)
    local src = source
    if not IsPlayerAdmin(src) then
        DebugPrint("Unauthorized announce attempt by player " .. src)
        return
    end

    TriggerClientEvent('chat:addMessage', -1, {
        color = {6, 182, 212},
        multiline = true,
        args = {"[ANNOUNCEMENT]", message}
    })

    DebugPrint("Announcement sent by player " .. src .. ": " .. message)
    LogAdminAction(src, 'announce', message)
end)

-- Freeze Player
RegisterNetEvent('n3x-adminmenu:server:freezePlayer', function(targetId)
    local src = source
    if not IsPlayerAdmin(src) then return end

    TriggerClientEvent('n3x-adminmenu:client:freeze', targetId)
    DebugPrint("Player " .. src .. " froze player " .. targetId)
    LogAdminAction(src, 'freeze', GetPlayerName(targetId))
end)

-- Give Vehicle
RegisterNetEvent('n3x-adminmenu:server:giveVehicle', function(targetId, model)
    local src = source
    if not IsPlayerAdmin(src) then return end

    TriggerClientEvent('n3x-adminmenu:client:spawnVehicle', targetId, model)
    DebugPrint("Player " .. src .. " gave vehicle '" .. model .. "' to player " .. targetId)
    LogAdminAction(src, 'givevehicle', GetPlayerName(targetId) .. ' - Model: ' .. model)
end)

-- Give Item
RegisterNetEvent('n3x-adminmenu:server:giveItem', function(targetId, item, amount)
    local src = source
    if not IsPlayerAdmin(src) then return end

    local Player = QBCore.Functions.GetPlayer(targetId)
    if Player then
        Player.Functions.AddItem(item, amount)
        TriggerClientEvent('inventory:client:ItemBox', targetId, QBCore.Shared.Items[item], "add", amount)
        TriggerClientEvent('QBCore:Notify', targetId, 'You received ' .. amount .. 'x ' .. item, 'success')
        TriggerClientEvent('QBCore:Notify', src, 'You gave ' .. amount .. 'x ' .. item .. ' to ' .. GetPlayerName(targetId), 'success')
        DebugPrint("Player " .. src .. " gave " .. amount .. "x " .. item .. " to player " .. targetId)
        LogAdminAction(src, 'giveitem', GetPlayerName(targetId) .. ' - Item: ' .. item .. ' x' .. amount)
    end
end)

-- Set Job
RegisterNetEvent('n3x-adminmenu:server:setJob', function(targetId, job, grade)
    local src = source
    if not IsPlayerAdmin(src) then return end

    local Player = QBCore.Functions.GetPlayer(targetId)
    if Player then
        Player.Functions.SetJob(job, grade)
        TriggerClientEvent('QBCore:Notify', targetId, 'Your job has been set to ' .. job .. ' with grade ' .. grade, 'success')
        TriggerClientEvent('QBCore:Notify', src, 'You set ' .. GetPlayerName(targetId) .. '\'s job to ' .. job, 'success')
        DebugPrint("Player " .. src .. " set player " .. targetId .. " job to " .. job .. " grade " .. grade)
        LogAdminAction(src, 'setjob', GetPlayerName(targetId) .. ' - Job: ' .. job .. ' Grade: ' .. grade)
    end
end)

-- Give Money
RegisterNetEvent('n3x-adminmenu:server:giveMoney', function(targetId, moneyType, amount)
    local src = source
    if not IsPlayerAdmin(src) then return end

    local Player = QBCore.Functions.GetPlayer(targetId)
    if Player then
        Player.Functions.AddMoney(moneyType, amount)
        TriggerClientEvent('QBCore:Notify', targetId, 'You received $' .. amount .. ' in your ' .. moneyType, 'success')
        TriggerClientEvent('QBCore:Notify', src, 'You gave $' .. amount .. ' to ' .. GetPlayerName(targetId), 'success')
        DebugPrint("Player " .. src .. " gave $" .. amount .. " (" .. moneyType .. ") to player " .. targetId)
        LogAdminAction(src, 'givemoney', GetPlayerName(targetId) .. ' - $' .. amount .. ' (' .. moneyType .. ')')
    end
end)

-- Kick Player
RegisterNetEvent('n3x-adminmenu:server:kickPlayer', function(targetId, reason)
    local src = source
    if not IsPlayerAdmin(src) then return end

    DropPlayer(targetId, 'You have been kicked: ' .. reason)
    TriggerClientEvent('QBCore:Notify', src, 'You kicked ' .. GetPlayerName(targetId), 'success')
    DebugPrint("Player " .. src .. " kicked player " .. targetId .. " - Reason: " .. reason)
    LogAdminAction(src, 'kick', GetPlayerName(targetId) .. ' - Reason: ' .. reason)
end)

-- Ban Player
RegisterNetEvent('n3x-adminmenu:server:banPlayer', function(targetId, reason, duration)
    local src = source
    if not IsPlayerAdmin(src) then return end

    local Player = QBCore.Functions.GetPlayer(targetId)
    if Player then
        -- Use QB-Core ban function if available
        local success, error = pcall(function()
            local banTime = duration == 0 and 2147483647 or (duration * 3600)
            exports['qb-core']:BanPlayer(targetId, banTime, reason)
        end)

        if not success then
            DebugPrint("QB-Core ban function not available, using basic kick")
        end

        DropPlayer(targetId, 'You have been banned: ' .. reason)
        TriggerClientEvent('QBCore:Notify', src, 'You banned ' .. GetPlayerName(targetId), 'success')
        DebugPrint("Player " .. src .. " banned player " .. targetId .. " - Reason: " .. reason .. " - Duration: " .. duration .. "h")
        LogAdminAction(src, 'ban', GetPlayerName(targetId) .. ' - Reason: ' .. reason .. ' - Duration: ' .. duration .. 'h')
    end
end)

-- Teleport to Player
RegisterNetEvent('n3x-adminmenu:server:teleportToPlayer', function(targetId)
    local src = source
    if not IsPlayerAdmin(src) then return end

    local targetPed = GetPlayerPed(targetId)
    local targetCoords = GetEntityCoords(targetPed)

    TriggerClientEvent('n3x-adminmenu:client:teleport', src, targetCoords)
    DebugPrint("Player " .. src .. " teleported to player " .. targetId)
end)

-- Revive Player
RegisterNetEvent('n3x-adminmenu:server:revivePlayer', function(targetId)
    local src = source
    if not IsPlayerAdmin(src) then return end

    -- QB-Core ambulance revive
    TriggerClientEvent(Config.ReviveEvent or 'hospital:client:Revive', targetId)
    TriggerClientEvent('QBCore:Notify', src, 'You revived ' .. GetPlayerName(targetId), 'success')
    DebugPrint("Player " .. src .. " revived player " .. targetId)
    LogAdminAction(src, 'revive', GetPlayerName(targetId))
end)

-- Heal Player
RegisterNetEvent('n3x-adminmenu:server:healPlayer', function(targetId)
    local src = source
    if not IsPlayerAdmin(src) then return end

    TriggerClientEvent('n3x-adminmenu:client:heal', targetId)
    TriggerClientEvent('QBCore:Notify', src, 'You healed ' .. GetPlayerName(targetId), 'success')
    DebugPrint("Player " .. src .. " healed player " .. targetId)
    LogAdminAction(src, 'heal', GetPlayerName(targetId))
end)

-- Give Armor
RegisterNetEvent('n3x-adminmenu:server:giveArmor', function(targetId)
    local src = source
    if not IsPlayerAdmin(src) then return end

    TriggerClientEvent('n3x-adminmenu:client:armor', targetId)
    TriggerClientEvent('QBCore:Notify', src, 'You gave armor to ' .. GetPlayerName(targetId), 'success')
    DebugPrint("Player " .. src .. " gave armor to player " .. targetId)
    LogAdminAction(src, 'givearmor', GetPlayerName(targetId))
end)

-- Give Weapon
RegisterNetEvent('n3x-adminmenu:server:giveWeapon', function(targetId, weapon, ammo)
    local src = source
    if not IsPlayerAdmin(src) then return end

    local Player = QBCore.Functions.GetPlayer(targetId)
    if Player then
        Player.Functions.AddItem(weapon, 1)
        TriggerClientEvent('inventory:client:ItemBox', targetId, QBCore.Shared.Items[weapon], "add")
        TriggerClientEvent('QBCore:Notify', src, 'You gave ' .. weapon .. ' to ' .. GetPlayerName(targetId), 'success')
        DebugPrint("Player " .. src .. " gave weapon " .. weapon .. " to player " .. targetId)
        LogAdminAction(src, 'giveweapon', GetPlayerName(targetId) .. ' - Weapon: ' .. weapon)
    end
end)

-- Clear Inventory
RegisterNetEvent('n3x-adminmenu:server:clearInventory', function(targetId)
    local src = source
    if not IsPlayerAdmin(src) then return end

    local Player = QBCore.Functions.GetPlayer(targetId)
    if Player then
        Player.Functions.ClearInventory()
        TriggerClientEvent('QBCore:Notify', targetId, 'Your inventory has been cleared!', 'error')
        TriggerClientEvent('QBCore:Notify', src, 'You cleared ' .. GetPlayerName(targetId) .. '\'s inventory', 'success')
        DebugPrint("Player " .. src .. " cleared inventory of player " .. targetId)
        LogAdminAction(src, 'clearinventory', GetPlayerName(targetId))
    end
end)

-- Bring Player
RegisterNetEvent('n3x-adminmenu:server:bringPlayer', function(targetId)
    local src = source
    if not IsPlayerAdmin(src) then return end

    local adminPed = GetPlayerPed(src)
    local adminCoords = GetEntityCoords(adminPed)

    TriggerClientEvent('n3x-adminmenu:client:teleport', targetId, adminCoords)
    TriggerClientEvent('QBCore:Notify', src, 'You brought ' .. GetPlayerName(targetId) .. ' to you', 'success')
    DebugPrint("Player " .. src .. " brought player " .. targetId .. " to them")
    LogAdminAction(src, 'bring', GetPlayerName(targetId))
end)

-- Go to Player
RegisterNetEvent('n3x-adminmenu:server:gotoPlayer', function(targetId)
    local src = source
    if not IsPlayerAdmin(src) then return end

    local targetPed = GetPlayerPed(targetId)
    local targetCoords = GetEntityCoords(targetPed)

    TriggerClientEvent('n3x-adminmenu:client:teleport', src, targetCoords)
    TriggerClientEvent('QBCore:Notify', src, 'You teleported to ' .. GetPlayerName(targetId), 'success')
    DebugPrint("Player " .. src .. " went to player " .. targetId)
    LogAdminAction(src, 'goto', GetPlayerName(targetId))
end)

-- Spectate Player
RegisterNetEvent('n3x-adminmenu:server:spectatePlayer', function(targetId)
    local src = source
    if not IsPlayerAdmin(src) then return end

    TriggerClientEvent('n3x-adminmenu:client:spectate', src, targetId)
    DebugPrint("Player " .. src .. " is spectating player " .. targetId)
    LogAdminAction(src, 'spectate', GetPlayerName(targetId))
end)

-- Create Job Stash
RegisterNetEvent('n3x-adminmenu:server:createJobStash', function(jobName, size)
    local src = source
    if not IsPlayerAdmin(src) then return end

    -- This is a placeholder - implement based on your stash system
    -- For qb-inventory:
    -- exports['qb-inventory']:RegisterStash(jobName .. '_stash', jobName .. ' Stash', size, 1000000)

    -- For ox_inventory:
    -- exports.ox_inventory:RegisterStash(jobName .. '_stash', jobName .. ' Stash', size, 1000000)

    TriggerClientEvent('QBCore:Notify', src, 'Job stash created for ' .. jobName, 'success')
    DebugPrint("Player " .. src .. " created job stash for " .. jobName .. " (Size: " .. size .. ")")
    LogAdminAction(src, 'createjobstash', jobName .. ' - Size: ' .. size)
end)

-- Logging function
function LogAdminAction(admin, action, target)
    local adminName = GetPlayerName(admin)
    local message = string.format('[ADMIN] %s (%s) used %s on %s', adminName, admin, action, target or 'N/A')
    print("^2" .. message .. "^7")

    -- Discord Webhook Logging (optional)
    if Config.Webhook and Config.Webhook.enabled then
        local webhookURL = Config.Webhook.url
        PerformHttpRequest(webhookURL, function(err, text, headers) end, 'POST', json.encode({
            username = "N3X Admin Menu",
            embeds = {{
                title = Config.Webhook.title or "Admin Action",
                description = message,
                color = Config.Webhook.color or 3447003,
                footer = {
                    text = (Config.Webhook.footer or "N3X Admin Menu") .. " | " .. os.date("%Y-%m-%d %H:%M:%S")
                }
            }}
        }), { ['Content-Type'] = 'application/json' })
    end
end