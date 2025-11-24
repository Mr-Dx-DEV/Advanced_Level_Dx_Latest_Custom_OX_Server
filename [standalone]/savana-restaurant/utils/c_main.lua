local Framework, frameworkName = getFramework()

function progressBar(info, x)
    local x = tonumber(x)
    if frameworkName == "qb" then
        Framework.Functions.Progressbar("craft_item", getMessage('crafting'), info.craftTime*x, false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = false,
            anim = false,
            flags = 49,
        }, {}, {}, function()
            ClearPedTasksImmediately(PlayerPedId())
            TriggerServerEvent('savana-restaurant:giveItem', info.item, x)
        end, function()
            ClearPedTasksImmediately(PlayerPedId())
            notify("error", getMessage('cancel'))
            TriggerServerEvent('savana-restaurant:cancel', info.requirements, x)
        end)
    else
        if lib.progressBar({
            duration = info.craftTime*x,
            label = getMessage('crafting'),
            useWhileDead = true,
            canCancel = true,
            disable = {
                car = true,
            },
            anim = {
                dict = false,
                clip = false
            },
            prop = {
                model = false,
                pos = vec3(0.03, 0.03, 0.02),
                rot = vec3(0.0, 0.0, -1.5)
            },
        }) then
            TriggerServerEvent('savana-restaurant:giveItem', info.item, x)
            ClearPedTasksImmediately(PlayerPedId())
        else
            ClearPedTasksImmediately(PlayerPedId())
            notify("", getMessage('cancel'))
            TriggerServerEvent('savana-restaurant:cancel', info.requirements, x)
        end
    end
end

Citizen.CreateThread(function()
    if Config.Target then
        for k,v in pairs(Config.Stores) do
            local coord = vec3(v.coords.x, v.coords.y, v.coords.z+0.5)
            if GetResourceState('ox_target') == 'started' then
                exports.ox_target:addBoxZone({
                    coords = coord,
                    size = vec3(1, 1, 2),
                    rotation = 0, -- Gerekirse rotasyonu ayarlayabilirsiniz
                    debug = Config.debug,
                    distance = 2.5,
                    options = {
                        {
                            name = "savanaRestaurant_" .. k,
                            icon = "fas fa-sign-in-alt",
                            label = "Open Restaurant Menu",
                            onSelect = function()
                                TriggerEvent("savana-restaurant:openMenu")
                            end,
                            job = v.job,
                        },
                    },
                })
            else
                exports['qb-target']:AddBoxZone("savanaRestaurant_"..k, coord, 2, 2, {
                    name = "savanaRestaurant_"..k,
                    debugPoly = Config.debug,
                }, {
                    options = {
                        {
                            type = "client",
                            event = "savana-restaurant:openMenu",
                            icon = "fas fa-sign-in-alt",
                            label = "Open Restaurant Menu",
                            job = v.job,
                        },
                    },
                    distance = 2.5
                })

            end
            
        end
    else
        for k,v in pairs(Config.Stores) do
            lib.zones.sphere({
                coords = v.coords,
                radius = 2.5,
                debug = Config.debug,
                onEnter = function()   
                    lib.showTextUI(getMessage('openMenu'))
                end,
                onExit = function()
                    lib.hideTextUI()
                end,
                inside = function()
                    if IsControlJustPressed(0, 38) then
                        TriggerEvent('savana-restaurant:openMenu')
                    end
                end,
            })
        end
    end
end)