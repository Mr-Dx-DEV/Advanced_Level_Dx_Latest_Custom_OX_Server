local QBCore = exports["qb-core"]:GetCoreObject()


RegisterNetEvent('ac-shop:pay')
AddEventHandler('ac-shop:pay', function(data)
    local src = src
    local xPlayer = QBCore.Functions.GetPlayer(src)

    if data.payType == "cash" then
        
        if xPlayer.PlayerData.money['cash'] >= data.price then
                xPlayer.Functions.RemoveMoney('cash', data.price)
                AC.Success()
                for k,v in pairs(data.cartArr) do
                    xPlayer.Functions.AddItem(v.itemname, tonumber(v.count))
                end
            else
                TriggerClientEvent('QBCore:Notify', src, "You don't have enough cash", 'error', 4000)
            end
        else        
            if xPlayer.PlayerData.money['bank'] >= data.price then
                xPlayer.Functions.RemoveMoney('bank', data.price)
                AC.Success()
                for k,v in pairs(data.cartArr) do
                    xPlayer.Functions.AddItem(v.itemname, tonumber(v.count))
                end
            else
                TriggerClientEvent('QBCore:Notify', src, "You don't have enought bank", 'error', 4000)
            end
        end

end)