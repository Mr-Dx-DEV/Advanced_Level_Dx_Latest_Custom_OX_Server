local N3X = {}
N3X.isUIOpen = false
N3X.activeProgress = false
N3X.activeSkillCheck = false

-- Initialize NUI
CreateThread(function()
    while true do
        Wait(0)
        if N3X.isUIOpen then
            DisableControlAction(0, 1, true) -- Disable mouse look
            DisableControlAction(0, 2, true) -- Disable mouse look
            DisableControlAction(0, 24, true) -- Disable attack
            DisableControlAction(0, 25, true) -- Disable aim
        end
    end
end)

-- NUI Callbacks
RegisterNUICallback('closeUI', function(data, cb)
    N3X.isUIOpen = false
    SetNuiFocus(false, false)
    cb('ok')
end)

RegisterNUICallback('progressComplete', function(data, cb)
    N3X.activeProgress = false
    cb('ok')
end)

RegisterNUICallback('progressCancelled', function(data, cb)
    N3X.activeProgress = false
    cb('ok')
end)

RegisterNUICallback('skillCheckResult', function(data, cb)
    N3X.activeSkillCheck = false
    cb('ok')
end)

RegisterNUICallback('inputSubmit', function(data, cb)
    cb('ok')
end)

RegisterNUICallback('menuSelect', function(data, cb)
    cb('ok')
end)

RegisterNUICallback('playSound', function(data, cb)
    if Config.General.enableSounds then
        PlaySoundFrontend(-1, data.sound or "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", false)
    end
    cb('ok')
end)

-- Utility Functions
local function RGBToHex(rgb)
    return string.format("#%02X%02X%02X", rgb.r, rgb.g, rgb.b)
end

local function SendNUIMessage(action, data)
    SendNUIMessage({
        action = action,
        data = data,
        config = Config
    })
end

local function DebugPrint(...)
    if Config.Advanced.debugMode then
        print('^3[N3X_UIPACK]^7', ...)
    end
end

-- =============================================
-- NOTIFICATION SYSTEM
-- =============================================

---Send a notification
---@param data table Notification data
---@return number id Notification ID
function N3X.Notify(data)
    DebugPrint('Showing notification:', json.encode(data))

    local notifData = {
        id = math.random(100000, 999999),
        title = data.title or 'Notification',
        description = data.description or '',
        type = data.type or 'info',
        duration = data.duration or Config.Notification.duration,
        position = data.position or Config.Notification.position,
        icon = data.icon,
        showProgress = data.showProgress ~= nil and data.showProgress or Config.Notification.showProgress
    }

    SendNUIMessage('showNotification', notifData)

    if Config.Notification.enableSound then
        PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", false)
    end

    return notifData.id
end

-- Export for other resources
exports('Notify', N3X.Notify)
exports('notify', N3X.Notify)

-- Override lib.notify
if Config.Advanced.overrideOxLib then
    lib.notify = N3X.Notify
end

-- =============================================
-- PROGRESS BAR/CIRCLE
-- =============================================

---Show a progress bar or circle
---@param data table Progress data
---@return boolean success Whether progress completed successfully
function N3X.Progress(data)
    DebugPrint('Showing progress:', json.encode(data))

    if N3X.activeProgress then
        DebugPrint('Progress already active')
        return false
    end

    N3X.activeProgress = true

    local progressData = {
        label = data.label or 'Processing...',
        duration = data.duration or 5000,
        position = data.position or Config.Progress.position,
        type = data.type or Config.Progress.type,
        canCancel = data.canCancel ~= nil and data.canCancel or Config.Progress.enableCancel,
        showPercentage = data.showPercentage ~= nil and data.showPercentage or Config.Progress.showPercentage,
        icon = data.icon,
        useWhileDead = data.useWhileDead or false,
        allowCuffed = data.allowCuffed or false,
        allowFalling = data.allowFalling or false,
        animation = data.animation,
        prop = data.prop
    }

    SendNUIMessage('showProgress', progressData)

    -- Handle animation if provided
    if progressData.animation then
        local ped = PlayerPedId()
        if progressData.animation.dict then
            RequestAnimDict(progressData.animation.dict)
            while not HasAnimDictLoaded(progressData.animation.dict) do
                Wait(10)
            end
            TaskPlayAnim(ped, progressData.animation.dict, progressData.animation.clip, 8.0, -8.0, -1, progressData.animation.flag or 49, 0, false, false, false)
        end

        -- Handle prop if provided
        if progressData.prop and progressData.prop.model then
            local model = progressData.prop.model
            RequestModel(model)
            while not HasModelLoaded(model) do
                Wait(10)
            end
            local prop = CreateObject(model, 0.0, 0.0, 0.0, true, true, true)
            AttachEntityToEntity(prop, ped, GetPedBoneIndex(ped, progressData.prop.bone or 60309),
                progressData.prop.pos.x or 0.0, progressData.prop.pos.y or 0.0, progressData.prop.pos.z or 0.0,
                progressData.prop.rot.x or 0.0, progressData.prop.rot.y or 0.0, progressData.prop.rot.z or 0.0,
                true, true, false, true, 1, true)

            -- Delete prop after progress
            SetTimeout(progressData.duration, function()
                DeleteObject(prop)
            end)
        end
    end

    local cancelled = false

    -- Handle cancel key
    if progressData.canCancel then
        CreateThread(function()
            while N3X.activeProgress do
                Wait(0)
                if IsControlJustPressed(0, 200) then -- ESC key
                    cancelled = true
                    N3X.activeProgress = false
                    SendNUIMessage('hideProgress', {})
                    if progressData.animation then
                        ClearPedTasks(PlayerPedId())
                    end
                    break
                end
            end
        end)
    end

    -- Wait for completion
    local startTime = GetGameTimer()
    while N3X.activeProgress and (GetGameTimer() - startTime) < progressData.duration do
        Wait(100)

        -- Check restrictions
        local ped = PlayerPedId()
        if not progressData.useWhileDead and IsEntityDead(ped) then
            cancelled = true
            break
        end
        if not progressData.allowCuffed and IsPedCuffed(ped) then
            cancelled = true
            break
        end
        if not progressData.allowFalling and IsPedFalling(ped) then
            cancelled = true
            break
        end
    end

    -- Cleanup
    N3X.activeProgress = false
    SendNUIMessage('hideProgress', {})

    if progressData.animation then
        ClearPedTasks(PlayerPedId())
    end

    return not cancelled
end

-- Export for other resources
exports('Progress', N3X.Progress)
exports('progressBar', N3X.Progress)
exports('progressCircle', N3X.Progress)

-- Override lib.progressBar and lib.progressCircle
if Config.Advanced.overrideOxLib then
    lib.progressBar = N3X.Progress
    lib.progressCircle = N3X.Progress
end

-- =============================================
-- INPUT DIALOG
-- =============================================

---Show an input dialog
---@param heading string Dialog heading
---@param rows table Input rows
---@return table|nil input Input values or nil if cancelled
function N3X.InputDialog(heading, rows)
    DebugPrint('Showing input dialog:', heading)

    if N3X.isUIOpen then
        DebugPrint('UI already open')
        return nil
    end

    N3X.isUIOpen = true
    SetNuiFocus(true, true)

    local inputData = {
        heading = heading,
        rows = rows,
        position = Config.Input.position,
        maxWidth = Config.Input.maxWidth
    }

    SendNUIMessage('showInput', inputData)

    -- Wait for response
    local response = promise.new()

    RegisterNUICallback('inputResponse', function(data, cb)
        N3X.isUIOpen = false
        SetNuiFocus(false, false)
        response:resolve(data)
        cb('ok')
    end)

    return Citizen.Await(response)
end

-- Export for other resources
exports('InputDialog', N3X.InputDialog)
exports('inputDialog', N3X.InputDialog)

-- Override lib.inputDialog
if Config.Advanced.overrideOxLib then
    lib.inputDialog = N3X.InputDialog
end

-- =============================================
-- CONTEXT MENU
-- =============================================

---Show a context menu
---@param id string Menu ID
---@param title string Menu title
---@param options table Menu options
function N3X.ShowContext(id, title, options)
    DebugPrint('Showing context menu:', id)

    if N3X.isUIOpen then
        DebugPrint('UI already open')
        return
    end

    N3X.isUIOpen = true
    SetNuiFocus(true, true)

    local menuData = {
        id = id,
        title = title,
        options = options,
        position = Config.ContextMenu.position,
        maxWidth = Config.ContextMenu.maxWidth,
        enableSearch = Config.ContextMenu.enableSearch,
        enableIcons = Config.ContextMenu.enableIcons
    }

    SendNUIMessage('showContext', menuData)
end

---Hide the context menu
function N3X.HideContext()
    N3X.isUIOpen = false
    SetNuiFocus(false, false)
    SendNUIMessage('hideContext', {})
end

-- Export for other resources
exports('ShowContext', N3X.ShowContext)
exports('showContext', N3X.ShowContext)
exports('HideContext', N3X.HideContext)
exports('hideContext', N3X.HideContext)

-- Override lib.showContext and lib.hideContext
if Config.Advanced.overrideOxLib then
    lib.showContext = N3X.ShowContext
    lib.hideContext = N3X.HideContext
end

-- =============================================
-- SKILL CHECK
-- =============================================

---Show a skill check
---@param difficulty string|table Difficulty preset or custom settings
---@param keys table|nil Key sequence (optional)
---@return boolean success Whether skill check was successful
function N3X.SkillCheck(difficulty, keys)
    DebugPrint('Showing skill check:', difficulty)

    if N3X.activeSkillCheck then
        DebugPrint('Skill check already active')
        return false
    end

    N3X.activeSkillCheck = true

    local skillData = {}

    if type(difficulty) == 'string' then
        -- Use preset difficulty
        skillData = Config.SkillCheck.difficulty[difficulty] or Config.SkillCheck.difficulty.medium
    elseif type(difficulty) == 'table' then
        -- Use custom settings
        skillData = difficulty
    end

    skillData.type = Config.SkillCheck.type
    skillData.keys = keys or skillData.keys
    skillData.showTimer = Config.SkillCheck.showTimer
    skillData.showAttempts = Config.SkillCheck.showAttempts

    SendNUIMessage('showSkillCheck', skillData)
    SetNuiFocus(true, true)

    -- Wait for response
    local response = promise.new()

    RegisterNUICallback('skillCheckResponse', function(data, cb)
        N3X.activeSkillCheck = false
        SetNuiFocus(false, false)

        if not data.success and Config.SkillCheck.vibrationOnFail then
            StartScreenEffect('Rampage', 0, false)
            Wait(100)
            StopScreenEffect('Rampage')
        end

        response:resolve(data.success)
        cb('ok')
    end)

    return Citizen.Await(response)
end

-- Export for other resources
exports('SkillCheck', N3X.SkillCheck)
exports('skillCheck', N3X.SkillCheck)

-- Override lib.skillCheck
if Config.Advanced.overrideOxLib then
    lib.skillCheck = N3X.SkillCheck
end

-- =============================================
-- TEXT UI
-- =============================================

---Show text UI
---@param data table|string Text UI data or string
function N3X.ShowTextUI(data)
    local textData = type(data) == 'string' and {text = data} or data

    textData.position = textData.position or Config.TextUI.position
    textData.style = textData.style or Config.TextUI.style
    textData.icon = textData.icon
    textData.enableIcons = Config.TextUI.enableIcons

    SendNUIMessage('showTextUI', textData)
end

---Hide text UI
function N3X.HideTextUI()
    SendNUIMessage('hideTextUI', {})
end

-- Export for other resources
exports('ShowTextUI', N3X.ShowTextUI)
exports('showTextUI', N3X.ShowTextUI)
exports('HideTextUI', N3X.HideTextUI)
exports('hideTextUI', N3X.HideTextUI)

-- Override lib.showTextUI and lib.hideTextUI
if Config.Advanced.overrideOxLib then
    lib.showTextUI = N3X.ShowTextUI
    lib.hideTextUI = N3X.HideTextUI
end

-- =============================================
-- ALERT DIALOG
-- =============================================

---Show an alert dialog
---@param data table Alert data
---@return string|nil result Button clicked or nil if cancelled
function N3X.AlertDialog(data)
    DebugPrint('Showing alert dialog')

    if N3X.isUIOpen then
        DebugPrint('UI already open')
        return nil
    end

    N3X.isUIOpen = true
    SetNuiFocus(true, true)

    local alertData = {
        header = data.header or 'Alert',
        content = data.content or '',
        centered = data.centered or true,
        cancel = data.cancel or false,
        buttons = data.buttons or {
            {label = 'Confirm', value = 'confirm'}
        },
        position = Config.Alert.position,
        maxWidth = Config.Alert.maxWidth
    }

    SendNUIMessage('showAlert', alertData)

    -- Wait for response
    local response = promise.new()

    RegisterNUICallback('alertResponse', function(data, cb)
        N3X.isUIOpen = false
        SetNuiFocus(false, false)
        response:resolve(data.button)
        cb('ok')
    end)

    return Citizen.Await(response)
end

-- Export for other resources
exports('AlertDialog', N3X.AlertDialog)
exports('alertDialog', N3X.AlertDialog)

-- Override lib.alertDialog
if Config.Advanced.overrideOxLib then
    lib.alertDialog = N3X.AlertDialog
end

-- =============================================
-- RADIAL MENU
-- =============================================

---Show radial menu
---@param items table Menu items
function N3X.RadialMenu(items)
    DebugPrint('Showing radial menu')

    if N3X.isUIOpen then
        DebugPrint('UI already open')
        return
    end

    N3X.isUIOpen = true
    SetNuiFocus(true, true)

    local menuData = {
        items = items,
        style = Config.RadialMenu.style,
        size = Config.RadialMenu.size,
        enableLabels = Config.RadialMenu.enableLabels,
        enableIcons = Config.RadialMenu.enableIcons
    }

    SendNUIMessage('showRadial', menuData)
end

---Hide radial menu
function N3X.HideRadial()
    N3X.isUIOpen = false
    SetNuiFocus(false, false)
    SendNUIMessage('hideRadial', {})
end

-- Export for other resources
exports('RadialMenu', N3X.RadialMenu)
exports('radialMenu', N3X.RadialMenu)
exports('HideRadial', N3X.HideRadial)
exports('hideRadial', N3X.HideRadial)

-- =============================================
-- NPC DIALOG
-- =============================================

---Show NPC dialog
---@param data table Dialog data
---@return string|nil choice Selected choice or nil
function N3X.NPCDialog(data)
    DebugPrint('Showing NPC dialog')

    N3X.isUIOpen = true

    local dialogData = {
        name = data.name or 'NPC',
        avatar = data.avatar,
        message = data.message or '',
        choices = data.choices or {},
        showAvatar = Config.NPCDialog.showAvatar,
        enableTypewriter = Config.NPCDialog.enableTypewriter,
        typewriterSpeed = Config.NPCDialog.typewriterSpeed,
        position = Config.NPCDialog.position,
        maxWidth = Config.NPCDialog.maxWidth
    }

    SendNUIMessage('showNPCDialog', dialogData)

    if #dialogData.choices > 0 then
        SetNuiFocus(true, true)

        -- Wait for response
        local response = promise.new()

        RegisterNUICallback('npcDialogResponse', function(data, cb)
            N3X.isUIOpen = false
            SetNuiFocus(false, false)
            response:resolve(data.choice)
            cb('ok')
        end)

        return Citizen.Await(response)
    else
        -- Auto-hide after duration
        SetTimeout(data.duration or 5000, function()
            N3X.isUIOpen = false
            SendNUIMessage('hideNPCDialog', {})
        end)
    end
end

---Hide NPC dialog
function N3X.HideNPCDialog()
    N3X.isUIOpen = false
    SetNuiFocus(false, false)
    SendNUIMessage('hideNPCDialog', {})
end

-- Export for other resources
exports('NPCDialog', N3X.NPCDialog)
exports('npcDialog', N3X.NPCDialog)
exports('HideNPCDialog', N3X.HideNPCDialog)
exports('hideNPCDialog', N3X.HideNPCDialog)

-- =============================================
-- INITIALIZATION
-- =============================================

CreateThread(function()
    Wait(500)

    -- Send config to NUI
    SendNUIMessage({
        action = 'setConfig',
        config = Config
    })

    DebugPrint('N3X UI Pack initialized successfully!')

    if Config.Advanced.overrideOxLib then
        print('^2[N3X_UIPACK]^7 Successfully overriding ox_lib UI functions')
    end
end)

-- Return module for lib access
return N3X
