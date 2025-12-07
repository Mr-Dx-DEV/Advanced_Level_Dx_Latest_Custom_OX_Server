local activeDeliveries = {}
local deliveryBoxes = {}
local deliveryBlips = {} 

RegisterNetEvent('nn_food:deliveryArrived')
AddEventHandler('nn_food:deliveryArrived', function(deliveryId, deliveryData)
    local source = source
    
    local boxCoords = deliveryData.deliveryLocation.coords
    local boxHeading = deliveryData.deliveryLocation.heading
    
    local boxModel = GetHashKey(Config.SupplyDelivery.boxProp.model)
    RequestModel(boxModel)
    while not HasModelLoaded(boxModel) do
        Wait(0)
    end
    
    local box = CreateObject(boxModel, boxCoords.x, boxCoords.y, boxCoords.z - 1.0, false, false, false)
    SetEntityHeading(box, boxHeading)
    FreezeEntityPosition(box, true)
    SetEntityAsMissionEntity(box, true, true)
    
    deliveryBoxes[deliveryId] = {
        object = box,
        coords = boxCoords,
        data = deliveryData
    }
    
    activeDeliveries[deliveryId] = deliveryData
    
    
    local blip = AddBlipForCoord(boxCoords.x, boxCoords.y, boxCoords.z)
    SetBlipSprite(blip, 106)          
    SetBlipColour(blip, 5)            
    SetBlipScale(blip, 0.8)
    SetBlipAsShortRange(blip, false)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Boîte de Livraison")
    EndTextCommandSetBlipName(blip)
    deliveryBlips[deliveryId] = blip
    
    bridge.notification.show({
        message = T('delivery_arrived'),
        type = 'success'
    })
    
    CreateDeliveryInteraction(deliveryId, boxCoords)
end)

function CreateDeliveryInteraction(deliveryId, coords)
    coords = vector3(coords.x, coords.y, coords.z)
    local int = exports['is_interaction']:addInteractionCoords('delivery-box-' .. deliveryId, coords, {
        hideSquare = false,
        checkVisibility = true,
        showInVehicle = false,
        distance = 5.0,
        distanceText = 1.0,
        blip = 106,
        options = {
            {
                label = T('unpack_delivery_box'),
                icon = 'fa-solid fa-box-open',
                onSelect = function()
                    UnpackDelivery(deliveryId, coords)
                end
            }
        }
    })
end

function UnpackDelivery(deliveryId, coords)
    local delivery = activeDeliveries[deliveryId]
    if not delivery then
        bridge.notification.show({
            message = T('delivery_not_found'),
            type = 'error'
        })
        return
    end
    
    local boxData = deliveryBoxes[deliveryId]
    if not boxData then
        bridge.notification.show({
            message = T('delivery_not_found'),
            type = 'error'
        })
        return
    end
    
    bridge.progressbar.show({
        duration = math.random(3000, 5000),
        title = T('unpacking_supplies'),
        useWhileDead = false,
        canCancel = true,
        animation = {
            dict = "mini@repair",
            anim = "fixing_a_ped",
            flag = 49
        },
        disable = {
            move = true,
            car = true,
            combat = true,
            mouse = false,
        },
    }, function()
        TriggerServerEvent('nn_food:unpackDelivery', deliveryId)

        if boxData.object and DoesEntityExist(boxData.object) then
            DeleteEntity(boxData.object)
        end
        
        if boxData.interactionZone then
            boxData.interactionZone:remove()
        end

        
        if deliveryBlips[deliveryId] and DoesBlipExist(deliveryBlips[deliveryId]) then
            RemoveBlip(deliveryBlips[deliveryId])
        end
        deliveryBlips[deliveryId] = nil
        
        deliveryBoxes[deliveryId] = nil
        activeDeliveries[deliveryId] = nil
        
        bridge.notification.show({
            message = T('delivery_unpacked'),
            type = 'success'
        })

        exports['is_interaction']:removeCoords(coords)
    end, function()
        bridge.notification.show({
            message = T('unpacking_cancelled'),
            type = 'error'
        })
    end)
end

AddEventHandler('onResourceStop', function(resourceName)
    if GetCurrentResourceName() == resourceName then
        
        for deliveryId, boxData in pairs(deliveryBoxes) do
            if boxData.object and DoesEntityExist(boxData.object) then
                DeleteEntity(boxData.object)
            end
            if boxData.interactionZone then
                boxData.interactionZone:remove()
            end
            
            if deliveryBlips[deliveryId] and DoesBlipExist(deliveryBlips[deliveryId]) then
                RemoveBlip(deliveryBlips[deliveryId])
            end
        end
    end
end)

exports('GetActiveDeliveries', function()
    return activeDeliveries
end)

exports('GetDeliveryBoxes', function()
    return deliveryBoxes
end)
