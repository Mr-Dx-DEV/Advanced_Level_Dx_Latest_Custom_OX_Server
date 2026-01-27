-- Admin UI state tracking
local adminUIOpen = false

-- Control IDs to disable while UI is open
local disabledControls = {
  1,   -- Camera look (LMB)
  2,   -- Camera look (RMB)
  24,  -- Attack
  25,  -- Aim
  37,  -- Select weapon
  44,  -- Cover
  45,  -- Reload
  140, -- Melee attack light
  141, -- Melee attack heavy
  142, -- Melee attack alternate
  257, -- Attack 2
  263, -- Melee attack 1
  264, -- Melee attack 2
}

-- Thread to disable controls while admin UI is open
CreateThread(function()
  while true do
    if adminUIOpen then
      for _, control in ipairs(disabledControls) do
        DisableControlAction(0, control, true)
      end
      -- Disable movement controls
      DisableControlAction(0, 30, true)  -- Move Left/Right
      DisableControlAction(0, 31, true)  -- Move Up/Down
      DisableControlAction(0, 21, true)  -- Sprint
      DisableControlAction(0, 22, true)  -- Jump
      DisableControlAction(0, 36, true)  -- Crouch
    end
    Wait(0)
  end
end)

-- Open admin UI
RegisterNetEvent("jg-dealerships:client:open-admin", function()
  local data = lib.callback.await("jg-dealerships:server:get-admin-data", false)
  
  adminUIOpen = true
  SetNuiFocus(true, true)
  
  SendNUIMessage({
    type = "vehiclesAdmin",
    dealers = data.dealerships,
    vehicles = data.vehicles,
    nearbyPlayers = data.nearbyPlayers,
    config = Config,
    locale = Locale
  })
end)
-- Reopen admin UI
RegisterNUICallback("open-admin", function()
  TriggerEvent("jg-dealerships:client:open-admin")
end)
-- Add vehicle
RegisterNUICallback("add-vehicle", function(data, cb)
  lib.callback.await(
    "jg-dealerships:server:add-vehicle",
    false,
    data.spawn_code,
    data.brand,
    data.model,
    data.category,
    data.price,
    data.dealerships
  )
  cb(true)
end)
-- Update vehicle
RegisterNUICallback("update-vehicle", function(data, cb)
  lib.callback.await(
    "jg-dealerships:server:update-vehicle",
    false,
    data.spawn_code,
    data.brand,
    data.model,
    data.category,
    data.price,
    data.dealerships,
    data.updateDealerPrices or false
  )
  cb(true)
end)
-- Delete vehicle
RegisterNUICallback("delete-vehicle", function(data, cb)
  lib.callback.await("jg-dealerships:server:delete-vehicle", false, data.spawn_code)
  cb(true)
end)
-- Delete dealership data
RegisterNUICallback("delete-dealership-data", function(data, cb)
  local result = lib.callback.await("jg-dealerships:server:delete-dealership-data", false, data.dealershipId)
  TriggerEvent("jg-dealerships:client:open-admin")
  cb(result)
end)
-- Set dealership owner
RegisterNUICallback("set-dealership-owner", function(data, cb)
  local result = lib.callback.await("jg-dealerships:server:set-dealership-owner", false, data.dealershipId, data.player)
  TriggerEvent("jg-dealerships:client:open-admin")
  cb(result)
end)
-- Import vehicles data
RegisterNUICallback("import-vehicles-data", function(data, cb)
  local result = lib.callback.await("jg-dealerships:server:import-vehicles-data", false, data.location, data.behaviour)
  TriggerEvent("jg-dealerships:client:open-admin")
  cb(result)
end)
-- Verify spawn code
RegisterNUICallback("verify-spawn-code", function(data, cb)
  local spawnCode = data.spawnCode
  if not spawnCode then
    return cb(false)
  end
  
  local hash = GetHashKey(spawnCode)
  local isValid = IsModelValid(hash)
  
  cb({ valid = isValid })
end)

-- Monitor NUI focus to reset flag when UI closes
CreateThread(function()
  while true do
    if adminUIOpen and not IsNuiFocused() then
      adminUIOpen = false
    end
    Wait(100)
  end
end)
