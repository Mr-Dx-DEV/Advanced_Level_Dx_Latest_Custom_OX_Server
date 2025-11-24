-- Store player interior data (garage info, routing buckets)
local playerInteriorData = {}

-- Server callback for entering garage interior
lib.callback.register("jg-advancedgarages:server:enter-interior", function(playerId, garageData, interiorData)
    -- Get player identifier
    local playerIdentifier = Framework.Server.GetPlayerIdentifier(playerId)
    if not playerIdentifier then
        return false
    end
    
    -- Store original routing bucket if configured to return to it later
    local originalBucket = 0
    if Config.ReturnToPreviousRoutingBucket then
        originalBucket = GetPlayerRoutingBucket(playerId)
    end
    
    -- Generate random routing bucket for interior isolation
    local newBucket = math.random(100, 999)
    
    -- Set player to new routing bucket
    SetPlayerRoutingBucket(playerId, newBucket)
    
    -- Store player's interior session data
    playerInteriorData[playerIdentifier] = {
        garage = garageData,
        originalBucket = originalBucket,
        currentBucket = newBucket
    }
    
    -- Trigger client event to handle interior entrance
    TriggerClientEvent("jg-advancedgarages:client:enter-interior", playerId, garageData, interiorData)
    
    return true
end)

-- Server callback for exiting garage interior
lib.callback.register("jg-advancedgarages:server:exit-interior", function(playerId)
    -- Get player identifier
    local playerIdentifier = Framework.Server.GetPlayerIdentifier(playerId)
    if not playerIdentifier then
        return false
    end
    
    -- Get stored interior data for this player
    local interiorData = playerInteriorData[playerIdentifier]
    
    if interiorData then
        -- Return to original bucket if configured
        if Config.ReturnToPreviousRoutingBucket then
            SetPlayerRoutingBucket(playerId, interiorData.originalBucket)
        end
    else
        -- Default to main routing bucket if no data found
        SetPlayerRoutingBucket(playerId, 0)
    end
    
    -- Clean up stored data
    playerInteriorData[playerIdentifier] = nil
    
    return true
end)