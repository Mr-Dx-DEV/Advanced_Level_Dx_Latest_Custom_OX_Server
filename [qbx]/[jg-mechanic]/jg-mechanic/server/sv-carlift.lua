local PLATFORM_MODEL = joaat("prop_car_bonnet_3")
local STAND_MODEL = joaat("prop_car_engine_02")
local createdLifts = {}
local liftsCreated = false

local function createLift(x, y, z, h)
  local platformObj = CreateObjectNoOffset(PLATFORM_MODEL, x, y, z - 1.025, true, true, true)
  if not platformObj then return false, false end
  while not DoesEntityExist(platformObj) do
    Wait(1)
  end
  SetEntityHeading(platformObj, h)
  FreezeEntityPosition(platformObj, true)

  local standObj = CreateObjectNoOffset(STAND_MODEL, x, y, z - 1.0, true, true, true)
  if not standObj then return false, false end
  while not DoesEntityExist(standObj) do
    Wait(1)
  end
  SetEntityHeading(standObj, h)
  FreezeEntityPosition(standObj, true)

  local platformNetId = NetworkGetNetworkIdFromEntity(platformObj)
  local standNetId = NetworkGetNetworkIdFromEntity(standObj)
  return platformNetId, standNetId
end

local function createAllLifts()
  liftsCreated = true
  if GlobalState.carLiftsData then
    for _, mechanicLifts in pairs(GlobalState.carLiftsData) do
      for _, lift in ipairs(mechanicLifts) do
        DeleteEntity(NetworkGetEntityFromNetworkId(lift.platform))
        DeleteEntity(NetworkGetEntityFromNetworkId(lift.stand))
      end
    end
  end

  local allLifts = {}
  for mechanicId, location in pairs(Config.MechanicLocations) do
    if location.carLifts then
      if allLifts[mechanicId] and #allLifts[mechanicId] ~= 0 then
        goto continue
      end
      for _, coords in ipairs(location.carLifts) do
        local platformNetId, standNetId = createLift(coords.x, coords.y, coords.z, coords.w)
        if not platformNetId or not standNetId then
          return false
        end
        if not allLifts[mechanicId] then
          allLifts[mechanicId] = {}
        end
        allLifts[mechanicId][#allLifts[mechanicId] + 1] = {
          platform = platformNetId,
          stand = standNetId,
          coords = coords
        }
      end
    end
    ::continue::
  end
  createdLifts = allLifts
  GlobalState:set("carLiftsData", allLifts)
end

lib.callback.register("jg-mechanic:server:get-created-lifts", function()
  if not liftsCreated then
    createAllLifts()
  end
  lib.waitFor(function()
    return createdLifts
  end, "Lifts say they have been created, but they are still false", 30000)
  return createdLifts
end)