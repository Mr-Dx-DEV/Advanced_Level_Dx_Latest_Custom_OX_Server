-- Check if player has impound job permissions for a garage location
local function hasImpoundPermission(playerId, garageId)
    local garageLocations = getPlayerAvailableGarageLocations(playerId)
    local garage = nil
    
    if garageLocations then
        garage = garageLocations[garageId]
    end
    
    if not garage then
        return false
    end
    
    local hasPermission = garage.hasImpoundJob
    if not hasPermission then
        return false
    end
    
    return hasPermission
end

-- Format timestamp for impound retrieval date
local function formatRetrievalDate(hoursFromNow)
    local currentTime = os.time()
    local futureTime = currentTime + (hoursFromNow * 3600)
    local formattedDate = os.date("%a %b %d %Y %H:%M:%S GMT%z", futureTime)
    return formattedDate
end

-- Main impound vehicle function
local function impoundVehicle(playerId, vehiclePlate, impoundLocation, impoundReason, canRetrieve, retrievalDate, retrievalCost, vehicleProps, posX, posY, posZ, posHeading, damageData)
    if not vehiclePlate then
        return false
    end
    
    -- Convert hours to formatted date if retrievalDate is a number
    if type(retrievalDate) == "number" then
        retrievalDate = formatRetrievalDate(retrievalDate)
    end
    
    -- Get vehicle data from database
    local vehicleData = getVehicleData(playerId, false, vehiclePlate)
    if not vehicleData then
        return false
    end
    
    -- Get player information
    local playerInfo = Framework.Server.GetPlayerInfo(playerId)
    if not playerInfo then
        return false
    end
    
    -- Create impound data JSON
    local impoundData = {
        charname = playerInfo.name,
        reason = impoundReason,
        retrieval_date = retrievalDate,
        retrieval_cost = retrievalCost,
        original_garage_id = vehicleData.garage_id
    }
    local impoundDataJson = json.encode(impoundData)
    
    -- Prepare damage JSON if provided
    local damageJson = nil
    if damageData then
        damageJson = json.encode(damageData)
        if not damageJson then
            damageJson = nil
        end
    end
    
    -- Update vehicle in database to impounded status
    local updateQuery = Framework.Queries.ImpoundVehicle:format(Framework.VehiclesTable)
    local updateParams = {
        canRetrieve,          -- impound_retrievable
        impoundDataJson,      -- impound_data
        impoundLocation,      -- garage_id
        posX,                 -- pos_x
        posY,                 -- pos_y
        posZ,                 -- pos_z
        damageJson,           -- damage
        vehiclePlate          -- plate (WHERE condition)
    }
    
    MySQL.update.await(updateQuery, updateParams)
    
    -- Update vehicle properties if configured and provided
    if Config.SaveVehiclePropsOnInsert and vehicleProps then
        local propsQuery = Framework.Queries.UpdateProps:format(Framework.VehiclesTable, Framework.VehProps)
        local propsParams = {
            json.encode(vehicleProps),
            vehiclePlate
        }
        MySQL.update.await(propsQuery, propsParams)
    end
    
    -- Notify player of successful impound
    Framework.Server.Notify(playerId, Locale.vehicleImpoundSuccess, "success")
    
    -- Send webhook notification
    local webhookFields = {
        {
            key = "Plate",
            value = vehiclePlate
        },
        {
            key = "Impounded by",
            value = playerInfo.name
        },
        {
            key = "Reason",
            value = impoundReason
        },
        {
            key = "Retrievable by owner?",
            value = canRetrieve and "Yes" or "No"
        },
        {
            key = "Retrieval Date",
            value = (canRetrieve and retrievalDate) and retrievalDate or "N/A"
        },
        {
            key = "Retrieval Cost",
            value = (canRetrieve and retrievalCost) and retrievalCost or "N/A"
        }
    }
    
    sendWebhook(playerId, Webhooks.Impound, "Vehicle Impounded", "success", webhookFields)
    
    return true
end

-- Export the impound function
exports("impoundVehicle", impoundVehicle)

-- Server callback for impounding a vehicle
lib.callback.register("jg-advancedgarages:server:impound-vehicle", function(playerId, impoundData, networkId, vehiclePlate, vehicleProps, posX, posY, posZ, damageData)
    -- Check if player has permission to impound at this location
    local hasPermission = hasImpoundPermission(playerId, impoundData.impoundId)
    if not hasPermission then
        return false
    end
    
    -- Extract impound parameters
    local reason = impoundData.reason
    local retrievalDate = impoundData.retrievalDate
    local retrievalCost = impoundData.retrievalCost
    local retrievable = impoundData.retrievable
    local impoundId = impoundData.impoundId
    
    -- Execute impound
    local success = impoundVehicle(
        playerId,
        vehiclePlate,
        impoundId,
        reason,
        retrievable,
        retrievalDate,
        retrievalCost,
        vehicleProps,
        posX,
        posY,
        posZ,
        damageData
    )
    
    if not success then
        return false
    end
    
    -- Remove vehicle from outside vehicles tracking
    Globals.OutsideVehicles[vehiclePlate] = nil
    
    -- Handle Qbox framework persistence
    if Config.Framework == "Qbox" then
        local vehicleEntity = NetworkGetEntityFromNetworkId(networkId)
        exports.qbx_core:DisablePersistence(vehicleEntity)
    end
    
    -- Delete the physical vehicle
    local vehicleEntity = NetworkGetEntityFromNetworkId(networkId)
    deleteVehicle(vehicleEntity, networkId, vehiclePlate)
    
    return true
end)

-- Server callback for removing/retrieving vehicle from impound
lib.callback.register("jg-advancedgarages:server:impound-remove-vehicle", function(playerId, impoundId, garageId, vehiclePlate, spawnVehicle)
    local networkId = nil
    
    -- Get garage location data
    local garageLocations = getPlayerAvailableGarageLocations(playerId)
    local garage = nil
    
    if garageLocations then
        garage = garageLocations[impoundId]
    end
    
    if not garage then
        return false
    end
    
    -- Get vehicle data from database
    local vehicleData = getVehicleData(playerId, false, vehiclePlate)
    if not vehicleData then
        Framework.Server.Notify(playerId, "Could not get vehicle data from database", "error")
        return false
    end
    
    -- Prepare vehicle spawn data
    local spawnData = {}
    
    -- Parse vehicle properties
    local vehicleProps = false
    if vehicleData[Framework.VehProps] then
        vehicleProps = json.decode(vehicleData[Framework.VehProps])
        if not vehicleProps then
            vehicleProps = false
        end
    end
    spawnData.props = vehicleProps
    
    -- Set vehicle condition values with defaults
    spawnData.fuel = vehicleData.fuel or 100.0
    spawnData.engine = vehicleData.engine or 1000.0
    spawnData.body = vehicleData.body or 1000.0
    
    -- Parse damage data
    local damageData = false
    if vehicleData.damage then
        damageData = json.decode(vehicleData.damage)
        if not damageData then
            damageData = false
        end
    end
    spawnData.damage = damageData
    
    -- Check impound permissions and handle retrieval fees
    local hasPermission = hasImpoundPermission(playerId, impoundId)
    if not hasPermission then
        -- Check if vehicle is impounded and retrievable
        local isImpounded = (vehicleData.impound == true or vehicleData.impound == 1)
        local isRetrievable = (vehicleData.impound_retrievable == true or vehicleData.impound_retrievable == 1)
        
        if isImpounded and isRetrievable then
            -- Parse impound data
            local impoundData = json.decode(vehicleData.impound_data or "{}")
            local retrievalDate = impoundData.retrieval_date
            local retrievalCost = impoundData.retrieval_cost or 0
            
            -- Handle retrieval fee
            if retrievalCost > 0 then
                local paymentSuccess = Framework.Server.PlayerRemoveMoney(playerId, retrievalCost, "bank")
                if not paymentSuccess then
                    return false
                end
                
                -- Pay into society fund if configured
                if Config.ImpoundFeesSocietyFund then
                    Framework.Server.PayIntoSocietyFund(Config.ImpoundFeesSocietyFund, retrievalCost)
                end
            end
        end
    end
    
    -- Handle vehicle spawning if requested
    local spawnCoords = nil
    if spawnVehicle then
        -- Check player distance from impound location
        if garage and garage.coords then
            local maxDistance = garage.distance or 15.0
            local playerCoords = GetEntityCoords(GetPlayerPed(playerId))
            local garageCoords = garage.coords.xyz
            local distance = #(playerCoords - garageCoords)
            
            if distance > maxDistance then
                Framework.Server.Notify(playerId, "You are too far away from the impound", "error")
                return false
            end
        end
        
        -- Find spawn coordinates
        spawnCoords = findVehicleSpawnCoords(garage.spawn)
        if not spawnCoords then
            Framework.Server.Notify(playerId, "Impound location is missing/has no valid spawn coords", "error")
            print("^1[ERROR] Impound is missing/has no valid spawn coords", impoundId)
            return false
        end
        
        -- Spawn vehicle if using server setter
        if Config.SpawnVehiclesWithServerSetter then
            local spawnInside = not Config.DoNotSpawnInsideVehicle
            
            networkId = spawnVehicleServer(
                playerId,
                vehicleData.id or 0,
                vehicleData.model,
                vehiclePlate,
                spawnCoords,
                spawnInside,
                spawnData,
                "personal"
            )
            
            if not networkId then
                Framework.Server.Notify(playerId, "Could not spawn vehicle - vehicle was not not removed from impound", "error")
                return false
            end
            
            -- Track spawned vehicle
            Globals.OutsideVehicles[vehiclePlate] = networkId
        end
    end
    
    -- Update database to remove from impound
    local updateQuery = Framework.Queries.ImpoundReturnToGarage:format(Framework.VehiclesTable)
    local updateParams = {
        garageId,                           -- garage_id
        spawnVehicle and 0 or 1,           -- stored (0 = outside, 1 = stored)
        vehiclePlate                        -- plate (WHERE condition)
    }
    
    MySQL.update.await(updateQuery, updateParams)
    
    -- Notify if not spawning vehicle (admin action)
    if not spawnVehicle then
        Framework.Server.Notify(playerId, Locale.vehicleImpoundReturnedToOwnerSuccess, "success")
    end
    
    return true, networkId, vehicleData, spawnData, spawnCoords
end)

-- Server callback for when impounded vehicle is driven out
lib.callback.register("jg-advancedgarages:server:impound-vehicle-driven-out", function(playerId, vehiclePlate, networkId)
    -- Track the vehicle as outside
    Globals.OutsideVehicles[vehiclePlate] = networkId
    
    -- Enable persistence for Qbox framework
    if Config.Framework == "Qbox" then
        local vehicleEntity = NetworkGetEntityFromNetworkId(networkId)
        exports.qbx_core:EnablePersistence(vehicleEntity)
    end
end)

-- Register impound command
lib.addCommand(Config.ImpoundCommand, false, function(playerId)
    TriggerClientEvent("jg-advancedgarages:client:show-impound-form", playerId)
end)