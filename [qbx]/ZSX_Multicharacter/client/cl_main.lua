CreatedUIFrame = false

-- Initialize UI and configuration
Citizen.CreateThread(function()
    -- Wait for UI frame to be created
    while not CreatedUIFrame do
        Wait(10)
    end

    Wait(300)

    -- Handle UIV2 integration
    if Config.AutoHandleUIV2 and IsUIV2Active then
        local hasGetConfig = pcall(function()
            return exports.ZSX_UIV2.GetConfig
        end)

        if hasGetConfig then
            local success, uiv2Config = pcall(exports.ZSX_UIV2.GetConfig)

            if not success then
                Config.UseMusicFromUIV2 = false
            elseif uiv2Config then
                local useMusicInMultichar = uiv2Config.UseMusicInMulticharacter
                local message = useMusicInMultichar and "^2Setting^7 UIV2 Music Handler to be used in Multicharacter." or "^1Disabling^7 UIV2 Muisc Handler in Multicharacter."
                debugPrint("[^3UIV2^7] " .. message)
                Config.UseMusicFromUIV2 = useMusicInMultichar
            end
        end
    end

    -- Send initial data to NUI
    NUI.SendConfig()
    NUI.SendDefaultSettings()
    NUI.SendDefaultMusic()

    Wait(2000)

    -- Get street names for all locations
    for locationId, location in pairs(Config.Locations) do
        local streetHash = GetStreetNameAtCoord(location.coords.x, location.coords.y, location.coords.z)
        Config.Locations[locationId].street = GetStreetNameFromHashKey(streetHash)
    end
end)
-- NUI Callback: UI Frame Created
RegisterNUICallback("createdUIFrame", function(data)
    CreatedUIFrame = true
end)

-- NUI Callback: Character Selected
RegisterNUICallback("selectedCharacter", function(data)
    if not NUI.Vars.isOn then
        return
    end

    Framework.TriggerServerCallback("ZSX_Multicharacter:Event:SelectedCharacter", function()
        NUI.UsageOfKeydowns(false)
        SetNuiFocus(false, false)

        -- Trigger ESX spawn events
        if FrameworkSelected == "ESX" then
            Citizen.CreateThread(function()
                Wait(1000)
                TriggerEvent("playerSpawned")
                TriggerServerEvent("esx:onPlayerSpawn")
                TriggerEvent("esx:onPlayerSpawn")
                TriggerEvent("esx:restoreLoadout")
            end)
        end

        TriggerEvent("ZSX_Multicharacter:Listener:SelectedCharacter", data.id)
        Entity.Cam(false)
    end, Entity.Vars.currentID)
end)

-- NUI Callback: UI Ready
RegisterNUICallback("UIReady", function()
    TriggerEvent("ZSX_Multicharacter:Listener:NUIReady", true)
    NUI.Vars.Ready = true
    NUI.Prepare()
end)

-- NUI Callback: Screen Shown
RegisterNUICallback("screenShown", function(data, cb)
    Cameras.HandleScreens(data.alignment, data.init, data.screen)
end)

-- NUI Callback: Slide Camera Force
RegisterNUICallback("slideCameraForce", function(data)
    Cameras.HandleScreens(data.alignment, data.init)
end)

-- NUI Callback: Updated User Setting
RegisterNUICallback("updatedUserSetting", function(data)
    if data.setting == "filters" then
        if Filters.Data.filter ~= "none" then
            Filters.Disable()
        end
        Filters.Show(data.settingData.name, data.settingData.value)
    elseif data.setting == "cameras" then
        Cameras.Data.Anim = data.settingData
    end

    WorkerUpdatedUserStorage(data.setting, data.settingData)
end)

-- NUI Callback: Gather Storage
RegisterNUICallback("gatherStorage", function(data)
    Storage.Set(data)
    WorkerGetUserStorage(data)
    NUI.SendUserConfig()
end)

-- Command: Fix Fadeout
RegisterCommand("fix_fadeout", function()
    DoScreenFadeIn(10)
    Client.BlackScreen(false, false)
end)

-- Command: Get Camera Rotation (Debug)
RegisterCommand("getCamRot", function()
    local camRot = GetCamRot(Entity.Vars.MainCamera, 2)
    debugPrint("Cam rot:" .. tostring(camRot))
end)

-- NUI Callback: Remove Character
RegisterNUICallback("removeCharacter", function()
    if not Config.UI.delete_character then
        return
    end

    Framework.TriggerServerCallback("ZSX_Multicharacter:Event:RemoveCharacter", function(success, characterData)
        TriggerEvent("ZSX_Multicharacter:Listener:CharacterRemoved", Entity.Vars.currentID, characterData, success)

        if success then
            NUI.SetSlots()
            NUI.Prepare()
            local firstCharacter = Entity.GetFirstCharacter()
            Entity.Swap(firstCharacter, firstCharacter.id)
        else
            ConfigIdentity.ShowIdentity()
        end
    end, Entity.Vars.currentID)
end)

-- NUI Callback: Handle Button Slider
RegisterNUICallback("handleButtonSlider", function(data)
    if data.action == "CAMERA_ANIMATION_PLAY" then
        Cameras.PlayAnimationCam()
    elseif data.action == "GAME_FILTERS_RESET" then
        Filters.Reset()
    end
end)

-- Logout function
function Logout()
    if canLogout() then
        if not LocalPlayer.state.isInMulticharacter then
            Framework.TriggerServerCallback("ZSX_Multicharacter:Event:Logout", function()
                Entity.Logout()
            end)
        end
    end
end

-- Register logout command if enabled
if Config.Commands.logout.use then
    RegisterCommand(Config.Commands.logout.commandName, function()
        Logout()
    end)
end
