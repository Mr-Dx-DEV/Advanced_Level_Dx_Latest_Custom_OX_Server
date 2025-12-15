-----------------------------------------------------------------------------------
-- WAIT! Before editing this file manually, try our new easy configuration tool! --
--               https://configurator.jgscripts.com/dealerships                  --
-----------------------------------------------------------------------------------
Config = {}

-- Localisation
Config.Locale = "de"
Config.NumberAndDateFormat = "de-DE"
Config.Currency = "USD"
Config.SpeedUnit = "kph" -- or "kph"

-- Framework & Integrations
Config.Framework = "Qbox" -- or "QBCore", "Qbox", "ESX"
Config.FuelSystem = "ox_fuel" -- or "LegacyFuel", "ps-fuel", "lj-fuel", "ox_fuel", "cdn-fuel", "hyon_gas_station", "okokGasStation", "nd_fuel", "myFuel", "ti_fuel", "Renewed-Fuel", "rcore_fuel", "qs-fuelstations", "none"
Config.VehicleKeys = "qb-vehiclekeys" -- or "qb-vehiclekeys", "MrNewbVehicleKeys", "jaksam-vehicles-keys", "qs-vehiclekeys", "mk_vehiclekeys", "wasabi_carlock", "cd_garage", "okokGarage", "t1ger_keys", "Renewed", "tgiann-hotwire", "none"
Config.Notifications = "ox_lib" -- or "default", "okokNotify", "ox_lib", "ps-ui"
Config.DrawText = "ox_lib" -- or "jg-textui", "qb-DrawText", "okokTextUI", "ox_lib", "ps-ui"

-- Text UI prompts
Config.OpenShowroomPrompt = "[E] Showroom öffnen"
Config.OpenShowroomKeyBind = 38
Config.ViewInShowroomPrompt = "[E] Im Showroom ansehen"
Config.ViewInShowroomKeyBind = 38
Config.OpenManagementPrompt = "[E] Verwaltung"
Config.OpenManagementKeyBind = 38
Config.SellVehiclePrompt = "[E] Fahrzeug verkaufen"
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
Config.PlateFormat = "AAA 111"
Config.HideVehicleStats = false

-- Test drives
Config.TestDrivePlate = "TEST1234" -- German styled test plate, max 8 chars
Config.TestDriveTimeSeconds = 120
Config.TestDriveNotInBucket = false

-- Display vehicles (showroom)
Config.DisplayVehiclesPlate = "HANDLER"
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
  sports = "Sports",
  suvs = "SUVs",
  commercial = "Commercial",
  cycles = "Cycles",
  industrial = "Industrial",
  starter = "Starter",
  police = "Police",
  md = "MD",
  bennys = "Bennys",
  uwutaxi = "UwUTaxi",
  risingsuncustoms = "RisingSun Customs"

}

Config.DealershipLocations = {
  ["Flughafen"] = {
    type = "self-service", -- or "owned", "self-service"
    openShowroom = {
      coords = vec3(-984.31, -2640.64, 13.98),
      size = 5
    },
    openManagement = {
      coords = vec3(-977.58, -2613.8, 13.98),
      size = 5
    },
    sellVehicle = {
      coords = vec3(-960.15, -2607.17, 13.83),
      size = 5
    },
    purchaseSpawn = vector4(-961.33, -2593.35, 13.42, 116.75),
    testDriveSpawn = vector4(-968.17, -2598.5, 13.41, 58.99),
    camera = {
      name = "Car",
      coords = vector4(-146.6166, -596.6301, 166.0, 270.0),
      positions = {5.0, 8.0, 12.0, 8.0}
    },
    categories = {"starter", "cycles"},
    enableTestDrive = true,
    hideBlip = false,
    blip = {
      id = 326,
      color = 47,
      scale = 0.6
    },
    enableSellVehicle = true, -- Allow players to sell vehicles back to dealer
    sellVehiclePercent = 0.6,  -- 60% of current sale price
    enableFinance = false,
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
  
  ["PDM Chinatown"] = {
    type = "self-service", -- or "owned", "self-service"
    openShowroom = {
      coords = vector3(763.8188, -1820.4374, 29.4724),
      size = 5
    },
    openManagement = {
      coords = vector3(759.4111, -1817.8323, 29.4725),
      size = 5
    },
    sellVehicle = {
      coords = vector3(751.5989, -1857.1786, 29.3171),
      size = 5
    },
    purchaseSpawn = vector4(737.9651, -1857.8444, 28.8794, 263.1729),
    testDriveSpawn = vector4(766.4527, -1892.3102, 28.9051, 255.3848),
    camera = {
      name = "Car",
      coords = vector4(-146.6166, -596.6301, 166.0, 270.0),
      positions = {5.0, 8.0, 12.0, 8.0}
    },
    categories = {"sedans", "compacts"},
    enableSellVehicle = true, -- Allow players to sell vehicles back to dealer
    sellVehiclePercent = 0.6,  -- 60% of current sale price
    enableTestDrive = true,
    enableFinance = false,
    hideBlip = false,
    blip = {
      id = 326,
      color = 47,
      scale = 0.6
    },
    hideMarkers = false,
    markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    showroomJobWhitelist = {},
    showroomGangWhitelist = {},
    societyPurchaseJobWhitelist = {},
    societyPurchaseGangWhitelist = {},
  },
  
  ["Western Motorcycle"] = {
    type = "self-service", -- or "owned", "self-service"
    openShowroom = {
      coords = vector3(-63.4981, 71.0757, 71.6120),
      size = 5
    },
    openManagement = {
      coords = vector3(-53.0649, 76.4509, 71.6309),
      size = 5
    },
    sellVehicle = {
      coords = vector3(-88.4182, 86.4323, 71.4516),
      size = 5
    },
    purchaseSpawn = vector4(-66.5575, 82.1266, 71.1283, 67.1725),
    testDriveSpawn = vector4(-84.8126, 78.2046, 71.1446, 148.5959),
    camera = {
      name = "Car",
      coords = vector4(-146.6166, -596.6301, 166.0, 270.0),
      positions = {5.0, 8.0, 12.0, 8.0}
    },
    categories = {"motorcycles"},
    enableSellVehicle = true, -- Allow players to sell vehicles back to dealer
    sellVehiclePercent = 0.6,  -- 60% of current sale price
    enableTestDrive = true,
    enableFinance = false,
    hideBlip = false,
    blip = {
      id = 226,
      color = 47,
      scale = 0.6
    },
    hideMarkers = false,
    markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    showroomJobWhitelist = {},
    showroomGangWhitelist = {},
    societyPurchaseJobWhitelist = {},
    societyPurchaseGangWhitelist = {},
  },

  ["PDM Pillbox Hill"] = {
    type = "self-service", -- or "owned", "self-service"
    openShowroom = {
      coords = vector3(-55.99, -1096.59, 26.42),
      size = 5
    },
    openManagement = {
      coords = vector3(-30.43, -1106.84, 26.42),
      size = 5
    },
    sellVehicle = {
      coords = vector3(-27.89, -1082.1, 26.64),
      size = 5
    },
    purchaseSpawn = vector4(-13.68, -1092.31, 26.67, 159.82),
    testDriveSpawn = vector4(-49.77, -1110.83, 26.44, 75.94),
    camera = {
      name = "Car",
      coords = vector4(-146.6166, -596.6301, 166.0, 270.0),
      positions = {5.0, 8.0, 12.0, 8.0}
    },
    categories = {"muscle", "offroad"},
    enableTestDrive = true,
    hideBlip = false,
    blip = {
      id = 326,
      color = 47,
      scale = 0.6
    },
    enableSellVehicle = true, -- Allow players to sell vehicles back to dealer
    sellVehiclePercent = 0.6,  -- 60% of current sale price
    enableFinance = false,
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
  
  ["Route68 Larrys Cars"] = {
    type = "self-service", -- or "owned", "self-service"
    openShowroom = {
      coords = vector3(1224.4727, 2738.3843, 38.1087),
      size = 5
    },
    openManagement = {
      coords = vector3(1234.9570, 2741.2192, 38.1046),
      size = 5
    },
    sellVehicle = {
      coords = vector3(1247.0372, 2719.6953, 37.5836),
      size = 5
    },
    purchaseSpawn = vector4(1223.5925, 2721.1572, 37.5828, 179.2379),
    testDriveSpawn = vector4(1250.5105, 2703.7339, 37.5851, 203.5333),
    camera = {
      name = "Car",
      coords = vector4(-146.6166, -596.6301, 166.0, 270.0),
      positions = {5.0, 8.0, 12.0, 8.0}
    },
    categories = {"suvs", "vans"},
    enableTestDrive = true,
    hideBlip = false,
    blip = {
      id = 326,
      color = 47,
      scale = 0.6
    },
    enableSellVehicle = true, -- Allow players to sell vehicles back to dealer
    sellVehiclePercent = 0.6,  -- 60% of current sale price
    enableFinance = false,
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

  ["West Rockford Hills"] = {
    type = "self-service", -- or "owned", "self-service"
    openShowroom = {
      coords = vector3(-1257.4, -369.12, 36.98),
      size = 5
    },
    openManagement = {
      coords = vector3(-1249.04, -346.96, 37.34),
      size = 5
    },
    sellVehicle = {
      coords = vector3(-1233.46, -346.81, 37.33),
      size = 5
    },
    purchaseSpawn = vector4(-1252.8623, -375.9958, 37.2899, 112.5570),
    testDriveSpawn = vector4(-1234.3119, -379.4100, 37.2899, 108.2808),
    camera = {
      name = "Car",
      coords = vector4(-146.6166, -596.6301, 166.0, 270.0),
      positions = {5.0, 8.0, 12.0, 8.0}
    },
    categories = {"super", "sports"},
    enableSellVehicle = true, -- Allow players to sell vehicles back to dealer
    sellVehiclePercent = 0.6,  -- 60% of current sale price
    enableTestDrive = true,
    enableFinance = false,
    hideBlip = false,
    blip = {
      id = 326,
      color = 47,
      scale = 0.6
    },
    hideMarkers = false,
    markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    showroomJobWhitelist = {},
    showroomGangWhitelist = {},
    societyPurchaseJobWhitelist = {},
    societyPurchaseGangWhitelist = {},
  },

  ["La Puerta"] = {
    type = "self-service", -- or "owned", "self-service"
    openShowroom = {
      coords = vector3(1414.7047, 3818.5093, 32.1858),
      size = 5
    },
    openManagement = {
      coords = vector3(1411.2266, 3812.0078, 32.0313),
      size = 5
    },
    sellVehicle = {
      coords = vector3(1402.1062, 3837.2063, 30.4563),
      size = 5
    },
    purchaseSpawn = vector4(1423.6874, 3841.5679, 30.4138, 338.7794),
    testDriveSpawn = vector4(1410.9004, 3843.2815, 30.3836, 6.6883),
    camera = {
      name = "Sea",
      coords = vector4(-808.28, -1491.19, -0.47, 113.53),
      positions = {7.5, 12.0, 15.0, 12.0}
    },
    categories = {"boats"},
    enableSellVehicle = true, -- Allow players to sell vehicles back to dealer
    sellVehiclePercent = 0.6,  -- 60% of current sale price
    enableTestDrive = false,
    hideBlip = false,
    blip = {
      id = 455,
      color = 47,
      scale = 0.6
    },
    hideMarkers = false,
    markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    showroomJobWhitelist = {},
    showroomGangWhitelist = {},
    societyPurchaseJobWhitelist = {},
    societyPurchaseGangWhitelist = {},
  },

  ["LSIA"] = {
    type = "self-service", -- or "owned", "self-service"
    openShowroom = {
      coords = vector3(-1623.0, -3151.56, 13.99),
      size = 5
    },
    openManagement = {
      coords = vector3(-1637.78, -3177.94, 13.99),
      size = 5
    },
    sellVehicle = {
      coords = vector3(-1654.9, -3147.58, 13.99),
      size = 5
    },
    purchaseSpawn = vector4(-1654.9, -3147.58, 13.99, 324.78),
    testDriveSpawn = vector4(-1654.9, -3147.58, 13.99, 324.78),
    camera = {
      name = "Air",
      coords = vector4(-1267.0, -3013.14, -48.5, 310.96),
      positions = {12.0, 15.0, 20.0, 15.0}
    },
    categories = {"planes", "helicopters"},
    enableSellVehicle = true, -- Allow players to sell vehicles back to dealer
    sellVehiclePercent = 0.6,  -- 60% of current sale price
    enableTestDrive = false,
    hideBlip = false,
    blip = {
      id = 602,
      color = 47,
      scale = 0.6
    },
    hideMarkers = false,
    markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    showroomJobWhitelist = {},
    showroomGangWhitelist = {},
    societyPurchaseJobWhitelist = {},
    societyPurchaseGangWhitelist = {},
  },

  --[[["Buccaneer Way"] = {
    type = "self-service", -- or "owned", "self-service"
    openShowroom = {
      coords = vector3(1214.37, -3204.53, 6.03),
      size = 5
    },
    openManagement = {
      coords = vector3(1184.45, -3179.27, 7.1),
      size = 5
    },
    sellVehicle = {
      coords = vector3(1196.75, -3205.31, 6.0),
      size = 5
    },
    purchaseSpawn = vector4(1196.75, -3205.31, 6.0, 91.12),
    testDriveSpawn = vector4(1196.75, -3205.31, 6.0, 91.12),
    camera = {
      name = "Truck",
      coords = vector4(-1267.0, -3013.14, -48.5, 310.96),
      positions = {7.5, 12.0, 15.0, 12.0}
    },
    categories = {"vans", "commercial", "industrial"},
    enableSellVehicle = true, -- Allow players to sell vehicles back to dealer
    sellVehiclePercent = 0.6,  -- 60% of current sale price
    enableTestDrive = true,
    enableFinance = false,
    hideBlip = false,
    blip = {
      id = 810,
      color = 47,
      scale = 0.6
    },
    hideMarkers = false,
    markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    showroomJobWhitelist = {},
    showroomGangWhitelist = {},
    societyPurchaseJobWhitelist = {},
    societyPurchaseGangWhitelist = {},
  },]]--

  ["Benefactor Marina Beach"] = {
    type = "self-service", -- or "owned", "self-service"
    openShowroom = {
      coords = vec3(-361.26, 7470.14, 6.41),
      size = 5
    },
    openManagement = {
      coords = vec3(-375.79, 7447.87, 10.49),
      size = 5
    },
    sellVehicle = {
      coords = vec3(-363.34, 7498.3, 5.91),
      size = 5
    },
    purchaseSpawn = vector4(-377.58, 7488.12, 5.91, 268.96),
    testDriveSpawn = vector4(-363.34, 7498.3, 5.91, 325.29),
    camera = {
      name = "Car",
      coords = vector4(-146.6166, -596.6301, 166.0, 270.0),
      positions = {5.0, 8.0, 12.0, 8.0}
    },
    categories = {"coupes", "sportsclassics"},
    enableTestDrive = true,
    hideBlip = false,
    blip = {
      id = 326,
      color = 47,
      scale = 0.6
    },
    enableSellVehicle = true, -- Allow players to sell vehicles back to dealer
    sellVehiclePercent = 0.6,  -- 60% of current sale price
    enableFinance = false,
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
  
  ["Admin Shop"] = {
    type = "self-service", -- or "owned", "self-service"
    openShowroom = {
      coords = vec3(144.7, -638.76, 262.85),
      size = 5
    },
    openManagement = {
      coords = vec3(-375.79, 7447.87, 10.49),
      size = 5
    },
    sellVehicle = {
      coords = vec3(-363.34, 7498.3, 5.91),
      size = 5
    },
    purchaseSpawn = vector4(131.51, -626.62, 262.43, 67.9),
    testDriveSpawn = vector4(131.51, -626.62, 262.43, 67.9),
    camera = {
      name = "Car",
      coords = vector4(-146.6166, -596.6301, 166.0, 270.0),
      positions = {5.0, 8.0, 12.0, 8.0}
    },
    categories = {"police", "md", "bennys", "uwutaxi"},
    enableTestDrive = false,
    hideBlip = true,
    blip = {
      id = 810,
      color = 47,
      scale = 0.6
    },
    enableSellVehicle = false, -- Allow players to sell vehicles back to dealer
    sellVehiclePercent = 0.6,  -- 60% of current sale price
    enableFinance = false,
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
  
  ["Rising Sun Customs"] = {
    type = "self-service", -- or "owned", "self-service"
    openShowroom = {
      coords = vector3(-722.8978, -135.4951, 38.0754),
      size = 5
    },
    --[[
    openManagement = {
      coords = vector3(1184.45, -3179.27, 7.1),
      size = 5
    },
    sellVehicle = {
      coords = vector3(1196.75, -3205.31, 6.0),
      size = 5
    },
    ]]--
    purchaseSpawn = vector4(-711.3566, -118.8135, 37.1714, 300.3801),
    testDriveSpawn = vector4(-711.3566, -118.8135, 37.1714, 300.3801),
    camera = {
      name = "Car",
      coords = vector4(445.81, -1097.49, 43.07, 170.91),
      positions = {7.5, 12.0, 15.0, 12.0}
    },
    categories = {"risingsuncustoms"},
    enableSellVehicle = false, -- Allow players to sell vehicles back to dealer
    sellVehiclePercent = 0.6,  -- 60% of current sale price
    enableTestDrive = false,
    enableFinance = false,
    hideBlip = false,
    blip = {
      id = 326,
      color = 47,
      scale = 0.6
    },
    hideMarkers = false,
    markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    showroomJobWhitelist = {
      -- Job Name & Rank that can open the dealership
      risingsuncustoms = {8}
    },
    showroomGangWhitelist = {},
    societyPurchaseJobWhitelist = {
      -- Job Name & Rank that use job society funds to purchase vehicles
      risingsuncustoms = {8}
    },
    paymentOptions = {"societyFund"}, -- this is needed inorder to purchase using a society fund
    societyPurchaseGangWhitelist = {},
  },

}

-- Commands
Config.MyFinanceCommand = "myfinance"
Config.DirectSaleCommand = "directsale"
Config.DealerAdminCommand = "dealeradmin"

-- Nerd options
Config.RemoveGeneratorsAroundDealership = 60.0
Config.AutoRunSQL = true
Config.ReturnToPreviousRoutingBucket = false
Config.HideWatermark = false
Config.Debug = false