local ClientProps = {}

function table_keys(t)
    local keys = {}
    for k, v in pairs(t) do
        table.insert(keys, k)
    end
    return keys
end

function SpawnClientProp(model, coords, rotation, freeze)
    local hash = GetHashKey(model)
    RequestModel(hash)
    while not HasModelLoaded(hash) do
        Wait(10)
    end
    
    local prop = CreateObject(hash, coords.x, coords.y, coords.z, false, false, false)
    while not DoesEntityExist(prop) do
        Wait(10)
    end
    if DoesEntityExist(prop) then
        SetEntityRotation(prop, rotation.x, rotation.y, rotation.z, 2, true)
        if freeze then
            FreezeEntityPosition(prop, true)
        end
        return prop
    end
    return nil
end

function DeleteClientProp(propId)
    if ClientProps[propId] and DoesEntityExist(ClientProps[propId]) then
        DeleteEntity(ClientProps[propId])
        ClientProps[propId] = nil
    end
end

function GeneratePropId(type, index, slot, slot2)
    if slot2 then
        return type .. "_" .. index .. "_" .. (slot or 0) .. "_" .. (slot2 or 0)
    end
    return type .. "_" .. index .. "_" .. (slot or 0)
end

RegisterNetEvent('nn_cooking:spawnFryerBasket', function(fryerIndex, slot, coords, rotation, insideFryer)
    local propId = GeneratePropId('fryer_basket', fryerIndex, slot)
    DeleteClientProp(propId)
    
    local basket = SpawnClientProp('sn_basket', coords, rotation, true)
    if basket then
        ClientProps[propId] = basket
        if not State.Fryers[fryerIndex] then
            State.Fryers[fryerIndex] = { fryerBaskets = {} }
        end
        if not State.Fryers[fryerIndex].fryerBaskets then
            State.Fryers[fryerIndex].fryerBaskets = {}
        end
        State.Fryers[fryerIndex].fryerBaskets[slot] = {
            basketObject = basket,
            insideFryer = insideFryer,
            takenByPlayer = nil
        }
    end
end)

RegisterNetEvent('nn_cooking:spawnFryerOil', function(fryerIndex, slot, coords, rotation)
    local propId = GeneratePropId('fryer_oil', fryerIndex, slot)
    DeleteClientProp(propId)
    
    local oil = SpawnClientProp('sn_oil', coords, rotation, true)
    if oil then
        ClientProps[propId] = oil
        if not State.Fryers[fryerIndex] then
            State.Fryers[fryerIndex] = { oilSlots = {} }
        end
        if not State.Fryers[fryerIndex].oilSlots then
            State.Fryers[fryerIndex].oilSlots = {}
        end
        State.Fryers[fryerIndex].oilSlots[slot] = oil
    end
end)

RegisterNetEvent('nn_cooking:spawnFries', function(fryerIndex, slot, item, coords, rotation)
    local propId = GeneratePropId('fries', fryerIndex, slot)
    DeleteClientProp(propId)
    
    local friesModel = Config.FriedModels[item].model
    local fries = SpawnClientProp(friesModel, coords, rotation, true)
    if fries then
        ClientProps[propId] = fries
        if not State.Fryers[fryerIndex] then
            State.Fryers[fryerIndex] = { fries = {} }
        end
        if not State.Fryers[fryerIndex].fries then
            State.Fryers[fryerIndex].fries = {}
        end
        State.Fryers[fryerIndex].fries[slot] = {
            friesObject = fries,
            friesItem = item
        }
    end
end)

RegisterNetEvent('nn_cooking:spawnGrillMeat', function(grillIndex, slotIndex, slot, item, coords, rotation, state)
    local propId = GeneratePropId('grill_meat', grillIndex, slotIndex, slot)
    DeleteClientProp(propId)
    
    local meatModel
    if state == 'cooking' then
        meatModel = Config.MeatModels[item].model
    elseif state == 'perfect' then
        meatModel = Config.MeatModels[item].cookedModel
    elseif state == 'burnt' then
        meatModel = Config.MeatModels[item].burntModel
    end
    
    if meatModel then
        local meat = SpawnClientProp(meatModel, coords, rotation, true)
        if meat then
            ClientProps[propId] = meat
            if not State.Grills[grillIndex] then
                State.Grills[grillIndex] = { slots = {} }
            end
            if not State.Grills[grillIndex].slots then
                State.Grills[grillIndex].slots = {}
            end
            if not State.Grills[grillIndex].slots[slotIndex] then
                State.Grills[grillIndex].slots[slotIndex] = {}
            end
            State.Grills[grillIndex].slots[slotIndex][slot] = {
                meatObject = meat,
                meatItem = item,
                slotIndex = slot,
                cooking = state == 'cooking',
                perfect = state == 'perfect',
                burnt = state == 'burnt'
            }
        end
    end
end)

RegisterNetEvent('nn_cooking:spawnSpatula', function(spatulaIndex, coords, rotation)
    local propId = GeneratePropId('spatula', spatulaIndex)
    DeleteClientProp(propId)
    
    local spatula = SpawnClientProp('sn_spatula', coords, rotation, true)
    if spatula then
        ClientProps[propId] = spatula
        if not State.Spatulas[spatulaIndex] then
            State.Spatulas[spatulaIndex] = {}
        end
        State.Spatulas[spatulaIndex].spatulaObject = spatula
    end
end)

RegisterNetEvent('nn_cooking:spawnPlateFries', function(friesPlateIndex, item, coords, rotation)
    local propId = GeneratePropId('plate_fries', friesPlateIndex, item)
    DeleteClientProp(propId)
    
    local friesModel = Config.FriedModels[item].plateModel
    local fries = SpawnClientProp(friesModel, coords, rotation, true)
    if fries then
        ClientProps[propId] = fries
        if not State.FriesPlates[friesPlateIndex] then
            State.FriesPlates[friesPlateIndex] = { fries = {} }
        end
        if not State.FriesPlates[friesPlateIndex].fries then
            State.FriesPlates[friesPlateIndex].fries = {}
        end
        if not State.FriesPlates[friesPlateIndex].fries[item] then
            State.FriesPlates[friesPlateIndex].fries[item] = {}
        end
        State.FriesPlates[friesPlateIndex].fries[item].friesObject = fries
    end
end)

RegisterNetEvent('nn_cooking:spawnPlateMeat', function(friesPlateIndex, item, coords, rotation, meatIndex)
    local propId = GeneratePropId('plate_meat', friesPlateIndex, item, meatIndex)
    DeleteClientProp(propId)
    
    local meatModel = Config.MeatModels[item].cookedModel
    local meat = SpawnClientProp(meatModel, coords, rotation, true)
    if meat then
        ClientProps[propId] = meat
        if not State.FriesPlates[friesPlateIndex] then
            State.FriesPlates[friesPlateIndex] = { meat = {} }
        end
        if not State.FriesPlates[friesPlateIndex].meat then
            State.FriesPlates[friesPlateIndex].meat = {}
        end
        if not State.FriesPlates[friesPlateIndex].meat[item] then
            State.FriesPlates[friesPlateIndex].meat[item] = {}
        end
        if not State.FriesPlates[friesPlateIndex].meat[item][meatIndex] then
            State.FriesPlates[friesPlateIndex].meat[item][meatIndex] = {}
        end
        State.FriesPlates[friesPlateIndex].meat[item][meatIndex].meatObject = meat
    end
end)

RegisterNetEvent('nn_cooking:removeProp', function(propId)
    DeleteClientProp(propId)
end)

RegisterNetEvent('nn_cooking:syncCookingState', function(cookingState)
    for propId, prop in pairs(ClientProps) do
        if DoesEntityExist(prop) then
            DeleteEntity(prop)
        end
    end
    ClientProps = {}
    dprint('received cooking state', json.encode(cookingState))
    
    for fryerIndex, fryer in pairs(cookingState.Fryers or {}) do
        if fryer.coords then
            TriggerEvent('nn_cooking:spawnBaseFryer', fryerIndex, fryer.coords, fryer.rotation)
        end
        
        for slot, basket in pairs(fryer.fryerBaskets or {}) do
            if basket.coords then
                TriggerEvent('nn_cooking:spawnFryerBasket', fryerIndex, slot, basket.coords, basket.rotation, basket.insideFryer)
            end
        end
        
        for slot, oil in pairs(fryer.oilSlots or {}) do
            if oil.coords then
                TriggerEvent('nn_cooking:spawnFryerOil', fryerIndex, slot, oil.coords, oil.rotation)
            end
        end
        
        for slot, fries in pairs(fryer.fries or {}) do
            if fries.coords then
                TriggerEvent('nn_cooking:spawnFries', fryerIndex, slot, fries.friesItem, fries.coords, fries.rotation)
            end
        end
    end
    
    for plateIndex, plate in pairs(cookingState.FriesPlates or {}) do
        if plate.coords then
            TriggerEvent('nn_cooking:spawnBasePlate', plateIndex, plate.propModel, plate.coords, plate.rotation)
        end
        
        for item, fries in pairs(plate.fries or {}) do
            if fries.coords then
                TriggerEvent('nn_cooking:spawnPlateFries', plateIndex, item, fries.coords, fries.rotation)
            end
        end
        
        for item, meats in pairs(plate.meat or {}) do
            for meatIndex, meat in pairs(meats) do
                if meat.coords then
                    TriggerEvent('nn_cooking:spawnPlateMeat', plateIndex, item, meat.coords, meat.rotation, meatIndex)
                end
            end
        end
    end
    
    for spatulaIndex, spatula in pairs(cookingState.Spatulas or {}) do
        if spatula.coords then
            TriggerEvent('nn_cooking:spawnBaseSpatula', spatulaIndex, spatula.propModel, spatula.coords, spatula.rotation)
        end
    end
    
    for trashIndex, trash in pairs(cookingState.TrashCans or {}) do
        if trash.coords then
            TriggerEvent('nn_cooking:spawnBaseTrashCan', trashIndex, trash.propModel, trash.coords, trash.rotation)
        end
    end
    
    -- Setup drinks machine interactions
    for drinksMachineIndex, drinksMachine in pairs(cookingState.DrinksMachines or {}) do
        if drinksMachine.coords then
            TriggerEvent('nn_cooking:setupDrinksMachineInteractions', drinksMachine)
        end
    end
    
    for grillIndex, grill in pairs(cookingState.Grills or {}) do
        for slotIndex, slots in pairs(grill.slots or {}) do
            for slot, meat in pairs(slots) do
                if meat.coords then
                    local state = meat.cooking and 'cooking' or meat.perfect and 'perfect' or meat.burnt and 'burnt' or 'cooking'
                    TriggerEvent('nn_cooking:spawnGrillMeat', grillIndex, slotIndex, slot, meat.meatItem, meat.coords, meat.rotation, state)
                end
            end
        end
    end
    
    for spatulaIndex, spatula in pairs(cookingState.spatulas or {}) do
        if spatula.coords and spatula.isDynamic then
            TriggerEvent('nn_cooking:spawnSpatula', spatulaIndex, spatula.coords, spatula.rotation)
        end
    end
end)

RegisterNetEvent('nn_cooking:spawnBaseFryer', function(fryerIndex, coords, rotation)
    local propId = GeneratePropId('base_fryer', fryerIndex)
    DeleteClientProp(propId)
    
    local fryer = SpawnClientProp('sn_fryer', coords, rotation, true)
    if fryer then
        ClientProps[propId] = fryer
        if not State.Fryers[fryerIndex] then
            State.Fryers[fryerIndex] = {}
        end
        State.Fryers[fryerIndex].fryerObject = fryer
    end
end)

RegisterNetEvent('nn_cooking:spawnBasePlate', function(plateIndex, propModel, coords, rotation)
    local propId = GeneratePropId('base_plate', plateIndex)
    DeleteClientProp(propId)
    
    local plate = SpawnClientProp(propModel, coords, rotation, true)
    if plate then
        ClientProps[propId] = plate
        if not State.FriesPlates[plateIndex] then
            State.FriesPlates[plateIndex] = {}
        end
        State.FriesPlates[plateIndex].plateObject = plate
    end
end)


-- Gestion du spawn des spatulas
RegisterNetEvent('nn_cooking:spawnBaseSpatula', function(spatulaId, propModel, coords, rotation)
    -- Génère un identifiant unique pour la spatula
    local propId = GeneratePropId('base_spatula', spatulaId)

    -- Supprime l’ancien prop s’il existe (évite les doublons)
    DeleteClientProp(propId)

    -- Spawn du prop sur le client
    local spatula = SpawnClientProp(propModel, coords, rotation, true)

    if spatula then
        -- Stocke la spatula dans la table des props
        ClientProps[propId] = spatula

        -- Assure que la state contient une entrée pour cet ID
        if not State.Spatulas[spatulaId] then
            State.Spatulas[spatulaId] = {}
        end

        -- Sauvegarde l’objet côté client
        State.Spatulas[spatulaId].spatulaObject = spatula
    else
        print(("⚠️ Impossible de spawn la spatula ID %s (model: %s)"):format(spatulaId, propModel))
    end
end)

--RegisterNetEvent('nn_cooking:spawnBaseSpatula', function(spatulaIndex, propModel, coords, rotation)
--    local propId = GeneratePropId('base_spatula', spatulaIndex)
--    DeleteClientProp(propId)
--    
--    local spatula = SpawnClientProp(propModel, coords, rotation, true)
--    if spatula then
--        ClientProps[propId] = spatula
--        if not State.Spatulas[spatulaIndex] then
--            State.Spatulas[spatulaIndex] = {}
--        end
--        State.Spatulas[spatulaIndex].spatulaObject = spatula
--    end
--end)

RegisterNetEvent('nn_cooking:spawnBaseTrashCan', function(trashIndex, propModel, coords, rotation)
    local propId = GeneratePropId('base_trash', trashIndex)
    DeleteClientProp(propId)
    
    local trash = SpawnClientProp(propModel, coords, rotation, true)
    if trash then
        ClientProps[propId] = trash
        if not State.TrashCans[trashIndex] then
            State.TrashCans[trashIndex] = {}
        end
        State.TrashCans[trashIndex].trashObject = trash
    end
end)

AddEventHandler('onResourceStop', function(resourceName)
    if GetCurrentResourceName() == resourceName then
        for propId, prop in pairs(ClientProps) do
            if DoesEntityExist(prop) then
                DeleteEntity(prop)
            end
        end
        ClientProps = {}
    end
end)

RegisterNetEvent('nn_cooking:setupFryerInteractions', function(fryer)
    State.Fryers[fryer.fryerIndex] = fryer
    SetupFryerInteractions(fryer)
end)

RegisterNetEvent("nn_cooking:setupFriesPlateInteractions", function(friesPlate)
    SetupFriesPlateInteractions(friesPlate)
end)

RegisterNetEvent('nn_cooking:setupGrillInteractions', function(grill)
    State.Grills[grill.grillIndex] = grill
    SetupGrillInteractions(grill)
end)

RegisterNetEvent('nn_cooking:setupSpatulaInteractions', function(spatula)
    if not spatula or not spatula.spatulaIndex then
        return
    end
    State.Spatulas[spatula.spatulaIndex] = spatula
    SetupSpatulaInteractions(spatula)
end)

RegisterNetEvent('nn_cooking:setupTrashCanInteractions', function(trashCan)
    State.TrashCans[trashCan.trashIndex] = trashCan
    SetupTrashCanInteractions(trashCan)
end)

RegisterNetEvent('nn_cooking:setupFridgeInteractions', function(fridge)
    State.Fridges[fridge.fridgeIndex] = fridge
    SetupFridgeInteractions(fridge)
end)

RegisterNetEvent('nn_cooking:setupDrinksMachineInteractions', function(drinksMachine)
    State.DrinksMachines[drinksMachine.drinksMachineIndex] = drinksMachine
    SetupDrinksMachineInteractions(drinksMachine)
end)

RegisterNetEvent('nn_cooking:refreshTrashCan', function(trashCan)
    if not IsPlayerEmployeeOfAnyRestaurant() then
        return
    end 
    
    State.TrashCans[trashCan.trashIndex] = trashCan
    SetupTrashCanInteractions(trashCan)
end)

RegisterNetEvent('nn_cooking:refreshFriesPlate', function(friesPlate)
    State.FriesPlates[friesPlate.friesPlateIndex] = friesPlate
    SetupFriesPlateInteractions(friesPlate)
end)

RegisterNetEvent('nn_cooking:refreshFryer', function(fryer)
    if not IsPlayerEmployeeOfAnyRestaurant() then
        return
    end 

    State.Fryers[fryer.fryerIndex] = fryer
    SetupFryerInteractions(fryer)
end)

RegisterNetEvent('nn_cooking:refreshGrill', function(grill)
    if not IsPlayerEmployeeOfAnyRestaurant() then
        return
    end 
    
    State.Grills[grill.grillIndex] = grill
end)

RegisterNetEvent('nn_cooking:refreshDrinksMachine', function(drinksMachine)
    State.DrinksMachines[drinksMachine.drinksMachineIndex] = drinksMachine
    SetupDrinksMachineInteractions(drinksMachine)
end)

RegisterNetEvent('nn_cooking:startFryerParticle', function(fryerIndex, slot)
    local fryer = State.Fryers[fryerIndex]
    if not fryer then return end
        
    local restaurantName = fryer.restaurantName
    local particleConfig = Config.Restaurants[restaurantName].Fryers.particle

    local playerCoords = GetEntityCoords(PlayerPedId())
    
    local basketPropId = GeneratePropId('fryer_basket', fryerIndex, slot)
    local basketObj = ClientProps[basketPropId]
    if not basketObj then return end
    
    local coords = GetEntityCoords(basketObj)
    local distance = #(playerCoords - coords)
    if distance > 10.0 then
        return
    end

    coords = vector3(coords.x, coords.y, coords.z + 0.4)
    local effectCoords = vector3(coords.x + particleConfig.offset.x, coords.y + particleConfig.offset.y, coords.z + particleConfig.offset.z)
    local particleHandle = StartParticleAtCoord(particleConfig.dict, particleConfig.anim, particleConfig.looped, effectCoords, vector3(0.0, 0.0, 0.0), particleConfig.scale, particleConfig.alpha, nil, particleConfig.duration)
    State.FryerParticles[fryerIndex] = particleHandle
end)

RegisterNetEvent('nn_cooking:startGrillParticle', function(grillIndex)
    local grill = State.Grills[grillIndex]
    if not grill then return end
    
    local configGrillIndex = grill.slotIndex
    local restaurantName = grill.restaurantName

    local playerCoords = GetEntityCoords(PlayerPedId())
    local coords = Config.Restaurants[restaurantName].Grills[configGrillIndex].particleCoords
    coords = vector3(coords.x, coords.y, coords.z + 0.4)
    local distance = #(playerCoords - coords)
    if distance > 10.0 then
        return
    end

    local particleConfig = Config.Restaurants[restaurantName].Grills[configGrillIndex].particle
    local effectCoords = vector3(coords.x + particleConfig.offset.x, coords.y + particleConfig.offset.y, coords.z + particleConfig.offset.z)
    local particleHandle = StartParticleAtCoord(particleConfig.dict, particleConfig.anim, particleConfig.looped, effectCoords, particleConfig.rotation, particleConfig.scale, particleConfig.alpha, nil, particleConfig.duration)
    State.GrillParticles[grillIndex] = particleHandle
end)


RegisterNetEvent('nn_food:updateCookingState', function(data, state)
    if not IsPlayerEmployeeOfAnyRestaurant() then
        return
    end
    
    if state == 'perfect' then
        if data.fryerIndex then 
            local fryer = State.Fryers[data.fryerIndex]
            local basket = fryer.fryerBaskets[data.slot]
            if not basket then basket = {} end
            TriggerServerEvent('nn_food:setCookingState', data, 'perfect')
            basket.perfect = true
            SetupFryerInteractions(fryer)
        elseif data.grillIndex then
            local grill = State.Grills[data.grillIndex]
            if grill and grill.slots[data.slotIndex] then
                local slot = grill.slots[data.slotIndex][data.slot]
                if slot then
                    TriggerServerEvent('nn_food:setCookingState', data, 'perfect')
                    slot.perfect = true
                end
            end
        end
    elseif state == 'burnt' then
        if data.fryerIndex then 
            local fryer = State.Fryers[data.fryerIndex]
            local basket = fryer.fryerBaskets[data.slot]
            if not basket then basket = {} end
            TriggerServerEvent('nn_food:setCookingState', data, 'burnt')
            basket.burnt = true
            SetupFryerInteractions(fryer)
        elseif data.grillIndex then
            local grill = State.Grills[data.grillIndex]
            if grill and grill.slots[data.slotIndex] then
                local slot = grill.slots[data.slotIndex][data.slot]
                if slot then
                    TriggerServerEvent('nn_food:setCookingState', data, 'burnt')
                    slot.burnt = true
                end
            end
        end
    end
end)
function SetupFryerInteractions(data)
    if not State.Fryers[data.fryerIndex] then
        State.Fryers[data.fryerIndex] = data
    end
    
    local fryer = State.Fryers[data.fryerIndex]

    if not IsPlayerEmployeeOfAnyRestaurant() then
        return
    end
    
    local interactions = {
        {
            name = "fryer_management_oil" .. data.fryerIndex,
            icon = "fa-solid fa-bottle-droplet",
            label = T('poor_oil'),
            key = "E",
            duration = 500,
            onSelect = function()
                if State.CurrentAttachedFries then
                    bridge.notification.show({
                        message = T('cant_pour_oil_while_holding_fries'),
                        style = "error"
                    })
                    return
                end
                Lib.Callback('nn_cooking:hasItems', function(hasItems)
                    if not hasItems and not Config.devMode then
                        bridge.notification.show({
                            message = T('no_oil_to_pour'),
                            style = "error"
                        })
                        return
                    end
                    TriggerServerEvent('nn_cooking:addOil', fryer.fryerIndex)
                end, {{name = 'cooking_oil', count = 1}})
            end
        },
        {
            name = "fryer_management_basket" .. data.fryerIndex,
            icon = "fa-solid fa-basket-shopping",
            label = T('put_basket'),
            key = "E",
            duration = 500,
            onSelect = function()
                if State.CurrentAttachedFries and not State.CurrentAttachedFries.empty then
                    bridge.notification.show({
                        message = T('cant_put_basket_while_holding_fries'),
                        style = "error"
                    })
                    return
                end
                
                
                if State.CurrentAttachedFries and State.CurrentAttachedFries.empty then
                    local basketInfo = State.CurrentAttachedFries.basketInfo
                    
                    
                    if DoesEntityExist(State.CurrentAttachedFries.basketObject) then
                        DeleteEntity(State.CurrentAttachedFries.basketObject)
                    end
                    
                    State.CurrentAttachedFries = nil
                    ClearPedTasks(PlayerPedId())
                    
                    
                    TriggerServerEvent('nn_cooking:recreateEmptyBasket', basketInfo.fryerIndex, basketInfo.slot)
                    return
                end
                
                TriggerServerEvent('nn_cooking:addBasket', fryer.fryerIndex)
                ClearPedTasks(PlayerPedId())
            end
        },
        {
            name = "fryer_management_fries" .. fryer.fryerIndex,
            icon = "fa-solid fa-box",
            label = T('add_fries'),
            key = "E",
            duration = 500,
            onSelect = function()
                if State.CurrentAttachedFries and not State.CurrentAttachedFries.empty then
                    bridge.notification.show({
                        message = T('cant_add_fries_while_holding_fries'),
                        style = "error"
                    })
                    return
                end
                    Lib.Callback('nn_cooking:hasFries', function(bagItem)
                    if not bagItem and not Config.devMode then
                        bridge.notification.show({
                            message = T('no_fries_to_add'),
                            style = "error"
                        })
                        return
                    end 

                    local item
                    for k,v in pairs(Config.FriedModels) do
                        if v.item == bagItem then
                            item = k
                            break
                        end
                    end

                    if not item then return end
                    TriggerServerEvent('nn_cooking:addFries', fryer.fryerIndex, item, bagItem)
                end)
            end
        },
        {
            name = "fryer_management_fries" .. fryer.fryerIndex,
            icon = "fa-solid fa-check",
            label = T('collect_fries'),
            duration = 500,
            key = "E",
            onSelect = function()
                if State.CurrentAttachedFries then
                    local message = State.CurrentAttachedFries.empty and 
                        T('cant_collect_fries_while_holding_basket') or
                        T('cant_collect_fries_while_holding_fries')
                    bridge.notification.show({
                        message = message,
                        style = "error"
                    })
                    return
                end
                local fryer = State.Fryers[data.fryerIndex]
                for k,v in pairs(fryer.fryerBaskets) do
                    if (v.perfect or v.burnt) and not v.takenByPlayer then
                        local playerPed = PlayerPedId()
                        
                        local basketPropId = GeneratePropId('fryer_basket', fryer.fryerIndex, k)
                        local friesPropId = GeneratePropId('fries', fryer.fryerIndex, k)
                        local clientBasketObj = ClientProps[basketPropId]
                        local clientFriesObj = ClientProps[friesPropId]
                        
                        if not clientBasketObj or not clientFriesObj then
                            return
                        end
                        
                        local basketCoords = GetEntityCoords(clientBasketObj)
                        local basketRot = GetEntityRotation(clientBasketObj)
                        local friesCoords = GetEntityCoords(clientFriesObj)
                        local friesRot = GetEntityRotation(clientFriesObj)
                        
                        local basketModel = GetEntityModel(clientBasketObj)
                        local friesModel = GetEntityModel(clientFriesObj)
                        
                        local networkedBasketObj = CreateObject(basketModel, basketCoords.x, basketCoords.y, basketCoords.z, true, true, false)
                        SetEntityRotation(networkedBasketObj, basketRot.x, basketRot.y, basketRot.z)
                        
                        local networkedFriesObj = CreateObject(friesModel, friesCoords.x, friesCoords.y, friesCoords.z, true, true, false)
                        SetEntityRotation(networkedFriesObj, friesRot.x, friesRot.y, friesRot.z)
                        
                        RequestAnimDict("missfbi4prepp1")
                        while not HasAnimDictLoaded("missfbi4prepp1") do
                            Wait(100)
                        end
                        TaskPlayAnim(playerPed, "missfbi4prepp1", "idle", 5.0, 5.0, -1, 51, 0, false, false,
                        false)
                        
                        State.CurrentAttachedFries = v.burnt and {
                            friesObject = networkedFriesObj,
                            basketObject = networkedBasketObj,
                            burnt = true,
                            basketInfo = {fryerIndex = fryer.fryerIndex, slot = k}
                        } or {
                            friesObject = networkedFriesObj,
                            basketObject = networkedBasketObj,
                            friesItem = fryer.fries[k].friesItem,
                            basketInfo = {fryerIndex = fryer.fryerIndex, slot = k}
                        }
                        
                        local bone = GetPedBoneIndex(playerPed, 57005)
                        local friesOffsets = Config.FriedModels[fryer.fries[k].friesItem].fryerOffsets.basket[1]
                        AttachEntityToEntity(networkedBasketObj, playerPed, bone, 0.44, 0.17, -0.3, 40.0, 310.0, 180.0, true, true, false, true, 1, true)
                        AttachEntityToEntity(networkedFriesObj, networkedBasketObj, 0, friesOffsets.x, friesOffsets.y, friesOffsets.z, 100.0, 0.0, 0.0, true, true, false, true, 1, true)
                        
                        TriggerServerEvent('nn_cooking:removeBasket', fryer.fryerIndex, k)
                        TriggerServerEvent('nn_food:stopTimer', {fryerIndex = fryer.fryerIndex, slot = k})
                        return
                    end
                end
                
                local takenBaskets = 0
                local totalReadyBaskets = 0
                for k,v in pairs(fryer.fryerBaskets) do
                    if v.perfect or v.burnt then
                        totalReadyBaskets = totalReadyBaskets + 1
                        if v.takenByPlayer then
                            takenBaskets = takenBaskets + 1
                        end
                    end
                end
                
                if takenBaskets > 0 and totalReadyBaskets == takenBaskets then
                    bridge.notification.show({
                        message = T('all_baskets_taken_by_employees'),
                        style = "error"
                    })
                else
                    bridge.notification.show({
                        message = T('no_fries_ready_to_collect'),
                        style = "error"
                    })
                end
            end
        }
    }

    local fryerPropId = GeneratePropId('base_fryer', fryer.fryerIndex)
    local fryerObj = ClientProps[fryerPropId]
    if not fryerObj then
        return
    end
    
    local int = exports['is_interaction']:addInteractionLocalEntity('fryer-' .. fryer.fryerIndex, fryerObj, {
        hideSquare = false,
        checkVisibility = false,
        showInVehicle = false,
        distance = 1.5,
        distanceText = 1.0,
        offset = {
            text = {x = 0.0, y = -1.0, z = 1.2},
            target = {x = 0.0, y = -1.0, z = 1.0}
        },
        bone = nil,
        options = interactions
    })

    State.Interactions['fryer-' .. fryer.fryerIndex] = int
end

function SetupFriesPlateInteractions(data)
    if State.FriesPlates[data.friesPlateIndex] and State.FriesPlates[data.friesPlateIndex].plateObject then
        plateObject = State.FriesPlates[data.friesPlateIndex].plateObject
    end
    State.FriesPlates[data.friesPlateIndex] = data
    State.FriesPlates[data.friesPlateIndex].plateObject = plateObject
    local friesPlate = State.FriesPlates[data.friesPlateIndex]
    local interactions = {}

    table.insert(interactions, {
        name = "fries_plate_management" .. friesPlate.friesPlateIndex,
        icon = "fa-solid fa-box",
        label = T('deposit_fries'),
        key = "E",
        distance = 1.5,
        duration = 500,
        onSelect = function()
            if not State.CurrentAttachedFries or State.CurrentAttachedFries.empty then
                bridge.notification.show({
                    message = T('no_fries_to_deposit'),
                    style = "error"
                })
                return
            end
            
            if State.CurrentAttachedFries.burnt then
                bridge.notification.show({
                    message = "Can't deposit burnt fries. Throw them in the trash instead.",
                    style = "error"
                })
                return
            end
            
            
            if friesPlate.meat then
                for k,v in pairs(friesPlate.meat) do
                    if v.count and v.count > 0 then
                        bridge.notification.show({
                            message = "This plate already contains meat. Use an empty plate.",
                            style = "error"
                        })
                        return
                    end
                end
            end
            
            
            if friesPlate.fries then
                for k,v in pairs(friesPlate.fries) do
                    if v.count and v.count > 0 and k ~= State.CurrentAttachedFries.friesItem then
                        bridge.notification.show({
                            message = "This plate already contains " .. Config.FriedModels[k].label .. ". Use an empty plate.",
                            style = "error"
                        })
                        return
                    end
                end
            end
            
            TriggerServerEvent('nn_cooking:depositFries', friesPlate.friesPlateIndex, State.CurrentAttachedFries.friesItem)
            
            local basketInfo = State.CurrentAttachedFries.basketInfo
            
            if DoesEntityExist(State.CurrentAttachedFries.friesObject) then
                DeleteEntity(State.CurrentAttachedFries.friesObject)
            end
            
            State.CurrentAttachedFries = {
                basketObject = State.CurrentAttachedFries.basketObject,
                basketInfo = basketInfo,
                empty = true
            }
        end
    })

    table.insert(interactions, {
        name = "meat_plate_management" .. friesPlate.friesPlateIndex,
        icon = "fa-solid fa-drumstick-bite",
        label = T('deposit_meat'),
        key = "E",
        distance = 3.0,
        duration = 500,
        onSelect = function()
            if not State.CurrentAttachedMeat then
                bridge.notification.show({
                    message = T('no_meat_to_deposit'),
                    style = "error"
                })
                return
            end
            
            if State.CurrentAttachedMeat.burnt then
                bridge.notification.show({
                    message = T('cant_deposit_burnt_meat'),
                    style = "error"
                })
                return
            end
            
            
            if friesPlate.fries then
                for k,v in pairs(friesPlate.fries) do
                    if v.count and v.count > 0 then
                        bridge.notification.show({
                            message = "This plate already contains fries. Use an empty plate.",
                            style = "error"
                        })
                        return
                    end
                end
            end
            
            
            if friesPlate.meat then
                for k,v in pairs(friesPlate.meat) do
                    if v[1] and v[1].count > 0 and v[1].meatItem ~= State.CurrentAttachedMeat.item then
                        bridge.notification.show({
                            message = "This plate already contains " .. Config.MeatModels[v[1].meatItem].label .. ". Use an empty plate.",
                            style = "error"
                        })
                        return
                    end
                end
            end
            
            local meatItemToSend = State.CurrentAttachedMeat.item
            
            DetachEntity(State.CurrentAttachedMeat.meatObject, true, true)
            
            
            if DoesEntityExist(State.CurrentAttachedMeat.meatObject) then
                DeleteEntity(State.CurrentAttachedMeat.meatObject)
            end
            
            State.CurrentAttachedMeat = nil

            TriggerServerEvent('nn_cooking:depositMeat', friesPlate.friesPlateIndex, meatItemToSend)
        end
    })

    if friesPlate.fries then
        for k,v in pairs(friesPlate.fries) do
            local itemLabel = Config.FriedModels[v.friesItem].label
            local cfg = Config.FriedModels[v.friesItem].int
            table.insert(interactions, {
                name = "fries_plate_management" .. friesPlate.friesPlateIndex .. k,
                icon = "fa-solid fa-box",
                label = v.count .. "x " .. itemLabel,
                key = "E",
                duration = 500,
                onSelect = function()
                    if v.count <= 0 then return end
                    bridge.progressbar.show({
                        duration = cfg.duration,
                        title = cfg.progressText,
                        useWhileDead = false,
                        canCancel = false,
                        animation = {
                            dict = cfg.animation.dict,
                            anim = cfg.animation.anim,
                        },
                        disable = {
                            move = true,
                            car = true,
                            combat = true,
                        },
                    }, function()
                        TriggerServerEvent('nn_cooking:takeFries', friesPlate.friesPlateIndex, k)
                    end)
                end
            })  
        end
    end

    if friesPlate.meat then
        for k,v in pairs(friesPlate.meat) do
            local meatCount = 0
            for m, d in pairs(v) do
                meatCount = meatCount + 1
            end
            if not v[1] then
                itemLabel = T('empty')
            else
                itemLabel = Config.MeatModels[v[1].meatItem].cookedLabel
            end
            table.insert(interactions, {
                name = "meat_plate_management" .. friesPlate.friesPlateIndex .. k,
                icon = "fa-solid fa-drumstick-bite",
                label = meatCount .. "x " .. itemLabel,
                key = "E",
                duration = 500,
                onSelect = function()
                    if meatCount <= 0 then return end
                    if not v[1] then return end
                    local cfg = Config.MeatModels[v[1].meatItem].int
                    bridge.progressbar.show({
                        duration = cfg.duration,
                        title = cfg.progressText,
                        useWhileDead = false,
                        canCancel = false,
                        animation = {
                            dict = cfg.animation.dict,
                            anim = cfg.animation.anim,
                        },
                        disable = {
                            move = true,
                            car = true,
                            combat = true,
                        },
                    }, function()
                        TriggerServerEvent('nn_cooking:takeMeat', friesPlate.friesPlateIndex, k)
                    end)
                end
            })
        end
    end

    local platePropId = GeneratePropId('base_plate', friesPlate.friesPlateIndex)
    local plateObj = ClientProps[platePropId]
    if not plateObj then
        return
    end
    
    local coords = GetEntityCoords(plateObj)
    local int = exports['is_interaction']:addInteractionCoords('fries-plate-' .. friesPlate.friesPlateIndex, coords, {
        hideSquare = false,
        checkVisibility = false,
        showInVehicle = false,
        distance = 1.5,
        distanceText = 1.0,
        offset = {
            text = {x = 0.0, y = 0.0, z = 0.1},
            target = {x = 0.0, y = 0.0, z = 0.0}
        },
        bone = nil,
        options = interactions
    })  

    State.Interactions['fries-plate-' .. friesPlate.friesPlateIndex] = int
end

function SetupGrillInteractions(data)
    if not State.Grills[data.grillIndex] then
        State.Grills[data.grillIndex] = data
    end

    local grill = State.Grills[data.grillIndex]
    local coords = Config.Restaurants[grill.restaurantName].Grills[grill.slotIndex].intCoords

    local interactions = {}

    table.insert(interactions, {
        name = "grill_management" .. grill.grillIndex,
        icon = "fa-solid fa-box",
        label = T('cook_burger'),
        key = "E",
        duration = 500,
        onSelect = function()
            Lib.Callback('nn_cooking:hasMeat', function(hasMeat)
                if not hasMeat then
                    if not Config.devMode then
                        bridge.notification.show({
                            message = T('no_meat_to_grill'),
                            style = "error"
                        })
                    end
                    return
                end

                TriggerServerEvent('nn_cooking:addMeat', grill.grillIndex, hasMeat)
            end)
        end
    })

    table.insert(interactions, {
        name = "grill_management" .. grill.grillIndex,
        icon = "fa-solid fa-box",
        label = T('remove_meat'),
        key = "E",
        duration = 500,
        onSelect = function()
            if State.CurrentAttachedMeat then
                bridge.notification.show({
                    message = T('already_holding_meat'),
                    style = "error"
                })
                return
            end

            if not State.HoldingSpatula then
                bridge.notification.show({
                    message = T('no_spatula_to_remove_meat'),
                    style = "error"
                })
                return
            end
            
            for k,v in pairs(State.Grills[grill.grillIndex].slots[grill.slotIndex]) do
                if v.perfect or v.burnt then
                    local playerPed = PlayerPedId()
                    RequestAnimDict("amb@world_human_tourist_map@male@base")
                    while not HasAnimDictLoaded("amb@world_human_tourist_map@male@base") do
                        Wait(100)
                    end
                    TaskPlayAnim(playerPed, "amb@world_human_tourist_map@male@base", "base", 5.0, 5.0, -1, 51, 0, false, false,
                    false)
                    TriggerServerEvent('nn_food:stopTimer', {grillIndex = grill.grillIndex, slotIndex = grill.slotIndex, slot = k})
                    
                    
                        local meatPropId = GeneratePropId('grill_meat', grill.grillIndex, grill.slotIndex, k)
                        local clientMeatObj = ClientProps[meatPropId]
                        
                        if not clientMeatObj then
                            return
                        end
                        
                        local meatCoords = GetEntityCoords(clientMeatObj)
                        local meatRot = GetEntityRotation(clientMeatObj)
                        local meatModel = GetEntityModel(clientMeatObj)
                        local clientNetworkedMeatObj = CreateObject(meatModel, meatCoords.x, meatCoords.y, meatCoords.z, true, true, false)
                        SetEntityRotation(clientNetworkedMeatObj, meatRot.x, meatRot.y, meatRot.z)
                    
                    AttachEntityToEntity(clientNetworkedMeatObj, State.HoldingSpatula.spatulaObject, 0, -0.05, -0.26, 0.175, 90.0, 0.0, 0.0, true, true, false, true, 1, true)
                    
                    State.CurrentAttachedMeat = {
                        item = v.meatItem,
                        perfect = v.perfect,
                        burnt = v.burnt,
                        meatObject = clientNetworkedMeatObj,
                        originalMeatObject = v.meatObject
                    }
                    
                    TriggerServerEvent('nn_cooking:removeMeat', grill.grillIndex, grill.slotIndex, k)
                    return
                end
            end
            bridge.notification.show({
                message = "You don't have any meat to remove",
                style = "error"
            })
        end
    })

    exports['is_interaction']:addInteractionCoords('grill-' .. grill.grillIndex, coords, {
        hideSquare = false,
        checkVisibility = false,
        showInVehicle = false,
        distance = 1.5,
        distanceText = 1.0,
        offset = {
            text = {x = 0.0, y = 0.0, z = 0.4},
            target = {x = 0.0, y = 0.0, z = 0.0}
        },
        bone = nil,
        options = interactions
    })
end

function SetupSpatulaInteractions(data) 
    if not data or not data.spatulaIndex then
        return
    end
    
    if not State.Spatulas[data.spatulaIndex] then
        State.Spatulas[data.spatulaIndex] = data
    end
    
    local spatula = State.Spatulas[data.spatulaIndex]
    local interactions = {}
    
    if State.HoldingSpatula and State.HoldingSpatulaIndex == spatula.spatulaIndex then
        table.insert(interactions, {
            name = "spatula_put" .. spatula.spatulaIndex,
            icon = "fa-solid fa-box",
            label = T('put_spatula'),
            key = "E",
            duration = 500,
            onSelect = function()
                if not State.HoldingSpatula then return end
                
                ClearPedTasks(PlayerPedId())
                
                local spatulaObject = State.HoldingSpatula.spatulaObject
                local spatulaIndex = State.HoldingSpatula.spatulaIndex
                
                State.HoldingSpatula = nil
                State.HoldingSpatulaIndex = nil
                
                if spatulaObject and DoesEntityExist(spatulaObject) then
                    DetachEntity(spatulaObject, true, true)
                    DeleteEntity(spatulaObject)
                end
                
                TriggerServerEvent('nn_cooking:recreateSpatula', spatulaIndex)
            end
        })
    else
        if not State.HoldingSpatula then
            local spatulaPropId = GeneratePropId('base_spatula', spatula.spatulaIndex)
            local spatulaObj = ClientProps[spatulaPropId]
            
            if not spatulaObj then
                return
            end
            
            table.insert(interactions, {
                name = "spatula_take" .. spatula.spatulaIndex,
                icon = "fa-solid fa-box",
                label = T('take_spatula'),
                key = "E",
                duration = 500,
                onSelect = function()
                    local playerPed = PlayerPedId()
                    RequestAnimDict("amb@world_human_tourist_map@male@base")
                    while not HasAnimDictLoaded("amb@world_human_tourist_map@male@base") do
                        Wait(100)
                    end
                    TaskPlayAnim(playerPed, "amb@world_human_tourist_map@male@base", "base", 5.0, 5.0, -1, 51, 0, false, false, false)

                    local spatulaPropId = GeneratePropId('base_spatula', spatula.spatulaIndex)
                    local baseSpatulaObj = ClientProps[spatulaPropId]
                    
                    if not baseSpatulaObj or not DoesEntityExist(baseSpatulaObj) then
                        return
                    end
                    
                    local spatulaCoords = GetEntityCoords(baseSpatulaObj)
                    local spatulaRot = GetEntityRotation(baseSpatulaObj)
                    
                    DeleteEntity(baseSpatulaObj)
                    ClientProps[spatulaPropId] = nil
                    
                    TriggerServerEvent('nn_cooking:hideSpatula', spatula.spatulaIndex)
                    
                    local clientSpatulaObj = CreateObject(GetHashKey('sn_spatula'), spatulaCoords.x, spatulaCoords.y, spatulaCoords.z, true, false, false)
                    SetEntityRotation(clientSpatulaObj, spatulaRot.x, spatulaRot.y, spatulaRot.z)
                    
                    AttachEntityToEntity(clientSpatulaObj, playerPed, GetPedBoneIndex(playerPed, 57005), 0.23, -0.078, -0.12, 90.0, 235.0, 145.0, true, true, false, true, 1, true)
                    State.HoldingSpatula = {
                        spatulaObject = clientSpatulaObj,
                        spatulaIndex = spatula.spatulaIndex
                    }
                    State.HoldingSpatulaIndex = spatula.spatulaIndex
                    
                    for _, spatulaData in pairs(State.Spatulas) do
                        SetupSpatulaInteractions(spatulaData)
                    end
                end
            })
        end
    end
    
    if #interactions > 0 then
        local coords = spatula.coords
        if not coords then
            local spatulaPropId = GeneratePropId('base_spatula', spatula.spatulaIndex)
            local spatulaObj = ClientProps[spatulaPropId]
            if spatulaObj then
                coords = GetEntityCoords(spatulaObj)
            end
        end
        
        if coords then
            local int = exports['is_interaction']:addInteractionCoords('spatula-' .. spatula.spatulaIndex, coords, {
                hideSquare = true,
                checkVisibility = false,
                showInVehicle = false,
                distance = 1.5,
                distanceText = 1.0,
                offset = {
                    text = {x = 0.0, y = 0.0, z = 0.4},
                    target = {x = 0.0, y = 0.0, z = 0.4}
                },
                bone = nil,
                options = interactions
            })
            
            State.Interactions['spatula-' .. spatula.spatulaIndex] = int
        end
    end
end

function SetupTrashCanInteractions(data)
    if not State.TrashCans[data.trashIndex] then
        State.TrashCans[data.trashIndex] = data
    end
    
    local trashCan = State.TrashCans[data.trashIndex]
    local trashPropId = GeneratePropId('base_trash', trashCan.trashIndex)
    local trashObj = ClientProps[trashPropId]
    if not trashObj then
        return
    end
    
    local coords = GetEntityCoords(trashObj)

    local interactions = {}

    table.insert(interactions, {
        name = "trash_throw_burnt" .. trashCan.trashIndex,
        icon = "fa-solid fa-trash",
        label = T('throw_burnt_item'),
        key = "E",
        duration = 500,
        onSelect = function()
            if State.CurrentAttachedFries and State.CurrentAttachedFries.burnt then
                local playerPed = PlayerPedId()
                
                local basketInfo = State.CurrentAttachedFries.basketInfo
                
                if DoesEntityExist(State.CurrentAttachedFries.friesObject) then
                    DeleteEntity(State.CurrentAttachedFries.friesObject)
                end
                
                TriggerServerEvent('nn_cooking:throwBurntItem', trashCan.trashIndex, 'burnt_fries')
                
                State.CurrentAttachedFries = {
                    basketObject = State.CurrentAttachedFries.basketObject,
                    basketInfo = basketInfo,
                    empty = true
                }
                return
            end
            
            if State.CurrentAttachedMeat and State.CurrentAttachedMeat.burnt then
                if DoesEntityExist(State.CurrentAttachedMeat.meatObject) then
                    DeleteEntity(State.CurrentAttachedMeat.meatObject)
                end
                
                TriggerServerEvent('nn_cooking:throwBurntItem', trashCan.trashIndex, 'burnt_meat')
                State.CurrentAttachedMeat = nil
                return
            end
            
            bridge.notification.show({
                message = "You don't have any burnt items to throw away",
                style = "error"
            })
        end
    })

    table.insert(interactions, {
        name = "trash_empty" .. trashCan.trashIndex,
        icon = "fa-solid fa-recycle",
        label = T('empty_trash', trashCan.currentItems, trashCan.maxItems),
        key = "E",
        duration = 500,
        onSelect = function()
            local playerPed = PlayerPedId()
            
            bridge.progressbar.show({
                duration = math.random(3000, 5000),
                title = "Emptying trash...",
                useWhileDead = false,
                canCancel = true,
                animation = {
                    dict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
                    anim = "machinic_loop_mechandplayer",
                    flags = 16,
                },
                disable = {
                    move = true,
                    car = true,
                    combat = true,
                    mouse = false,
                },
            }, function()
                TriggerServerEvent('nn_cooking:emptyTrash', trashCan.trashIndex)
                
                RequestAnimDict('missfbi4prepp1')
                while not HasAnimDictLoaded('missfbi4prepp1') do
                    Wait(1)
                end
                
                TaskPlayAnim(playerPed, 'missfbi4prepp1', '_bag_walk_garbage_man', 6.0, -6.0, -1, 49, 0, 0, 0, 0)
                
                local trashBagModel = `prop_cs_rub_binbag_01`
                RequestModel(trashBagModel)
                while not HasModelLoaded(trashBagModel) do
                    Wait(1)
                end
                
                local trashBagObject = CreateObject(trashBagModel, 0, 0, 0, true, true, true)
                AttachEntityToEntity(trashBagObject, playerPed, GetPedBoneIndex(playerPed, 57005), 0.12, 0.0, -0.05, 220.0, 120.0, 0.0, true, true, false, true, 1, true)
                
                State.HeldTrashBag = trashBagObject
                
                StopAnimTask(playerPed, "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", "machinic_loop_mechandplayer", 1.0)
                
                AnimCheck()
                
                SetModelAsNoLongerNeeded(trashBagModel)
            end, function()
                StopAnimTask(playerPed, "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", "machinic_loop_mechandplayer", 1.0)
                bridge.notification.show({
                    message = "Trash collection cancelled",
                    style = "error"
                })
            end)
        end
    })

    exports['is_interaction']:addInteractionLocalEntity('trash-can-' .. trashCan.trashIndex, trashObj, {
        hideSquare = false,
        checkVisibility = false,
        showInVehicle = false,
        distance = 3.0,
        distanceText = 1.0,
        offset = {
            text = {x = 0.0, y = 0.0, z = 0.8},
            target = {x = 0.0, y = 0.0, z = 0.5}
        },
        bone = nil,
        options = interactions
    })
end

RegisterCommand('er', function()
    local coords = vector3(-1193.25, -875.45, 13.61)
    RequestModel(GetHashKey('a_f_m_bevhills_01'))
    while not HasModelLoaded(GetHashKey('a_f_m_bevhills_01')) do
        Wait(100)
    end
    local ped = CreatePed(0, GetHashKey('a_f_m_bevhills_01'), coords.x, coords.y, coords.z, 270.0, false, true)
    TaskGoStraightToCoord(ped, vector3(-1184.95, -874.23, 13.85), 1.0, -1, 0.0, 0.0)
    TaskGoStraightToCoord(ped, vector3(-1179.46, -885.05, 13.83), 1.0, -1, 0.0, 0.0)
    TaskGoStraightToCoord(ped, vector3(-1187.67, -889.71, 13.89), 1.0, -1, 0.0, 0.0)
end)

function AnimCheck()
    CreateThread(function()
        while State.HeldTrashBag and DoesEntityExist(State.HeldTrashBag) do
            local playerPed = PlayerPedId()
            if not IsEntityPlayingAnim(playerPed, 'missfbi4prepp1', '_bag_walk_garbage_man', 3) then
                TaskPlayAnim(playerPed, 'missfbi4prepp1', '_bag_walk_garbage_man', 6.0, -6.0, -1, 49, 0, 0, 0, 0)
            end
            Wait(1000)
        end
    end)
end

function SetupDumpsterInteractions()
    for restaurantName, restaurant in pairs(Config.Restaurants) do
        if restaurant.Dumpsters then
            for i, dumpsterCoords in ipairs(restaurant.Dumpsters) do
                local interactions = {}
                
                table.insert(interactions, {
                    name = "dumpster_throw_trash",
                    icon = "fa-solid fa-trash",
                    label = T('throw_trash_bag'),
                    key = "E",
                    duration = 500,
                    onSelect = function()
                        if not State.HeldTrashBag or not DoesEntityExist(State.HeldTrashBag) then
                            bridge.notification.show({
                                message = "You don't have a trash bag to throw",
                                style = "error"
                            })
                            return
                        end
                        
                        local playerPed = PlayerPedId()
                        
                        bridge.progressbar.show({
                            duration = 2000,
                            title = "Throwing trash bag...",
                            useWhileDead = false,
                            canCancel = false,
                            animation = {
                                dict = "amb@world_human_janitor@male@idle_a",
                                anim = "idle_a",
                            },
                            disable = {
                                move = true,
                                car = true,
                                combat = true,
                            },
                        }, function()
                            if State.HeldTrashBag and DoesEntityExist(State.HeldTrashBag) then
                                DeleteEntity(State.HeldTrashBag)
                                State.HeldTrashBag = nil
                                ClearPedTasks(playerPed)
                            end
                        end)
                    end
                })
                
                exports['is_interaction']:addInteractionCoords('dumpster-' .. restaurantName .. '-' .. i, dumpsterCoords, {
                    hideSquare = false,
                    checkVisibility = false,
                    showInVehicle = false,
                    distance = 3.0,
                    distanceText = 1.5,
                    offset = {
                        text = {x = 0.0, y = 0.0, z = 0.8},
                        target = {x = 0.0, y = 0.0, z = 0.5}
                    },
                    bone = nil,
                    options = interactions
                })
            end
        end
    end
end

RegisterNetEvent('nn_cooking:cleanupTrashBag', function()
    if State.HeldTrashBag and DoesEntityExist(State.HeldTrashBag) then
        DeleteEntity(State.HeldTrashBag)
        State.HeldTrashBag = nil
        ClearPedTasks(PlayerPedId())
    end
end)

function SetupFridgeInteractions(fridge)
    if not fridge or not fridge.coords then
        return
    end

    local interactions = {}

    table.insert(interactions, {
        name = "fridge_interaction" .. fridge.fridgeIndex,
        icon = "fa-solid fa-box",
        label = T('open_fridge'),
        key = "E",
        duration = 500,
        onSelect = function()
            if Config.Inventory == 'qs' then
                exports['qs-inventory']:RegisterStash(fridge.fridgeIndex, Config.Fridges.Slots, Config.Fridges.Weight)
            else
                TriggerServerEvent("nn_food:server:openStash", fridge.fridgeIndex, Config.Fridges.Slots, Config.Fridges.Weight)
            end
        end
    })

    local int = exports['is_interaction']:addInteractionCoords('fridge-' .. fridge.fridgeIndex, fridge.coords, {
        hideSquare = false,
        checkVisibility = false,
        showInVehicle = false,
        distance = 3.0,
        distanceText = 1.5,
        offset = {
            text = {x = 0.0, y = 0.0, z = 0.8},
            target = {x = 0.0, y = 0.0, z = 0.5}
        },
        bone = nil,
        options = interactions
    })

    State.Interactions['fridge-' .. fridge.fridgeIndex] = int
end

function SetupDrinksMachineInteractions(drinksMachine)
    if not drinksMachine or not drinksMachine.coords then
        return
    end

    local interactions = {}
    table.insert(interactions, {
        name = "drinks_machine_interaction" .. drinksMachine.drinksMachineIndex,
        icon = "fa-solid fa-whiskey-glass",
        label = T('drinks_machine'),
        key = "E",
        duration = 500,
        onSelect = function()
            OpenDrinksMachine(drinksMachine.drinksMachineIndex)
        end
    })

    local coords = vector3(drinksMachine.coords.x, drinksMachine.coords.y, drinksMachine.coords.z)
    local int = exports['is_interaction']:addInteractionCoords('drinks-machine-' .. drinksMachine.drinksMachineIndex, coords, {
        hideSquare = false,
        checkVisibility = false,
        showInVehicle = false,
        distance = 3.0,
        distanceText = 1.5,
        offset = {
            text = {x = 0.0, y = 0.0, z = 0.3},
            target = {x = 0.0, y = 0.0, z = 0.3}
        },
        bone = nil,
        options = interactions
    })

    State.Interactions['drinks-machine-' .. drinksMachine.drinksMachineIndex] = int
end

function OpenDrinksMachine(machineIndex)
    Lib.Callback('nn_drinks:openMachine', function(success, data)
        if success then
            -- Open the UI
            SendNUIMessage({
                action = 'setVisibility',
                data = {
                    visible = true,
                    page = 'drinks_machine'
                }
            })

            SendNUIMessage({
                action = 'setDrinksMachineData',
                data = data
            })

            SetNuiFocus(true, true)
            TriggerScreenblurFadeIn(200)
            
            -- Store the current machine index for callbacks
            State.CurrentDrinksMachine = machineIndex
        else
            TriggerEvent('QBCore:Notify', data or 'Failed to open drinks machine', 'error')
        end
    end, machineIndex)
end

RegisterNetEvent('nn_cooking:setupDrinksMachineInteractions', function(drinksMachine)
    State.DrinksMachines[drinksMachine.drinksMachineIndex] = drinksMachine
    SetupDrinksMachineInteractions(drinksMachine)
end)

RegisterNetEvent('nn_cooking:refreshDrinksMachine', function(drinksMachine)
    State.DrinksMachines[drinksMachine.drinksMachineIndex] = drinksMachine
    SetupDrinksMachineInteractions(drinksMachine)
end)