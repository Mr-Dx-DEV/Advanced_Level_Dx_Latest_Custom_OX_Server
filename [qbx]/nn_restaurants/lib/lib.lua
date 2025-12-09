-- Lib initialisation
local isReady = false

-- Create Lib wrapper for ox_lib callbacks (server-side)
Lib = {}

-- Register server callback - wraps nn_lib style to ox_lib style
function Lib.registerCallback(name, callback)
    lib.callback.register(name, function(source, ...)
        local result
        -- Wrapper function that captures the callback result
        local function cb(data)
            result = data
        end
        -- Call the original callback with source, cb, and any additional args
        callback(source, cb, ...)
        return result
    end)
end

-- State des restaurants
State = {
    Fryers = {},
    FriesPlates = {},
    Grills = {},
    Spatulas = {},
    TrashCans = {},
    Fridges = {},
    DrinksMachines = {}
}

-- Vérifie la version de QBCore Inventory >= 2
local function isQBInventoryV2()
    local version = tonumber(string.sub(GetResourceMetadata("qb-inventory", "version", 0), 1, 1))
    return version >= 2
end

-- RegisterStash compatible avec tous les inventaires
function RegisterStash(stashName, slots, weight)
    local inv = Config.Inventory
    if inv == "ox" then
        exports.ox_inventory:RegisterStash(stashName, "Fridge", slots, weight)
    elseif inv == "qs" then
        exports["qs-inventory"]:RegisterStash(stashName, slots, weight)
    elseif inv == "origen" then
        exports.origen_inventory:registerStash(stashName, "Fridge", slots, weight)
    elseif inv == "tgiann" then
        -- support à ajouter si nécessaire
    end
end

-- Ouvre un inventaire (stash) compatible avec tous les inventaires
function OpenStash(name, slots, weight, player)
    local inv = Config.Inventory
    if inv == "qb" then
        if isQBInventoryV2() then
            return exports["qb-inventory"]:OpenInventory(player, name, {slots = slots, maxweight = weight})
        else
            TriggerClientEvent("nn_food:client:qb-inventory:openStash", player, name, {slots = slots, weight = weight})
        end
    elseif inv == "ox" then
        exports.ox_inventory:forceOpenInventory(player, "stash", name)
    elseif inv == "ps" then
        TriggerClientEvent("nn_food:client:ps-inventory:openStash", player, name, {label = "Fridge", slots = slots, maxweight = weight})
    elseif inv == "codem" then
        TriggerClientEvent("nn_food:client:codem-inventory:openStash", player, name, {label = "Fridge", slots = slots, weight = weight})
    elseif inv == "core" then
        exports.core_inventory:openInventory(player, name, "stash", slots, weight, true, nil, false)
    elseif inv == "origen" then
        exports.origen_inventory:OpenInventory(player, "stash", name)
    elseif inv == "tgiann" then
        exports.tgiann_inventory:ForceOpenInventory(player, "stash", name, {maxWeight = weight, slots = slots, label = "Fridge"})
    end
end

-- Spawn les props des restaurants
function SpawnRestaurantProps()
    Citizen.CreateThread(function()
        -- Wait for all server files to load
        while not SetupBaskets do
            Wait(100)
        end
        Wait(3000)
        for restaurantName, restaurant in pairs(Config.Restaurants) do
            if restaurant.Enabled then
                -- Spawn Fryers
                for _, fryerCfg in pairs(restaurant.Fryers.coords) do
                    local coords = vector3(fryerCfg.x, fryerCfg.y, fryerCfg.z)
                    local rotation = vector3(0, 0, fryerCfg.w)
                    TriggerClientEvent("nn_cooking:spawnBaseFryer", -1, #State.Fryers + 1, coords, rotation)
                    table.insert(State.Fryers, {
                        fryerIndex = #State.Fryers + 1,
                        restaurantName = restaurantName,
                        coords = coords,
                        rotation = rotation,
                        fryerBaskets = {},
                        oilSlots = {},
                        fries = {}
                    })
                    SetupBaskets(#State.Fryers, "outside")
                    Wait(1000)
                end

                -- Spawn Fries Plates
                for plateIndex, plateCfg in pairs(restaurant.FriesPlates.plates) do
                    local coords = vector3(plateCfg.plateCoords.coords.x, plateCfg.plateCoords.coords.y, plateCfg.plateCoords.coords.z)
                    local rotation = vector3(plateCfg.plateCoords.rotation.x, plateCfg.plateCoords.rotation.y, plateCfg.plateCoords.rotation.z)
                    TriggerClientEvent("nn_cooking:spawnBasePlate", -1, #State.FriesPlates + 1, restaurant.FriesPlates.prop, coords, rotation)
                    table.insert(State.FriesPlates, {
                        friesPlateIndex = #State.FriesPlates + 1,
                        cfgPlateIndex = plateIndex,
                        restaurantName = restaurantName,
                        coords = coords,
                        rotation = rotation,
                        propModel = restaurant.FriesPlates.prop,
                        fries = {},
                        meat = {}
                    })
                    Wait(1000)
                end

                -- Spawn Grills
                for grillIndex, _ in pairs(restaurant.Grills) do
                    table.insert(State.Grills, {
                        grillIndex = #State.Grills + 1,
                        restaurantName = restaurantName,
                        slotIndex = grillIndex,
                        slots = {}
                    })
                end

                -- Spawn Spatulas (corrigé : sans CreateThread)
                for spatulaIndex, spatulaCfg in pairs(restaurant.Spatulas.objects) do
                    if spatulaCfg.coords and spatulaCfg.rotation then
                        local coords = vector3(spatulaCfg.coords.x, spatulaCfg.coords.y, spatulaCfg.coords.z)
                        local rotation = vector3(spatulaCfg.rotation.x, spatulaCfg.rotation.y, spatulaCfg.rotation.z)

                        local spatulaId = #State.Spatulas + 1

                        TriggerClientEvent("nn_cooking:spawnBaseSpatula", -1, spatulaId, restaurant.Spatulas.prop, coords, rotation)

                        table.insert(State.Spatulas, {
                            restaurantName = restaurantName,
                            spatulaIndex = spatulaId,
                            localObjectIndex = spatulaIndex,
                            coords = coords,
                            rotation = rotation,
                            propModel = restaurant.Spatulas.prop
                        })

                        Wait(1000)
                    else
                        print("Erreur: coords ou rotation manquante pour spatulaIndex", spatulaIndex)
                    end
                end

                -- Spawn TrashCans
                for _, trashCfg in pairs(restaurant.TrashCans) do
                    local coords = vector3(trashCfg.coords.x, trashCfg.coords.y, trashCfg.coords.z)
                    local rotation = vector3(trashCfg.rotation.x, trashCfg.rotation.y, trashCfg.rotation.z)
                    TriggerClientEvent("nn_cooking:spawnBaseTrashCan", -1, #State.TrashCans + 1, trashCfg.prop, coords, rotation)
                    table.insert(State.TrashCans, {
                        restaurantName = restaurantName,
                        trashIndex = #State.TrashCans + 1,
                        coords = coords,
                        rotation = rotation,
                        propModel = trashCfg.prop,
                        currentItems = 0,
                        maxItems = trashCfg.limit,
                        items = {}
                    })
                    Wait(1000)
                end

                -- Spawn Fridges
                for fridgeIndex, fridgeCoords in ipairs(restaurant.Fridges) do
                    local fridgeName = restaurantName .. "_fridge_" .. fridgeIndex
                    table.insert(State.Fridges, {coords = fridgeCoords, restaurantName = restaurantName, fridgeIndex = fridgeName})
                    RegisterStash(fridgeName, Config.Fridges.Slots, Config.Fridges.Weight)
                    Wait(1000)
                end

                -- Spawn Drinks Machines
                for _, machineCfg in pairs(restaurant.DrinksMachines) do
                    local machineType = Config.DrinksMachines[machineCfg.type]
                    if machineType then
                        table.insert(State.DrinksMachines, {
                            coords = machineCfg.coords,
                            restaurantName = restaurantName,
                            restaurantId = restaurantName,
                            drinksMachineIndex = #State.DrinksMachines + 1,
                            type = machineCfg.type,
                            machineLabel = machineType.label,
                            drinks = machineType.drinks,
                            model = machineType.model,
                            isInUse = false,
                            currentUser = nil
                        })
                    end
                end

                Wait(1000)
            end
        end
        isReady = true
    end)
end

-- Callback pour signaler que le restaurant est prêt
Lib.registerCallback("nn_resto:ready", function(_, cb)
    while not isReady do Wait(100) end
    cb(true)
end)

-- Sync des props à la demande du client
RegisterNetEvent("nn_food:askForProps", function()
    local src = source
    while not isReady do Wait(100) end
    TriggerClientEvent("nn_cooking:syncCookingState", src, State)
end)

-- Spawn props au démarrage de la ressource
AddEventHandler("onResourceStart", function(resourceName)
    if GetCurrentResourceName() ~= resourceName then return end
    SpawnRestaurantProps()
end)

-- Gestion des DrinksMachines lors de la déconnexion d’un joueur
AddEventHandler("playerDropped", function()
    local src = source
    for _, machine in pairs(State.DrinksMachines) do
        if machine.currentUser == src then
            machine.isInUse = false
            machine.currentUser = nil
            break
        end
    end
end)
