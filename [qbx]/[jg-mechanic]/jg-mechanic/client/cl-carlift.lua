local MIN_HEIGHT = -1.025
local MAX_HEIGHT = 0.85
local LIFT_SPEED = 0.01
local currentLift = nil
local isLiftingUp = false
local isLiftingDown = false
local liftSound = nil

RegisterNUICallback("carlift-up", function(data, cb)
  if not currentLift or isLiftingUp then
    return cb(false)
  end

  local attachVehicle = data.vAttach
  local platformProp = currentLift.platformProp
  local platformCoords = GetEntityCoords(platformProp)
  currentLift.height = platformCoords.z - currentLift.coords.z
  isLiftingUp = true

  local closestVehicle, closestVehicleCoords = lib.getClosestVehicle(platformCoords, 3.0, true)
  liftSound = Framework.Client.PlaySound("hydraulic", vector3(currentLift.coords.x, currentLift.coords.y, currentLift.coords.z))

  CreateThread(function()
    while isLiftingUp and currentLift and currentLift.height < MAX_HEIGHT do
      currentLift.height = currentLift.height + LIFT_SPEED
      local newZ = currentLift.coords.z + currentLift.height

      SetEntityCoords(platformProp, currentLift.coords.x, currentLift.coords.y, newZ, false, false, false, false)

      if attachVehicle and closestVehicle and closestVehicleCoords and DoesEntityExist(closestVehicle) then
        SetEntityCoords(closestVehicle, closestVehicleCoords.x, closestVehicleCoords.y, newZ, false, false, false, false)
      end
      Wait(25)
    end

    if currentLift and currentLift.height >= MAX_HEIGHT and liftSound then
      Framework.Client.StopSound(liftSound)
    end
  end)
  cb(true)
end)

RegisterNUICallback("carlift-down", function(data, cb)
  if not currentLift or isLiftingDown then
    return cb(false)
  end

  local attachVehicle = data.vAttach
  local platformProp = currentLift.platformProp
  local platformCoords = GetEntityCoords(platformProp)
  currentLift.height = platformCoords.z - currentLift.coords.z
  isLiftingDown = true

  local closestVehicle, closestVehicleCoords = lib.getClosestVehicle(platformCoords, 3.0, true)
  liftSound = Framework.Client.PlaySound("hydraulic", vector3(currentLift.coords.x, currentLift.coords.y, currentLift.coords.z))

  CreateThread(function()
    while isLiftingDown and currentLift and currentLift.height > MIN_HEIGHT do
      currentLift.height = currentLift.height - LIFT_SPEED
      local newZ = currentLift.coords.z + currentLift.height
      SetEntityCoords(platformProp, currentLift.coords.x, currentLift.coords.y, newZ, false, false, false, false)

      if attachVehicle and closestVehicle and closestVehicleCoords and DoesEntityExist(closestVehicle) then
        SetEntityCoords(closestVehicle, closestVehicleCoords.x, closestVehicleCoords.y, newZ, false, false, false, false)
      end
      Wait(25)
    end

    if currentLift and currentLift.height <= MIN_HEIGHT and liftSound then
      Framework.Client.StopSound(liftSound)
    end
  end)
  cb(true)
end)

RegisterNUICallback("carlift-stop", function(data, cb)
  if not currentLift or not liftSound then
    return cb(false)
  end

  Framework.Client.StopSound(liftSound)
  isLiftingDown = false
  isLiftingUp = false
  cb(true)
end)

RegisterNUICallback("hide-carlift-controls", function(data, cb)
  SendNUIMessage({ showCarLift = false })
  SetNuiFocus(false, false)
  cb(true)
end)

local function openLiftControls()
  SetNuiFocus(true, true)
  SendNUIMessage({
    showCarLift = true,
    locale = Locale
  })
end

onEnterCarliftZone = function(data)
  if not data then
    return
  end

  local platformProp = NetworkGetEntityFromNetworkId(data.platform)
  local standProp = NetworkGetEntityFromNetworkId(data.stand)
  Framework.Client.ShowTextUI(Config.UseCarLiftPrompt)

  currentLift = {
    platformProp = platformProp,
    standProp = standProp,
    coords = data.coords,
    height = 0
  }

  CreateThread(function()
    while currentLift do
      if IsControlJustPressed(0, Config.UseCarLiftKey) then
        openLiftControls()
      end
      Wait(0)
    end
  end)
end

onExitCarliftZone = function()
  currentLift = nil
  Framework.Client.HideTextUI()
  SetNuiFocus(false, false)
  SendNUIMessage({ showCarLift = false })
end