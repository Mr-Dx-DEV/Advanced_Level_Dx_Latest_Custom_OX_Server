-- Lib is already defined in lib/lib.lua which loads before this file
local attachedBaskets = {}
local attachedSpatulas = {}


function table_keys(t)
    local keys = {}
    for k, v in pairs(t) do
        table.insert(keys, k)
    end
    return keys
end

AddEventHandler('playerDropped', function(reason)
    local source = source
    
    if attachedBaskets[source] then
        attachedBaskets[source] = nil
    end
    
    if attachedSpatulas[source] then
        attachedSpatulas[source] = nil
    end
    
    for _, fryer in pairs(State.Fryers) do
        for slotId, basket in pairs(fryer.fryerBaskets) do
            if basket.takenByPlayer == source then
                basket.takenByPlayer = nil
                TriggerClientEvent("nn_cooking:refreshFryer", -1, fryer)
            end
        end
    end
end)

Lib.registerCallback('nn_cooking:hasFries', function(source, cb)
    for k,v in pairs(Config.FriedModels) do
        if bridge.inventory.hasItem(source, v.item, v.count) then
            cb(v.item)
            return
        end
    end
    cb(false)
end)

Lib.registerCallback('nn_cooking:hasMeat', function(source, cb)
   for k,v in pairs(Config.MeatModels) do
        if bridge.inventory.hasItem(source, v.item, 1) then
            cb(v.item)
            return
        end
   end
   cb(false)
end)

fryerBasketsOffsets = {
    outside = {
        {x = 0.42, y = 0.24, z = 1.2, w = 180.0},
        {x = 0.0, y = 0.24, z = 1.2, w = 180.0},
        {x = -0.42, y = 0.24, z = 1.2, w = 180.0},
    },
    inside = {
        {x = 0.42, y = -0.05, z = 0.85, w = 180.0},
        {x = 0.0, y = -0.05, z = 0.85, w = 180.0},
        {x = -0.42, y = -0.05, z = 0.85, w = 180.0},
    }
}

local oilOffsets = {
    {x = 0.42, y = -0.05, z = 0.85, w = 180.0},
    {x = 0.0, y = -0.05, z = 0.85, w = 180.0},
    {x = -0.42, y = -0.05, z = 0.85, w = 180.0},
}

function RefreshFriesPlateObjects(friesPlate)
    if friesPlate.fries then
        for k,v in pairs(friesPlate.fries) do
            if v.count and v.count > 0 then
                local cfg = Config.Restaurants[friesPlate.restaurantName].FriesPlates.plates[friesPlate.cfgPlateIndex].friesCoords[k]
                if cfg then
                    -- Calculate relative coordinates based on plate position
                    local plateCoords = friesPlate.coords
                    local plateRotation = friesPlate.rotation
                    
                    -- Calculate offset from plate position
                    local offsetX = cfg.coords.x - Config.Restaurants[friesPlate.restaurantName].FriesPlates.plates[friesPlate.cfgPlateIndex].plateCoords.coords.x
                    local offsetY = cfg.coords.y - Config.Restaurants[friesPlate.restaurantName].FriesPlates.plates[friesPlate.cfgPlateIndex].plateCoords.coords.y
                    local offsetZ = cfg.coords.z - Config.Restaurants[friesPlate.restaurantName].FriesPlates.plates[friesPlate.cfgPlateIndex].plateCoords.coords.z
                    
                    -- Apply rotation to offset
                    local rotatedOffsetX = offsetX * math.cos(math.rad(plateRotation.z)) - offsetY * math.sin(math.rad(plateRotation.z))
                    local rotatedOffsetY = offsetX * math.sin(math.rad(plateRotation.z)) + offsetY * math.cos(math.rad(plateRotation.z))
                    
                    local coords = vector3(
                        plateCoords.x + rotatedOffsetX,
                        plateCoords.y + rotatedOffsetY,
                        plateCoords.z + offsetZ + 0.02
                    )
                    local rotation = vector3(cfg.rotation.x, cfg.rotation.y, cfg.rotation.z + plateRotation.z)
                    -- Broadcast to all clients to spawn the fries
                    TriggerClientEvent('nn_cooking:spawnPlateFries', -1, friesPlate.friesPlateIndex, k, coords, rotation)
                    
                    -- Update server state
                    friesPlate.fries[k].friesObject = nil -- No longer stored as network ID
                    friesPlate.fries[k].coords = coords
                    friesPlate.fries[k].rotation = rotation
                end
            end
        end
    end

    if friesPlate.meat then
        local meatCount = 0
        for k,v in pairs(friesPlate.meat) do
            for m, d in pairs(v) do
                if d.count and d.count > 0 then
                    local cfg = Config.Restaurants[friesPlate.restaurantName].FriesPlates.plates[friesPlate.cfgPlateIndex].meatCoords[d.meatItem]
                    if cfg then
                        meatCount = meatCount + 1
                        if not d.meatObject then
                            -- Calculate relative coordinates based on plate position
                            local plateCoords = friesPlate.coords
                            local plateRotation = friesPlate.rotation
                            
                            -- Calculate offset from plate position
                            local offsetX = cfg.coords.x - Config.Restaurants[friesPlate.restaurantName].FriesPlates.plates[friesPlate.cfgPlateIndex].plateCoords.coords.x
                            local offsetY = cfg.coords.y - Config.Restaurants[friesPlate.restaurantName].FriesPlates.plates[friesPlate.cfgPlateIndex].plateCoords.coords.y
                            local offsetZ = cfg.coords.z - Config.Restaurants[friesPlate.restaurantName].FriesPlates.plates[friesPlate.cfgPlateIndex].plateCoords.coords.z
                            
                            -- Apply rotation to offset
                            local rotatedOffsetX = offsetX * math.cos(math.rad(plateRotation.z)) - offsetY * math.sin(math.rad(plateRotation.z))
                            local rotatedOffsetY = offsetX * math.sin(math.rad(plateRotation.z)) + offsetY * math.cos(math.rad(plateRotation.z))
                            
                            local zOffset = meatCount == 1 and 0.08 or (0.08 + Config.MeatModels[d.meatItem].zOffset * meatCount) - 0.02
                            local coords = vector3(
                                plateCoords.x + rotatedOffsetX,
                                plateCoords.y + rotatedOffsetY,
                                plateCoords.z + offsetZ + zOffset
                            )
                            local rotation = vector3(cfg.rotation.x, cfg.rotation.y, cfg.rotation.z + plateRotation.z)
                            
                            -- Broadcast to all clients to spawn the meat
                            TriggerClientEvent('nn_cooking:spawnPlateMeat', -1, friesPlate.friesPlateIndex, d.meatItem, coords, rotation, m)
                            
                            -- Update server state
                            d.meatObject = nil -- No longer stored as network ID
                            d.coords = coords
                            d.rotation = rotation
                        end
                    end
                end
            end
        end
    end
end

RegisterNetEvent("nn_cooking:requestKitchenInts", function(restaurantId)
    local source = source
    local restaurant = GetClosestRestaurant(restaurantId)
    for k, v in pairs(State.Fryers) do
        if v.restaurantName == restaurant then
            TriggerClientEvent('nn_cooking:setupFryerInteractions', source, v)
        end
    end
    Wait(200)
    for k, v in pairs(State.FriesPlates) do
        if v.restaurantName == restaurant then
            TriggerClientEvent('nn_cooking:setupFriesPlateInteractions', source, v)
        end
    end
    Wait(200)
    for k, v in pairs(State.Spatulas) do
        if v.restaurantName == restaurant then
            -- Create spatula data with spatulaIndex
            local spatulaData = {
                spatulaIndex = k,
                coords = v.coords,
                rotation = v.rotation,
                propModel = v.propModel,
                restaurantName = v.restaurantName,
                localObjectIndex = v.localObjectIndex
            }
            TriggerClientEvent('nn_cooking:setupSpatulaInteractions', source, spatulaData)
        end
    end
    Wait(200)
    for k, v in pairs(State.TrashCans) do
        if v.restaurantName == restaurant then
            TriggerClientEvent('nn_cooking:setupTrashCanInteractions', source, v)
        end
    end
    Wait(200)
    for k, v in pairs(State.Fridges) do
        if v.restaurantName == restaurant then
            TriggerClientEvent('nn_cooking:setupFridgeInteractions', source, v)
        end
    end

    Wait(200)
    for k, v in pairs(State.DrinksMachines) do
        if v.restaurantName == restaurant then
            TriggerClientEvent('nn_cooking:setupDrinksMachineInteractions', source, v)
        end
    end
end)

RegisterNetEvent("nn_cooking:requestGrillInts", function(restaurantId)
    local source = source
    local restaurant = GetClosestRestaurant(restaurantId)
    if not restaurant then return end
    for k,v in pairs(State.Grills) do
        if v.restaurantName == restaurant then
            TriggerClientEvent('nn_cooking:setupGrillInteractions', source, v)
        end
    end
end)

function SetupBaskets(fryerIndex, mode)
        local fryer = State.Fryers[fryerIndex]
    
    for z, c in pairs(fryerBasketsOffsets[mode]) do
        -- Calculate coords relative to fryer position
        local fryerCoords = fryer.coords
        local fryerRotation = fryer.rotation
        
        -- Calculate offset from fryer position
        local offsetX = c.x * math.cos(math.rad(fryerRotation.z)) - c.y * math.sin(math.rad(fryerRotation.z))
        local offsetY = c.x * math.sin(math.rad(fryerRotation.z)) + c.y * math.cos(math.rad(fryerRotation.z))
        
        local coords = vector3(
            fryerCoords.x + offsetX,
            fryerCoords.y + offsetY,
            fryerCoords.z + c.z + 0.04
        )
        local finalRotation = vector3(fryerRotation.x, fryerRotation.y, fryerRotation.z + c.w)
        
        -- Broadcast to all clients to spawn the basket
        TriggerClientEvent('nn_cooking:spawnFryerBasket', -1, fryerIndex, z, coords, finalRotation, mode == 'inside')
        
        -- Update server state
            State.Fryers[fryerIndex].fryerBaskets[z] = {
            basketObject = nil, -- No longer stored as network ID
            insideFryer = mode == 'inside',
            takenByPlayer = nil,
            coords = coords,
            rotation = finalRotation
        }
    end
end

function AddOil(fryerIndex, source)
    local fryer = State.Fryers[fryerIndex]

    if not bridge.inventory.hasItem(source, 'cooking_oil', 1) then
        return
    end
    bridge.inventory.removeItem(source, 'cooking_oil', 1)
    
    for z, c in pairs(oilOffsets) do
        if not fryer.oilSlots[z] then
            -- Calculate coords relative to fryer position
            local fryerCoords = fryer.coords
            local fryerRotation = fryer.rotation
            
            -- Calculate offset from fryer position
            local offsetX = c.x * math.cos(math.rad(fryerRotation.z)) - c.y * math.sin(math.rad(fryerRotation.z))
            local offsetY = c.x * math.sin(math.rad(fryerRotation.z)) + c.y * math.cos(math.rad(fryerRotation.z))
            
            local coords = vector3(
                fryerCoords.x + offsetX,
                fryerCoords.y + offsetY,
                fryerCoords.z + c.z + 0.04
            )
            local finalRotation = vector3(fryerRotation.x, 180.0, fryerRotation.z + c.w)
            
            -- Broadcast to all clients to spawn the oil
            TriggerClientEvent('nn_cooking:spawnFryerOil', -1, fryerIndex, z, coords, finalRotation)
            
            -- Update server state
            fryer.oilSlots[z] = {
                coords = coords,
                rotation = finalRotation
            }
            
            CheckStartCooking(fryerIndex, z)
            TriggerClientEvent("nn_cooking:refreshFryer", -1, fryer)
            return
        end
    end

    bridge.notification.show(source, {
                    message = T('no_oil_slots_available'),
        style = "error"
    })
end

function AddBasket(fryerIndex, source)
    local source = source
    local fryer = State.Fryers[fryerIndex]
    local basketModel = GetHashKey('sn_basket')

    if attachedBaskets[source] then
        if attachedBaskets[source].filled then
            bridge.notification.show(source, {
                message = T('empty_basket_first'),
                style = "error"
            })
            return
        end

        if attachedBaskets[source].fryerIndex ~= fryerIndex then
            bridge.notification.show(source, {
                message = T('put_basket_in_correct_fryer'),
                style = "error"
            })
            return
        end

        local fryerIndex = attachedBaskets[source].fryerIndex
        local slot = attachedBaskets[source].slot

        local basket = State.Fryers[fryerIndex].fryerBaskets[slot]
        if not basket then return end

        -- Remove the basket from all clients
        BroadcastPropRemove(GeneratePropId('fryer_basket', fryerIndex, slot))

        State.Fryers[fryerIndex].fries[slot] = nil
        attachedBaskets[source] = nil
    end

    for id, c in pairs(fryer.fryerBaskets) do
        if not c.insideFryer and not c.takenByPlayer then
            -- Remove the basket from all clients
            BroadcastPropRemove(GeneratePropId('fryer_basket', fryerIndex, id))
            
            local offset = fryerBasketsOffsets.inside[id]
            
            -- Calculate coords relative to fryer position
            local fryerCoords = fryer.coords
            local fryerRotation = fryer.rotation
            
            -- Calculate offset from fryer position
            local offsetX = offset.x * math.cos(math.rad(fryerRotation.z)) - offset.y * math.sin(math.rad(fryerRotation.z))
            local offsetY = offset.x * math.sin(math.rad(fryerRotation.z)) + offset.y * math.cos(math.rad(fryerRotation.z))
            
            local coords = vector3(
                fryerCoords.x + offsetX,
                fryerCoords.y + offsetY,
                fryerCoords.z + offset.z + 0.06
            )
            local finalRotation = vector3(fryerRotation.x, fryerRotation.y, fryerRotation.z + offset.w)
            
            -- Broadcast to all clients to spawn the basket inside
            TriggerClientEvent('nn_cooking:spawnFryerBasket', -1, fryerIndex, id, coords, finalRotation, true)
            
            -- Update server state
            fryer.fryerBaskets[id] = {
                basketObject = nil, -- No longer stored as network ID
                insideFryer = true,
                takenByPlayer = nil,
                coords = coords,
                rotation = finalRotation
            }
            CheckStartCooking(fryerIndex, id)
            TriggerClientEvent("nn_cooking:refreshFryer", -1, fryer)
            return
        end
    end

    bridge.notification.show(source, {
                    message = T('no_basket_slots_available'),
        style = "error"
    })
end 

function AddFries(fryerIndex, item, bagItem, source)
    local fryer = State.Fryers[fryerIndex]
    if not Config.FriedModels[item] then return end
    local friesOffsets = Config.FriedModels[item].fryerOffsets.inside

    for z, c in pairs(friesOffsets) do
        if not fryer.fries[z] then
            local oil = fryer.oilSlots[z]
            local basket = fryer.fryerBaskets[z]
            if not oil or not basket or not basket.insideFryer then
                bridge.notification.show(source, {
                    message = T('put_basket_oil_in_fryer_first'),
                    style = 'error'
                })
                return
            end

            -- Calculate coords relative to fryer position
            local fryerCoords = fryer.coords
            local fryerRotation = fryer.rotation
            
            -- Calculate offset from fryer position
            local offsetX = c.x * math.cos(math.rad(fryerRotation.z)) - c.y * math.sin(math.rad(fryerRotation.z))
            local offsetY = c.x * math.sin(math.rad(fryerRotation.z)) + c.y * math.cos(math.rad(fryerRotation.z))
            
            local coords = vector3(
                fryerCoords.x + offsetX,
                fryerCoords.y + offsetY,
                fryerCoords.z + c.z + 0.05
            )
            local finalRotation = vector3(90.0, fryerRotation.y, fryerRotation.z + c.w)
            
            -- Broadcast to all clients to spawn the fries
            TriggerClientEvent('nn_cooking:spawnFries', -1, fryerIndex, z, item, coords, finalRotation)
            
            -- Update server state
            State.Fryers[fryerIndex].fries[z] = {
                friesObject = nil, -- No longer stored as network ID
                friesItem = item,
                coords = coords,
                rotation = finalRotation
            }
            
            if not bridge.inventory.hasItem(source, bagItem, 1) then
                return
            end
            bridge.inventory.removeItem(source, bagItem, 1)

            CheckStartCooking(fryerIndex, z)
            TriggerClientEvent("nn_cooking:refreshFryer", -1, State.Fryers[fryerIndex])
            return
        end
    end
end

function CheckStartCooking(fryerIndex, slot)
    local fryer = State.Fryers[fryerIndex]
    local oil = fryer.oilSlots[slot]
    local basket = fryer.fryerBaskets[slot]
    local fries = fryer.fries[slot]

    if not oil then
        return false
    end

    if not fryer.fryerBaskets[slot] or not fryer.fryerBaskets[slot].insideFryer then
        return false
    end

    if not fries or not fries.friesItem then
        return false
    end

    Citizen.CreateThread(function()
        local basket = fryer.fryerBaskets[slot]
        local coords = basket.coords
        coords = vector3(coords.x, coords.y, coords.z + 0.4)
        exports['xsound']:PlayUrlPos(-1, 'fryer' .. fryerIndex .. slot, Config.SoundEffects.fryer.url, Config.SoundEffects.fryer.volume, coords, true) 
        
        TriggerClientEvent('nn_food:startTimer', -1, coords, Config.FriedModels[fries.friesItem].duration, {
            fryerIndex = fryerIndex,
            slot = slot,
            stationType = 'fryer'
        })
        
        TriggerClientEvent('nn_cooking:startFryerParticle', -1, fryerIndex, slot)
        fryer.fryerBaskets[slot].cooking = true
    end)
end

RegisterNetEvent('nn_cooking:addOil', function(fryerIndex)
    local source = source
    
    local playerRestaurant = GetPlayerRestaurant(source)
    if not playerRestaurant then
        bridge.notification.show(source, {
            message = T('access_denied_not_employee'),
            type = 'error'
        })
        return
    end
    
    AddOil(fryerIndex, source)
end)

RegisterNetEvent('nn_cooking:addBasket', function(fryerIndex)
    local source = source
    
    local playerRestaurant = GetPlayerRestaurant(source)
    if not playerRestaurant then
        bridge.notification.show(source, {
            message = T('access_denied_not_employee'),
            type = 'error'
        })
        return
    end
    
    AddBasket(fryerIndex, source)
end)

RegisterNetEvent('nn_cooking:addFries', function(fryerIndex, item, bagItem)
    local source = source
    
    local playerRestaurant = GetPlayerRestaurant(source)
    if not playerRestaurant then
        bridge.notification.show(source, {
            message = T('access_denied_not_employee'),
            type = 'error'
        })
        return
    end
    
    AddFries(fryerIndex, item, bagItem, source)
end)

RegisterNetEvent('nn_cooking:removeBasket', function(fryerIndex, slot)
    local source = source
    
    local playerRestaurant = GetPlayerRestaurant(source)
    if not playerRestaurant then
        return
    end
    
    local fryer = State.Fryers[fryerIndex]
    local basket = fryer.fryerBaskets[slot]
    if not basket then return end
    
    -- Remove basket prop from all clients
    local propId = GeneratePropId('fryer_basket', fryerIndex, slot)
    BroadcastPropRemove(propId)
    
    -- Store fries data before removing it
    local friesData = nil
    if fryer.fries[slot] then
        local friesPropId = GeneratePropId('fries', fryerIndex, slot)
        BroadcastPropRemove(friesPropId)
        friesData = fryer.fries[slot] -- Store the fries data
        fryer.fries[slot] = nil
    end
    
    basket.insideFryer = false
    basket.takenByPlayer = source
    
    attachedBaskets[source] = {
        fryerIndex = fryerIndex,
        slot = slot,
        filled = true,
        friesData = friesData -- Store the fries data for later use
    }

    TriggerClientEvent("nn_cooking:refreshFryer", -1, fryer)
end)

RegisterNetEvent('nn_cooking:depositFries', function(friesPlateIndex, item)
    local source = source

    local playerRestaurant = GetPlayerRestaurant(source)
    if not playerRestaurant then
        return
    end
    if not attachedBaskets[source] then return end
    local fryerIndex = attachedBaskets[source].fryerIndex
    local slot = attachedBaskets[source].slot

    local fries = attachedBaskets[source].friesData
    if not fries then return end
    
    local friesPlate = State.FriesPlates[friesPlateIndex]
    if not friesPlate then return end

    if friesPlate.meat then
        for k,v in pairs(friesPlate.meat) do
            if v.count > 0 then
                bridge.notification.show(source, {
                    message = "This plate already contains meat. Use an empty plate.",
                    style = "error"
                })
                return
            end
        end
    end
    
    if friesPlate.fries then
        for k,v in pairs(friesPlate.fries) do
            if v.count > 0 and k ~= item then
                bridge.notification.show(source, {
                    message = "This plate already contains " .. Config.FriedModels[k].label .. ". Use an empty plate.",
                    style = "error"
                })
                return
            end
        end
    end
    
    -- Remove fries prop from all clients
    local friesPropId = GeneratePropId('fries', fryerIndex, slot)
    BroadcastPropRemove(friesPropId)
        attachedBaskets[source].filled = false

    if friesPlate.fries[item] then
        friesPlate.fries[item].count = friesPlate.fries[item].count + Config.FriedModels[item].count
        TriggerClientEvent("nn_cooking:refreshFriesPlate", -1, friesPlate)
        return
    end

    friesPlate.fries[item] = {
        friesItem = item,
        count = Config.FriedModels[item].count
    }
    RefreshFriesPlateObjects(friesPlate)
    TriggerClientEvent("nn_cooking:refreshFriesPlate", -1, friesPlate)
    
    attachedBaskets[source] = nil
end)

RegisterNetEvent('nn_cooking:recreateEmptyBasket', function(fryerIndex, slot)
    local source = source
    
    local playerRestaurant = GetPlayerRestaurant(source)
    if not playerRestaurant then
        return
    end
    
    local fryer = State.Fryers[fryerIndex]
    if not fryer then return end
    attachedBaskets[source] = nil
    
    local offset = fryerBasketsOffsets.outside[slot]
    
    -- Calculate coords relative to fryer position
    local fryerCoords = fryer.coords
    local fryerRotation = fryer.rotation
    
    -- Calculate offset from fryer position
    local offsetX = offset.x * math.cos(math.rad(fryerRotation.z)) - offset.y * math.sin(math.rad(fryerRotation.z))
    local offsetY = offset.x * math.sin(math.rad(fryerRotation.z)) + offset.y * math.cos(math.rad(fryerRotation.z))
    
    local coords = vector3(
        fryerCoords.x + offsetX,
        fryerCoords.y + offsetY,
        fryerCoords.z + offset.z
    )
    local finalRotation = vector3(fryerRotation.x, fryerRotation.y, fryerRotation.z + offset.w)
    
    -- Broadcast to all clients to spawn the basket
    TriggerClientEvent('nn_cooking:spawnFryerBasket', -1, fryerIndex, slot, coords, finalRotation, false)
    
    -- Update server state
    fryer.fryerBaskets[slot] = {
        basketObject = nil, -- No longer stored as network ID
        insideFryer = false,
        takenByPlayer = nil,
        coords = coords,
        rotation = finalRotation
    }
    
    fryer.fries[slot] = nil
    
    TriggerClientEvent("nn_cooking:refreshFryer", -1, fryer)
end)

RegisterNetEvent('nn_cooking:hideSpatula', function(spatulaIndex)
    local source = source
    
    local playerRestaurant = GetPlayerRestaurant(source)
    if not playerRestaurant then
        return
    end
    
    local spatula = State.Spatulas[spatulaIndex]
    if not spatula then return end
    
    attachedSpatulas[source] = {
        spatulaIndex = spatulaIndex
    }
    
    -- Remove base spatula prop from all clients
    local propId = GeneratePropId('base_spatula', spatulaIndex)
    BroadcastPropRemove(propId)
end)

RegisterNetEvent('nn_cooking:recreateSpatula', function(spatulaIndex)
    local source = source
    
    local playerRestaurant = GetPlayerRestaurant(source)
    if not playerRestaurant then
        return
    end
    if not attachedSpatulas[source] or attachedSpatulas[source].spatulaIndex ~= spatulaIndex then
        bridge.notification.show(source, {
            message = "You can only put back spatulas you originally took.",
            style = "error"
        })
        return
    end
    
    local spatula = State.Spatulas[spatulaIndex]
    if not spatula then return end
    
    local restaurantName = spatula.restaurantName
    local restaurant = Config.Restaurants[restaurantName]
    
    if restaurant and restaurant.Spatulas and restaurant.Spatulas.objects then
        local localObjectIndex = spatula.localObjectIndex
        local spatulaConfig = restaurant.Spatulas.objects[localObjectIndex]
        
        if spatulaConfig then
            local coords = vector3(spatulaConfig.coords.x, spatulaConfig.coords.y, spatulaConfig.coords.z)
            local rotation = vector3(spatulaConfig.rotation.x, spatulaConfig.rotation.y, spatulaConfig.rotation.z)
            
            -- Broadcast to all clients to spawn the base spatula
            TriggerClientEvent('nn_cooking:spawnBaseSpatula', -1, spatulaIndex, spatula.propModel, coords, rotation)
            
            -- Update server state
            spatula.spatulaObject = nil -- No longer stored as network ID
            spatula.coords = coords
            spatula.rotation = rotation
            
            -- Create spatula data with spatulaIndex
            local spatulaData = {
                spatulaIndex = spatulaIndex,
                coords = coords,
                rotation = rotation,
                propModel = spatula.propModel,
                restaurantName = spatula.restaurantName,
                localObjectIndex = spatula.localObjectIndex
            }
            
            TriggerClientEvent('nn_cooking:setupSpatulaInteractions', -1, spatulaData)
            
            attachedSpatulas[source] = nil
            return
        end
    end
    
    print('Failed to find spatula config for spatulaIndex:', spatulaIndex, 'restaurantName:', spatula.restaurantName, 'localObjectIndex:', spatula.localObjectIndex)
end)

RegisterNetEvent('nn_cooking:takeFries', function(friesPlateIndex, slot)
    local source = source

    local playerRestaurant = GetPlayerRestaurant(source)
    if not playerRestaurant then
        return
    end

    local friesPlate = State.FriesPlates[friesPlateIndex]
    if not friesPlate then return end

    local fries = friesPlate.fries[slot]
    if not fries then return end

    if fries.count > 0 then
        fries.count = fries.count - 1
        bridge.inventory.addItem(source, fries.friesItem, 1)
        TriggerClientEvent("nn_cooking:refreshFriesPlate", -1, friesPlate)
        
        if fries.count == 0 then
            -- Remove fries prop from all clients
            local propId = GeneratePropId('plate_fries', friesPlateIndex, slot)
            BroadcastPropRemove(propId)
            
            friesPlate.fries[slot] = nil
            TriggerClientEvent("nn_cooking:refreshFriesPlate", -1, friesPlate)
        end
    end
end)

RegisterNetEvent('nn_cooking:depositMeat', function(friesPlateIndex, item)
    local source = source

    local playerRestaurant = GetPlayerRestaurant(source)
    if not playerRestaurant then
        return
    end

    local friesPlate = State.FriesPlates[friesPlateIndex]
    if not friesPlate then return end

    if friesPlate.fries then
        for k,v in pairs(friesPlate.fries) do
            if v.count > 0 then
                bridge.notification.show(source, {
                    message = "This plate already contains fries. Use an empty plate.",
                    style = "error"
                })
                return
            end
        end
    end
    
    if friesPlate.meat then
        for k,v in pairs(friesPlate.meat) do
            for m, d in pairs(v) do
                if d.count > 0 and d.meatItem ~= item then
                    bridge.notification.show(source, {
                        message = "This plate already contains " .. Config.MeatModels[d.meatItem].label .. ". Use an empty plate.",
                        style = "error"
                    })
                    return
                end
            end
        end
    end

    -- Remove meat prop from all clients (the meatObjectId is no longer used since we're using client-side props)
    -- The client will handle removing the attached meat prop

    if friesPlate.meat[item] then
        friesPlate.meat[item][#friesPlate.meat[item] + 1] = {
            meatItem = item,
            count = 1,
            meatObject = nil
        }
        RefreshFriesPlateObjects(friesPlate)
        TriggerClientEvent("nn_cooking:refreshFriesPlate", -1, friesPlate)
        return
    end

    local cfg = Config.Restaurants[friesPlate.restaurantName].FriesPlates.plates[friesPlate.cfgPlateIndex].meatCoords[item]
    if not cfg then return end
    
    if not friesPlate.meat[item] then friesPlate.meat[item] = {} end
    friesPlate.meat[item][#friesPlate.meat[item] + 1] = {
        meatItem = item,
        count = 1,
        meatObject = nil
    }

    RefreshFriesPlateObjects(friesPlate)
    TriggerClientEvent("nn_cooking:refreshFriesPlate", -1, friesPlate)
end)

RegisterNetEvent('nn_cooking:takeMeat', function(friesPlateIndex, slot)
    local source = source

    local playerRestaurant = GetPlayerRestaurant(source)
    if not playerRestaurant then
        return
    end

    local friesPlate = State.FriesPlates[friesPlateIndex]
    if not friesPlate then return end

    local meat = friesPlate.meat[slot]
    if not meat then return end

    for m, d in pairs(meat) do
        bridge.inventory.addItem(source, Config.MeatModels[d.meatItem].cookedItem, 1)
        
        -- Remove meat prop from all clients
        local propId = GeneratePropId('plate_meat', friesPlateIndex, d.meatItem, m)
        BroadcastPropRemove(propId)
        
        table.remove(meat, m)
        TriggerClientEvent("nn_cooking:refreshFriesPlate", -1, friesPlate)
        return
    end
end)



RegisterNetEvent('nn_food:setTimerId', function(stationType, primaryIndex, slotIndex, slot, timerId)
    local source = source
    
    if stationType == 'fryer' then
        local fryer = State.Fryers[primaryIndex]
        if fryer and fryer.fryerBaskets[slotIndex] then
            fryer.fryerBaskets[slotIndex].timerId = timerId
        end
    elseif stationType == 'grill' then
        local grill = State.Grills[primaryIndex]
        if grill and grill.slots[slotIndex] and grill.slots[slotIndex][slot] then
            grill.slots[slotIndex][slot].timerId = timerId
        end
    end
end)

RegisterNetEvent('nn_food:stopTimer', function(data)
    local source = source
    if data.fryerIndex then
        local fryer = State.Fryers[data.fryerIndex]
        if not fryer then return end
        
        TriggerClientEvent('nn_food:stopTimer', -1, {
            fryerIndex = data.fryerIndex,
            slot = data.slot
        })
        
        exports['xsound']:Destroy(-1, 'fryer' .. data.fryerIndex .. data.slot)
    elseif data.grillIndex then
        local grill = State.Grills[data.grillIndex]
        if not grill then return end
        
        TriggerClientEvent('nn_food:stopTimer', -1, {
            grillIndex = data.grillIndex,
            slotIndex = data.slotIndex,
            slot = data.slot
        })
        
        exports['xsound']:Destroy(-1, 'grill' .. data.grillIndex .. data.slotIndex .. data.slot)
    end
end)

RegisterNetEvent('nn_food:setCookingState', function(data, state)
    local source = source
    if data.fryerIndex then
        local fryer = State.Fryers[data.fryerIndex]
        if not fryer then return end
        if state == 'perfect' and not fryer.fryerBaskets[data.slot].perfect then
            fryer.fryerBaskets[data.slot].perfect = true
        elseif state == 'burnt' and not fryer.fryerBaskets[data.slot].burnt then
            fryer.fryerBaskets[data.slot].burnt = true
        end
        TriggerClientEvent("nn_cooking:refreshFryer", -1, fryer)
    elseif data.grillIndex then
        local slot = State.Grills[data.grillIndex].slots[data.slotIndex][data.slot] or {}
        if not slot then return end
        if state == 'perfect' and not slot.perfect then
            slot.perfect = true
            if slot.coords then
                local restaurantName = State.Grills[data.grillIndex].restaurantName
                local coords = Config.Restaurants[restaurantName].Grills[data.slotIndex].grillCoords[slot.meatItem][data.slot].coords
                local rotation = Config.Restaurants[restaurantName].Grills[data.slotIndex].grillCoords[slot.meatItem][data.slot].rotation
                
                -- Remove old meat prop and spawn cooked meat
                local propId = GeneratePropId('grill_meat', data.grillIndex, data.slotIndex, data.slot)
                BroadcastPropRemove(propId)
                
                -- Broadcast to all clients to spawn the cooked meat
                TriggerClientEvent('nn_cooking:spawnGrillMeat', -1, data.grillIndex, data.slotIndex, data.slot, slot.meatItem, coords, rotation, 'perfect')
                
                -- Update server state
                slot.meatObject = nil -- No longer stored as network ID
                slot.coords = coords
                slot.rotation = rotation
                
                TriggerClientEvent("nn_cooking:refreshGrill", -1, State.Grills[data.grillIndex])
            end
        elseif state == 'burnt' and not slot.burnt then
            slot.burnt = true
            if slot.coords then
                local restaurantName = State.Grills[data.grillIndex].restaurantName
                local coords = Config.Restaurants[restaurantName].Grills[data.slotIndex].grillCoords[slot.meatItem][data.slot].coords
                local rotation = Config.Restaurants[restaurantName].Grills[data.slotIndex].grillCoords[slot.meatItem][data.slot].rotation
                
                -- Remove old meat prop and spawn burnt meat
                local propId = GeneratePropId('grill_meat', data.grillIndex, data.slotIndex, data.slot)
                BroadcastPropRemove(propId)
                
                -- Broadcast to all clients to spawn the burnt meat
                TriggerClientEvent('nn_cooking:spawnGrillMeat', -1, data.grillIndex, data.slotIndex, data.slot, slot.meatItem, coords, rotation, 'burnt')
                
                -- Update server state
                slot.meatObject = nil -- No longer stored as network ID
                slot.coords = coords
                slot.rotation = rotation

                TriggerClientEvent("nn_cooking:refreshGrill", -1, State.Grills[data.grillIndex])
            end
        end
        TriggerClientEvent("nn_cooking:refreshGrill", -1, State.Grills[data.grillIndex])
    end
end)

function AddMeat(grillIndex, item, source)
    local grill = State.Grills[grillIndex]
    if not grill then return end
    
    if not Config.Restaurants[grill.restaurantName] then
        print("Error: Restaurant configuration not found for:", grill.restaurantName)
        return
    end
    
    if not Config.Restaurants[grill.restaurantName].Grills then
        print("Error: Grill configuration not found for restaurant:", grill.restaurantName)
        return
    end
    
    if not Config.Restaurants[grill.restaurantName].Grills[grill.slotIndex] then
        print("Error: Grill slot configuration not found for slotIndex:", grill.slotIndex)
        return
    end
    
    if not Config.Restaurants[grill.restaurantName].Grills[grill.slotIndex].grillCoords then
        print("Error: Grill coordinates not found for slotIndex:", grill.slotIndex)
        return
    end
    
    if not Config.Restaurants[grill.restaurantName].Grills[grill.slotIndex].grillCoords[item] then
        print("Error: Grill coordinates not found for item:", item, "in slotIndex:", grill.slotIndex)
        return
    end
    
    if not grill.slots then
        grill.slots = {}
    end
    if not grill.slots[grill.slotIndex] then 
        grill.slots[grill.slotIndex] = {} 
    end
    
    local availableSlot = nil
    
    for z, c in pairs(Config.Restaurants[grill.restaurantName].Grills[grill.slotIndex].grillCoords[item]) do
        if not grill.slots[grill.slotIndex] or not grill.slots[grill.slotIndex][z] then
            availableSlot = z
            break
        end
    end
    
    if not availableSlot then
        bridge.notification.show(source, {
            message = "No available slots on this grill",
            style = "error"
        })
        return
    end
    
    local coords = Config.Restaurants[grill.restaurantName].Grills[grill.slotIndex].grillCoords[item][availableSlot].coords
    local rotation = Config.Restaurants[grill.restaurantName].Grills[grill.slotIndex].grillCoords[item][availableSlot].rotation
    local finalCoords = vector3(coords.x, coords.y, coords.z)
    
    TriggerClientEvent('nn_cooking:spawnGrillMeat', -1, grillIndex, grill.slotIndex, availableSlot, item, finalCoords, rotation, 'cooking')
    
    grill.slots[grill.slotIndex][availableSlot] = {
        meatObject = nil,
        meatItem = item,
        slotIndex = availableSlot,
        cooking = true,
        coords = finalCoords,
        rotation = rotation
    }
    
    if not item or not bridge.inventory.hasItem(source, item, 1) then
        return
    end
    bridge.inventory.removeItem(source, item, 1)
    TriggerClientEvent("nn_cooking:refreshGrill", -1, grill)

    Citizen.CreateThread(function()
        local coords = finalCoords
        coords = vector3(coords.x, coords.y, coords.z + 0.4)
        exports['xsound']:PlayUrlPos(-1, 'grill' .. grillIndex .. grill.slotIndex .. availableSlot, Config.SoundEffects.grill.url, Config.SoundEffects.grill.volume, coords, true) 
        
        TriggerClientEvent('nn_food:startTimer', -1, coords, Config.MeatModels[item].duration, {
            grillIndex = grillIndex,
            slotIndex = grill.slotIndex,
            slot = availableSlot,
            stationType = 'grill'
        })
        
        TriggerClientEvent('nn_cooking:startGrillParticle', -1, grillIndex)
    end)
end



RegisterNetEvent('nn_cooking:addMeat', function(grillIndex, item)
    local source = source
    local playerRestaurant = GetPlayerRestaurant(source)
    if not playerRestaurant then
        return
    end
    
    AddMeat(grillIndex, item, source)
end)

RegisterNetEvent('nn_cooking:removeMeat', function(grillIndex, slotIndex, slot)
    local source = source
    local grill = State.Grills[grillIndex]
    
    if not grill then 
        return 
    end
    
    if grill.slots and grill.slots[slotIndex] and grill.slots[slotIndex][slot] then
        local meatSlot = grill.slots[slotIndex][slot]
        
        -- Remove meat prop from all clients
        local propId = GeneratePropId('grill_meat', grillIndex, slotIndex, slot)
        BroadcastPropRemove(propId)
        
        grill.slots[slotIndex][slot] = nil
    end
    
    TriggerClientEvent("nn_cooking:refreshGrill", -1, grill)
end)

RegisterNetEvent('nn_cooking:throwBurntItem', function(trashIndex, itemType)
    local source = source
    
    local playerRestaurant = GetPlayerRestaurant(source)
    if not playerRestaurant then
        return
    end
    
    local trashCan = State.TrashCans[trashIndex]
    if not trashCan then return end
    
    if trashCan.currentItems >= trashCan.maxItems then
        bridge.notification.show(source, {
            message = "Trash can is full! Empty it first.",
            style = "error"
        })
        return
    end
    
    if itemType == 'burnt_fries' and attachedBaskets[source] then
        attachedBaskets[source].filled = false
    end
    
    trashCan.currentItems = trashCan.currentItems + 1
    table.insert(trashCan.items, {
        item = itemType,
        thrownBy = source,
        timestamp = os.time()
    })
    
    bridge.notification.show(source, {
        message = "Burnt item thrown away (" .. trashCan.currentItems .. "/" .. trashCan.maxItems .. ")",
        style = "success"
    })
    
    TriggerClientEvent("nn_cooking:refreshTrashCan", -1, trashCan)
end)

RegisterNetEvent('nn_cooking:emptyTrash', function(trashIndex)
    local source = source
    
    local playerRestaurant = GetPlayerRestaurant(source)
    if not playerRestaurant then
        return
    end
    
    local trashCan = State.TrashCans[trashIndex]
    if not trashCan then return end
    
    if trashCan.currentItems == 0 then
        bridge.notification.show(source, {
            message = "Trash can is already empty.",
            style = "error"
        })
        return
    end
    
    bridge.inventory.addItem(source, 'trash_bag_full', 1)
    
    trashCan.currentItems = 0
    trashCan.items = {}
    
    bridge.notification.show(source, {
        message = "Trash emptied! You received a full trash bag.",
        style = "success"
    })
    
    TriggerClientEvent("nn_cooking:refreshTrashCan", -1, trashCan)
end)

-- Client-side prop synchronization functions
function BroadcastPropSpawn(type, data)
    TriggerClientEvent('nn_cooking:spawn' .. type, -1, data)
end

function BroadcastPropRemove(propId)
    TriggerClientEvent('nn_cooking:removeProp', -1, propId)
end

function GeneratePropId(type, index, slot, slot2)
    if slot2 then
        return type .. "_" .. index .. "_" .. (slot or 0) .. "_" .. (slot2 or 0)
    end
    return type .. "_" .. index .. "_" .. (slot or 0)
end

-- Function to get entity coords and rotation for client spawning
function GetEntityData(entity)
    if not entity or not DoesEntityExist(entity) then
        return nil, nil
    end
    local coords = GetEntityCoords(entity)
    local rotation = GetEntityRotation(entity, 2)
    return coords, rotation
end

-- Function to sync cooking state to a specific client
function SyncCookingStateToClient(source)
    local cookingState = {
        Fryers = {},
        Grills = {},
        Spatulas = {},
        FriesPlates = {},
        TrashCans = {}
    }
    
    -- Prepare fryer data (including base fryer)
    for fryerIndex, fryer in pairs(State.Fryers) do
        cookingState.Fryers[fryerIndex] = {
            fryerBaskets = {},
            oilSlots = {},
            fries = {}
        }
        
        -- Add base fryer data
        if fryer.coords then
            cookingState.Fryers[fryerIndex].coords = fryer.coords
            cookingState.Fryers[fryerIndex].rotation = fryer.rotation
        end
        
        for slot, basket in pairs(fryer.fryerBaskets or {}) do
            if basket.coords then
                cookingState.Fryers[fryerIndex].fryerBaskets[slot] = {
                    coords = basket.coords,
                    rotation = basket.rotation,
                    insideFryer = basket.insideFryer,
                    takenByPlayer = basket.takenByPlayer
                }
            end
        end
        
        for slot, oil in pairs(fryer.oilSlots or {}) do
            if oil and oil.coords then
                cookingState.Fryers[fryerIndex].oilSlots[slot] = {
                    coords = oil.coords,
                    rotation = oil.rotation
                }
            end
        end
        
        for slot, fries in pairs(fryer.fries or {}) do
            if fries.coords then
                cookingState.Fryers[fryerIndex].fries[slot] = {
                    coords = fries.coords,
                    rotation = fries.rotation,
                    friesItem = fries.friesItem
                }
            end
        end
    end
    
    -- Prepare grill data
    for grillIndex, grill in pairs(State.Grills) do
        cookingState.Grills[grillIndex] = {
            slots = {}
        }
        
        for slotIndex, slots in pairs(grill.slots or {}) do
            cookingState.Grills[grillIndex].slots[slotIndex] = {}
            for slot, meat in pairs(slots) do
                if meat.coords then
                    cookingState.Grills[grillIndex].slots[slotIndex][slot] = {
                        coords = meat.coords,
                        rotation = meat.rotation,
                        meatItem = meat.meatItem,
                        cooking = meat.cooking,
                        perfect = meat.perfect,
                        burnt = meat.burnt
                    }
                end
            end
        end
    end
    
    -- Prepare spatula data (including base spatulas)
    for spatulaIndex, spatula in pairs(State.Spatulas) do
        cookingState.Spatulas[spatulaIndex] = {}
        
        -- Add spatulaIndex field
        cookingState.Spatulas[spatulaIndex].spatulaIndex = spatulaIndex
        
        -- Add base spatula data
        if spatula.coords then
            cookingState.Spatulas[spatulaIndex].coords = spatula.coords
            cookingState.Spatulas[spatulaIndex].rotation = spatula.rotation
            cookingState.Spatulas[spatulaIndex].propModel = spatula.propModel
        end
        
        -- Add dynamic spatula data if it exists
        if spatula.isDynamic and spatula.coords then
            cookingState.Spatulas[spatulaIndex].isDynamic = true
        end
    end
    
    -- Prepare plate data (including base plates)
    for plateIndex, plate in pairs(State.FriesPlates) do
        cookingState.FriesPlates[plateIndex] = {
            fries = {},
            meat = {}
        }
        
        -- Add base plate data
        if plate.coords then
            cookingState.FriesPlates[plateIndex].coords = plate.coords
            cookingState.FriesPlates[plateIndex].rotation = plate.rotation
            cookingState.FriesPlates[plateIndex].propModel = plate.propModel
            cookingState.FriesPlates[plateIndex].friesPlateIndex = plate.friesPlateIndex
            cookingState.FriesPlates[plateIndex].restaurantName = plate.restaurantName
            cookingState.FriesPlates[plateIndex].cfgPlateIndex = plate.cfgPlateIndex
        end
        
        for item, fries in pairs(plate.fries or {}) do
            if fries.coords then
                cookingState.FriesPlates[plateIndex].fries[item] = {
                    coords = fries.coords,
                    rotation = fries.rotation
                }
            end
        end
        
        for item, meats in pairs(plate.meat or {}) do
            cookingState.FriesPlates[plateIndex].meat[item] = {}
            for meatIndex, meat in pairs(meats) do
                if meat.coords then
                    cookingState.FriesPlates[plateIndex].meat[item][meatIndex] = {
                        coords = meat.coords,
                        rotation = meat.rotation
                    }
                end
            end
        end
    end
    
    -- Prepare trash can data (including base trash cans)
    for trashIndex, trash in pairs(State.TrashCans) do
        cookingState.TrashCans[trashIndex] = {}
        
        -- Add base trash can data
        if trash.coords then
            cookingState.TrashCans[trashIndex].coords = trash.coords
            cookingState.TrashCans[trashIndex].rotation = trash.rotation
            cookingState.TrashCans[trashIndex].propModel = trash.propModel
        end
    end
    
    TriggerClientEvent('nn_cooking:syncCookingState', source, cookingState)
end

-- Event to request cooking state sync (for players joining)
RegisterNetEvent('nn_cooking:requestCookingState', function()
    local source = source
    SyncCookingStateToClient(source)
end)

Lib.registerCallback('nn_drinks:openMachine', function(source, cb, machineIndex)
    local machine = State.DrinksMachines[machineIndex]
    if not machine then
        cb(false, 'Machine not found')
        return
    end
    
    if machine.isInUse then
        cb(false, 'Machine is currently in use')
        return
    end
    
    machine.isInUse = true
    machine.currentUser = source
    
    local drinksArray = {}
    for drinkId, drinkData in pairs(machine.drinks) do
        local drink = {
            id = drinkId,
            label = drinkData.label,
            color = drinkData.color,
            pourTime = drinkData.pourTime,
            minigame = drinkData.minigame
        }
        table.insert(drinksArray, drink)
    end
    
    local machineData = {
        machineType = machine.type,
        machineLabel = machine.machineLabel,
        drinks = drinksArray,
        machineCoords = machine.coords
    }
    
    cb(true, machineData)
end)

Lib.registerCallback('nn_drinks:closeMachine', function(source, cb, machineIndex)
    local machine = State.DrinksMachines[machineIndex]
    if not machine then
        cb(false)
        return
    end
    
    if machine.currentUser == source then
        machine.isInUse = false
        machine.currentUser = nil
        cb(true)
    else
        cb(false)
    end
end)

Lib.registerCallback('nn_drinks:completeMinigame', function(source, cb, machineIndex, drinkId)
    local machine = State.DrinksMachines[machineIndex]
    if not machine then
        cb(false, 'Machine not found')
        return
    end
    
    local restaurantId = machine.restaurantId
    if not restaurantId then
        cb(false, 'Restaurant not found')
        return
    end
    
    local drinkConfig = Config.DrinksMachines[machine.type].drinks[drinkId]
    if not drinkConfig then
        cb(false, 'Drink not found')
        return
    end
    
    -- Consume supplies from the machine
    local suppliesConsumed = ConsumeMachineSupplies(restaurantId, machineIndex, machine.type, drinkId)
    if not suppliesConsumed then
        cb(false, 'Insufficient supplies in machine')
        return
    end
    
    -- Give the player the drink
    bridge.inventory.addItem(source, drinkConfig.item, 1)
    
    cb(true, 'Drink created successfully')
end)

-- Supply Management Callbacks
Lib.registerCallback('nn_drinks:openSupplyManagement', function(source, cb, machineIndex)
    local machine = State.DrinksMachines[machineIndex]
    if not machine then
        cb(false, 'Machine not found')
        return
    end
    
    -- Get restaurant ID from machine
    local restaurantId = machine.restaurantId
    if not restaurantId then
        cb(false, 'Restaurant not found')
        return
    end
    
    -- Load or create supply data
    local supplyData = LoadMachineSupplies(restaurantId, machineIndex, machine.type)
    
    -- Get player inventory and convert to array format
    local inventoryData = bridge.inventory.getInventory(source) or {}
    local playerInventory = {}
    
    -- Convert inventory object to array format for React component
    -- inventoryData structure: {slot = {name, amount, ...}, ...}
    for slot, itemData in pairs(inventoryData) do
        if itemData and itemData.name and itemData.amount then
            table.insert(playerInventory, {
                name = itemData.name,
                amount = itemData.amount
            })
        end
    end
    
    -- Prepare supply items for UI
    local suppliesArray = {}
    for supplyId, supplyConfig in pairs(Config.DrinksMachines[machine.type].supplies) do
        local currentAmount = supplyData[supplyId] or 0
        table.insert(suppliesArray, {
            id = supplyId,
            label = supplyConfig.label,
            currentAmount = currentAmount,
            maxCapacity = supplyConfig.maxCapacity,
            item = supplyConfig.item
        })
    end
    
    local machineData = {
        machineType = machine.type,
        machineLabel = machine.machineLabel,
        supplies = suppliesArray,
        playerInventory = playerInventory
    }

    cb(true, machineData)
end)

Lib.registerCallback('nn_drinks:checkDrinkSupplies', function(source, cb, machineIndex, drinkId)
    local machine = State.DrinksMachines[machineIndex]
    if not machine then
        cb(false, 'Machine not found')
        return
    end
    
    local restaurantId = machine.restaurantId
    if not restaurantId then
        cb(false, 'Restaurant not found')
        return
    end
    
    local drinkConfig = Config.DrinksMachines[machine.type].drinks[drinkId]
    if not drinkConfig then
        cb(false, 'Drink not found')
        return
    end
    
    if not drinkConfig.supplies then
        cb(true, 'No supplies required')
        return
    end
    
    local supplyData = LoadMachineSupplies(restaurantId, machineIndex, machine.type)
    
    for supplyId, requiredAmount in pairs(drinkConfig.supplies) do
        local currentAmount = supplyData[supplyId] or 0
        if currentAmount < requiredAmount then
            local supplyConfig = Config.DrinksMachines[machine.type].supplies[supplyId]
            local supplyName = supplyConfig and supplyConfig.label or supplyId
            cb(false, 'Not enough ' .. supplyName .. ' (need ' .. requiredAmount .. ', have ' .. currentAmount .. ')')
            return
        end
    end
    
    cb(true, 'Supplies available')
end)

Lib.registerCallback('nn_drinks:addSupply', function(source, cb, machineIndex, supplyId, amount)
    local machine = State.DrinksMachines[machineIndex]
    if not machine then
        cb(false, 'Machine not found')
        return
    end
    
    local restaurantId = machine.restaurantId
    if not restaurantId then
        cb(false, 'Restaurant not found')
        return
    end
    
    local supplyConfig = Config.DrinksMachines[machine.type].supplies[supplyId]
    if not supplyConfig then
        cb(false, 'Invalid supply type')
        return
    end
    
    local hasItem = bridge.inventory.hasItem(source, supplyConfig.item, amount)
    if not hasItem then
        cb(false, 'Not enough items in inventory')
        return
    end
    
    local supplyData = LoadMachineSupplies(restaurantId, machineIndex, machine.type)
    local currentAmount = supplyData[supplyId] or 0
    local maxCapacity = supplyConfig.maxCapacity
    
    if currentAmount + amount > maxCapacity then
        cb(false, 'Would exceed maximum capacity')
        return
    end
    
    bridge.inventory.removeItem(source, supplyConfig.item, amount)
    
    supplyData[supplyId] = currentAmount + amount
    SaveMachineSupplies(restaurantId, machineIndex, machine.type, supplyData)
    
    cb(true, 'Supplies added successfully')
end)

function LoadMachineSupplies(restaurantId, machineIndex, machineType)
    local result = MySQL.query.await('SELECT supplies FROM sn_rest_drinks_machine_supplies WHERE restaurant_id = ? AND machine_index = ?', {
        restaurantId, machineIndex
    })
    
    if result and result[1] then
        return json.decode(result[1].supplies) or {}
    else
        local emptySupplies = {}
        MySQL.insert.await('INSERT INTO sn_rest_drinks_machine_supplies (restaurant_id, machine_index, machine_type, supplies) VALUES (?, ?, ?, ?)', {
            restaurantId, machineIndex, machineType, json.encode(emptySupplies)
        })
        return emptySupplies
    end
end

function SaveMachineSupplies(restaurantId, machineIndex, machineType, supplyData)
    MySQL.update.await('UPDATE sn_rest_drinks_machine_supplies SET supplies = ? WHERE restaurant_id = ? AND machine_index = ?', {
        json.encode(supplyData), restaurantId, machineIndex
    })
end

function ConsumeMachineSupplies(restaurantId, machineIndex, machineType, drinkId)
    local drinkConfig = Config.DrinksMachines[machineType].drinks[drinkId]
    if not drinkConfig or not drinkConfig.supplies then
        return true
    end
    
    local supplyData = LoadMachineSupplies(restaurantId, machineIndex, machineType)
    
    for supplyId, requiredAmount in pairs(drinkConfig.supplies) do
        local currentAmount = supplyData[supplyId] or 0
        if currentAmount < requiredAmount then
            return false
        end
    end
    
    for supplyId, requiredAmount in pairs(drinkConfig.supplies) do
        supplyData[supplyId] = (supplyData[supplyId] or 0) - requiredAmount
    end
    
    SaveMachineSupplies(restaurantId, machineIndex, machineType, supplyData)
    return true
end

RegisterNetEvent("nn_food:playDrinksSound", function(soundName, machineCoords, machineIndex)
    local source = source
    if not (soundName == 'drinks_pouring_soda_start' or soundName == 'drinks_pouring_coffee_start' or soundName == 'drinks_pouring_complete') or not machineIndex then
        print('Player with id: ' .. source .. ' is trying to exploit the script (cheating) by playing a sound that is not allowed')
        return
    end
    
    local coords = vector3(machineCoords.x, machineCoords.y, machineCoords.z)
    if soundName == 'drinks_pouring_complete' then
        exports['xsound']:Destroy(-1, 'machine_sound_' .. machineIndex)
    else
        exports['xsound']:PlayUrlPos(-1, 'machine_sound_' .. machineIndex, 'https://nanoscripts.cloud/nn_restaurant/' .. soundName .. '.mp3', 0.2, coords, true) 
    end
end)