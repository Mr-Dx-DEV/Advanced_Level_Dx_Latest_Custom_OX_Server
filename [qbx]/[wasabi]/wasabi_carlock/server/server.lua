-----------------For support, scripts, and more----------------
--------------- https://discord.gg/wasabiscripts  -------------
---------------------------------------------------------------
if not wsb then return print((Strings.no_wsb):format(GetCurrentResourceName())) end

if Config.metadataKeys and Config.metadataKeys.enabled and not wsb.inventory then
    print(Strings.warning_disabling_metadata)
    Config.metadataKeys.enabled = false
end

VehicleKeys, SearchedVehicles, FailedHotwire, HotwiredVehicles = {}, {}, {}, {}
local ownedVehicles = {}

local function trim(str)
    if not str then return nil end
    return (string.gsub(str, "^%s*(.-)%s*$", "%1"))
end

local function hasMetadataKey(target, plate)
    local slots = wsb.inventory.getItemSlots(target, Config.metadataKeys.keyItem)
    if not slots or not next(slots) then return false end
    for i = 1, #slots do
        local metadata = wsb.inventory.getItemMetadata(target, slots[i])
        if metadata and metadata.plate and metadata.plate == plate then
            return true
        end
    end
    return false
end

---@diagnostic disable: undefined-global
if not Config.metadataKeys.enabled then
    RegisterNetEvent('wasabi_carlock:initializePlayer', function()
        local src = source
        local identifier = wsb.getIdentifier(src)
        if not identifier then return end
        if not VehicleKeys[identifier] then return end
        Player(src).state.vehicleKeys = VehicleKeys[identifier]
    end)
end


RegisterServerEvent('wasabi_carlock:updateVehicle')
AddEventHandler('wasabi_carlock:updateVehicle', function(_plate, update, target)
    local src = source
    local plate = trim(_plate)
    if not plate then return end
    if update == 'hotwired' then
        HotwiredVehicles[plate] = true
    elseif update == 'failed' then
        if not FailedHotwire[plate] then
            FailedHotwire[plate] = 1
        else
            FailedHotwire[plate] = FailedHotwire[plate] + 1
        end
    elseif update == 'searched' then
        SearchedVehicles[plate] = true
    else
        local identifier
        if target then
            identifier = wsb.getIdentifier(target)
        else
            identifier = wsb.getIdentifier(src)
        end
        if not identifier then return end
        if update == 'add' then
            if Config.metadataKeys and Config.metadataKeys.enabled then
                wsb.addItem(target or src, Config.metadataKeys.keyItem, 1, false, { plate = plate })
            else
                if not ownedVehicles[plate] then
                    ownedVehicles[plate] = 1
                else
                    ownedVehicles[plate] = ownedVehicles[plate] + 1
                end
                if not VehicleKeys[identifier] then VehicleKeys[identifier] = {} end
                VehicleKeys[identifier][plate] = true
                Player((target or src)).state.vehicleKeys = VehicleKeys[identifier]
            end
            TriggerClientEvent('wasabi_bridge:notify', (target or src), Strings.keys_received,
                (Strings.keys_received_desc):format(plate), 'success', 'key')
            TriggerClientEvent('wasabi_carlock:bLoop', (target or src))
        elseif update == 'remove' then
            if Config.metadataKeys and Config.metadataKeys.enabled then
                local slots = wsb.inventory.getItemSlots(target or src, Config.metadataKeys.keyItem)
                if not slots or not next(slots) then return end
                for i = 1, #slots do
                    local metadata = wsb.inventory.getItemMetadata(target or src, slots[i])
                    if metadata and metadata.plate and metadata.plate == plate then
                        wsb.removeItem(target or src, Config.metadataKeys.keyItem, 1, slots[i])
                    end
                end
            else
                if ownedVehicles[plate] > 1 then
                    ownedVehicles[plate] = ownedVehicles[plate] - 1
                else
                    ownedVehicles[plate] = nil
                end
                if not VehicleKeys[identifier] then return end
                TriggerClientEvent('wasabi_bridge:notify', (target or src), Strings.keys_removed,
                    (Strings.keys_removed_desc):format(plate), 'error', 'key')
                VehicleKeys[identifier][plate] = nil
                Player((target or src)).state.vehicleKeys = VehicleKeys[identifier]
            end
        end
    end
end)

RegisterServerEvent('wasabi_lockpick:breakLockpick')
AddEventHandler('wasabi_lockpick:breakLockpick', function()
    wsb.removeItem(source, Config.lockpick.item, 1)
end)

-- Export functions
function GetAllKeys(target)
    local identifier = wsb.getIdentifier(target)
    if not identifier then return false end
    if VehicleKeys and VehicleKeys[identifier] then
        return VehicleKeys[identifier]
    end

    return false
end

exports('GetAllKeys', GetAllKeys)

function HasKey(target, plate)
    if Config.metadataKeys and Config.metadataKeys.enabled then
        return hasMetadataKey(target, plate)
    else
        local identifier = wsb.getIdentifier(target)
        if not identifier then return false end
        if VehicleKeys?[identifier]?[plate] then
            return true
        else
            return false
        end
    end
end

exports('HasKey', HasKey)

function GiveKeys(target, plate)
    if not plate or not target then return end
    TriggerEvent('wasabi_carlock:updateVehicle', plate, 'add', target)
end

exports('GiveKeys', GiveKeys)
exports('GiveKey', GiveKeys)

AddEventHandler('__cfx_export_qbx_vehiclekeys_GiveKeys', function(setCB)
    setCB(function(target, vehicle)
        return GiveKeys(target, GetVehicleNumberPlateText(vehicle))
    end)
end)

function RemoveKeys(target, plate)
    if not plate or not target then return end
    TriggerEvent('wasabi_carlock:updateVehicle', plate, 'remove', target)
end

exports('RemoveKeys', RemoveKeys)
exports('RemoveKey', RemoveKeys)

-- Callbacks
wsb.registerCallback('wasabi_carlock:searchVehicle', function(source, cb, plate)
    local reward = Config.searchingVehicle.rewards[math.random(#Config.searchingVehicle.rewards)]
    if reward.chance >= math.random(1, 100) then
        if reward.type == 'key' then
            if ownedVehicles[plate] then
                return false
            end
            GiveKeys(source, plate)
        elseif reward.type == 'account' then
            wsb.addMoney(source, reward.name, reward.quantity)
        elseif reward.type == 'item' then
            wsb.addItem(source, reward.name, reward.quantity)
        end
        cb(reward)
    else
        cb(false)
    end
end)

wsb.registerCallback('wasabi_carlock:useLockpick', function(source, cb)
    if wsb.hasItem(source, Config.lockpick.item) < 1 then return cb(false) end
    local randomInt = math.random(0, 100)
    if Config.lockpick.chanceOfLoss >= randomInt then
        wsb.removeItem(source, Config.lockpick.item, 1)
        cb('removed')
    else
        cb(true)
    end
end)

wsb.registerCallback('wasabi_carlock:getPlayerData', function(_source, cb, data)
    local newData
    for i = 1, #data do
        if not newData then newData = {} end
        local player = wsb.getPlayer(data[i].id)
        if player then
            newData[#newData + 1] = {
                id = data[i].id,
                name = wsb.getName(data[i].id),
            }
        end
    end
    while not #newData == #data do Wait(0) end
    cb(newData)
end)

wsb.registerCallback('wasabi_carlock:getAllKeys', function(source, cb, target)
    return cb(GetAllKeys(target or source))
end)

wsb.registerCallback('wasabi_carlock:hasKey', function(source, cb, plate, target)
    local src = source
    local hasKey = HasKey(target or src, plate)
    cb(hasKey or false)
end)

wsb.registerCallback('wasabi_carlock:isHotwired', function(_source, cb, plate)
    local hotwired = (HotwiredVehicles[plate] or false)
    cb(hotwired)
end)

wsb.registerCallback('wasabi_carlock:getVehInfo', function(_source, cb, plate)
    local data = {
        searched = (SearchedVehicles[plate] or false),
        failedHotwire = (FailedHotwire[plate] or false),
        hotwired = (HotwiredVehicles[plate] or false)
    }
    cb(data)
end)

-- Usable items
if Config.lockpick.enabled then
    CreateThread(function()
        while not wsb.framework do Wait(0) end
        wsb.registerUsableItem(Config.lockpick.item, function(source)
            TriggerClientEvent('wasabi_carlock:lockpickVehicle', source)
        end)
    end)
end

--All NPC Cars locked
if Config.lockNPCVehicles then
    AddEventHandler('entityCreated', function(entity)
        if not DoesEntityExist(entity) then return end
        local entityType = GetEntityType(entity)
        if entityType ~= 2 then return end
        if GetEntityPopulationType(entity) > 5 then return end
        SetVehicleDoorsLocked(entity, 2)
    end)
end
