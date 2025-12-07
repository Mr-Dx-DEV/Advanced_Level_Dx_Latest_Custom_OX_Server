local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1
do return end
L0_1 = {}
MissionProps = L0_1
L0_1 = nil
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = tonumber
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = GetHashKey
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    A0_2 = L1_2
  end
  L1_2 = RequestModel
  L2_2 = A0_2
  L1_2(L2_2)
  while true do
    L1_2 = HasModelLoaded
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      break
    end
    L1_2 = Wait
    L2_2 = 0
    L1_2(L2_2)
  end
end
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = HasAnimDictLoaded
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L1_2 = RequestAnimDict
  L2_2 = A0_2
  L1_2(L2_2)
  while true do
    L1_2 = HasAnimDictLoaded
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      break
    end
    L1_2 = Wait
    L2_2 = 0
    L1_2(L2_2)
  end
end
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = RequestScaleformMovie
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = GetGameTimer
  L2_2 = L2_2()
  L2_2 = L2_2 + 3000
  while true do
    L3_2 = HasScaleformMovieLoaded
    L4_2 = L1_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      break
    end
    L3_2 = GetGameTimer
    L3_2 = L3_2()
    if not (L2_2 > L3_2) then
      break
    end
    L3_2 = Wait
    L4_2 = 33
    L3_2(L4_2)
  end
  return L1_2
end
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2
  L6_2 = Citizen
  L6_2 = L6_2.CreateThread
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3
    L0_3 = L3_1
    L1_3 = "HEIST_CELEBRATION"
    L0_3 = L0_3(L1_3)
    L1_3 = L3_1
    L2_3 = "HEIST_CELEBRATION_BG"
    L1_3 = L1_3(L2_3)
    L2_3 = L3_1
    L3_3 = "HEIST_CELEBRATION_FG"
    L2_3 = L2_3(L3_3)
    L3_3 = {}
    L4_3 = L0_3
    L5_3 = L1_3
    L6_3 = L2_3
    L3_3[1] = L4_3
    L3_3[2] = L5_3
    L3_3[3] = L6_3
    L4_3 = A3_2
    if not L4_3 then
      L4_3 = "HUD_COLOUR_PAUSE_BG"
      A3_2 = L4_3
    end
    L4_3 = pairs
    L5_3 = L3_3
    L4_3, L5_3, L6_3, L7_3 = L4_3(L5_3)
    for L8_3, L9_3 in L4_3, L5_3, L6_3, L7_3 do
      L10_3 = CallScaleformFunction
      L11_3 = L9_3
      L12_3 = false
      L13_3 = "SET_PAUSE_DURATION"
      L14_3 = 10
      L10_3(L11_3, L12_3, L13_3, L14_3)
      L10_3 = CallScaleformFunction
      L11_3 = L9_3
      L12_3 = false
      L13_3 = "CREATE_STAT_WALL"
      L14_3 = 1
      L15_3 = A3_2
      L16_3 = 1
      L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
      L10_3 = CallScaleformFunction
      L11_3 = L9_3
      L12_3 = false
      L13_3 = "ADD_BACKGROUND_TO_WALL"
      L14_3 = 1
      L15_3 = 50
      L16_3 = 1
      L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
      L10_3 = CallScaleformFunction
      L11_3 = L9_3
      L12_3 = false
      L13_3 = "ADD_MISSION_RESULT_TO_WALL"
      L14_3 = 1
      L15_3 = A0_2
      L16_3 = A1_2
      L17_3 = A2_2
      L18_3 = true
      L19_3 = true
      L20_3 = true
      L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3)
      L10_3 = CallScaleformFunction
      L11_3 = L9_3
      L12_3 = false
      L13_3 = "SHOW_STAT_WALL"
      L14_3 = 1
      L10_3(L11_3, L12_3, L13_3, L14_3)
      L10_3 = CallScaleformFunction
      L11_3 = L9_3
      L12_3 = false
      L13_3 = "createSequence"
      L14_3 = 1
      L15_3 = 1
      L16_3 = 1
      L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
      L10_3 = CallScaleformFunction
      L11_3 = L9_3
      L12_3 = false
      L13_3 = "PAUSE"
      L14_3 = 1
      L15_3 = 1000
      L10_3(L11_3, L12_3, L13_3, L14_3, L15_3)
      L10_3 = A4_2
      if L10_3 then
        L10_3 = CallScaleformFunction
        L11_3 = L9_3
        L12_3 = false
        L13_3 = "CREATE_INCREMENTAL_CASH_ANIMATION"
        L14_3 = 1
        L15_3 = 20
        L10_3(L11_3, L12_3, L13_3, L14_3, L15_3)
        L10_3 = CallScaleformFunction
        L11_3 = L9_3
        L12_3 = false
        L13_3 = "ADD_INCREMENTAL_CASH_WON_STEP"
        L14_3 = 1
        L15_3 = 20
        L16_3 = A4_2
        L17_3 = A5_2
        L18_3 = "casino society"
        L19_3 = ""
        L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
        L10_3 = CallScaleformFunction
        L11_3 = L9_3
        L12_3 = false
        L13_3 = "ADD_INCREMENTAL_CASH_ANIMATION_TO_WALL"
        L14_3 = 1
        L15_3 = 20
        L10_3(L11_3, L12_3, L13_3, L14_3, L15_3)
      end
    end
    L4_3 = GetGameTimer
    L4_3 = L4_3()
    L4_3 = L4_3 + 10000
    L5_3 = CreateThread
    function L6_3()
      local L0_4, L1_4, L2_4
      L0_4 = Wait
      L1_4 = 500
      L0_4(L1_4)
      L0_4 = PlaySound
      L1_4 = "MEDAL_UP"
      L2_4 = "HUD_MINI_GAME_SOUNDSET"
      L0_4(L1_4, L2_4)
      L0_4 = StartScreenEffect
      L1_4 = "HeistCelebToast"
      L0_4(L1_4)
    end
    L7_3 = "Heist celeb toast"
    L5_3(L6_3, L7_3)
    while true do
      L5_3 = GetGameTimer
      L5_3 = L5_3()
      if not (L4_3 > L5_3) then
        break
      end
      L5_3 = Citizen
      L5_3 = L5_3.Wait
      L6_3 = 1
      L5_3(L6_3)
      L5_3 = DrawScaleformMovieFullscreenMasked
      L6_3 = L1_3
      L7_3 = L2_3
      L8_3 = 255
      L9_3 = 255
      L10_3 = 255
      L11_3 = 50
      L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
      L5_3 = DrawScaleformMovieFullscreen
      L6_3 = L0_3
      L7_3 = 255
      L8_3 = 255
      L9_3 = 255
      L10_3 = 255
      L5_3(L6_3, L7_3, L8_3, L9_3, L10_3)
    end
  end
  L8_2 = "screen notify mission"
  L6_2(L7_2, L8_2)
end
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = GetGameTimer
  L3_2 = L3_2()
  L3_2 = L3_2 + A2_2
  while true do
    L4_2 = GetSynchronizedScenePhase
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    if not (A1_2 > L4_2) then
      break
    end
    L4_2 = GetGameTimer
    L4_2 = L4_2()
    if not (L3_2 > L4_2) then
      break
    end
    L4_2 = Wait
    L5_2 = 33
    L4_2(L5_2)
  end
  L4_2 = GetGameTimer
  L4_2 = L4_2()
  L4_2 = L3_2 > L4_2
  return L4_2
end
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = SetTextFont
  L2_2 = 0
  L1_2(L2_2)
  L1_2 = SetTextProportional
  L2_2 = 1
  L1_2(L2_2)
  L1_2 = SetTextScale
  L2_2 = 0.0
  L3_2 = 0.5
  L1_2(L2_2, L3_2)
  L1_2 = SetTextColour
  L2_2 = 255
  L3_2 = 255
  L4_2 = 255
  L5_2 = 255
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = SetTextDropshadow
  L2_2 = 0
  L3_2 = 0
  L4_2 = 0
  L5_2 = 0
  L6_2 = 255
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = SetTextEdge
  L2_2 = 1
  L3_2 = 0
  L4_2 = 0
  L5_2 = 0
  L6_2 = 255
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = SetTextDropShadow
  L1_2()
  L1_2 = SetTextCentre
  L2_2 = true
  L1_2(L2_2)
  L1_2 = SetTextOutline
  L1_2()
  L1_2 = SetTextEntry
  L2_2 = "STRING"
  L1_2(L2_2)
  L1_2 = AddTextComponentString
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = DrawText
  L2_2 = 0.5
  L3_2 = 0.9
  L1_2(L2_2, L3_2)
end
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if not A1_2 then
    A1_2 = 2
  end
  L2_2 = SetBlipSprite
  L3_2 = A0_2
  L4_2 = 477
  L2_2(L3_2, L4_2)
  L2_2 = SetBlipScale
  L3_2 = A0_2
  L4_2 = 1.0
  L2_2(L3_2, L4_2)
  L2_2 = SetBlipAsFriendly
  L3_2 = A0_2
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = SetBlipColour
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = BeginTextCommandSetBlipName
  L3_2 = "STRING"
  L2_2(L3_2)
  L2_2 = AddTextComponentString
  L3_2 = "Diamond Casino Truck"
  L2_2(L3_2)
  L2_2 = EndTextCommandSetBlipName
  L3_2 = A0_2
  L2_2(L3_2)
end
function L8_1()
  local L0_2, L1_2
  L0_2 = L0_1
  if not L0_2 then
    return
  end
  L0_2 = L0_1.truckBlip
  if L0_2 then
    L0_2 = RemoveBlip
    L1_2 = L0_1.truckBlip
    L0_2(L1_2)
    L0_1.truckBlip = nil
  end
  L0_2 = L0_1.fakeTruckBlip
  if L0_2 then
    L0_2 = RemoveBlip
    L1_2 = L0_1.fakeTruckBlip
    L0_2(L1_2)
    L0_1.fakeTruckBlip = nil
  end
end
function L9_1()
  local L0_2, L1_2
  L0_2 = L0_1
  if not L0_2 then
    return
  end
  L0_2 = L0_1.casinoBlip
  if L0_2 then
    L0_2 = RemoveBlip
    L1_2 = L0_1.casinoBlip
    L0_2(L1_2)
    L0_1.fakeTruckBlip = nil
  end
end
function L10_1()
  local L0_2, L1_2, L2_2
  L0_2 = L8_1
  L0_2()
  L0_2 = AddBlipForCoord
  L1_2 = L0_1.truckPos
  L0_2 = L0_2(L1_2)
  L0_1.fakeTruckBlip = L0_2
  L0_2 = L7_1
  L1_2 = L0_1.fakeTruckBlip
  L2_2 = 4
  L0_2(L1_2, L2_2)
end
function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = L8_1
  L0_2()
  L0_2 = AddBlipForEntity
  L1_2 = L0_1.truck
  L0_2 = L0_2(L1_2)
  L0_1.truckBlip = L0_2
  L0_2 = L7_1
  L1_2 = L0_1.truckBlip
  L0_2(L1_2)
  L0_2 = SetVehicleDoorsLocked
  L1_2 = L0_1.truck
  L2_2 = 1
  L0_2(L1_2, L2_2)
  L0_2 = pairs
  L1_2 = L0_1.members
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = SetVehicleDoorsLockedForPlayer
    L7_2 = L0_1.truck
    L8_2 = L5_2
    L9_2 = false
    L6_2(L7_2, L8_2, L9_2)
  end
  L0_2 = SetEntityCoordsNoOffset
  L1_2 = L0_1.truck
  L2_2 = L0_1.truckPos
  L0_2(L1_2, L2_2)
end
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = DoesEntityExist
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = GetEntityCoords
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = GetEntityHeading
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = GetEntityBoneIndexByName
  L4_2 = A0_2
  L5_2 = "bodyshell"
  L3_2 = L3_2(L4_2, L5_2)
  function L4_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3
    L3_3 = CreateObject
    L4_3 = Config
    L4_3 = L4_3.JobConsts
    L4_3 = L4_3.MissionModels
    L4_3 = L4_3.MoneyBag
    L5_3 = vector3
    L6_3 = 0.0
    L7_3 = 0.0
    L8_3 = 0.0
    L5_3 = L5_3(L6_3, L7_3, L8_3)
    L6_3 = true
    L7_3 = false
    L8_3 = false
    L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
    L4_3 = ObjToNet
    L5_3 = L3_3
    L4_3 = L4_3(L5_3)
    L5_3 = SetEntityCompletelyDisableCollision
    L6_3 = L3_3
    L7_3 = true
    L8_3 = false
    L5_3(L6_3, L7_3, L8_3)
    L5_3 = NetworkAllowLocalEntityAttachment
    L6_3 = L3_3
    L7_3 = true
    L5_3(L6_3, L7_3)
    L5_3 = AttachEntityToEntity
    L6_3 = L3_3
    L7_3 = A0_2
    L8_3 = L3_2
    L9_3 = A0_3
    L10_3 = A1_3
    L11_3 = A2_3
    L12_3 = 0.0
    L13_3 = 0.0
    L14_3 = L2_2
    L15_3 = 0.0
    L16_3 = false
    L17_3 = false
    L18_3 = true
    L19_3 = false
    L20_3 = true
    L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3)
    L5_3 = RegisterMissionProp
    L6_3 = L3_3
    L5_3(L6_3)
    return L4_3
  end
  L5_2 = CreateThread
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = L1_1
    L1_3 = Config
    L1_3 = L1_3.JobConsts
    L1_3 = L1_3.MissionModels
    L1_3 = L1_3.MoneyBag
    L0_3(L1_3)
    L0_3 = {}
    L1_3 = L4_2
    L2_3 = -0.9
    L3_3 = -2.5
    L4_3 = 0.8
    L1_3 = L1_3(L2_3, L3_3, L4_3)
    L2_3 = L4_2
    L3_3 = -0.9
    L4_3 = -2.9
    L5_3 = 0.8
    L2_3 = L2_3(L3_3, L4_3, L5_3)
    L3_3 = L4_2
    L4_3 = -0.5
    L5_3 = -2.5
    L6_3 = 0.5
    L3_3 = L3_3(L4_3, L5_3, L6_3)
    L4_3 = L4_2
    L5_3 = -0.5
    L6_3 = -2.9
    L7_3 = 0.5
    L4_3, L5_3, L6_3, L7_3 = L4_3(L5_3, L6_3, L7_3)
    L0_3[1] = L1_3
    L0_3[2] = L2_3
    L0_3[3] = L3_3
    L0_3[4] = L4_3
    L0_3[5] = L5_3
    L0_3[6] = L6_3
    L0_3[7] = L7_3
    L1_3 = TriggerServerEvent
    L2_3 = "CasinoMission:MoneyLoad:MoneyBags"
    L3_3 = L0_3
    L1_3(L2_3, L3_3)
    L1_3 = SetModelAsNoLongerNeeded
    L2_3 = Config
    L2_3 = L2_3.JobConsts
    L2_3 = L2_3.MissionModels
    L2_3 = L2_3.MoneyBag
    L1_3(L2_3)
  end
  L7_2 = "MoneyLoad_FillUpTruck"
  L5_2(L6_2, L7_2)
end
function L13_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = GetEntityRotation
  L1_2 = PlayerPedId
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = GetEntityCoords
  L2_2 = PlayerPedId
  L2_2, L3_2, L4_2, L5_2, L6_2 = L2_2()
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = true
  L3_2 = true
  L4_2 = CreateThread
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3
    while true do
      L0_3 = L2_2
      if not L0_3 then
        break
      end
      L0_3 = L3_2
      if not L0_3 then
        L0_3 = SetEntityNoCollisionEntity
        L1_3 = PlayerPedId
        L1_3 = L1_3()
        L2_3 = L0_1.truck
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = SetEntityNoCollisionEntity
        L1_3 = L0_1.truck
        L2_3 = PlayerPedId
        L2_3 = L2_3()
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
    end
  end
  L6_2 = "MoneyLoad_BeginTakingOut"
  L4_2(L5_2, L6_2)
  L4_2 = CreateThread
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3
    L0_3 = L2_1
    L1_3 = Config
    L1_3 = L1_3.JobConsts
    L1_3 = L1_3.MissionDicts
    L1_3 = L1_3.DuffelBag
    L0_3(L1_3)
    L0_3 = L1_1
    L1_3 = Config
    L1_3 = L1_3.JobConsts
    L1_3 = L1_3.MissionModels
    L1_3 = L1_3.MoneyBagPlayer
    L0_3(L1_3)
    L0_3 = L1_1
    L1_3 = Config
    L1_3 = L1_3.JobConsts
    L1_3 = L1_3.MissionModels
    L1_3 = L1_3.TruckCar
    L0_3(L1_3)
    while true do
      L0_3 = IsPedInAnyVehicle
      L1_3 = PlayerPedId
      L1_3 = L1_3()
      L2_3 = true
      L0_3 = L0_3(L1_3, L2_3)
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 33
      L0_3(L1_3)
    end
    L0_3 = L0_1.truck
    L1_3 = GetGameTimer
    L1_3 = L1_3()
    L1_3 = L1_3 + 3000
    while true do
      L2_3 = NetworkHasControlOfEntity
      L3_3 = L0_3
      L2_3 = L2_3(L3_3)
      if L2_3 then
        break
      end
      L2_3 = NetworkRequestControlOfEntity
      L3_3 = L0_3
      L2_3(L3_3)
      L2_3 = Wait
      L3_3 = 500
      L2_3(L3_3)
    end
    if not L0_3 or 0 == L0_3 then
      return
    end
    L2_3 = DoesEntityExist
    L3_3 = L0_3
    L2_3 = L2_3(L3_3)
    if not L2_3 then
      return
    end
    L2_3 = GetEntityModel
    L3_3 = L0_3
    L2_3 = L2_3(L3_3)
    L3_3 = Config
    L3_3 = L3_3.JobConsts
    L3_3 = L3_3.MissionModels
    L3_3 = L3_3.TruckCar
    if L2_3 ~= L3_3 then
      return
    end
    L2_3 = SetVehicleDoorOpen
    L3_3 = L0_3
    L4_3 = 2
    L5_3 = false
    L6_3 = false
    L2_3(L3_3, L4_3, L5_3, L6_3)
    L2_3 = SetVehicleDoorOpen
    L3_3 = L0_3
    L4_3 = 3
    L5_3 = false
    L6_3 = true
    L2_3(L3_3, L4_3, L5_3, L6_3)
    L2_3 = L12_1
    L3_3 = L0_3
    L2_3(L3_3)
    L2_3 = Wait
    L3_3 = 300
    L2_3(L3_3)
    L2_3 = false
    L3_2 = L2_3
    L2_3 = GetEntityCoords
    L3_3 = L0_3
    L2_3 = L2_3(L3_3)
    L3_3 = GetEntityHeading
    L4_3 = L0_3
    L3_3 = L3_3(L4_3)
    L4_3 = GetObjectOffsetFromCoords
    L5_3 = L2_3
    L6_3 = L3_3
    L7_3 = 0.0
    L8_3 = -2.5
    L9_3 = 1.5
    L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3, L9_3)
    L5_3 = vector3
    L6_3 = 0.0
    L7_3 = 0.0
    L8_3 = L3_3 + 90.0
    L5_3 = L5_3(L6_3, L7_3, L8_3)
    L6_3 = GetObjectOffsetFromCoords
    L7_3 = L2_3
    L8_3 = L3_3
    L9_3 = 0.0
    L10_3 = -4.5
    L11_3 = 0.0
    L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3, L11_3)
    L7_3 = CreateObject
    L8_3 = Config
    L8_3 = L8_3.JobConsts
    L8_3 = L8_3.MissionModels
    L8_3 = L8_3.MoneyBagPlayer
    L9_3 = vector3
    L10_3 = 0.0
    L11_3 = 0.0
    L12_3 = 0.0
    L9_3 = L9_3(L10_3, L11_3, L12_3)
    L10_3 = true
    L11_3 = false
    L12_3 = false
    L7_3 = L7_3(L8_3, L9_3, L10_3, L11_3, L12_3)
    L8_3 = ObjToNet
    L9_3 = L7_3
    L8_3 = L8_3(L9_3)
    L9_3 = TriggerServerEvent
    L10_3 = "CasinoMission:MoneyLoad:MoneyBagPlayer"
    L11_3 = L8_3
    L9_3(L10_3, L11_3)
    L9_3 = SetEntityCompletelyDisableCollision
    L10_3 = L7_3
    L11_3 = false
    L12_3 = false
    L9_3(L10_3, L11_3, L12_3)
    L9_3 = NetworkAllowLocalEntityAttachment
    L10_3 = L7_3
    L11_3 = true
    L9_3(L10_3, L11_3)
    L9_3 = SetModelAsNoLongerNeeded
    L10_3 = Config
    L10_3 = L10_3.JobConsts
    L10_3 = L10_3.MissionModels
    L10_3 = L10_3.MoneyBagPlayer
    L9_3(L10_3)
    L9_3 = RegisterMissionProp
    L10_3 = L7_3
    L9_3(L10_3)
    L9_3 = Wait
    L10_3 = 100
    L9_3(L10_3)
    L9_3 = AttachEntityToEntity
    L10_3 = L7_3
    L11_3 = PlayerPedId
    L11_3 = L11_3()
    L12_3 = GetPedBoneIndex
    L13_3 = PlayerPedId
    L13_3 = L13_3()
    L14_3 = 24818
    L12_3 = L12_3(L13_3, L14_3)
    L13_3 = 0.1
    L14_3 = -0.3
    L15_3 = 0.0
    L16_3 = 50.0
    L17_3 = 90.0
    L18_3 = 90.0
    L19_3 = 0
    L20_3 = 0
    L21_3 = 0
    L22_3 = 1
    L23_3 = 2
    L24_3 = 1
    L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3)
    L9_3 = TaskGoStraightToCoord
    L10_3 = PlayerPedId
    L10_3 = L10_3()
    L11_3 = L6_3
    L12_3 = 1.0
    L13_3 = 0.3
    L14_3 = GetEntityHeading
    L15_3 = PlayerPedId
    L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3 = L15_3()
    L14_3 = L14_3(L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3)
    L15_3 = 0.0
    L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
    L9_3 = GetGameTimer
    L9_3 = L9_3()
    L9_3 = L9_3 + 10000
    while true do
      L10_3 = GetEntityCoords
      L11_3 = PlayerPedId
      L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3 = L11_3()
      L10_3 = L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3)
      L10_3 = L10_3 - L6_3
      L10_3 = #L10_3
      L11_3 = 0.5
      if L10_3 < L11_3 then
        break
      end
      L11_3 = GetGameTimer
      L11_3 = L11_3()
      if L9_3 < L11_3 then
        break
      end
      L11_3 = Wait
      L12_3 = 33
      L11_3(L12_3)
    end
    L10_3 = TaskGoStraightToCoord
    L11_3 = PlayerPedId
    L11_3 = L11_3()
    L12_3 = L4_3
    L13_3 = 1.0
    L14_3 = 0.3
    L15_3 = GetEntityHeading
    L16_3 = PlayerPedId
    L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3 = L16_3()
    L15_3 = L15_3(L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3)
    L16_3 = 1.0
    L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
    L10_3 = DetachEntity
    L11_3 = L7_3
    L12_3 = false
    L13_3 = false
    L10_3(L11_3, L12_3, L13_3)
    L10_3 = SetEntityVisible
    L11_3 = L7_3
    L12_3 = false
    L10_3(L11_3, L12_3)
    L10_3 = GetInitialAnimOffsets
    L11_3 = Config
    L11_3 = L11_3.JobConsts
    L11_3 = L11_3.MissionDicts
    L11_3 = L11_3.DuffelBag
    L12_3 = "enter"
    L13_3 = L4_3
    L14_3 = L5_3
    L10_3, L11_3 = L10_3(L11_3, L12_3, L13_3, L14_3)
    L12_3 = vector3
    L13_3 = 0
    L14_3 = 0
    L15_3 = 2.05
    L12_3 = L12_3(L13_3, L14_3, L15_3)
    L10_3 = L10_3 - L12_3
    L12_3 = NetworkCreateSynchronisedScene
    L13_3 = L10_3
    L14_3 = L11_3
    L15_3 = 2
    L16_3 = true
    L17_3 = false
    L18_3 = 1065353216
    L19_3 = 0
    L20_3 = 1065353216
    L12_3 = L12_3(L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3)
    L13_3 = NetworkAddPedToSynchronisedScene
    L14_3 = PlayerPedId
    L14_3 = L14_3()
    L15_3 = L12_3
    L16_3 = Config
    L16_3 = L16_3.JobConsts
    L16_3 = L16_3.MissionDicts
    L16_3 = L16_3.DuffelBag
    L17_3 = "enter"
    L18_3 = 8.0
    L19_3 = -8.0
    L20_3 = 13
    L21_3 = 16
    L22_3 = 1.0
    L23_3 = 0
    L13_3(L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3)
    L13_3 = NetworkAddEntityToSynchronisedScene
    L14_3 = L7_3
    L15_3 = L12_3
    L16_3 = Config
    L16_3 = L16_3.JobConsts
    L16_3 = L16_3.MissionDicts
    L16_3 = L16_3.DuffelBag
    L17_3 = "enter_bag"
    L18_3 = 8.0
    L19_3 = -8.0
    L20_3 = 1
    L13_3(L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3)
    L13_3 = NetworkStartSynchronisedScene
    L14_3 = L12_3
    L13_3(L14_3)
    L13_3 = Wait
    L14_3 = 33
    L13_3(L14_3)
    L13_3 = _ENV
    L14_3 = "NetworkConvertSynchronisedSceneToSynchronizedScene"
    L13_3 = L13_3[L14_3]
    L14_3 = L12_3
    L13_3 = L13_3(L14_3)
    L12_3 = L13_3
    L13_3 = L5_1
    L14_3 = L12_3
    L15_3 = 0.35
    L16_3 = 3000
    L13_3(L14_3, L15_3, L16_3)
    L13_3 = SetEntityVisible
    L14_3 = L7_3
    L15_3 = true
    L13_3(L14_3, L15_3)
    L13_3 = L5_1
    L14_3 = L12_3
    L15_3 = 0.9
    L16_3 = 3000
    L13_3(L14_3, L15_3, L16_3)
    L13_3 = NetworkCreateSynchronisedScene
    L14_3 = L10_3
    L15_3 = L11_3
    L16_3 = 2
    L17_3 = true
    L18_3 = true
    L19_3 = 1065353216
    L20_3 = 0
    L21_3 = 1065353216
    L13_3 = L13_3(L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3)
    L12_3 = L13_3
    L13_3 = NetworkAddPedToSynchronisedScene
    L14_3 = PlayerPedId
    L14_3 = L14_3()
    L15_3 = L12_3
    L16_3 = Config
    L16_3 = L16_3.JobConsts
    L16_3 = L16_3.MissionDicts
    L16_3 = L16_3.DuffelBag
    L17_3 = "loop"
    L13_3(L14_3, L15_3, L16_3, L17_3)
    L13_3 = NetworkAddEntityToSynchronisedScene
    L14_3 = L7_3
    L15_3 = L12_3
    L16_3 = Config
    L16_3 = L16_3.JobConsts
    L16_3 = L16_3.MissionDicts
    L16_3 = L16_3.DuffelBag
    L17_3 = "loop_bag"
    L13_3(L14_3, L15_3, L16_3, L17_3)
    L13_3 = NetworkStartSynchronisedScene
    L14_3 = L12_3
    L13_3(L14_3)
    L13_3 = Wait
    L14_3 = 33
    L13_3(L14_3)
    L13_3 = _ENV
    L14_3 = "NetworkConvertSynchronisedSceneToSynchronizedScene"
    L13_3 = L13_3[L14_3]
    L14_3 = L12_3
    L13_3 = L13_3(L14_3)
    L12_3 = L13_3
    L13_3 = 0.15
    L14_3 = 0.9
    L15_3 = 0.2
    for L16_3 = L13_3, L14_3, L15_3 do
      L17_3 = L5_1
      L18_3 = L12_3
      L19_3 = L16_3
      L20_3 = 2000
      L17_3(L18_3, L19_3, L20_3)
      L17_3 = PlaySound
      L18_3 = "Bus_Schedule_Pickup"
      L19_3 = "DLC_PRISON_BREAK_HEIST_SOUNDS"
      L17_3(L18_3, L19_3)
      L17_3 = TriggerServerEvent
      L18_3 = "CasinoMission:MoneyLoad:DeleteBag"
      L17_3(L18_3)
    end
    L13_3 = L5_1
    L14_3 = L12_3
    L15_3 = 0.99
    L16_3 = 2000
    L13_3(L14_3, L15_3, L16_3)
    L13_3 = NetworkCreateSynchronisedScene
    L14_3 = L10_3
    L15_3 = L11_3
    L16_3 = 2
    L17_3 = true
    L18_3 = true
    L19_3 = 1065353216
    L20_3 = 0
    L21_3 = 1065353216
    L13_3 = L13_3(L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3)
    L12_3 = L13_3
    L13_3 = NetworkAddPedToSynchronisedScene
    L14_3 = PlayerPedId
    L14_3 = L14_3()
    L15_3 = L12_3
    L16_3 = Config
    L16_3 = L16_3.JobConsts
    L16_3 = L16_3.MissionDicts
    L16_3 = L16_3.DuffelBag
    L17_3 = "exit"
    L13_3(L14_3, L15_3, L16_3, L17_3)
    L13_3 = NetworkAddEntityToSynchronisedScene
    L14_3 = L7_3
    L15_3 = L12_3
    L16_3 = Config
    L16_3 = L16_3.JobConsts
    L16_3 = L16_3.MissionDicts
    L16_3 = L16_3.DuffelBag
    L17_3 = "exit_bag"
    L13_3(L14_3, L15_3, L16_3, L17_3)
    L13_3 = NetworkStartSynchronisedScene
    L14_3 = L12_3
    L13_3(L14_3)
    L13_3 = Wait
    L14_3 = 33
    L13_3(L14_3)
    L13_3 = _ENV
    L14_3 = "NetworkConvertSynchronisedSceneToSynchronizedScene"
    L13_3 = L13_3[L14_3]
    L14_3 = L12_3
    L13_3 = L13_3(L14_3)
    L12_3 = L13_3
    L13_3 = L5_1
    L14_3 = L12_3
    L15_3 = 0.95
    L16_3 = 2000
    L13_3(L14_3, L15_3, L16_3)
    L13_3 = TaskGoStraightToCoord
    L14_3 = PlayerPedId
    L14_3 = L14_3()
    L15_3 = L6_3
    L16_3 = 1.0
    L17_3 = 2.0
    L18_3 = GetEntityHeading
    L19_3 = PlayerPedId
    L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3 = L19_3()
    L18_3 = L18_3(L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3)
    L19_3 = 0.5
    L13_3(L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
    L13_3 = AttachEntityToEntity
    L14_3 = L7_3
    L15_3 = PlayerPedId
    L15_3 = L15_3()
    L16_3 = GetPedBoneIndex
    L17_3 = PlayerPedId
    L17_3 = L17_3()
    L18_3 = 24818
    L16_3 = L16_3(L17_3, L18_3)
    L17_3 = 0.1
    L18_3 = -0.3
    L19_3 = 0.0
    L20_3 = 50.0
    L21_3 = 90.0
    L22_3 = 90.0
    L23_3 = 0
    L24_3 = 0
    L25_3 = 0
    L26_3 = 1
    L27_3 = 2
    L28_3 = 1
    L13_3(L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3)
    L13_3 = Wait
    L14_3 = 500
    L13_3(L14_3)
    L13_3 = Wait
    L14_3 = 500
    L13_3(L14_3)
    L13_3 = true
    L3_2 = L13_3
    L13_3 = SetVehicleDoorShut
    L14_3 = L0_3
    L15_3 = 2
    L16_3 = false
    L13_3(L14_3, L15_3, L16_3)
    L13_3 = SetVehicleDoorShut
    L14_3 = L0_3
    L15_3 = 3
    L16_3 = false
    L13_3(L14_3, L15_3, L16_3)
    L13_3 = false
    L2_2 = L13_3
    L13_3 = TriggerServerEvent
    L14_3 = "CasinoMission:MoneyLoad:PlayerLoaded"
    L13_3(L14_3)
  end
  L6_2 = "MoneyLoad_BeginTakingOut"
  L4_2(L5_2, L6_2)
end
function L14_1()
  local L0_2, L1_2, L2_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    L0_3 = false
    L1_3 = GetGameTimer
    L1_3 = L1_3()
    L1_3 = L1_3 + 2500
    L2_3 = GetGameTimer
    L2_3 = L2_3()
    L2_3 = L2_3 + 1000
    L3_3 = 1000.0
    L0_1.truckHealth = 1000.0
    while true do
      L4_3 = L0_1
      if not L4_3 then
        break
      end
      L4_3 = L0_1.step
      if not L4_3 then
        break
      end
      L4_3 = TimerBar
      L5_3 = L4_3
      L4_3 = L4_3.DrawAll
      L4_3(L5_3)
      L4_3 = GetGameTimer
      L4_3 = L4_3()
      if L2_3 < L4_3 then
        L4_3 = L0_1.timeleft
        if L4_3 then
          L4_3 = L0_1.timeleft
          if L4_3 > 0 then
            L4_3 = L0_1.timeleft
            L4_3 = L4_3 - 1
            L0_1.timeleft = L4_3
          end
        end
        L4_3 = GetGameTimer
        L4_3 = L4_3()
        L2_3 = L4_3 + 1000
        L4_3 = L0_1.truck
        if 0 ~= L4_3 then
          L4_3 = GetVehicleBodyHealth
          L5_3 = L0_1.truck
          L4_3 = L4_3(L5_3)
          L5_3 = L0_1.truckHealth
          if L4_3 < L5_3 then
            L0_1.truckHealth = L4_3
          end
          L5_3 = L0_1.truckHealth
          if L5_3 ~= L3_3 then
            L5_3 = PlaySound
            L6_3 = "LOOSE_MATCH"
            L7_3 = "HUD_MINI_GAME_SOUNDSET"
            L5_3(L6_3, L7_3)
            L3_3 = L0_1.truckHealth
          end
        end
      end
      L4_3 = GetVehiclePedIsIn
      L5_3 = PlayerPedId
      L5_3 = L5_3()
      L6_3 = false
      L4_3 = L4_3(L5_3, L6_3)
      L5_3 = GetPedInVehicleSeat
      L6_3 = L4_3
      L7_3 = -1
      L5_3 = L5_3(L6_3, L7_3)
      L6_3 = 0 ~= L4_3
      L7_3 = GetEntityCoords
      L8_3 = PlayerPedId
      L8_3, L9_3, L10_3, L11_3, L12_3, L13_3 = L8_3()
      L7_3 = L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
      L8_3 = L0_1.truckPos
      L8_3 = L7_3 - L8_3
      L8_3 = #L8_3
      L9_3 = L0_1.truck
      if 0 == L9_3 then
        if L8_3 < 30.0 then
          L9_3 = NetToVeh
          L10_3 = L0_1.truckId
          L9_3 = L9_3(L10_3)
          L0_1.truck = L9_3
          L9_3 = L11_1
          L9_3()
          L9_3 = Wait
          L10_3 = 1000
          L9_3(L10_3)
        end
      elseif L8_3 > 30.0 and not L6_3 then
        L0_1.truck = 0
        L9_3 = L10_1
        L9_3()
      end
      L9_3 = L0_1.truck
      if L9_3 then
        L9_3 = L0_1.truck
        if 0 ~= L9_3 and L0_3 ~= L6_3 then
          L0_3 = L6_3
          L9_3 = TriggerServerEvent
          L10_3 = "CasinoMission:MoneyLoad:InTruckState"
          L11_3 = L0_3
          L9_3(L10_3, L11_3)
        end
      end
      L9_3 = L0_1.timeleft
      if L9_3 then
        L9_3 = L0_1.barTime
        if L9_3 then
          L9_3 = L0_1.barTime
          L9_3 = L9_3.setText
          L10_3 = FormatMMSS
          L11_3 = L0_1.timeleft
          L10_3, L11_3, L12_3, L13_3 = L10_3(L11_3)
          L9_3(L10_3, L11_3, L12_3, L13_3)
        end
      end
      L9_3 = L0_1.truckHealth
      if L9_3 then
        L9_3 = L0_1.barHealth
        if L9_3 then
          L9_3 = L0_1.truckHealth
          L9_3 = L9_3 - 950.0
          L9_3 = L9_3 / 50.0
          L9_3 = L9_3 * 1.0
          L10_3 = L0_1.barHealth
          L10_3 = L10_3.setProgress
          L11_3 = L9_3
          L10_3(L11_3)
          L10_3 = L0_1.barMoney
          if L10_3 then
            L10_3 = L0_1.realMoney
            if not L10_3 then
              L10_3 = L0_1.take
            end
            if L10_3 > 0 then
              L11_3 = L0_1.barMoney
              L11_3 = L11_3.setText
              L12_3 = FormatPrice
              L13_3 = L10_3
              L12_3, L13_3 = L12_3(L13_3)
              L11_3(L12_3, L13_3)
            end
          end
        end
      end
      L9_3 = L0_1.step
      if 0 ~= L9_3 then
        L9_3 = L0_1.step
        if 1 ~= L9_3 then
          goto lbl_177
        end
      end
      L9_3 = L0_1.insideTruck
      if not L9_3 then
        L9_3 = L6_1
        L10_3 = "Pick up the ~g~Stockade~w~."
        L9_3(L10_3)
      ::lbl_177::
      else
        L9_3 = L0_1.step
        if 1 == L9_3 then
          if L0_3 then
            L9_3 = L6_1
            L10_3 = "Drive ~g~Stockade~w~ to the ~y~Diamond Casino~w~."
            L9_3(L10_3)
          else
            L9_3 = L6_1
            L10_3 = "Help deliver ~g~Stockade~w~ to the ~y~Diamond Casino~w~."
            L9_3(L10_3)
          end
        else
          L9_3 = L0_1.step
          if 2 == L9_3 and L0_3 then
            L9_3 = TriggerServerEvent
            L10_3 = "CasinoMission:MoneyLoad:TruckBeginLoad"
            L9_3(L10_3)
            L9_3 = L13_1
            L9_3()
            L0_1.step = -1
          else
            L9_3 = L0_1.step
            if 4 == L9_3 then
              L9_3 = L0_1.loadedPlayer
              L10_3 = GetPlayerServerId
              L11_3 = PlayerId
              L11_3, L12_3, L13_3 = L11_3()
              L10_3 = L10_3(L11_3, L12_3, L13_3)
              if L9_3 == L10_3 then
                L9_3 = L6_1
                L10_3 = "Deliver the money to the ~g~Cashier~w~,"
                L9_3(L10_3)
              else
                L9_3 = L6_1
                L10_3 = "Help deliver the money to the ~g~Cashier~w~."
                L9_3(L10_3)
              end
            end
          end
        end
      end
      L9_3 = Wait
      L10_3 = 0
      L9_3(L10_3)
    end
  end
  L2_2 = "MoneyLoad_Controller"
  L0_2(L1_2, L2_2)
end
L15_1 = RegisterNetEvent
L16_1 = "CasinoMission:MoneyLoad:BeginMission"
L15_1(L16_1)
L15_1 = AddEventHandler
L16_1 = "CasinoMission:MoneyLoad:BeginMission"
function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  MONEYLOAD_TAKE = nil
  L1_2 = PlaySound
  L2_2 = "QUIT_WHOOSH"
  L3_2 = "HUD_MINI_GAME_SOUNDSET"
  L1_2(L2_2, L3_2)
  L1_2 = RequestStreamedTextureDict
  L2_2 = "Timerbars"
  L1_2(L2_2)
  L1_2 = RequestModel
  L2_2 = GetHashKey
  L3_2 = "Stockade"
  L2_2, L3_2, L4_2, L5_2, L6_2 = L2_2(L3_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = TimerBar
  L1_2 = L1_2.DestroyAll
  L1_2()
  L0_1 = A0_2
  L1_2 = GetGameTimer
  L1_2 = L1_2()
  L0_1.startTime = L1_2
  L1_2 = AddBlipForCoord
  L2_2 = A0_2.truckPos
  L1_2 = L1_2(L2_2)
  L0_1.fakeTruckBlip = L1_2
  L1_2 = L7_1
  L2_2 = L0_1.fakeTruckBlip
  L3_2 = 4
  L1_2(L2_2, L3_2)
  L1_2 = TimerBar
  L1_2 = L1_2.Create
  L2_2 = TimerBar
  L2_2 = L2_2.Text
  L3_2 = Translation
  L3_2 = L3_2.Get
  L4_2 = "ROULETTE_TIMERBAR_TIME"
  L3_2 = L3_2(L4_2)
  L4_2 = FormatMMSS
  L5_2 = L0_1.timeleft
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L0_1.barTime = L1_2
  L1_2 = L0_1.barTime
  L1_2 = L1_2.setTextColor
  L2_2 = {}
  L3_2 = 255
  L4_2 = 20
  L5_2 = 20
  L6_2 = 255
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L2_2[3] = L5_2
  L2_2[4] = L6_2
  L1_2(L2_2)
  L1_2 = L0_1.barTime
  L1_2 = L1_2.setHighlightColor
  L2_2 = {}
  L3_2 = 255
  L4_2 = 20
  L5_2 = 20
  L6_2 = 255
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L2_2[3] = L5_2
  L2_2[4] = L6_2
  L1_2(L2_2)
  L1_2 = RequestModel
  L2_2 = Config
  L2_2 = L2_2.JobConsts
  L2_2 = L2_2.MissionModels
  L2_2 = L2_2.TruckCar
  L1_2(L2_2)
  L1_2 = Wait
  L2_2 = 1000
  L1_2(L2_2)
  L1_2 = L14_1
  L1_2()
end
L15_1(L16_1, L17_1)
L15_1 = RegisterNetEvent
L16_1 = "CasinoMission:MoneyLoad:InTruckState"
L15_1(L16_1)
L15_1 = AddEventHandler
L16_1 = "CasinoMission:MoneyLoad:InTruckState"
function L17_1(A0_2)
  local L1_2
  L0_1.insideTruck = A0_2
end
L15_1(L16_1, L17_1)
L15_1 = RegisterNetEvent
L16_1 = "CasinoMission:MoneyLoad:RealTake"
L15_1(L16_1)
L15_1 = AddEventHandler
L16_1 = "CasinoMission:MoneyLoad:RealTake"
function L17_1(A0_2)
  local L1_2
  MONEYLOAD_TAKE = A0_2
  L0_1.realMoney = A0_2
end
L15_1(L16_1, L17_1)
L15_1 = RegisterNetEvent
L16_1 = "CasinoMission:MoneyLoad:Ended"
L15_1(L16_1)
L15_1 = AddEventHandler
L16_1 = "CasinoMission:MoneyLoad:Ended"
function L17_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = ""
  L3_2 = nil
  L4_2 = nil
  if A0_2 then
    L3_2 = A1_2[1]
    L4_2 = A1_2[2]
  else
    L5_2 = Translation
    L5_2 = L5_2.Get
    L6_2 = A1_2
    L5_2 = L5_2(L6_2)
    L2_2 = L5_2
  end
  L5_2 = L4_1
  L6_2 = "Money Delivery"
  L7_2 = Translation
  L7_2 = L7_2.Get
  if A0_2 then
    L8_2 = "MONEYLOAD_SCREEN_MAIN_TEXT_1"
    if L8_2 then
      goto lbl_23
    end
  end
  L8_2 = "MONEYLOAD_SCREEN_MAIN_TEXT_2"
  ::lbl_23::
  L7_2 = L7_2(L8_2)
  L8_2 = L2_2
  if A0_2 then
    L9_2 = "HUD_COLOUR_PAUSE_BG"
    if L9_2 then
      goto lbl_31
    end
  end
  L9_2 = "HUD_COLOUR_SHOOTING_RANGE"
  ::lbl_31::
  L10_2 = L3_2
  L11_2 = L4_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L5_2 = UnloadMissions
  L5_2()
end
L15_1(L16_1, L17_1)
L15_1 = RegisterNetEvent
L16_1 = "CasinoMission:MoneyLoad:TruckDataRefresh"
L15_1(L16_1)
L15_1 = AddEventHandler
L16_1 = "CasinoMission:MoneyLoad:TruckDataRefresh"
function L17_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L0_1.realMoney = A1_2
  L0_1.truckPos = A0_2
  L2_2 = L0_1.fakeTruckBlip
  if L2_2 then
    L2_2 = SetBlipCoords
    L3_2 = L0_1.fakeTruckBlip
    L4_2 = A0_2
    L2_2(L3_2, L4_2)
  end
end
L15_1(L16_1, L17_1)
L15_1 = RegisterNetEvent
L16_1 = "CasinoMission:MoneyLoad:StepChanged"
L15_1(L16_1)
L15_1 = AddEventHandler
L16_1 = "CasinoMission:MoneyLoad:StepChanged"
function L17_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = PlaySound
  L3_2 = "QUIT_WHOOSH"
  L4_2 = "HUD_MINI_GAME_SOUNDSET"
  L2_2(L3_2, L4_2)
  if 1 == A0_2 then
    L2_2 = L0_1.casinoBlip
    if not L2_2 then
      L2_2 = AddBlipForCoord
      L3_2 = 917.92981
      L4_2 = 51.74008
      L2_2 = L2_2(L3_2, L4_2)
      L0_1.casinoBlip = L2_2
      L2_2 = SetBlipRoute
      L3_2 = L0_1.casinoBlip
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = TimerBar
      L2_2 = L2_2.Create
      L3_2 = TimerBar
      L3_2 = L3_2.Progress
      L4_2 = "TRUCK STATE"
      L5_2 = 1.0
      L2_2 = L2_2(L3_2, L4_2, L5_2)
      L0_1.barHealth = L2_2
      L2_2 = L0_1.barHealth
      L2_2 = L2_2.setBackgroundColor
      L3_2 = {}
      L4_2 = 255
      L5_2 = 255
      L6_2 = 255
      L7_2 = 50
      L3_2[1] = L4_2
      L3_2[2] = L5_2
      L3_2[3] = L6_2
      L3_2[4] = L7_2
      L2_2(L3_2)
      L2_2 = L0_1.barHealth
      L2_2 = L2_2.setForegroundColor
      L3_2 = {}
      L4_2 = 255
      L5_2 = 255
      L6_2 = 255
      L7_2 = 150
      L3_2[1] = L4_2
      L3_2[2] = L5_2
      L3_2[3] = L6_2
      L3_2[4] = L7_2
      L2_2(L3_2)
      L2_2 = L0_1.barHealth
      L2_2 = L2_2.setHighlightColor
      L3_2 = {}
      L4_2 = 255
      L5_2 = 20
      L6_2 = 20
      L7_2 = 255
      L3_2[1] = L4_2
      L3_2[2] = L5_2
      L3_2[3] = L6_2
      L3_2[4] = L7_2
      L2_2(L3_2)
      L2_2 = TimerBar
      L2_2 = L2_2.Create
      L3_2 = TimerBar
      L3_2 = L3_2.Text
      L4_2 = "MONEY"
      L5_2 = FormatPrice
      L6_2 = L0_1.take
      L5_2, L6_2, L7_2 = L5_2(L6_2)
      L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
      L0_1.barMoney = L2_2
    end
  elseif 2 == A0_2 then
    L2_2 = L0_1.barHealth
    if L2_2 then
      L2_2 = TimerBar
      L2_2 = L2_2.Destroy
      L3_2 = L0_1.barHealth
      L2_2(L3_2)
      L0_1.barHealth = nil
    end
    L2_2 = L9_1
    L2_2()
    L2_2 = L8_1
    L2_2()
    L2_2 = SetVehicleEngineOn
    L3_2 = L0_1.truck
    L4_2 = false
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = SetVehicleFuelLevel
    L3_2 = L0_1.truck
    L4_2 = 0.0
    L2_2(L3_2, L4_2)
    L2_2 = SetEntityVelocity
    L3_2 = L0_1.truck
    L4_2 = 0
    L5_2 = 0
    L6_2 = 0
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = PlaySound
    L3_2 = "BASE_JUMP_PASSED"
    L4_2 = "HUD_AWARDS"
    L2_2(L3_2, L4_2)
    L2_2 = AnimpostfxPlay
    L3_2 = "HeistLocate"
    L4_2 = 1000
    L2_2(L3_2, L4_2)
    L2_2 = TaskLeaveVehicle
    L3_2 = PlayerPedId
    L3_2 = L3_2()
    L4_2 = L0_1.truck
    L5_2 = 0
    L2_2(L3_2, L4_2, L5_2)
  elseif 3 == A0_2 then
    L0_1.loadedPlayer = A1_2
  end
  L0_1.step = A0_2
end
L15_1(L16_1, L17_1)
function L15_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = pairs
  L1_2 = MissionProps
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = DoesEntityExist
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = ForceDeleteEntity
      L7_2 = L5_2
      L6_2(L7_2)
    end
  end
end
DestroyMissionProps = L15_1
function L15_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = MissionProps
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
RegisterMissionProp = L15_1
function L15_1()
  local L0_2, L1_2
  L0_2 = DestroyMissionProps
  L0_2()
  L0_2 = L8_1
  L0_2()
  L0_2 = L9_1
  L0_2()
  L0_2 = nil
  L0_1 = L0_2
  L0_2 = TimerBar
  L0_2 = L0_2.DestroyAll
  L0_2()
end
UnloadMissions = L15_1
L15_1 = AddEventHandler
L16_1 = "onResourceStop"
function L17_1(A0_2)
  local L1_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if L1_2 ~= A0_2 then
    return
  end
  L1_2 = UnloadMissions
  L1_2()
end
L15_1(L16_1, L17_1)
