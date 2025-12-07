Config = {
    debug = false,
    core = 'auto', -- 'auto' or 'esx' or 'qb' or 'qbox' or 'bs'
    clothing = 'auto', -- 'auto' or 'fivem-appearance' or 'illenium-appearance' or 'qb-clothing', 'rcore_clothing', 'bl_appearance' 'skinchanger', 'tgiann-clothing', 'raid_clothes', 'bs-appearance'
    
    -- If you want to spawn the player in a last location without using the spawn selector, set this to false.
    CustomSpawnSelector = false,
    spawn_selector = 'auto', -- 'qb-spawn' or 'qb-apartments' or 'cylex_spawn' or 'um-spawn'


    -- If you have a weather sync script like qb-weathersync, qbox-weathersync, then set it true.
    -- If the weather flickering when you are in the character select screen, set it to false.
    WeatherSync = true,
    
    date_format = "MM-DD-YYYY",
    weekdays = "WWW",
    date_lang = "en",

    IdentifierType = 'license', -- 'steam' or 'license'
    skinTable = 'playerskins',

    -- when CustomSpawnSelector = false, this is the location where the player will spawn when you create the character.
    FirstSpawnLocation = vector4(-1041.05, -2742.34, 12.93, 323.49),
    
    SelectedLocation = 'random', -- random, apartment, courthouse, camp, beach, cuberoom, micheal, office

    DisableCharDelete = false, -- If you want to disable & hide the character deletion button, set this to true.

    StarterItems = {
        {name = 'phone', amount = 1},
        {name = 'id_card', amount = 1},
        {name = 'driver_license', amount = 1},
    }
}

if Config.core == 'auto' then
    if GetResourceState("qb-core") == "started" then
        Config.core = 'qb'
    end
    if GetResourceState("bs-core") == "started" then
        Config.core = 'bs'
    end
    if GetResourceState("qbx_core") == "started" then
        Config.core = 'qbox'
    end
    if GetResourceState("es_extended") == "started" then
        Config.core = 'esx'
    end

    print("Auto-detected core: ", Config.core)
end


if Config.clothing == 'auto' then
    if GetResourceState("illenium-appearance") == "started" then
        Config.clothing = 'illenium-appearance'
    elseif GetResourceState("fivem-appearance") == "started" then
        Config.clothing = 'fivem-appearance'
    elseif GetResourceState("bs-appearance") == "started" then
        Config.clothing = 'bs-appearance'
    elseif GetResourceState("onex-creation") == "started" then
        Config.clothing = 'onex-creation'
    elseif GetResourceState("qb-clothing") == "started" then
        Config.clothing = 'qb-clothing'
    elseif GetResourceState("bl_appearance") == "started" then
        Config.clothing = 'bl_appearance'
    elseif GetResourceState("rcore_clothing") == "started" then
        Config.clothing = 'rcore_clothing'
    elseif GetResourceState("tgiann-clothing") == "started" then
        Config.clothing = 'tgiann-clothing'
    elseif GetResourceState("raid_clothes") == "started" then
        Config.clothing = 'raid_clothes'
    elseif GetResourceState("skinchanger") == "started" then
        Config.clothing = 'skinchanger'
    end

    print("Auto-detected clothing: ", Config.clothing)
end

if Config.spawn_selector == 'auto' then
    if GetResourceState("cylex_spawn") == "started" then
        Config.spawn_selector = 'cylex_spawn'
    elseif GetResourceState("um-spawn") == "started" then
        Config.spawn_selector = 'um-spawn'
    elseif GetResourceState("fry_spawn") == "started" then
        Config.spawn_selector = 'fry_spawn'
    elseif GetResourceState("qb-apartments") == "started" then
        Config.spawn_selector = 'qb-apartments'
    elseif GetResourceState("qbx_apartments") == "started" then
        Config.spawn_selector = 'qbx_apartments'
    elseif GetResourceState("qbx_spawn") == "started" then
        Config.spawn_selector = 'qbx_spawn'
    elseif GetResourceState("qb-spawn") == "started" then
        Config.spawn_selector = 'qb-spawn'
    elseif GetResourceState("bs-spawn") == "started" then
        Config.spawn_selector = 'bs-spawn'
    end

    print("Auto-detected spawn_selector: ", Config.spawn_selector)
end

-- This is the function that will be called before the characters are loaded.
function BeforeCharactersLoad()
    if Config.core == 'qb' then
        TriggerEvent('qb-weathersync:client:DisableSync')
    end
end

-- This is the function that will be called when the character selected.
function OnCharacterSelected(character, isNew)
    if Config.core == 'esx' then
        TriggerEvent("skinchanger:loadSkin", character.skin or {})
    elseif Config.core == 'qb' then
        TriggerEvent('qb-weathersync:client:EnableSync')
    end
end

function GetSkin(charId)
    return RPC.execute('cylex_multicharacter:getSkin', charId)
end

function OpenCreateClothingMenu(cData)
    if Config.clothing == 'illenium-appearance' or Config.clothing == 'fivem-appearance' or Config.clothing == 'qb-clothing' or Config.clothing == 'onex-creation' then
        if Config.core:match('qb') then
            TriggerEvent('qb-clothes:client:CreateFirstCharacter')
        else
            TriggerEvent('esx_skin:openSaveableMenu')
        end
    elseif Config.clothing == 'bl_appearance' then
        exports["bl_appearance"]:InitialCreation()
    elseif Config.clothing == 'rcore_clothing' then
        TriggerEvent('rcore_clothing:openCharCreator') 
        if Config.core:match('qb') then
            TriggerEvent('rcore_clothing:qb:charcreator')
        elseif Config.core:match('esx') then
            TriggerEvent('rcore_clothing:esx:charcreator')
        end
    elseif Config.clothing == 'tgiann-clothing' then
        if Config.core:match('qb') then
            TriggerEvent('qb-clothes:client:CreateFirstCharacter')
        else
            TriggerEvent('tgiann-clothing:esx:createNew')
        end
    elseif Config.clothing == 'bs-appearance' then
        local config = exports["bs-appearance"]:getNewCharacterConfig()
        exports["bs-appearance"]:startPlayerCustomization(function(appearance)
            if (appearance) then
               TriggerServerEvent('bs-appearance:server:saveAppearance', appearance)
               TriggerEvent("bs-apartments:enterApartment", cData.temp_apartment, true)
            end
            TriggerServerEvent("bs-appearance:server:ResetRoutingBucket")
         end, config)
    end
end

function OnClothing(ped, skin, currentCharSlot)
    if Config.clothing == 'illenium-appearance' then
        exports['illenium-appearance']:setPedAppearance(ped, skin)
    elseif Config.clothing == 'fivem-appearance' then
        exports['fivem-appearance']:setPedAppearance(ped, skin)
    elseif Config.clothing == 'bs-appearance' then
        exports['bs-appearance']:setPedAppearance(ped, skin)
    elseif Config.clothing == 'onex-creation' then
        exports["onex-creation"]:loadPlayerSkin(ped, skin)
    elseif Config.clothing == 'qb-clothing' then
        TriggerEvent('qb-clothing:client:loadPlayerClothing', skin, ped)
    elseif Config.clothing == 'bl_appearance' then
        exports['bl_appearance']:SetPedAppearance(ped, skin)
    elseif Config.clothing == 'rcore_clothing' then
        exports['rcore_clothing']:setPedSkin(ped, skin)
    elseif Config.clothing == 'tgiann-clothing' then
        TriggerEvent('qb-clothing:client:loadPlayerClothing', skin, ped)
    elseif Config.clothing == 'skinchanger' then
        ESX_ApplySkin(ped, skin)
    elseif Config.clothing == 'raid_clothes' then
        TriggerEvent('qb-clothing:client:loadPlayerClothing', skin, ped)
    elseif Config.clothing == 'custom' then
        -- You can add your own clothing exports here.
    end
end

function SpawnSelectorFunctions(isNewChar, cData)
    if isNewChar then
        if Config.spawn_selector ~= 'qb-spawn' and Config.spawn_selector ~= 'qb-apartments' then
            -- If your spawn selector already opens the clothing menu, you can remove the line below.
            OpenCreateClothingMenu(cData)
        end

        -- If you want to spawn the player in apartment on first tame, you can remove -- on below.
        -- TriggerEvent('apartments:client:setupSpawnUI', cData)
    elseif Config.CustomSpawnSelector then
        if Config.spawn_selector == 'cylex_spawn' then
            TriggerServerEvent('cylex_spawn:OpenServer', isNewChar)
        elseif Config.spawn_selector == 'um-spawn' then
            TriggerEvent('um-spawn:client:startSpawnUI')
        elseif Config.spawn_selector == 'fry_spawn' then
            local coords = json.decode(cData.position)
            TriggerEvent('fry_spawn:client:open_spawn_qbcore_or_qbx', isNewChar, coords)
        elseif Config.spawn_selector == 'qb-apartments' or Config.spawn_selector == 'qbx_apartments' then
            TriggerEvent('apartments:client:setupSpawnUI', cData)
        elseif Config.spawn_selector == 'qb-spawn' or Config.spawn_selector == 'qbx_spawn' or Config.spawn_selector == 'bs-spawn' then
            TriggerEvent('qb-spawn:client:setupSpawns', cData, false, nil)
            TriggerEvent('qb-spawn:client:openUI', true)
        end
    end
end