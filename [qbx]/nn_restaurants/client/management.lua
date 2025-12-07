local managementOpen = false
local currentRestaurant = nil
local currentTVPlacementData = nil
local isPlacingTV = false

function OpenManagementPanel(restaurantId)
    currentRestaurant = restaurantId
    managementOpen = true
    
    if not restaurantId then
        bridge.notification.show({
            message = 'Failed to load restaurant data',
            type = 'error'
        })
        return
    end
    
    Lib.Callback('nn_food:getRestaurantData', function(restaurantData)
        if not restaurantData then
            bridge.notification.show({
                message = 'Failed to load restaurant data',
                type = 'error'
            })
            return
        end
        
        Lib.Callback('nn_food:getPlayerRole', function(roleData)
            TriggerScreenblurFadeIn(200)
            SetNuiFocus(true, true)
            SendTranslationsAndOpenUI({
                action = 'setVisibility',
                data = {
                    page = 'management',
                    visible = true,
                    restaurantData = restaurantData,
                    playerRole = roleData.role,
                    accessPermissions = roleData.access
                }
            })
            LoadManagementData(restaurantId)
        end, restaurantId)
    end, restaurantId)
end

function LoadManagementData(restaurantId)
    Lib.Callback('nn_food:getPlayerRole', function(roleData)
        local access = roleData.access
        
        if access.employees then
            Lib.Callback('nn_food:getEmployees', function(employees)
                SendNUIMessage({
                    action = 'updateEmployees',
                    data = employees
                })
            end, restaurantId)
        end
        
        if access.recipes then
            Lib.Callback('nn_food:getRecipes', function(recipes)
                SendNUIMessage({
                    action = 'updateRecipes',
                    data = recipes
                })
            end, restaurantId)
        end
        
        if access.menu then
            Lib.Callback('nn_food:getMenuData', function(menuData)
                SendNUIMessage({
                    action = 'updateMenu',
                    data = menuData
                })
            end, restaurantId)
        end
        
        if access.pos then
            Lib.Callback('nn_food:getPOSSystems', function(posSystems)
                SendNUIMessage({
                    action = 'updatePOS',
                    data = posSystems
                })
            end, restaurantId)
        end
        
        if access.display then
            Lib.Callback('nn_food:getTVDisplays', function(tvDisplays)
                SendNUIMessage({
                    action = 'updateTVDisplays',
                    data = tvDisplays
                })
            end, restaurantId)
        end
        
        if access.overview then
            Lib.Callback('nn_food:getAnalytics', function(analytics)
                SendNUIMessage({
                    action = 'updateAnalytics',
                    data = analytics
                })
            end, restaurantId)
            
            -- Send NPC ordering state data
            Lib.Callback('nn_food:getNPCOrderingState', function(npcState)
                SendNUIMessage({
                    action = 'npcOrderingStateUpdate',
                    data = npcState
                })
            end, restaurantId)
        end
        
        -- Always load cooking items as they're used in recipes
        Lib.Callback('nn_food:getCookingItems', function(cookingItems)
            SendNUIMessage({
                action = 'updateCookingItems',
                data = cookingItems
            })
        end)
        
        -- Only load finance data if player has access
        if access.finance then
            Lib.Callback('nn_food:getFinanceData', function(financeData)
                SendNUIMessage({
                    action = 'updateFinanceData',
                    data = financeData
                })
            end)
        end
    end, restaurantId)
end

function CloseManagementPanel()
    managementOpen = false
    SetNuiFocus(false, false)
    TriggerScreenblurFadeOut(200)
    SendNUIMessage({
        action = 'setVisibility',
        data = {
            visible = false
        }
    })
end

-- Simple function to send translations before opening UI
function SendTranslationsAndOpenUI(uiData)
    local language = Config.Language or 'en'
    
    -- Send config language first
    SendNUIMessage({
        action = 'setConfigLanguage',
        data = { language = language }
    })
    
    -- Send translations
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
    
    -- Small delay to ensure translations are processed
    Wait(100)
    
    -- Open the UI
    SendNUIMessage(uiData)
end

function OpenShopPanel()
    SetNuiFocus(true, true)
    TriggerScreenblurFadeIn(200)
    SendTranslationsAndOpenUI({
        action = 'setVisibility',
        data = {
            page = 'shop',
            visible = true
        }
    })
end

function CloseShopPanel()
    SetNuiFocus(false, false)
    TriggerScreenblurFadeOut(200)
    SendNUIMessage({
        action = 'setVisibility',
        data = {
            visible = false
        }
    })
end

RegisterNUICallback('updateRestaurantInfo', function(data, cb)
    if not currentRestaurant then return cb('error') end
    
    TriggerServerEvent('nn_food:updateRestaurantInfo', currentRestaurant, data)
    cb('ok')
end)

RegisterNUICallback('updateEmployee', function(data, cb)
    TriggerServerEvent('nn_food:updateEmployee', data.id, data)
    cb('ok')
end)

RegisterNUICallback('deleteEmployee', function(data, cb)
    TriggerServerEvent('nn_food:deleteEmployee', data.id)
    cb('ok')
end)

RegisterNUICallback('addRecipe', function(data, cb)
    if not currentRestaurant then return cb('error') end
    
    TriggerServerEvent('nn_food:addRecipe', currentRestaurant, data)
    cb('ok')
end)

RegisterNUICallback('updateRecipe', function(data, cb)
    TriggerServerEvent('nn_food:updateRecipe', data.id, data)
    cb('ok')
end)

RegisterNUICallback('deleteRecipe', function(data, cb)
    TriggerServerEvent('nn_food:deleteRecipe', data.id)
    cb('ok')
end)

RegisterNUICallback('addCategory', function(data, cb)
    if not currentRestaurant then return cb('error') end
    
    TriggerServerEvent('nn_food:addCategory', currentRestaurant, data)
    cb('ok')
end)

RegisterNUICallback('updateCategory', function(data, cb)
    if not currentRestaurant then return cb('error') end
    
    data.restaurant_id = currentRestaurant
    TriggerServerEvent('nn_food:updateCategory', data.id, data)
    cb('ok')
end)

RegisterNUICallback('deleteCategory', function(data, cb)
    TriggerServerEvent('nn_food:deleteCategory', data.id)
    cb('ok')
end)

RegisterNUICallback('addMenuItem', function(data, cb)
    if not currentRestaurant then return cb('error') end
    
    TriggerServerEvent('nn_food:addMenuItem', data.categoryId, currentRestaurant, data)
    cb('ok')
end)

RegisterNUICallback('updateMenuItem', function(data, cb)
    TriggerServerEvent('nn_food:updateMenuItem', data.id, data)
    cb('ok')
end)

RegisterNUICallback('deleteMenuItem', function(data, cb)
    TriggerServerEvent('nn_food:deleteMenuItem', data.id)
    cb('ok')
end)

RegisterNUICallback('addPOS', function(data, cb)
    if not currentRestaurant then return cb('error') end
    
    TriggerServerEvent('nn_food:addPOS', currentRestaurant, data)
    cb('ok')
end)

RegisterNUICallback('updatePOS', function(data, cb)
    TriggerServerEvent('nn_food:updatePOS', data.id, data)
    cb('ok')
end)

RegisterNUICallback('deletePOS', function(data, cb)
    TriggerServerEvent('nn_food:deletePOS', data.id)
    cb('ok')
end)

RegisterNUICallback('setPOSPosition', function(data, cb)
    if not currentRestaurant then return cb('error') end
    
    local restaurantId = currentRestaurant
    
    CloseManagementPanel()
    
    bridge.notification.show({
        message = 'Position yourself where you want the ' .. (data.device_type == 'pos' and 'POS Terminal' or 'Kiosk') .. ' and press [E]',
        type = 'info',
        duration = 5000
    })
    
    Citizen.CreateThread(function()
        local placing = true
        
        while placing do
            Citizen.Wait(0)
            
            local playerPed = PlayerPedId()
            local coords = GetEntityCoords(playerPed)
            local heading = GetEntityHeading(playerPed)
            
            DrawMarker(1, coords.x, coords.y, coords.z - 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 67, 255, 205, 100, false, true, 2, false, nil, nil, false)
            
            DrawText3D(coords.x, coords.y, coords.z + 1.0, '[E] Confirm Position | [ESC] Cancel')
            
            if IsControlJustPressed(0, 38) then -- E key
                local posData = {
                    name = data.name,
                    device_type = data.device_type,
                    is_active = data.is_active,
                    position = {
                        x = coords.x,
                        y = coords.y,
                        z = coords.z,
                        heading = heading
                    }
                }

                TriggerServerEvent('nn_food:addPOS', restaurantId, posData)
                
                bridge.notification.show({
                    message = 'POS placed successfully!',
                    type = 'success'
                })
                placing = false
                
                Wait(1000)
                OpenManagementPanel(restaurantId)
                break
            end
            
            if IsControlJustPressed(0, 322) then -- ESC key
                bridge.notification.show({
                    message = 'POS placement cancelled',
                    type = 'error'
                })
                placing = false
                OpenManagementPanel(restaurantId)
                break
            end
        end
    end)
    
    cb('ok')
end)

function StartTVPlacement()
    if isPlacingTV then
        return
    end
    
    if not currentTVPlacementData then
        bridge.notification.show({
            message = 'Error: No placement data',
            type = 'error'
        })
        return
    end
    
    local model = "prop_tv_flat_03b"
    local restaurantId = currentTVPlacementData.restaurantId
    
    if not restaurantId then
        bridge.notification.show({
            message = 'Error: Restaurant ID missing',
            type = 'error'
        })
        return
    end
    
    isPlacingTV = true
    
    bridge.notification.show({
        message = 'Use the gizmo to position the TV display',
        type = 'primary',
        duration = 5000
    })
    
    local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)
    
    
    CreateThread(function()
        local placementData = currentTVPlacementData
        
        if not placementData then
            isPlacingTV = false
            currentTVPlacementData = nil
            bridge.notification.show({
                message = 'TV placement failed - no data',
                type = 'error'
            })
            OpenManagementPanel(restaurantId)
            return
        end
        
        local data = placeProp(model)
        if data then
            local displayData = {
                name = placementData.name,
                type = placementData.type,
                display_type = placementData.type,
                customContent = placementData.customContent,
                model = model,
                position = {
                    x = data.position.x,
                    y = data.position.y,
                    z = data.position.z,
                    heading = data.rotation.z
                },
                isActive = true
            }
            
            TriggerServerEvent('nn_food:addTVDisplay', restaurantId, displayData)
            
            bridge.notification.show({
                message = 'Display placed successfully!',
                type = 'success'
            })
            
            currentTVPlacementData = nil
            isPlacingTV = false
            
            Wait(1500)
            OpenManagementPanel(restaurantId)
        else
            bridge.notification.show({
                message = 'TV placement cancelled',
                type = 'error'
            })
            
            currentTVPlacementData = nil
            isPlacingTV = false
            
            Wait(1000)
            OpenManagementPanel(restaurantId)
        end
    end)
end
function DrawText3D(x, y, z, text)
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    local p = GetGameplayCamCoords()
    local distance = GetDistanceBetweenCoords(p.x, p.y, p.z, x, y, z, 1)
    local scale = (1 / distance) * 2
    local fov = (1 / GetGameplayCamFov()) * 100
    local scale = scale * fov
    
    if onScreen then
        SetTextScale(0.0 * scale, 0.55 * scale)
        SetTextFont(0)
        SetTextProportional(1)
        SetTextColour(255, 255, 255, 255)
        SetTextDropshadow(0, 0, 0, 0, 255)
        SetTextEdge(2, 0, 0, 0, 150)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(_x, _y)
    end
end

RegisterNUICallback('addTVDisplay', function(data, cb)
    if not currentRestaurant then return cb('error') end
    
    TriggerServerEvent('nn_food:addTVDisplay', currentRestaurant, data)
    cb('ok')
end)

RegisterNUICallback('placeTVDisplay', function(data, cb)
    if not currentRestaurant then 
        return cb('error') 
    end
    
    if data.tvData then
        currentTVPlacementData = data.tvData
        currentTVPlacementData.restaurantId = currentRestaurant
    else
        currentTVPlacementData = { 
            name = "Kitchen Display", 
            type = "kitchen",
            restaurantId = currentRestaurant
        }
    end
    
    CloseManagementPanel()
    StartTVPlacement()
    
    cb('ok')
end)

RegisterNetEvent('nn_food:refreshEmployees', function()
    if currentRestaurant then
        Lib.Callback('nn_food:getEmployees', function(employees)
            SendNUIMessage({
                action = 'updateEmployees',
                data = employees
            })
        end, currentRestaurant)
    end
end)

RegisterNetEvent('nn_food:refreshRecipes', function()
    if currentRestaurant then
        Lib.Callback('nn_food:getRecipes', function(recipes)
            SendNUIMessage({
                action = 'updateRecipes',
                data = recipes
            })
        end, currentRestaurant)
    end
end)

RegisterNetEvent('nn_food:refreshMenu', function()
    if currentRestaurant then
        Lib.Callback('nn_food:getMenuData', function(menuData)
            SendNUIMessage({
                action = 'updateMenu',
                data = menuData
            })
        end, currentRestaurant)
    end
end)

RegisterNetEvent('nn_food:refreshPOS', function()
    if currentRestaurant then
        Lib.Callback('nn_food:getPOSSystems', function(posSystems)
            SendNUIMessage({
                action = 'updatePOS',
                data = posSystems
            })
        end, currentRestaurant)
    end
end)

RegisterNetEvent('nn_food:tvDisplayCreated', function(tvData)
    if not tvData then
        return
    end
    SpawnKitchenTV(tvData)
end)

-- Place TV display (start placement mode)
RegisterNUICallback('placeTVDisplay', function(data, cb)
    if not data.tvData or not currentRestaurant then 
        return cb('error') 
    end
    
    local tvData = data.tvData

    CloseManagementPanel()
    
    currentTVPlacementData = tvData
    StartTVPlacement()
    
    cb('ok')
end)

RegisterNUICallback('deleteTVDisplay', function(data, cb)
    if not data.id then return cb('error') end
    
    TriggerServerEvent('nn_food:deleteTVDisplay', data.id)
    cb('ok')
end)

RegisterNUICallback('updateTVDisplay', function(data, cb)
    if not data.id or not data.tvData then return cb('error') end
    
    TriggerServerEvent('nn_food:updateTVDisplay', data.id, data.tvData)
    cb('ok')
end)

RegisterNUICallback('updateOrderStatus', function(data, cb)
    if not data.orderId or not data.status or not data.restaurantId then 
        return cb('error') 
    end
    
    TriggerServerEvent('nn_food:updateOrderStatus', {
        orderId = data.orderId,
        status = data.status,
        restaurantId = data.restaurantId
    })
    
    cb('ok')
end)

function CreateKioskInteractions()
    Lib.Callback('nn_food:getKioskPositions', function(kiosks)
        for _, kiosk in pairs(kiosks) do
            if kiosk.position_x and kiosk.position_y and kiosk.position_z and (kiosk.is_active == 1 or kiosk.is_active == true) then
                local coords = vector3(kiosk.position_x, kiosk.position_y, kiosk.position_z)
                
                local interactionId = exports['is_interaction']:addInteractionCoords('kiosk_' .. kiosk.id, coords, {
                    checkVisibility = true,
                    showInVehicle = false,
                    distance = 2.0,
                    distanceText = 1.0,
                    offset = {
                        text = {x = 0.0, y = 0.0, z = 0.5},
                        target = {x = 0.0, y = 0.0, z = 0.3}
                    },
                    bone = nil,
                    options = {
                    {
                        name = "kiosk_" .. kiosk.id,
                        icon = "fa-solid fa-desktop",
                        label = T('use_kiosk'),
                        key = "E",
                        duration = 500,
                        onSelect = function()
                            OpenKiosk(kiosk.restaurant_id)
                        end
                        }
                    }
                })
                
                State.Interactions['kiosk_' .. kiosk.id] = interactionId
            end
        end
    end)
end

function OpenKiosk(restaurantId)
    Lib.Callback('nn_food:getKioskData', function(data)
        if not data then
            bridge.notification.show({
                message = 'Failed to load restaurant data',
                type = 'error'
            })
            return
        end
        
        TriggerScreenblurFadeIn(200)
        SetNuiFocus(true, true)
        SendTranslationsAndOpenUI({
            action = 'setVisibility',
            data = {
                page = 'kiosk',
                visible = true
            }
        })
        
        SendNUIMessage({
            action = 'setKioskData',
            data = {
                restaurantData = data.restaurant,
                menuData = data.menu
            }
        })
    end, restaurantId)
end

function CloseKiosk()
    SetNuiFocus(false, false)
    TriggerScreenblurFadeOut(200)
    SendNUIMessage({
        action = 'setVisibility',
        data = {
            visible = false
        }
    })
end

Citizen.CreateThread(function()
    Wait(2000) -- Wait for resource to fully load
    CreateKioskInteractions()
    CreatePOSInteractions()
end)

RegisterNetEvent('nn_food:refreshKiosks', function()
    CreateKioskInteractions()
end)

RegisterNetEvent('nn_food:removeCoordsInt', function(coords)
    exports['is_interaction']:removeCoords(coords)
end)

function CreatePOSInteractions()
    Lib.Callback('nn_food:getPOSPositions', function(posSystems)
        for _, pos in pairs(posSystems) do
            if pos.position_x and pos.position_y and pos.position_z and (pos.is_active == 1 or pos.is_active == true) then
                -- Only create interaction if player is an employee of this restaurant
                if IsPlayerEmployee(pos.restaurant_id) then
                    local coords = vector3(pos.position_x, pos.position_y, pos.position_z)
                    
                    local interactionId = exports['is_interaction']:addInteractionCoords('pos_' .. pos.id, coords, {
                        checkVisibility = true,
                        showInVehicle = false,
                        distance = 2.0,
                        distanceText = 1.0,
                        offset = {
                            text = {x = 0.0, y = 0.0, z = 0.5},
                            target = {x = 0.0, y = 0.0, z = 0.3}
                        },
                        bone = nil,
                        options = {
                            {
                                name = "pos_" .. pos.id,
                                icon = "fa-solid fa-cash-register",
                                label = T('use_pos_terminal'),
                                key = "E",
                                duration = 500,
                                onSelect = function()
                                    -- Final check before opening (using cached data)
                                    if IsPlayerEmployee(pos.restaurant_id) then
                                        OpenPOS(pos.restaurant_id)
                                    else
                                        ShowEmployeeAccessError()
                                    end
                                end
                            }
                        }
                    })
                    
                    State.Interactions['pos_' .. pos.id] = interactionId
                end
            end
        end
    end)
end

function OpenPOS(restaurantId)
    Lib.Callback('nn_food:getPOSData', function(data)
        if not data then
            bridge.notification.show({
                message = 'Failed to load restaurant data',
                type = 'error'
            })
            return
        end
        
        TriggerScreenblurFadeIn(200)
        SetNuiFocus(true, true)
        SendTranslationsAndOpenUI({
            action = 'setVisibility',
            data = {
                page = 'pos',
                visible = true
            }
        })

        Lib.Callback('nn_food:getPOSOrders', function(orderData)
            SendNUIMessage({
                action = 'setPOSOrders',
                data = {
                    orders = orderData.orders
                }
            })
        end, restaurantId)
        
        SendNUIMessage({
            action = 'setPOSData',
            data = {
                restaurantData = data.restaurant,
                menuData = data.menu,
                restaurantId = restaurantId
            }
        })
    end, restaurantId)
end

function ClosePOS()
    SetNuiFocus(false, false)
    TriggerScreenblurFadeOut(200)
    SendNUIMessage({
        action = 'setVisibility',
        data = {
            visible = false
        }
    })
end

RegisterNetEvent('nn_food:refreshPOSInteractions', function()
    for posId, interactionId in pairs(State.Interactions) do
        if string.find(posId, "pos_") then
            exports['is_interaction']:RemoveInteraction(interactionId)
            State.Interactions[posId] = nil
        end
    end
    
    CreatePOSInteractions()
end)

RegisterNUICallback('placeKioskOrder', function(data, cb)
    TriggerServerEvent('nn_food:placeKioskOrder', data)
    CloseKiosk()
    cb('ok')
end)

RegisterNUICallback('closeKiosk', function(data, cb)
    CloseKiosk()
    cb('ok')
end)

RegisterNUICallback('processPOSOrder', function(data, cb)
    TriggerServerEvent('nn_food:processPOSOrder', data)
    cb('ok')
end)

RegisterNUICallback('clearCancelledOrder', function(data, cb)
    Lib.Callback('nn_food:clearCancelledOrder', function(result)
        cb(result)
    end, data)
end)

RegisterNUICallback('requestPOSOrders', function(data, cb)
    Lib.Callback('nn_food:getPOSOrders', function(orderData)
        cb(orderData)
    end, data.restaurantId)
end)

RegisterNUICallback('sendEmployeeInvitation', function(data, cb)
    TriggerServerEvent('nn_food:sendEmployeeInvitation', data)
    cb('ok')
end)

RegisterNUICallback('closePOS', function(data, cb)
    ClosePOS()
    cb('ok')
end)

RegisterNUICallback('closeManagement', function(data, cb)
    CloseManagementPanel()
    cb('ok')
end)

RegisterNUICallback('closeShop', function(data, cb)
    CloseShopPanel()
    cb('ok')
end)

RegisterNetEvent('nn_food:refreshEmployees', function()
    if managementOpen and currentRestaurant then
        Lib.Callback('nn_food:getEmployees', function(employees)
            SendNUIMessage({
                action = 'updateEmployees',
                data = employees
            })
        end, currentRestaurant)
    end
end)

RegisterNetEvent('nn_food:refreshRecipes', function()
    if managementOpen and currentRestaurant then
        Lib.Callback('nn_food:getRecipes', function(recipes)
            SendNUIMessage({
                action = 'updateRecipes',
                data = recipes
            })
        end, currentRestaurant)
    end
end)

RegisterNetEvent('nn_food:refreshMenu', function()
    if managementOpen and currentRestaurant then
        Lib.Callback('nn_food:getMenuData', function(menuData)
            SendNUIMessage({
                action = 'updateMenu',
                data = menuData
            })
        end, currentRestaurant)
    end
end)

RegisterNetEvent('nn_food:refreshPOS', function()
    if managementOpen and currentRestaurant then
        Lib.Callback('nn_food:getPOSSystems', function(posSystems)
            SendNUIMessage({
                action = 'updatePOS',
                data = posSystems
            })
        end, currentRestaurant)
    end
end)

RegisterNetEvent('nn_food:refreshTVs', function()
    if managementOpen and currentRestaurant then
        Lib.Callback('nn_food:getTVDisplays', function(tvDisplays)
            SendNUIMessage({
                action = 'updateTVDisplays',
                data = tvDisplays
            })
        end, currentRestaurant)
    end
    
    LoadRestaurantTVs(currentRestaurant or 1)
end)

RegisterNetEvent('nn_food:refreshCookingItems', function()
    if managementOpen then
        Lib.Callback('nn_food:getCookingItems', function(cookingItems)
            SendNUIMessage({
                action = 'updateCookingItems',
                data = cookingItems
            })
        end)
    end
end)

-- Event to refresh POS orders when a new order is created
RegisterNetEvent('nn_food:refreshPOSOrders', function(restaurantId)
    -- Check if player is an employee of this restaurant
    if IsPlayerEmployee(restaurantId) then
        Lib.Callback('nn_food:getPOSOrders', function(orderData)
            SendNUIMessage({
                action = 'setPOSOrders',
                data = {
                    orders = orderData.orders
                }
            })
        end, restaurantId)
    end
end)

-- Handle finance data updates from server
RegisterNetEvent('nn_food:updateFinanceData')
AddEventHandler('nn_food:updateFinanceData', function(financeData)
    SendNUIMessage({
        action = 'updateFinanceData',
        data = financeData
    })
end)

-- Check for pending salaries when player spawns
RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    -- Wait a bit for everything to load
    SetTimeout(5000, function()
        TriggerServerEvent('nn_food:checkPendingSalaries')
    end)
end)

-- Also check when player spawns after death
RegisterNetEvent('QBCore:Client:OnPlayerSpawn')
AddEventHandler('QBCore:Client:OnPlayerSpawn', function()
    SetTimeout(2000, function()
        TriggerServerEvent('nn_food:checkPendingSalaries')
    end)
end)

-- On esx loaded
RegisterNetEvent('esx:playerLoaded', function()
    SetTimeout(2000, function()
        TriggerServerEvent('nn_food:checkPendingSalaries')
    end)
end)

-- Command for players to check pending salaries
if Config.devMode then
    RegisterCommand('checksalary', function(source, args, rawCommand)
        TriggerServerEvent('nn_food:checkPendingSalaries')
    end, false)
end
-- Finance NUI Callbacks
RegisterNUICallback('getFinanceData', function(data, cb)
    Lib.Callback('nn_food:getFinanceData', function(financeData)
        cb(financeData)
    end)
end)

RegisterNUICallback('withdrawMoney', function(data, cb)
    TriggerServerEvent('nn_food:withdrawMoney', data)
    cb('ok')
end)

RegisterNUICallback('depositMoney', function(data, cb)
    TriggerServerEvent('nn_food:depositMoney', data)
    cb('ok')
end)

RegisterNUICallback('paySalaries', function(data, cb)
    TriggerServerEvent('nn_food:paySalaries', data)
    cb('ok')
end)

RegisterNUICallback('toggleNPCOrdering', function(data, cb)
    if not currentRestaurant then return cb('error') end
    
    TriggerServerEvent('nn_food:toggleNPCOrdering', currentRestaurant, data.enabled)
    cb('ok')
end)

RegisterNUICallback('getWaitingSpaceStatus', function(data, cb)
    if not currentRestaurant then return cb('error') end
    
    Lib.Callback('nn_food:getWaitingSpaceStatus', function(status)
        cb(status)
    end, currentRestaurant)
end)
-- Handle employee invitation received
RegisterNetEvent('nn_food:receiveEmployeeInvitation', function(invitationData)
    local src = source
    
    -- Show notification to the player
    bridge.notification.show({
        message = 'You have received an employee invitation from ' .. invitationData.inviterName .. ' for ' .. invitationData.restaurantName .. '! Use /acceptinvite to accept or /declineinvite to decline.',
        type = 'info',
        duration = 10000
    })
end)

-- Handle NPC ordering state updates from server
RegisterNetEvent('nn_food:updateNPCOrderingState', function(npcState)
    if managementOpen then
        SendNUIMessage({
            action = 'npcOrderingStateUpdate',
            data = npcState
        })
    end
end)
