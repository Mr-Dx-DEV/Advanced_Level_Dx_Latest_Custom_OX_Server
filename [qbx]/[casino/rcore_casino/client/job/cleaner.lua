local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1
L0_1 = {}
L1_1 = {}
L2_1 = nil
L3_1 = vector3
L4_1 = 0.0
L5_1 = 0.0
L6_1 = 0.0
L3_1 = L3_1(L4_1, L5_1, L6_1)
L4_1 = {}
L5_1 = 0
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = GetGameTimer
  L1_2 = L1_2()
  L2_2 = L5_1
  L1_2 = L1_2 - L2_2
  L2_2 = 500
  if L1_2 < L2_2 then
    return
  end
  L1_2 = GetGameTimer
  L1_2 = L1_2()
  L5_1 = L1_2
  if not A0_2 then
    L1_2 = GetEntityCoords
    L2_2 = PlayerPedId
    L2_2, L3_2, L4_2, L5_2, L6_2, L7_2 = L2_2()
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
    L2_2 = GetGroundZFor_3dCoord
    L3_2 = L1_2.x
    L4_2 = L1_2.y
    L5_2 = L1_2.z
    L6_2 = true
    L2_2, L3_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
    if not L2_2 or not L3_2 then
      L3_2 = L1_2.z
    end
    L4_2 = vector3
    L5_2 = L1_2.x
    L6_2 = L1_2.y
    L7_2 = L3_2
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    A0_2 = L4_2
  end
  L1_2 = TriggerServerEvent
  L2_2 = "Casino:Jobs:DirtyStep"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
Cleaner_MakeDirtStepRequest = L6_1
function L6_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L7_2 = {}
  L8_2 = A0_2 or L8_2
  if not A0_2 then
    L8_2 = GetGameTimer
    L8_2 = L8_2()
  end
  L7_2.id = L8_2
  L7_2.model = A1_2
  L7_2.coords = A2_2
  L7_2.rotation = A3_2
  L8_2 = A4_2 or L8_2
  if not A4_2 then
    L8_2 = 10.0
  end
  L7_2.showUpDistance = L8_2
  L8_2 = A5_2 or L8_2
  if not A5_2 then
    L8_2 = 255
  end
  L7_2.alpha = L8_2
  L8_2 = A6_2 or L8_2
  if not A6_2 then
    L8_2 = 1
  end
  L7_2.removeMethod = L8_2
  L8_2 = table
  L8_2 = L8_2.insert
  L9_2 = L4_1
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
  L8_2 = GetEntityCoords
  L9_2 = PlayerPedId
  L9_2, L10_2, L11_2, L12_2 = L9_2()
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
  L8_2 = A2_2 - L8_2
  L8_2 = #L8_2
  if L8_2 < 5.0 then
    L9_2 = vector3
    L10_2 = 0
    L11_2 = 0
    L12_2 = 0
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    L3_1 = L9_2
  end
  return L7_2
end
Cleaner_AddNearbyDirt = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = pairs
  L2_2 = L4_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.id
    if L7_2 == A0_2 then
      L7_2 = L5_2
      L8_2 = L6_2
      return L7_2, L8_2
    end
  end
  L1_2 = nil
  return L1_2
end
Cleaner_FindDirtFromID = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = Cleaner_FindDirtFromID
  L2_2 = A0_2
  L1_2, L2_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2.destroyed = true
  L3_2 = L2_2.o
  if L3_2 then
    L3_2 = DoesEntityExist
    L4_2 = L2_2.o
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = DeleteEntity
      L4_2 = L2_2.o
      L3_2(L4_2)
    end
  end
  L3_2 = table
  L3_2 = L3_2.remove
  L4_2 = L4_1
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
end
Cleaner_RemoveDirt = L6_1
function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = GetEntityCoords
  L1_2 = PlayerPedId
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L1_2 = vector3
  L2_2 = 0
  L3_2 = 0
  L4_2 = 0
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L0_2 = L1_2
  L1_2 = GetGroundZFor_3dCoord
  L2_2 = L0_2.x
  L3_2 = L0_2.y
  L4_2 = L0_2.z
  L5_2 = true
  L1_2, L2_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  L3_2 = TriggerServerEvent
  L4_2 = "Casino:Jobs:CreateTrolly"
  L5_2 = vector3
  L6_2 = L0_2.x
  L7_2 = L0_2.y
  L8_2 = L2_2
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
Cleaner_OnEnter = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = GetEntityHeading
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = GetEntityCoords
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = GetEntityCoords
  L4_2 = PlayerPedId
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L4_2()
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L4_2 = GetEntityHeading
  L5_2 = PlayerPedId
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L5_2()
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L5_2 = GetObjectOffsetFromCoords
  L6_2 = L2_2
  L7_2 = L1_2
  L8_2 = 0.0
  L9_2 = -1.1
  L10_2 = -1.0
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L6_2 = GetObjectOffsetFromCoords
  L7_2 = L2_2
  L8_2 = L1_2
  L9_2 = 0.0
  L10_2 = -1.1
  L11_2 = -1.0
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  L7_2 = Repeat
  L8_2 = L1_2 + 180.0
  L9_2 = 360.0
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = L3_2 - L5_2
  L8_2 = #L8_2
  L9_2 = L3_2 - L6_2
  L9_2 = #L9_2
  L10_2 = math
  L10_2 = L10_2.abs
  L11_2 = L4_2 - L1_2
  L10_2 = L10_2(L11_2)
  L11_2 = math
  L11_2 = L11_2.abs
  L12_2 = L4_2 - L7_2
  L11_2 = L11_2(L12_2)
  if L10_2 < 30.0 then
    L12_2 = 3.1
    if L8_2 < L12_2 then
      L12_2 = 1
      return L12_2
  end
  else
    L12_2 = 3.1
    if L9_2 < L12_2 and L11_2 < 30.0 then
      L12_2 = 2
      return L12_2
    else
      L12_2 = 0
      return L12_2
    end
  end
end
CleanerJob_GetInteractionTypeFromCoords = L6_1
function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = GetEntityCoords
  L1_2 = PlayerPedId
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L1_2 = GetClosestObjectOfType
  L2_2 = L0_2.x
  L3_2 = L0_2.y
  L4_2 = L0_2.z
  L5_2 = 5.0
  L6_2 = Config
  L6_2 = L6_2.JobConsts
  L6_2 = L6_2.MissionModels
  L6_2 = L6_2.CleanerTrolly
  L7_2 = false
  L8_2 = false
  L9_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  if 0 == L1_2 then
    L1_2 = nil
  end
  return L1_2
end
CleanerJob_GetNearbyTrolly = L6_1
function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = GetEntityCoords
  L1_2 = PlayerPedId
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L1_2 = L3_1
  L1_2 = L1_2 - L0_2
  L1_2 = #L1_2
  if L1_2 > 5.0 then
    L2_2 = pairs
    L3_2 = L4_1
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L8_2 = L7_2.coords
      L8_2 = L8_2 - L0_2
      L8_2 = #L8_2
      L9_2 = L7_2.showUpDistance
      if L8_2 < L9_2 then
        L9_2 = L7_2.o
        if not L9_2 then
          L9_2 = RequestModelAndWait
          L10_2 = L7_2.model
          L9_2(L10_2)
          L9_2 = CreateObject
          L10_2 = GetHashKey
          L11_2 = L7_2.model
          L10_2 = L10_2(L11_2)
          L11_2 = L7_2.coords
          L12_2 = false
          L13_2 = false
          L14_2 = false
          L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
          L7_2.o = L9_2
          L9_2 = SetEntityCoordsNoOffset
          L10_2 = L7_2.o
          L11_2 = L7_2.coords
          L9_2(L10_2, L11_2)
          L9_2 = SetEntityRotation
          L10_2 = L7_2.o
          L11_2 = L7_2.rotation
          L12_2 = 2
          L9_2(L10_2, L11_2, L12_2)
          L9_2 = SetEntityAlpha
          L10_2 = L7_2.o
          L11_2 = L7_2.alpha
          L12_2 = false
          L9_2(L10_2, L11_2, L12_2)
        end
      else
        L9_2 = L7_2.o
        if L9_2 then
          L9_2 = DoesEntityExist
          L10_2 = L7_2.o
          L9_2 = L9_2(L10_2)
          if L9_2 then
            L9_2 = DeleteEntity
            L10_2 = L7_2.o
            L9_2(L10_2)
          end
        end
        L7_2.o = nil
      end
    end
    L3_1 = L0_2
  end
end
Cleaner_SpawnDirtAroundPlayerArea = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  if 1 == A0_2 then
    L1_2 = InfoPanel_UpdateNotification
    L2_2 = Translation
    L2_2 = L2_2.Get
    L3_2 = "CLEANER_PRESS_TO_CONTROL_TROLLY"
    L2_2, L3_2 = L2_2(L3_2)
    L1_2(L2_2, L3_2)
  elseif 2 == A0_2 then
    L1_2 = L1_1
    L1_2 = #L1_2
    if 0 == L1_2 then
      L1_2 = InfoPanel_UpdateNotification
      L2_2 = Translation
      L2_2 = L2_2.Get
      L3_2 = "CLEANER_PRESS_TO_GET_TOOLS"
      L2_2, L3_2 = L2_2(L3_2)
      L1_2(L2_2, L3_2)
    else
      L1_2 = InfoPanel_UpdateNotification
      L2_2 = Translation
      L2_2 = L2_2.Get
      L3_2 = "CLEANER_PRESS_TO_PUT_TOOLS"
      L2_2, L3_2 = L2_2(L3_2)
      L1_2(L2_2, L3_2)
    end
  end
end
Cleaner_ShowNotifyUI = L6_1
function L6_1()
  local L0_2, L1_2
  L0_2 = CloseAllMenus
  L0_2()
  L0_2 = nil
  L2_1 = L0_2
  L0_2 = ForgotLastStartedGameType
  L1_2 = "cleanertrollytools"
  L0_2(L1_2)
end
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = Wait
    L1_3 = 3000
    L0_3(L1_3)
    L0_3 = 255
    L1_3 = 0
    L2_3 = -50
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = Wait
      L5_3 = 500
      L4_3(L5_3)
      L4_3 = DoesEntityExist
      L5_3 = A0_2.o
      L4_3 = L4_3(L5_3)
      if L4_3 then
        L4_3 = SetEntityAlpha
        L5_3 = A0_2.o
        L6_3 = L3_3
        L7_3 = false
        L4_3(L5_3, L6_3, L7_3)
      end
    end
    L0_3 = Cleaner_RemoveDirt
    L1_3 = A0_2.id
    L0_3(L1_3)
    L0_3 = Wait
    L1_3 = 1500
    L0_3(L1_3)
    L0_3 = ClearPedTasks
    L1_3 = PlayerPedId
    L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3 = L1_3()
    L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3)
  end
  L3_2 = "SwipeUpDirt"
  L1_2(L2_2, L3_2)
end
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = pairs
  L1_2 = L1_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    if L5_2 then
      L6_2 = DeleteEntity
      L7_2 = L5_2
      L6_2(L7_2)
    end
  end
  L0_2 = {}
  L1_1 = L0_2
end
function L9_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3
    L0_3 = A0_2.coords
    L1_3 = A0_2.heading
    L2_3 = nil
    L3_3 = nil
    L4_3 = A1_2
    if "blackjack" ~= L4_3 then
      L4_3 = A1_2
      if "poker" ~= L4_3 then
        goto lbl_13
      end
    end
    L4_3 = Config
    L3_3 = L4_3.MissionPokerCleaningOffsets
    goto lbl_18
    ::lbl_13::
    L4_3 = A1_2
    if "roulette" == L4_3 then
      L4_3 = Config
      L3_3 = L4_3.MissionRouletteCleaningOffsets
    end
    ::lbl_18::
    if not L2_3 then
      return
    end
    L4_3 = GetHeadingTowardsCoords
    L5_3 = test
    L6_3 = L0_3
    L4_3 = L4_3(L5_3, L6_3)
    L5_3 = GetEntityCoords
    L6_3 = PlayerPedId
    L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3 = L6_3()
    L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
    L6_3 = GetDirectionOffsetBetweenCoords
    L7_3 = L0_3
    L8_3 = L1_3
    L9_3 = L5_3
    L6_3 = L6_3(L7_3, L8_3, L9_3)
    L7_3 = NormalizeVector3
    L8_3 = L6_3
    L7_3 = L7_3(L8_3)
    L6_3 = L7_3 * 1.5
    L7_3 = GetObjectOffsetFromCoords
    L8_3 = L0_3
    L9_3 = L1_3
    L10_3 = L6_3.x
    L11_3 = L6_3.y
    L12_3 = 1.0
    L7_3 = L7_3(L8_3, L9_3, L10_3, L11_3, L12_3)
    L8_3 = GetHeadingTowardsCoords
    L9_3 = L7_3
    L10_3 = L0_3
    L8_3 = L8_3(L9_3, L10_3)
    L9_3 = RequestAnimDictAndWait
    L10_3 = "timetable@maid@cleaning_surface@base"
    L9_3(L10_3)
    L9_3 = TaskPlayAnimAdvanced
    L10_3 = PlayerPedId
    L10_3 = L10_3()
    L11_3 = "timetable@maid@cleaning_surface@base"
    L12_3 = "base"
    L13_3 = L7_3
    L14_3 = vector3
    L15_3 = 0.0
    L16_3 = 0.0
    L17_3 = L8_3
    L14_3 = L14_3(L15_3, L16_3, L17_3)
    L15_3 = -8.0
    L16_3 = 8.0
    L17_3 = -1
    L18_3 = 563
    L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
    L9_3 = Wait
    L10_3 = 4000
    L9_3(L10_3)
    L9_3 = ClearPedTasks
    L10_3 = PlayerPedId
    L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3 = L10_3()
    L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
  end
  L2_2(L3_2)
end
function L10_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = L1_1
  L0_2 = #L0_2
  if 0 == L0_2 then
    return
  end
  L0_2 = InfoPanel_UpdateNotification
  L1_2 = nil
  L0_2(L1_2)
  LAST_INTERACTION_GAME = nil
  L0_2 = {}
  L1_2 = GetHashKey
  L2_2 = "prop_tool_broom"
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  L2_2.type = 1
  L2_2.description = "CLEANER_TOOLS_BROOM_TODO"
  L2_2.action = "CLEANER_DIRT_OVER_HERE"
  L2_2.proximity = 2.0
  L0_2[L1_2] = L2_2
  L1_2 = GetHashKey
  L2_2 = "prop_huf_rag_01"
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  L2_2.type = 2
  L2_2.description = "CLEANER_TOOLS_WASHCLOTH_TODO"
  L2_2.action = "CLEANER_DIRT_OVER_HERE_MESS"
  L2_2.proximity = 2.0
  L0_2[L1_2] = L2_2
  L1_2 = GetEntityModel
  L2_2 = L1_1
  L2_2 = L2_2[1]
  L1_2 = L1_2(L2_2)
  L2_2 = L0_2[L1_2]
  if not L2_2 then
    return
  end
  L3_2 = 0
  L4_2 = nil
  while true do
    L5_2 = IN_CASINO
    if not L5_2 then
      break
    end
    L5_2 = LAST_STARTED_GAME_TYPE
    if "cleanertrollycontrol" ~= L5_2 then
      break
    end
    L5_2 = L1_1
    L5_2 = #L5_2
    if not (L5_2 > 0) then
      break
    end
    L5_2 = Wait
    L6_2 = 0
    L5_2(L6_2)
    L5_2 = Translation
    L5_2 = L5_2.Get
    L6_2 = L2_2.description
    L5_2 = L5_2(L6_2)
    L6_2 = GetGameTimer
    L6_2 = L6_2()
    L6_2 = L6_2 - L3_2
    L7_2 = 2000
    if L6_2 > L7_2 then
      L6_2 = GetEntityCoords
      L7_2 = PlayerPedId
      L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L7_2()
      L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
      L7_2 = GetGameTimer
      L7_2 = L7_2()
      L3_2 = L7_2
      L7_2 = L2_2.type
      if 1 ~= L7_2 then
        L7_2 = L2_2.type
        if 2 ~= L7_2 then
          goto lbl_100
        end
      end
      L4_2 = nil
      L7_2 = pairs
      L8_2 = L4_1
      L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
      for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
        L13_2 = L12_2.removeMethod
        L14_2 = L2_2.type
        if L13_2 == L14_2 then
          L13_2 = L12_2.coords
          L13_2 = L13_2 - L6_2
          L13_2 = #L13_2
          L14_2 = L2_2.proximity
          if L13_2 < L14_2 then
            L4_2 = L12_2
            break
          end
        end
      end
    end
    ::lbl_100::
    if L4_2 then
      L6_2 = Translation
      L6_2 = L6_2.Get
      L7_2 = L2_2.action
      L6_2 = L6_2(L7_2)
      L5_2 = L6_2
    end
    L6_2 = IsDisabledControlJustReleased
    L7_2 = 0
    L8_2 = 46
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      L6_2 = CAN_INTERACT
      if L6_2 and L4_2 then
        L6_2 = L4_2.removeMethod
        if 2 == L6_2 then
          L6_2 = L4_2.forTable
          if L6_2 then
            L7_2 = TriggerServerEvent
            L8_2 = "Casino:Jobs:GameTableClean"
            L9_2 = L4_2.tableGame
            L10_2 = L6_2.coords
            L7_2(L8_2, L9_2, L10_2)
            L7_2 = L9_1
            L8_2 = L6_2
            L9_2 = L4_2.tableGame
            L7_2(L8_2, L9_2)
          end
        else
          L6_2 = L4_2.removeMethod
          if 1 == L6_2 then
            L6_2 = TriggerServerEvent
            L7_2 = "Casino:Jobs:DirtyStepClean"
            L8_2 = L4_2.id
            L6_2(L7_2, L8_2)
          end
        end
        L6_2 = BlockPlayerInteraction
        L7_2 = 6000
        L6_2(L7_2)
      end
    end
    if L5_2 then
      L6_2 = CAN_INTERACT
      if L6_2 then
        L6_2 = ShowHelpNotification
        L7_2 = L5_2
        L6_2(L7_2)
      end
    end
    L6_2 = IsDisabledControlJustReleased
    L7_2 = 0
    L8_2 = 202
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      L6_2 = CAN_INTERACT
      if L6_2 then
        L6_2 = L8_1
        L6_2()
      end
    end
  end
  L5_2 = IN_CASINO
  if not L5_2 then
    return
  end
  L5_2 = L8_1
  L5_2()
  L5_2 = ClearPedTasks
  L6_2 = PlayerPedId
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L6_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L5_2 = InfoPanel_Update
  L6_2 = nil
  L7_2 = nil
  L8_2 = nil
  L9_2 = nil
  L10_2 = nil
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L5_2 = InfoPanel_UpdateNotification
  L6_2 = nil
  L5_2(L6_2)
  L5_2 = ForgotLastStartedGameType
  L6_2 = "cleanertrollycontrol"
  L5_2(L6_2)
end
function L11_1()
  local L0_2, L1_2
  L0_2 = L8_1
  L0_2()
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3
    L0_3 = GetHashKey
    L1_3 = "prop_tool_broom"
    L0_3 = L0_3(L1_3)
    L1_3 = RequestModelAndWait
    L2_3 = L0_3
    L1_3(L2_3)
    L1_3 = IN_CASINO
    if not L1_3 then
      return
    end
    L1_3 = GetOffsetFromEntityInWorldCoords
    L2_3 = PlayerPedId
    L2_3 = L2_3()
    L3_3 = 0.0
    L4_3 = 0.0
    L5_3 = -5.0
    L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3)
    L2_3 = CreateObject
    L3_3 = L0_3
    L4_3 = 0
    L5_3 = 0
    L6_3 = 0
    L7_3 = true
    L8_3 = true
    L9_3 = true
    L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
    L3_3 = table
    L3_3 = L3_3.insert
    L4_3 = L1_1
    L5_3 = L2_3
    L3_3(L4_3, L5_3)
    L3_3 = SetModelAsNoLongerNeeded
    L4_3 = L0_3
    L3_3(L4_3)
    L3_3 = AttachEntityToEntity
    L4_3 = L2_3
    L5_3 = PlayerPedId
    L5_3 = L5_3()
    L6_3 = GetPedBoneIndex
    L7_3 = PlayerPedId
    L7_3 = L7_3()
    L8_3 = 28422
    L6_3 = L6_3(L7_3, L8_3)
    L7_3 = -0.005
    L8_3 = 0.0
    L9_3 = 0.0
    L10_3 = 360.0
    L11_3 = 360.0
    L12_3 = 0.0
    L13_3 = 1
    L14_3 = 1
    L15_3 = 0
    L16_3 = 1
    L17_3 = 0
    L18_3 = 1
    L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
    LAST_STARTED_GAME_TYPE = "cleanertrollycontrol"
    L3_3 = L10_1
    L3_3()
  end
  L0_2(L1_2)
end
function L12_1()
  local L0_2, L1_2
  L0_2 = L8_1
  L0_2()
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3
    L0_3 = GetHashKey
    L1_3 = "prop_huf_rag_01"
    L0_3 = L0_3(L1_3)
    L1_3 = RequestModelAndWait
    L2_3 = L0_3
    L1_3(L2_3)
    L1_3 = IN_CASINO
    if not L1_3 then
      return
    end
    L1_3 = GetOffsetFromEntityInWorldCoords
    L2_3 = PlayerPedId
    L2_3 = L2_3()
    L3_3 = 0.0
    L4_3 = 0.0
    L5_3 = -5.0
    L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3)
    L2_3 = CreateObject
    L3_3 = L0_3
    L4_3 = 0
    L5_3 = 0
    L6_3 = 0
    L7_3 = true
    L8_3 = true
    L9_3 = true
    L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
    L3_3 = table
    L3_3 = L3_3.insert
    L4_3 = L1_1
    L5_3 = L2_3
    L3_3(L4_3, L5_3)
    L3_3 = SetModelAsNoLongerNeeded
    L4_3 = L0_3
    L3_3(L4_3)
    L3_3 = AttachEntityToEntity
    L4_3 = L2_3
    L5_3 = PlayerPedId
    L5_3 = L5_3()
    L6_3 = GetPedBoneIndex
    L7_3 = PlayerPedId
    L7_3 = L7_3()
    L8_3 = 57005
    L6_3 = L6_3(L7_3, L8_3)
    L7_3 = 0.12
    L8_3 = 0.0
    L9_3 = -0.01
    L10_3 = 360.0
    L11_3 = 360.0
    L12_3 = 0.0
    L13_3 = 1
    L14_3 = 1
    L15_3 = 0
    L16_3 = 1
    L17_3 = 0
    L18_3 = 1
    L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
    LAST_STARTED_GAME_TYPE = "cleanertrollycontrol"
    L3_3 = L10_1
    L3_3()
  end
  L0_2(L1_2)
end
function L13_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  LAST_STARTED_GAME_TYPE = "cleanertrollytools"
  L0_2 = InfoPanel_UpdateNotification
  L1_2 = nil
  L0_2(L1_2)
  L0_2 = L2_1
  if not L0_2 then
    L0_2 = RageUI
    L0_2 = L0_2.CreateMenu
    L1_2 = ""
    L2_2 = Translation
    L2_2 = L2_2.Get
    L3_2 = "CLEANER_TOOLS_TITLE"
    L2_2 = L2_2(L3_2)
    L3_2 = 25
    L4_2 = 25
    L5_2 = "cleanerui_title_casino_banner"
    L6_2 = "cleanerui_title_casino_banner"
    L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2)
    L2_1 = L0_2
    L0_2 = RageUI
    L0_2 = L0_2.PoolMenus
    function L1_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3
      L1_3 = L2_1
      L2_3 = L1_3
      L1_3 = L1_3.IsVisible
      function L3_3(A0_4)
        local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4
        L2_4 = A0_4
        L1_4 = A0_4.AddButton
        L3_4 = Translation
        L3_4 = L3_4.Get
        L4_4 = "CLEANER_TOOLS_WASHCLOTH"
        L3_4 = L3_4(L4_4)
        L4_4 = Translation
        L4_4 = L4_4.Get
        L5_4 = "CLEANER_TOOLS_WASHCLOTH_DESC"
        L4_4 = L4_4(L5_4)
        L5_4 = {}
        L5_4.IsDisabled = false
        L6_4 = RageUI
        L6_4 = L6_4.ItemsColour
        L6_4 = L6_4.White
        L5_4.RightLabelColor = L6_4
        L6_4 = nil
        function L7_4()
          local L0_5, L1_5
          L0_5 = L12_1
          L0_5()
          L0_5 = L6_1
          L0_5()
        end
        L1_4(L2_4, L3_4, L4_4, L5_4, L6_4, L7_4)
        L2_4 = A0_4
        L1_4 = A0_4.AddButton
        L3_4 = Translation
        L3_4 = L3_4.Get
        L4_4 = "CLEANER_TOOLS_BROOM"
        L3_4 = L3_4(L4_4)
        L4_4 = Translation
        L4_4 = L4_4.Get
        L5_4 = "CLEANER_TOOLS_BROOM_DESC"
        L4_4 = L4_4(L5_4)
        L5_4 = {}
        L5_4.IsDisabled = false
        L6_4 = RageUI
        L6_4 = L6_4.ItemsColour
        L6_4 = L6_4.White
        L5_4.RightLabelColor = L6_4
        L6_4 = nil
        function L7_4()
          local L0_5, L1_5
          L0_5 = L11_1
          L0_5()
          L0_5 = L6_1
          L0_5()
        end
        L1_4(L2_4, L3_4, L4_4, L5_4, L6_4, L7_4)
      end
      function L4_3(A0_4)
        local L1_4
      end
      L1_3(L2_3, L3_3, L4_3)
    end
    L0_2.CleanerUI = L1_2
  end
  L0_2 = RageUI
  L0_2 = L0_2.Visible
  L1_2 = L2_1
  L2_2 = true
  L0_2(L1_2, L2_2)
end
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = nil
  L2_2 = pairs
  L3_2 = L0_1
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.trolly
    if L8_2 == A0_2 then
      L1_2 = L7_2.id
      L8_2 = L7_2.blip
      if L8_2 then
        L8_2 = SetBlipFlashes
        L9_2 = L7_2.blip
        L10_2 = false
        L8_2(L9_2, L10_2)
      end
      break
    end
  end
  if L1_2 then
    L2_2 = TriggerServerEvent
    L3_2 = "Casino:Jobs:AttachTrolly"
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
end
Cleaner_AttachTrollyRequest = L14_1
function L14_1()
  local L0_2, L1_2
  L0_2 = L1_1
  L0_2 = #L0_2
  if 0 == L0_2 then
    L0_2 = L13_1
    L0_2()
  end
end
Cleaner_OpenToolsRequest = L14_1
function L14_1()
  local L0_2, L1_2
  L0_2 = L2_1
  if L0_2 then
    L0_2 = L6_1
    L0_2()
    return
  end
end
Cleaner_QuitRequest = L14_1
function L14_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3
    L0_3 = A1_2
    L1_3 = PlayerPedId
    L1_3 = L1_3()
    L0_3 = L0_3 == L1_3
    L1_3 = A0_2.trolly
    L2_3 = SetEntityCollision
    L3_3 = L1_3
    L4_3 = false
    L5_3 = false
    L2_3(L3_3, L4_3, L5_3)
    L2_3 = A1_2
    A0_2.attachedToPedEntity = L2_3
    if L0_3 then
      L2_3 = L8_1
      L2_3()
      L2_3 = InfoPanel_Update
      L3_3 = nil
      L4_3 = nil
      L5_3 = nil
      L6_3 = nil
      L7_3 = nil
      L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
      L2_3 = InfoPanel_UpdateNotification
      L3_3 = nil
      L2_3(L3_3)
      LAST_STARTED_GAME_TYPE = "cleanertrollycontrol"
      L2_3 = RequestAnimDict
      L3_3 = "missfinale_c2ig_11"
      L2_3(L3_3)
      while true do
        L2_3 = HasAnimDictLoaded
        L3_3 = "missfinale_c2ig_11"
        L2_3 = L2_3(L3_3)
        if L2_3 then
          break
        end
        L2_3 = Wait
        L3_3 = 0
        L2_3(L3_3)
      end
      L2_3 = GetEntityCoords
      L3_3 = A1_2
      L2_3 = L2_3(L3_3)
      L3_3 = GetEntityRotation
      L4_3 = A1_2
      L3_3 = L3_3(L4_3)
      L4_3 = TaskPlayAnimAdvanced
      L5_3 = PlayerPedId
      L5_3 = L5_3()
      L6_3 = "missfinale_c2ig_11"
      L7_3 = "pushcar_offcliff_f"
      L8_3 = L2_3
      L9_3 = L3_3
      L10_3 = 3.0
      L11_3 = 3.0
      L12_3 = -1
      L13_3 = 51
      L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
    end
    L2_3 = 0
    L3_3 = GetEntityCoords
    L4_3 = L1_3
    L3_3 = L3_3(L4_3)
    L4_3 = GetEntityHeading
    L5_3 = L1_3
    L4_3 = L4_3(L5_3)
    L5_3 = 0
    while true do
      L6_3 = A0_2
      if not L6_3 then
        break
      end
      L6_3 = A0_2.attachedToPedEntity
      L7_3 = A1_2
      if L6_3 ~= L7_3 then
        break
      end
      L6_3 = Wait
      L7_3 = 0
      L6_3(L7_3)
      L6_3 = GetEntityCoords
      L7_3 = A1_2
      L6_3 = L6_3(L7_3)
      L7_3 = GetEntityHeading
      L8_3 = A1_2
      L7_3 = L7_3(L8_3)
      L8_3 = GetObjectOffsetFromCoords
      L9_3 = L6_3
      L10_3 = L7_3
      L11_3 = 0.0
      L11_3 = -L11_3
      L12_3 = 1.1
      L13_3 = -1.0
      L8_3 = L8_3(L9_3, L10_3, L11_3, L12_3, L13_3)
      if 0 == L2_3 then
        L2_3 = L8_3.z
      else
        L9_3 = GetGroundZFor_3dCoord_2
        L10_3 = L8_3.x
        L11_3 = L8_3.y
        L12_3 = L6_3.z
        L12_3 = L12_3 + 0.2
        L13_3 = 0
        L9_3, L10_3 = L9_3(L10_3, L11_3, L12_3, L13_3)
        L11_3 = Lerp
        L12_3 = L2_3
        L13_3 = L10_3
        L14_3 = 0.1
        L11_3 = L11_3(L12_3, L13_3, L14_3)
        L2_3 = L11_3
      end
      L9_3 = vector3
      L10_3 = L8_3.x
      L11_3 = L8_3.y
      L12_3 = L2_3
      L9_3 = L9_3(L10_3, L11_3, L12_3)
      L8_3 = L9_3
      L9_3 = SetEntityCoordsNoOffset
      L10_3 = L1_3
      L11_3 = L8_3
      L9_3(L10_3, L11_3)
      L9_3 = SetEntityHeading
      L10_3 = L1_3
      L11_3 = L7_3
      L9_3(L10_3, L11_3)
      if L0_3 then
        L9_3 = ShowHelpNotification
        L10_3 = Translation
        L10_3 = L10_3.Get
        L11_3 = "CLEANER_PRESS_TO_STOP_TROLLY"
        L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3 = L10_3(L11_3)
        L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3)
        L9_3 = vector3
        L10_3 = L8_3.x
        L11_3 = L8_3.y
        L12_3 = L8_3.z
        L12_3 = L12_3 + 1.6
        L9_3 = L9_3(L10_3, L11_3, L12_3)
        L10_3 = GetModelDimensions
        L11_3 = GetHashKey
        L12_3 = "prop_cleaning_trolly"
        L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3 = L11_3(L12_3)
        L10_3, L11_3 = L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3)
        L12_3 = StartShapeTestBox
        L13_3 = L9_3
        L14_3 = L11_3 - L10_3
        L15_3 = GetEntityRotation
        L16_3 = L1_3
        L17_3 = 2
        L15_3 = L15_3(L16_3, L17_3)
        L16_3 = 2
        L17_3 = 1
        L18_3 = L1_3
        L19_3 = 4
        L12_3 = L12_3(L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
        L13_3 = GetShapeTestResult
        L14_3 = L12_3
        L13_3, L14_3, L15_3, L16_3, L17_3 = L13_3(L14_3)
        if 0 == L14_3 then
          L3_3 = L8_3
          L4_3 = L7_3
        else
          L18_3 = GetGameTimer
          L18_3 = L18_3()
          L18_3 = L18_3 - L5_3
          L19_3 = 1000
          if L18_3 > L19_3 then
            L18_3 = GetGameTimer
            L18_3 = L18_3()
            L5_3 = L18_3
            L18_3 = TriggerServerEvent
            L19_3 = "Casino:Jobs:DetachTrolly"
            L20_3 = L3_3
            L21_3 = L4_3
            L18_3(L19_3, L20_3, L21_3)
          end
        end
        L18_3 = IsDisabledControlJustReleased
        L19_3 = 0
        L20_3 = 202
        L18_3 = L18_3(L19_3, L20_3)
        if L18_3 then
          L18_3 = TriggerServerEvent
          L19_3 = "Casino:Jobs:DetachTrolly"
          L20_3 = L3_3
          L21_3 = L4_3
          L18_3(L19_3, L20_3, L21_3)
        end
      end
    end
    L6_3 = SetEntityCollision
    L7_3 = L1_3
    L8_3 = true
    L9_3 = true
    L6_3(L7_3, L8_3, L9_3)
    if L0_3 then
      L6_3 = ClearPedTasks
      L7_3 = PlayerPedId
      L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3 = L7_3()
      L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3)
      L6_3 = InfoPanel_Update
      L7_3 = nil
      L8_3 = nil
      L9_3 = nil
      L10_3 = nil
      L11_3 = nil
      L6_3(L7_3, L8_3, L9_3, L10_3, L11_3)
      L6_3 = InfoPanel_UpdateNotification
      L7_3 = nil
      L6_3(L7_3)
      L6_3 = ForgotLastStartedGameType
      L7_3 = "cleanertrollycontrol"
      L6_3(L7_3)
    end
  end
  L2_2(L3_2)
end
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = pairs
  L2_2 = L0_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.id
    if L7_2 == A0_2 then
      L7_2 = L6_2.trolly
      if L7_2 then
        L7_2 = DoesEntityExist
        L8_2 = L6_2.trolly
        L7_2 = L7_2(L8_2)
        if L7_2 then
          L7_2 = DeleteEntity
          L8_2 = L6_2.trolly
          L7_2(L8_2)
        end
      end
      L7_2 = table
      L7_2 = L7_2.remove
      L8_2 = L0_1
      L9_2 = L5_2
      L7_2(L8_2, L9_2)
      break
    end
  end
end
function L16_1(A0_2)
  local L1_2, L2_2
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = RequestModelAndWait
    L1_3 = Config
    L1_3 = L1_3.JobConsts
    L1_3 = L1_3.MissionModels
    L1_3 = L1_3.CleanerTrolly
    L0_3(L1_3)
    L0_3 = IN_CASINO
    if not L0_3 then
      return
    end
    L0_3 = table
    L0_3 = L0_3.insert
    L1_3 = L0_1
    L2_3 = A0_2
    L0_3(L1_3, L2_3)
    L0_3 = CreateObject
    L1_3 = Config
    L1_3 = L1_3.JobConsts
    L1_3 = L1_3.MissionModels
    L1_3 = L1_3.CleanerTrolly
    L2_3 = A0_2.position
    L2_3 = L2_3.x
    L3_3 = A0_2.position
    L3_3 = L3_3.y
    L4_3 = A0_2.position
    L4_3 = L4_3.z
    L5_3 = false
    L6_3 = false
    L7_3 = false
    L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3)
    A0_2.trolly = L0_3
    L0_3 = GetPlayerServerId
    L1_3 = PlayerId
    L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3 = L1_3()
    L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3)
    L1_3 = A0_2.creator
    if L0_3 == L1_3 then
      L1_3 = SetCasinoBlip
      L2_3 = A0_2.trolly
      L3_3 = 783
      L4_3 = "Trolly"
      L5_3 = false
      L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3)
      A0_2.blip = L1_3
      L1_3 = SetBlipFlashes
      L2_3 = A0_2.blip
      L3_3 = true
      L1_3(L2_3, L3_3)
    end
    L1_3 = SetEntityCoordsNoOffset
    L2_3 = A0_2.trolly
    L3_3 = A0_2.position
    L3_3 = L3_3.x
    L4_3 = A0_2.position
    L4_3 = L4_3.y
    L5_3 = A0_2.position
    L5_3 = L5_3.z
    L1_3(L2_3, L3_3, L4_3, L5_3)
    L1_3 = SetEntityHeading
    L2_3 = A0_2.trolly
    L3_3 = A0_2.heading
    L1_3(L2_3, L3_3)
    L1_3 = FreezeEntityPosition
    L2_3 = A0_2.trolly
    L3_3 = true
    L1_3(L2_3, L3_3)
  end
  L1_2(L2_2)
end
function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = 1
  L2_2 = L0_1
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L0_1
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2.id
    if L5_2 == A0_2 then
      L5_2 = L0_1
      L5_2 = L5_2[L4_2]
      return L5_2
    end
  end
  L1_2 = nil
  return L1_2
end
function L18_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = pairs
  L1_2 = L0_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = L5_2.trolly
    if L6_2 then
      L6_2 = DeleteEntity
      L7_2 = L5_2.trolly
      L6_2(L7_2)
    end
  end
  L0_2 = pairs
  L1_2 = L4_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = L5_2.o
    if L6_2 then
      L6_2 = DoesEntityExist
      L7_2 = L5_2.o
      L6_2 = L6_2(L7_2)
      if L6_2 then
        L6_2 = DeleteEntity
        L7_2 = L5_2.o
        L6_2(L7_2)
      end
    end
  end
  L0_2 = L8_1
  L0_2()
end
Cleaner_CleanUp = L18_1
L18_1 = RegisterNetEvent
L19_1 = "Casino:Jobs:DirtyStepSpawned"
L18_1(L19_1)
L18_1 = AddEventHandler
L19_1 = "Casino:Jobs:DirtyStepSpawned"
function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = Cleaner_AddNearbyDirt
  L2_2 = A0_2.id
  L3_2 = "prop_rub_litter_03c"
  L4_2 = A0_2.coords
  L5_2 = nil
  L6_2 = 10.0
  L7_2 = 255
  L8_2 = 1
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end
L18_1(L19_1, L20_1)
L18_1 = RegisterNetEvent
L19_1 = "Casino:Jobs:DirtyStepCleaned"
L18_1(L19_1)
L18_1 = AddEventHandler
L19_1 = "Casino:Jobs:DirtyStepCleaned"
function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = Cleaner_FindDirtFromID
  L3_2 = A0_2
  L2_2, L3_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L4_2 = L3_2.o
  if L4_2 then
    L4_2 = DoesEntityExist
    L5_2 = L3_2.o
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L4_2 = L7_1
      L5_2 = L3_2
      L4_2(L5_2)
  end
  else
    L4_2 = Cleaner_RemoveDirt
    L5_2 = A0_2
    L4_2(L5_2)
  end
  L4_2 = GetPlayerServerId
  L5_2 = PlayerId
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L5_2()
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  if A1_2 == L4_2 then
    L5_2 = SetEntityCoordsNoOffset
    L6_2 = PlayerPedId
    L6_2 = L6_2()
    L7_2 = vector3
    L8_2 = L3_2.coords
    L8_2 = L8_2.x
    L9_2 = L3_2.coords
    L9_2 = L9_2.y
    L10_2 = L3_2.coords
    L10_2 = L10_2.z
    L10_2 = L10_2 + 1.0
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L7_2(L8_2, L9_2, L10_2)
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    L5_2 = RequestAnimDictAndWait
    L6_2 = "amb@world_human_janitor@male@idle_a"
    L5_2(L6_2)
    L5_2 = TaskPlayAnim
    L6_2 = PlayerPedId
    L6_2 = L6_2()
    L7_2 = "amb@world_human_janitor@male@idle_a"
    L8_2 = "idle_a"
    L9_2 = 8.0
    L10_2 = -8.0
    L11_2 = -1
    L12_2 = 0
    L13_2 = 0
    L14_2 = false
    L15_2 = false
    L16_2 = false
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  end
end
L18_1(L19_1, L20_1)
L18_1 = RegisterNetEvent
L19_1 = "Casino:Jobs:DirtLevelChanged"
L18_1(L19_1)
L18_1 = AddEventHandler
L19_1 = "Casino:Jobs:DirtLevelChanged"
function L20_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  if "blackjack" == A0_2 then
    L4_2 = Blackjack_DirtChangedAtCoords
    L5_2 = A1_2
    L6_2 = A2_2
    L7_2 = A3_2
    L4_2(L5_2, L6_2, L7_2)
  elseif "roulette" == A0_2 then
    L4_2 = Roulette_DirtChangedAtCoords
    L5_2 = A1_2
    L6_2 = A2_2
    L7_2 = A3_2
    L4_2(L5_2, L6_2, L7_2)
  elseif "poker" == A0_2 then
    L4_2 = Poker_DirtChangedAtCoords
    L5_2 = A1_2
    L6_2 = A2_2
    L7_2 = A3_2
    L4_2(L5_2, L6_2, L7_2)
  end
end
L18_1(L19_1, L20_1)
L18_1 = RegisterNetEvent
L19_1 = "Casino:Jobs:CreateTrolly"
L18_1(L19_1)
L18_1 = AddEventHandler
L19_1 = "Casino:Jobs:CreateTrolly"
function L20_1(A0_2)
  local L1_2, L2_2
  L1_2 = L16_1
  L2_2 = A0_2
  L1_2(L2_2)
end
L18_1(L19_1, L20_1)
L18_1 = RegisterNetEvent
L19_1 = "Casino:Jobs:AttachTrolly"
L18_1(L19_1)
L18_1 = AddEventHandler
L19_1 = "Casino:Jobs:AttachTrolly"
function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = L17_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L3_2 = GetPlayerFromServerId
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = GetPlayerPed
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = L14_1
  L6_2 = L2_2
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
end
L18_1(L19_1, L20_1)
L18_1 = RegisterNetEvent
L19_1 = "Casino:Jobs:DetachTrolly"
L18_1(L19_1)
L18_1 = AddEventHandler
L19_1 = "Casino:Jobs:DetachTrolly"
function L20_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = L17_1
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  L3_2.attachedToPedEntity = false
  L4_2 = SetEntityCoordsNoOffset
  L5_2 = L3_2.trolly
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  L4_2 = SetEntityHeading
  L5_2 = L3_2.trolly
  L6_2 = A2_2
  L4_2(L5_2, L6_2)
end
L18_1(L19_1, L20_1)
L18_1 = RegisterNetEvent
L19_1 = "Casino:Jobs:DestroyTrolly"
L18_1(L19_1)
L18_1 = AddEventHandler
L19_1 = "Casino:Jobs:DestroyTrolly"
function L20_1(A0_2)
  local L1_2, L2_2
  L1_2 = L15_1
  L2_2 = A0_2
  L1_2(L2_2)
end
L18_1(L19_1, L20_1)
