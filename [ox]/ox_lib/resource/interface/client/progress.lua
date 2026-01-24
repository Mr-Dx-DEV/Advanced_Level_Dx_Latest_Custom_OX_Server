--[[ 
    https://github.com/overextended/ox_lib
    This file is licensed under LGPL-3.0 or higher <https://www.gnu.org/licenses/lgpl-3.0.en.html>
    Copyright © 2025 Linden <https://github.com/thelindat>
]]

local progress
local DisableControlAction = DisableControlAction
local DisablePlayerFiring = DisablePlayerFiring
local playerState = LocalPlayer.state
local createdProps = {}

---@class ProgressPropProps
---@field model string
---@field bone? number
---@field pos vector3
---@field rot vector3
---@field rotOrder? number

---@class ProgressProps
---@field label? string
---@field duration number
---@field position? 'middle' | 'bottom'
---@field useWhileDead? boolean
---@field allowRagdoll? boolean
---@field allowCuffed? boolean
---@field allowFalling? boolean
---@field allowSwimming? boolean
---@field canCancel? boolean
---@field anim? { dict?: string, clip: string, flag?: number, blendIn?: number, blendOut?: number, duration?: number, playbackRate?: number, lockX?: boolean, lockY?: boolean, lockZ?: boolean, scenario?: string, playEnter?: boolean }
---@field prop? ProgressPropProps | ProgressPropProps[]
---@field disable? { move?: boolean, sprint?: boolean, car?: boolean, combat?: boolean, mouse?: boolean }

local function createProp(ped, prop)
    lib.requestModel(prop.model)
    local coords = GetEntityCoords(ped)
    local object = CreateObject(prop.model, coords.x, coords.y, coords.z, false, false, false)

    AttachEntityToEntity(object, ped, GetPedBoneIndex(ped, prop.bone or 60309),
        prop.pos.x, prop.pos.y, prop.pos.z,
        prop.rot.x, prop.rot.y, prop.rot.z,
        true, true, false, true, prop.rotOrder or 0, true)

    SetModelAsNoLongerNeeded(prop.model)
    return object
end

local function interruptProgress(data)
    if not data.useWhileDead and IsEntityDead(cache.ped) then return true end
    if not data.allowRagdoll and IsPedRagdoll(cache.ped) then return true end
    if not data.allowCuffed and IsPedCuffed(cache.ped) then return true end
    if not data.allowFalling and IsPedFalling(cache.ped) then return true end
    if not data.allowSwimming and IsPedSwimming(cache.ped) then return true end
end

local isFivem = cache.game == 'fivem'

local controls = {
    INPUT_LOOK_LR = isFivem and 1 or 0xA987235F,
    INPUT_LOOK_UD = isFivem and 2 or 0xD2047988,
    INPUT_SPRINT = isFivem and 21 or 0x8FFC75D6,
    INPUT_AIM = isFivem and 25 or 0xF84FA74F,
    INPUT_MOVE_LR = isFivem and 30 or 0x4D8FB4C1,
    INPUT_MOVE_UD = isFivem and 31 or 0xFDA83190,
    INPUT_DUCK = isFivem and 36 or 0xDB096B85,
    INPUT_VEH_MOVE_LEFT_ONLY = isFivem and 63 or 0x9DF54706,
    INPUT_VEH_MOVE_RIGHT_ONLY = isFivem and 64 or 0x97A8FD98,
    INPUT_VEH_ACCELERATE = isFivem and 71 or 0x5B9FD4E2,
    INPUT_VEH_BRAKE = isFivem and 72 or 0x6E1F639B,
    INPUT_VEH_EXIT = isFivem and 75 or 0xFEFAB9B4,
    INPUT_VEH_MOUSE_CONTROL_OVERRIDE = isFivem and 106 or 0x39CCABD5
}

--- Automatically choose an icon based on label keywords
local function detectIcon(label, default)
    label = label:lower()

    if label:find('eat') or label:find('burger') or label:find('food') then
        return 'fa-solid fa-burger'
    elseif label:find('drink') or label:find('coffee') or label:find('water') then
        return 'fa-solid fa-mug-hot'
    elseif label:find('repair') or label:find('fix') then
        return 'fa-solid fa-wrench'
    elseif label:find('search') or label:find('inspect') then
        return 'fa-solid fa-magnifying-glass'
    elseif label:find('use') then
        return 'fa-solid fa-gear'
    elseif label:find('craft') or label:find('make') then
        return 'fa-solid fa-hammer'
    end

    return default or 'fa-solid fa-cog'
end

---@param data ProgressProps
---@return boolean?
function lib.progressBar(data)
    while progress ~= nil do Wait(0) end
    if interruptProgress(data) then return false end

    -- props
    if data.prop then playerState:set('lib:progressProps', data.prop, true) end

    -- detect action-based icon
    local label = data.label or 'Processing...'
    local icon = detectIcon(label, data.icon)

    -- anim
    if data.anim then
        if data.anim.dict then
            lib.requestAnimDict(data.anim.dict)
            TaskPlayAnim(cache.ped, data.anim.dict, data.anim.clip, data.anim.blendIn or 3.0,
                data.anim.blendOut or 1.0, data.anim.duration or -1, data.anim.flag or 49,
                data.anim.playbackRate or 0, data.anim.lockX, data.anim.lockY, data.anim.lockZ)
            RemoveAnimDict(data.anim.dict)
        elseif data.anim.scenario then
            TaskStartScenarioInPlace(cache.ped, data.anim.scenario, 0,
                data.anim.playEnter == nil or data.anim.playEnter)
        end
    end

    local result = exports.wasabi_uikit:ProgressBar({
        label = label,
        duration = data.duration or 3000,
        icon = icon,
        useWhileDead = data.useWhileDead,
        allowCuffed = data.allowCuffed,
        allowRagdoll = data.allowRagdoll,
        allowFalling = data.allowFalling,
        disable = data.disable,
    }, 'bar')

    -- cleanup
    if data.prop then playerState:set('lib:progressProps', nil, true) end
    if data.anim then ClearPedTasks(cache.ped) end

    return result
end

---@param data ProgressProps
---@return boolean?
function lib.progressCircle(data)
    while progress ~= nil do Wait(0) end
    if interruptProgress(data) then return false end

    if data.prop then playerState:set('lib:progressProps', data.prop, true) end

    local label = data.label or 'Processing...'
    local icon = detectIcon(label, data.icon)

    if data.anim then
        if data.anim.dict then
            lib.requestAnimDict(data.anim.dict)
            TaskPlayAnim(cache.ped, data.anim.dict, data.anim.clip, data.anim.blendIn or 3.0,
                data.anim.blendOut or 1.0, data.anim.duration or -1, data.anim.flag or 49,
                data.anim.playbackRate or 0, data.anim.lockX, data.anim.lockY, data.anim.lockZ)
            RemoveAnimDict(data.anim.dict)
        elseif data.anim.scenario then
            TaskStartScenarioInPlace(cache.ped, data.anim.scenario, 0,
                data.anim.playEnter == nil or data.anim.playEnter)
        end
    end

    local result = exports.wasabi_uikit:ProgressBar({
        label = label,
        duration = data.duration or 3000,
        icon = icon,
        useWhileDead = data.useWhileDead,
        allowCuffed = data.allowCuffed,
        allowRagdoll = data.allowRagdoll,
        allowFalling = data.allowFalling,
        disable = data.disable,
    }, 'circle')

    if data.prop then playerState:set('lib:progressProps', nil, true) end
    if data.anim then ClearPedTasks(cache.ped) end

    return result
end

function lib.cancelProgress()
    if not progress then error('No progress bar is active') end
    progress = false
end

---@return boolean
function lib.progressActive()
    return progress and true
end

RegisterNUICallback('progressComplete', function(data, cb)
    cb(1)
    progress = nil
end)

RegisterCommand('cancelprogress', function()
    if progress?.canCancel then progress = false end
end)

if isFivem then
    RegisterKeyMapping('cancelprogress', locale('cancel_progress'), 'keyboard', 'x')
end

local function deleteProgressProps(serverId)
    local playerProps = createdProps[serverId]
    if not playerProps then return end
    for i = 1, #playerProps do
        local prop = playerProps[i]
        if DoesEntityExist(prop) then DeleteEntity(prop) end
    end
    createdProps[serverId] = nil
end

RegisterNetEvent('onPlayerDropped', function(serverId)
    deleteProgressProps(serverId)
end)

AddStateBagChangeHandler('lib:progressProps', nil, function(bagName, key, value, reserved, replicated)
    if replicated then return end

    local ply = GetPlayerFromStateBagName(bagName)
    if ply == 0 then return end
    local ped = GetPlayerPed(ply)
    local serverId = GetPlayerServerId(ply)

    if not value then
        return deleteProgressProps(serverId)
    end

    createdProps[serverId] = {}
    local playerProps = createdProps[serverId]

    if value.model then
        playerProps[#playerProps + 1] = createProp(ped, value)
    else
        for i = 1, #value do
            local prop = value[i]
            if prop then
                playerProps[#playerProps + 1] = createProp(ped, prop)
            end
        end
    end
end)
