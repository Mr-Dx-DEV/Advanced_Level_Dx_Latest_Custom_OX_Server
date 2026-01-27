-----------------------------------------------------------------------------------
-- WAIT! Before editing this file manually, try our new easy configuration tool! --
--               https://configurator.jgscripts.com/dealerships                  --
-----------------------------------------------------------------------------------
Config = {}

-- Localisation
Config.Locale = "en"
Config.NumberAndDateFormat = "en-US"
Config.Currency = "USD"
Config.SpeedUnit = "mph" -- or "kph"

-- Framework & Integrations
Config.Framework = "Qbox" -- or "QBCore", "Qbox", "ESX"
Config.FuelSystem = "LegacyFuel" -- or "LegacyFuel", "ps-fuel", "lj-fuel", "ox_fuel", "cdn-fuel", "hyon_gas_station", "okokGasStation", "nd_fuel", "myFuel", "ti_fuel", "LegacyFuel", "rcore_fuel", "qs-fuelstations", "none"
Config.VehicleKeys = "qb-vehiclekeys" -- or "qb-vehiclekeys", "MrNewbVehicleKeys", "jaksam-vehicles-keys", "qs-vehiclekeys", "mk_vehiclekeys", "wasabi_carlock", "cd_garage", "okokGarage", "t1ger_keys", "Renewed", "tgiann-hotwire", "none"
Config.Notifications = "ox_lib" -- or "default", "okokNotify", "ox_lib", "ps-ui"
Config.DrawText = "jg-textui" -- or "jg-textui", "qb-DrawText", "okokTextUI", "ox_lib", "ps-ui"

-- Text UI prompts
Config.OpenShowroomPrompt = "[E] Open Showroom"
Config.OpenShowroomKeyBind = 38
Config.ViewInShowroomPrompt = "[E] View in Showroom"
Config.ViewInShowroomKeyBind = 38
Config.OpenManagementPrompt = "[E] Dealership Management"
Config.OpenManagementKeyBind = 38
Config.SellVehiclePrompt = "[E] Sell Vehicle"
Config.SellVehicleKeyBind = 38

-- If you don't know what this means, don't touch this
-- If you know what this means, I do recommend enabling it but be aware you may experience reliability issues on more populated servers
-- Having significant issues? I beg you to just set it back to false before opening a ticket with us
-- Want to read my rant about server spawned vehicles? https://docs.jgscripts.com/advanced-garages/misc/why-are-you-not-using-createvehicleserversetter-by-default
Config.SpawnVehiclesWithServerSetter = false

-- Finance (to disable finance, you have to do it on a per-location basis with Config.DealershipLocations below)
Config.FinancePayments = 12
Config.FinanceDownPayment = 0.1 -- 0.1 means 10%
Config.FinanceInterest = 0.1 -- 0.1 means 10%
Config.FinancePaymentInterval = 12 -- in hours
Config.FinancePaymentFailedHoursUntilRepo = 1 -- in hours
Config.MaxFinancedVehiclesPerPlayer = 5

-- Little vehicle preview images in the garage UI - learn more/add custom images: https://docs.jgscripts.com/advanced-garages/vehicle-images
Config.ShowVehicleImages = true

-- Vehicle purchases
Config.PlateFormat = "1AA111AA" -- https://docs.jgscripts.com/dealerships/plate-format
Config.HideVehicleStats = false

-- Test drives
Config.TestDrivePlate = "TEST111" -- This is a plate seed so it'll be random every time (read: https://docs.jgscripts.com/dealerships/plate-format)
Config.TestDriveTimeSeconds = 120
Config.TestDriveNotInBucket = false -- Set to true for everyone to see the test driven vehicle (player is instanced by default)

-- Display vehicles (showroom)
Config.DisplayVehiclesPlate = "SHOW111"
Config.DisplayVehiclesHidePurchasePrompt = false

-- Dealership stock purchases
Config.DealerPurchasePrice = 0.8 -- 0.8 = Dealers pay 80% of vehicle price
Config.VehicleOrderTime = 1 -- in mins
Config.ManagerCanChangePriceOfVehicles = true -- Managers can change the price of vehicles in the dealership

-- Vehicle colour options (for purchases & display vehicles)
Config.UseRGBColors = true -- this will use the index instead of hex, see https://pastebin.com/pwHci0xK (hex will still be used in the ui)
Config.VehicleColourOptions = {
  {label = "Red", hex = "#e81416", index = 27},
  {label = "Orange", hex = "#ff7518", index = 38},
  {label = "Yellow", hex = "#ffbf00", index = 88},
  {label = "Green", hex = "#79c314", index = 92},
  {label = "Blue", hex = "#487de7", index = 64},
  {label = "Purple", hex = "#70369d", index = 145},
  {label = "Black", hex = "#000000", index = 0},
  {label = "White", hex = "#ffffff", index = 111},
}

Config.Categories = {
  planes = "Planes",
  sportsclassics = "Sports Classics",
  sedans = "Sedans",
  compacts = "Compacts",
  motorcycles = "Motorcycles",
  super = "Super",
  offroad = "Offroad",
  helicopters = "Helicopters",
  coupes = "Coupes",
  muscle = "Muscle",
  boats = "Boats",
  vans = "Vans",
  trucks = "Trucks",
  sports = "Sports",
  suvs = "SUVs",
  commercial = "Commercial",
  cycles = "Cycles",
  industrial = "Industrial",
  new_arrivals = "New Arrivals",
  imported = "Imports"
}

Config.DealershipLocations = {
  ["PDM Dealership"] = {
    type = "self-service", -- or "owned", "self-service"
    openShowroom = {
      coords = vector3(-31.6, -1089.4, 26.65),
      size = 2
    },
    openManagement = {
      coords = vector3(-36.41, -1082.72, 26.65),
      size = 5
    },
    sellVehicle = {
      coords = vector3(-51.67, -1096.58, 26.48),
      size = 2
    },
    purchaseSpawn = vec4(-59.1, -1107.88, 25.44, 73.92),
    testDriveSpawn = vec4(-59.1, -1107.88, 25.44, 73.92),
    camera = {
      name = "Car",
      coords = vector4(-75.12, -818.7, 325.18, 21.77),
      positions = {5.0, 8.0, 12.0, 8.0}
    },
    categories = {"new_arrivals","imported"},
    enableTestDrive = true,
    hideBlip = false,
    blip = {
      id = 523,
      color = 47,
      scale = 1.0
    },
    enableSellVehicle = true, -- Allow players to sell vehicles back to dealer
    sellVehiclePercent = 0.7,  -- 70% of current sale price
    enableFinance = true,
    hideMarkers = false,
    markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    showroomJobWhitelist = {},
    showroomGangWhitelist = {},
    societyPurchaseJobWhitelist = {},
    societyPurchaseGangWhitelist = {},
    disableShowroomPurchase = false,
    job = "cardealer", -- Owned dealerships only
    directSaleDistance = 50,
  },
  ["Boats"] = {
    type = "self-service", -- or "owned", "self-service"
    openShowroom = {
      coords = vector3(-331.8239, -2792.7698, 4.0002),
      size = 5
    },
    openManagement = {
      coords = vector3(-332.42, -2790.24, 5.0),
      size = 5
    },
    sellVehicle = {
      coords = vector3(-714.42, -1340.01, -0.18),
      size = 5
    },
    purchaseSpawn = vector4(-343.6553, -2812.8828, 0.0450, 322.7136),
    testDriveSpawn = vector4(-343.6553, -2812.8828, 0.0450, 322.7136),
    camera = {
      name = "Sea",
      coords = vector4(-808.28, -1491.19, -0.47, 113.53),
      positions = {7.5, 12.0, 15.0, 12.0}
    },
    categories = {"boats"},
    enableSellVehicle = false, -- Allow players to sell vehicles back to dealer
    sellVehiclePercent = 0.7,  -- 70% of current sale price
    enableTestDrive = true,
    hideBlip = false,
    blip = {
      id = 455,
      color = 3,
      scale = 1.0
    },
    hideMarkers = false,
    markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    showroomJobWhitelist = {},
    showroomGangWhitelist = {},
    societyPurchaseJobWhitelist = {},
    societyPurchaseGangWhitelist = {},
  },
  ["Airplanes"] = {
    type = "self-service", -- or "owned", "self-service"
    openShowroom = {
      coords = vector3(-1621.77, -3152.57, 13.99),
      size = 5
    },
    openManagement = {
      coords = vector3(-1404.5, -3262.82, 13.94),
      size = 5
    },
    sellVehicle = {
      coords = vector3(-1654.9, -3147.58, 13.99),
      size = 2
    },
    purchaseSpawn = vector4(-1654.9, -3147.58, 13.99, 324.78),
    testDriveSpawn = vector4(-1654.9, -3147.58, 13.99, 324.78),
    camera = {
      name = "Air",
      coords = vector4(-1267.0, -3013.14, -48.5, 310.96),
      positions = {12.0, 15.0, 20.0, 15.0}
    },
    categories = {"planes_new", "helicopters_new"},
    enableSellVehicle = false, -- Allow players to sell vehicles back to dealer
    sellVehiclePercent = 0.7,  -- 70% of current sale price
    enableTestDrive = false,
    hideBlip = false,
    blip = {
      id = 423,
      color = 5,
      scale = 1.0
    },
    hideMarkers = false,
    markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    showroomJobWhitelist = {},
    showroomGangWhitelist = {},
    societyPurchaseJobWhitelist = {},
    societyPurchaseGangWhitelist = {},
  },
}

-- Commands
Config.MyFinanceCommand = "myfinance"
Config.DirectSaleCommand = "directsale"
Config.DealerAdminCommand = "dealeradmin"

-- Nerd options
Config.RemoveGeneratorsAroundDealership = 40.0
Config.AutoRunSQL = false
Config.ReturnToPreviousRoutingBucket = false
Config.HideWatermark = true
Config.Debug = false