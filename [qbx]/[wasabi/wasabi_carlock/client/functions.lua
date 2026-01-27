-----------------For support, scripts, and more----------------
--------------- https://discord.gg/wasabiscripts  -------------
---------------------------------------------------------------
if not wsb then return print((Strings.no_wsb):format(GetCurrentResourceName())) end

if Config.metadataKeys and Config.metadataKeys.enabled and not wsb.inventory then
    Config.metadataKeys.enabled = false
end

local textUI, breakVehLoop = {}, nil

local function trim(str)
    if not str then return nil end
    return (string.gsub(str, "^%s*(.-)%s*$", "%1"))
end

CreateBlip = function(output, sprite, color, text, scale, flash, short, crime)
    local x, y, z = table.unpack(output)
    local blip = AddBlipForCoord(x, y, z)

    SetBlipSprite(blip, sprite)
    SetBlipDisplay(blip, 4)
    SetBlipScale(blip, scale)
    SetBlipColour(blip, color)
    SetBlipFlashes(blip, flash)
    SetBlipAsShortRange(blip, short)

    local blipStr = ('%s_%s'):format(crime, tostring(blip))
    AddTextEntry(blipStr, text)
    BeginTextCommandSetBlipName(blipStr)
    EndTextCommandSetBlipName(blip)

    return blip
end

-- Export Functions
function ToggleLock()
    local coords = GetEntityCoords(wsb.cache.ped)
    local vehicle = wsb.getClosestVehicle(coords, 5.0, true)
    if vehicle and DoesEntityExist(vehicle) then
        local plate = GetVehicleNumberPlateText(vehicle)
        if HasKey(plate, false) and not wsb.playerData.isDead then
            if not (IsPedInAnyVehicle(wsb.cache.ped, false) and (GetVehiclePedIsIn(wsb.cache.ped, false) == vehicle)) then
                CreateThread(function()
                    wsb.stream.animDict('anim@heists@keycard@', 100)
                    TaskPlayAnim(wsb.cache.ped, 'anim@heists@keycard@', "exit", 24.0, 16.0, 1000, 50, 0, false, false,
                        false)
                    RemoveAnimDict('anim@heists@keycard@')
                end)
                SetVehicleEngineOn(vehicle, true, true, true)
                SetVehicleLights(vehicle, 2)
                Wait(300)
                SetVehicleLights(vehicle, 1)
                Wait(300)
                SetVehicleLights(vehicle, 2)
                Wait(300)
                SetVehicleLights(vehicle, 1)
                SetVehicleEngineOn(vehicle, false, false, false)
                SetVehicleLights(vehicle, 0)
            end
            local lockStatus = GetVehicleDoorLockStatus(vehicle)
            if lockStatus == 1 or lockStatus == 0 then
                TriggerEvent('wasabi_bridge:notify', Strings.vehicle_locked, Strings.vehicle_locked_desc, 'error', 'lock')
                PlaySoundFromEntity(-1, Config.toggleSound.audioName or 'BUTTON', vehicle,
                    Config.toggleSound.audioRef or 'MP_PROPERTIES_ELEVATOR_DOORS', false, false)
                SetVehicleDoorsLocked(vehicle, 2)
                OnVehicleLockUpdate(true, vehicle)
            else
                TriggerEvent('wasabi_bridge:notify', Strings.vehicle_unlocked, Strings.vehicle_unlocked_desc, 'success',
                    'lock-open')
                PlaySoundFromEntity(-1, Config.toggleSound.audioName or 'BUTTON', vehicle,
                    Config.toggleSound.audioRef or 'MP_PROPERTIES_ELEVATOR_DOORS', false, false)
                SetVehicleDoorsLocked(vehicle, 1)
                OnVehicleLockUpdate(false, vehicle)
            end
        end
    end
end

exports('ToggleLock', ToggleLock)

function IsHotwired(plate)
    return wsb.awaitServerCallback('wasabi_carlock:isHotwired', plate)
end

function GetAllKeys(target)
    local keys = wsb.awaitServerCallback('wasabi_carlock:getAllKeys', target or false)
    return keys or false
end

exports('GetAllKeys', GetAllKeys)

function HasKey(plate, target)
    local plate = trim(plate)
    if not target then
        return wsb.awaitServerCallback('wasabi_carlock:hasKey', plate, false)
    else
        return wsb.awaitServerCallback('wasabi_carlock:hasKey', plate, target)
    end
end

exports('HasKey', HasKey)

AddEventHandler('__cfx_export_qbx_vehiclekeys_HasKeys', function(setCB)
    setCB(function(vehicle)
        return HasKey(GetVehicleNumberPlateText(vehicle))
    end)
end)

function GiveKeys(plate, target)
    local plate = trim(plate)
    if Config.givingKeys.removeKey and target then
        TriggerServerEvent('wasabi_carlock:updateVehicle', plate, 'remove', false)
    end
    if not target then
        TriggerServerEvent('wasabi_carlock:updateVehicle', plate, 'add', false)
    else
        TriggerServerEvent('wasabi_carlock:updateVehicle', plate, 'add', target)
    end
end

exports('GiveKeys', GiveKeys)
exports('GiveKey', GiveKeys)

function RemoveKeys(plate, target)
    local plate = trim(plate)
    if not target then
        TriggerServerEvent('wasabi_carlock:updateVehicle', plate, 'remove', false)
    else
        TriggerServerEvent('wasabi_carlock:updateVehicle', plate, 'remove', target)
    end
end

exports('RemoveKeys', RemoveKeys)
exports('RemoveKey', RemoveKeys)

-- Functions

local function attemptHotwire(vehicle, plate, vehInfo)
    if not DoesEntityExist(vehicle) then return end
    local vehInfo = vehInfo
    local vehClass = GetVehicleClass(vehicle)
    local skillCheck = false
    if Config.UIColor then
        skillCheck = wsb.skillCheck({ difficulty = Config.hotwire.difficulties[vehClass], color = Config.UIColor })
    else
        skillCheck = wsb.skillCheck(Config.hotwire.difficulties[vehClass])
    end
    if skillCheck then
        vehInfo.hotwired = true
        TriggerServerEvent('wasabi_carlock:updateVehicle', plate, 'hotwired', false)
        if textUI ~= {} then
            textUI = {}
            wsb.hideTextUI()
        end
    else
        if not vehInfo.failedHotwire then
            vehInfo.failedHotwire = 1
        else
            vehInfo.failedHotwire = vehInfo.failedHotwire + 1
        end
        TriggerServerEvent('wasabi_carlock:updateVehicle', plate, 'failed', false)
    end
    if Config.notifyPolice and Config.notifyPolice.enabled then
        ChanceNotifyPolice('hotwire')
    end
    return vehInfo
end

local function searchVehicle(vehicle, plate, _vehInfo)
    if not DoesEntityExist(vehicle) then return end
    local vehInfo = _vehInfo
    if wsb.progressUI({
            label = Config.searchingVehicle.progressLabel,
            duration = Config.searchingVehicle.timeToSearch * 1000,
            position = 'bottom',
            useWhileDead = false,
            canCancel = true,
            disable = {
                movement = true,
                car = true,
            },
            anim = {
                dict = 'mini@repair',
                clip = 'fixing_a_player'
            },
        }, Config.progressBar and 'progressBar' or 'progressCircle') then
        local vehSearch = wsb.awaitServerCallback('wasabi_carlock:searchVehicle', plate)
        if not vehSearch then
            TriggerEvent('wasabi_bridge:notify', Strings.search_nothing_found, Strings.search_nothing_found_desc, 'error')
        elseif vehSearch.type == 'key' then
            vehInfo.keysFound = true
            TriggerEvent('wasabi_bridge:notify', Strings.search_keys_found, Strings.search_keys_found_desc, 'success')
            if textUI ~= {} then
                textUI = {}
                wsb.hideTextUI()
            end
        elseif vehSearch.type == 'item' then
            TriggerEvent('wasabi_bridge:notify', Strings.search_item_found,
                (Strings.search_item_found_desc):format(vehSearch.quantity, vehSearch.label), 'success')
        elseif vehSearch.type == 'account' then
            TriggerEvent('wasabi_bridge:notify', Strings.search_money_found,
                (Strings.search_money_found_desc):format(vehSearch.quantity), 'success')
        end
        vehInfo.searched = true
        TriggerServerEvent('wasabi_carlock:updateVehicle', plate, 'searched', false)
        return vehInfo
    else
        TriggerEvent('wasabi_bridge:notify', Strings.cancelled_action, Strings.cancelled_action_desc, 'error')
        return vehInfo
    end
end

function StopEngine(vehicle)
    SetVehicleEngineOn(vehicle, false, true, true)
end

function StartEngine(vehicle)
    breakVehLoop = false
    SetVehicleEngineOn(vehicle, true, true, false)
end

function BreakVehicleLoop() breakVehLoop = true end

function StartVehicleLoop(vehicle, plate, _vehInfo)
    CreateThread(function()
        local vehInfo = _vehInfo
        while true do
            local sleep = 0
            if IsPedInAnyVehicle(wsb.cache.ped, false) then
                if wsb.cache.seat ~= -1 then
                    if textUI ~= {} then
                        wsb.hideTextUI()
                        textUI = {}
                    end
                    sleep = 500
                else
                    if vehInfo.hotwired or vehInfo.keysFound or VehicleKeys[plate] or breakVehLoop then
                        breakVehLoop = false
                        if next(textUI) then
                            wsb.hideTextUI()
                            textUI = {}
                        end
                        StartEngine(vehicle)
                        break
                    end
                    local vehClass = GetVehicleClass(vehicle)
                    StopEngine(vehicle)
                    if Config.hotwire.enabled and Config.searchingVehicle.enabled and Config.hotwire.difficulties[vehClass] then
                        if (not vehInfo.failedHotwire or vehInfo.failedHotwire < Config.hotwire.maxAttempts) and not vehInfo.searched then
                            DisableControlAction(0, Config.hotwire.hotkey, true)
                            DisableControlAction(0, Config.searchingVehicle.hotkey, true)
                            if not textUI?.hotwireAndSearch then
                                wsb.showTextUI(Config.hotwire.string .. ' / ' .. Config.searchingVehicle.string)
                                textUI.hotwireAndSearch = true
                            end
                            if IsDisabledControlJustReleased(0, Config.hotwire.hotkey) then
                                vehInfo = attemptHotwire(vehicle, plate, vehInfo)
                            elseif IsDisabledControlJustReleased(0, Config.searchingVehicle.hotkey) then
                                vehInfo = searchVehicle(vehicle, plate, vehInfo)
                            end
                        elseif not vehInfo.failedHotwire or vehInfo.failedHotwire < Config.hotwire.maxAttempts then
                            DisableControlAction(0, Config.hotwire.hotkey, true)
                            if not textUI?.hotwire then
                                wsb.showTextUI(Config.hotwire.string)
                                textUI.hotwire = true
                            end
                            if IsDisabledControlJustReleased(0, Config.hotwire.hotkey) then
                                vehInfo = attemptHotwire(vehicle, plate, vehInfo)
                            end
                        elseif not vehInfo.searched then
                            DisableControlAction(0, Config.searchingVehicle.hotkey, true)
                            if not textUI?.searched then
                                wsb.showTextUI(Config.searchingVehicle.string)
                                textUI.searched = true
                            end
                            if IsDisabledControlJustReleased(0, Config.searchingVehicle.hotkey) then
                                vehInfo = searchVehicle(vehicle, plate, vehInfo)
                            end
                        elseif textUI then
                            wsb.hideTextUI()
                            textUI = nil
                        end
                    elseif Config.hotwire.enabled and Config.hotwire.difficulties[vehClass] then
                        if not vehInfo.failedHotwire or vehInfo.failedHotwire < Config.hotwire.maxAttempts then
                            DisableControlAction(0, Config.hotwire.hotkey, true)
                            if not textUI?.hotwire then
                                wsb.showTextUI(Config.hotwire.string)
                                textUI.hotwire = true
                            end
                            if IsDisabledControlJustReleased(0, Config.hotwire.hotkey) then
                                attemptHotwire(vehicle, plate, vehInfo)
                            end
                        end
                    elseif Config.searchingVehicle.enabled then
                        if not vehInfo.searched then
                            DisableControlAction(0, Config.searchingVehicle.hotkey, true)
                            if not textUI?.searched then
                                wsb.showTextUI(Config.searchingVehicle.string)
                                textUI.searched = true
                            end
                            if IsDisabledControlJustReleased(0, Config.searchingVehicle.hotkey) then
                                vehInfo = searchVehicle(vehicle, plate, vehInfo)
                            end
                        end
                    else
                        sleep = 1500
                    end
                end
            else
                if textUI ~= {} then
                    wsb.hideTextUI()
                    textUI = {}
                end
                break
            end
            Wait(sleep)
        end
    end)
end

function StartToggleOffLoop()
    local vehicle = wsb.cache.vehicle
    if not vehicle or not DoesEntityExist(vehicle) then return end
    StartEngine(vehicle)
    while true do
        local sleep = 0
        if vehicle ~= wsb.cache.vehicle then break end
        if wsb.cache.seat ~= -1 then
            sleep = 500
        else
            if IsControlJustReleased(0, Config.EngineToggle.hotkey) or IsDisabledControlJustReleased(0, Config.EngineToggle.hotkey) then
                StopEngine(vehicle)
                TriggerEvent('wasabi_bridge:notify', Strings.vehicle_stopped, Strings.vehicle_stopped_desc, 'error')
                TriggerEvent('wasabi_carlock:engineToggleLoopStart')
                break
            end
        end

        Wait(sleep)
    end
end

function StartEngineToggleLoop()
    local vehicle = wsb.cache.vehicle
    if not vehicle or not DoesEntityExist(vehicle) then return end
    StopEngine(vehicle)
    while true do
        if vehicle ~= wsb.cache.vehicle then
            if Config.EngineToggle.string then
                local open, text = wsb.isTextUIOpen()
                if open and text == Config.EngineToggle.string then
                    wsb.hideTextUI()
                end
            end

            break
        end

        if Config.EngineToggle.string then
            local open, text = wsb.isTextUIOpen()
            if not open or text ~= Config.EngineToggle.string then
                wsb.showTextUI(Config.EngineToggle.string)
            end
        end

        if IsDisabledControlJustReleased(0, Config.EngineToggle.hotkey) or IsControlJustReleased(0, Config.EngineToggle.hotkey) then
            StartEngine(vehicle)
            local open, text = wsb.isTextUIOpen()
            if open and text == Config.EngineToggle.string then
                wsb.hideTextUI()
            end
            TriggerEvent('wasabi_bridge:notify', Strings.vehicle_started, Strings.vehicle_started_desc, 'success')
            StartToggleOffLoop()
            break
        end

        StopEngine(vehicle)

        Wait(0)
    end
end

AddEventHandler('wasabi_carlock:engineToggleLoopStart', function()
    if GetInvokingResource() ~= GetCurrentResourceName() then return end
    StartEngineToggleLoop()
end)

if Config.manageKeys.enabled then
    function ManageKeysMenu()
        local Options = {}
        local keys = GetAllKeys()
        if not keys or not next(keys) then
            TriggerEvent('wasabi_bridge:notify', Strings.no_keys_found, Strings.no_keys_found_desc, 'error')
            return
        end
        for plate, _ in pairs(keys) do
            Options[#Options + 1] = {
                icon = 'key',
                title = plate,
                description = '',
                event = 'wasabi_carlock:manageKey',
                args = { plate = plate }
            }
        end

        wsb.showMenu({
            id = 'manage_keys_menu',
            color = Config.UIColor,
            title = Strings.manage_keys,
            position = Config.manageKeys.menuPosition,
            options = Options
        })
    end

    exports('ManageKeysMenu', ManageKeysMenu)
end

if Config.givingKeys.enabled then
    function GiveKeyMenu(plate)
        local Options = {}
        local coords = GetEntityCoords(wsb.cache.ped)
        local vehicle = wsb.getClosestVehicle(coords, 10.0, true)
        if not plate then
            if not vehicle or not DoesEntityExist(vehicle) then
                TriggerEvent('wasabi_bridge:notify', Strings.no_vehicle_found, Strings.no_vehicle_found_desc, 'error')
                return
            end

            plate = GetVehicleNumberPlateText(vehicle)
        end

        local hasKey = HasKey(plate, false)
        if not hasKey then
            TriggerEvent('wasabi_bridge:notify', Strings.no_vehicle_found, Strings.no_vehicle_found_desc, 'error')
            return
        end
        local closestPlayers = wsb.getNearbyPlayers(coords, 10.0, false)
        if #closestPlayers < 1 then
            TriggerEvent('wasabi_bridge:notify', Strings.no_one_nearby, Strings.no_one_nearby_desc, 'error')
            return
        end
        local playerList = {}
        for i = 1, #closestPlayers do
            playerList[#playerList + 1] = {
                id = GetPlayerServerId(closestPlayers[i])
            }
        end
        local nearbyPlayers = wsb.awaitServerCallback('wasabi_carlock:getPlayerData', playerList)
        for _, v in pairs(nearbyPlayers) do
            Options[#Options + 1] = {
                icon = 'user',
                title = v.name,
                description = Strings.player_id .. ' ' .. v.id,
                event = 'wasabi_carlock:giveSelectedKey',
                args = { id = v.id, plate = plate }
            }
        end

        wsb.showMenu({
            id = 'give_keys_menu',
            color = Config.UIColor,
            title = tostring(trim(plate)),
            position = Config.manageKeys.menuPosition,
            options = Options
        })
    end

    exports('GiveKeyMenu', GiveKeyMenu)
end

if Config.lockpick.enabled then
    function LockpickVehicle()
        local coords = GetEntityCoords(wsb.cache.ped)
        local vehicle = wsb.getClosestVehicle(coords, 5.0, false)
        if not vehicle or not DoesEntityExist(vehicle) then
            TriggerEvent('wasabi_bridge:notify', Strings.no_vehicle_found, Strings.no_vehicle_found_lockpick_desc,
                'error')
        elseif IsPedInAnyVehicle(wsb.cache.ped, false) then
            TriggerEvent('wasabi_bridge:notify', Strings.no_vehicle_found, Strings.no_vehicle_found_lockpick_desc,
                'error')
        else
            if GetVehicleDoorLockStatus(vehicle) == 1 or GetVehicleDoorLockStatus(vehicle) == 0 then
                TriggerEvent('wasabi_bridge:notify', Strings.vehicle_not_locked, Strings.vehicle_not_locked_desc, 'error')
            else
                local vehClass = GetVehicleClass(vehicle)
                if not Config.lockpick.difficulties[vehClass] then
                    TriggerEvent('wasabi_bridge:notify', Strings.vehicle_cant_lockpick,
                        Strings.vehicle_cant_lockpick_desc, 'error')
                else
                    local randInt = math.random(1, 100)
                    local vehCoords = GetEntityCoords(vehicle)
                    TaskTurnPedToFaceCoord(wsb.cache.ped, vehCoords.x, vehCoords.y, vehCoords.z, 2000)
                    Wait(2000)
                    TaskStartScenarioInPlace(wsb.cache.ped, 'PROP_HUMAN_PARKING_METER', 0, true)
                    local skillCheck = false
                    if Config.UIColor then
                        skillCheck = wsb.skillCheck({
                            difficulty = Config.lockpick.difficulties[vehClass],
                            color = Config.UIColor
                     })
                    else
                        skillCheck = wsb.skillCheck(Config.lockpick.difficulties[vehClass])
                    end
                    if skillCheck then
                        SetVehicleDoorsLocked(vehicle, 1)
                        TriggerEvent('wasabi_bridge:notify', Strings.success, Strings.success_lockpick_desc, 'success')
                    else
                        TriggerEvent('wasabi_bridge:notify', Strings.failed, Strings.fail_lockpick_desc, 'error')
                    end
                    ClearPedTasks(wsb.cache.ped)
                    if Config.lockpick.chanceOfLoss >= randInt then
                        TriggerServerEvent('wasabi_lockpick:breakLockpick')
                        TriggerEvent('wasabi_bridge:notify', Strings.lockpick_broke, Strings.lockpick_broke_desc, 'error')
                    end
                    if Config.notifyPolice and Config.notifyPolice.enabled then
                        ChanceNotifyPolice('lockpick')
                    end
                end
            end
        end
    end
end

function AreKeysRequired(model, plate)
    if next(Config.noKeysNeeded) then
        for i = 1, #Config.noKeysNeeded do
            if model == Config.noKeysNeeded[i] then
                return false
            end
        end
    end

    if next(Config.WhitelistedPlates) then
        for i = 1, #Config.WhitelistedPlates do
            if wsb.trim(plate) == Config.WhitelistedPlates[i] then
                return false
            end
        end
    end

    if Config.WhitelistedJobs and next(Config.WhitelistedJobs) then
        for i = 1, #Config.WhitelistedJobs do
            if wsb.hasGroup(Config.WhitelistedJobs[i]) then
                return false
            end
        end
    end

    return true
end

if Config.notifyPolice and Config.notifyPolice.enabled then
    function ChanceNotifyPolice(crime)
        if not Config.notifyPolice[crime] then return end
        if wsb.hasGroup(Config.notifyPolice.policeJobs) then return end
        local chance = Config.notifyPolice[crime]
        if chance >= math.random(1, 100) then
            TriggerServerEvent('wasabi_carlock:server:policeNotification', {
                crime = crime,
                coords = GetEntityCoords(wsb.cache.ped)
            })
        end
    end
end
