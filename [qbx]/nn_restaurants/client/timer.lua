local Timers = {}

function AddTimer(stationId, coords, duration, stationType)
    if not coords or not duration then return nil end
    
    local timerId = stationId
    local currentTime = GetGameTimer()
    
    local textureId = "timerTexture" .. math.random(1, 1000000)
    local textureName = "timerTxn" .. math.random(1, 1000000)
    
    local sX, sY = GetActiveScreenResolution()
    local baseWidth, baseHeight = 2560, 1440
    local scaleMultiplier = 1.0

    if sX > baseWidth or sY > baseHeight then
        scaleMultiplier = 0.9 
    end

    local timerDuiPx = 120 -- Size for circular timer
    
    -- Create individual DUI object for this timer
    local duiObj = CreateDui(string.format("https://cfx-nui-%s/web/build/index.html#timer", GetCurrentResourceName()), timerDuiPx, timerDuiPx)
    local duiHandle = GetDuiHandle(duiObj)
    local txd = CreateRuntimeTxd(textureId)
    local texture = CreateRuntimeTextureFromDuiHandle(txd, textureName, duiHandle)
    
    local timerSpriteWidth = timerDuiPx / sX
    local timerSpriteHeight = timerDuiPx / sY
    
    local widthScale = (sX / baseWidth) * scaleMultiplier
    local heightScale = (sY / baseHeight) * scaleMultiplier
    
    timerSpriteWidth = timerSpriteWidth * widthScale
    timerSpriteHeight = timerSpriteHeight * heightScale
    
    Timers[timerId] = {
        id = timerId,
        stationId = stationId,
        coords = vector3(coords.x, coords.y, coords.z + 1.0),
        startTime = currentTime,
        duration = duration,
        endTime = currentTime + duration,
        stationType = stationType or "grill",
        isActive = true,
        duiObj = duiObj,
        duiHandle = duiHandle,
        txd = txd,
        textureId = textureId,
        textureName = textureName,
        spriteWidth = timerSpriteWidth,
        spriteHeight = timerSpriteHeight,
        duiLoaded = false,
        perfectTriggered = false,
        burntTriggered = false
    }
    
    CreateThread(function()
        while not IsDuiAvailable(duiObj) do Wait(10) end
        Wait(100) -- Give extra time for DUI to fully initialize
        
        Timers[timerId].duiLoaded = true
        
        local timerData = {
            id = timerId,
            progress = 0,
            color = "#EF4444",
            text = string.format("%d:%02d", math.floor(duration / 60000), math.floor((duration % 60000) / 1000)),
            stationType = stationType,
            worldCoords = {
                x = coords.x,
                y = coords.y,
                z = coords.z
            },
            distance = 0
        }
        
        SendDuiMessage(duiObj, json.encode({
            type = "updateTimer",
            data = timerData
        }))
    end)
    
    return timerId
end

function RemoveTimer(timerId)
    local timer = Timers[timerId]
    if timer then
        timer.isActive = false
        if timer.duiObj then
            DestroyDui(timer.duiObj)
        end
        Timers[timerId] = nil
    end
end

function GetTimerProgress(timerId)
    local timer = Timers[timerId]
    if not timer then return 0 end
    
    local currentTime = GetGameTimer()
    local elapsed = currentTime - timer.startTime
    local progress = math.min(elapsed / timer.duration, 1.0)
    
    return progress
end

function IsTimerFinished(timerId)
    local timer = Timers[timerId]
    if not timer then return false end
    
    return GetGameTimer() >= timer.endTime
end

local function UpdateAndRenderTimers()
    if not IsPlayerEmployeeOfAnyRestaurant() then
        return
    end
    
    local playerPed = PlayerPedId()
    local playerCoords = GetEntityCoords(playerPed)
    
    for timerId, timer in pairs(Timers) do
        if timer.isActive and timer.duiLoaded then
            local distance = #(playerCoords - timer.coords)
            
            if distance <= 15.0 then
                local currentTime = GetGameTimer()
                local elapsed = currentTime - timer.startTime
                local remaining = math.max(0, timer.endTime - currentTime)
                local progress = elapsed / timer.duration -- Allow progress > 1.0 for overcooking
                
                local color = "#EF4444" -- Default red
                local timerText = "RAW"
                
                if progress < 0.33 then
                    color = "#EF4444" -- Red
                    local positiveRemaining = math.max(0, remaining)
                    local minutes = math.floor(positiveRemaining / 60000)
                    local seconds = math.floor((positiveRemaining % 60000) / 1000)
                    timerText = string.format("%d:%02d", minutes, seconds)
                elseif progress < 1.0 then
                    color = "#F59E0B" -- Orange
                    local positiveRemaining = math.max(0, remaining)
                    local minutes = math.floor(positiveRemaining / 60000)
                    local seconds = math.floor((positiveRemaining % 60000) / 1000)
                    timerText = string.format("%d:%02d", minutes, seconds)
                elseif progress >= 1.0 and progress < 1.15 then
                    color = "#10B981" -- Green
                    timerText = "PERFECT"
                    
                    if not timer.perfectTriggered then
                        timer.perfectTriggered = true
                        
                        local stationType, indices = timer.stationId:match("([^_]+)_(.+)")
                        if stationType == "fryer" then
                            local fryerIndex, slot = indices:match("([^_]+)_([^_]+)")
                            TriggerEvent('nn_food:updateCookingState', {
                                fryerIndex = tonumber(fryerIndex),
                                slot = tonumber(slot)
                            }, 'perfect')
                        elseif stationType == "grill" then
                            local grillIndex, slotIndex, slot = indices:match("([^_]+)_([^_]+)_([^_]+)")
                            TriggerEvent('nn_food:updateCookingState', {
                                grillIndex = tonumber(grillIndex),
                                slotIndex = tonumber(slotIndex),
                                slot = tonumber(slot)
                            }, 'perfect')
                        end
                    end
                elseif progress >= 1.15 and progress < 1.5 then
                    color = "#F59E0B" -- Orange
                    timerText = "GOOD"
                else
                    color = "#EF4444" -- Red
                    timerText = "BURNT"
                    
                    if not timer.burntTriggered then
                        timer.burntTriggered = true
                        
                        local stationType, indices = timer.stationId:match("([^_]+)_(.+)")
                        if stationType == "fryer" then
                            local fryerIndex, slot = indices:match("([^_]+)_([^_]+)")
                            TriggerEvent('nn_food:updateCookingState', {
                                fryerIndex = tonumber(fryerIndex),
                                slot = tonumber(slot)
                            }, 'burnt')
                        elseif stationType == "grill" then
                            local grillIndex, slotIndex, slot = indices:match("([^_]+)_([^_]+)_([^_]+)")
                            TriggerEvent('nn_food:updateCookingState', {
                                grillIndex = tonumber(grillIndex),
                                slotIndex = tonumber(slotIndex),
                                slot = tonumber(slot)
                            }, 'burnt')
                        end
                    end
                end
                
                local timerData = {
                    id = timer.id,
                    progress = math.min(progress, 1.0),
                    color = color,
                    text = timerText,
                    stationType = timer.stationType,
                    worldCoords = {
                        x = timer.coords.x,
                        y = timer.coords.y,
                        z = timer.coords.z
                    },
                    distance = distance
                }
                
                SendDuiMessage(timer.duiObj, json.encode({
                    type = "updateTimer",
                    data = timerData
                }))
                
                DrawTimerAtCoords(timer, distance)
            end
        end
    end
end

function DrawTimerAtCoords(timer, distance)
    if not timer.txd or not timer.duiLoaded then return end
    
    local scaleFactor = math.max(0.3, math.min(1.0, 5.0 / distance))
    local finalWidth = timer.spriteWidth * scaleFactor
    local finalHeight = timer.spriteHeight * scaleFactor
    
    SetDrawOrigin(timer.coords.x, timer.coords.y, timer.coords.z - 1.2, 0)
    DrawSprite(timer.textureId, timer.textureName, 0.0, 0.0, finalWidth, finalHeight, 0.0, 255, 255, 255, 255)
    
    ClearDrawOrigin()
end

CreateThread(function()
    while true do
        UpdateAndRenderTimers()
        Wait(1)
    end
end)

AddEventHandler('onResourceStop', function(resourceName)
    if GetCurrentResourceName() == resourceName then
        for timerId, timer in pairs(Timers) do
            if timer.duiObj then
                DestroyDui(timer.duiObj)
            end
        end
        Timers = {}
    end
end)

-- Event handlers for timer management
RegisterNetEvent('nn_food:startTimer', function(coords, duration, data)
    -- Only allow timer creation for restaurant employees
    if not IsPlayerEmployeeOfAnyRestaurant() then
        return
    end
    
    local stationId
    if data.fryerIndex then
        stationId = 'fryer_' .. data.fryerIndex .. '_' .. data.slot
    elseif data.grillIndex then
        stationId = 'grill_' .. data.grillIndex .. '_' .. data.slotIndex .. '_' .. data.slot
    end
    
    local timerId = AddTimer(
        stationId,
        coords,
        duration,
        data.stationType
    )
    
    if data.fryerIndex then
        TriggerServerEvent('nn_food:setTimerId', 'fryer', data.fryerIndex, data.slot, nil, timerId)
    elseif data.grillIndex then
        TriggerServerEvent('nn_food:setTimerId', 'grill', data.grillIndex, data.slotIndex, data.slot, timerId)
    end
end)

RegisterNetEvent('nn_food:stopTimer', function(data)
    -- Only allow timer stopping for restaurant employees
    if not IsPlayerEmployeeOfAnyRestaurant() then
        return
    end
    
    local timerId
    if data.fryerIndex then
        timerId = 'fryer_' .. data.fryerIndex .. '_' .. data.slot
    elseif data.grillIndex then
        timerId = 'grill_' .. data.grillIndex .. '_' .. data.slotIndex .. '_' .. data.slot
    end
    
    if timerId then
        local timer = Timers[timerId]
        if timer then
            RemoveTimer(timerId)
        end
    end
end)