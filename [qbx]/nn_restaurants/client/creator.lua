Creator = {}
Creator.FormData = {}
Creator.Positions = {}

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

RegisterCommand(Config.Creator.Command, function()
    local playerData = bridge.framework.getPlayerData()
    local job = playerData.job.name
    if job ~= Config.Creator.Job then return end

    TriggerScreenblurFadeIn(200)
    SendTranslationsAndOpenUI({
        action = "setVisibility",
        data = {
            page = "creator",
            visible = true,
            action = "setVisible",
        }
    })
    SetNuiFocus(true, true)
end)

RegisterNUICallback('setPosition', function(data, cb)
    CloseUI()
    Wait(300)
    Citizen.CreateThread(function()
        while true do
            Wait(0)
            local coords = GetEntityCoords(PlayerPedId())
            local heading = GetEntityHeading(PlayerPedId())
            local markerPos = vector3(coords.x, coords.y, coords.z)

            DrawMarker(1, markerPos.x, markerPos.y, markerPos.z - 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 0, 255, 0, 100, false, true, 2, false, nil, nil, false)

            BeginTextCommandDisplayHelp('STRING')
            AddTextComponentSubstringPlayerName(T('press_enter_confirm_position'))
            EndTextCommandDisplayHelp(0, false, true, -1)

            if IsControlJustPressed(0, 201) then
                if data.management then
                    Creator.Positions.management = {x = RoundToTwoDecimals(markerPos.x), y = RoundToTwoDecimals(markerPos.y), z = RoundToTwoDecimals(markerPos.z), heading = RoundToTwoDecimals(heading)}
                else
                    Creator.Positions.blip = {x = RoundToTwoDecimals(markerPos.x), y = RoundToTwoDecimals(markerPos.y), z = RoundToTwoDecimals(markerPos.z)}
                end
                SendNUIMessage({
                    action = "setPosition",
                    data = {
                        management = Creator.Positions.management ~= nil,
                        blip = Creator.Positions.blip ~= nil,
                    }
                })
                Wait(250)
                SetNuiFocus(true, true)
                SendNUIMessage({
                    action = "setVisibility",
                    data = {
                        page = "creator",
                        visible = true,
                        action = "setVisible",
                    }
                })
                break
            end

            if IsControlJustPressed(0, 194) then
                break
            end
        end
    end)
    cb('ok')
end)

RegisterNUICallback('createRestaurant', function(data, cb)
    Creator.FormData = data
    TriggerServerEvent('nn_resto:createRestaurant', {
        name = Creator.FormData.restaurantName,
        blipNumber = Creator.FormData.blipNumber,
        logoUrl = Creator.FormData.logoUrl,
        color = Creator.FormData.color,
        positions = {
            management = Creator.Positions.management,
            blip = Creator.Positions.blip,
        }
    })
    CloseUI()
    cb('ok')
end)