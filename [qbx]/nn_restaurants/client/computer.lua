function SendTranslationsAndOpenUI(uiData)
    local language = Config.Language or 'en'
    
    SendNUIMessage({
        action = 'setConfigLanguage',
        data = { language = language }
    })
    
    if Translations[language] then
        SendNUIMessage({
            action = 'translationsReceived',
            data = Translations[language]
        })
    else
        SendNUIMessage({
            action = 'translationsReceived',
            data = Translations['en']
        })
    end
    
    Wait(100)
    
    SendNUIMessage(uiData)
end

function OpenComputer()
    TriggerScreenblurFadeIn(200)
    SetNuiFocus(true, true)
    SendTranslationsAndOpenUI({
        action = "setVisibility",
        data = {
            page = "computer",
            visible = true,
            action = "setVisible",
        }
    })
    
    TriggerServerEvent('nn_food:getShopItems')
    TriggerServerEvent('nn_food:getShopCategories')
    TriggerServerEvent('nn_food:getMusicData')
end

function CloseComputer()
    SetNuiFocus(false, false)
    TriggerScreenblurFadeOut(200)
    SendNUIMessage({
        action = "setVisibility",
        data = {
            page = "computer",
            visible = false,
            action = "setVisible",
        }
    })
end

RegisterNUICallback('getShopItems', function(data, cb)
    TriggerServerEvent('nn_food:getShopItems')
    cb('ok')
end)

RegisterNUICallback('getShopCategories', function(data, cb)
    TriggerServerEvent('nn_food:getShopCategories')
    cb('ok')
end)

RegisterNUICallback('purchaseSupplies', function(data, cb)
    TriggerServerEvent('nn_food:purchaseSupplies', data)
    cb('ok')
end)

RegisterNetEvent('nn_food:receiveShopItems')
AddEventHandler('nn_food:receiveShopItems', function(items)
    SendNUIMessage({
        action = 'receiveShopItems',
        data = items
    })
end)

RegisterNetEvent('nn_food:receiveShopCategories')
AddEventHandler('nn_food:receiveShopCategories', function(categories)
    SendNUIMessage({
        action = 'receiveShopCategories',
        data = categories
    })
end)

RegisterNetEvent('nn_food:receiveMusicData')
AddEventHandler('nn_food:receiveMusicData', function(musicData)
    SendNUIMessage({
        action = 'receiveMusicData',
        data = musicData
    })
end)

RegisterNetEvent('nn_food:purchaseResult')
AddEventHandler('nn_food:purchaseResult', function(result)
    if result.success then
        TriggerEvent('chat:addMessage', {
            color = {0, 255, 0},
            multiline = true,
            args = {"Shop", result.message}
        })
        
        if result.deliveryId then
            TriggerEvent('chat:addMessage', {
                color = {0, 150, 255},
                multiline = true,
                args = {"Delivery", "Your delivery will arrive shortly. Check the delivery area outside the restaurant."}
            })
        end
    else
        TriggerEvent('chat:addMessage', {
            color = {255, 0, 0},
            multiline = true,
            args = {"Shop", result.message}
        })
    end
end)

RegisterCommand('computer', function()
    OpenComputer()
end, false)

RegisterCommand('shop', function()
    OpenComputer()
end, false)