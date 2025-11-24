-- Advanced Garages Server Script - Deobfuscated

-- Function to find available vehicle spawn coordinates
function findVehicleSpawnCoords(spawnPoints)
    local spawnPointType = type(spawnPoints)
    
    if spawnPointType == "table" then
        local tableType = type(spawnPoints)
        if tableType ~= "vector4" then
            local innerTableType = type(spawnPoints)
            if innerTableType ~= "vector3" then
                -- Iterate through spawn points array
                for index, spawnPoint in pairs(spawnPoints) do
                    local nearestVehicle = lib.getClosestVehicle(spawnPoint.xyz, 2.5)
                    if not nearestVehicle then
                        return spawnPoint
                    end
                end
                -- If all spawn points are occupied, recursively check the first one
                return findVehicleSpawnCoords(spawnPoints[1])
            end
        end
    else
        -- Handle single spawn point (vector4)
        local attempts = 1
        local currentSpawnPoint = spawnPoints
        
        while attempts <= 10 do
            local nearestVehicle = lib.getClosestVehicle(currentSpawnPoint.xyz, 2.5)
            if not nearestVehicle then
                return currentSpawnPoint
            end
            
            local newX = currentSpawnPoint.x
            local newY = currentSpawnPoint.y
            local heading = currentSpawnPoint.w
            
            -- Adjust coordinates based on heading direction
            if heading >= 0 and heading <= 45 then
                newY = newY + 5
            elseif heading >= 315 and heading <= 360 then
                newY = newY + 5
            end
            
            if heading >= 46 and heading <= 135 then
                newX = newX - 5
            end
            
            if heading >= 136 and heading <= 225 then
                newY = newY - 5
            end
            
            if heading >= 226 and heading <= 314 then
                newX = newX + 5
            end
            
            -- Create new spawn point with adjusted coordinates
            currentSpawnPoint = vector4(newX, newY, currentSpawnPoint.z, currentSpawnPoint.w)
            attempts = attempts + 1
        end
        
        return currentSpawnPoint
    end
end

-- Function to delete a vehicle (with AdvancedParking support)
function deleteVehicle(vehicleEntity, vehicleData, vehiclePlate, forceDelete)
    local advancedParkingState = GetResourceState("AdvancedParking")
    
    if advancedParkingState == "started" then
        if vehicleData or vehiclePlate then
            -- Delete using AdvancedParking with vehicle data
            exports.AdvancedParking:DeleteVehicleUsingData(nil, vehicleData, vehiclePlate, false)
        else
            -- Delete using AdvancedParking with vehicle entity
            exports.AdvancedParking:DeleteVehicle(vehicleEntity, false)
        end
    else
        -- Fallback to native delete
        DeleteEntity(vehicleEntity)
    end
end

-- Function to get nearby players with their information
function getNearbyPlayers(excludePlayerId, playerCoords, maxDistance, includeSelf)
    local nearbyPlayerList = lib.getNearbyPlayers(playerCoords, maxDistance)
    local playersInfo = {}
    
    for _, playerData in ipairs(nearbyPlayerList) do
        if not includeSelf then
            local playerId = playerData.id
            if excludePlayerId == playerId then
                goto continue
            end
        end
        
        local playerIndex = #playersInfo + 1
        local playerInfo = {}
        
        playerInfo.id = playerData.id
        playerInfo.identifier = Framework.Server.GetPlayerIdentifier(playerData.id)
        
        local playerDetails = Framework.Server.GetPlayerInfo(playerData.id)
        if playerDetails then
            playerInfo.name = playerDetails.name
        end
        
        playersInfo[playerIndex] = playerInfo
        ::continue::
    end
    
    return playersInfo
end

-- Function to get all garages and impound locations
function getAllGaragesAndImpounds()
    -- Deep clone all garage configurations
    local publicGarages = lib.table.deepclone(Config.GarageLocations)
    local jobGarages = lib.table.deepclone(Config.JobGarageLocations)
    local gangGarages = lib.table.deepclone(Config.GangGarageLocations)
    local impoundLots = lib.table.deepclone(Config.ImpoundLocations)
    local privateGarages = {}
    
    -- Fetch private garages from database
    local privateGarageData = MySQL.query.await("SELECT * FROM player_priv_garages")
    
    for _, garageRow in ipairs(privateGarageData) do
        local garageName = garageRow.name
        local garageConfig = {}
        
        -- Set garage coordinates
        garageConfig.coords = vector3(garageRow.x, garageRow.y, garageRow.z)
        garageConfig.spawn = vector4(garageRow.x, garageRow.y, garageRow.z, garageRow.h)
        garageConfig.distance = garageRow.distance
        garageConfig.type = garageRow.type
        garageConfig.hideBlip = Config.PrivGarageHideBlips
        garageConfig.blip = Config.PrivGarageBlip
        
        privateGarages[garageName] = garageConfig
    end
    
    -- Merge all garage types into one comprehensive list
    local allGaragesAndImpounds = lib.table.merge(
        lib.table.merge(
            lib.table.merge(
                lib.table.merge(impoundLots, privateGarages),
                gangGarages
            ),
            jobGarages
        ),
        publicGarages
    )
    
    if not allGaragesAndImpounds then
        allGaragesAndImpounds = {}
    end
    
    return allGaragesAndImpounds
end

-- Register callback for nearby players
lib.callback.register("jg-advancedgarages:server:nearby-players", function(source, excludePlayerId, playerCoords, maxDistance, includeSelf)
    return getNearbyPlayers(excludePlayerId, playerCoords, maxDistance, includeSelf)
end)

-- Initialize SQL when resource starts
AddEventHandler("onResourceStart", function(resourceName)
    local currentResourceName = GetCurrentResourceName()
    if currentResourceName ~= resourceName then
        return
    end
    
    initSQL()
end)