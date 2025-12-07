local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = {}
L1_1 = false
L2_1 = nil
L3_1 = GetGameTimer
L3_1 = L3_1()
L3_1 = L3_1 + 5000
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = DebugStart
  L3_2 = "CreateContinualMovement"
  L2_2(L3_2)
  L2_2 = {}
  L2_2.active = true
  L3_2 = CreateThread
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L0_3 = 0
    while true do
      L1_3 = A1_2
      L1_3 = #L1_3
      if not (L0_3 < L1_3) then
        break
      end
      L1_3 = IN_CASINO
      if not L1_3 then
        break
      end
      L1_3 = L2_2.active
      if not L1_3 then
        break
      end
      L0_3 = L0_3 + 1
      L1_3 = A1_2
      L1_3 = #L1_3
      if L0_3 <= L1_3 then
        L1_3 = TaskGoStraightToCoord
        L2_3 = A0_2
        L3_3 = A1_2
        L3_3 = L3_3[L0_3]
        L3_3 = L3_3[1]
        L4_3 = A1_2
        L4_3 = L4_3[L0_3]
        L4_3 = L4_3[2]
        L5_3 = A1_2
        L5_3 = L5_3[L0_3]
        L5_3 = L5_3[3]
        L6_3 = 1.0
        L7_3 = 3.0
        L8_3 = 0.0
        L9_3 = 0
        L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
        L1_3 = WaitForPedOnCoords
        L2_3 = A0_2
        L3_3 = vector3
        L4_3 = table
        L4_3 = L4_3.unpack
        L5_3 = A1_2
        L5_3 = L5_3[L0_3]
        L4_3, L5_3, L6_3, L7_3, L8_3, L9_3 = L4_3(L5_3)
        L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
        L4_3 = 1.7
        L5_3 = 3500
        L1_3(L2_3, L3_3, L4_3, L5_3)
        L1_3 = GetEntityCoords
        L2_3 = A0_2
        L1_3 = L1_3(L2_3)
        L2_3 = vector3
        L3_3 = table
        L3_3 = L3_3.unpack
        L4_3 = A1_2
        L4_3 = L4_3[L0_3]
        L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3 = L3_3(L4_3)
        L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
        L1_3 = L1_3 - L2_3
        L1_3 = #L1_3
        L2_3 = 2.5
        if L1_3 > L2_3 then
          L2_3 = SetEntityCoordsNoOffset
          L3_3 = A0_2
          L4_3 = vector3
          L5_3 = table
          L5_3 = L5_3.unpack
          L6_3 = A1_2
          L6_3 = L6_3[L0_3]
          L5_3, L6_3, L7_3, L8_3, L9_3 = L5_3(L6_3)
          L4_3, L5_3, L6_3, L7_3, L8_3, L9_3 = L4_3(L5_3, L6_3, L7_3, L8_3, L9_3)
          L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
        end
      end
      L1_3 = Wait
      L2_3 = 66
      L1_3(L2_3)
      L1_3 = A1_2
      L1_3 = #L1_3
      if L0_3 >= L1_3 then
        L0_3 = 0
      end
    end
  end
  L5_2 = "movement path for the casino waitresses"
  L3_2(L4_2, L5_2)
  return L2_2
end
CreateContinualMovement = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L6_2 = IN_CASINO
  if not L6_2 then
    return
  end
  L6_2 = DebugStart
  L7_2 = "PlaySynchronizedSceneOnPed"
  L6_2(L7_2)
  L6_2 = HasAnimDictLoaded
  L7_2 = A3_2
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L6_2 = RequestAnimDictAndWait
    L7_2 = A3_2
    L6_2(L7_2)
  end
  L6_2 = CreateSynchronizedScene
  L7_2 = A1_2
  L8_2 = A2_2
  L9_2 = 0
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = TaskSynchronizedScene
  L8_2 = A0_2
  L9_2 = L6_2
  L10_2 = A3_2
  L11_2 = A4_2
  L12_2 = 2.0
  L13_2 = -1.5
  L14_2 = 13
  L15_2 = 16
  L16_2 = 2.0
  L17_2 = 0
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L7_2 = SetSynchronizedSceneLooped
  L8_2 = L6_2
  L9_2 = A5_2 or L9_2
  if not A5_2 or not A5_2 then
    L9_2 = false
  end
  L7_2(L8_2, L9_2)
  if "elev_2" == A4_2 then
    L7_2 = SetSynchronizedScenePhase
    L8_2 = L6_2
    L9_2 = 0.3
    L7_2(L8_2, L9_2)
  end
  return L6_2
end
PlaySynchronizedSceneOnPed = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = DebugStart
  L1_2 = "ScenePed_AnnounceEnd"
  L0_2(L1_2)
  L0_2 = TriggerServerEvent
  L1_2 = "ScenePed:StopScene"
  L0_2(L1_2)
end
ScenePed_AnnounceEnd = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L5_2 = IN_CASINO
  if not L5_2 then
    return
  end
  if not A3_2 or not A2_2 then
    return
  end
  L5_2 = L1_1
  if not L5_2 then
    return
  end
  L5_2 = DebugStart
  L6_2 = "PlaySynchronizedScene"
  L5_2(L6_2)
  L5_2 = DoesAnimDictExist
  L6_2 = A2_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    return
  end
  L5_2 = HasAnimDictLoaded
  L6_2 = A2_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = CreateThread
    function L6_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
      L0_3 = RequestAnimDictAndWait
      L1_3 = A2_2
      L0_3(L1_3)
      L0_3 = PlaySynchronizedScene
      L1_3 = A0_2
      L2_3 = A1_2
      L3_3 = A2_2
      L4_3 = A3_2
      L5_3 = A4_2
      L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
    end
    L7_2 = "if anim dict was somehow unloaded"
    L5_2(L6_2, L7_2)
    return
  end
  L5_2 = GetMyPedNetworkId
  L5_2 = L5_2()
  if not L5_2 then
    return
  end
  L6_2 = PlaySynchronizedSceneOnPed
  L7_2 = PlayerPedId
  L7_2 = L7_2()
  L8_2 = A0_2
  L9_2 = A1_2
  L10_2 = A2_2
  L11_2 = A3_2
  L12_2 = A4_2
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L7_2 = TriggerServerEvent
  L8_2 = "ScenePed:ShowScene"
  L9_2 = L5_2
  L10_2 = A0_2
  L11_2 = A1_2
  L12_2 = A2_2
  L13_2 = A3_2
  L14_2 = A4_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  return L6_2
end
PlaySynchronizedScene = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = nil
  L2_1 = L0_2
end
ClearSceneEvent = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L5_2 = IN_CASINO
  if not L5_2 then
    return
  end
  L5_2 = DebugStart
  L6_2 = "CreateNewSceneEndEvent"
  L5_2(L6_2)
  L5_2 = L2_1
  if nil ~= L5_2 then
    L5_2 = L2_1.finished
    if not L5_2 then
      L2_1.cancelled = true
    end
  end
  if nil ~= A0_2 then
    L5_2 = CreateSceneEndEvent
    L6_2 = A0_2
    L7_2 = A1_2
    L8_2 = A2_2
    L9_2 = A3_2
    L10_2 = A4_2
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    L2_1 = L5_2
  end
end
CreateNewSceneEndEvent = L4_1
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = DebugStart
  L1_2 = "DestroyAllScenePeds"
  L0_2(L1_2)
  L0_2 = pairs
  L1_2 = L0_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = Config
    L6_2 = L6_2.VoiceTweak
    if L6_2 then
      L6_2 = L5_2.ped
      if L6_2 then
        L6_2 = SetEntityAlpha
        L7_2 = L5_2.ped
        L8_2 = 255
        L6_2(L7_2, L8_2)
      end
    end
    L6_2 = DeleteEntity
    L7_2 = L5_2.clone
    L6_2(L7_2)
  end
  L0_2 = {}
  L0_1 = L0_2
end
DestroyAllScenePeds = L4_1
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = Config
  L0_2 = L0_2.VoiceTweak
  if L0_2 then
    L0_2 = pairs
    L1_2 = L0_1
    L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
    for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
      L6_2 = L5_2.ped
      if L6_2 then
        L6_2 = SetEntityAlpha
        L7_2 = L5_2.ped
        L8_2 = 0
        L6_2(L7_2, L8_2)
      end
    end
  else
    L0_2 = pairs
    L1_2 = L0_1
    L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
    for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
      L6_2 = L5_2.ped
      if L6_2 then
        L6_2 = SetEntityLocallyInvisible
        L7_2 = L5_2.ped
        L6_2(L7_2)
      end
    end
  end
  L0_2 = GetGameTimer
  L0_2 = L0_2()
  L1_2 = L3_1
  if L0_2 > L1_2 then
    L1_2 = L0_2 + 3000
    L3_1 = L1_2
    L1_2 = pairs
    L2_2 = L0_1
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = L6_2.ped
      if L7_2 then
        L7_2 = GetEntityCoords
        L8_2 = L6_2.ped
        L7_2 = L7_2(L8_2)
        L8_2 = L6_2.initialCoords
        L7_2 = L7_2 - L8_2
        L7_2 = #L7_2
        L8_2 = 1.8
        if L7_2 > L8_2 then
          L8_2 = ScenePed_EndForPlayer
          L9_2 = L6_2.playerId
          L8_2(L9_2)
        end
      end
    end
  end
end
ScenePed_ProcessPedsShisFrame = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if not A0_2 or not A1_2 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = L0_1
  L2_2 = L2_2[A0_2]
  if L2_2 then
    L3_2 = L2_2.netId
    if L3_2 == A1_2 then
      L3_2 = L2_2.clone
      if L3_2 then
        L3_2 = DoesEntityExist
        L4_2 = L2_2.clone
        L3_2 = L3_2(L4_2)
        if L3_2 then
          L3_2 = L2_2.clone
          return L3_2
        end
      end
    else
      L3_2 = L2_2.clone
      if L3_2 then
        L3_2 = DoesEntityExist
        L4_2 = L2_2.clone
        L3_2 = L3_2(L4_2)
        if L3_2 then
          L3_2 = DeleteEntity
          L4_2 = L2_2.clone
          L3_2(L4_2)
          L2_2.clone = nil
        end
      end
    end
  end
  L3_2 = NetToPed
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if not L3_2 or 0 == L3_2 then
    L4_2 = nil
    return L4_2
  end
  L4_2 = GetEntityModel
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if 0 ~= L4_2 then
    L5_2 = 1
    L6_2 = 60
    L7_2 = 1
    for L8_2 = L5_2, L6_2, L7_2 do
      L9_2 = HasModelLoaded
      L10_2 = L4_2
      L9_2 = L9_2(L10_2)
      if L9_2 then
        break
      end
      L9_2 = RequestModel
      L10_2 = L4_2
      L9_2(L10_2)
      L9_2 = Wait
      L10_2 = 33
      L9_2(L10_2)
    end
  else
    L5_2 = print
    L6_2 = "^1Error: Model of playerid "
    L7_2 = A0_2
    L8_2 = " can't be loaded.^7"
    L6_2 = L6_2 .. L7_2 .. L8_2
    L5_2(L6_2)
  end
  L5_2 = HasModelLoaded
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = print
    L6_2 = "^1Error: Model "
    L7_2 = L4_2
    L8_2 = " of playerid "
    L9_2 = A0_2
    L10_2 = " didn't load.^7"
    L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2
    L5_2(L6_2)
    L5_2 = nil
    return L5_2
  end
  L5_2 = nil
  L6_2 = HasPedHeadBlendFinished
  L7_2 = L3_2
  L6_2 = L6_2(L7_2)
  if L6_2 then
    L6_2 = ClonePed
    L7_2 = L3_2
    L8_2 = false
    L9_2 = false
    L10_2 = true
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
    L5_2 = L6_2
  end
  L6_2 = L0_1
  L7_2 = {}
  L7_2.playerId = A0_2
  L7_2.netId = A1_2
  L7_2.ped = L3_2
  L7_2.clone = L5_2
  L8_2 = GetEntityCoords
  L9_2 = L3_2
  L8_2 = L8_2(L9_2)
  L7_2.initialCoords = L8_2
  L6_2[A0_2] = L7_2
  L6_2 = Wait
  L7_2 = 33
  L6_2(L7_2)
  L6_2 = GetGameTimer
  L6_2 = L6_2()
  L6_2 = L6_2 + 1000
  while L5_2 do
    L7_2 = DoesEntityExist
    L8_2 = L5_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      break
    end
    L7_2 = GetGameTimer
    L7_2 = L7_2()
    if not (L6_2 > L7_2) then
      break
    end
    L7_2 = Wait
    L8_2 = 33
    L7_2(L8_2)
  end
  if L5_2 then
    L7_2 = DoesEntityExist
    L8_2 = L5_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      goto lbl_167
    end
  end
  L7_2 = _ClonePed
  L8_2 = L3_2
  L7_2 = L7_2(L8_2)
  L5_2 = L7_2
  L7_2 = L0_1
  L7_2 = L7_2[A0_2]
  L7_2.clone = L5_2
  L7_2 = GetGameTimer
  L7_2 = L7_2()
  L6_2 = L7_2 + 1000
  while true do
    L7_2 = DoesEntityExist
    L8_2 = L5_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      break
    end
    L7_2 = GetGameTimer
    L7_2 = L7_2()
    if not (L6_2 > L7_2) then
      break
    end
    L7_2 = Wait
    L8_2 = 33
    L7_2(L8_2)
  end
  ::lbl_167::
  L7_2 = DoesEntityExist
  L8_2 = L5_2
  L7_2 = L7_2(L8_2)
  if not L7_2 then
    L7_2 = print
    L8_2 = "^1Error: Ped for player "
    L9_2 = A0_2
    L10_2 = " couldn't be created.^7"
    L8_2 = L8_2 .. L9_2 .. L10_2
    L7_2(L8_2)
  end
  L7_2 = SetEntityCoordsNoOffset
  L8_2 = L5_2
  L9_2 = GetEntityCoords
  L10_2 = L3_2
  L9_2, L10_2 = L9_2(L10_2)
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = SetEntityRotation
  L8_2 = L5_2
  L9_2 = GetEntityRotation
  L10_2 = L3_2
  L9_2, L10_2 = L9_2(L10_2)
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = SetEntityHeading
  L8_2 = L5_2
  L9_2 = GetEntityHeading
  L10_2 = L3_2
  L9_2, L10_2 = L9_2(L10_2)
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = SetEntityNoCollisionEntity
  L8_2 = L5_2
  L9_2 = L3_2
  L10_2 = false
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = Wait
  L8_2 = 33
  L7_2(L8_2)
  return L5_2
end
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L4_1
  L3_2 = A0_2
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
ScenePed_ForceUseForPlayer = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = IN_CASINO
  if not L1_2 then
    return
  end
  L1_2 = L1_1
  if not L1_2 then
    return
  end
  L1_2 = L0_1
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    return
  end
  L2_2 = L1_2.netId
  L3_2 = L1_2.clone
  L4_2 = L1_2.clone
  if L4_2 then
    L4_2 = L1_2.ped
    L1_2.ped = nil
    L5_2 = Wait
    L6_2 = 33
    L5_2(L6_2)
    L5_2 = Config
    L5_2 = L5_2.VoiceTweak
    if L5_2 then
      L5_2 = SetEntityAlpha
      L6_2 = L4_2
      L7_2 = 255
      L5_2(L6_2, L7_2)
      L5_2 = CreateThread
      function L6_2()
        local L0_3, L1_3, L2_3
        L0_3 = Wait
        L1_3 = 100
        L0_3(L1_3)
        L0_3 = SetEntityAlpha
        L1_3 = L4_2
        L2_3 = 255
        L0_3(L1_3, L2_3)
      end
      L7_2 = "ScenePed_EndForPlayer"
      L5_2(L6_2, L7_2)
    end
    L5_2 = DeleteEntity
    L6_2 = L1_2.clone
    L5_2(L6_2)
    L1_2.clone = nil
  end
  L4_2 = L0_1
  L4_2[A0_2] = nil
end
ScenePed_EndForPlayer = L5_1
L5_1 = RegisterNetEvent
L6_1 = "ScenePed:SceneStarted"
L5_1(L6_1)
L5_1 = AddEventHandler
L6_1 = "ScenePed:SceneStarted"
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = IN_CASINO
  if not L1_2 then
    return
  end
  L1_2 = L1_1
  if not L1_2 then
    return
  end
  L1_2 = GetMyPedNetworkId
  L1_2 = L1_2()
  if not L1_2 then
    return
  end
  L2_2 = A0_2.netId
  if L2_2 == L1_2 then
    return
  end
  L2_2 = DoesAnimDictExist
  L3_2 = A0_2.animDict
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = HasAnimDictLoaded
  L3_2 = A0_2.animDict
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = RequestAnimDictAndWait
    L3_2 = A0_2.animDict
    L2_2(L3_2)
  end
  L2_2 = GetAnimDuration
  L3_2 = A0_2.animDict
  L4_2 = A0_2.animName
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = 0.1
  if L2_2 < L3_2 then
    return
  end
  L2_2 = L4_1
  L3_2 = A0_2.playerId
  L4_2 = A0_2.netId
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 or -1 == L2_2 then
    return
  end
  L3_2 = PlaySynchronizedSceneOnPed
  L4_2 = L2_2
  L5_2 = A0_2.coords
  L6_2 = A0_2.rot
  L7_2 = A0_2.animDict
  L8_2 = A0_2.animName
  L9_2 = A0_2.isLooped
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNetEvent
L6_1 = "ScenePed:SceneEnded"
L5_1(L6_1)
L5_1 = AddEventHandler
L6_1 = "ScenePed:SceneEnded"
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = IN_CASINO
  if not L1_2 then
    return
  end
  L1_2 = ScenePed_EndForPlayer
  L2_2 = A0_2
  L1_2(L2_2)
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNetEvent
L6_1 = "ScenePed:GetStates"
L5_1(L6_1)
L5_1 = AddEventHandler
L6_1 = "ScenePed:GetStates"
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = IN_CASINO
  if not L2_2 then
    return
  end
  L2_2 = ScenePeds_Reset
  L2_2()
  MY_PLAYERID = A1_2
  if nil == A0_2 then
    return
  end
  L2_2 = GetMyPedNetworkId
  L2_2 = L2_2()
  if not L2_2 then
    return
  end
  L3_2 = pairs
  L4_2 = A0_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.netId
    if L9_2 == L2_2 then
    else
      L9_2 = DoesAnimDictExist
      L10_2 = L8_2.animDict
      L9_2 = L9_2(L10_2)
      if not L9_2 then
      else
        L9_2 = HasAnimDictLoaded
        L10_2 = L8_2.animDict
        L9_2 = L9_2(L10_2)
        if not L9_2 then
          L9_2 = RequestAnimDictAndWait
          L10_2 = L8_2.animDict
          L9_2(L10_2)
        end
        L9_2 = GetAnimDuration
        L10_2 = L8_2.animDict
        L11_2 = L8_2.animName
        L9_2 = L9_2(L10_2, L11_2)
        L10_2 = 0.1
        if L9_2 < L10_2 then
        else
          L9_2 = L4_1
          L10_2 = L8_2.playerId
          L11_2 = L8_2.netId
          L9_2 = L9_2(L10_2, L11_2)
          if L9_2 and -1 ~= L9_2 then
            L10_2 = PlaySynchronizedSceneOnPed
            L11_2 = L9_2
            L12_2 = L8_2.coords
            L13_2 = L8_2.rot
            L14_2 = L8_2.animDict
            L15_2 = L8_2.animName
            L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
          end
        end
      end
    end
  end
  L3_2 = true
  L1_1 = L3_2
end
L5_1(L6_1, L7_1)
function L5_1()
  local L0_2, L1_2
  L0_2 = DestroyAllScenePeds
  L0_2()
end
ScenePeds_Reset = L5_1
L5_1 = AddEventHandler
L6_1 = "onResourceStop"
function L7_1(A0_2)
  local L1_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if L1_2 ~= A0_2 then
    return
  end
  L1_2 = DestroyAllScenePeds
  L1_2()
end
L5_1(L6_1, L7_1)
function L5_1()
  local L0_2, L1_2
  L0_2 = TriggerServerEvent
  L1_2 = "ScenePed:GetStates"
  L0_2(L1_2)
end
ScenePed_Start = L5_1
function L5_1()
  local L0_2, L1_2, L2_2
  L0_2 = PedToNet
  L1_2 = PlayerPedId
  L1_2, L2_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2)
  L1_2 = NetToPed
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  if L1_2 == L2_2 then
    return L0_2
  else
    L1_2 = nil
    return L1_2
  end
end
GetMyPedNetworkId = L5_1
function L5_1()
  local L0_2, L1_2
  L0_2 = MY_PLAYERID
  if L0_2 then
    L0_2 = MY_PLAYERID
    return L0_2
  end
  L0_2 = GetPlayerServerId
  L1_2 = PlayerId
  L1_2 = L1_2()
  return L0_2(L1_2)
end
GetMyPlayerId = L5_1
