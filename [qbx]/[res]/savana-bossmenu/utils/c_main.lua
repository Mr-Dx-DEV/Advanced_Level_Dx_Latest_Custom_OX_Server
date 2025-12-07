local Framework, frameworkName = getFramework()
local zones = {}

function loadTarget()
    if Config.Target then
        for k,v in pairs(Config.Shops) do
            if GetResourceState('ox_target') == 'started' then
                exports.ox_target:addBoxZone({
                    coords = v.bossMenu,
                    size = vec3(0.45, 0.35, v.bossMenumaxZ - v.bossMenuminZ), -- X, Y, Z boyutları
                    rotation = v.bossMenuheading,
                    debug = Config.debug,
                    options = {
                        {
                            name = "savanaBossMenu",
                            icon = "fas fa-sign-in-alt",
                            label = "Open Boss Menu",
                            event = "savana-bossmenu:openMenu",
                            job = fa,
                        },
                    }
                })

                if v.duty then
                    exports.ox_target:addBoxZone({
                        coords = v.duty,
                        size = vec3(0.45, 0.35, v.dutymaxZ - v.dutyminZ), -- X, Y, Z boyutları
                        rotation = v.dutyheading,
                        debug = Config.debug,
                        options = {
                            {
                                name = "savanaDuty",
                                icon = "fas fa-sign-in-alt",
                                label = "ON/OFF Duty",
                                event = "savana-bossmenu:duty",
                                job = fa,
                            },
                        }
                    })
                end
            else
                exports['qb-target']:AddBoxZone("savana_"..k, v.bossMenu, 0.45, 0.35, {
                    name = "savana_"..k,
                    heading = v.bossMenuheading,
                    debugPoly = Config.debug,
                    minZ = v.bossMenuminZ,
                    maxZ = v.bossMenumaxZ,
                }, {
                    options = {
                        {
                            type = "client",
                            event = "savana-bossmenu:openMenu",
                            icon = "fas fa-sign-in-alt",
                            label = "Open Boss Menu",
                            job = fa,
                        },
                    },
                    distance = 2.5
                })
                
                if v.duty then
                    exports['qb-target']:AddBoxZone("savanaDuty_"..k, v.duty, 0.45, 0.35, {
                        name = "savanaDuty_"..k,
                        heading = v.dutyheading,
                        debugPoly = Config.debug,
                        minZ = v.dutyminZ,
                        maxZ = v.dutymaxZ,
                    }, {
                        options = {
                            {
                                type = "client",
                                event = "savana-bossmenu:duty",
                                icon = "fas fa-sign-in-alt",
                                label = "ON/OFF Duty",
                                job = fa,
                            },
                        },
                        distance = 2.5
                    })
                end
            end
        end
    else
        local fetch = lib.callback.await('savana-bossmenu:getjob', false)
        for k, v in pairs(Config.Shops) do
            if fetch == k then
                -- Boss menu alanı
                local bossZone = lib.zones.sphere({
                    coords = v.bossMenu,
                    radius = 2.5,
                    debug = Config.debug,
                    onEnter = function()                        
                        lib.showTextUI(getMessage('openBoss'))
                    end,
                    onExit = function()
                        lib.hideTextUI()
                    end,
                    inside = function()
                        if IsControlJustPressed(0, 38) then
                            TriggerEvent('savana-bossmenu:openMenu')
                        end
                    end,
                })
                table.insert(zones, bossZone) -- Yeni alanı tabloya ekle
    
                -- Duty alanı
                if v.duty then
                    local dutyZone = lib.zones.sphere({
                        coords = v.duty,
                        radius = 2.5,
                        debug = Config.debug,
                        onEnter = function()                        
                            lib.showTextUI(getMessage('openDuty'))
                        end,
                        onExit = function()
                            lib.hideTextUI()
                        end,
                        inside = function()
                            if IsControlJustPressed(0, 38) then
                                TriggerEvent('savana-bossmenu:duty')
                            end
                        end,
                    })
                    table.insert(zones, dutyZone) -- Yeni alanı tabloya ekle
                end
            end
        end
    end
end

function openWardrobeMenu()
    TriggerEvent('qb-clothing:client:openOutfitMenu')

    TriggerEvent('esx_skin:openSaveableMenu', function(data)
        TriggerServerEvent('esx_skin:save', data)
    end)

    -- you can add your code here
end

function openStorageMenu(job)
    local name = "SAVANA-STASH-"..job
    if GetResourceState('ox_inventory') == 'started' then
        if exports.ox_inventory:openInventory('stash', name) == false then
            TriggerServerEvent('savana-bossmenu:createStash', name)
            exports.ox_inventory:openInventory('stash', name)
        end
    elseif GetResourceState('qb-inventory') == 'started' then
        TriggerServerEvent('savana-bossmenu:openInventory', 'qb', name)
    else
        TriggerServerEvent('inventory:server:OpenInventory', 'stash', name, {
            maxweight = 1000000,
            slots = 75,
        })
    end 
end

function clearZones()
    for _, zone in ipairs(zones) do
        zone:remove() -- Lib.zones alanını kaldır
    end
    zones = {} -- Tabloyu sıfırla
end

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
    TriggerServerEvent('savana-bossmenu:updateJob', job["name"])
    clearZones() -- Eski alanları temizle
    lib.hideTextUI()
    loadTarget()
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate')
AddEventHandler('QBCore:Client:OnJobUpdate', function(job)
    TriggerServerEvent('savana-bossmenu:updateJob', job["name"])
    clearZones() -- Eski alanları temizle
    lib.hideTextUI()
    loadTarget()
end)

RegisterNetEvent('QBCore:Client:OnGangUpdate')
AddEventHandler('QBCore:Client:OnGangUpdate', function(job)
    TriggerServerEvent('savana-bossmenu:updateGang', job["name"])
    clearZones() -- Eski alanları temizle
    lib.hideTextUI()
    loadTarget()
end)

AddEventHandler('onResourceStart', function(resourceName)
    if GetCurrentResourceName() ~= resourceName then
        return
    end

    -- Sunucu tarafındaki eventleri tetikleyin
    loadTarget()
    TriggerServerEvent('savana-bossmenu:register')
    TriggerServerEvent('savana-bossmenu:resetDuty')
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function()
    loadTarget()
    TriggerServerEvent('savana-bossmenu:register')
    TriggerServerEvent('savana-bossmenu:resetDuty')
end)

RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    loadTarget()
    TriggerServerEvent('savana-bossmenu:register')
    TriggerServerEvent('savana-bossmenu:resetDuty')
end)

function ApplySkin(ped, skin)
    local playerPed = ped

    -- Güvenli veri erişimi için varsayılan değerleri belirleme fonksiyonu
    local function GetValueOrDefault(tbl, key, default)
        if tbl[key] ~= nil and tbl[key].item ~= nil then
            return tbl[key].item
        end
        return default
    end

    local function GetTextureOrDefault(tbl, key, default)
        if tbl[key] ~= nil and tbl[key].texture ~= nil then
            return tbl[key].texture
        end
        return default
    end

    -- Yüz karışımı (blend) ayarları
    SetPedHeadBlendData(playerPed, skin.facemix.defaultShapeMix, skin.facemix.shapeMix, 0, skin.facemix.defaultSkinMix, skin.facemix.skinMix, 0, 1.0, 1.0, 0.0, false)

    -- Yüz özellikleri
    SetPedFaceFeature(playerPed, 0, (GetValueOrDefault(skin, "nose_1", 0) / 10.0) + 0.0)
    SetPedFaceFeature(playerPed, 1, (GetValueOrDefault(skin, "nose_2", 0) / 10.0) + 0.0)
    -- Diğer yüz özellikleri...
    SetPedFaceFeature(playerPed, 19, (GetValueOrDefault(skin, "neck_thikness", 0) / 10.0) + 0.0)

    -- Saç ve sakal
    SetPedHairColor(playerPed, GetTextureOrDefault(skin, "hair", 0), GetTextureOrDefault(skin, "hair", 0))
    SetPedHeadOverlay(playerPed, 1, GetValueOrDefault(skin, "beard", -1), (GetTextureOrDefault(skin, "beard", 1) / 10.0) + 0.0)

    -- Kıyafet ve aksesuarlar
    SetPedComponentVariation(playerPed, 2, GetValueOrDefault(skin, "hair", 0), GetTextureOrDefault(skin, "hair", 0), 2)
    SetPedComponentVariation(playerPed, 8, GetValueOrDefault(skin, "t-shirt", 0), GetTextureOrDefault(skin, "t-shirt", 0), 2)
    SetPedComponentVariation(playerPed, 11, GetValueOrDefault(skin, "torso2", 0), GetTextureOrDefault(skin, "torso2", 0), 2)
    SetPedComponentVariation(playerPed, 3, GetValueOrDefault(skin, "arms", 0), GetTextureOrDefault(skin, "arms", 0), 2)
    SetPedComponentVariation(playerPed, 10, GetValueOrDefault(skin, "decals", 0), GetTextureOrDefault(skin, "decals", 0), 2)
    SetPedComponentVariation(playerPed, 4, GetValueOrDefault(skin, "pants", 0), GetTextureOrDefault(skin, "pants", 0), 2)
    SetPedComponentVariation(playerPed, 6, GetValueOrDefault(skin, "shoes", 0), GetTextureOrDefault(skin, "shoes", 0), 2)
    SetPedComponentVariation(playerPed, 1, GetValueOrDefault(skin, "mask", 0), GetTextureOrDefault(skin, "mask", 0), 2)
    SetPedComponentVariation(playerPed, 9, GetValueOrDefault(skin, "bproof_1", 0), GetTextureOrDefault(skin, "bproof_1", 0), 2)
    SetPedComponentVariation(playerPed, 7, GetValueOrDefault(skin, "accessory", 0), GetTextureOrDefault(skin, "accessory", 0), 2)
    SetPedComponentVariation(playerPed, 5, GetValueOrDefault(skin, "bag", 0), GetTextureOrDefault(skin, "bag", 0), 2)

    -- Aksesuarlar
    if GetValueOrDefault(skin, "ear", -1) == -1 then
        ClearPedProp(playerPed, 2)
    else
        SetPedPropIndex(playerPed, 2, GetValueOrDefault(skin, "ear", 0), GetTextureOrDefault(skin, "ear", 0), 2)
    end

    if GetValueOrDefault(skin, "hat", -1) == -1 then
        ClearPedProp(playerPed, 0)
    else
        SetPedPropIndex(playerPed, 0, GetValueOrDefault(skin, "hat", 0), GetTextureOrDefault(skin, "hat", 0), 2)
    end

    if GetValueOrDefault(skin, "glass", -1) == -1 then
        ClearPedProp(playerPed, 1)
    else
        SetPedPropIndex(playerPed, 1, GetValueOrDefault(skin, "glass", 0), GetTextureOrDefault(skin, "glass", 0), 2)
    end

    if GetValueOrDefault(skin, "watch", -1) == -1 then
        ClearPedProp(playerPed, 6)
    else
        SetPedPropIndex(playerPed, 6, GetValueOrDefault(skin, "watch", 0), GetTextureOrDefault(skin, "watch", 0), 2)
    end

    if GetValueOrDefault(skin, "bracelet", -1) == -1 then
        ClearPedProp(playerPed, 7)
    else
        SetPedPropIndex(playerPed, 7, GetValueOrDefault(skin, "bracelet", 0), GetTextureOrDefault(skin, "bracelet", 0), 2)
    end
end
