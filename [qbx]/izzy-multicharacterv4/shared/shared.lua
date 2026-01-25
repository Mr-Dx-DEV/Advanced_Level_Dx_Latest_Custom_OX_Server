if not IsDuplicityVersion() then --client
    function setPedClothes(ped, data)
        if GetResourceState('izzy-appearance') == 'started' then
            TriggerEvent("sh-creation:client:loadData", data, ped)
        elseif GetResourceState('rcore_clothing') == 'started' then
            exports.rcore_clothing:setPedSkin(ped, { skin = data[1], model = data[2] })
        elseif GetResourceState('qb-clothing') == 'started' then
            TriggerEvent('qb-clothing:client:loadPlayerClothing', data, ped)
        elseif GetResourceState('fivem-appearance') == 'started' then
            exports['fivem-appearance']:setPedAppearance(ped, data)
        elseif GetResourceState('illenium-appearance') == 'started' then
            exports['illenium-appearance']:setPedAppearance(ped, data)
        elseif GetResourceState('esx_skin') == 'started' then
            setPedClothesForESX(ped, data)
        end
    end

    function setPedClothesForESX(ped, clothes)
        local playerPed = ped
        local Character = clothes

        if not Character then return end

        local face_weight = (Character["face_md_weight"] / 100) + 0.0
        local skin_weight = (Character["skin_md_weight"] / 100) + 0.0
        SetPedHeadBlendData(playerPed, Character["mom"], Character["dad"], 0, Character["mom"], Character["dad"], 0, face_weight, skin_weight, 0.0, false)
    
        SetPedFaceFeature(playerPed, 0, (Character["nose_1"] / 10) + 0.0) -- Nose Width
        SetPedFaceFeature(playerPed, 1, (Character["nose_2"] / 10) + 0.0) -- Nose Peak Height
        SetPedFaceFeature(playerPed, 2, (Character["nose_3"] / 10) + 0.0) -- Nose Peak Length
        SetPedFaceFeature(playerPed, 3, (Character["nose_4"] / 10) + 0.0) -- Nose Bone Height
        SetPedFaceFeature(playerPed, 4, (Character["nose_5"] / 10) + 0.0) -- Nose Peak Lowering
        SetPedFaceFeature(playerPed, 5, (Character["nose_6"] / 10) + 0.0) -- Nose Bone Twist
        SetPedFaceFeature(playerPed, 6, (Character["eyebrows_5"] / 10) + 0.0) -- Eyebrow height
        SetPedFaceFeature(playerPed, 7, (Character["eyebrows_6"] / 10) + 0.0) -- Eyebrow depth
        SetPedFaceFeature(playerPed, 8, (Character["cheeks_1"] / 10) + 0.0) -- Cheekbones Height
        SetPedFaceFeature(playerPed, 9, (Character["cheeks_2"] / 10) + 0.0) -- Cheekbones Width
        SetPedFaceFeature(playerPed, 10, (Character["cheeks_3"] / 10) + 0.0) -- Cheeks Width
        SetPedFaceFeature(playerPed, 11, (Character["eye_squint"] / 10) + 0.0) -- Eyes squint
        SetPedFaceFeature(playerPed, 12, (Character["lip_thickness"] / 10) + 0.0) -- Lip Fullness
        SetPedFaceFeature(playerPed, 13, (Character["jaw_1"] / 10) + 0.0) -- Jaw Bone Width
        SetPedFaceFeature(playerPed, 14, (Character["jaw_2"] / 10) + 0.0) -- Jaw Bone Length
        SetPedFaceFeature(playerPed, 15, (Character["chin_1"] / 10) + 0.0) -- Chin Height
        SetPedFaceFeature(playerPed, 16, (Character["chin_2"] / 10) + 0.0) -- Chin Length
        SetPedFaceFeature(playerPed, 17, (Character["chin_3"] / 10) + 0.0) -- Chin Width
        SetPedFaceFeature(playerPed, 18, (Character["chin_4"] / 10) + 0.0) -- Chin Hole Size
        SetPedFaceFeature(playerPed, 19, (Character["neck_thickness"] / 10) + 0.0) -- Neck Thickness
    
        SetPedHairColor(playerPed, Character["hair_color_1"], Character["hair_color_2"]) -- Hair Color
        SetPedHeadOverlay(playerPed, 3, Character["age_1"], (Character["age_2"] / 10) + 0.0) -- Age + opacity
        SetPedHeadOverlay(playerPed, 0, Character["blemishes_1"], (Character["blemishes_2"] / 10) + 0.0) -- Blemishes + opacity
        SetPedHeadOverlay(playerPed, 1, Character["beard_1"], (Character["beard_2"] / 10) + 0.0) -- Beard + opacity
        SetPedEyeColor(playerPed, Character["eye_color"]) -- Eyes color
        SetPedHeadOverlay(playerPed, 2, Character["eyebrows_1"], (Character["eyebrows_2"] / 10) + 0.0) -- Eyebrows + opacity
        SetPedHeadOverlay(playerPed, 4, Character["makeup_1"], (Character["makeup_2"] / 10) + 0.0) -- Makeup + opacity
        SetPedHeadOverlay(playerPed, 8, Character["lipstick_1"], (Character["lipstick_2"] / 10) + 0.0) -- Lipstick + opacity
        SetPedComponentVariation(playerPed, 2, Character["hair_1"], Character["hair_2"], 2) -- Hair
        SetPedHeadOverlayColor(playerPed, 1, 1, Character["beard_3"], Character["beard_4"]) -- Beard Color
        SetPedHeadOverlayColor(playerPed, 2, 1, Character["eyebrows_3"], Character["eyebrows_4"]) -- Eyebrows Color
        SetPedHeadOverlayColor(playerPed, 4, 2, Character["makeup_3"], Character["makeup_4"]) -- Makeup Color
        SetPedHeadOverlayColor(playerPed, 8, 1, Character["lipstick_3"], Character["lipstick_4"]) -- Lipstick Color
        SetPedHeadOverlay(playerPed, 5, Character["blush_1"], (Character["blush_2"] / 10) + 0.0) -- Blush + opacity
        SetPedHeadOverlayColor(playerPed, 5, 2, Character["blush_3"]) -- Blush Color
        SetPedHeadOverlay(playerPed, 6, Character["complexion_1"], (Character["complexion_2"] / 10) + 0.0) -- Complexion + opacity
        SetPedHeadOverlay(playerPed, 7, Character["sun_1"], (Character["sun_2"] / 10) + 0.0) -- Sun Damage + opacity
        SetPedHeadOverlay(playerPed, 9, Character["moles_1"], (Character["moles_2"] / 10) + 0.0) -- Moles/Freckles + opacity
        SetPedHeadOverlay(playerPed, 10, Character["chest_1"], (Character["chest_2"] / 10) + 0.0) -- Chest Hair + opacity
        SetPedHeadOverlayColor(playerPed, 10, 1, Character["chest_3"]) -- Torso Color
    
        if Character["bodyb_1"] == -1 then
            SetPedHeadOverlay(playerPed, 11, 255, (Character["bodyb_2"] / 10) + 0.0) -- Body Blemishes + opacity
        else
            SetPedHeadOverlay(playerPed, 11, Character["bodyb_1"], (Character["bodyb_2"] / 10) + 0.0)
        end
    
        if Character["bodyb_3"] == -1 then
            SetPedHeadOverlay(playerPed, 12, 255, (Character["bodyb_4"] / 10) + 0.0)
        else
            SetPedHeadOverlay(playerPed, 12, Character["bodyb_3"], (Character["bodyb_4"] / 10) + 0.0) -- Blemishes 'added body effect' + opacity
        end
    
        if Character["ears_1"] == -1 then
            ClearPedProp(playerPed, 2)
        else
            SetPedPropIndex(playerPed, 2, Character["ears_1"], Character["ears_2"], 2) -- Ears Accessories
        end
    
        SetPedComponentVariation(playerPed, 8, Character["tshirt_1"], Character["tshirt_2"], 2) -- Tshirt
        SetPedComponentVariation(playerPed, 11, Character["torso_1"], Character["torso_2"], 2) -- torso parts
        SetPedComponentVariation(playerPed, 3, Character["arms"], Character["arms_2"], 2) -- Arms
        SetPedComponentVariation(playerPed, 10, Character["decals_1"], Character["decals_2"], 2) -- decals
        SetPedComponentVariation(playerPed, 4, Character["pants_1"], Character["pants_2"], 2) -- pants
        SetPedComponentVariation(playerPed, 6, Character["shoes_1"], Character["shoes_2"], 2) -- shoes
        SetPedComponentVariation(playerPed, 1, Character["mask_1"], Character["mask_2"], 2) -- mask
        SetPedComponentVariation(playerPed, 9, Character["bproof_1"], Character["bproof_2"], 2) -- bulletproof
        SetPedComponentVariation(playerPed, 7, Character["chain_1"], Character["chain_2"], 2) -- chain
        SetPedComponentVariation(playerPed, 5, Character["bags_1"], Character["bags_2"], 2) -- Bag
    
        if Character["helmet_1"] == -1 then
            ClearPedProp(playerPed, 0)
        else
            SetPedPropIndex(playerPed, 0, Character["helmet_1"], Character["helmet_2"], 2) -- Helmet
        end
    
        if Character["glasses_1"] == -1 then
            ClearPedProp(playerPed, 1)
        else
            SetPedPropIndex(playerPed, 1, Character["glasses_1"], Character["glasses_2"], 2) -- Glasses
        end
    
        if Character["watches_1"] == -1 then
            ClearPedProp(playerPed, 6)
        else
            SetPedPropIndex(playerPed, 6, Character["watches_1"], Character["watches_2"], 2) -- Watches
        end
    
        if Character["bracelets_1"] == -1 then
            ClearPedProp(playerPed, 7)
        else
            SetPedPropIndex(playerPed, 7, Character["bracelets_1"], Character["bracelets_2"], 2) -- Bracelets
        end
    end

    RegisterNetEvent("izzy-multicharacterv4:client:firstSpawn", function()
        local playerPed = PlayerPedId()
        SetEntityCoords(playerPed, cfg.firstSpawn.xyz)
        SetEntityHeading(playerPed, cfg.firstSpawn.w)
        FreezeEntityPosition(playerPed, false)
        TriggerEvent("izzy-multicharacterv4:close")
        Wait(100)
        SetEntityVisible(playerPed, true)
        TriggerServerEvent('QBCore:Server:OnPlayerLoaded')
        TriggerEvent('QBCore:Client:OnPlayerLoaded')
        TriggerServerEvent('qb-houses:server:SetInsideMeta', 0, false)
        TriggerServerEvent('qb-apartments:server:SetInsideMeta', 0, 0, false)
        TriggerEvent('qb-weathersync:client:EnableSync')
    
        if GetResourceState('izzy-appearance') == 'started' then
            TriggerEvent("sh-creation:client:CreateCharacter")
        elseif GetResourceState('qb-clothes') == 'started' then 
            TriggerEvent('qb-clothes:client:CreateFirstCharacter')
        else
            TriggerEvent('qb-clothes:client:CreateFirstCharacter')
        end
    end)

    RegisterNetEvent("esx:playerLoaded")
    AddEventHandler("esx:playerLoaded", function(playerData, isNew, skin)
        local spawn = playerData.coords and vec4(playerData.coords.x, playerData.coords.y, playerData.coords.z, 0.0) or cfg.firstSpawn
        SetEntityVisible(PlayerPedId(), true)
        if isNew or not skin or #skin == 1 then
            local finished = false
            skin = cfg.defaultClothes[playerData.sex]
            skin.sex = playerData.sex == "m" and 0 or 1
            local model = cfg.models[skin.sex]
            RequestModel(model)
            while not HasModelLoaded(model) do
                RequestModel(model)
                Wait(0)
            end
            SetPlayerModel(PlayerId(), model)
            SetModelAsNoLongerNeeded(model)
            if GetResourceState('izzy-appearance') == 'started' then
                TriggerEvent("sh-creation:client:CreateCharacter")
            elseif GetResourceState('esx_skin') == 'started' then
                TriggerEvent("skinchanger:loadSkin", skin, function()
                    local playerPed = PlayerPedId()
                    SetPedAoBlobRendering(playerPed, true)
                    ResetEntityAlpha(playerPed)
                    TriggerEvent("esx_skin:openSaveableMenu", function()
                        finished = true
                    end, function()
                        finished = true
                    end)
                end)
                repeat
                    Wait(200)
                until finished
            elseif GetResourceState('fivem-appearance') == 'started' then
                exports["fivem-appearance"]:startPlayerCustomization(function(appearance)
                    if appearance then
                        TriggerServerEvent('fivem-appearance:server:saveAppearance', appearance)
                    end
                end)
            elseif GetResourceState('illenium-appearance') == 'started' then
                exports["illenium-appearance"]:startPlayerCustomization(function(appearance)
                    if appearance then
                        TriggerServerEvent('illenium-appearance:server:saveAppearance', appearance)
                    end
                end)
            end
        end

        DoScreenFadeOut(750)
        Wait(750)
        local playerPed = PlayerPedId()
        FreezeEntityPosition(playerPed, true)
        SetEntityCoords(playerPed, spawn.xyz, false, false, false, true)
        SetEntityHeading(playerPed, spawn.w)
        if not isNew then
            if GetResourceState('izzy-appearance') == 'started' then
                ESX.TriggerServerCallback('sh-creation:getCurrentSkinData2', function(skin)
                    local playerPed = PlayerPedId()
                    TriggerEvent('sh-creation:client:loadData', skin, playerPed)
                end, playerData.identifier)
            elseif GetResourceState('esx_skin') == 'started' then
                TriggerEvent("skinchanger:loadSkin", skin)
            elseif GetResourceState('fivem-appearance') == 'started' then
                exports['fivem-appearance']:setPlayerModel(skin.model)
                exports['fivem-appearance']:setPedAppearance(playerPed, skin)
            elseif GetResourceState('illenium-appearance') == 'started' then
                exports['illenium-appearance']:setPlayerModel(skin.model)
                exports['illenium-appearance']:setPedAppearance(playerPed, skin)
            end
        end
        Wait(500)
        DoScreenFadeIn(750)
        Wait(750)
        repeat Wait(200) until not IsScreenFadedOut()

        TriggerServerEvent("esx:onPlayerSpawn")
        TriggerEvent("esx:onPlayerSpawn")
        TriggerEvent("playerSpawned")
        TriggerEvent("esx:restoreLoadout")
        FreezeEntityPosition(PlayerPedId(), false)
    end)

    function getPlayerData()
        return framework == 'qb' and QBCore.Functions.GetPlayerData() or ESX.GetPlayerData()
    end

    function getIdentifier()
        return framework == 'qb' and QBCore.Functions.GetPlayerData().citizenid or ESX.GetPlayerData().identifier
    end

    getPlayerLastLocation = function(playerData)
        return playerData.position or playerData.coords
    end

    function afterPlayerSpawned()
        if framework == "qb" then
            TriggerServerEvent('QBCore:Server:OnPlayerLoaded')
            TriggerEvent('QBCore:Client:OnPlayerLoaded')
        end
    end
else                             --server
    function getCharacters(src)
        local characters = {}
        local license, license2 = izzy.getIdentifiers(src, "license"), (izzy.getIdentifiers(src, "license2") or '')
        
        if framework == "qb" then
            local result = izzy.sql.sync.query('SELECT * FROM players WHERE (license = ? OR license = ?)', { license, license2 })
    
            for k, v in pairs(result) do
                local char = result[k]
                local data = {}
    
                data.firstname = json.decode(char.charinfo).firstname
                data.lastname = json.decode(char.charinfo).lastname
                data.id = k-1
                data.job = json.decode(char.job).label
                data.dob = json.decode(char.charinfo).birthdate
                data.nationality = json.decode(char.charinfo).nationality
                data.cash = json.decode(char.money).cash
                data.bank = json.decode(char.money).bank
                data.gender = json.decode(char.charinfo).gender == 0 and "m" or "f"
                data.identifier = char.citizenid
                table.insert(characters, data)
            end
        elseif framework == "esx" then
            local identifier = cfg.prefixForESX .. "%:" .. removePrefix(license, "license:")
            local result = izzy.sql.sync.query('SELECT * FROM users WHERE identifier LIKE ?', { identifier })
    
            for k, v in pairs(result) do
                local char = result[k]
                local data = {}
                local job, grade = v.job or "unemployed", tostring(v.job_grade)
    
                if ESX.Jobs[job] and ESX.Jobs[job].grades[grade] then
                    if job ~= "unemployed" then
                        grade = ESX.Jobs[job].grades[grade].label
                    else
                        grade = ""
                    end
                    job = ESX.Jobs[job].label
                end
    
                data.firstname = char.firstname
                data.lastname = char.lastname
                data.id = k-1
                data.job = job
                data.dob = char.dateofbirth
                data.nationality = 'USA'
                data.cash = json.decode(char.accounts).money
                data.bank = json.decode(char.accounts).bank
                data.gender = char.sex
                data.identifier = char.identifier
                table.insert(characters, data)
            end
        end
        return characters 
    end
    
    function getPlayerSkin(identifier)
        local sex = 0
        local result

        if GetResourceState('rcore_clothing') == 'started' then
            local skinData = exports.rcore_clothing:getSkinByIdentifier(identifier)
            return { skinData.skin, skinData.ped_model }
        else
            if framework == "qb" then
                result = izzy.sql.sync.query("SELECT * FROM playerskins WHERE citizenid = ? AND active = ?", {identifier, 1})
            else
                result = izzy.sql.sync.query("SELECT skin, sex FROM users WHERE identifier LIKE ?", {identifier})
                sex = result[1].sex == "m" and 0 or 1
            end
    
            if result[1] then
                local model = "mp_m_freemode_01"
                if result[1].model then
                    model = result[1].model
                elseif json.decode(result[1].skin) and json.decode(result[1].skin).model then
                    model = json.decode(result[1].skin).model
                else
                    model = cfg.models[sex]
                end
                return {json.decode(result[1].skin), model}
            else
                return {{}, "mp_m_freemode_01"}
            end
        end
    end

    function selectCharacter(src, data, isNew)
        data.citizenid = data.identifier
        if isNew then
            if GetResourceState('qb-apartments') == 'started' and Apartments?.Starting then
                local randbucket = (GetPlayerPed(src) .. math.random(1,999))
                SetPlayerRoutingBucket(src, randbucket)
                izzy.debug(GetPlayerName(src).. 'has successfully loaded!')
                QBCore.Commands.Refresh(src)
                loadHouseData(src)
                TriggerClientEvent('apartments:client:setupSpawnUI', src, data)
                Wait(1000)
                if cfg.giveStarterItems then
                    giveStarterItems(src)
                end
            elseif framework == 'qb' then
                TriggerClientEvent("izzy-multicharacterv4:client:firstSpawn", src)
                Wait(1000)
                if cfg.giveStarterItems then
                    giveStarterItems(src)
                end
            end
    
            if framework == "esx" then
                local xPlayer = ESX.GetPlayerFromId(src)
                local license = izzy.getIdentifiers(src, "license")
                if not xPlayer then return end
                local identifier = ("%s%s:%s"):format(cfg.prefixForESX, data.id, removePrefix(license, "license:"))
                local identity = {
                    firstName = data.firstname,
                    lastName = data.lastname,
                    dateofbirth = data.dob,
                    sex = data.gender,
                    height = data.height
                }
    
                xPlayer.setName(("%s %s"):format(data.firstname, data.lastname))
                
                for k, v in pairs(identity) do
                    xPlayer.set(k, v)
                end
    
                ESX.Players[license] = true
            end
            return
        end
    
        if framework == "esx" then
            TriggerEvent('esx:onPlayerJoined', src, cfg.prefixForESX .. data.cid+1)
        end

        if not cfg.useOwnSpawnSelector then
            if GetResourceState('izzy_spawn') == 'started' then
                TriggerClientEvent("izzy-spawnselector:open", src)
            elseif GetResourceState('izzy-spawn') == 'started' then
                TriggerClientEvent('qb-spawn:client:setupSpawns', src, data, false, nil)
                TriggerClientEvent('qb-spawn:client:openUI', src, true)
            elseif GetResourceState('qb-spawn') == 'started' then
                TriggerClientEvent('qb-spawn:client:setupSpawns', src, data, false, nil)
                TriggerClientEvent('qb-spawn:client:openUI', src, true)
            end
        else
            TriggerClientEvent('izzy-multicharacterv4:openSpawn', src)
        end
    end

    function spawnCharacter(src, data, isNew)
        TriggerClientEvent("izzy-multicharacterv4:close", src)
        if framework == "qb" then
            if isNew then
                local newData = {}
                newData.cid = data.id
                newData.charinfo = data
                newData.charinfo.birthdate = data.dob
                newData.charinfo.gender = data.gender == "m" and 0 or 1 
                if QBCore.Player.Login(src, false, newData) then
                    QBCore.Commands.Refresh(source)
                    selectCharacter(src, newData, true)
                end
            else
                if QBCore.Player.Login(src, data.identifier) then
                    QBCore.Commands.Refresh(src)
                    loadHouseData(src)
                    selectCharacter(src, data, false)
                end
            end
        elseif framework == "esx" then
            local identity = {
                identifier = data.identifier,
                firstname = data.firstname,
                lastname = data.lastname,
                dateofbirth = data.dob,
                sex = data.gender,
                height = data.height,
                cid = data.id
            }

            if isNew then
                TriggerEvent("esx:onPlayerJoined", src, cfg.prefixForESX .. data.id, identity)
                ESX.Players[izzy.getIdentifiers(src, "license")] = true
                Wait(1000)
                if cfg.giveStarterItems then
                    giveStarterItems(src)
                end
            else
                selectCharacter(src, identity, false)
            end
        end
    end

    function getIdentifier(src)
        if framework == 'esx' then
            local xPlayer = ESX.GetPlayerFromId(src);
            if not xPlayer then return end
            return xPlayer.getIdentifier()
        elseif framework == 'qb' then
            local xPlayer = QBCore.Functions.GetPlayer(src);
            if not xPlayer then return end
            return xPlayer.PlayerData.citizenid
        elseif framework == 'standalone' then
            return wd.getIdentifiers(src, 'license')
        end
    end

    function addItem(src, name, qty, metadata)
        if framework == 'esx' then
            local player = ESX.GetPlayerFromId(src)
            if not player then return end
            player.addInventoryItem(name, qty, metadata)
        elseif framework == 'qb' then
            local player = QBCore.Functions.GetPlayer(src)
            if not player then return end
            player.Functions.AddItem(name, qty, nil, metadata)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[name], 'add')
        end
    end

    function loadHouseData(src)
        local HouseGarages = {}
        local Houses = {}
        local result = izzy.sql.sync.query('SELECT * FROM houselocations', {})
        if result[1] ~= nil then
            for _, v in pairs(result) do
                local owned = false
                if tonumber(v.owned) == 1 then
                    owned = true
                end
                local garage = v.garage ~= nil and json.decode(v.garage) or {}
                Houses[v.name] = {
                    coords = json.decode(v.coords),
                    owned = owned,
                    price = v.price,
                    locked = true,
                    adress = v.label,
                    tier = v.tier,
                    garage = garage,
                    decorations = {},
                }
                HouseGarages[v.name] = {
                    label = v.label,
                    takeVehicle = garage,
                }
            end
        end
        TriggerClientEvent("qb-garages:client:houseGarageConfig", src, HouseGarages)
        TriggerClientEvent("qb-houses:client:setHouseConfig", src, Houses)
    end

    function giveStarterItems(src)
        for _, v in pairs(cfg.starterItems) do
            local info = {}
            if framework == "qb" then
                local Player = QBCore.Functions.GetPlayer(src)
                if v.name == "id_card" then
                    info.citizenid = Player.PlayerData.citizenid
                    info.firstname = Player.PlayerData.charinfo.firstname
                    info.lastname = Player.PlayerData.charinfo.lastname
                    info.birthdate = Player.PlayerData.charinfo.birthdate
                    info.gender = Player.PlayerData.charinfo.gender
                    info.nationality = Player.PlayerData.charinfo.nationality
                elseif v.name == "driver_license" then
                    info.firstname = Player.PlayerData.charinfo.firstname
                    info.lastname = Player.PlayerData.charinfo.lastname
                    info.birthdate = Player.PlayerData.charinfo.birthdate
                    info.type = "Class C Driver License"
                end
            end
    
    
            addItem(src, v.name, v.amount, info)
        end
    end
end
