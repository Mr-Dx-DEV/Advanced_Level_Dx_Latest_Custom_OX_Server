--[[
  jg-dealerships | Client Main.lua
  De-obfuscated version of jg-dealerships2
  Includes vehicle color helpers, access checks, balance getters, and core utilities.
]]

-- Enter scene
DoScreenFadeIn(0)

----------------------------------------------------------------------
-- Basics: Vehicle color helpers
----------------------------------------------------------------------

--- Set GTA paint index for both primary/secondary at once
--- @param vehicle number
--- @param colourIndex integer
function setVehicleColourIndex(vehicle, colourIndex)
  SetVehicleColours(vehicle, colourIndex, colourIndex)
end

----------------------------------------------------------------------
-- Config validation
----------------------------------------------------------------------

--- Validate Config.VehicleColourOptions presence
--- @return boolean ok
function validateConfig()
  if not Config or not Config.VehicleColourOptions then
    print("^3[WARNING] Config.VehicleColourOptions is missing - some functionality will not work correctly")
    print("^3You may have an outdated Config.VehicleColourOptions, compare your config with a fresh one!")
    return false
  end
  return true
end

--- Validate a color index exists inside Config.VehicleColourOptions
--- @param idx integer
--- @return boolean ok
function validateColorIndex(idx)
  local opts = Config and Config.VehicleColourOptions or {}
  if not opts[idx] then
    print(("Could not find the color index in Config.VehicleColourOptions; index: %s"):format(tostring(idx)))
    return false
  end
  return true
end

--- Validate HEX string (# optional, exactly 6 hex chars)
--- @param hex string
--- @return boolean ok
function validateHexCode(hex)
  if type(hex) ~= "string" then return false end
  if not hex:match("^#?[0-9a-fA-F]{6}$") then
    print("This is an invalid hex code! Hex code must be 6 hex characters and may optionally start with #")
    return false
  end
  return true
end

--- Combined validation: index + optional hex
--- @param idx integer
--- @param hex string|nil
--- @return boolean ok
function validateInputs(idx, hex)
  if not validateColorIndex(idx) then return false end
  if hex ~= nil and not validateHexCode(hex) then return false end
  return true
end

----------------------------------------------------------------------
-- Custom RGB color
----------------------------------------------------------------------

--- Set custom primary RGB
--- @param vehicle number
--- @param r number @0-255
--- @param g number @0-255
--- @param b number @0-255
function setPrimaryColor(vehicle, r, g, b)
  SetVehicleCustomPrimaryColour(vehicle, r, g, b)
end

--- Set custom secondary RGB
--- @param vehicle number
--- @param r number @0-255
--- @param g number @0-255
--- @param b number @0-255
function setSecondaryColor(vehicle, r, g, b)
  SetVehicleCustomSecondaryColour(vehicle, r, g, b)
end

----------------------------------------------------------------------
-- Safe entity deletion
----------------------------------------------------------------------

--- Safely delete an entity (if exists)
--- @param handle number
function deleteEntity(handle)
  if DoesEntityExist(handle) then
    DeleteEntity(handle)
  end
end

----------------------------------------------------------------------
-- Safe exec utilities
----------------------------------------------------------------------

--- Safely call a function
--- @param func function
--- @param ... any
--- @return boolean success, any result
function safeCall(func, ...)
  local success, result = pcall(func, ...)
  if not success then
    print("^1[ERROR] Function call failed: " .. tostring(result))
  end
  return success, result
end

--- Convert string to number if it's a string
--- @param value any
--- @return number|nil
function toNumberIfString(value)
  if type(value) == "string" then
    return tonumber(value)
  end
  return value
end

----------------------------------------------------------------------
-- Focus helpers (prevents stuck cursor)
----------------------------------------------------------------------

local function FocusUI(enable, keepInput)
  pcall(function() SetNuiFocus(enable, enable) end)
  pcall(function() SetNuiFocusKeepInput(keepInput and true or false) end)
end

local function ReleaseUIFocus()
  pcall(function() SetNuiFocus(false, false) end)
  pcall(function() SetNuiFocusKeepInput(false) end)
end

----------------------------------------------------------------------
-- Init / cleanup
----------------------------------------------------------------------

--- Internal initialization
--- @return boolean
function initializeInternal()
  local ok = validateConfig()
  if ok and Config.UseRGBColors then
    -- (placeholder hook)
  end
  return ok
end

--- Lightweight cleanup (placeholder logic)
function cleanup()
  for i = 0, 9 do
    local possibleHandle = 1000 + i
    deleteEntity(possibleHandle)
  end
end

----------------------------------------------------------------------
-- Composite: apply full color scheme
----------------------------------------------------------------------

--- Apply full vehicle color scheme
--- @param vehicle number
--- @param colourIndex integer
--- @param hex string|nil
--- @param r number|nil
--- @param g number|nil
--- @param b number|nil
--- @return boolean ok
function setFullColorScheme(vehicle, colourIndex, hex, r, g, b)
  if not validateInputs(colourIndex, hex) then
    return false
  end

  setVehicleColourIndex(vehicle, colourIndex)

  if r and g and b then
    setPrimaryColor(vehicle, r, g, b)
  end

  return true
end

----------------------------------------------------------------------
-- State management
----------------------------------------------------------------------

local STATE = {
  initialized  = false,
  config_valid = false,
  error_count  = 0,
}

--- Initialize once, return config validity
function initialize()
  if STATE.initialized then
    return STATE.config_valid
  end
  local ok = initializeInternal()
  STATE.config_valid = ok
  STATE.initialized = true
  if not ok then STATE.error_count = STATE.error_count + 1 end
  return ok
end

----------------------------------------------------------------------
-- Showroom access check
----------------------------------------------------------------------

--- Check showroom access (job/gang whitelists)
--- @param dealershipId string
--- @return boolean
function IsShowroomAccessAllowed(dealershipId)
  local cfg = Config.DealershipLocations[dealershipId]
  if not cfg then return false end

  -- No whitelists => anyone allowed
  local hasJobWL  = cfg.showroomJobWhitelist and next(cfg.showroomJobWhitelist)
  local hasGangWL = cfg.showroomGangWhitelist and next(cfg.showroomGangWhitelist)
  if not hasJobWL and not hasGangWL then return true end

  -- Job whitelist
  if hasJobWL then
    local job = Framework.Client.GetPlayerJob()
    if not job then
      DebugPrint("Framework.Client.GetPlayerJob() returned nil", "warning")
      return false
    end
    DebugPrint("Got player job information", "debug", job)
    local grades = cfg.showroomJobWhitelist[job.name]
    if grades and IsItemInList(grades, tonumber(job.grade) or 0) then
      return true
    end
  end

  -- Gang whitelist
  if hasGangWL then
    local gang = Framework.Client.GetPlayerGang and Framework.Client.GetPlayerGang()
    if gang then
      DebugPrint("Got player gang information", "debug", gang)
      local grades = cfg.showroomGangWhitelist[gang.name]
      if grades and IsItemInList(grades, tonumber(gang.grade) or 0) then
        return true
      end
    end
  end

  return false
end

----------------------------------------------------------------------
-- Player balance
----------------------------------------------------------------------

--- Get player balances
--- @param dealershipId string|nil
--- @return table {bank: number, cash: number}
function GetPlayerBalances(dealershipId)
  local cash, bank = 0, 0
  
  -- Framework helpers (if available)
  if Framework and Framework.Client then
    if Framework.Client.GetBalance then
      local bankBalance = Framework.Client.GetBalance("bank") or 0
      local cashBalance = Framework.Client.GetBalance("cash") or 0
      return { bank = bankBalance, cash = cashBalance }
    elseif Framework.Client.GetMoney then
      local bankBalance = Framework.Client.GetMoney("bank") or 0
      local cashBalance = Framework.Client.GetMoney("cash") or 0
      return { bank = bankBalance, cash = cashBalance }
    end
  end

  -- ESX direct
  if Config.Framework == "ESX" and ESX then
    local playerData = ESX.GetPlayerData()
    if playerData and playerData.accounts then
      for _, account in pairs(playerData.accounts) do
        if account.name == "bank" then
          bank = account.money or 0
        elseif account.name == "money" then
          cash = account.money or 0
        end
      end
    end
  elseif (Config.Framework == "QBCore" or Config.Framework == "Qbox") and QBCore then
    local playerData = QBCore.Functions.GetPlayerData()
    if playerData and playerData.money then
      bank = playerData.money.bank or 0
      cash = playerData.money.cash or 0
    end
  end

  return { bank = bank, cash = cash }
end

----------------------------------------------------------------------
-- Vehicle type from class
----------------------------------------------------------------------

--- Map GTA vehicle class to FiveM vehicle type
--- @param vehicleClass number
--- @return string vehicleType
function GetVehicleTypeFromClass(vehicleClass)
  if vehicleClass == 0 then return "automobile"      -- Compacts
  elseif vehicleClass == 1 then return "automobile"  -- Sedans
  elseif vehicleClass == 2 then return "automobile"  -- SUVs
  elseif vehicleClass == 3 then return "automobile"  -- Coupes
  elseif vehicleClass == 4 then return "automobile"  -- Muscle
  elseif vehicleClass == 5 then return "automobile"  -- Sports Classics
  elseif vehicleClass == 6 then return "automobile"  -- Sports
  elseif vehicleClass == 7 then return "automobile"  -- Super
  elseif vehicleClass == 8 then return "bike"        -- Motorcycles
  elseif vehicleClass == 9 then return "automobile"  -- Off-road
  elseif vehicleClass == 10 then return "automobile" -- Industrial
  elseif vehicleClass == 11 then return "automobile" -- Utility
  elseif vehicleClass == 12 then return "automobile" -- Vans
  elseif vehicleClass == 13 then return "bike"       -- Cycles
  elseif vehicleClass == 14 then return "boat"       -- Boats
  elseif vehicleClass == 15 then return "heli"       -- Helicopters
  elseif vehicleClass == 16 then return "plane"      -- Planes
  elseif vehicleClass == 17 then return "automobile" -- Service
  elseif vehicleClass == 18 then return "automobile" -- Emergency
  elseif vehicleClass == 19 then return "automobile" -- Military
  elseif vehicleClass == 20 then return "automobile" -- Commercial
  elseif vehicleClass == 21 then return "train"      -- Trains
  else return "automobile"                            -- Default
  end
end

----------------------------------------------------------------------
-- Vehicle color application
----------------------------------------------------------------------

--- Apply color (supports mapping from Config.VehicleColourOptions)
--- @param vehicle number
--- @param color any
function SetVehicleColour(vehicle, color)
  local actualColorIndex = color
  
  if Config.VehicleColourOptions and tonumber(color) then
    local colorOptionIndex = tonumber(color)
    if colorOptionIndex > 0 and colorOptionIndex <= #Config.VehicleColourOptions then
      local colorOption = Config.VehicleColourOptions[colorOptionIndex]
      if colorOption and colorOption.index then
        actualColorIndex = colorOption.index
      end
    end
  end
  
  SetVehicleColours(vehicle, actualColorIndex, actualColorIndex)
end

----------------------------------------------------------------------
-- Spawn coords parsing
----------------------------------------------------------------------

--- Parse/normalize vehicle spawn coords into vector4
--- @param spawnData vector4|table|any
--- @return vector4|nil
function FindVehicleSpawnCoords(spawnData)
  if not spawnData then
    return nil
  end

  if type(spawnData) == "vector4" then
    return spawnData
  end

  if type(spawnData) == "table" then
    if spawnData.x and spawnData.y and spawnData.z then
      local heading = spawnData.w or spawnData.heading or 0.0
      return vector4(spawnData.x, spawnData.y, spawnData.z, heading)
    end
  end

  if type(spawnData) == "string" then
    local coords = load("return " .. spawnData)
    if coords then
      local result = coords()
      if result and type(result) == "table" then
        return FindVehicleSpawnCoords(result)
      end
    end
  end

  print("^1[WARNING] Could not parse spawn coordinates: " .. tostring(spawnData))
  return nil
end

----------------------------------------------------------------------
-- Exit showroom
----------------------------------------------------------------------

--- Exit showroom and restore player/hud/camera/focus
function ExitShowroom()
  local dealershipId = Globals and Globals.CurrentDealership or nil
  if not dealershipId then
    -- Still ensure focus/UI is released even if state is missing
    ReleaseUIFocus()
    pcall(function() SendNUIMessage({ type = "hide" }) end)
    return
  end

  -- Restore focus & hide UI
  ReleaseUIFocus()
  pcall(function() SendNUIMessage({ type = "hide" }) end)

  -- Server-side exit
  local success = pcall(function()
    return lib.callback.await("jg-dealerships:server:exit-showroom", false, dealershipId)
  end)
  if not success then
    print("^3[WARNING] jg-dealerships:server:exit-showroom failed")
  end

  -- Restore player visibility
  if cache and cache.ped then
    pcall(function() SetEntityVisible(cache.ped, true, false) end)
  end

  -- Restore HUD/Radar
  if Framework and Framework.Client and Framework.Client.ToggleHud then
    pcall(function() Framework.Client.ToggleHud(true) end)
  else
    pcall(function() DisplayHud(true) end)
    pcall(function() DisplayRadar(true) end)
  end

  -- Reset cameras (critical)
  pcall(function()
    RenderScriptCams(false, false, 0, true, false)
  end)

  -- Clear global state
  if Globals then
    Globals.CurrentDealership = nil
  end
end

----------------------------------------------------------------------
-- Expose globals (for other files/resources)
----------------------------------------------------------------------

IsShowroomAccessAllowed = IsShowroomAccessAllowed
GetPlayerBalances      = GetPlayerBalances
SetVehicleColour       = SetVehicleColour
FindVehicleSpawnCoords = FindVehicleSpawnCoords
ExitShowroom           = ExitShowroom

----------------------------------------------------------------------
-- Export table
----------------------------------------------------------------------

function exportsTable()
  return {
    -- Basics
    setVehicleColor         = setVehicleColourIndex,
    SetVehicleColour        = SetVehicleColour,

    -- Validation
    validateConfig          = validateConfig,
    validateColorIndex      = validateColorIndex,
    validateHexCode         = validateHexCode,

    -- RGB
    setPrimaryColor         = setPrimaryColor,
    setSecondaryColor       = setSecondaryColor,

    -- Entity
    deleteEntity            = deleteEntity,

    -- Init/Cleanup
    initialize              = initialize,
    cleanup                 = cleanup,

    -- Composite
    setFullColorScheme      = setFullColorScheme,

    -- Utils
    toNumberIfString        = toNumberIfString,
    safeCall                = safeCall,

    -- Showroom access
    IsShowroomAccessAllowed = IsShowroomAccessAllowed,
    
    -- Player data
    GetPlayerBalances       = GetPlayerBalances,
    
    -- Spawns
    FindVehicleSpawnCoords  = FindVehicleSpawnCoords,
    
    -- Showroom control
    ExitShowroom            = ExitShowroom,
  }
end

----------------------------------------------------------------------
-- NUI Callbacks
----------------------------------------------------------------------

RegisterNUICallback("hide", function(_, cb)
  if Globals and Globals.CurrentDealership then
    ExitShowroom()
  else
    ReleaseUIFocus()
    pcall(function() SendNUIMessage({ type = "hide" }) end)
  end
  if cb then cb(1) end
end)

RegisterNUICallback("close", function(_, cb)
  if Globals and Globals.CurrentDealership then
    ExitShowroom()
  else
    ReleaseUIFocus()
    pcall(function() SendNUIMessage({ type = "hide" }) end)
  end
  if cb then cb(1) end
end)

-- Generic close (e.g., management/admin UI)
RegisterNUICallback("closeUI", function(_, cb)
  if Globals and Globals.CurrentDealership then
    ExitShowroom()
  else
    ReleaseUIFocus()
    pcall(function() SendNUIMessage({ type = "hide" }) end)
  end
  if cb then cb(1) end
end)

RegisterNUICallback("escape", function(_, cb)
  if Globals and Globals.CurrentDealership then
    ExitShowroom()
  else
    ReleaseUIFocus()
    pcall(function() SendNUIMessage({ type = "hide" }) end)
  end
  if cb then cb(1) end
end)

----------------------------------------------------------------------
-- Resource-stop cleanup
----------------------------------------------------------------------

AddEventHandler('onResourceStop', function(resName)
  if resName ~= GetCurrentResourceName() then return end
  ReleaseUIFocus()
  pcall(function() SendNUIMessage({ type = "hide" }) end)
end)

----------------------------------------------------------------------
-- Exports
----------------------------------------------------------------------

exports("GetPlayerBalances",       function(...) return GetPlayerBalances(...) end)
exports("FindVehicleSpawnCoords",  function(...) return FindVehicleSpawnCoords(...) end)
exports("ExitShowroom",            function(...) return ExitShowroom(...) end)
exports("IsShowroomAccessAllowed", function(...) return IsShowroomAccessAllowed(...) end)
exports("SetVehicleColour",        function(...) return SetVehicleColour(...) end)
exports("GetVehicleTypeFromClass", function(...) return GetVehicleTypeFromClass(...) end)

----------------------------------------------------------------------
-- Startup
----------------------------------------------------------------------

initialize()
cleanup()

-- Panic command if anything ever holds the cursor again
RegisterCommand("fixcursor", function()
  ReleaseUIFocus()
end, false)

-- Return interface table
return exportsTable()
