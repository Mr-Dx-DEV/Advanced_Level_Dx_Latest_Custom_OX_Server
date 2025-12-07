function findRestaurantJob(id)
    for k,v in pairs(Config.POSZones) do
        if k == id then
            return v.job
        end
    end
end

function findRestaurantJobGrade(id)
    for k,v in pairs(Config.POSZones) do
        if k == id then
            return v.grade
        end
    end
end

lib.callback.register('savana-order:server:getJob', function(source)
    local src = source
    return {
        name = Framework:GetJob(src),
        grade = Framework:GetJobGrade(src)
    }
end)

lib.callback.register('savana-order:server:getPlayerInfo', function(source)
    return {
        money = Framework:GetPlayerBankMoney(source) + Framework:GetPlayerMoney(source),
        name = Framework:GetPlayerName(source)
    }
end)

lib.callback.register('savana-order:server:openRestaurant', function(source, id)
    local src = source

    local job = Framework:GetJob(src)

    -- if job == findRestaurantJob(id) then
        local result = MySQL.Sync.fetchAll('SELECT * FROM savana_order WHERE id = @id', {
            ['@id'] = id
        })

        if result[1] then
            MySQL.Sync.execute('UPDATE savana_order SET totalVisit = totalVisit + 1 WHERE id = @id', {
                ['@id'] = id
            })

            return result[1]
        else
            Framework:InsertBlankData(id)
            
            MySQL.Sync.execute('UPDATE savana_order SET totalVisit = totalVisit + 1 WHERE id = @id', {
                ['@id'] = id
            })

            return result[1]
        end
    -- else
    --     return false
    -- end 
end)

lib.callback.register('savana-order:server:openAdmin', function(source, id)
    local src = source

    local job = Framework:GetJob(src)
    local jobGrade = Framework:GetJobGrade(src)

    if job == findRestaurantJob(id) and jobGrade == findRestaurantJobGrade(id) then
        local result = MySQL.Sync.fetchAll('SELECT * FROM savana_order WHERE id = @id', {
            ['@id'] = id
        })

        if result[1] then
            return result[1]
        else
            Framework:InsertBlankData(id)

            local result = MySQL.Sync.fetchAll('SELECT * FROM savana_order WHERE id = @id', {
                ['@id'] = id
            })
            
            return result[1]
        end
    else
        return false
    end
end)

lib.callback.register('savana-order:server:withdrawMoney', function(source, id, amount)
    local src = source

    local job = Framework:GetJob(src)

    if job == findRestaurantJob(id) then
        local result = MySQL.Sync.fetchAll('SELECT * FROM savana_order WHERE id = @id', {
            ['@id'] = id
        })

        if result[1] then
            if result[1].money >= amount then
                MySQL.Sync.execute('UPDATE savana_order SET money = money - @amount WHERE id = @id', {
                    ['@id'] = id,
                    ['@amount'] = amount
                })

                Framework:AddMoney(src, 'cash', amount)

                local data = MySQL.Sync.fetchAll('SELECT * FROM savana_order WHERE id = @id', {
                    ['@id'] = id
                })

                local transactions = json.decode(data[1].transactions)

                table.insert(transactions, {
                    type = "withdraw",
                    amount = amount,
                    time = os.time(),
                    name = Framework:GetPlayerName(src) .. ' '
                })  

                MySQL.Sync.execute('UPDATE savana_order SET transactions = @transactions WHERE id = @id', {
                    ['@id'] = id,
                    ['@transactions'] = json.encode(transactions)
                })

                data[1].transactions = json.encode(transactions)

                return data[1]
            else
                return false
            end
        else
            return false
        end
    else
        return false
    end
end)

lib.callback.register('savana-order:server:depositMoney', function(source, id, amount)
    local src = source

    local job = Framework:GetJob(src)

    if job == findRestaurantJob(id) then
        local result = MySQL.Sync.fetchAll('SELECT * FROM savana_order WHERE id = @id', {
            ['@id'] = id
        })

        if result[1] then
            if Framework:RemoveMoney(src, 'cash', amount) then
                MySQL.Sync.execute('UPDATE savana_order SET money = money + @amount WHERE id = @id', {
                    ['@id'] = id,
                    ['@amount'] = amount
                })

                local data = MySQL.Sync.fetchAll('SELECT * FROM savana_order WHERE id = @id', {
                    ['@id'] = id
                })

                local transactions = json.decode(data[1].transactions)

                table.insert(transactions, {
                    type = "deposit",
                    amount = amount,
                    time = os.time(),
                    name = Framework:GetPlayerName(src) .. ' '
                })

                MySQL.Sync.execute('UPDATE savana_order SET transactions = @transactions WHERE id = @id', {
                    ['@id'] = id,
                    ['@transactions'] = json.encode(transactions)
                })

                data[1].transactions = json.encode(transactions)

                return data[1]
            else
                return false
            end
        else
            return false
        end
    else
        return false
    end
end)

lib.callback.register('savana-order:server:addMenu', function(source, id, data)
    local src = source

    local job = Framework:GetJob(src)
    local jobGrade = Framework:GetJobGrade(src)

    if job == findRestaurantJob(id) and jobGrade == findRestaurantJobGrade(id) then
        local result = MySQL.Sync.fetchAll('SELECT * FROM savana_order WHERE id = @id', {
            ['@id'] = id
        })

        if result[1] then
            local menuPayload = {
                title = data.title,
                category = data.category,
                price = data.price,
                image = data.image,
                items = data.items
            }

            local restaurantData = json.decode(result[1].data)
            local menus = restaurantData.menus

            table.insert(menus, menuPayload)

            restaurantData.menus = menus

            MySQL.Sync.execute('UPDATE savana_order SET data = @data WHERE id = @id', {
                ['@id'] = id,
                ['@data'] = json.encode(restaurantData)
            })

            return {menus = menus}
        else
            return false
        end
    else
        return false
    end
end)

lib.callback.register('savana-order:server:editMenu', function(source, id, data)
    local src = source

    local job = Framework:GetJob(src)
    local jobGrade = Framework:GetJobGrade(src)

    if job == findRestaurantJob(id) and jobGrade == findRestaurantJobGrade(id) then
        local result = MySQL.Sync.fetchAll('SELECT * FROM savana_order WHERE id = @id', {
            ['@id'] = id
        })

        if result[1] then
            data.key = tonumber(data.key) + 1

            data.category = tonumber(data.category)
            data.price = tonumber(data.price)

            local menuPayload = {
                title = data.title,
                category = data.category,
                price = data.price,
                image = data.image,
                items = data.items
            }

            local restaurantData = json.decode(result[1].data)
            local menus = restaurantData.menus

            menus[data.key] = menuPayload

            restaurantData.menus = menus

            MySQL.Sync.execute('UPDATE savana_order SET data = @data WHERE id = @id', {
                ['@id'] = id,
                ['@data'] = json.encode(restaurantData)
            })

            return menus
        else
            return false
        end
    else
        return false
    end
end)

-- savana-order:server:deleteMenu
lib.callback.register('savana-order:server:deleteMenu', function(source, id, data)
    local src = source

    local job = Framework:GetJob(src)
    local jobGrade = Framework:GetJobGrade(src)

    if job == findRestaurantJob(id) and jobGrade == findRestaurantJobGrade(id) then
        local result = MySQL.Sync.fetchAll('SELECT * FROM savana_order WHERE id = @id', {
            ['@id'] = id
        })

        if result[1] then
            local restaurantData = json.decode(result[1].data)
            local menus = restaurantData.menus

            local key = tonumber(data.key) + 1

            table.remove(menus, key)

            restaurantData.menus = menus

            MySQL.Sync.execute('UPDATE savana_order SET data = @data WHERE id = @id', {
                ['@id'] = id,
                ['@data'] = json.encode(restaurantData)
            })

            return menus
        else
            return false
        end
    else
        return false
    end
end)

-- savana-order:server:deleteProduct
lib.callback.register('savana-order:server:deleteProduct', function(source, id, data)
    local src = source

    local job = Framework:GetJob(src)
    local jobGrade = Framework:GetJobGrade(src)

    if job == findRestaurantJob(id) and jobGrade == findRestaurantJobGrade(id) then
        local result = MySQL.Sync.fetchAll('SELECT * FROM savana_order WHERE id = @id', {
            ['@id'] = id
        })

        if result[1] then
            local restaurantData = json.decode(result[1].data)
            local products = restaurantData.products

            local item = data.item

            local index = -1

            for i = 1, #products do
                if products[i].item == item then
                    index = i
                    break
                end
            end

            if index == -1 then
                return false
            end

            table.remove(products, index)
            
            restaurantData.products = products

            MySQL.Sync.execute('UPDATE savana_order SET data = @data WHERE id = @id', {
                ['@id'] = id,
                ['@data'] = json.encode(restaurantData)
            })

            return products
        else
            return false
        end
    else
        return false
    end
end)

-- savana-order:server:addProduct
lib.callback.register('savana-order:server:addProduct', function(source, id, data)
    local src = source

    local job = Framework:GetJob(src)
    local jobGrade = Framework:GetJobGrade(src)

    if job == findRestaurantJob(id) and jobGrade == findRestaurantJobGrade(id) then
        local result = MySQL.Sync.fetchAll('SELECT * FROM savana_order WHERE id = @id', {
            ['@id'] = id
        })

        if result[1] then
            local restaurantData = json.decode(result[1].data)
            local products = restaurantData.products

            local productPayload = {
                item = data.item,
                price = data.price,
                image = data.image
            }

            table.insert(products, productPayload)

            restaurantData.products = products

            MySQL.Sync.execute('UPDATE savana_order SET data = @data WHERE id = @id', {
                ['@id'] = id,
                ['@data'] = json.encode(restaurantData)
            })

            return products
        else
            return false
        end
    else
        return false
    end
end)

-- savana-order:server:editProduct
lib.callback.register('savana-order:server:editProduct', function(source, id, data)
    local src = source

    local job = Framework:GetJob(src)
    local jobGrade = Framework:GetJobGrade(src)

    if job == findRestaurantJob(id) and jobGrade == findRestaurantJobGrade(id) then
        local result = MySQL.Sync.fetchAll('SELECT * FROM savana_order WHERE id = @id', {
            ['@id'] = id
        })

        if result[1] then
            data.price = tonumber(data.price)

            local restaurantData = json.decode(result[1].data)

            local products = restaurantData.products

            local index = -1

            for i = 1, #products do
                if products[i].item == data.item then
                    index = i
                    break
                end
            end

            if index == -1 then
                return false
            end

            products[index].price = data.price
            products[index].image = data.image

            restaurantData.products = products

            MySQL.Sync.execute('UPDATE savana_order SET data = @data WHERE id = @id', {
                ['@id'] = id,
                ['@data'] = json.encode(restaurantData)
            })

            return products
        else
            return false
        end
    else
        return false
    end
end)

lib.callback.register('savana-order:server:getPlayers', function(source, id)
    local src = source

    local job = Framework:GetJob(src)
    local jobGrade = Framework:GetJobGrade(src)

    if job == findRestaurantJob(id) then
        local players = Framework:GetPlayers()
        local srcCoords = GetEntityCoords(GetPlayerPed(src))

        local data = {}

        for i = 1, #players do
            local player = players[i]

            if tonumber(player) == tonumber(src) then
                
            else
                local targetCoords = GetEntityCoords(GetPlayerPed(player))
                local distance = #(srcCoords - targetCoords)

                if distance <= 5.0 then
                    table.insert(data, {
                        id = player,
                        name = Framework:GetPlayerName(player)
                    })
                end
            end
        end

        return data
    else
        return false
    end
end)

lib.callback.register('savana-order:server:sendPayment', function(source, id, data)
    local src = source

    local job = Framework:GetJob(src)
    local jobGrade = Framework:GetJobGrade(src)

    local playerName = Framework:GetPlayerName(src)

    if job == findRestaurantJob(id) then
        TriggerClientEvent('savana-order:client:openPayment', tonumber(data.id), data, playerName, tonumber(src), tonumber(data.restaurantId))
        return true
    else
        return false
    end
end)

lib.callback.register('savana-order:server:invoiceCancelled', function(source, id)
    Framework:CustomerCancelled(tonumber(id))
    return true
end)


lib.callback.register('savana-order:server:completePayment', function(source, id, data)
    local src = source

    local basket = json.decode(data.basket)

    local basketTotalWithoutTax = 0

    for i = 1, #basket do
        basketTotalWithoutTax = basketTotalWithoutTax + (basket[i].price * basket[i].count)
    end

    local tax = basketTotalWithoutTax * (Config.TaxRate / 100)

    local needToPay = basketTotalWithoutTax + tax

    if data.method ~= "cash" and data.method ~= "bank" then
        -- print("EXPLOIT TRRIGERED!")
        return false
    end

    if Framework:RemoveMoney(src, data.method, needToPay) then
        local result = MySQL.Sync.fetchAll('SELECT * FROM savana_order WHERE id = @id', {
            ['@id'] = id
        })

        if result[1] then
            MySQL.Sync.execute('UPDATE savana_order SET money = money + @amount WHERE id = @id', {
                ['@id'] = id,
                ['@amount'] = basketTotalWithoutTax
            })

            MySQL.Sync.execute('UPDATE savana_order SET totalSelling = totalSelling + 1 WHERE id = @id', {
                ['@id'] = id
            })

            local billingData = json.decode(result[1].billing)

            local productsObj = {}

            for i = 1, #basket do
                table.insert(productsObj, {
                    title = basket[i].title,
                    amount = basket[i].count
                })

                if Config.GiveItemsToCustomer then
                    if basket[i].items then
                        for j = 1, #basket[i].items do
                            -- print("Item added: " .. basket[i].items[j].item .. " " .. basket[i].items[j].count)
                            Framework:GiveItem(src, basket[i].items[j].item, basket[i].items[j].count)
                        end
                    else
                        -- print("Item added: " .. basket[i].item .. " " .. basket[i].count)
                        Framework:GiveItem(src, basket[i].item, basket[i].count)
                    end
                end
            end

            Framework:CustomerPaidInvoice(data.senderId, basketTotalWithoutTax)

            table.insert(billingData, {
                customerName = Framework:GetPlayerName(src),
                createdAt = os.time(),
                products = productsObj,
                biller = data.biller,
                paymentType = data.method,
                totalAmount = basketTotalWithoutTax
            })

            MySQL.Sync.execute('UPDATE savana_order SET billing = @billing WHERE id = @id', {
                ['@id'] = id,
                ['@billing'] = json.encode(billingData)
            })

            return true
        else
            return false
        end
    else
        return false
    end
end)