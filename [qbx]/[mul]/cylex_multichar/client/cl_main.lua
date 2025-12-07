local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = SPAWN_LOCATIONS
L1_1 = SELECTED_LOCATION
L0_1 = L0_1[L1_1]
SPAWN = L0_1
L0_1 = SPAWN
L0_1 = L0_1.camera
CAMERA = L0_1
L0_1 = SPAWN
L0_1 = L0_1.creator
CREATOR = L0_1
L0_1 = joaat
L1_1 = "mp_m_freemode_01"
L0_1 = L0_1(L1_1)
maleModel = L0_1
L0_1 = joaat
L1_1 = "mp_f_freemode_01"
L0_1 = L0_1(L1_1)
femaleModel = L0_1
L0_1 = SPAWN
L0_1.cam = nil
L0_1 = {}
SPAWNED_MODELS = L0_1
L0_1 = {}
SPAWNED_CHARACTERS = L0_1
UI_READY = false
SELECTED_CHARACTER = nil
SELECTED_CHARACTER_INDEX = 1
L0_1 = {}
MUGSHOTS = L0_1
THREADS_ACTIVE = true
SCRIPT_IS_LOADED = false
L0_1 = {}
CORE_INTEGRATIONS = L0_1
L0_1 = {}
CHARACTER_CAMERAS = L0_1
L0_1 = {}
createdDuis = L0_1
L0_1 = {}
Core = L0_1
L0_1 = setmetatable
L1_1 = Core
L2_1 = {}
function L3_1(A0_2, A1_2)
  local L2_2
  function L2_2(...)
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = CORE_INTEGRATIONS
    L1_3 = Config
    L1_3 = L1_3.core
    L0_3 = L0_3[L1_3]
    L1_3 = A1_2
    L0_3 = L0_3[L1_3]
    if L0_3 then
      L1_3 = L0_3
      L2_3 = CORE_INTEGRATIONS
      L3_3 = Config
      L3_3 = L3_3.core
      L2_3 = L2_3[L3_3]
      L3_3, L4_3 = ...
      return L1_3(L2_3, L3_3, L4_3)
    else
      L1_3 = print
      L2_3 = "Method "
      L3_3 = A1_2
      L4_3 = " not found in core integration"
      L2_3 = L2_3 .. L3_3 .. L4_3
      L1_3(L2_3)
    end
  end
  return L2_2
end
L2_1.__index = L3_1
L0_1(L1_1, L2_1)
L0_1 = print
function L1_1(...)
  local L0_2, L1_2, L2_2
  L0_2 = Config
  L0_2 = L0_2.debug
  if not L0_2 then
    return
  end
  L0_2 = L0_1
  L1_2 = "^5[cylex_multichar]^7 "
  L2_2 = ...
  return L0_2(L1_2, L2_2)
end
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = L1_1
  L1_2 = "Waiting for network session to start"
  L2_2 = THREADS_ACTIVE
  L0_2(L1_2, L2_2)
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3
    while true do
      L0_3 = SCRIPT_IS_LOADED
      if L0_3 then
        break
      end
      L0_3 = IsScreenFadedOut
      L0_3 = L0_3()
      if not L0_3 then
        L0_3 = DoScreenFadeOut
        L1_3 = 10
        L0_3(L1_3)
      end
      L0_3 = Wait
      L1_3 = 50
      L0_3(L1_3)
    end
  end
  L0_2(L1_2)
  while true do
    L0_2 = Wait
    L1_2 = 0
    L0_2(L1_2)
    L0_2 = NetworkIsSessionStarted
    L0_2 = L0_2()
    if L0_2 then
      L0_2 = L1_1
      L1_2 = "Network session started"
      L0_2(L1_2)
      break
    end
  end
  L0_2 = pcall
  function L1_2()
    local L0_3, L1_3, L2_3
    L0_3 = exports
    L0_3 = L0_3.spawnmanager
    L1_3 = L0_3
    L0_3 = L0_3.setAutoSpawn
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  L0_2, L1_2 = L0_2(L1_2)
  L2_2 = TriggerEvent
  L3_2 = "esx:loadingScreenOff"
  L2_2(L3_2)
  L2_2 = ShutdownLoadingScreen
  L2_2()
  L2_2 = ShutdownLoadingScreenNui
  L2_2()
  L2_2 = RPC
  L2_2 = L2_2.execute
  L3_2 = "cylex_multichar:playerJoined"
  L2_2(L3_2)
  L2_2 = DisplayRadar
  L3_2 = 0
  L2_2(L3_2)
  L2_2 = NetworkOverrideClockTime
  L3_2 = 0
  L4_2 = 0
  L5_2 = 0
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = SetRainLevel
  L3_2 = 0.0
  L2_2(L3_2)
  L2_2 = SetWeatherTypeNow
  L3_2 = "CLEAR"
  L2_2(L3_2)
  L2_2 = SetWeatherTypeNowPersist
  L3_2 = "CLEAR"
  L2_2(L3_2)
  L2_2 = DoScreenFadeOut
  L3_2 = 10
  L2_2(L3_2)
  L2_2 = SPAWN
  L2_2 = L2_2.player_position
  L3_2 = FreezeEntityPosition
  L4_2 = PlayerPedId
  L4_2 = L4_2()
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = SetEntityCoords
  L4_2 = PlayerPedId
  L4_2 = L4_2()
  L5_2 = L2_2.x
  L6_2 = L2_2.y
  L7_2 = L2_2.z
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = SetEntityHeading
  L4_2 = PlayerPedId
  L4_2 = L4_2()
  L5_2 = 180.0
  L3_2(L4_2, L5_2)
  L3_2 = DoScreenFadeOut
  L4_2 = 10
  L3_2(L4_2)
  L3_2 = Core
  L3_2 = L3_2.load
  L3_2()
  L3_2 = GetGameTimer
  L3_2 = L3_2()
  while true do
    L4_2 = HasCollisionLoadedAroundEntity
    L5_2 = PlayerPedId
    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2()
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    if L4_2 then
      break
    end
    L4_2 = GetGameTimer
    L4_2 = L4_2()
    L4_2 = L4_2 - L3_2
    L5_2 = 5000
    if not (L4_2 < L5_2) then
      break
    end
    L4_2 = RequestCollisionAtCoord
    L5_2 = L2_2.x
    L6_2 = L2_2.y
    L7_2 = L2_2.z
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = L1_1
    L5_2 = "Waiting for collision to load"
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
    L4_2 = Wait
    L5_2 = 0
    L4_2(L5_2)
  end
  L4_2 = CreateThread
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3
    L0_3 = SPAWN
    L0_3 = L0_3.time
    if L0_3 then
      L0_3 = L0_3.hour
    end
    if not L0_3 then
      L0_3 = 0
    end
    L1_3 = SPAWN
    L1_3 = L1_3.time
    if L1_3 then
      L1_3 = L1_3.minute
    end
    if not L1_3 then
      L1_3 = 0
    end
    L2_3 = SPAWN
    L2_3 = L2_3.time
    if L2_3 then
      L2_3 = L2_3.second
    end
    if not L2_3 then
      L2_3 = 0
    end
    L3_3 = SPAWN
    L3_3 = L3_3.weather
    if not L3_3 then
      L3_3 = "EXTRASUNNY"
    end
    L4_3 = L1_1
    L5_3 = "Starting weather thread"
    L6_3 = L0_3
    L7_3 = L1_3
    L8_3 = L2_3
    L9_3 = L3_3
    L4_3(L5_3, L6_3, L7_3, L8_3, L9_3)
    while true do
      L4_3 = THREADS_ACTIVE
      if not L4_3 then
        break
      end
      L4_3 = PlayerPedId
      L4_3 = L4_3()
      L5_3 = GetEntityCoords
      L6_3 = L4_3
      L5_3 = L5_3(L6_3)
      L6_3 = vec3
      L7_3 = L2_2.x
      L8_3 = L2_2.y
      L9_3 = L2_2.z
      L6_3 = L6_3(L7_3, L8_3, L9_3)
      L6_3 = L5_3 - L6_3
      L6_3 = #L6_3
      if L6_3 > 50.0 then
        L7_3 = SetEntityCoords
        L8_3 = L4_3
        L9_3 = L2_2.x
        L10_3 = L2_2.y
        L11_3 = L2_2.z
        L7_3(L8_3, L9_3, L10_3, L11_3)
        L7_3 = L1_1
        L8_3 = "Forcing to teleporting player to spawn"
        L9_3 = L6_3
        L7_3(L8_3, L9_3)
      end
      L7_3 = Config
      L7_3 = L7_3.WeatherSync
      if L7_3 then
        L7_3 = NetworkOverrideClockTime
        L8_3 = L0_3
        L9_3 = L1_3
        L10_3 = L2_3
        L7_3(L8_3, L9_3, L10_3)
        L7_3 = SPAWN
        L7_3 = L7_3.weather
        if "RAIN" ~= L7_3 then
          L7_3 = SPAWN
          L7_3 = L7_3.weather
          if "THUNDER" ~= L7_3 then
            L7_3 = SetRainLevel
            L8_3 = 0.0
            L7_3(L8_3)
        end
        else
          L7_3 = SetRainLevel
          L8_3 = 0.5
          L7_3(L8_3)
        end
        L7_3 = SetWeatherTypePersist
        L8_3 = L3_3
        L7_3(L8_3)
        L7_3 = SetWeatherTypeNow
        L8_3 = L3_3
        L7_3(L8_3)
        L7_3 = SetWeatherTypeNowPersist
        L8_3 = L3_3
        L7_3(L8_3)
      end
      L7_3 = ClearAreaOfPeds
      L8_3 = SPAWN
      L8_3 = L8_3.position
      L8_3 = L8_3.x
      L9_3 = SPAWN
      L9_3 = L9_3.position
      L9_3 = L9_3.y
      L10_3 = SPAWN
      L10_3 = L10_3.position
      L10_3 = L10_3.z
      L11_3 = 50.0
      L12_3 = 1
      L7_3(L8_3, L9_3, L10_3, L11_3, L12_3)
      L7_3 = ClearAreaOfVehicles
      L8_3 = SPAWN
      L8_3 = L8_3.position
      L8_3 = L8_3.x
      L9_3 = SPAWN
      L9_3 = L9_3.position
      L9_3 = L9_3.y
      L10_3 = SPAWN
      L10_3 = L10_3.position
      L10_3 = L10_3.z
      L11_3 = 50.0
      L12_3 = false
      L13_3 = false
      L14_3 = false
      L15_3 = false
      L16_3 = false
      L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
      L7_3 = Wait
      L8_3 = 10
      L7_3(L8_3)
    end
    while true do
      L4_3 = GetRainLevel
      L4_3 = L4_3()
      if not (L4_3 > 0.0) then
        break
      end
      L4_3 = Wait
      L5_3 = 50
      L4_3(L5_3)
      L4_3 = SetRainLevel
      L5_3 = 0.0
      L4_3(L5_3)
      L4_3 = L1_1
      L5_3 = "Rain level"
      L6_3 = GetRainLevel
      L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3 = L6_3()
      L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
    end
  end
  L4_2(L5_2)
  L4_2 = GetInteriorAtCoords
  L5_2 = L2_2.x
  L6_2 = L2_2.y
  L7_2 = L2_2.z
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  if 0 ~= L4_2 then
    L5_2 = L1_1
    L6_2 = "Founded interior"
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
    L5_2 = LoadInterior
    L6_2 = L4_2
    L5_2(L6_2)
    while true do
      L5_2 = IsInteriorReady
      L6_2 = L4_2
      L5_2 = L5_2(L6_2)
      if L5_2 then
        break
      end
      L5_2 = L1_1
      L6_2 = "Waiting for interior to load"
      L7_2 = L4_2
      L5_2(L6_2, L7_2)
      L5_2 = Wait
      L6_2 = 1000
      L5_2(L6_2)
    end
  end
  while true do
    L5_2 = UI_READY
    if L5_2 then
      break
    end
    L5_2 = L1_1
    L6_2 = "Waiting for UI to be ready"
    L5_2(L6_2)
    L5_2 = Wait
    L6_2 = 1000
    L5_2(L6_2)
  end
  L5_2 = startSpawn
  L5_2()
  while true do
    L5_2 = SPAWN
    L5_2 = L5_2.ready
    if L5_2 then
      break
    end
    L5_2 = L1_1
    L6_2 = "Waiting for spawn to be ready"
    L5_2(L6_2)
    L5_2 = Wait
    L6_2 = 1000
    L5_2(L6_2)
  end
  L5_2 = LoadModel
  L6_2 = "mp_m_freemode_01"
  L5_2(L6_2)
  L5_2 = GetEntityModel
  L6_2 = PlayerPedId
  L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2()
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L6_2 = maleModel
  if L5_2 ~= L6_2 then
    L6_2 = pcall
    function L7_2()
      local L0_3, L1_3, L2_3
      L0_3 = SetPlayerModel
      L1_3 = PlayerId
      L1_3 = L1_3()
      L2_3 = maleModel
      L0_3(L1_3, L2_3)
      L0_3 = SetPedDefaultComponentVariation
      L1_3 = PlayerPedId
      L1_3, L2_3 = L1_3()
      L0_3(L1_3, L2_3)
    end
    L6_2, L7_2 = L6_2(L7_2)
    if not L6_2 then
      L8_2 = L1_1
      L9_2 = "Failed to set player model"
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
  end
end
gameInitThread = L2_1
L2_1 = CreateThread
L3_1 = gameInitThread
L2_1(L3_1)
L2_1 = {}
IDLE_HANDLER_TABLE = L2_1
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L0_2 = false
  L1_2 = SELECTED_CHARACTER_INDEX
  while true do
    L2_2 = THREADS_ACTIVE
    if not L2_2 then
      break
    end
    L2_2 = Wait
    L3_2 = 0
    L2_2(L3_2)
    L2_2 = pairs
    L3_2 = SPAWNED_CHARACTERS
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L8_2 = false
      L9_2 = IDLE_HANDLER_TABLE
      L10_2 = L7_2.ped
      L9_2 = L9_2[L10_2]
      L10_2 = L7_2.seat
      L11_2 = L7_2.character
      L11_2 = L11_2.gender
      if not L11_2 then
        L11_2 = "male"
      end
      L12_2 = L10_2.anim
      L12_2 = L12_2[L11_2]
      if L12_2 then
        L13_2 = L12_2.idles
        L13_2 = #L13_2
        if 0 ~= L13_2 then
          if L9_2 then
            L13_2 = L9_2.next_idle
            if L13_2 then
              L13_2 = GetGameTimer
              L13_2 = L13_2()
              L14_2 = L9_2.next_idle
              if L13_2 > L14_2 then
                L13_2 = CreateThread
                function L14_2()
                  local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
                  L0_3 = L9_2.anim
                  L1_3 = PlayAnim
                  L2_3 = L7_2.ped
                  L3_3 = L12_2.dict
                  L4_3 = L0_3
                  L5_3 = 8.0
                  L6_3 = 8.0
                  L7_3 = -1
                  L8_3 = 2
                  L9_3 = 0
                  L10_3 = 0
                  L11_3 = 0
                  L12_3 = 0
                  L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
                  L1_3 = GetAnimDuration
                  L2_3 = L12_2.dict
                  L3_3 = L0_3
                  L1_3 = L1_3(L2_3, L3_3)
                  L1_3 = L1_3 * 1000
                  L2_3 = Wait
                  L3_3 = L1_3
                  L2_3(L3_3)
                  L2_3 = PlayAnim
                  L3_3 = L7_2.ped
                  L4_3 = L12_2.dict
                  L5_3 = L12_2.anim
                  L6_3 = 8.0
                  L7_3 = 8.0
                  L8_3 = -1
                  L9_3 = L12_2.flags
                  L10_3 = 0
                  L11_3 = 0
                  L12_3 = 0
                  L13_3 = 0
                  L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
                end
                L13_2(L14_2)
                L8_2 = true
              end
          end
          else
            L8_2 = true
          end
          if L8_2 then
            L13_2 = IDLE_HANDLER_TABLE
            L14_2 = L7_2.ped
            L15_2 = {}
            L16_2 = GetGameTimer
            L16_2 = L16_2()
            L17_2 = math
            L17_2 = L17_2.random
            L18_2 = 10000
            L19_2 = 25000
            L17_2 = L17_2(L18_2, L19_2)
            L16_2 = L16_2 + L17_2
            L15_2.next_idle = L16_2
            L16_2 = L12_2.idles
            L17_2 = math
            L17_2 = L17_2.random
            L18_2 = 1
            L19_2 = L12_2.idles
            L19_2 = #L19_2
            L17_2 = L17_2(L18_2, L19_2)
            L16_2 = L16_2[L17_2]
            L15_2.anim = L16_2
            L13_2[L14_2] = L15_2
          end
        end
      end
      L13_2 = SELECTED_CHARACTER_INDEX
      if L13_2 == L6_2 then
        L13_2 = SELECTED_CHARACTER_INDEX
        if L1_2 ~= L13_2 then
          L0_2 = false
        end
        L13_2 = GetCamCoord
        L14_2 = SPAWN
        L14_2 = L14_2.cam
        L13_2 = L13_2(L14_2)
        L14_2 = TaskLookAtCoord
        L15_2 = L7_2.ped
        L16_2 = L13_2
        L17_2 = 1000
        L18_2 = 2048
        L19_2 = 3
        L14_2(L15_2, L16_2, L17_2, L18_2, L19_2)
      end
    end
    L1_2 = SELECTED_CHARACTER_INDEX
    L2_2 = SPAWN
    L2_2 = L2_2.ready
    if L2_2 then
      L2_2 = SetUseHiDof
      L2_2()
    end
  end
end
IdleHandlerThread = L2_1
L2_1 = CreateThread
L3_1 = IdleHandlerThread
L2_1(L3_1)
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L0_2 = {}
  L1_2 = pairs
  L2_2 = SPAWN
  L2_2 = L2_2.models
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = GetHashKey
    L8_2 = L6_2.model
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L8_2 = LoadModel
      L9_2 = L7_2
      L8_2 = L8_2(L9_2)
      if L8_2 then
        L8_2 = vector3
        L9_2 = 0.0
        L10_2 = 0.0
        L11_2 = 0.0
        L8_2 = L8_2(L9_2, L10_2, L11_2)
        L9_2 = L6_2.pos
        if L9_2 then
          L8_2 = L6_2.pos
        else
          L9_2 = L6_2.offset
          if L9_2 then
            L9_2 = L6_2.offset
            L10_2 = SPAWN
            L10_2 = L10_2.position
            L8_2 = L9_2 + L10_2
          end
        end
        L9_2 = CreateObjectNoOffset
        L10_2 = L7_2
        L11_2 = L8_2.x
        L12_2 = L8_2.y
        L13_2 = L8_2.z
        L14_2 = true
        L15_2 = false
        L16_2 = false
        L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
        L10_2 = SPAWN
        L10_2 = L10_2.position
        L10_2 = L10_2 - L8_2
        L11_2 = SetEntityRotation
        L12_2 = L9_2
        L13_2 = L6_2.rot
        L13_2 = L13_2.x
        L14_2 = L6_2.rot
        L14_2 = L14_2.y
        L15_2 = L6_2.rot
        L15_2 = L15_2.z
        L16_2 = 2
        L17_2 = true
        L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
        L11_2 = FreezeEntityPosition
        L12_2 = L9_2
        L13_2 = true
        L11_2(L12_2, L13_2)
        L11_2 = L6_2.dui
        if L11_2 then
          L12_2 = L11_2.width
          if not L12_2 then
            L12_2 = 512
          end
          L13_2 = L11_2.height
          if not L13_2 then
            L13_2 = 512
          end
          L14_2 = L11_2.url
          if nil ~= L14_2 then
            L15_2 = L11_2.url
            L16_2 = getDui
            L17_2 = L15_2
            L18_2 = L12_2
            L19_2 = L13_2
            L16_2 = L16_2(L17_2, L18_2, L19_2)
            L17_2 = AddReplaceTexture
            L18_2 = L11_2.dict
            L19_2 = L11_2.texture
            L20_2 = L16_2.dictionary
            L21_2 = L16_2.texture
            L17_2(L18_2, L19_2, L20_2, L21_2)
            L17_2 = table
            L17_2 = L17_2.insert
            L18_2 = createdDuis
            L19_2 = L16_2
            L17_2(L18_2, L19_2)
          end
        end
        L12_2 = table
        L12_2 = L12_2.insert
        L13_2 = SPAWNED_MODELS
        L14_2 = L9_2
        L12_2(L13_2, L14_2)
      end
    end
  end
  return L0_2
end
spawnModels = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L1_2 = ipairs
  L2_2 = SPAWN
  L2_2 = L2_2.seats
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = A0_2[L5_2]
    if L7_2 then
      L8_2 = L6_2
      L9_2 = maleModel
      L10_2 = L7_2.model
      if L10_2 then
        L10_2 = GetHashKey
        L11_2 = L7_2.model
        L10_2 = L10_2(L11_2)
        L9_2 = L10_2
      end
      L10_2 = L7_2.isPlaceholder
      if not L10_2 then
        L10_2 = Core
        L10_2 = L10_2.getSkin
        L11_2 = L7_2.charId
        L10_2, L11_2 = L10_2(L11_2)
        if L10_2 then
          L9_2 = L10_2
        end
        if L11_2 then
          L7_2.skin = L11_2
        end
      end
      if L9_2 then
        L10_2 = LoadModel
        L11_2 = L9_2
        L10_2 = L10_2(L11_2)
        if L10_2 then
          L10_2 = L8_2.anim
          L11_2 = L7_2.gender
          if not L11_2 then
            L11_2 = "male"
          end
          L10_2 = L10_2[L11_2]
          L11_2 = vector3
          L12_2 = 0.0
          L13_2 = 0.0
          L14_2 = 0.0
          L11_2 = L11_2(L12_2, L13_2, L14_2)
          L12_2 = L8_2.pos
          if L12_2 then
            L11_2 = L8_2.pos
          else
            L12_2 = L8_2.offset
            if L12_2 then
              L12_2 = L8_2.offset
              L13_2 = SPAWN
              L13_2 = L13_2.position
              L11_2 = L12_2 + L13_2
            end
          end
          if L10_2 then
            L12_2 = L10_2.offset
            if L12_2 then
              L12_2 = L10_2.offset
              L11_2 = L11_2 + L12_2
            end
          end
          L12_2 = pcall
          function L13_2()
            local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
            L0_3 = CreatePed
            L1_3 = 3
            L2_3 = L9_2
            L3_3 = L11_2.x
            L4_3 = L11_2.y
            L5_3 = L11_2.z
            L6_3 = L8_2.heading
            L7_3 = false
            L8_3 = false
            L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
            L1_3 = GetGameTimer
            L1_3 = L1_3()
            while true do
              L2_3 = DoesEntityExist
              L3_3 = L0_3
              L2_3 = L2_3(L3_3)
              if L2_3 then
                break
              end
              L2_3 = GetGameTimer
              L2_3 = L2_3()
              L2_3 = L2_3 - L1_3
              L3_3 = 1000
              if not (L2_3 < L3_3) then
                break
              end
              L2_3 = Wait
              L3_3 = 0
              L2_3(L3_3)
            end
            L2_3 = SetEntityCoords
            L3_3 = L0_3
            L4_3 = L11_2.x
            L5_3 = L11_2.y
            L6_3 = L11_2.z
            L2_3(L3_3, L4_3, L5_3, L6_3)
            L2_3 = SetPedDefaultComponentVariation
            L3_3 = L0_3
            L2_3(L3_3)
            L2_3 = FreezeEntityPosition
            L3_3 = L0_3
            L4_3 = true
            L2_3(L3_3, L4_3)
            L2_3 = SetEntityInvincible
            L3_3 = L0_3
            L4_3 = true
            L2_3(L3_3, L4_3)
            L2_3 = SetBlockingOfNonTemporaryEvents
            L3_3 = L0_3
            L4_3 = true
            L2_3(L3_3, L4_3)
            L2_3 = SetEntityHeading
            L3_3 = L0_3
            L4_3 = L8_2.heading
            L2_3(L3_3, L4_3)
            L2_3 = L7_2.clothing
            if not L2_3 then
              L2_3 = characterBlend
              L3_3 = L0_3
              L2_3(L3_3)
            end
            L2_3 = L7_2.isPlaceholder
            if L2_3 then
              L2_3 = SetEntityAlpha
              L3_3 = L0_3
              L4_3 = 100
              L5_3 = false
              L2_3(L3_3, L4_3, L5_3)
            else
              L2_3 = L7_2.skin
              if L2_3 then
                L2_3 = next
                L3_3 = L7_2.skin
                L2_3 = L2_3(L3_3)
                if L2_3 then
                  L2_3 = OnClothing
                  L3_3 = L0_3
                  L4_3 = L7_2.skin
                  L5_3 = L5_2
                  L2_3(L3_3, L4_3, L5_3)
                end
              end
            end
            L2_3 = GetGameTimer
            L2_3 = L2_3()
            while true do
              L3_3 = HaveAllStreamingRequestsCompleted
              L4_3 = L0_3
              L3_3 = L3_3(L4_3)
              if L3_3 then
                break
              end
              L3_3 = L1_1
              L4_3 = "Waiting for streaming requests to complete"
              L5_3 = L2_3
              L6_3 = L0_3
              L3_3(L4_3, L5_3, L6_3)
              L3_3 = Wait
              L4_3 = 0
              L3_3(L4_3)
            end
            L3_3 = L10_2
            if L3_3 then
              L3_3 = PlayAnim
              L4_3 = L0_3
              L5_3 = L10_2.dict
              L6_3 = L10_2.anim
              L7_3 = 8.0
              L8_3 = 8.0
              L9_3 = -1
              L10_3 = L10_2.flags
              L11_3 = 0
              L12_3 = 0
              L13_3 = 0
              L14_3 = 0
              L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
            end
            L3_3 = table
            L3_3 = L3_3.insert
            L4_3 = SPAWNED_CHARACTERS
            L5_3 = {}
            L5_3.ped = L0_3
            L6_3 = L8_2
            L5_3.seat = L6_3
            L6_3 = L7_2
            L5_3.character = L6_3
            L3_3(L4_3, L5_3)
            L3_3 = nil
            L4_3 = CHARACTER_CAMERAS
            L5_3 = L7_2.cid
            L4_3 = L4_3[L5_3]
            if not L4_3 then
              L4_3 = CHARACTER_CAMERAS
              L5_3 = L7_2.cid
              L6_3 = CreateCam
              L7_3 = "DEFAULT_SCRIPTED_CAMERA"
              L8_3 = false
              L6_3 = L6_3(L7_3, L8_3)
              L4_3[L5_3] = L6_3
              L4_3 = CHARACTER_CAMERAS
              L5_3 = L7_2.cid
              L3_3 = L4_3[L5_3]
              L4_3 = SetCamUseShallowDofMode
              L5_3 = L3_3
              L6_3 = true
              L4_3(L5_3, L6_3)
              L4_3 = SetCamNearDof
              L5_3 = L3_3
              L6_3 = 0.7
              L4_3(L5_3, L6_3)
              L4_3 = SetCamFarDof
              L5_3 = L3_3
              L6_3 = 2.0
              L4_3(L5_3, L6_3)
              L4_3 = SetCamDofStrength
              L5_3 = L3_3
              L6_3 = 0.2
              L4_3(L5_3, L6_3)
            else
              L4_3 = CHARACTER_CAMERAS
              L5_3 = L7_2.cid
              L3_3 = L4_3[L5_3]
            end
            L4_3 = SPAWN
            L4_3 = L4_3.position
            L5_3 = CAMERA
            L6_3 = CAMERA
            L6_3 = #L6_3
            L5_3 = L5_3[L6_3]
            L5_3 = L5_3.to
            L5_3 = L5_3.pos
            L4_3 = L4_3 + L5_3
            L5_3 = SetCamCoord
            L6_3 = L3_3
            L7_3 = L4_3.x
            L8_3 = L4_3.y
            L9_3 = L4_3.z
            L5_3(L6_3, L7_3, L8_3, L9_3)
            L5_3 = GetPedBoneCoords
            L6_3 = L0_3
            L7_3 = 31086
            L8_3 = 0.0
            L9_3 = 0.0
            L10_3 = 0.0
            L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3)
            L6_3 = PointCamAtCoord
            L7_3 = L3_3
            L8_3 = L5_3.x
            L9_3 = L5_3.y
            L10_3 = L5_3.z
            L6_3(L7_3, L8_3, L9_3, L10_3)
            L6_3 = SetCamFov
            L7_3 = L3_3
            L8_3 = 25.0
            L6_3(L7_3, L8_3)
          end
          L12_2, L13_2 = L12_2(L13_2)
          if not L12_2 then
            L14_2 = L1_1
            L15_2 = "Failed to create character"
            L16_2 = L5_2
            L17_2 = L13_2
            L14_2(L15_2, L16_2, L17_2)
          end
        end
      end
    end
  end
  L1_2 = Wait
  L2_2 = 100
  L1_2(L2_2)
end
spawnCharacters = L2_1
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = RPC
  L0_2 = L0_2.execute
  L1_2 = "cylex_multichar:getPlayerCharacters"
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  if not L0_2 then
    L3_2 = {}
    return L3_2
  end
  if nil ~= L2_2 then
    L3_2 = SendNUIMessage
    L4_2 = {}
    L4_2.type = "disableDeleteButton"
    L4_2.active = L2_2
    L3_2(L4_2)
  end
  L3_2 = 0
  L4_2 = pairs
  L5_2 = L0_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    if L9_2 then
      L3_2 = L3_2 + 1
    end
  end
  if L1_2 <= L3_2 then
    return L0_2
  end
  L4_2 = 1
  L5_2 = SPAWN
  L5_2 = L5_2.seats
  L5_2 = #L5_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L0_2[L7_2]
    if not L8_2 and L1_2 >= L7_2 then
      L8_2 = {}
      L8_2.charId = L7_2
      L8_2.cid = L7_2
      L8_2.isPlaceholder = true
      L8_2.model = "mp_m_freemode_01"
      L0_2[L7_2] = L8_2
    end
  end
  return L0_2
end
getPlayerCharacters = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = pairs
  L2_2 = SPAWNED_CHARACTERS
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = DeleteEntity
    L8_2 = L6_2.ped
    L7_2(L8_2)
  end
  L1_2 = {}
  SPAWNED_CHARACTERS = L1_2
  L1_2 = getPlayerCharacters
  L1_2 = L1_2()
  L2_2 = spawnCharacters
  L3_2 = L1_2
  L2_2(L3_2)
  L2_2 = DoScreenFadeIn
  L3_2 = 5000
  L2_2(L3_2)
  if nil ~= A0_2 then
    L2_2 = focusOnSelectedCharacter
    L3_2 = #L1_2
    if 0 == L3_2 then
      L3_2 = 1
      if L3_2 then
        goto lbl_32
      end
    end
    L3_2 = #L1_2
    ::lbl_32::
    L2_2(L3_2)
  end
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.type = "characters"
  L3_2.active = true
  L3_2.characters = L1_2
  L2_2(L3_2)
end
reloadCharacters = L2_1
L2_1 = nil
L3_1 = false
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L1_2 = L3_1
  if L1_2 then
    return
  end
  SELECTED_CHARACTER_INDEX = A0_2
  L1_2 = SPAWNED_CHARACTERS
  L2_2 = SELECTED_CHARACTER_INDEX
  L1_2 = L1_2[L2_2]
  SELECTED_CHARACTER = L1_2
  L1_2 = SELECTED_CHARACTER
  if not L1_2 then
    return
  end
  L1_2 = true
  L3_1 = L1_2
  L1_2 = SPAWN
  L1_2 = L1_2.cam
  L2_2 = GetEntityCoords
  L3_2 = SELECTED_CHARACTER
  L3_2 = L3_2.ped
  L2_2 = L2_2(L3_2)
  L3_2 = GetCamCoord
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  L4_2 = GetCamFov
  L5_2 = L1_2
  L4_2 = L4_2(L5_2)
  L5_2 = GetCamRot
  L6_2 = L1_2
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2.z
  L6_2 = 750
  L7_2 = 30.0
  L8_2 = GetHeadingFromVector_2d
  L9_2 = L2_2.x
  L10_2 = L3_2.x
  L9_2 = L9_2 - L10_2
  L10_2 = L2_2.y
  L11_2 = L3_2.y
  L10_2 = L10_2 - L11_2
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = SELECTED_CHARACTER
  L9_2 = L9_2.character
  L9_2 = L9_2.cid
  L10_2 = SendNUIMessage
  L11_2 = {}
  L11_2.type = "character:selected"
  L12_2 = SELECTED_CHARACTER
  L12_2 = L12_2.character
  L11_2.data = L12_2
  L10_2(L11_2)
  if L5_2 < 0 then
    L5_2 = L5_2 + 360
  end
  L10_2 = L2_1
  if nil == L10_2 then
    L2_1 = L1_2
  end
  L10_2 = GetPedBoneCoords
  L11_2 = SELECTED_CHARACTER
  L11_2 = L11_2.ped
  L12_2 = 31086
  L13_2 = 0.0
  L14_2 = 0.0
  L15_2 = 0.0
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
  L11_2 = PointCamAtCoord
  L12_2 = CHARACTER_CAMERAS
  L12_2 = L12_2[L9_2]
  L13_2 = L10_2.x
  L14_2 = L10_2.y
  L15_2 = L10_2.z
  L11_2(L12_2, L13_2, L14_2, L15_2)
  L11_2 = CHARACTER_CAMERAS
  L11_2 = L11_2[L9_2]
  L12_2 = L2_1
  if L11_2 ~= L12_2 then
    L12_2 = SetCamActiveWithInterp
    L13_2 = L11_2
    L14_2 = L2_1
    L15_2 = L6_2
    L16_2 = true
    L17_2 = true
    L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
  else
    L12_2 = SetCamActive
    L13_2 = L11_2
    L14_2 = true
    L12_2(L13_2, L14_2)
  end
  L2_1 = L11_2
  L12_2 = GetGameTimer
  L12_2 = L12_2()
  while true do
    L13_2 = IsCamInterpolating
    L14_2 = L2_1
    L13_2 = L13_2(L14_2)
    if not L13_2 then
      break
    end
    L13_2 = GetGameTimer
    L13_2 = L13_2()
    L13_2 = L13_2 - L12_2
    if not (L6_2 > L13_2) then
      break
    end
    L13_2 = Wait
    L14_2 = 0
    L13_2(L14_2)
  end
  L13_2 = false
  L3_1 = L13_2
end
focusOnSelectedCharacter = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A1_2 - A0_2
  L3_2 = L3_2 * A2_2
  L3_2 = A0_2 + L3_2
  return L3_2
end
Lerp = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2.x
  L3_2 = A1_2.x
  L2_2 = L2_2 - L3_2
  L3_2 = A0_2.y
  L4_2 = A1_2.y
  L3_2 = L3_2 - L4_2
  L4_2 = A0_2.z
  L5_2 = A1_2.z
  L4_2 = L4_2 - L5_2
  L5_2 = GetHeadingFromVector_2d
  L6_2 = L2_2
  L7_2 = L3_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = GetPitchFromVector
  L7_2 = L2_2
  L8_2 = L3_2
  L9_2 = L4_2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = vector3
  L8_2 = L5_2
  L9_2 = L6_2
  L10_2 = 0
  return L7_2(L8_2, L9_2, L10_2)
end
PositionToRotation = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = math
  L3_2 = L3_2.sqrt
  L4_2 = A0_2 * A0_2
  L5_2 = A1_2 * A1_2
  L4_2 = L4_2 + L5_2
  L5_2 = A2_2 * A2_2
  L4_2 = L4_2 + L5_2
  L3_2 = L3_2(L4_2)
  L4_2 = math
  L4_2 = L4_2.asin
  L5_2 = A2_2 / L3_2
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2 * 57.295779513082
  return L4_2
end
GetPitchFromVector = L4_1
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.type = "disableDeleteButton"
  L2_2 = Config
  L2_2 = L2_2.DisableCharDelete
  L1_2.active = L2_2
  L0_2(L1_2)
  L0_2 = spawnModels
  L0_2()
  L0_2 = getPlayerCharacters
  L0_2 = L0_2()
  L1_2 = L1_1
  L2_2 = "Characters"
  L3_2 = json
  L3_2 = L3_2.encode
  L4_2 = L0_2
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L1_2 = DestroyAllCams
  L2_2 = true
  L1_2(L2_2)
  L1_2 = spawnCharacters
  L2_2 = L0_2
  L1_2(L2_2)
  SCRIPT_IS_LOADED = true
  L1_2 = SetTimeout
  L2_2 = 500
  function L3_2()
    local L0_3, L1_3
    L0_3 = DoScreenFadeIn
    L1_3 = 2000
    L0_3(L1_3)
    L0_3 = SendNUIMessage
    L1_3 = {}
    L1_3.type = "setBlackscreen"
    L1_3.active = false
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2)
  L1_2 = pairs
  L2_2 = CAMERA
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L1_1
    L8_2 = "Playing camera stage"
    L9_2 = L5_2
    L10_2 = json
    L10_2 = L10_2.encode
    L11_2 = L6_2
    L10_2, L11_2 = L10_2(L11_2)
    L7_2(L8_2, L9_2, L10_2, L11_2)
    L7_2 = PlayCameraStage
    L8_2 = L6_2
    L7_2(L8_2)
  end
  L1_2 = SPAWN
  L1_2 = L1_2.position
  L2_2 = CAMERA
  L3_2 = CAMERA
  L3_2 = #L3_2
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.to
  L2_2 = L2_2.pos
  L1_2 = L1_2 + L2_2
  L2_2 = CAMERA
  L3_2 = CAMERA
  L3_2 = #L3_2
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.to
  L2_2 = L2_2.rot
  L3_2 = SPAWN
  L4_2 = CreateCam
  L5_2 = "DEFAULT_SCRIPTED_CAMERA"
  L6_2 = true
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.cam = L4_2
  L3_2 = SetCamUseShallowDofMode
  L4_2 = SPAWN
  L4_2 = L4_2.cam
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = SetCamNearDof
  L4_2 = SPAWN
  L4_2 = L4_2.cam
  L5_2 = 0.7
  L3_2(L4_2, L5_2)
  L3_2 = SetCamFarDof
  L4_2 = SPAWN
  L4_2 = L4_2.cam
  L5_2 = 2.0
  L3_2(L4_2, L5_2)
  L3_2 = SetCamDofStrength
  L4_2 = SPAWN
  L4_2 = L4_2.cam
  L5_2 = 0.2
  L3_2(L4_2, L5_2)
  L3_2 = SetCamCoord
  L4_2 = SPAWN
  L4_2 = L4_2.cam
  L5_2 = L1_2.x
  L6_2 = L1_2.y
  L7_2 = L1_2.z
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = SetCamRot
  L4_2 = SPAWN
  L4_2 = L4_2.cam
  L5_2 = L2_2.x
  L6_2 = L2_2.y
  L7_2 = L2_2.z
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = SetCamActive
  L4_2 = SPAWN
  L4_2 = L4_2.cam
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = RenderScriptCams
  L4_2 = true
  L5_2 = false
  L6_2 = 0
  L7_2 = true
  L8_2 = true
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = SendNUIMessage
  L4_2 = {}
  L4_2.type = "display"
  L4_2.active = true
  L3_2(L4_2)
  L3_2 = SendNUIMessage
  L4_2 = {}
  L4_2.type = "characters"
  L4_2.active = true
  L4_2.characters = L0_2
  L3_2(L4_2)
  L3_2 = SPAWN
  L3_2.ready = true
  L3_2 = focusOnSelectedCharacter
  L4_2 = 1
  L3_2(L4_2)
  L3_2 = SetNuiFocus
  L4_2 = true
  L5_2 = true
  L3_2(L4_2, L5_2)
end
startSpawn = L4_1
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = pairs
  L1_2 = SPAWNED_MODELS
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = DeleteEntity
    L7_2 = L5_2
    L6_2(L7_2)
  end
  L0_2 = {}
  SPAWNED_MODELS = L0_2
  L0_2 = pairs
  L1_2 = SPAWNED_CHARACTERS
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = DeleteEntity
    L7_2 = L5_2.ped
    L6_2(L7_2)
  end
  L0_2 = {}
  SPAWNED_CHARACTERS = L0_2
  L0_2 = RemoveReplaceTexture
  L1_2 = "prop_monitor_w_large"
  L2_2 = "script_rt_tvscreen"
  L0_2(L1_2, L2_2)
  L0_2 = pairs
  L1_2 = createdDuis
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = releaseDui
    L7_2 = L5_2.id
    L6_2(L7_2)
  end
  L0_2 = {}
  createdDuis = L0_2
  L0_2 = RenderScriptCams
  L1_2 = false
  L2_2 = false
  L3_2 = 0
  L4_2 = true
  L5_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
  L0_2 = DestroyCam
  L1_2 = SPAWN
  L1_2 = L1_2.cam
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = DestroyCam
  L1_2 = CREATOR
  L1_2 = L1_2.cam
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = pairs
  L1_2 = CAMERA
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = DestroyCam
    L7_2 = L5_2.cam
    L8_2 = false
    L6_2(L7_2, L8_2)
  end
  L0_2 = SPAWN
  L0_2.ready = false
  L0_2 = SetNuiFocus
  L1_2 = false
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.type = "display"
  L1_2.active = false
  L0_2(L1_2)
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.type = "displaySpawn"
  L1_2.active = false
  L0_2(L1_2)
  THREADS_ACTIVE = false
end
stopSpawn = L4_1
L4_1 = AddEventHandler
L5_1 = "onResourceStop"
function L6_1(A0_2)
  local L1_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 == L1_2 then
    L1_2 = stopSpawn
    L1_2()
  end
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNUICallback
L5_1 = "ready"
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  UI_READY = true
  L2_2 = A1_2
  L3_2 = {}
  L4_2 = Locale
  L3_2.locale = L4_2
  L4_2 = Config
  L3_2.config = L4_2
  L2_2(L3_2)
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNUICallback
L5_1 = "character:select"
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
  L2_2 = L3_1
  if L2_2 then
    return
  end
  L2_2 = A0_2.next
  L3_2 = SELECTED_CHARACTER_INDEX
  if not L3_2 then
    SELECTED_CHARACTER_INDEX = 1
  end
  if L2_2 then
    L3_2 = SELECTED_CHARACTER_INDEX
    L3_2 = L3_2 + 1
    SELECTED_CHARACTER_INDEX = L3_2
    L3_2 = SELECTED_CHARACTER_INDEX
    L4_2 = SPAWNED_CHARACTERS
    L4_2 = #L4_2
    if L3_2 > L4_2 then
      SELECTED_CHARACTER_INDEX = 1
    end
  else
    L3_2 = SELECTED_CHARACTER_INDEX
    L3_2 = L3_2 - 1
    SELECTED_CHARACTER_INDEX = L3_2
    L3_2 = SELECTED_CHARACTER_INDEX
    if L3_2 < 1 then
      L3_2 = SPAWNED_CHARACTERS
      L3_2 = #L3_2
      SELECTED_CHARACTER_INDEX = L3_2
    end
  end
  L3_2 = SetTimeout
  L4_2 = 200
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = PlaySound
    L1_3 = -1
    L2_3 = "Cycle_Item"
    L3_3 = "DLC_Dmod_Prop_Editor_Sounds"
    L4_3 = 0
    L5_3 = 0
    L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
  end
  L3_2(L4_2, L5_2)
  L3_2 = focusOnSelectedCharacter
  L4_2 = SELECTED_CHARACTER_INDEX
  L3_2(L4_2)
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNUICallback
L5_1 = "character:create"
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
  L2_2 = DoScreenFadeOut
  L3_2 = 2000
  L2_2(L3_2)
  L2_2 = startCreator
  L2_2()
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNUICallback
L5_1 = "character:delete"
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = SELECTED_CHARACTER
  if L2_2 then
    L2_2 = SELECTED_CHARACTER
    L2_2 = L2_2.character
    if L2_2 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L2_2 = RPC
  L2_2 = L2_2.execute
  L3_2 = "cylex_multichar:deleteCharacter"
  L4_2 = SELECTED_CHARACTER
  L4_2 = L4_2.character
  L4_2 = L4_2.charId
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L3_2 = reloadCharacters
    L4_2 = true
    L3_2(L4_2)
    L3_2 = A1_2
    L4_2 = "ok"
    L3_2(L4_2)
    return
  end
  L3_2 = A1_2
  L4_2 = "error"
  L3_2(L4_2)
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNUICallback
L5_1 = "character:start"
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
  L2_2 = PlaySound
  L3_2 = -1
  L4_2 = "Place_Prop_success"
  L5_2 = "DLC_Dmod_Prop_Editor_Sounds"
  L6_2 = 0
  L7_2 = 0
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = RPC
  L2_2 = L2_2.execute
  L3_2 = "cylex_multichar:playCharacter"
  L4_2 = SELECTED_CHARACTER
  L4_2 = L4_2.character
  L5_2 = false
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  if L2_2 then
    L3_2 = stopSpawn
    L3_2()
    L3_2 = Core
    L3_2 = L3_2.spawn
    L4_2 = SELECTED_CHARACTER
    L4_2 = L4_2.character
    L3_2(L4_2)
  else
    L3_2 = L1_1
    L4_2 = "Failed to start character"
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNetEvent
L5_1 = "cylex_multichar:logout"
function L6_1()
  local L0_2, L1_2
  L0_2 = L1_1
  L1_2 = "Logging out"
  L0_2(L1_2)
  L0_2 = stopSpawn
  L0_2()
  L0_2 = SPAWN_LOCATIONS
  L1_2 = SELECTED_LOCATION
  L0_2 = L0_2[L1_2]
  SPAWN = L0_2
  L0_2 = SPAWN
  L0_2 = L0_2.camera
  CAMERA = L0_2
  L0_2 = SPAWN
  L0_2 = L0_2.creator
  CREATOR = L0_2
  L0_2 = SPAWN
  L0_2.cam = nil
  GAME_INITIALIZED = false
  SELECTED_CHARACTER = nil
  SELECTED_CHARACTER_INDEX = 1
  L0_2 = {}
  MUGSHOTS = L0_2
  THREADS_ACTIVE = true
  L0_2 = {}
  CHARACTER_CAMERAS = L0_2
  L0_2 = {}
  createdDuis = L0_2
  L0_2 = CreateThread
  L1_2 = gameInitThread
  L0_2(L1_2)
end
L4_1(L5_1, L6_1)
