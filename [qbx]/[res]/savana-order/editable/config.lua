Config = {}

Config.UseTarget = true
Config.Framework = "auto" -- qb, qbold, esx, esxold, custom, auto

Config.GiveItemsToCustomer = true -- if false it wont give item
Config.TaxRate = 18

Config.POSZones = {
    [1] = {
        pos = vector3(-1372.37, -938.35, 11.74),
        admin = vector3(-1367.54, -938.64, 9.99),
        job = "police",
        grade = 3,
    },
    [2] = {
        pos = vector3(-1321.81, -1338.98, 4.6),
        admin = vector3(-1329.23, -1337.3, 4.65),
        job = "taxi",
        grade = 2
    }
}

Config.Locales = {
    ["openpos"] = "[E] Menu",
    ["openadmin"] = "[E] Management",
    ["openpostarget"] = "Open Restaurant",
    ["openadmintarget"] = "Open Management",
}

Config.Products = {
    ["police"] = {
        {
            item = "burgerxl",
            title = "Three patty burger",
            category = 1,
        },
        {
            item = "chickenburger",
            title = "Chicken Burger",
            category = 1,
        },
        {
            item = "chickenpotato",
            title = "Chicken Potato",
            category = 1,
        },
        {
            item = "crispychicken",
            title = "Crispy Chicken",
            category = 1,
        },
        {
            item = "tenderloin",
            title = "Tenderloin",
            category = 1,
        },
        {
            item = "onionring",
            title = "Onion Ring",
            category = 1,
        },
        {
            item = "kurkakola",
            title = "Coke",
            category = 2,
        },
        {
            item = "water_bottle",
            title = "Water",
            category = 2,
        },
        {
            item = "coffee",
            title = "Coffee",
            category = 2,
        },
        {
            item = "icetea",
            title = "Ice Tea",
            category = 2,
        },
        {
            item = "milkshake",
            title = "Milkshake",
            category = 2,
        },
        {
            item = "coollime",
            title = "Cool Lime",
            category = 2,
        },
        {
            item = "cookie",
            title = "Cookie",
            category = 3,
        },   
        {
            item = "donut",
            title = "Donut",
            category = 3,
        },
        {
            item = "waffle",
            title = "Waffle",
            category = 3,
        },       
    },
    ["taxi"] = {
        {
            item = "burger",
            title = "Burger",
            category = 1,
        },
        {
            item = "lockpick",
            title = "Water",
            category = 2,
        },
        {
            item = "sandwhich",
            title = "Sandwhich",
            category = 3,
        }
    }
}

Config.Categories = {
    ["police"] = {
        {
            id = 1,
            title = "Food",
        },
        {
            id = 2,
            title = "Drinks",
        },
        {
            id = 3,
            title = "Desserts",
        },
    },
    ["taxi"] = {
        {
            id = 1,
            title = "Food",
        },
        {
            id = 2,
            title = "Drinks",
        },
        {
            id = 3,
            title = "Other",
        }
    }
}

-- Do not touch this. If you don't know what you're doing, you can break the script.

-- Auto Framework Detection
if Config.Framework == "auto" then
    if GetResourceState("qb-core") == "started" then
        Config.Framework = "qb"
    elseif GetResourceState("es_extended") == "started" then
        Config.Framework = "esx"
    else
        print("Couldn't find a framework. Using custom framework.")
        Config.Framework = "custom"
    end
end

-- Framework Object
if Config.Framework == "qb" or Config.Framework == "QB" or Config.Framework == "qb-core" then
    Config.Framework = "qb"
    FrameworkObject = exports['qb-core']:GetCoreObject()
elseif Config.Framework == "qbold" then
    FrameworkObject = nil
    Config.Framework = "qb"
    
    Citizen.CreateThread(function()
        while FrameworkObject == nil do
            TriggerEvent('QBCore:GetObject', function(obj) FrameworkObject = obj end)
            Citizen.Wait(50)
        end
    end)
elseif Config.Framework == "esx" or Config.Framework == "ESX" or Config.Framework == "es_extended" then
    Config.Framework = "esx"
    FrameworkObject = exports['es_extended']:getSharedObject()
elseif Config.Framework == "esxold" then
    FrameworkObject = nil
    Config.Framework = "esx"

    Citizen.CreateThread(function()
        while FrameworkObject == nil do
            TriggerEvent('esx:getSharedObject', function(obj) FrameworkObject = obj end)
            Citizen.Wait(50)
        end
    end)
else
    Config.Framework = "custom"
    -- Write your own code shared object code.
    FrameworkObject = nil
end