-----------------------------------------------------------------------------------
-- WAIT! Before editing this file manually, try our new easy configuration tool! --
--            https://configurator.jgscripts.com/advanced-garages                --
-----------------------------------------------------------------------------------
Config = {}

-- Localisation
Config.Locale = "en"
Config.NumberAndDateFormat = "en-US"
Config.Currency = "USD"

-- Framework & Integrations
Config.Framework = "Qbox" -- or "QBCore", "Qbox", "ESX"
Config.FuelSystem = "ox_fuel" -- or "LegacyFuel", "ps-fuel", "lj-fuel", "ox_fuel", "cdn-fuel", "hyon_gas_station", "okokGasStation", "nd_fuel", "myFuel", "ti_fuel", "Renewed-Fuel", "rcore_fuel", "none"
Config.VehicleKeys = "wasabi_carlock" -- or "qb-vehiclekeys", "MrNewbVehicleKeys", "jaksam-vehicles-keys", "qs-vehiclekeys", "mk_vehiclekeys", "wasabi_carlock", "cd_garage", "okokGarage", "t1ger_keys", "Renewed", "tgiann-hotwire" "none"
Config.Notifications = "ox_lib" -- or "default", "okokNotify", "ox_lib", "ps-ui"
Config.Banking = "Renewed-Banking" -- or "qb-banking", "qb-management", "esx_addonaccount", "Renewed-Banking", "okokBanking", "fd_banking"
Config.Gangs = "none" -- "qb-gangs", "rcore_gangs"

-- Draw text UI prompts (key binding control IDs here: https://docs.fivem.net/docs/game-references/controls/)
Config.DrawText = "jg-textui" -- or "jg-textui", "qb-DrawText", "okokTextUI", "ox_lib", "ps-ui"
Config.OpenGarageKeyBind = 38
Config.OpenGaragePrompt = "[E] Open Garage"
Config.OpenImpoundKeyBind = 38
Config.OpenImpoundPrompt = "[E] Open Impound"
Config.InsertVehicleKeyBind = 38
Config.InsertVehiclePrompt = "[E] Store Vehicle"
Config.ExitInteriorKeyBind = 38
Config.ExitInteriorPrompt = "[E] Exit Garage"

-- Target
Config.UseTarget = false
Config.Target = "ox_target" -- or "qb-target"
Config.TargetPed = "s_m_y_valet_01"

-- Radial
Config.UseRadialMenu = false
Config.RadialMenu = "ox_lib"


-- Little vehicle preview images in the garage UI - learn more/add custom images: https://docs.jgscripts.com/advanced-garages/vehicle-images
Config.ShowVehicleImages = true

-- Vehicle Spawning & Storing
Config.DoNotSpawnInsideVehicle = false
Config.SaveVehicleDamage = true -- Save and apply body and engine damage when taking the vehicle out a garage
Config.AdvancedVehicleDamage = true -- use Kiminaze's VehicleDeformation
Config.SaveVehiclePropsOnInsert = true
Config.CheckVehicleModel = true -- Extra security

-- If you don't know what this means, don't touch this
-- If you know what this means, I do recommend enabling it but be aware you may experience reliability issues on more populated servers
-- Having significant issues? I beg you to just set it back to false before opening a ticket with us
-- HIGHLY recommended that you set Config.DoNotSpawnInsideVehicle = false if you decide to enable this
-- Want to read my rant about server spawned vehicles? https://docs.jgscripts.com/advanced-garages/misc/why-are-you-not-using-createvehicleserversetter-by-default
Config.SpawnVehiclesWithServerSetter = false

-- Vehicle Transfers
Config.GarageVehicleTransferCost = 1000 -- Cost to transfer between garages
Config.TransferHidePlayerNames = false
Config.EnableTransfers = {
  betweenGarages = true,
  betweenPlayers = true
}
Config.DisableTransfersToUnregisteredGarages = false -- Potential hacking protection for vigilant servers - unregistered garages are ones created via events in third-party script integrations, such as housing scripts, and therefore could be prone to script kiddie attacks.

-- Prevent vehicle duplication
-- Learn more: https://docs.jgscripts.com/advanced-garages/vehicle-duplication-prevention
Config.AllowInfiniteVehicleSpawns = false -- Public & private garages
Config.JobGaragesAllowInfiniteVehicleSpawns = false -- Job garages
Config.GangGaragesAllowInfiniteVehicleSpawns = false -- Gang garages
Config.GarageVehicleReturnCost = 2500 -- "towing" tax if not placed back in garage after server restart; or if destroyed or underwater while left out
Config.GarageVehicleReturnCostSocietyFund = false -- Job name of society fund to pay return fees into (optional)

-- Public Garages
Config.GarageShowBlips = true
Config.GarageUniqueBlips = false
Config.GarageUniqueLocations = true
Config.GarageEnableInteriors = false
Config.GarageLocations = { -- IMPORTANT - Every garage name must be unique
  ["Legion Square"] = { -- If you change the name of this garage from Legion Square, you must change the default value of `garage_id` to the same name in the SQL table `players_vehicles`
    coords = vec3(215.23, -806.01, 30.69),
    spawn =  vec4(212.9, -797.02, 29.86, 156.8), --  you can add multiple spawn locations into a table
    distance = 40,
    type = "car",
    hideBlip = false,
    blip = {
      id = 357,
      color = 0,
      scale = 0.7
    },
    hideMarkers = false,
    markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
  },
  ["Islington South"] = {
    coords = vector3(273.0, -343.85, 44.91),
    spawn = vector4(270.75, -340.51, 44.92, 342.03),
    distance = 40,
    type = "car",
    hideBlip = false,
    blip = {
      id = 357,
      color = 0,
      scale = 0.7
    },
    hideMarkers = false,
    markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
  },
  ["Grove Street"] = {
    coords = vector3(14.66, -1728.52, 29.3),
    spawn = vector4(23.93, -1722.9, 29.3, 310.58),
    distance = 15,
    type = "car",
    hideBlip = false,
    blip = {
      id = 357,
      color = 0,
      scale = 0.7
    },
    hideMarkers = false,
    markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
  },
  ["Mirror Park"] = {
    coords = vector3(1032.84, -765.1, 58.18),
    spawn = vector4(1023.2, -764.27, 57.96, 319.66),
    distance = 15,
    type = "car",
    hideBlip = false,
    blip = {
      id = 357,
      color = 0,
      scale = 0.7
    },
    hideMarkers = false,
    markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
  },
  ["Beach"] = {
    coords = vector3(-1248.69, -1425.71, 4.32),
    spawn = vector4(-1244.27, -1422.08, 4.32, 37.12),
    distance = 15,
    type = "car",
    hideBlip = false,
    blip = {
      id = 357,
      color = 0,
      scale = 0.7
    },
    hideMarkers = false,
    markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
  },
  ["Great Ocean Highway"] = {
    coords = vector3(-2961.58, 375.93, 15.02),
    spawn = vector4(-2964.96, 372.07, 14.78, 86.07),
    distance = 15,
    type = "car",
    hideBlip = false,
    blip = {
      id = 357,
      color = 0,
      scale = 0.7
    },
    hideMarkers = false,
    markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
  },
  ["Sandy South"] = {
    coords = vector3(217.33, 2605.65, 46.04),
    spawn = vector4(216.94, 2608.44, 46.33, 14.07),
    distance = 15,
    type = "car",
    hideBlip = false,
    blip = {
      id = 357,
      color = 0,
      scale = 0.7
    },
    hideMarkers = false,
    markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
  },
  ["Sandy North"] = {
    coords = vector3(1878.44, 3760.1, 32.94),
    spawn = vector4(1880.14, 3757.73, 32.93, 215.54),
    distance = 15,
    type = "car",
    hideBlip = false,
    blip = {
      id = 357,
      color = 0,
      scale = 0.7
    },
    hideMarkers = false,
    markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
  },
  ["North Vinewood Blvd"] = {
    coords = vector3(365.21, 295.65, 103.46),
    spawn = vector4(364.84, 289.73, 103.42, 164.23),
    distance = 15,
    type = "car",
    hideBlip = false,
    blip = {
      id = 357,
      color = 0,
      scale = 0.7
    },
    hideMarkers = false,
    markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
  },
  ["Grapeseed"] = {
    coords = vector3(1713.06, 4745.32, 41.96),
    spawn = vector4(1710.64, 4746.94, 41.95, 90.11),
    distance = 15,
    type = "car",
    hideBlip = false,
    blip = {
      id = 357,
      color = 0,
      scale = 0.7
    },
    hideMarkers = false,
    markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
  },
  ["Paleto Bay"] = {
    coords = vector3(107.32, 6611.77, 31.98),
    spawn = vector4(110.84, 6607.82, 31.86, 265.28),
    distance = 15,
    type = "car",
    hideBlip = false,
    blip = {
      id = 357,
      color = 0,
      scale = 0.7
    },
    hideMarkers = false,
    markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
  },
  ["Boats"] = {
    coords = vector3(-795.15, -1510.79, 1.6),
    spawn = vector4(-798.66, -1507.73, -0.47, 102.23),
    distance = 20,
    type = "sea",
    hideBlip = false,
    blip = {
      id = 356,
      color = 0,
      scale = 0.7
    },
    hideMarkers = false,
    markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
  },
  ["Hangar"] = {
    coords = vector3(-1243.49, -3391.88, 13.94),
    spawn = vector4(-1258.4, -3394.56, 13.94, 328.23),
    distance = 20,
    type = "air",
    hideBlip = false,
    blip = {
      id = 359,
      color = 0,
      scale = 0.7
    },
    hideMarkers = false,
    markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
  }
}

-- Private Garages
Config.PrivGarageCreateCommand = "privategarages"
Config.PrivGarageCreateJobRestriction = {"realestate"}
Config.PrivGarageEnableInteriors = true
Config.PrivGarageHideBlips = false
Config.PrivGarageBlip = {
  id = 357,
  color = 0,
  scale = 0.7
}

-- Job Garages
Config.JobGarageShowBlips = true
Config.JobGarageSetVehicleCommand = "setjobvehicle" -- admin only
Config.JobGarageRemoveVehicleCommand = "removejobvehicle" -- admin only
Config.JobGarageUniqueBlips = false
Config.JobGarageUniqueLocations = true
Config.JobGarageEnableInteriors = true
Config.JobGarageLocations = { -- IMPORTANT - Every garage name must be unique
["EMS"] = {
    coords = vector3(-487.59, -331.07, 34.36),
    spawn = vector4(-487.59, -331.07, 34.36, 264.02),
    distance = 15,
    job = {"ambulance"},
    type = "car",
    hideBlip = false,
    blip = {
      id = 357,
      color = 0,
      scale = 0.7
    },
    hideMarkers = true,
    markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    vehiclesType = "spawner", -- Spawn a basic vehicle from a list
    showLiveriesExtrasMenu = true, -- Allow player to select a livery and extras before pulling vehicle out
    vehicles = {
      -- DL Debadged EMS
      [1] = { model = "DLAmbulance", plate = false, minJobGrade = 0, extras = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, maxMods = true },
      [2] = { model = "DLAmbulance2", plate = false, minJobGrade = 0, extras = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, maxMods = true },
      [3] = { model = "DLAmbulance3", plate = false, minJobGrade = 0, extras = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, maxMods = true },
      [4] = { model = "DLYAMAHAEMS", plate = false, minJobGrade = 0, extras = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, maxMods = true },
      [5] = { model = "DLM5EMS", plate = false, minJobGrade = 0, extras = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, maxMods = true },
      [6] = { model = "DLM7EMS", plate = false, minJobGrade = 0, extras = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, maxMods = true },
      [7] = { model = "DLRAMEMS", plate = false, minJobGrade = 0, extras = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, maxMods = true },
      [8] = { model = "DLRS6EMS", plate = false, minJobGrade = 0, extras = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, maxMods = true },
      [9] = { model = "DLRS7EMS", plate = false, minJobGrade = 0, extras = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, maxMods = true },
      [10] = { model = "DLRSQ8EMS", plate = false, minJobGrade = 0, extras = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, maxMods = true },
      [11] = { model = "DLX5EMS", plate = false, minJobGrade = 0, extras = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, maxMods = true }
    }
  },
  ["Police"] = {
    coords = vector3(65.01, -390.64, 38.37),
    spawn = vector4(65.01, -390.64, 38.37, 255.44),
    distance = 15,
    job = {"police"},
    type = "car",
    hideBlip = false,
    blip = {
      id = 357,
      color = 0,
      scale = 0.7
    },
    hideMarkers = true,
    markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    vehiclesType = "spawner", -- Spawn a basic vehicle from a list
    showLiveriesExtrasMenu = true, -- Allow player to select a livery and extras before pulling vehicle out 
    vehicles = {
      -- DL Debadged PD10
      [1] = { model = "polbmwm3", plate = false, minJobGrade = 0, extras = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, maxMods = true },
      [2] = { model = "polbmwm5", plate = false, minJobGrade = 0, extras = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, maxMods = true },
      [3] = { model = "polbmwm7", plate = false, minJobGrade = 0, extras = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, maxMods = true },
      [4] = { model = "polcoach", plate = false, minJobGrade = 0, extras = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, maxMods = true },
      [5] = { model = "poldurango", plate = false, minJobGrade = 0, extras = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, maxMods = true },
      [6] = { model = "polgt63", plate = false, minJobGrade = 0, extras = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, maxMods = true },
      [7] = { model = "polheli", plate = false, minJobGrade = 0, extras = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, maxMods = true },
      [8] = { model = "polmustang", plate = false, minJobGrade = 0, extras = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, maxMods = true },
      [9] = { model = "polrs6", plate = false, minJobGrade = 0, extras = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, maxMods = true },
      [10] = { model = "polsilverado19", plate = false, minJobGrade = 0, extras = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, maxMods = true },
      -- DL Debadged Sheriff15
      [11] = { model = "gurkharb", plate = false, minJobGrade = 0, extras = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, maxMods = true },
      [12] = { model = "Prisonvan2rb", plate = false, minJobGrade = 0, extras = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, maxMods = true },
      [13] = { model = "speeddemonrb", plate = false, minJobGrade = 0, extras = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, maxMods = true },
      [14] = { model = "valor1rb", plate = false, minJobGrade = 0, extras = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, maxMods = true },
      [15] = { model = "valor3rb", plate = false, minJobGrade = 0, extras = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, maxMods = true },
      [16] = { model = "valor5rb", plate = false, minJobGrade = 0, extras = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, maxMods = true },
      [17] = { model = "valor6rb", plate = false, minJobGrade = 0, extras = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, maxMods = true },
      [18] = { model = "valor9rb", plate = false, minJobGrade = 0, extras = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, maxMods = true },
      [19] = { model = "valor10rb", plate = false, minJobGrade = 0, extras = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, maxMods = true },
      [20] = { model = "valor12rb", plate = false, minJobGrade = 0, extras = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, maxMods = true },
      [21] = { model = "valor13rb", plate = false, minJobGrade = 0, extras = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, maxMods = true },
      [22] = { model = "valor15rb", plate = false, minJobGrade = 0, extras = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, maxMods = true },
      [23] = { model = "valorharley", plate = false, minJobGrade = 0, extras = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, maxMods = true },
      [24] = { model = "17silvk9rb", plate = false, minJobGrade = 0, extras = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, maxMods = true },
      [25] = { model = "eheli", plate = false, minJobGrade = 0, extras = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, maxMods = true },
      [26] = { model = "policeboat", plate = false, minJobGrade = 0, extras = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, maxMods = true },
      -- DL Debadged SWAT
      [27] = { model = "sw_bearcat", plate = false, minJobGrade = 0, extras = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, maxMods = true },
      [28] = { model = "sw_charg", plate = false, minJobGrade = 0, extras = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, maxMods = true },
      [29] = { model = "sw_durango", plate = false, minJobGrade = 0, extras = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, maxMods = true },
      [30] = { model = "sw_sprinter", plate = false, minJobGrade = 0, extras = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, maxMods = true },
      [31] = { model = "sw_subrb", plate = false, minJobGrade = 0, extras = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, maxMods = true },
      -- DL Debadged Unmarked
      [32] = { model = "dlrs6um", plate = false, minJobGrade = 0, extras = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, maxMods = true },
      [33] = { model = "nm_ctsv", plate = false, minJobGrade = 0, extras = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, maxMods = true },
      [34] = { model = "nm_z71", plate = false, minJobGrade = 0, extras = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, maxMods = true },
      [35] = { model = "owlalpina", plate = false, minJobGrade = 0, extras = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, maxMods = true },
      [36] = { model = "pd_escalader", plate = false, minJobGrade = 0, extras = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, maxMods = true },
      [37] = { model = "rrhycadeevoxpd", plate = false, minJobGrade = 0, extras = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, maxMods = true },
      [38] = { model = "trhawk", plate = false, minJobGrade = 0, extras = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, maxMods = true },
      [39] = { model = "unmarkedjl", plate = false, minJobGrade = 0, extras = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, maxMods = true },
      [40] = { model = "zm_rocket900", plate = false, minJobGrade = 0, extras = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, maxMods = true },
      [41] = { model = "zm_s500", plate = false, minJobGrade = 0, extras = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, maxMods = true },
      [42] = { model = "22g63", plate = false, minJobGrade = 0, extras = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, maxMods = true },
      [43] = { model = "DL_a45", plate = false, minJobGrade = 0, extras = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, maxMods = true },
      [44] = { model = "DL_rs6", plate = false, minJobGrade = 0, extras = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, maxMods = true },
      [45] = { model = "DL_RS7", plate = false, minJobGrade = 0, extras = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, maxMods = true },
      [46] = { model = "dlr34um", plate = false, minJobGrade = 0, extras = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, maxMods = true }
    }
  }
 
}

-- Gang Garages (QBCore/Qbox only by default)
Config.GangEnableCustomESXIntegration = false -- Set to true if you've added a custom system to cl/sv-functions.lua
Config.GangGarageShowBlips = true
Config.GangGarageSetVehicleCommand = "setgangvehicle" -- admin only
Config.GangGarageRemoveVehicleCommand = "removegangvehicle" -- admin only
Config.GangGarageUniqueBlips = false
Config.GangGarageUniqueLocations = true
Config.GangGarageEnableInteriors = true
Config.GangGarageLocations = { -- IMPORTANT - Every garage name must be unique

}

-- Impound
Config.ImpoundCommand = "impou"
Config.ImpoundFeesSocietyFund = "police" -- Job name of society fund to pay impound fees into (optional)
Config.ImpoundShowBlips = true
Config.ImpoundUniqueBlips = false
Config.ImpoundTimeOptions = {0, 1, 4, 12, 24, 72, 168} -- in hours
Config.ImpoundLocations = { -- IMPORTANT - Every impound name must be unique
  
}

-- Garage Interior
Config.GarageInteriorEntrance = vector4(227.96, -1003.06, -99.0, 0.0)
Config.GarageInteriorCameraCutscene = {
  vector4(227.96, -977.81, -98.99, 0.0), -- from
  vector4(227.96, -1006.96, -98.99, 0.0), -- to (this should be the entrance, or slightly further back from the entrance coords for a better final player transition)
}
Config.GarageInteriorVehiclePositions = {
  vector4(233.000000, -984.000000, -99.410004, 118.000000),
  vector4(233.000000, -988.500000, -99.410004, 118.000000),
  vector4(233.000000, -993.000000, -99.410004, 118.000000),
  vector4(233.000000, -997.500000, -99.410004, 118.000000),
  vector4(233.000000, -1002.000000, -99.410004, 118.000000),
  vector4(223.600006, -979.000000, -99.410004, 235.199997),
  vector4(223.600006, -983.599976, -99.410004, 235.199997),
  vector4(223.600006, -988.200012, -99.410004, 235.199997),
  vector4(223.600006, -992.799988, -99.410004, 235.199997),
  vector4(223.600006, -997.400024, -99.410004, 235.199997),
  vector4(223.600006, -1002.000000, -99.410004, 235.199997),
}

-- Staff Commands
Config.ChangeVehiclePlate = "vplate" -- admin only
Config.DeleteVehicleFromDB = "dvdb" -- admin only
Config.ReturnVehicleToGarage = "vreturn" -- admin only

-- Add your import vehicle's spawn name and desired label here for pretty vehicle names in the garage
-- This is mainly designed for ESX - if you are using QB, do this in shared!
Config.VehicleLabels = {
  ["libertywalk"] = "Liberty Walk",
  ["rocketbunny"] = "Rocket Bunny",
  ["500"] = "500",
  ["124spider"] = "124 Spider",
  ["yFiat595ssA"] = "595",
  ["yFiat595ssB"] = "595 S",
  ["4c"] = "4C Spider",
  ["8cs"] = "8C Spider",
  ["155q4"] = "155 Q4",
  ["alfa67"] = "33 Stradale",
  ["155alfa"] = "155 TI",
  ["argiu"] = "Giullieta",
  ["brera"] = "Brera",
  ["giulia"] = "Giulia",
  ["giuliasuper"] = "Giulia Super",
  ["gtv6"] = "GT V6",
  ["gtw6"] = "GT W6",
  ["mito"] = "Mito",
  ["105gt"] = "Montreal 105GT",
  ["spider115"] = "Spider 115",
  ["tz3"] = "TZ3 Stradale",
  ["a110s"] = "A110 S",
  ["al1"] = "A110",
  ["amcj"] = "Javelin AMX",
  ["pacer"] = "Pacer",
  ["amxss"] = "AMX SS",
  ["jav401"] = "Javelin",
  ["matador"] = "Matador",
  ["atom"] = "Atom",
  ["nomad"] = "Nomade",
  ["asdbx"] = "DBX 2019",
  ["ast"] = "Vanquish",
  ["cygnet"] = "Cygnet",
  ["cyrus"] = "Cyrus",
  ["db5"] = "DB5",
  ["db905"] = "DB9",
  ["dbx"] = "DBX 2020",
  ["vgt12"] = "GT",
  ["one77"] = "ONE 77",
  ["superleggera"] = "DBS SL",
  ["zagatov12"] = "Zagato V12",
  ["v600"] = "V600",
  ["vantage"] = "Vantage",
  ["vulcanamr"] = "Vulcan",
  ["2015s3"] = "S3",
  ["s3sedan"] = "A3 TFSI",
  ["audia4"] = "Audi A4",
  ["a6avant"] = "A6 avant",
  ["a6tfsi"] = "A6 TFSI",
  ["a6fnbodykit"] = "A6 AR",
  ["a8audi"] = "A8",
  ["a8fsi"] = "A8 FSI",
  ["a8lfsi"] = "A8 LFSI",
  ["a8lw12"] = "A8 W12",
  ["a615"] = "A6 TFSI 2015",
  ["a31999"] = "A3 1999",
  ["aaq4"] = "AA TFSI",
  ["audiq3"] = "Q3",
  ["audirs3"] = "RS3 2012",
  ["audis8om"] = "S8",
  ["yAudiTTmk1"] = "TT",
  ["tts"] = "TTS",
  ["auds5"] = "S5",
  ["c5rs6"] = "RS6",
  ["q5"] = "Q5",
  ["q7"] = "Q7",
  ["q820"] = "Q8 2020",
  ["r820"] = "R8 2020",
  ["rs4avant"] = "RS4 Avant",
  ["rs5r"] = "RS5 ABT",
  ["rs6+"] = "RS6 Mansory",
  ["rs7"] = "RS7",
  ["rs3"] = "RS3 2011",
  ["rs318"] = "RS3 2018",
  ["sq72016"] = "SQ7 2016",
  ["tts07"] = "TT 2007",
  ["audsq517"] = "SQ5 2017",
  ["audquattros"] = "Quattro",
  ["bbentayga"] = "Bentayga",
  ["ben17"] = "Continental GT 2017",
  ["bexp"] = "EXP 10",
  ["bmm"] = "Continental",
  ["brooklands"] = "Brooklands",
  ["contgt13"] = "Continental GT 2013",
  ["contgt2011"] = "Continental GT 2011",
  ["750li"] = "750li",
  ["440i"] = "440i",
  ["m2"] = "M2",
  ["17m760i"] = "760i",
  ["z419"] = "Z4 2019",
  ["i8"] = "I8",
  ["e60"] = "M5 E60",
  ["m3e30"] = "M3 E30",
  ["m5e60"] = "M5 E60",
  ["m5f90"] = "M5 F90",
  ["m6f13"] = "M6 F13",
  ["x5e53"] = "X5 E53",
  ["x6m"] = "X6",
  ["325et"] = "325",
  ["bmw507"] = "507",
  ["bmwe3"] = "E3",
  ["bmwe34"] = "E34 535i",
  ["bmwhommage"] = "BMW H CSL",
  ["bmc2"] = "Nazca C2",
  ["e21"] = "E21",
  ["e30c"] = "318i",
  ["e34"] = "M5 E30",
  ["m3e46"] = "M3 E46",
  ["lumma750"] = "750li",
  ["m1"] = "M1",
  ["m4f82"] = "M4 F82",
  ["m5e28"] = "M5 E28",
  ["m3f80"] = "M3 F80",
  ["mteche39"] = "E39 Tech",
  ["oldm6"] = "M6",
  ["rmodx6"] = "X6 M",
  ["m1procar"] = "M1 Sport",
  ["x5om"] = "X5",
  ["z3"] = "Z3",
  ["z4bmw"] = "Z4 2020",
  ["b63s"] = "E63 S",
  ["brabus700"] = "G700",
  ["brabus850"] = "850",
  ["g500"] = "G500",
  ["bugatti"] = "Veyron",
  ["bugatticentodieci"] = "Centodieci",
  ["centuria"] = "Centuria",
  ["2017chiron"] = "Chiron 2017",
  ["2019chiron"] = "Chiron 2019",
  ["bdivot"] = "Divo",
  ["eb110"] = "EB 110",
  ["royale"] = "Royale",
  ["cnty"] = "Century",
  ["gsxb"] = "GSX",
  ["bgnx"] = "GNX",
  ["cats"] = "ATS",
  ["cesc21"] = "Eldorado",
  ["e78"] = "Escalade",
  ["nova"] = "Nova",
  ["c7"] = "C7",
  ["c8"] = "C8",
  ["c10custom"] = "C10",
  ["chevelle1970"] = "Chevelle SS",
  ["silverado"] = "Silverado",
  ["corvetteZR1"] = "ZR1",
  ["impala"] = "Impala",
  ["impalass2"] = "Impala 1970",
  ["ccss16"] = "Camaro SS",
  ["tahoe"] = "Tahoe",
  ["z2879"] = "Z28 1979",
  ["zl12017"] = "ZL1 2017",
  ["300srt8"] = "300 SRT-8",
  ["airflow"] = "Airflow",
  ["chry300"] = "SRT8",
  ["cross"] = "Crossfire",
  ["newyorker75"] = "NewYorker 1975",
  ["acuralms"] = "Acura LMS",
  ["acuransx"] = "Acura NSX",
  ["apollos"] = "Appolo S",
  ["r8lms"] = "Audi R8 LMS",
  ["audir8lms2"] = "Audi R8 LMS",
  ["bac2"] = "Mono BAC 2",
  ["c7r"] = "Chev C7R",
  ["clklm"] = "CLK LM",
  ["fgt3"] = "Ford GT",
  ["fordcapri"] = "Ford Capri",
  ["gtrlms"] = "GTR LMS",
  ["lhgt3"] = "GT3",
  ["marr"] = "Marrusia",
  ["pragar1"] = "Praga R1",
  ["radical"] = "Radical",
  ["renaultm"] = "Megane LM",
  ["rmodmustang"] = "Mustang GT",
  ["rmp4"] = "MP4 12C GT3",
  ["spano2016"] = "Spano 2016",
  ["me412"] = "Me 4-12",
  ["330p4"] = "330 P4",
  ["f80"] = "F80",
  ["f248"] = "F248",
  ["fxxk"] = "FXX-K",
  ["terzo"] = "Terzo",
  ["mc12"] = "MC12",
  ["p1gtr"] = "P1 GTR",
  ["senna"] = "Senna",
  ["f1"] = "Formule 1",
  ["r18"] = "R18",
  ["mi8"] = "I8",
  ["bmwe65"] = "E65",
  ["m8gte"] = "M8 GTE",
  ["z4alchemist"] = "Z4 Sport",
  ["fordh"] = "Drift",
  ["maj935"] = "935",
  ["sportrs"] = "Sport RS",
  ["l78c"] = "178C",
  ["320ig5"] = "320",
  ["c2vtr"] = "C2 VTR",
  ["cit2cv"] = "2 CV",
  ["ds4"] = "DS4",
  ["ds7"] = "DS7 Crossback",
  ["xsarawrc"] = "Xsara WRC",
  ["survolt"] = "Survolt",
  ["joyster"] = "Joyster",
  ["leganza"] = "Leganza",
  ["tico"] = "Tico Rider",
  ["16challenger"] = "Challenger 2016",
  ["16charger"] = "Charger 2016",
  ["69charger"] = "Charger 1969",
  ["99viper"] = "Viper 1999",
  ["rt70"] = "Charger RT 1970",
  ["ram2500"] = "RAM 2500",
  ["10ram"] = "RAM 1500",
  ["acr"] = "Viper ACR",
  ["250gtb"] = "250 GTB",
  ["gto2"] = "250 GT0",
  ["348s"] = "348 S",
  ["412"] = "412",
  ["f458"] = "458",
  ["488"] = "488",
  ["488gtb"] = "488 GTB",
  ["612ss"] = "612 SS",
  ["f60"] = "F60",
  ["bb512"] = "BB512",
  ["dino"] = "Dino",
  ["pista"] = "458 Pista",
  ["f8t"] = "F8T",
  ["f40"] = "F40",
  ["f288gto"] = "288 GTO",
  ["f308"] = "308",
  ["f355"] = "355",
  ["f430s"] = "430 S",
  ["4881"] = "488 GTB",
  ["fct"] = "599 GTB",
  ["feF50"] = "F50",
  ["fer612"] = "612",
  ["f812"] = "812 Superfast",
  ["gto"] = "599 GTO",
  ["aperta"] = "LaFerrari Aperta",
  ["575m"] = "575 Maranello",
  ["modena"] = "360 Modena",
  ["monza"] = "Monza",
  ["fpino"] = "Enzo",
  ["f12m"] = "F12 Mansory",
  ["trossa"] = "Testarossa",
  ["fiorino"] = "Fiorino",
  ["punto"] = "Punto",
  ["boss302"] = "BOSS 302",
  ["boss429"] = "BOSS 429",
  ["bronco"] = "Bronco",
  ["eleanor"] = "Eleanor",
  ["everest"] = "Everest",
  ["f150"] = "Raptor 150",
  ["f15078"] = "Raptor 150 1978",
  ["fastback"] = "Fastback",
  ["focusrs"] = "Focus RS",
  ["fusiont"] = "Fusion",
  ["gt17"] = "GT 2017",
  ["mgt"] = "Mustang GT",
  ["mst"] = "Shelby",
  ["superduty"] = "Superduty",
  ["fgt"] = "GT 2007",
  ["denalihd"] = "Denali",
  ["gmcyd"] = "Yukon",
  ["gmcs"] = "Yukon S",
  ["yukonxl"] = "Ykon XL",
  ["xnsgt"] = "Venom GT",
  ["ap2"] = "S2000",
  ["civic"] = "Civic",
  ["dc2"] = "Civic Type-R",
  ["ek9"] = "Integra Type-R",
  ["acura2f2f"] = "Acura",
  ["2f2fs2000"] = "S2000",
  ["fnfrx7dom"] = "RX7",
  ["fk2"] = "Civic Type-R",
  ["fk8"] = "Civic Type-R",
  ["hondacivictr"] = "Civic Type R",
  ["na1"] = "NSX 1992",
  ["nc1"] = "NSX 2017",
  ["ody18"] = "Odyssey 2018",
  ["accent"] = "Accent",
  ["gencoupe"] = "Genesis",
  ["hyundaiv"] = "Veracruz",
  ["ix35"] = "IX 35",
  ["hkona"] = "Kona",
  ["sont18"] = "Sonata",
  ["tiburon"] = "Triburon",
  ["veln"] = "Veloster",
  ["fx50s"] = "FX 50S",
  ["inf"] = "Infiniti",
  ["infinitig35"] = "G35",
  ["ipl"] = "G37",
  ["q30"] = "Q30",
  ["qx56"] = "QX56",
  ["p7"] = "P7",
  ["etype2"] = "E-Type",
  ["fpacehm"] = "F-Pace",
  ["ftype"] = "F-Type",
  ["jagpr8"] = "PR8",
  ["jagxjs80"] = "XJS 1980",
  ["xes2015"] = "XES 2015",
  ["xfr"] = "XFR",
  ["xj"] = "XJ",
  ["xj220"] = "XJ 220",
  ["cherokee96"] = "Cherokee 1996",
  ["jeep2012"] = "Jeep 2012",
  ["cherokee1"] = "Cherokee",
  ["jeepreneg"] = "Renegade",
  ["srt8"] = "SRT",
  ["trailcat"] = "TrailCat",
  ["trhawk"] = "Cherokee SC",
  ["kiagt"] = "GT",
  ["kiasoul2"] = "Soul",
  ["koup"] = "Koup",
  ["sportage"] = "Sportage",
  ["KoenigseggAgeraR"] = "Agera R",
  ["agerars"] = "Agera RS",
  ["ccx"] = "CCX",
  ["jes"] = "Jesko",
  ["regera"] = "Regera",
  ["18performante"] = "Huracan Perf",
  ["500gtrlam"] = "Diablo GTR",
  ["asterion"] = "Asterion",
  ["avj"] = "Aventador S",
  ["count6"] = "Countach",
  ["lp610"] = "Hurucan LP610",
  ["lp670sv"] = "Murcielago",
  ["lp700"] = "Aventador LP700",
  ["lp770"] = "Centenario",
  ["diablo"] = "Diablo SV",
  ["miura"] = "Miura",
  ["sc18"] = "SC18",
  ["rmodsian"] = "Sian",
  ["urus"] = "Urus",
  ["rmodveneno"] = "Veneno",
  ["sesto"] = "Sesto Elemento",
  ["deltaintegrale"] = "Delta I",
  ["lanciad"] = "Delta",
  ["l37"] = "Bucca",
  ["gs350"] = "GS 350",
  ["gsf"] = "GSF",
  ["is350mod"] = "IS 350",
  ["lx570"] = "LX 570",
  ["RC350S"] = "RC 350 S",
  ["rx450h"] = "RX 450 H",
  ["lexus"] = "LS 500",
  ["nx200"] = "NX 200",
  ["lx2018"] = "LX 2018",
  ["lc500"] = "LC 500",
  ["gx460"] = "GX 460",
  ["CT200H"] = "CT 200 H",
  ["63lb"] = "C63 AMG",
  ["ar8lb"] = "R8",
  ["filthynsx"] = "NSX",
  ["gallardosuperlb"] = "Gallardo",
  ["gt86lb"] = "GT86",
  ["gtrlb2"] = "GTR R35",
  ["610lb"] = "610",
  ["huralbcamber"] = "Huracan",
  ["lwas5"] = "S5",
  ["lw458s"] = "458",
  ["993rwb"] = "993",
  ["cortina"] = "Cortina",
  ["exigev6"] = "Exige V6",
  ["esprit02"] = "Esprit",
  ["evora"] = "Evora",
  ["l111s"] = "111 S",
  ["carlton"] = "Carlton",
  ["ghis2"] = "Ghibli",
  ["levante"] = "Levante",
  ["mcgt4"] = "GT4",
  ["mgrantur2010"] = "Gran turismo 2010",
  ["mlmansory"] = "LM Mansory",
  ["mlnovitec"] = "Novitech",
  ["mqgts"] = "Quattroparte",
  ["19S650"] = "19 S650",
  ["scaldarsi"] = "Scaldarsi",
  ["fc3s"] = "RX7 Savana",
  ["fd"] = "RX7 FD",
  ["mx5326"] = "MX53 2006",
  ["na6"] = "MX-5",
  ["rx3"] = "RX3",
  ["rx7tunable"] = "RX7",
  ["rx8m"] = "RX8 M",
  ["rx8r"] = "RX8 R",
  ["rxf7"] = "RX-F7",
  ["fnfrx7"] = "RX7",
  ["2f2frx7"] = "RX7",
  ["650s"] = "650S",
  ["675lt"] = "675LT",
  ["720s"] = "720S",
  ["mp412c"] = "MP4 12C",
  ["p1"] = "P1",
  ["12cls63"] = "CLS 63",
  ["mb300sl"] = "300 SL",
  ["500w124"] = "500W124",
  ["600sel"] = "600 SL",
  ["amggt"] = "AMG GT",
  ["amggtr"] = "AMG GTRR",
  ["amggtr2"] = "AMG GTR",
  ["c63w205"] = "C63W205",
  ["e63amg"] = "E 63 AMG",
  ["e400"] = "E400",
  ["g65amg"] = "G65 AMG",
  ["gl63"] = "GL63",
  ["mers63c"] = "63C",
  ["s500w222"] = "S500W222",
  ["s600w220"] = "S600W220",
  ["slsamg"] = "SLS AMG",
  ["v250"] = "Vito",
  ["cla45sb"] = "Classe A AMG",
  ["cooperworks"] = "Works",
  ["mcjcw20"] = "Works 2020",
  ["mrbeanmini"] = "MisterBean",
  ["3000gt"] = "3000 GT",
  ["cp9a"] = "Evo 3",
  ["eclipse"] = "Eclipse",
  ["evo9"] = "Evo 9",
  ["evo10"] = "Evo 10",
  ["tritonhpe"] = "Triton HPE",
  ["lanex400"] = "Evo 10",
  ["evo9mr"] = "Evo 9 MR",
  ["2f2fgts"] = "Spyder GTS",
  ["fnfmits"] = "Eclipse",
  ["2f2fmle7"] = "Evo 7",
  ["fnflan"] = "Evo 8",
  ["hcej1"] = "Mitsubishi",
  ["180sx"] = "180SX",
  ["350z"] = "350 Z",
  ["350zrb"] = "350 ZRB",
  ["370z"] = "370 Z",
  ["gtr"] = "GTR",
  ["kgc10"] = "GT",
  ["maj350"] = "Fairlady Z",
  ["majsr"] = "R32",
  ["gtrnismo17"] = "GTR Nismo 2017",
  ["nisaltima"] = "Altima",
  ["nismo20"] = "GTR Nismo",
  ["nissantitan17"] = "Titan",
  ["patrold"] = "Patrol SLX",
  ["patroly60"] = "Patrol",
  ["qashqai16"] = "Qashqai",
  ["r33"] = "R33",
  ["s30"] = "Fairlady",
  ["skyline"] = "R34",
  ["skylinec110"] = "Skyline GT",
  ["tule"] = "Armada",
  ["z32"] = "300 ZX",
  ["silvias15"] = "Silvia S15",
  ["2f2fgtr34"] = "GTR R34",
  ["fnf4r34"] = "R34",
  ["350zdk"] = "350Z",
  ["350zm"] = "350Z",
  ["m600"] = "M600",
  ["protopolice"] = "Prototype",
  ["onyx"] = "Onyx",
  ["avalk"] = "Valkyrie",
  ["chargerf8"] = "Coquette BlackFin",
  ["212expo51"] = "Blade",
  ["mvisiongt"] = "Vision GT",
  ["gtr2020"] = "GTR 2020",
  ["mb6"] = "Vision Maybach",
  ["arrow"] = "Prototype",
  ["opeladam"] = "Adam",
  ["astraj"] = "Astra",
  ["mokka"] = "Mokka",
  ["corsa05"] = "Corsa 2005",
  ["corsa09"] = "Corsa 2009",
  ["corsae"] = "Corsa",
  ["2dopelr3"] = "R3",
  ["bc"] = "Huayra BC",
  ["huayra"] = "Huayra",
  ["zondac"] = "Zonda C",
  ["zondar"] = "Zonda R",
  ["205GTti"] = "205 GTI",
  ["206lo"] = "206 GTI",
  ["208gti21"] = "208 GTI",
  ["405glxfn"] = "405 GLX",
  ["504coupe"] = "504",
  ["p207"] = "207",
  ["peug108"] = "108",
  ["peug308"] = "308",
  ["peugeot"] = "405",
  ["Peugeot204"] = "204",
  ["rcz16"] = "RCZ 2016",
  ["taxi2"] = "405",
  ["yPG205t16A"] = "205 Turbo",
  ["356ac"] = "356",
  ["718"] = "718",
  ["718b"] = "718B",
  ["718caymans"] = "Cayman",
  ["718rs"] = "718 RS",
  ["p911r"] = "911 R",
  ["911tbs"] = "911 Turbo S",
  ["911turbos"] = "911 Turbo S",
  ["918"] = "918",
  ["968"] = "968",
  ["p901"] = "901",
  ["718boxster"] = "718 Boxster",
  ["pcs18"] = "Cayenne S",
  ["911r"] = "911 R",
  ["p928"] = "928",
  ["panamera17turbo"] = "Panamera T",
  ["pruf"] = "Pruf",
  ["cayenne"] = "Cayenne",
  ["porschehw"] = "Cayman GT4 S",
  ["taycan"] = "Taycan",
  ["macan"] = "Macan Turbo",
  ["cayenneturbo"] = "Cayenne Turbo S",
  ["992c"] = "911 Carrera S",
  ["17cliofl"] = "Clio 4",
  ["clio"] = "Clio 1 W",
  ["cliors"] = "Clio RS",
  ["cliov6"] = "Clio V6",
  ["espace3"] = "Espace 3",
  ["kangoo"] = "kangoo",
  ["koleos"] = "Loleos",
  ["master2019"] = "Master 2019",
  ["mers18"] = "Megane RS",
  ["pacev"] = "Espace 5",
  ["ren21"] = "21",
  ["renault4"] = "4",
  ["renault4l"] = "4L",
  ["renault8"] = "8",
  ["renault16"] = "16",
  ["rencaptur"] = "Captur",
  ["renmaster"] = "Master 2008",
  ["twingo"] = "Twingo 3",
  ["twingo2"] = "Twingo",
  ["twizy"] = "Twizy",
  ["yRenault5TB"] = "Renault 5 T",
  ["zoe"] = "ZOE",
  ["nsexrb"] = "NSX 1992",
  ["rculi"] = "Cullinan",
  ["rrphantom"] = "Phantom",
  ["wraith"] = "Wraith",
  ["def90"] = "Defender 1990",
  ["evoque"] = "Evoque",
  ["FX4"] = "Discovery 4",
  ["landseries3"] = "Serie 3",
  ["lrrr"] = "Range Rover",
  ["rr12"] = "2012",
  ["rrs08"] = "2008",
  ["rrst"] = "Startech",
  ["svr16"] = "SVR 2016",
  ["2012leon"] = "Leon 2012",
  ["ibiza"] = "Cupra",
  ["seatleon"] = "Leon",
  ["ss7"] = "S7",
  ["19gt500"] = "19 GT500",
  ["cobra"] = "Cobra",
  ["fmss"] = "SS",
  ["gdwrxsti"] = "WRX STI",
  ["subwrx"] = "WRX",
  ["SubaruSTI7"] = "STI 2007",
  ["sti"] = "Impreza STI",
  ["sim22"] = "WRC 2002",
  ["ff4wrx"] = "WRX",
  ["teslapd"] = "Model E",
  ["teslax"] = "Model X",
  ["tmodel"] = "Model T",
  ["tr22"] = "Roadster",
  ["a80"] = "A80",
  ["ae86"] = "AE86",
  ["camry18"] = "Camry18",
  ["camry55"] = "Camry55",
  ["camv50"] = "Camry50",
  ["celica"] = "Celica",
  ["chr"] = "CHR",
  ["GT86"] = "GT86",
  ["supraa90"] = "Supra",
  ["2000gt"] = "2000 GT",
  ["prius"] = "Prius",
  ["yaris08"] = "Yaris 2008",
  ["2f2fmk4"] = "Supra",
  ["fnfmk4"] = "Supra",
  ["tvrs"] = "Sagaris",
  ["grif"] = "Grif",
  ["amarok"] = "Amarok",
  ["fulux63"] = "Coccinelle 1963",
  ["golf7r"] = "Golf 7R",
  ["golfgti"] = "Golf 7 GTI",
  ["mk1rabbit"] = "Golf 1 GTI",
  ["passat"] = "Passat",
  ["polo2018"] = "Polo 2018",
  ["R50"] = "Touareg",
  ["fnfjetta"] = "Jetta",
  ["06xc90eu"] = "XC90",
  ["s60pole"] = "S60",
  ["v60"] = "V60",
  ["v242"] = "242",
  ["volvo850r"] = "850 R",
  ["ts1"] = "ST1",
  ["zn20"] = "ST1 2020"
}

-- Block certain vehicles from being transferred to other players
Config.PlayerTransferBlacklist = {
  "spawnName"
}

Config.AutoRunSQL = true
Config.ReturnToPreviousRoutingBucket = false
Config.HideWatermark = true
Config.__v3Config = true
Config.Debug = false