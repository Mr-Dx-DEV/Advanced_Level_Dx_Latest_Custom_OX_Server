local PositionTool = {
    isActive = false,
    currentObject = nil,
    previewObjects = {},
    isPositioning = false,
    isMarkerMode = false,
    markerPos = nil,
    currentPositionData = nil,
    currentConfig = {},
    currentItemId = nil,
    currentIndex = nil,
    currentItemName = nil,
    savedPositions = {}
}

local PREVIEW_MODELS = {
    coords = 'prop_mp_cone_02',
    cookingStations = 'prop_mp_cone_02',
    fridges = 'prop_mp_cone_02',
    speakers = 'prop_mp_cone_02',
    trashCans = 'prop_bin_07d',
    spatulas = 'sn_spatula',
    fryers = 'sn_fryer',
    dumpsters = 'prop_mp_cone_02',
    grills = 'prop_bbq_3',
    friesPlates = 'prop_food_tray_01',
    npcWaiting = 'prop_mp_cone_02',
    npcRoutes = 'prop_mp_cone_02'
}

local function GetPreviewModel(itemId)
    if string.find(itemId, "grill_") then
        if string.find(itemId, "particleCoords") then
            local meatType = nil
            for meatName, _ in pairs(Config.MeatModels) do
                if string.find(itemId, meatName) then
                    meatType = meatName
                    break
                end
            end
            
            if meatType and Config.MeatModels[meatType] then
                return Config.MeatModels[meatType].model
            else
                return 'sn_burgerpattyraw'
            end
        elseif string.find(itemId, "slot_") then
            local meatType = nil
            for meatName, _ in pairs(Config.MeatModels) do
                if string.find(itemId, meatName) then
                    meatType = meatName
                    break
                end
            end
            
            if meatType and Config.MeatModels[meatType] then
                return Config.MeatModels[meatType].model
            else
                return 'sn_burgerpattyraw'
            end
        else
            return 'prop_mp_cone_02'
        end
    end
    
    return PREVIEW_MODELS[itemId] or 'prop_mp_cone_02'
end

function PositionTool:CreateObject(model, coords, alpha)
    local hash = GetHashKey(model)
    
    RequestModel(hash)
    local timeout = 0
    while not HasModelLoaded(hash) and timeout < 5000 do
        Wait(100)
        timeout = timeout + 100
    end
    
    if not HasModelLoaded(hash) then
        print(string.format("^3[Warning] Failed to load model: %s^0", model))
        return nil
    end
    
    local obj = CreateObject(hash, coords.x, coords.y, coords.z, false, false, false)
    if alpha then
        SetEntityAlpha(obj, alpha, false)
    end
    
    return obj
end

function PositionTool:CleanupPreview()
    for _, obj in pairs(self.previewObjects) do
        if DoesEntityExist(obj) then
            DeleteEntity(obj)
        end
    end
    self.previewObjects = {}
    
    if self.currentObject and DoesEntityExist(self.currentObject) then
        DeleteEntity(self.currentObject)
        self.currentObject = nil
    end

    if self.isMarkerMode then
        self.isMarkerMode = false
        self.markerPos = nil
    end
    
    self.currentPositionData = nil
end

local function IsPhysicalObject(itemId)
    local physicalObjects = {
        'trashCans', 'spatulas', 'fryers', 'grills', 'friesPlates'
    }
    
    if string.find(itemId, "grill_") then
        if string.find(itemId, "particleCoords") then
            return true
        elseif string.find(itemId, "slot_") then
            return true
        else
            return false
        end
    end
    
    for _, objType in ipairs(physicalObjects) do
        if itemId == objType then
            return true
        end
    end
    return false
end

function PositionTool:StartPositioning(itemId, index, previewModel, itemName)
    self:CleanupPreview()
    
    self.currentItemId = itemId
    self.currentIndex = index
    self.currentItemName = itemName or itemId
    
    local model = previewModel or GetPreviewModel(itemId)
    
    if IsPhysicalObject(itemId) then
        return self:StartObjectPositioning(itemId, index, model, itemName)
    else
        return self:StartMarkerPositioning(itemId, index, itemName)
    end
end

function PositionTool:StartObjectPositioning(itemId, index, previewModel, itemName)
    local playerPed = PlayerPedId()
    local coords = GetEntityCoords(playerPed)
    
    local model = previewModel or GetPreviewModel(itemId)
    local modelHash = GetHashKey(model)
    
    RequestModel(modelHash)
    local timeout = 0
    while not HasModelLoaded(modelHash) and timeout < 5000 do
        Wait(100)
        timeout = timeout + 100
    end
    
    if not HasModelLoaded(modelHash) then
        print("^1[Error] Failed to load model: " .. model .. "^0")
        return false
    end
    
    self.currentObject = CreateObject(modelHash, coords.x, coords.y, coords.z, true, true, true)
    
    if not self.currentObject or not DoesEntityExist(self.currentObject) then
        print("^1[Error] Failed to create preview object^0")
        return false
    end
    
    SetEntityCollision(self.currentObject, false, false)
    FreezeEntityPosition(self.currentObject, true)
    
    print("^2==================================================^0")
    print(string.format("^2[POSITIONING OBJECT] %s #%d^0", itemName or "Position", index + 1))
    print("^3[INFO] Look where you want to place the object^0")
    print("^3[INFO] Use LEFT/RIGHT arrow keys to rotate^0")
    print("^3[INFO] Press E to confirm placement^0")
    print("^3[INFO] Press ESC to cancel positioning^0")
    print("^3[INFO] UI will automatically reopen after saving or cancelling^0")
    print("^2==================================================^0")
    
    CreateThread(function()
        if self.currentObject and DoesEntityExist(self.currentObject) then
            DeleteObject(self.currentObject)
            self.currentObject = nil
        end
        
        self.currentModel = model
        
        local data = placeProp(self.currentModel)
        
        if data then
            if not self.savedPositions[self.currentItemId] then
                self.savedPositions[self.currentItemId] = {
                    count = 0,
                    positions = {}
                }
            end
            
            local item = self.savedPositions[self.currentItemId]
            local position = {
                x = data.position.x,
                y = data.position.y,
                z = data.position.z,
                rotation = {
                    x = data.rotation.x,
                    y = data.rotation.y,
                    z = data.rotation.z
                }
            }
            
            item.positions[self.currentIndex + 1] = position
            item.count = math.max(item.count, self.currentIndex + 1)
            
            print("^2==================================================^0")
            print(string.format("^2[SAVED OBJECT] %s #%d^0", itemName or "Position", index + 1))
            print(string.format("^3[COORDS] X: %.2f, Y: %.2f, Z: %.2f^0", position.x, position.y, position.z))
            print(string.format("^3[ROTATION] X: %.2f, Y: %.2f, Z: %.2f^0", position.rotation.x, position.rotation.y, position.rotation.z))
            print("^3[INFO] Position saved! Reopening UI...^0")
            print("^2==================================================^0")
            
            self:StopPositioning()
            
            SetTimeout(1000, function()
                SetNuiFocus(true, true)
                SendTranslationsAndOpenUI({
                    action = "setVisibility",
                    data = {
                        page = "position-configurator",
                        visible = true
                    }
                })
                
                SendNUIMessage({
                    action = "updateConfigData",
                    data = self:GetConfigDataForUI()
                })
                
                print("^2[Position Configurator] UI reopened with updated data^0")
            end)
        else
            print("^1[Error] Object positioning cancelled^0")
            self:CleanupPreview()
        end
    end)
    
    return true
end

function PositionTool:StartMarkerPositioning(itemId, index, itemName)
    local playerPed = PlayerPedId()
    local coords = GetEntityCoords(playerPed)
    
    self.markerPos = coords
    self.isPositioning = true
    self.isMarkerMode = true
    
    print("^2==================================================^0")
    print(string.format("^2[POSITIONING INTERACTION] %s #%d^0", itemName or "Position", index + 1))
    print("^3[INFO] Walk to desired position and press ENTER to save^0")
    print("^3[INFO] A marker will show your current position^0")
    print("^3[INFO] Press ESC to cancel positioning^0")
    print("^3[INFO] UI will automatically reopen after saving or cancelling^0")
    print("^2==================================================^0")
    
    CreateThread(function()
        while self.isPositioning and self.isMarkerMode do
            local playerCoords = GetEntityCoords(PlayerPedId())
            self.markerPos = playerCoords
            
            DrawMarker(1, playerCoords.x, playerCoords.y, playerCoords.z - 1.0, 
                      0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 
                      1.0, 1.0, 1.0, 
                      0, 255, 255, 150, 
                      false, true, 2, false, false, false, false)
            
            local onScreen, _x, _y = World3dToScreen2d(playerCoords.x, playerCoords.y, playerCoords.z + 1.0)
            if onScreen then
                SetTextScale(0.35, 0.35)
                SetTextFont(4)
                SetTextProportional(1)
                SetTextColour(255, 255, 255, 215)
                SetTextEntry("STRING")
                SetTextCentre(true)
                AddTextComponentString("~b~" .. (itemName or "Position") .. " #" .. (index + 1))
                DrawText(_x, _y)
            end
            
            local controlsOnScreen, controlsX, controlsY = World3dToScreen2d(playerCoords.x, playerCoords.y, playerCoords.z + 2.0)
            if controlsOnScreen then
                SetTextScale(0.25, 0.25)
                SetTextFont(4)
                SetTextProportional(1)
                SetTextColour(255, 255, 0, 215)
                SetTextEntry("STRING")
                SetTextCentre(true)
                AddTextComponentString("~y~ENTER~w~ to save | ~r~ESC~w~ to cancel")
                DrawText(controlsX, controlsY)
            end
            
            Wait(0)
        end
    end)
    
    return true
end

function PositionTool:GetCurrentPosition()
    if self.isMarkerMode then
        if not self.markerPos then
            return nil
        end
        
        return {
            x = math.floor(self.markerPos.x * 100) / 100,
            y = math.floor(self.markerPos.y * 100) / 100,
            z = math.floor(self.markerPos.z * 100) / 100,
            heading = 0.0
        }
    else
        if self.currentPositionData then
            return {
                x = math.floor(self.currentPositionData.position.x * 100) / 100,
                y = math.floor(self.currentPositionData.position.y * 100) / 100,
                z = math.floor(self.currentPositionData.position.z * 100) / 100,
                heading = math.floor(self.currentPositionData.rotation.z * 100) / 100,
                rotation = {
                    x = math.floor(self.currentPositionData.rotation.x * 100) / 100,
                    y = math.floor(self.currentPositionData.rotation.y * 100) / 100,
                    z = math.floor(self.currentPositionData.rotation.z * 100) / 100
                }
            }
        end
        
        if self.currentObject and DoesEntityExist(self.currentObject) then
            local coords = GetEntityCoords(self.currentObject)
            local rotation = GetEntityRotation(self.currentObject)
            local heading = GetEntityHeading(self.currentObject)
            
            return {
                x = math.floor(coords.x * 100) / 100,
                y = math.floor(coords.y * 100) / 100,
                z = math.floor(coords.z * 100) / 100,
                heading = math.floor(heading * 100) / 100,
                rotation = {
                    x = math.floor(rotation.x * 100) / 100,
                    y = math.floor(rotation.y * 100) / 100,
                    z = math.floor(rotation.z * 100) / 100
                }
            }
        end
        
        return nil
    end
end

function PositionTool:SaveCurrentPosition()
    if not self.isPositioning then
        print("^1[Error] No active positioning session^0")
        return false
    end
    
    if not self.isMarkerMode and (not self.currentObject or not DoesEntityExist(self.currentObject)) then
        print("^1[Error] No valid object or position data^0")
        return false
    end
    
    local position = self:GetCurrentPosition()
    if not position then
        print("^1[Error] Failed to get current position^0")
        return false
    end
    
    if not self.savedPositions[self.currentItemId] then
        self.savedPositions[self.currentItemId] = {
            count = 0,
            positions = {}
        }
    end
    
    local item = self.savedPositions[self.currentItemId]
    
    if item.positions[self.currentIndex + 1] then
        print("^3[Warning] Position already exists at index " .. (self.currentIndex + 1) .. ", overwriting^0")
    end
    
    item.positions[self.currentIndex + 1] = position
    item.count = math.max(item.count, self.currentIndex + 1)
    
    TriggerEvent('nn_food:positionSaved', {
        itemId = self.currentItemId,
        index = self.currentIndex,
        position = position,
        itemName = self.currentItemName
    })
    
    SendNUIMessage({
        action = "updateConfigData",
        data = self:GetConfigDataForUI()
    })
    
    print("^2==================================================^0")
    if self.isMarkerMode then
        print(string.format("^2[SAVED INTERACTION] %s #%d^0", self.currentItemName or "Position", self.currentIndex + 1))
        print(string.format("^3[COORDS] X: %.2f, Y: %.2f, Z: %.2f^0", position.x, position.y, position.z))
    else
        print(string.format("^2[SAVED OBJECT] %s #%d^0", self.currentItemName or "Position", self.currentIndex + 1))
        print(string.format("^3[COORDS] X: %.2f, Y: %.2f, Z: %.2f^0", position.x, position.y, position.z))
        if position.rotation then
            print(string.format("^3[ROTATION] X: %.2f, Y: %.2f, Z: %.2f^0", position.rotation.x, position.rotation.y, position.rotation.z))
        end
        if position.heading then
            print(string.format("^3[HEADING] %.2f^0", position.heading))
        end
    end
    print("^3[INFO] Position saved! You can now type '/position-config' to continue configuring^0")
    print("^2==================================================^0")
    
    self:StopPositioning()
    
    SetTimeout(1000, function()
        SetNuiFocus(true, true)
        SendTranslationsAndOpenUI({
            action = "setVisibility",
            data = {
                page = "position-configurator",
                visible = true
            }
        })
        
        SendNUIMessage({
            action = "updateConfigData",
            data = self:GetConfigDataForUI()
        })
        
        print("^2[Position Configurator] UI reopened with updated data^0")
    end)
    
    return true
end

function PositionTool:StopPositioning()
    self:CleanupPreview()
    self.isPositioning = false
    self.isMarkerMode = false
    self.markerPos = nil
    self.currentPositionData = nil
    
    self.currentItemId = nil
    self.currentIndex = nil
    self.currentItemName = nil
    self.positionJustSaved = false
    
    print("^2[Success] Positioning stopped^0")
    
    SetTimeout(1000, function()
        SetNuiFocus(true, true)
        SendTranslationsAndOpenUI({
            action = "setVisibility",
            data = {
                page = "position-configurator",
                visible = true
            }
        })
        
        SendNUIMessage({
            action = "updateConfigData",
            data = self:GetConfigDataForUI()
        })
        
        print("^2[Position Configurator] UI reopened with updated data^0")
    end)
end

function PositionTool:ShowPreview(configData)
    self:CleanupPreview()
    
    for itemId, itemData in pairs(configData) do
        if itemData.positions and #itemData.positions > 0 then
            local model = PREVIEW_MODELS[itemId] or 'prop_mp_cone_02'
            
            for _, pos in ipairs(itemData.positions) do
                local coords = vector3(pos.x, pos.y, pos.z)
                local obj = self:CreateObject(model, coords, 150)
                
                if obj then
                    if pos.rotation then
                        SetEntityRotation(obj, pos.rotation.x, pos.rotation.y, pos.rotation.z, 2, true)
                    elseif pos.heading then
                        SetEntityHeading(obj, pos.heading)
                    end
                    
                    table.insert(self.previewObjects, obj)
                end
            end
        end
    end
    
    print(string.format("^2[Success] Showing preview with %d objects^0", #self.previewObjects))
end

function PositionTool:GetConfigDataForUI()
    local configData = {}
    
    for itemId, saved in pairs(self.savedPositions) do
        configData[itemId] = {
            count = 0,
            positions = {}
        }
        
        configData[itemId].count = saved.count
        
        for i = 1, saved.count do
            if saved.positions[i] then
                table.insert(configData[itemId].positions, saved.positions[i])
            end
        end
    end
    
    local maxGrillIndex = -1
    for itemId, saved in pairs(self.savedPositions) do
        if string.find(itemId, "^grill_") then
            local parts = {}
            for part in string.gmatch(itemId, "[^_]+") do
                table.insert(parts, part)
            end
            if #parts >= 2 then
                local grillIndex = tonumber(parts[2])
                if grillIndex and grillIndex > maxGrillIndex then
                    maxGrillIndex = grillIndex
                end
            end
        end
    end
    
    if maxGrillIndex >= 0 then
        if not configData.grills then
            configData.grills = {
                count = 0,
                positions = {}
            }
        end
        configData.grills.count = maxGrillIndex + 1
    end
    
    return configData
end

function PositionTool:HidePreview()
    for _, obj in pairs(self.previewObjects) do
        if DoesEntityExist(obj) then
            DeleteEntity(obj)
        end
    end
    self.previewObjects = {}
    
    print("^2[Success] Preview hidden^0")
end

RegisterNUICallback('startPositioning', function(data, cb)
    local success = PositionTool:StartPositioning(data.itemId, data.index, data.previewModel, data.itemName)
    cb({ success = success })
end)

RegisterNUICallback('getCurrentPosition', function(data, cb)
    local position = PositionTool:GetCurrentPosition()
    cb(position)
end)

RegisterNUICallback('stopPositioning', function(data, cb)
    PositionTool:StopPositioning()
    cb({})
end)

RegisterNUICallback('togglePreview', function(data, cb)
    if data.enabled then
        PositionTool:ShowPreview(data.configData)
    else
        PositionTool:HidePreview()
    end
    cb({})
end)

RegisterNUICallback('loadConfigData', function(data, cb)
    local configData = PositionTool:GetConfigDataForUI()
    cb(configData)
end)

function SendTranslationsAndOpenUI(uiData)
    local language = Config.Language or 'en'
    
    SendNUIMessage({
        action = 'setConfigLanguage',
        data = { language = language }
    })
    
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
    
    Wait(100)
    
    SendNUIMessage(uiData)
end


RegisterCommand('position-config', function(source, args, rawCommand)
    PositionTool.isActive = true
    
    SetNuiFocus(true, true)
    SendTranslationsAndOpenUI({
        action = "setVisibility",
        data = {
            page = "position-configurator",
            visible = true
        }
    })
    
    print("^2[Position Configurator] UI opened^0")
    print("^3[Info] Configure restaurant positions with visual gizmo controls^0")
end)

RegisterCommand('stop-position-config', function()
    if PositionTool.isActive then
        PositionTool:CleanupPreview()
        PositionTool.isActive = false
        
        SetNuiFocus(false, false)
        SendNUIMessage({
            action = "setVisibility",
            data = {
                page = "position-configurator",
                visible = false
            }
        })
        
        print("^2[Position Configurator] Closed^0")
    end
end)

RegisterCommand('quick-pos', function(source, args)
    if #args < 1 then
        print("Usage: /quick-pos [item_id]")
        print("Available items: coords, cookingStations, fridges, speakers, etc.")
        return
    end
    
    local itemId = args[1]
    local index = tonumber(args[2]) or 0
    
    if PREVIEW_MODELS[itemId] then
        PositionTool:StartPositioning(itemId, index, PREVIEW_MODELS[itemId])
    else
        print(string.format("^1[Error] Unknown item ID: %s^0", itemId))
    end
end)

CreateThread(function()
    while true do
        Wait(0)
        
        if PositionTool.isPositioning then
            if IsControlJustPressed(0, 201) and PositionTool.isMarkerMode then
                PositionTool:SaveCurrentPosition()
            end
            
            if IsControlJustPressed(0, 322) then
                if PositionTool.isPositioning then
                    PositionTool:StopPositioning()
                    print("^3[Info] Positioning cancelled. Type '/position-config' to continue configuring^0")
                end
            end
        end
    end
end)

AddEventHandler('onResourceStop', function(resourceName)
    if resourceName == GetCurrentResourceName() then
        PositionTool:CleanupPreview()
    end
end)

AddEventHandler('onResourceStop', function(resourceName)
    if resourceName == GetCurrentResourceName() then
        PositionTool:CleanupPreview()
    end
end)

exports('startPositioning', function(itemId, index, model)
    return PositionTool:StartPositioning(itemId, index, model)
end)

exports('getCurrentPosition', function()
    return PositionTool:GetCurrentPosition()
end)

exports('stopPositioning', function()
    PositionTool:StopPositioning()
end)

exports('showPreview', function(configData)
    PositionTool:ShowPreview(configData)
end)

exports('hidePreview', function()
    PositionTool:HidePreview()
end) 