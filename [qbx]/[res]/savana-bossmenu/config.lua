Config = {}

Config.Framework = "qb" -- auto, esx, qb, qbox ( If you are qbox user, use Config.Framework = "qbox". )
Config.debug = false
Config.Target = true

Config.Shops = {
    ["police"] = {
        label = "Police",
        type = "job",
        bossMenu = vector3(449.25, -973.12, 30.69), -- bos menu coords
        bossMenuminZ = 28.1,
        bossMenumaxZ = 32.6,
        bossMenuheading = 380.0,
        bossGrade = 4, -- boss grade level
        duty = vec3(441.23, -980.3, 31.92), -- duty coords
        dutyminZ = 29.6,
        dutymaxZ = 35.6,
        dutyheading = 380.0,
    },
    ["ambulance"] = {
        label = "Ambulance",
        type = "job",
        bossMenu = vector3(447.6399, -988.6995, 30.6896), -- bos menu coords
        bossMenuminZ = 27.1,
        bossMenumaxZ = 31.6,
        bossMenuheading = 380.0,
        bossGrade = 3, -- boss grade level
        duty = vector3(453.5446, -985.0828, 30.6896), -- duty coords
        dutyminZ = 27.1,
        dutymaxZ = 31.6,
        dutyheading = 380.0,
    },
    -- -- gang part only works in qb-core.
    -- ["ballas"] = {
    --     label = "Ballas",
    --     type = "gang",
    --     bossMenu = vector3(423.05, -971.18, 30.71), -- bos menu coords
    --     bossMenuminZ = 27.1,
    --     bossMenumaxZ = 31.6,
    --     bossMenuheading = 380.0,
    --     bossGrade = 3, -- boss grade level
    --     duty = false,
    --     minZ = 27.1,
    --     maxZ = 31.6,
    --     dutyheading = 380.0,
    -- },
}

Config.Locale = {
    openBoss = "[E] Open Boss Menu",
    openDuty = "[E] Duty ON/OFF",
    noItem = "You do not have the requirements to craft this item!",
    noAccess = "You don't have access to open boss menu!",
    dutyOn = "Duty on",
    dutyOff = "Duty off",
    duty = "duty must be on",
    noPerm = "You don't have permission",
    withdraw = "Withdraw successfully",
    deposit = "Deposit successfully",
    noMoney = "You don't have enough money",
    noSocietyMoney = "Society don't have enough money",
}

function getFramework()
    if Config.Framework == "esx" then
        return exports['es_extended']:getSharedObject(), "esx"
    elseif Config.Framework == "qb" then
        return exports["qb-core"]:GetCoreObject(), "qb"
    elseif Config.Framework == "qbox" then
        return exports["qb-core"]:GetCoreObject(), "qbox"
    elseif Config.Framework == "auto" then
        if GetResourceState('qb-core') == 'started' then
            return exports["qb-core"]:GetCoreObject(), "qb"
        elseif GetResourceState('qbx_core') == 'started' then
            return exports["qb-core"]:GetCoreObject(), "qbox"
        elseif GetResourceState('es_extended') == 'started' then
            return exports['es_extended']:getSharedObject(), "esx"
        end
    end
end