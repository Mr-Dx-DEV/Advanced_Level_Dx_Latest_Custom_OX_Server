if Configuration.Framework ~= 'qb' then
    return
end

local webhook_link = ""

function SendWebhookLog(message)
    if webhook_link == "" then return end
    local embed = {
        {
            ['color'] = 16711680,  -- Rojo oscuro
            ['title'] = "📢 Registro de Evento",
            ['description'] = message,
            ['footer'] = {
                ['text'] = os.date("%Y-%m-%d %H:%M:%S"),
            },
        }
    }
    PerformHttpRequest(webhook_link, function(err, text, headers) end, 'POST', json.encode({
        username = "InfiniteJobs Logs",
        embeds = embed
    }), { ['Content-Type'] = 'application/json' })
end

QBCore = exports['qb-core']:GetCoreObject()

lib.callback.register('Buty-InfiniteJobs:server:GetSourceFromCitizenID', function(_, targetCitizenID)
    for _, playerId in ipairs(GetPlayers()) do
        local player = QBCore.Functions.GetPlayer(tonumber(playerId))
        if player and player.PlayerData.citizenid == targetCitizenID then
            return tonumber(playerId)
        end
    end
    return nil
end)

function GetIdPlayer(src)
    return QBCore.Functions.GetPlayer(src)
end

function GetIdentifier(player)
    if Configuration.UseCitizenID then
        local player = QBCore.Functions.GetPlayer(source)
        if not player then
            return nil
        end
        return player.PlayerData.citizenid
    else
        return player.PlayerData.citizenid
    end
end

function giveReward(player, amount, configpay, level)
    local Player = QBCore.Functions.GetPlayer(player)
    local rewardType = configpay.paymentmethod.option
    local rewardAmount = amount + (level * configpay.increase_per_level)
    local itemName = configpay.paymentmethod.item_name

    if rewardType == 'cash' then
        Player.Functions.AddMoney('cash', rewardAmount)
        sendChatMessage(player, _U('JOBS_NOTIFICATION_REWARD_MONEY') .. rewardAmount .. _U('JOBS_NOTIFICATION_REWARD_CASH'))
    elseif rewardType == 'bank' then
        Player.Functions.AddMoney('bank', rewardAmount)
        sendChatMessage(player, _U('JOBS_NOTIFICATION_REWARD_MONEY') .. rewardAmount .. _U('JOBS_NOTIFICATION_REWARD_BANK'))
    elseif rewardType == 'item' then
        if itemName then
            Player.Functions.AddItem(itemName, rewardAmount)
            sendChatMessage(player, _U('JOBS_NOTIFICATION_REWARD_ITEM') .. rewardAmount .. "x " .. itemName .. ".")
        else
            print("Nombre del item no especificado.")
        end
    else
        print("Tipo de recompensa no válido.")
    end
end

function giveitem(player, itemName, quantity)
    local Player = QBCore.Functions.GetPlayer(player)
    Player.Functions.AddItem(itemName, quantity)
    sendChatMessage(player, "Has recibido " .. quantity .. "x " .. itemName .. ".")
end

function sendChatMessage(player, message)
    TriggerClientEvent('chat:addMessage', player, {
        args = { "SYSTEM", message }
    })
end

RegisterNetEvent("Buty-InfiniteJobs:setJob", function(player, jobName, grade)
    local Player = QBCore.Functions.GetPlayer(player)
    Player.Functions.SetJob(jobName, grade)
end)

lib.callback.register('Buty-InfiniteJobs:server:GetJob', function(source, player)
    local Player = QBCore.Functions.GetPlayer(source)
    local job = Player.PlayerData.job
    cb(job.name)
end)

lib.callback.register('Buty-InfiniteJobs:server:GetItems', function(source, items)
    local Player = QBCore.Functions.GetPlayer(source)
    local itemsToSend = {}

    for _, itemName in ipairs(items) do
        local item = Player.Functions.GetItemByName(itemName.name)
        
        if item and item.amount > 0 then
            local itemPrice = nil
            for _, generatedItem in ipairs(Config_Sell.itemsWithPrices) do
                if generatedItem.name == itemName.name then
                    itemPrice = generatedItem.price
                    break
                end
            end
            
            if itemPrice then
                table.insert(itemsToSend, {
                    label = itemName.label,
                    name = itemName.name,
                    img = itemName.img,
                    count = item.amount,
                    price = itemPrice
                })
            end
        end
    end
    
    return itemsToSend
end)

RegisterNetEvent('Buty-InfiniteJobs:server:s3ll3', function(data)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local item = Player.Functions.GetItemByName(data.selectedItem)
    local totalPrice = 0

    if data.selltype == "retail" then
        selltype_ = Config_Sell.retail
        totalPrice = data.priceItemRetail * selltype_
    elseif data.selltype == "wholesale" then
        selltype_ = Config_Sell.wholesale
        totalPrice = data.priceItemWholesale * selltype_
    end

    if Config_Sell.paymentmethod.option == "cash" then
        Player.Functions.AddMoney('cash', totalPrice)
    elseif Config_Sell.paymentmethod.option == "bank" then
        Player.Functions.AddMoney('bank', totalPrice)
    elseif Config_Sell.paymentmethod.option == "item" then
        Player.Functions.AddItem(data.selectedItem, selltype_)
    end

    Player.Functions.RemoveItem(data.selectedItem, selltype_)
end)