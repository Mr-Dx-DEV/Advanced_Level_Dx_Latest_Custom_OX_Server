local URL = "https://cfx-nui-" .. GetCurrentResourceName() .. "/web/build/index.html"

local kitchenSfName = 'generic_texture_renderer'
local orderQueueSfName = 'generic_texture_renderer_2'
local customSfName = 'generic_texture_renderer_3'
local duiUrl = URL
local width = 1280
local height = 720

local ActiveDisplays = {
    kitchen = {
        duiObj = nil,
        sfHandle = nil,
        tvEntity = nil,
        restaurantId = nil,
        scale = nil,
        scaleX = nil,
        scaleY = nil,
        offsetX = nil,
        offsetY = nil,
        offsetZ = nil,
        heading = nil,
        worldX = nil,
        worldY = nil,
        worldZ = nil,
        shouldRender = false
    },
    order_queue = {
        duiObj = nil,
        sfHandle = nil,
        tvEntity = nil,
        restaurantId = nil,
        scale = nil,
        scaleX = nil,
        scaleY = nil,
        offsetX = nil,
        offsetY = nil,
        offsetZ = nil,
        heading = nil,
        worldX = nil,
        worldY = nil,
        worldZ = nil,
        shouldRender = false
    },
    custom = {
        duiObj = nil,
        sfHandle = nil,
        tvEntity = nil,
        customContent = nil,
        scale = nil,
        scaleX = nil,
        scaleY = nil,
        offsetX = nil,
        offsetY = nil,
        offsetZ = nil,
        heading = nil,
        worldX = nil,
        worldY = nil,
        worldZ = nil,
        shouldRender = false
    }
}

local SpawnedTVs = {}
local ActiveTVInteractions = {}
local RenderingThread = nil
local isRenderingActive = false
local DistanceThread = nil
local isDistanceCheckActive = false

local RENDER_DISTANCE = 20.0
local DISTANCE_CHECK_INTERVAL = 1000

local function loadScaleform(scaleform)
    local scaleformHandle = RequestScaleformMovie(scaleform)
    while not HasScaleformMovieLoaded(scaleformHandle) do
        scaleformHandle = RequestScaleformMovie(scaleform)
        Wait(0)
    end
    return scaleformHandle
end

local function CleanupDisplay(displayType)
    local display = ActiveDisplays[displayType]
    if not display then return end
    
    if display.duiObj then
        DestroyDui(display.duiObj)
        display.duiObj = nil
    end
    
    if display.sfHandle then
        SetScaleformMovieAsNoLongerNeeded(display.sfHandle)
        display.sfHandle = nil
    end
    
    if display.tvEntity and DoesEntityExist(display.tvEntity) then
        DeleteEntity(display.tvEntity)
    end
    display.tvEntity = nil
    display.restaurantId = nil
    display.customContent = nil
    
    display.scale = nil
    display.scaleX = nil
    display.scaleY = nil
    display.offsetX = nil
    display.offsetY = nil
    display.offsetZ = nil
    display.heading = nil
    display.worldX = nil
    display.worldY = nil
    display.worldZ = nil
    display.shouldRender = false
    
    CheckRenderingThread()
end

local function StartDistanceCheckingThread()
    if DistanceThread or isDistanceCheckActive then
        return
    end
    
    isDistanceCheckActive = true
    DistanceThread = CreateThread(function()
        while isDistanceCheckActive do
            local hasActiveDisplays = false
            local shouldRenderCount = 0
            local playerPed = PlayerPedId()
            local playerCoords = GetEntityCoords(playerPed)
            
            for displayType, display in pairs(ActiveDisplays) do
                if display.tvEntity and display.worldX then
                    hasActiveDisplays = true
                    local tvCoords = vector3(display.worldX, display.worldY, display.worldZ)
                    local distance = #(playerCoords - tvCoords)
                    display.shouldRender = distance <= RENDER_DISTANCE
                    
                    if display.shouldRender then
                        shouldRenderCount = shouldRenderCount + 1
                    end
                end
            end
            
            if shouldRenderCount > 0 and not isRenderingActive then
                StartGlobalRenderingThread()
            elseif shouldRenderCount == 0 and isRenderingActive then
                StopGlobalRenderingThread()
            end
            
            if not hasActiveDisplays then
                isDistanceCheckActive = false
                DistanceThread = nil
                break
            end
            
            Wait(DISTANCE_CHECK_INTERVAL)
        end
    end)
end

local function StopDistanceCheckingThread()
    isDistanceCheckActive = false
    DistanceThread = nil
end

function StartGlobalRenderingThread()
    if RenderingThread or isRenderingActive then
        return
    end
    
    isRenderingActive = true
    RenderingThread = CreateThread(function()
        while isRenderingActive do
            local shouldRenderCount = 0
            
            for displayType, display in pairs(ActiveDisplays) do
                if display.duiObj and display.sfHandle and display.tvEntity and display.scale and display.worldX and display.shouldRender then
                    shouldRenderCount = shouldRenderCount + 1
                    
                    DrawScaleformMovie_3dSolid(display.sfHandle, 
                        vector3(display.worldX, display.worldY, display.worldZ), 
                        0.0, 0.0, -display.heading, 2.0, 2.0, 2.0, 
                        display.scaleX, display.scaleY, 2)
                end
            end
            
            if shouldRenderCount == 0 then
                isRenderingActive = false
                RenderingThread = nil
                break
            end
            
            Wait(0)
        end
    end)
end

function StopGlobalRenderingThread()
    isRenderingActive = false
    RenderingThread = nil
end

function CheckRenderingThread()
    local hasActiveDisplays = false
    for _, display in pairs(ActiveDisplays) do
        if display.duiObj and display.sfHandle and display.tvEntity then
            hasActiveDisplays = true
            break
        end
    end

    if hasActiveDisplays and not isDistanceCheckActive then
        StartDistanceCheckingThread()
    elseif not hasActiveDisplays then
        StopGlobalRenderingThread()
        StopDistanceCheckingThread()
    end
end

function InitializeDisplay(displayType, restaurantId, tvEntity, page, customContent)
    CleanupDisplay(displayType)
    
    local display = ActiveDisplays[displayType]
    local sfName
    if displayType == "kitchen" then
        sfName = kitchenSfName
    elseif displayType == "order_queue" then
        sfName = orderQueueSfName
    else
        sfName = customSfName
    end
    
    display.sfHandle = loadScaleform(sfName)
    
    local txdName = 'remotetv_' .. displayType .. '_dict'
    local txdTexture = 'remotetv_' .. displayType .. '_txd'
    
    local txd = CreateRuntimeTxd(txdName)
    display.duiObj = CreateDui(URL, width, height)
    local dui = GetDuiHandle(display.duiObj)
    local tx = CreateRuntimeTextureFromDuiHandle(txd, txdTexture, dui)
    Wait(10)
    
    PushScaleformMovieFunction(display.sfHandle, 'SET_TEXTURE')
    PushScaleformMovieMethodParameterString(txdName)
    PushScaleformMovieMethodParameterString(txdTexture)
    PushScaleformMovieFunctionParameterInt(0)
    PushScaleformMovieFunctionParameterInt(0)
    PushScaleformMovieFunctionParameterInt(width)
    PushScaleformMovieFunctionParameterInt(height)
    PopScaleformMovieFunctionVoid()

    Wait(1000)
    local messageData = {
        action = "setVisibility",
        data = {
            page = page,
            visible = true,
            restaurantId = restaurantId
        }
    }
    
    SendDuiMessage(display.duiObj, json.encode(messageData))
    
    if displayType == "custom" and customContent then
        SendDuiMessage(display.duiObj, json.encode({
            action = "setCustomContent",
            data = {
                customContent = customContent
            }
        }))
    end
    
    if displayType == "order_queue" and restaurantId then
        Lib.Callback('nn_food:getOrderQueue', function(orderData)
            if orderData then
                SendDuiMessage(display.duiObj, json.encode({
                    action = "setRestaurantData",
                    data = {
                        restaurantData = orderData.restaurantData
                    }
                }))
                
                SendDuiMessage(display.duiObj, json.encode({
                    action = "setOrderData",
                    data = {
                        orders = orderData.orders
                    }
                }))
            end
        end, restaurantId)
    end
    
    if displayType == "kitchen" and restaurantId then
        Lib.Callback('nn_food:getKitchenOrders', function(orderData)
            if orderData then
                SendDuiMessage(display.duiObj, json.encode({
                    action = "setRestaurantData",
                    data = {
                        restaurantData = orderData.restaurantData
                    }
                }))
                
                SendDuiMessage(display.duiObj, json.encode({
                    action = "setKitchenOrders",
                    data = {
                        orders = orderData.orders
                    }
                }))
            end
        end, restaurantId)
    end
    
    display.tvEntity = tvEntity
    display.restaurantId = restaurantId
    display.customContent = customContent
    
    if DoesEntityExist(tvEntity) then
        local tvModel = GetEntityModel(tvEntity)
        local screenModel = Config.Models["prop_tv_flat_03b"]
        if screenModel then
            display.scale = screenModel.Scale
            display.scaleX = screenModel.Scale * 1
            display.scaleY = screenModel.Scale * (9 / 16)
            display.offsetX = screenModel.Offset.x
            display.offsetY = screenModel.Offset.y
            display.offsetZ = screenModel.Offset.z
            display.heading = GetEntityHeading(tvEntity)
            
            
            local worldCoords = GetOffsetFromEntityInWorldCoords(tvEntity, screenModel.Offset.x, screenModel.Offset.y, screenModel.Offset.z)
            display.worldX = worldCoords.x
            display.worldY = worldCoords.y
            display.worldZ = worldCoords.z
        else
            
            display.scale = 1.0
            display.scaleX = 1.0
            display.scaleY = 0.5625
            display.offsetX = 0.0
            display.offsetY = 0.0
            display.offsetZ = 0.0
            display.heading = GetEntityHeading(tvEntity)
            
            
            local worldCoords = GetOffsetFromEntityInWorldCoords(tvEntity, 0.0, 0.0, 0.0)
            display.worldX = worldCoords.x
            display.worldY = worldCoords.y
            display.worldZ = worldCoords.z
        end
        
        display.shouldRender = true
    end
    
    CheckRenderingThread()
end

function SpawnKitchenTV(tvData)
    if not tvData then
        return nil
    end
    
    if not tvData.model then
        return nil
    end
    
    if not tvData.position then
        return nil
    end
    
    local model = GetHashKey(tvData.model)
    
    
    RequestModel(model)
    local timeout = 0
    while not HasModelLoaded(model) and timeout < 5000 do
        Wait(100)
        timeout = timeout + 100
    end
    
    if not HasModelLoaded(model) then
        return nil
    end
    
    local tvEntity = CreateObjectNoOffset(model, tvData.position.x, tvData.position.y, tvData.position.z, false, false, false)
    
    if not DoesEntityExist(tvEntity) then
        return nil
    end

    while not DoesEntityExist(tvEntity) do
        Wait(100)
    end
    
    SetEntityRotation(tvEntity, 0.0, 0.0, tvData.position.heading+0.0, 2)
    FreezeEntityPosition(tvEntity, true)
    SetEntityAsMissionEntity(tvEntity, true, true)
    

    SpawnedTVs[tvData.id or #SpawnedTVs + 1] = {
        entity = tvEntity,
        data = tvData
    }

    ToggleDisplay(tvEntity, tvData.type, tvData)
    return tvEntity
end

function ToggleDisplay(entity, displayType, tvData)
    if displayType == "kitchen" then
        InitializeDisplay("kitchen", tvData.restaurantId, entity, "kitchen")
    elseif displayType == "order_queue" then
        InitializeDisplay("order_queue", tvData.restaurantId, entity, "order-status")
    elseif displayType == "custom" then
        InitializeDisplay("custom", nil, entity, "custom", tvData.custom_content)
    end
end

function LoadRestaurantTVs(restaurantId)
    Lib.Callback('nn_food:getTVDisplays', function(tvDisplays)
        for _, tv in ipairs(tvDisplays) do
            SpawnKitchenTV({
                id = tv.id,
                name = tv.name,
                type = tv.display_type,
                model = tv.model or "prop_tv_flat_01",
                position = {
                    x = tv.position_x,
                    y = tv.position_y,
                    z = tv.position_z,
                    heading = tv.heading
                },
                restaurantId = tv.restaurant_id,
                custom_content = tv.custom_content
            })
        end
    end, restaurantId)
end

function CleanupTVs()
    StopGlobalRenderingThread()
    StopDistanceCheckingThread()
    
    for displayType, _ in pairs(ActiveDisplays) do
        CleanupDisplay(displayType)
    end
    
    for _, tv in pairs(SpawnedTVs) do
        if DoesEntityExist(tv.entity) then
            DeleteEntity(tv.entity)
        end
    end
    
    for _, interaction in pairs(ActiveTVInteractions) do
        exports['is_interaction']:RemoveInteraction(interaction)
    end
    
    SpawnedTVs = {}
    ActiveTVInteractions = {}
end

function DeleteSpecificTV(tvId)
    local tvToDelete = SpawnedTVs[tvId]
    if tvToDelete then
        if DoesEntityExist(tvToDelete.entity) then
            DeleteEntity(tvToDelete.entity)
        end
        
        local tvData = tvToDelete.data
        if tvData and tvData.type then
            local displayType = tvData.type
            local activeDisplay = ActiveDisplays[displayType]
            
            if activeDisplay and activeDisplay.tvEntity == tvToDelete.entity then
                CleanupDisplay(displayType)
            end
        end
        
        SpawnedTVs[tvId] = nil
    end
end

RegisterNUICallback('closeKitchen', function(data, cb)
    CleanupDisplay("kitchen")
    cb({})
end)

RegisterNUICallback('closeOrderStatus', function(data, cb)
    CleanupDisplay("order_queue")
    cb({})
end)

RegisterNUICallback('closeCustom', function(data, cb)
    CleanupDisplay("custom")
    cb({})
end)


RegisterNetEvent('nn_food:refreshTVs', function()
    CleanupTVs()
end)

RegisterNetEvent('nn_food:deleteTVEntity', function(tvId)
    DeleteSpecificTV(tvId)
end)

RegisterNetEvent('nn_food:refreshTVDisplays', function(restaurantId)
    local kitchenDisplay = ActiveDisplays.kitchen
    if kitchenDisplay and kitchenDisplay.restaurantId == restaurantId and kitchenDisplay.duiObj then
        Lib.Callback('nn_food:getKitchenOrders', function(orderData)
            if orderData then
                SendDuiMessage(kitchenDisplay.duiObj, json.encode({
                    action = "setRestaurantData",
                    data = {
                        restaurantData = orderData.restaurantData
                    }
                }))
                
                SendDuiMessage(kitchenDisplay.duiObj, json.encode({
                    action = "setKitchenOrders",
                    data = {
                        orders = orderData.orders
                    }
                }))
            end
        end, restaurantId)
    end
    
    local orderQueueDisplay = ActiveDisplays.order_queue
    if orderQueueDisplay and orderQueueDisplay.restaurantId == restaurantId and orderQueueDisplay.duiObj then
        Lib.Callback('nn_food:getOrderQueue', function(orderData)
            if orderData then
                SendDuiMessage(orderQueueDisplay.duiObj, json.encode({
                    action = "setRestaurantData",
                    data = {
                        restaurantData = orderData.restaurantData
                    }
                }))
                
                SendDuiMessage(orderQueueDisplay.duiObj, json.encode({
                    action = "setOrderData",
                    data = {
                        orders = orderData.orders
                    }
                }))
            end
        end, restaurantId)
    end
end)

AddEventHandler('onResourceStop', function(name)
    if name == GetCurrentResourceName() then
        CleanupTVs()
    end
end)