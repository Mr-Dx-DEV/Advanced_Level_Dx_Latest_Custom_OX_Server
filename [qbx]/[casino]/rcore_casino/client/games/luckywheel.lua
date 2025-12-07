local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1, L41_1, L42_1, L43_1, L44_1, L45_1, L46_1
L0_1 = LUCKY_WHEEL_COORDS
L1_1 = LUCKY_WHEEL_HEADING
L2_1 = true
L3_1 = {}
L4_1 = nil
L5_1 = nil
L3_1[1] = L4_1
L3_1[2] = L5_1
L4_1 = {}
L5_1 = nil
L6_1 = nil
L4_1[1] = L5_1
L4_1[2] = L6_1
L5_1 = nil
L6_1 = nil
L7_1 = GetHashKey
L8_1 = "vw_prop_vw_luckylight_on"
L7_1 = L7_1(L8_1)
L8_1 = GetHashKey
L9_1 = "vw_prop_vw_luckylight_off"
L8_1 = L8_1(L9_1)
L9_1 = GetHashKey
L10_1 = "vw_prop_vw_jackpot_on"
L9_1 = L9_1(L10_1)
L10_1 = GetHashKey
L11_1 = "vw_prop_vw_jackpot_off"
L10_1 = L10_1(L11_1)
L11_1 = GetHashKey
L12_1 = "vw_prop_vw_luckywheel_01a"
L11_1 = L11_1(L12_1)
L12_1 = GetHashKey
L13_1 = Config
L13_1 = L13_1.MapType
if 4 == L13_1 then
  L13_1 = "vw_prop_vw_luckywheel_03a"
  if L13_1 then
    goto lbl_38
  end
end
L13_1 = "vw_prop_vw_luckywheel_02a"
::lbl_38::
L12_1 = L12_1(L13_1)
L13_1 = "anim_casino_a@amb@casino@games@lucky7wheel@male"
L14_1 = nil
L15_1 = 0
L16_1 = nil
L17_1 = false
L18_1 = false
L19_1 = 0
L20_1 = nil
L21_1 = 0
L22_1 = 0
L23_1 = true
L24_1 = {}
function L25_1()
  local L0_2, L1_2
  L0_2 = DebugStart
  L1_2 = "StopPlaying"
  L0_2(L1_2)
  L0_2 = "Nothing"
  L16_1 = L0_2
  L0_2 = false
  L17_1 = L0_2
  L0_2 = 0
  L19_1 = L0_2
  L0_2 = nil
  L20_1 = L0_2
  L0_2 = 0
  L21_1 = L0_2
  L0_2 = 0
  L22_1 = L0_2
  L0_2 = Stats_EndActivity
  L0_2()
  L0_2 = ClearPedTasks
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L0_2(L1_2)
  L0_2 = ClearPedSecondaryTask
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L0_2(L1_2)
  L0_2 = ForgotLastInteractionEntity
  L0_2()
  L0_2 = ForgotLastStartedGameType
  L1_2 = "luckywheel"
  L0_2(L1_2)
  L0_2 = ScenePed_AnnounceEnd
  L0_2()
end
function L26_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = DebugStart
  L2_2 = "MakeAnimationTimeout"
  L1_2(L2_2)
  L1_2 = GetAnimDuration
  L2_2 = L13_1
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2 * 1000
  L1_2 = L1_2 - 1000
  L2_2 = GAME_TIMER
  L2_2 = L2_2 + L1_2
  L15_1 = L2_2
  L14_1 = A0_2
end
function L27_1(A0_2)
  local L1_2, L2_2
  L1_2 = DebugStart
  L2_2 = "PlayLuckyWheelScene"
  L1_2(L2_2)
  L1_2 = L26_1
  L2_2 = A0_2
  L1_2(L2_2)
  L16_1 = A0_2
end
function L28_1()
  local L0_2, L1_2
  L0_2 = DebugStart
  L1_2 = "DestroyLuckyWheel"
  L0_2(L1_2)
  L0_2 = DeleteEntity
  L1_2 = L3_1
  L1_2 = L1_2[1]
  L0_2(L1_2)
  L0_2 = DeleteEntity
  L1_2 = L3_1
  L1_2 = L1_2[2]
  L0_2(L1_2)
  L0_2 = DeleteEntity
  L1_2 = L4_1
  L1_2 = L1_2[1]
  L0_2(L1_2)
  L0_2 = DeleteEntity
  L1_2 = L4_1
  L1_2 = L1_2[2]
  L0_2(L1_2)
  L0_2 = DeleteEntity
  L1_2 = L5_1
  L0_2(L1_2)
  L0_2 = DeleteEntity
  L1_2 = L6_1
  L0_2(L1_2)
end
DestroyLuckyWheel = L28_1
function L28_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = DebugStart
  L2_2 = "ToggleLuckyWheelCollision"
  L1_2(L2_2)
  L1_2 = SetEntityCollision
  L2_2 = L3_1
  L2_2 = L2_2[1]
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = SetEntityCollision
  L2_2 = L3_1
  L2_2 = L2_2[2]
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = SetEntityCollision
  L2_2 = L4_1
  L2_2 = L2_2[1]
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = SetEntityCollision
  L2_2 = L4_1
  L2_2 = L2_2[2]
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = SetEntityCollision
  L2_2 = L5_1
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = SetEntityCollision
  L2_2 = L6_1
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
function L29_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = DebugStart
  L2_2 = "SetLightsToIdleState"
  L1_2(L2_2)
  L1_2 = SetEntityVisible
  L2_2 = L4_1
  L2_2 = L2_2[1]
  L3_2 = A0_2
  L4_2 = 0
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = SetEntityVisible
  L2_2 = L3_1
  L2_2 = L2_2[1]
  L3_2 = not A0_2
  L4_2 = 0
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = SetEntityVisible
  L2_2 = L4_1
  L2_2 = L2_2[2]
  L3_2 = not A0_2
  L4_2 = 0
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = SetEntityVisible
  L2_2 = L3_1
  L2_2 = L2_2[2]
  L3_2 = A0_2
  L4_2 = 0
  L1_2(L2_2, L3_2, L4_2)
end
function L30_1()
  local L0_2, L1_2, L2_2
  L0_2 = DebugStart
  L1_2 = "Blink"
  L0_2(L1_2)
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L0_3 = 1
    L1_3 = 10
    L2_3 = 1
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = L3_3 % 2
      L4_3 = 0 == L4_3
      L5_3 = SetEntityVisible
      L6_3 = L4_1
      L6_3 = L6_3[1]
      L7_3 = L4_3
      L8_3 = 0
      L5_3(L6_3, L7_3, L8_3)
      L5_3 = SetEntityVisible
      L6_3 = L3_1
      L6_3 = L6_3[1]
      L7_3 = L4_3
      L8_3 = 0
      L5_3(L6_3, L7_3, L8_3)
      L5_3 = SetEntityVisible
      L6_3 = L4_1
      L6_3 = L6_3[2]
      L7_3 = not L4_3
      L8_3 = 0
      L5_3(L6_3, L7_3, L8_3)
      L5_3 = SetEntityVisible
      L6_3 = L3_1
      L6_3 = L6_3[2]
      L7_3 = not L4_3
      L8_3 = 0
      L5_3(L6_3, L7_3, L8_3)
      L5_3 = Wait
      L6_3 = 150
      L5_3(L6_3)
    end
  end
  L2_2 = "Light blinking animation wheel"
  L0_2(L1_2, L2_2)
  L0_2 = L29_1
  L1_2 = true
  L0_2(L1_2)
end
function L31_1()
  local L0_2, L1_2, L2_2
  L0_2 = DebugStart
  L1_2 = "Spin"
  L0_2(L1_2)
  L0_2 = CasinoAnnouncer
  L1_2 = L0_2
  L0_2 = L0_2.LuckyWheelStart
  L0_2(L1_2)
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3
    L0_3 = true
    L18_1 = L0_3
    L0_3 = GetSoundId
    L0_3 = L0_3()
    L1_3 = GetEntityCoords
    L2_3 = L5_1
    L1_3 = L1_3(L2_3)
    L2_3 = tonumber
    L3_3 = L24_1.strength
    L2_3 = L2_3(L3_3)
    L24_1.strength = L2_3
    L2_3 = L24_1.strength
    if nil ~= L2_3 then
      L2_3 = Clamp
      L3_3 = L24_1.strength
      L4_3 = 1
      L5_3 = 3
      L2_3 = L2_3(L3_3, L4_3, L5_3)
      L24_1.strength = L2_3
    else
      L24_1.strength = 1
    end
    L2_3 = 0.0
    L3_3 = 0.0
    L4_3 = 0.0
    L5_3 = L24_1.strength
    if 1 == L5_3 then
      L5_3 = 0.004
      L3_3 = 6.75
      L2_3 = L5_3
    else
      L5_3 = L24_1.strength
      if 2 == L5_3 then
        L5_3 = 0.008
        L3_3 = 15.5
        L2_3 = L5_3
      else
        L5_3 = L24_1.strength
        if 3 == L5_3 then
          L5_3 = 0.005
          L3_3 = 15.5
          L2_3 = L5_3
        end
      end
    end
    L5_3 = Repeat
    L6_3 = L24_1.actualRotation
    L7_3 = 360
    L5_3 = L5_3(L6_3, L7_3)
    L24_1.actualRotation = L5_3
    L5_3 = L29_1
    L6_3 = false
    L5_3(L6_3)
    L5_3 = Wait
    L6_3 = 200
    L5_3(L6_3)
    L5_3 = GAME_TIMER
    while true do
      L6_3 = IN_CASINO
      if not L6_3 then
        break
      end
      L6_3 = L18_1
      if not L6_3 then
        break
      end
      L6_3 = GAME_TIMER
      L6_3 = L6_3 - L5_3
      L6_3 = L6_3 / 15
      if 0 == L6_3 then
        L6_3 = 1
      end
      L7_3 = Lerp
      L8_3 = L24_1.actualRotation
      L9_3 = L24_1.finalRotation
      L10_3 = L2_3 * L6_3
      L7_3 = L7_3(L8_3, L9_3, L10_3)
      L8_3 = L24_1.actualRotation
      L8_3 = L8_3 - L7_3
      L4_3 = L4_3 + L8_3
      if L4_3 > 5 then
        L4_3 = 0
        L9_3 = Clamp
        L10_3 = L24_1.actualRotation
        L10_3 = L10_3 * 0.46
        L11_3 = L24_1.finalRotation
        L10_3 = L10_3 / L11_3
        L11_3 = 0.0
        L12_3 = 0.46
        L9_3 = L9_3(L10_3, L11_3, L12_3)
        L10_3 = PlaySoundFromCoord
        L11_3 = L0_3
        L12_3 = "Spin_Single_Ticks"
        L13_3 = L1_3
        L14_3 = "dlc_vw_casino_lucky_wheel_sounds"
        L15_3 = 0
        L16_3 = 0
        L17_3 = 0
        L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
        L10_3 = L17_1
        if L10_3 then
          L10_3 = SetPadShake
          L11_3 = 0
          L12_3 = 10
          L13_3 = 50
          L10_3(L11_3, L12_3, L13_3)
        end
        L10_3 = Citizen
        L10_3 = L10_3.InvokeNative
        L11_3 = 8028691074322951313
        L12_3 = L0_3
        L13_3 = "spinSpeed"
        L14_3 = L9_3
        L10_3(L11_3, L12_3, L13_3, L14_3)
      end
      if L3_3 < L8_3 then
        L9_3 = L24_1.actualRotation
        L10_3 = L3_3 * L6_3
        L7_3 = L9_3 - L10_3
      end
      L24_1.actualRotation = L7_3
      L9_3 = SetEntityRotation
      L10_3 = L6_1
      L11_3 = 0.0
      L12_3 = Repeat
      L13_3 = L24_1.actualRotation
      L14_3 = 360.0
      L12_3 = L12_3(L13_3, L14_3)
      L13_3 = L1_1
      L14_3 = 0
      L15_3 = false
      L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
      L9_3 = 0.05
      if L8_3 <= L9_3 then
        L2_3 = L2_3 * 1.005
      end
      L9_3 = 0.005
      if L8_3 <= L9_3 then
        break
      end
      L5_3 = GAME_TIMER
      L9_3 = Wait
      L10_3 = 0
      L9_3(L10_3)
    end
    L6_3 = L30_1
    L6_3()
    L6_3 = false
    L18_1 = L6_3
    L6_3 = ReleaseSoundId
    L7_3 = L0_3
    L6_3(L7_3)
    L6_3 = L17_1
    if L6_3 then
      L6_3 = TriggerServerEvent
      L7_3 = "LuckyWheel:CollectWinnings"
      L6_3(L7_3)
    end
    L6_3 = Wait
    L7_3 = 2500
    L6_3(L7_3)
    L6_3 = L14_1
    if nil ~= L6_3 then
      L6_3 = L14_1
      L7_3 = L6_3
      L6_3 = L6_3.startswith
      L8_3 = "SpinningIDLE_"
      L6_3 = L6_3(L7_3, L8_3)
      if L6_3 then
        L6_3 = L27_1
        L7_3 = "win"
        L6_3(L7_3)
      end
    end
  end
  L2_2 = "spin to item wheel"
  L0_2(L1_2, L2_2)
end
function L32_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = DebugStart
  L2_2 = "PlayLuckyWheelAnimationScene"
  L1_2(L2_2)
  L1_2 = GetEntityCoords
  L2_2 = L5_1
  L1_2 = L1_2(L2_2)
  L2_2 = DoesEntityExist
  L3_2 = L5_1
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = GetClosestObjectOfType
    L3_2 = L0_1.x
    L4_2 = L0_1.y
    L5_2 = L0_1.z
    L6_2 = 5.0
    L7_2 = L11_1
    L8_2 = false
    L9_2 = false
    L10_2 = false
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L5_1 = L2_2
  end
  L2_2 = vector3
  L3_2 = 0.0
  L4_2 = 0.0
  L5_2 = 0.0
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  if "ArmRaisedIDLE" == A0_2 then
    L3_2 = vector3
    L4_2 = 1.2720048427582
    L5_2 = 0.62700039148331
    L6_2 = 0.0
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L2_2 = L3_2
  elseif "Enter_to_ArmRaisedIDLE" == A0_2 then
    L3_2 = vector3
    L4_2 = 0.35699990391731
    L5_2 = 1.5150065422058
    L6_2 = 0.0
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L2_2 = L3_2
  elseif "SpinReadyIDLE" == A0_2 then
    L3_2 = vector3
    L4_2 = 1.281005
    L5_2 = 0.63
    L6_2 = 0.0
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L2_2 = L3_2
  elseif "ArmRaisedIDLE_to_SpinReadyIDLE" == A0_2 then
    L3_2 = vector3
    L4_2 = 1.296005
    L5_2 = 0.621
    L6_2 = 0.0
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L2_2 = L3_2
  elseif "spinreadyidle_to_spinningidle_high" == A0_2 or "spinreadyidle_to_spinningidle_low" == A0_2 or "spinreadyidle_to_spinningidle_med" == A0_2 then
    L3_2 = vector3
    L4_2 = 1.167004
    L5_2 = 0.678001
    L6_2 = 0.0
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L2_2 = L3_2
  elseif "SpinningIDLE_Medium" == A0_2 or "SpinningIDLE_Low" == A0_2 or "SpinningIDLE_High" == A0_2 then
    L3_2 = vector3
    L4_2 = 1.116004
    L5_2 = 1.701008
    L6_2 = 0.0
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L2_2 = L3_2
  elseif "win_big" == A0_2 or "win_huge" == A0_2 or "win" == A0_2 then
    L3_2 = vector3
    L4_2 = 1.116004
    L5_2 = 1.701008
    L6_2 = 0.0
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L2_2 = L3_2
  end
  L3_2 = GetObjectOffsetFromCoords
  L4_2 = L1_2
  L5_2 = L1_1
  L6_2 = L2_2.x
  L7_2 = L2_2.y
  L8_2 = -1.0
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L1_2 = L3_2
  L4_2 = GetEntityRotation
  L5_2 = L5_1
  L4_2 = L4_2(L5_2)
  if "Enter_to_ArmRaisedIDLE" == A0_2 then
    L5_2 = vector3
    L6_2 = 0
    L7_2 = 0
    L8_2 = 44.498249
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L4_2 + L5_2
  end
  L5_2 = HasAnimDictLoaded
  L6_2 = L13_1
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = RequestAnimDictAndWait
    L6_2 = L13_1
    L5_2(L6_2)
  end
  L5_2 = GetAnimInitialOffsetPosition
  L6_2 = L13_1
  L7_2 = A0_2
  L8_2 = L1_2
  L9_2 = L4_2
  L10_2 = 0.0
  L11_2 = 2
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L6_2 = GetAnimInitialOffsetRotation
  L7_2 = L13_1
  L8_2 = A0_2
  L9_2 = L1_2
  L10_2 = L4_2
  L11_2 = 0.0
  L12_2 = 2
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L7_2 = GetEntityCoords
  L8_2 = PlayerPedId
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L8_2()
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L8_2 = L7_2 - L5_2
  L8_2 = #L8_2
  if L8_2 > 20.0 then
    L9_2 = GetEntityCoords
    L10_2 = L5_1
    L9_2 = L9_2(L10_2)
    L5_2 = L9_2
  end
  L9_2 = PlaySynchronizedScene
  L10_2 = L5_2
  L11_2 = L6_2
  L12_2 = L13_1
  L13_2 = A0_2
  L9_2(L10_2, L11_2, L12_2, L13_2)
end
function L33_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = DebugStart
  L5_2 = "CreateLuckyWheelPiece"
  L4_2(L5_2)
  L4_2 = RequestModelAndWait
  L5_2 = A0_2
  L4_2(L5_2)
  L4_2 = CreateObject
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L9_2 = false
  L10_2 = false
  L11_2 = false
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L5_2 = SetEntityHeading
  L6_2 = L4_2
  L7_2 = L1_1
  L5_2(L6_2, L7_2)
  L5_2 = FreezeEntityPosition
  L6_2 = L4_2
  L7_2 = true
  L5_2(L6_2, L7_2)
  return L4_2
end
function L34_1()
  local L0_2, L1_2, L2_2
  L0_2 = Config
  L0_2 = L0_2.MapType
  if 6 == L0_2 then
    return
  end
  L0_2 = DebugStart
  L1_2 = "LuckyWheel_Load"
  L0_2(L1_2)
  L0_2 = Debug
  L1_2 = "Loading Lucky Wheel"
  L0_2(L1_2)
  L0_2 = {}
  L1_2 = nil
  L2_2 = nil
  L0_2[1] = L1_2
  L0_2[2] = L2_2
  L3_1 = L0_2
  L0_2 = {}
  L1_2 = nil
  L2_2 = nil
  L0_2[1] = L1_2
  L0_2[2] = L2_2
  L4_1 = L0_2
  L0_2 = nil
  L5_1 = L0_2
  L0_2 = nil
  L6_1 = L0_2
  L0_2 = Repeat
  L1_2 = L1_1
  L2_2 = 360.0
  L0_2 = L0_2(L1_2, L2_2)
  L1_1 = L0_2
  L0_2 = Citizen
  L0_2 = L0_2.CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
    L0_3 = GetGamePool
    L1_3 = "CObject"
    L0_3 = L0_3(L1_3)
    L1_3 = pairs
    L2_3 = L0_3
    L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
    for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
      L7_3 = GetEntityModel
      L8_3 = L6_3
      L7_3 = L7_3(L8_3)
      L8_3 = L11_1
      if L7_3 == L8_3 then
        L7_3 = L2_1
        if L7_3 then
          L7_3 = GetEntityCoords
          L8_3 = L6_3
          L7_3 = L7_3(L8_3)
          L8_3 = L0_1
          L7_3 = L7_3 - L8_3
          L7_3 = #L7_3
          L8_3 = 0.5
          if not (L7_3 < L8_3) then
            goto lbl_37
          end
        end
        L5_1 = L6_3
        L7_3 = GetEntityCoords
        L8_3 = L5_1
        L7_3 = L7_3(L8_3)
        L0_1 = L7_3
        L7_3 = GetEntityHeading
        L8_3 = L5_1
        L7_3 = L7_3(L8_3)
        L1_1 = L7_3
        break
      end
      ::lbl_37::
    end
    L1_3 = pairs
    L2_3 = L0_3
    L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
    for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
      if nil ~= L6_3 then
        L7_3 = GetEntityCoords
        L8_3 = L6_3
        L7_3 = L7_3(L8_3)
        L8_3 = L0_1
        L7_3 = L7_3 - L8_3
        L7_3 = #L7_3
        L8_3 = 2.5
        if L7_3 < L8_3 then
          L7_3 = GetEntityModel
          L8_3 = L6_3
          L7_3 = L7_3(L8_3)
          L8_3 = L7_1
          if L7_3 == L8_3 then
            L8_3 = L3_1
            L8_3[1] = L6_3
          else
            L8_3 = L8_1
            if L7_3 == L8_3 then
              L8_3 = L3_1
              L8_3[2] = L6_3
            else
              L8_3 = L9_1
              if L7_3 == L8_3 then
                L8_3 = L4_1
                L8_3[1] = L6_3
              else
                L8_3 = L10_1
                if L7_3 == L8_3 then
                  L8_3 = L4_1
                  L8_3[2] = L6_3
                else
                  L8_3 = L12_1
                  if L7_3 == L8_3 then
                    L6_1 = L6_3
                  end
                end
              end
            end
          end
        end
      end
    end
    L1_3 = L5_1
    if nil == L1_3 then
      L1_3 = L33_1
      L2_3 = L11_1
      L3_3 = L0_1.x
      L4_3 = L0_1.y
      L5_3 = L0_1.z
      L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3)
      L5_1 = L1_3
      L1_3 = GetEntityHeading
      L2_3 = L5_1
      L1_3 = L1_3(L2_3)
      L1_1 = L1_3
      L1_3 = GetEntityCoords
      L2_3 = L5_1
      L1_3 = L1_3(L2_3)
      L0_1 = L1_3
    end
    L1_3 = L6_1
    if nil == L1_3 then
      L1_3 = L33_1
      L2_3 = L12_1
      L3_3 = L0_1.x
      L4_3 = L0_1.y
      L5_3 = L0_1.z
      L5_3 = L5_3 + 0.26
      L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3)
      L6_1 = L1_3
    end
    L1_3 = L3_1
    L1_3 = L1_3[1]
    if nil == L1_3 then
      L1_3 = L3_1
      L2_3 = L33_1
      L3_3 = L7_1
      L4_3 = L0_1.x
      L5_3 = L0_1.y
      L6_3 = L0_1.z
      L6_3 = L6_3 + 0.61
      L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
      L1_3[1] = L2_3
    end
    L1_3 = L3_1
    L1_3 = L1_3[2]
    if nil == L1_3 then
      L1_3 = L3_1
      L2_3 = L33_1
      L3_3 = L8_1
      L4_3 = L0_1.x
      L5_3 = L0_1.y
      L6_3 = L0_1.z
      L6_3 = L6_3 + 0.61
      L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
      L1_3[2] = L2_3
    end
    L1_3 = L4_1
    L1_3 = L1_3[1]
    if nil == L1_3 then
      L1_3 = L4_1
      L2_3 = L33_1
      L3_3 = L9_1
      L4_3 = L0_1.x
      L5_3 = L0_1.y
      L6_3 = L0_1.z
      L6_3 = L6_3 + 2.72
      L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
      L1_3[1] = L2_3
    end
    L1_3 = L4_1
    L1_3 = L1_3[2]
    if nil == L1_3 then
      L1_3 = L4_1
      L2_3 = L33_1
      L3_3 = L10_1
      L4_3 = L0_1.x
      L5_3 = L0_1.y
      L6_3 = L0_1.z
      L6_3 = L6_3 + 2.72
      L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
      L1_3[2] = L2_3
    end
    L1_3 = L29_1
    L2_3 = true
    L1_3(L2_3)
    L1_3 = SetModelsAsNoLongerNeeded
    L2_3 = {}
    L3_3 = L7_1
    L4_3 = L8_1
    L5_3 = L9_1
    L6_3 = L10_1
    L7_3 = L11_1
    L8_3 = L12_1
    L2_3[1] = L3_3
    L2_3[2] = L4_3
    L2_3[3] = L5_3
    L2_3[4] = L6_3
    L2_3[5] = L7_3
    L2_3[6] = L8_3
    L1_3(L2_3)
    L1_3 = SetCasinoBlip
    L2_3 = L0_1
    L3_3 = 681
    L4_3 = Translation
    L4_3 = L4_3.Get
    L5_3 = "BLIP_WHEEL"
    L4_3 = L4_3(L5_3)
    L5_3 = false
    L1_3(L2_3, L3_3, L4_3, L5_3)
    L1_3 = GetObjectOffsetFromCoords
    L2_3 = L0_1
    L3_3 = L1_1
    L4_3 = 0.0
    L5_3 = -0.2
    L6_3 = 1.5
    L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
    L2_3 = CreateTargetZone
    L3_3 = vector3
    L4_3 = L1_3.x
    L5_3 = L1_3.y
    L6_3 = L1_3.z
    L3_3 = L3_3(L4_3, L5_3, L6_3)
    L4_3 = 1.0
    L5_3 = 2.0
    L6_3 = 0.0
    L7_3 = {}
    L8_3 = {}
    L8_3.num = 1
    L8_3.type = "client"
    L8_3.event = "Casino:Target"
    L8_3.icon = "fas fa-dharmachakra"
    L9_3 = removePlaceholderText
    L10_3 = Translation
    L10_3 = L10_3.Get
    L11_3 = "WHEEL_PRESS_TO_PLAY"
    L10_3, L11_3, L12_3, L13_3, L14_3 = L10_3(L11_3)
    L9_3 = L9_3(L10_3, L11_3, L12_3, L13_3, L14_3)
    L8_3.label = L9_3
    L8_3.targeticon = "fas fa-dharmachakra"
    function L9_3(A0_4, A1_4, A2_4)
      local L3_4
      L3_4 = CAN_INTERACT
      return L3_4
    end
    L8_3.canInteract = L9_3
    L9_3 = {}
    L10_3 = 255
    L11_3 = 255
    L12_3 = 255
    L13_3 = 255
    L9_3[1] = L10_3
    L9_3[2] = L11_3
    L9_3[3] = L12_3
    L9_3[4] = L13_3
    L8_3.drawColor = L9_3
    L9_3 = {}
    L10_3 = 30
    L11_3 = 144
    L12_3 = 255
    L13_3 = 255
    L9_3[1] = L10_3
    L9_3[2] = L11_3
    L9_3[3] = L12_3
    L9_3[4] = L13_3
    L8_3.successDrawColor = L9_3
    L8_3.eventAction = "wheel_enter"
    L9_3 = {}
    L9_3.num = 2
    L9_3.type = "client"
    L9_3.event = "Casino:Target"
    L9_3.icon = "fas fa-circle-info"
    L10_3 = Translation
    L10_3 = L10_3.Get
    L11_3 = "ABOUT"
    L10_3 = L10_3(L11_3)
    L9_3.label = L10_3
    L9_3.targeticon = "fas fa-dharmachakra"
    function L10_3(A0_4, A1_4, A2_4)
      local L3_4
      L3_4 = CAN_INTERACT
      return L3_4
    end
    L9_3.canInteract = L10_3
    L10_3 = {}
    L11_3 = 255
    L12_3 = 255
    L13_3 = 255
    L14_3 = 255
    L10_3[1] = L11_3
    L10_3[2] = L12_3
    L10_3[3] = L13_3
    L10_3[4] = L14_3
    L9_3.drawColor = L10_3
    L10_3 = {}
    L11_3 = 30
    L12_3 = 144
    L13_3 = 255
    L14_3 = 255
    L10_3[1] = L11_3
    L10_3[2] = L12_3
    L10_3[3] = L13_3
    L10_3[4] = L14_3
    L9_3.successDrawColor = L10_3
    L9_3.eventAction = "wheel_info"
    L7_3[1] = L8_3
    L7_3[2] = L9_3
    L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
  end
  L2_2 = "load Lucky Wheel objects wheel"
  L0_2(L1_2, L2_2)
end
LuckyWheel_Load = L34_1
function L34_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L14_1
  L1_2 = L14_1
  L2_2 = L1_2
  L1_2 = L1_2.startswith
  L3_2 = A0_2
  L1_2 = nil ~= L1_2 and L1_2
  return L1_2
end
function L35_1()
  local L0_2, L1_2
  L0_2 = DebugStart
  L1_2 = "UpdateAnimationSteps"
  L0_2(L1_2)
  L0_2 = IsAnimationInProgress
  L0_2 = L0_2()
  if L0_2 then
    return
  end
  L0_2 = L14_1
  if "Enter_to_ArmRaisedIDLE" == L0_2 then
    L0_2 = L27_1
    L1_2 = "ArmRaisedIDLE"
    L0_2(L1_2)
  else
    L0_2 = L14_1
    if "ArmRaisedIDLE" == L0_2 then
      L0_2 = L27_1
      L1_2 = "ArmRaisedIDLE"
      L0_2(L1_2)
    else
      L0_2 = L14_1
      if "ArmRaisedIDLE_to_SpinReadyIDLE" == L0_2 then
        L0_2 = L27_1
        L1_2 = "SpinReadyIDLE"
        L0_2(L1_2)
      else
        L0_2 = L14_1
        if "SpinReadyIDLE" == L0_2 then
          L0_2 = L27_1
          L1_2 = "SpinReadyIDLE"
          L0_2(L1_2)
        else
          L0_2 = L14_1
          if "spinreadyidle_to_spinningidle_low" ~= L0_2 then
            L0_2 = L14_1
            if "ArmRaisedIDLE_to_SpinningIDLE_Low" ~= L0_2 then
              goto lbl_47
            end
          end
          L0_2 = L27_1
          L1_2 = "SpinningIDLE_Low"
          L0_2(L1_2)
          goto lbl_100
          ::lbl_47::
          L0_2 = L14_1
          if "spinreadyidle_to_spinningidle_med" ~= L0_2 then
            L0_2 = L14_1
            if "ArmRaisedIDLE_to_SpinningIDLE_Med" ~= L0_2 then
              goto lbl_57
            end
          end
          L0_2 = L27_1
          L1_2 = "SpinningIDLE_Medium"
          L0_2(L1_2)
          goto lbl_100
          ::lbl_57::
          L0_2 = L14_1
          if "spinreadyidle_to_spinningidle_high" ~= L0_2 then
            L0_2 = L14_1
            if "ArmRaisedIDLE_to_SpinningIDLE_High" ~= L0_2 then
              goto lbl_67
            end
          end
          L0_2 = L27_1
          L1_2 = "SpinningIDLE_High"
          L0_2(L1_2)
          goto lbl_100
          ::lbl_67::
          L0_2 = L14_1
          if "win" ~= L0_2 then
            L0_2 = L14_1
            if "win_big" ~= L0_2 then
              L0_2 = L14_1
              if "win_huge" ~= L0_2 then
                goto lbl_80
              end
            end
          end
          L0_2 = L27_1
          L1_2 = "Nothing"
          L0_2(L1_2)
          goto lbl_100
          ::lbl_80::
          L0_2 = L14_1
          if "SpinningIDLE_Low" == L0_2 then
            L0_2 = L27_1
            L1_2 = "SpinningIDLE_Low"
            L0_2(L1_2)
          else
            L0_2 = L14_1
            if "SpinningIDLE_Medium" == L0_2 then
              L0_2 = L27_1
              L1_2 = "SpinningIDLE_Medium"
              L0_2(L1_2)
            else
              L0_2 = L14_1
              if "SpinningIDLE_High" == L0_2 then
                L0_2 = L27_1
                L1_2 = "SpinningIDLE_High"
                L0_2(L1_2)
              end
            end
          end
        end
      end
    end
  end
  ::lbl_100::
end
function L36_1()
  local L0_2, L1_2, L2_2
  L0_2 = DebugStart
  L1_2 = "PlayingController"
  L0_2(L1_2)
  L0_2 = true
  L17_1 = L0_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3
    while true do
      L0_3 = L17_1
      if not L0_3 then
        break
      end
      L0_3 = IN_CASINO
      if not L0_3 then
        break
      end
      L0_3 = L16_1
      if nil ~= L0_3 then
        L0_3 = IsAnimationInProgress
        L0_3 = L0_3()
        if not L0_3 then
          L0_3 = L32_1
          L1_3 = L16_1
          L0_3(L1_3)
          L0_3 = L16_1
          L1_3 = L0_3
          L0_3 = L0_3.startswith
          L2_3 = "spinreadyidle_to_spinningidle_"
          L0_3 = L0_3(L1_3, L2_3)
          if L0_3 then
            L0_3 = L22_1
            if 0 ~= L0_3 then
              L0_3 = L19_1
              if 3 == L0_3 then
                L0_3 = 4
                L19_1 = L0_3
                L0_3 = TriggerServerEvent
                L1_3 = "LuckyWheel:Spin"
                L2_3 = L22_1
                L0_3(L1_3, L2_3)
                L0_3 = CreateThread
                function L1_3()
                  local L0_4, L1_4, L2_4, L3_4
                  L0_4 = GAME_TIMER
                  L0_4 = L0_4 + 2000
                  L1_4 = L24_1.spinTime
                  while true do
                    L2_4 = GAME_TIMER
                    if not (L0_4 > L2_4) then
                      break
                    end
                    L2_4 = IN_CASINO
                    if not L2_4 then
                      break
                    end
                    L2_4 = L24_1.spinTime
                    if L2_4 ~= L1_4 then
                      break
                    end
                    L2_4 = Wait
                    L3_4 = 0
                    L2_4(L3_4)
                  end
                  L2_4 = L24_1.spinTime
                  if L2_4 == L1_4 then
                    L24_1.playerId = -1
                    L2_4 = L25_1
                    L2_4()
                  end
                end
                L2_3 = "playing if the wheel didn't start spinning for any reason"
                L0_3(L1_3, L2_3)
            end
          end
          else
            L0_3 = L16_1
            if "Nothing" == L0_3 then
              L0_3 = L25_1
              L0_3()
            end
          end
          L0_3 = nil
          L16_1 = L0_3
        end
      end
      L0_3 = L14_1
      if nil ~= L0_3 then
        L0_3 = GAME_TIMER
        L1_3 = L15_1
        if L0_3 > L1_3 then
          L0_3 = L35_1
          L0_3()
        end
      end
      L0_3 = Wait
      L1_3 = 33
      L0_3(L1_3)
    end
  end
  L2_2 = "thread that controls player animation & stuff, while playing"
  L0_2(L1_2, L2_2)
end
function L37_1()
  local L0_2, L1_2, L2_2
  L0_2 = DebugStart
  L1_2 = "EnterLuckyWheel"
  L0_2(L1_2)
  L0_2 = BlockPlayerInteraction
  L1_2 = 1000
  L0_2(L1_2)
  L0_2 = 0
  L19_1 = L0_2
  L0_2 = IsPedMale
  L1_2 = PlayerPedId
  L1_2, L2_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 then
    L0_2 = "anim_casino_a@amb@casino@games@lucky7wheel@male"
    if L0_2 then
      goto lbl_19
    end
  end
  L0_2 = "anim_casino_a@amb@casino@games@lucky7wheel@female"
  ::lbl_19::
  L13_1 = L0_2
  L0_2 = RequestAnimDictAndWait
  L1_2 = L13_1
  L0_2(L1_2)
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L0_3 = GetObjectOffsetFromCoords
    L1_3 = L0_1
    L2_3 = L1_1
    L3_3 = -1.386006
    L4_3 = -1.083004
    L5_3 = 1.0
    L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
    L1_3 = TaskGoStraightToCoord
    L2_3 = PlayerPedId
    L2_3 = L2_3()
    L3_3 = L0_3.x
    L4_3 = L0_3.y
    L5_3 = L0_3.z
    L6_3 = 1.0
    L7_3 = 3.0
    L8_3 = L1_1
    L9_3 = 0.0
    L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
    L1_3 = WaitForPlayerOnCoords
    L2_3 = L0_3
    L3_3 = 3000
    L1_3(L2_3, L3_3)
    L1_3 = L36_1
    L1_3()
    L1_3 = L27_1
    L2_3 = "Enter_to_ArmRaisedIDLE"
    L1_3(L2_3)
    L1_3 = SetCurrentPedWeapon
    L2_3 = PlayerPedId
    L2_3 = L2_3()
    L3_3 = GetHashKey
    L4_3 = "weapon_unarmed"
    L3_3 = L3_3(L4_3)
    L4_3 = true
    L1_3(L2_3, L3_3, L4_3)
    L1_3 = Wait
    L2_3 = 2000
    L1_3(L2_3)
    L1_3 = InfoPanel_UpdateNotification
    L2_3 = Translation
    L2_3 = L2_3.Get
    L3_3 = "WHEEL_PRESS_TO_SPIN"
    L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3 = L2_3(L3_3)
    L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
    L1_3 = 1
    L19_1 = L1_3
  end
  L2_2 = "enter lucky wheel animation"
  L0_2(L1_2, L2_2)
end
function L38_1()
  local L0_2, L1_2
  L0_2 = DebugStart
  L1_2 = "DestroyStrengthBar"
  L0_2(L1_2)
  L0_2 = TimerBar
  L0_2 = L0_2.DestroyAll
  L0_2()
  L0_2 = nil
  L20_1 = L0_2
end
function L39_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = DebugStart
  L1_2 = "StartStrengthChooser"
  L0_2(L1_2)
  L0_2 = 0
  L21_1 = L0_2
  L0_2 = TimerBar
  L0_2 = L0_2.DestroyAll
  L0_2()
  L0_2 = TimerBar
  L0_2 = L0_2.Create
  L1_2 = TimerBar
  L1_2 = L1_2.Progress
  L2_2 = Translation
  L2_2 = L2_2.Get
  L3_2 = "WHEEL_TIMERBAR_STRENGTH"
  L2_2 = L2_2(L3_2)
  L3_2 = 0.0
  L0_2 = L0_2(L1_2, L2_2, L3_2)
  L20_1 = L0_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = GAME_TIMER
    L1_3 = 0
    while true do
      L2_3 = L20_1
      if nil == L2_3 then
        break
      end
      L2_3 = L17_1
      if not L2_3 then
        break
      end
      L2_3 = L19_1
      if 2 ~= L2_3 then
        L2_3 = L19_1
        if 3 ~= L2_3 then
          break
        end
      end
      L2_3 = L19_1
      if 2 == L2_3 then
        L2_3 = GAME_TIMER
        L2_3 = L2_3 - L0_3
        L0_3 = GAME_TIMER
        L3_3 = L21_1
        L4_3 = L2_3 / 1000
        L3_3 = L3_3 + L4_3
        L21_1 = L3_3
        L3_3 = L20_1.setProgress
        L4_3 = PingPong
        L5_3 = L21_1
        L6_3 = 1.0
        L4_3, L5_3, L6_3 = L4_3(L5_3, L6_3)
        L3_3(L4_3, L5_3, L6_3)
      end
      L2_3 = Wait
      L3_3 = 33
      L2_3(L3_3)
    end
    L2_3 = L38_1
    L2_3()
  end
  L2_2 = "Strength Chooser wheel"
  L0_2(L1_2, L2_2)
end
function L40_1()
  local L0_2, L1_2, L2_2
  L0_2 = DebugStart
  L1_2 = "InteractionWhilePlaying"
  L0_2(L1_2)
  L0_2 = L19_1
  if 1 == L0_2 then
    L0_2 = BlockPlayerInteraction
    L1_2 = 1000
    L0_2(L1_2)
    L0_2 = InfoPanel_UpdateNotification
    L1_2 = nil
    L0_2(L1_2)
    L0_2 = CreateThread
    function L1_2()
      local L0_3, L1_3, L2_3
      L0_3 = L27_1
      L1_3 = "ArmRaisedIDLE_to_SpinReadyIDLE"
      L0_3(L1_3)
      L0_3 = Wait
      L1_3 = 1000
      L0_3(L1_3)
      L0_3 = InfoPanel_UpdateNotification
      L1_3 = Translation
      L1_3 = L1_3.Get
      L2_3 = "WHEEL_CHOOSE_STRENGTH"
      L1_3, L2_3 = L1_3(L2_3)
      L0_3(L1_3, L2_3)
      L0_3 = 2
      L19_1 = L0_3
      L0_3 = L39_1
      L0_3()
    end
    L0_2(L1_2)
  else
    L0_2 = L19_1
    if 2 == L0_2 then
      L0_2 = L20_1
      if nil ~= L0_2 then
        L0_2 = PingPong
        L1_2 = L21_1
        L2_2 = 1.0
        L0_2 = L0_2(L1_2, L2_2)
        L1_2 = 1
        L22_1 = L1_2
        L1_2 = 0.7
        if L0_2 >= L1_2 then
          L1_2 = 3
          L22_1 = L1_2
        else
          L1_2 = 0.4
          if L0_2 >= L1_2 then
            L1_2 = 2
            L22_1 = L1_2
          end
        end
        L1_2 = 3
        L19_1 = L1_2
        L1_2 = L22_1
        if 1 == L1_2 then
          L1_2 = L27_1
          L2_2 = "spinreadyidle_to_spinningidle_low"
          L1_2(L2_2)
        else
          L1_2 = L22_1
          if 2 == L1_2 then
            L1_2 = L27_1
            L2_2 = "spinreadyidle_to_spinningidle_med"
            L1_2(L2_2)
          else
            L1_2 = L22_1
            if 3 == L1_2 then
              L1_2 = L27_1
              L2_2 = "spinreadyidle_to_spinningidle_high"
              L1_2(L2_2)
            end
          end
        end
        L1_2 = InfoPanel_UpdateNotification
        L2_2 = nil
        L1_2(L2_2)
      end
    end
  end
end
function L41_1()
  local L0_2, L1_2
  L0_2 = L23_1
  if not L0_2 then
    return
  end
  L0_2 = false
  L23_1 = L0_2
  L0_2 = TriggerServerEvent
  L1_2 = "LuckyWheel:BeginFix"
  L0_2(L1_2)
end
function L42_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = DebugStart
  L2_2 = "EnterWheel"
  L1_2(L2_2)
  L1_2 = CAN_INTERACT
  if not L1_2 then
    return
  end
  L1_2 = L17_1
  if L1_2 then
    return
  end
  L1_2 = GetEntityCoords
  L2_2 = L5_1
  L1_2 = L1_2(L2_2)
  L2_2 = GetPlayerPosition
  L2_2 = L2_2()
  L1_2 = L1_2 - L2_2
  L1_2 = #L1_2
  if L1_2 <= 2.0 or A0_2 then
    L2_2 = BlockPlayerInteraction
    L3_2 = 2000
    L2_2(L3_2)
    L2_2 = L24_1
    if nil ~= L2_2 then
      L2_2 = L24_1.playerId
      if -1 == L2_2 then
        goto lbl_34
      end
    end
    do return end
    ::lbl_34::
    L2_2 = TriggerServerEvent
    L3_2 = "LuckyWheel:TakeControl"
    L2_2(L3_2)
  end
end
function L43_1()
  local L0_2, L1_2
  L0_2 = L0_1
  return L0_2
end
LuckyWheel_GetCoords = L43_1
function L43_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = Config
  L0_2 = L0_2.UseTarget
  if L0_2 then
    return
  end
  L0_2 = DebugStart
  L1_2 = "LuckyWheel_ShowNotifyUI"
  L0_2(L1_2)
  L0_2 = Config
  L0_2 = L0_2.Jobs
  if L0_2 then
    L0_2 = Config
    L0_2 = L0_2.Jobs
    L0_2 = L0_2.Electrician
    L0_2 = L0_2.Enabled
    if L0_2 then
      L0_2 = ELECTRICITY_BROKEN
      if L0_2 then
        L0_2 = IsAtJob
        L1_2 = Config
        L1_2 = L1_2.Jobs
        L1_2 = L1_2.Electrician
        L1_2 = L1_2.JobName
        L2_2 = nil
        L3_2 = Config
        L3_2 = L3_2.Jobs
        L3_2 = L3_2.Electrician
        L3_2 = L3_2.MinGrade
        L4_2 = Config
        L4_2 = L4_2.Jobs
        L4_2 = L4_2.Electrician
        L4_2 = L4_2.MaxGrade
        L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2)
        if L0_2 then
          L0_2 = ShowHelpNotification
          L1_2 = Translation
          L1_2 = L1_2.Get
          L2_2 = "DIAMOND_WALL_BROKE_5"
          L1_2, L2_2, L3_2, L4_2, L5_2 = L1_2(L2_2)
          L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
        else
          L0_2 = ShowHelpNotification
          L1_2 = Translation
          L1_2 = L1_2.Get
          L2_2 = "DIAMOND_WALL_BROKE_4"
          L1_2, L2_2, L3_2, L4_2, L5_2 = L1_2(L2_2)
          L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
        end
        return
      end
    end
  end
  L0_2 = Config
  L0_2 = L0_2.Jobs
  if L0_2 then
    L0_2 = Config
    L0_2 = L0_2.Jobs
    L0_2 = L0_2.Electrician
    L0_2 = L0_2.Enabled
    if L0_2 then
      L0_2 = L24_1.broken
      if L0_2 then
        L0_2 = true
        L23_1 = L0_2
        L0_2 = IsAtJob
        L1_2 = Config
        L1_2 = L1_2.Jobs
        L1_2 = L1_2.Electrician
        L1_2 = L1_2.JobName
        L2_2 = nil
        L3_2 = Config
        L3_2 = L3_2.Jobs
        L3_2 = L3_2.Electrician
        L3_2 = L3_2.MinGrade
        L4_2 = Config
        L4_2 = L4_2.Jobs
        L4_2 = L4_2.Electrician
        L4_2 = L4_2.MaxGrade
        L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2)
        if L0_2 then
          L0_2 = InfoPanel_UpdateNotification
          L1_2 = Translation
          L1_2 = L1_2.Get
          L2_2 = "WHEEL_PRESS_BROKEN_2"
          L1_2, L2_2, L3_2, L4_2, L5_2 = L1_2(L2_2)
          L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
        else
          L0_2 = InfoPanel_UpdateNotification
          L1_2 = Translation
          L1_2 = L1_2.Get
          L2_2 = "WHEEL_PRESS_BROKEN"
          L1_2, L2_2, L3_2, L4_2, L5_2 = L1_2(L2_2)
          L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
        end
        return
      end
    end
  end
  L0_2 = L24_1.playerId
  if -1 == L0_2 then
    L0_2 = L18_1
    if not L0_2 then
      goto lbl_115
    end
  end
  L0_2 = TriggerServerEvent
  L1_2 = "LuckyWheel:GetState"
  L0_2(L1_2)
  L0_2 = InfoPanel_UpdateNotification
  L1_2 = Translation
  L1_2 = L1_2.Get
  L2_2 = "WHEEL_BEING_USED"
  L1_2, L2_2, L3_2, L4_2, L5_2 = L1_2(L2_2)
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
  do return end
  ::lbl_115::
  L0_2 = Config
  L0_2 = L0_2.LUCKY_WHEEL_PAY_TO_SPIN
  if L0_2 then
    L1_2 = tonumber
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = PLAYER_CHIPS
      if L0_2 > L1_2 then
        L1_2 = InfoPanel_UpdateNotification
        L2_2 = string
        L2_2 = L2_2.format
        L3_2 = Translation
        L3_2 = L3_2.Get
        L4_2 = "WHEEL_CANT_AFFORD_PLAYING"
        L3_2 = L3_2(L4_2)
        L4_2 = CommaValue
        L5_2 = L0_2
        L4_2, L5_2 = L4_2(L5_2)
        L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2, L4_2, L5_2)
        L1_2(L2_2, L3_2, L4_2, L5_2)
        return
      end
    end
  end
  L1_2 = PLAYER_CACHE
  L1_2 = L1_2.luckyWheelCooldownUntil
  if L1_2 then
    L1_2 = SERVER_TIMER
    L2_2 = PLAYER_CACHE
    L2_2 = L2_2.luckyWheelCooldownUntil
    if L1_2 < L2_2 then
      L1_2 = FormatTimestamp
      L2_2 = PLAYER_CACHE
      L2_2 = L2_2.luckyWheelCooldownUntil
      L3_2 = SERVER_TIMER
      L2_2 = L2_2 - L3_2
      L1_2 = L1_2(L2_2)
      L2_2 = InfoPanel_UpdateNotification
      L3_2 = string
      L3_2 = L3_2.format
      L4_2 = Translation
      L4_2 = L4_2.Get
      L5_2 = "LUCKYWHEEL_COOLDOWN"
      L4_2 = L4_2(L5_2)
      L5_2 = L1_2
      L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
      L2_2(L3_2, L4_2, L5_2)
      return
    end
  end
  if not L0_2 or 0 == L0_2 then
    L1_2 = InfoPanel_UpdateNotification
    L2_2 = Translation
    L2_2 = L2_2.Get
    L3_2 = "WHEEL_PRESS_TO_PLAY"
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    L1_2(L2_2, L3_2, L4_2, L5_2)
  else
    L1_2 = tonumber
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = InfoPanel_UpdateNotification
      L2_2 = string
      L2_2 = L2_2.format
      L3_2 = Translation
      L3_2 = L3_2.Get
      L4_2 = "WHEEL_PRESS_TO_PLAY_PAID"
      L3_2 = L3_2(L4_2)
      L4_2 = CommaValue
      L5_2 = L0_2
      L4_2, L5_2 = L4_2(L5_2)
      L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2, L4_2, L5_2)
      L1_2(L2_2, L3_2, L4_2, L5_2)
    else
      L1_2 = InfoPanel_UpdateNotification
      L2_2 = Translation
      L2_2 = L2_2.Get
      L3_2 = "WHEEL_PRESS_TO_PLAY_PAID_ITEM"
      L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
      L1_2(L2_2, L3_2, L4_2, L5_2)
    end
  end
end
LuckyWheel_ShowNotifyUI = L43_1
function L43_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = InfoPanel_UpdateNotification
  L1_2 = nil
  L0_2(L1_2)
  L0_2 = InfoPanel_Update
  L1_2 = "casinoui_lucky_wheel"
  L2_2 = "casinoui_lucky_wheel"
  L3_2 = "Lucky Wheel"
  L4_2 = Translation
  L4_2 = L4_2.Get
  L5_2 = "WHEEL_WELCOME"
  L4_2, L5_2 = L4_2(L5_2)
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
end
LuckyWheel_ShowWelcome = L43_1
function L43_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = DebugStart
  L2_2 = "LuckyWheel_OnInteraction"
  L1_2(L2_2)
  L1_2 = Config
  L1_2 = L1_2.Jobs
  if L1_2 then
    L1_2 = Config
    L1_2 = L1_2.Jobs
    L1_2 = L1_2.Electrician
    L1_2 = L1_2.Enabled
    if L1_2 then
      L1_2 = ELECTRICITY_BROKEN
      if L1_2 then
        L1_2 = IsAtJob
        L2_2 = Config
        L2_2 = L2_2.Jobs
        L2_2 = L2_2.Electrician
        L2_2 = L2_2.JobName
        L3_2 = nil
        L4_2 = Config
        L4_2 = L4_2.Jobs
        L4_2 = L4_2.Electrician
        L4_2 = L4_2.MinGrade
        L5_2 = Config
        L5_2 = L5_2.Jobs
        L5_2 = L5_2.Electrician
        L5_2 = L5_2.MaxGrade
        L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
        if L1_2 then
          L1_2 = ShowHelpNotification
          L2_2 = Translation
          L2_2 = L2_2.Get
          L3_2 = "DIAMOND_WALL_BROKE_5"
          L2_2, L3_2, L4_2, L5_2, L6_2, L7_2 = L2_2(L3_2)
          L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
        else
          L1_2 = ShowHelpNotification
          L2_2 = Translation
          L2_2 = L2_2.Get
          L3_2 = "DIAMOND_WALL_BROKE_4"
          L2_2, L3_2, L4_2, L5_2, L6_2, L7_2 = L2_2(L3_2)
          L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
        end
        return
      end
    end
  end
  L1_2 = Config
  L1_2 = L1_2.Jobs
  if L1_2 then
    L1_2 = Config
    L1_2 = L1_2.Jobs
    L1_2 = L1_2.Electrician
    L1_2 = L1_2.Enabled
    if L1_2 then
      L1_2 = L24_1.broken
      if L1_2 then
        L1_2 = IsAtJob
        L2_2 = Config
        L2_2 = L2_2.Jobs
        L2_2 = L2_2.Electrician
        L2_2 = L2_2.JobName
        L3_2 = nil
        L4_2 = Config
        L4_2 = L4_2.Jobs
        L4_2 = L4_2.Electrician
        L4_2 = L4_2.MinGrade
        L5_2 = Config
        L5_2 = L5_2.Jobs
        L5_2 = L5_2.Electrician
        L5_2 = L5_2.MaxGrade
        L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
        if L1_2 then
          L1_2 = InfoPanel_Update
          L2_2 = nil
          L3_2 = nil
          L4_2 = nil
          L5_2 = nil
          L6_2 = nil
          L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
          L1_2 = InfoPanel_UpdateNotification
          L2_2 = ni
          L1_2(L2_2)
          L1_2 = L41_1
          L1_2()
        end
        return
      end
    end
  end
  L1_2 = L17_1
  if L1_2 then
    L1_2 = L40_1
    L1_2()
    return
  end
  L1_2 = PLAYER_DRUNK_LEVEL
  if L1_2 >= 1.0 then
    return
  end
  L1_2 = Config
  L1_2 = L1_2.LUCKY_WHEEL_PAY_TO_SPIN
  if L1_2 then
    L2_2 = tonumber
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = PLAYER_CHIPS
      if L1_2 > L2_2 then
        L2_2 = InfoPanel_UpdateNotification
        L3_2 = string
        L3_2 = L3_2.format
        L4_2 = Translation
        L4_2 = L4_2.Get
        L5_2 = "WHEEL_CANT_AFFORD_PLAYING"
        L4_2 = L4_2(L5_2)
        L5_2 = CommaValue
        L6_2 = L1_2
        L5_2, L6_2, L7_2 = L5_2(L6_2)
        L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
        L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
        return
      end
    end
  end
  L2_2 = PLAYER_CACHE
  L2_2 = L2_2.luckyWheelCooldownUntil
  if L2_2 then
    L2_2 = SERVER_TIMER
    L3_2 = PLAYER_CACHE
    L3_2 = L3_2.luckyWheelCooldownUntil
    if L2_2 < L3_2 then
      L2_2 = FormatTimestamp
      L3_2 = PLAYER_CACHE
      L3_2 = L3_2.luckyWheelCooldownUntil
      L4_2 = SERVER_TIMER
      L3_2 = L3_2 - L4_2
      L2_2 = L2_2(L3_2)
      L3_2 = InfoPanel_UpdateNotification
      L4_2 = string
      L4_2 = L4_2.format
      L5_2 = Translation
      L5_2 = L5_2.Get
      L6_2 = "LUCKYWHEEL_COOLDOWN"
      L5_2 = L5_2(L6_2)
      L6_2 = L2_2
      L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2)
      L3_2(L4_2, L5_2, L6_2, L7_2)
      return
    end
  end
  L2_2 = L24_1.playerId
  if -1 == L2_2 then
    L2_2 = L18_1
    if not L2_2 then
      goto lbl_165
    end
  end
  L2_2 = InfoPanel_Update
  L3_2 = nil
  L4_2 = nil
  L5_2 = nil
  L6_2 = nil
  L7_2 = nil
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = InfoPanel_UpdateNotification
  L3_2 = Translation
  L3_2 = L3_2.Get
  L4_2 = "WHEEL_BEING_USED"
  L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2(L4_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  do return end
  ::lbl_165::
  L2_2 = GAME_INFO_PANEL
  if nil == L2_2 then
    L2_2 = ShouldShowHowToPlay
    L3_2 = "luckywheel"
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = LuckyWheel_ShowWelcome
      L2_2()
      return
    end
  end
  L2_2 = L42_1
  L3_2 = A0_2
  L2_2(L3_2)
end
LuckyWheel_OnInteraction = L43_1
function L43_1()
  local L0_2, L1_2
  L0_2 = DebugStart
  L1_2 = "LuckyWheel_OnInteractionQuit"
  L0_2(L1_2)
  L0_2 = L17_1
  if not L0_2 then
    return
  end
  L0_2 = L19_1
  if 1 ~= L0_2 then
    return
  end
  L0_2 = CAN_INTERACT
  if not L0_2 then
    return
  end
  L0_2 = TriggerServerEvent
  L1_2 = "LuckyWheel:Quit"
  L0_2(L1_2)
  L0_2 = L25_1
  L0_2()
end
LuckyWheel_OnInteractionQuit = L43_1
function L43_1()
  local L0_2, L1_2, L2_2
  L0_2 = Config
  L0_2 = L0_2.MapType
  if 6 == L0_2 then
    return
  end
  L0_2 = {}
  L1_2 = nil
  L2_2 = nil
  L0_2[1] = L1_2
  L0_2[2] = L2_2
  L3_1 = L0_2
  L0_2 = {}
  L1_2 = nil
  L2_2 = nil
  L0_2[1] = L1_2
  L0_2[2] = L2_2
  L4_1 = L0_2
  L0_2 = nil
  L5_1 = L0_2
  L0_2 = nil
  L6_1 = L0_2
  L0_2 = nil
  L14_1 = L0_2
  L0_2 = 0
  L15_1 = L0_2
  L0_2 = nil
  L16_1 = L0_2
  L0_2 = false
  L17_1 = L0_2
  L0_2 = false
  L18_1 = L0_2
  L0_2 = 0
  L19_1 = L0_2
  L0_2 = nil
  L20_1 = L0_2
  L0_2 = 0
  L21_1 = L0_2
  L0_2 = 0
  L22_1 = L0_2
  L0_2 = {}
  L24_1 = L0_2
end
LuckyWheel_Stop = L43_1
function L43_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = Config
  L1_2 = L1_2.Jobs
  if L1_2 then
    L1_2 = Config
    L1_2 = L1_2.Jobs
    L1_2 = L1_2.Electrician
    L1_2 = L1_2.Enabled
    if L1_2 then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  L1_2 = ForceDeleteEntity
  L2_2 = L6_1
  L1_2(L2_2)
  L1_2 = vector3
  L2_2 = L0_1.x
  L3_2 = L0_1.y
  L4_2 = L0_1.z
  L4_2 = L4_2 + 0.26
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = GetObjectOffsetFromCoords
  L3_2 = L1_2.x
  L4_2 = L1_2.y
  L5_2 = L1_2.z
  L6_2 = L1_1
  L7_2 = 0.0
  L8_2 = -0.41
  L9_2 = -0.4
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = L33_1
  L4_2 = L12_1
  L5_2 = L2_2 or L5_2
  if not A0_2 or not L2_2 then
    L5_2 = L1_2
  end
  L3_2 = L3_2(L4_2, L5_2)
  L6_1 = L3_2
  if A0_2 then
    L3_2 = CreateThread
    function L4_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
      L0_3 = GetEntityRotation
      L1_3 = L5_1
      L0_3 = L0_3(L1_3)
      L1_3 = SetEntityRotation
      L2_3 = L6_1
      L3_3 = L0_3.x
      L3_3 = L3_3 - 20.0
      L4_3 = L0_3.y
      L5_3 = L0_3.z
      L6_3 = 2
      L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
      L1_3 = SetEntityVisible
      L2_3 = L4_1
      L2_3 = L2_3[1]
      L3_3 = false
      L4_3 = 0
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = SetEntityVisible
      L2_3 = L3_1
      L2_3 = L2_3[1]
      L3_3 = false
      L4_3 = 0
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = SetEntityVisible
      L2_3 = L4_1
      L2_3 = L2_3[2]
      L3_3 = true
      L4_3 = 0
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = SetEntityVisible
      L2_3 = L3_1
      L2_3 = L2_3[2]
      L3_3 = true
      L4_3 = 0
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = RequestNamedPtfxAsset
      L2_3 = "scr_sell"
      L1_3(L2_3)
      L1_3 = GetGameTimer
      L1_3 = L1_3()
      L1_3 = L1_3 + 10000
      while true do
        L2_3 = IN_CASINO
        if not L2_3 then
          break
        end
        L2_3 = GetGameTimer
        L2_3 = L2_3()
        if not (L1_3 > L2_3) then
          break
        end
        L2_3 = HasNamedPtfxAssetLoaded
        L3_3 = "scr_reconstructionaccident"
        L2_3 = L2_3(L3_3)
        if L2_3 then
          break
        end
        L2_3 = HasNamedPtfxAssetLoaded
        L3_3 = "scr_sell"
        L2_3 = L2_3(L3_3)
        if L2_3 then
          break
        end
        L2_3 = Wait
        L3_3 = 33
        L2_3(L3_3)
      end
      L2_3 = UseParticleFxAsset
      L3_3 = "scr_sell"
      L2_3(L3_3)
      L2_3 = StartParticleFxLoopedOnEntity
      L3_3 = "scr_vehicle_damage_smoke"
      L4_3 = L6_1
      L5_3 = 0.0
      L6_3 = 0.0
      L7_3 = 1.9
      L8_3 = 0.0
      L9_3 = 1.0
      L10_3 = L1_1
      L11_3 = 1.0
      L12_3 = false
      L13_3 = false
      L14_3 = false
      L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
    end
    L3_2(L4_2)
  end
end
L44_1 = RegisterNetEvent
L45_1 = "LuckyWheel:TakeControl"
L44_1(L45_1)
L44_1 = AddEventHandler
L45_1 = "LuckyWheel:TakeControl"
function L46_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = GetMyPlayerId
  L1_2 = L1_2()
  L24_1 = A0_2
  L2_2 = false
  L18_1 = L2_2
  L2_2 = L24_1.playerId
  if L2_2 == L1_2 then
    L2_2 = Stats_StartActivity
    L3_2 = "wheel"
    L2_2(L3_2)
    L2_2 = InfoPanel_Update
    L3_2 = nil
    L4_2 = nil
    L5_2 = nil
    L6_2 = nil
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = InfoPanel_UpdateNotification
    L3_2 = nil
    L2_2(L3_2)
    LAST_STARTED_GAME_TYPE = "luckywheel"
    L2_2 = L37_1
    L2_2()
  end
end
L44_1(L45_1, L46_1)
L44_1 = RegisterNetEvent
L45_1 = "LuckyWheel:Quit"
L44_1(L45_1)
L44_1 = AddEventHandler
L45_1 = "LuckyWheel:Quit"
function L46_1(A0_2)
  local L1_2
  L24_1 = A0_2
end
L44_1(L45_1, L46_1)
L44_1 = RegisterNetEvent
L45_1 = "LuckyWheel:Paid"
L44_1(L45_1)
L44_1 = AddEventHandler
L45_1 = "LuckyWheel:Paid"
function L46_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  PLAYER_CHIPS = A0_2
  L2_2 = Casino_AnimateBalance
  L2_2()
  if A1_2 > 0 then
    L2_2 = Stats_Decrease
    L3_2 = "rcore_casino_wheel_profitreal"
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L44_1(L45_1, L46_1)
L44_1 = RegisterNetEvent
L45_1 = "LuckyWheel:PlayerLeft"
L44_1(L45_1)
L44_1 = AddEventHandler
L45_1 = "LuckyWheel:PlayerLeft"
function L46_1(A0_2)
  local L1_2
  L24_1 = A0_2
end
L44_1(L45_1, L46_1)
L44_1 = RegisterNetEvent
L45_1 = "LuckyWheel:Spin"
L44_1(L45_1)
L44_1 = AddEventHandler
L45_1 = "LuckyWheel:Spin"
function L46_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L24_1 = A1_2
  L3_2 = GAME_TIMER
  L24_1.spinTime = L3_2
  L3_2 = L31_1
  L3_2()
  L3_2 = GetMyPlayerId
  L3_2 = L3_2()
  if A0_2 == L3_2 then
    L3_2 = Stats_Increase
    L4_2 = "rcore_casino_wheel_games_played"
    L5_2 = 1
    L3_2(L4_2, L5_2)
    L3_2 = PLAYER_CACHE
    L3_2.luckyWheelCooldownUntil = A2_2
  end
end
L44_1(L45_1, L46_1)
L44_1 = RegisterNetEvent
L45_1 = "LuckyWheel:CollectWinnings"
L44_1(L45_1)
L44_1 = AddEventHandler
L45_1 = "LuckyWheel:CollectWinnings"
function L46_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = LuckyWheelItems
  L4_2 = A1_2.winningItem
  L3_2 = L3_2[L4_2]
  L3_2 = L3_2.soundName
  L4_2 = LuckyWheelItems
  L5_2 = A1_2.winningItem
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.animName
  L5_2 = nil
  L6_2 = A1_2.winningItem
  if "Vehicle" == L6_2 then
    L5_2 = 1
  else
    L6_2 = A1_2.winningItem
    if "Random" == L6_2 then
      L5_2 = 3
    elseif "win_big" == L4_2 then
      L5_2 = -1
    end
  end
  if nil ~= L5_2 then
    L6_2 = CasinoAnnouncer
    L7_2 = L6_2
    L6_2 = L6_2.LuckyWheelPrice
    L8_2 = L5_2
    L9_2 = 8000
    L6_2(L7_2, L8_2, L9_2)
  end
  L6_2 = GetMyPlayerId
  L6_2 = L6_2()
  if A0_2 == L6_2 then
    L6_2 = A1_2.winningItem
    if "Nothing" ~= L6_2 then
      L6_2 = Stats_Increase
      L7_2 = "rcore_casino_wheel_wins"
      L8_2 = 1
      L6_2(L7_2, L8_2)
    else
      L6_2 = Stats_Increase
      L7_2 = "rcore_casino_wheel_loss"
      L8_2 = 1
      L6_2(L7_2, L8_2)
    end
    L6_2 = string
    L6_2 = L6_2.match
    L7_2 = A1_2.winningItem
    L8_2 = "Money"
    L6_2 = L6_2(L7_2, L8_2)
    if not L6_2 then
      L6_2 = string
      L6_2 = L6_2.match
      L7_2 = A1_2.winningItem
      L8_2 = "Chips"
      L6_2 = L6_2(L7_2, L8_2)
      if not L6_2 then
        goto lbl_64
      end
    end
    L6_2 = Stats_Increase
    L7_2 = "rcore_casino_wheel_profit"
    L8_2 = A1_2.chipsMoney
    L6_2(L7_2, L8_2)
    ::lbl_64::
    L6_2 = A1_2.winningItem
    if "Vehicle" == L6_2 then
      L6_2 = Translation
      L6_2 = L6_2.Get
      L7_2 = "WHEEL_PRICE_CAR_DEFAULTNAME"
      L6_2 = L6_2(L7_2)
      L7_2 = A1_2.podiumModel
      if L7_2 then
        L7_2 = GetDisplayNameFromVehicleModel
        L8_2 = A1_2.podiumModel
        L7_2 = L7_2(L8_2)
        A1_2.podiumModel = L7_2
        L7_2 = GetLabelText
        L8_2 = A1_2.podiumModel
        L7_2 = L7_2(L8_2)
        L6_2 = L7_2
      end
      L7_2 = Podium_AnimatePrice
      L8_2 = Translation
      L8_2 = L8_2.Get
      L9_2 = "WHEEL_PRICE_CAR_1"
      L8_2 = L8_2(L9_2)
      L9_2 = Translation
      L9_2 = L9_2.Get
      L10_2 = "WHEEL_PRICE_CAR_2"
      L9_2 = L9_2(L10_2)
      L10_2 = L6_2
      L7_2(L8_2, L9_2, L10_2)
      L7_2 = InfoPanel_UpdateNotification
      L8_2 = Translation
      L8_2 = L8_2.Get
      L9_2 = "LUCKYWHEEL_YOU_GOT_CAR"
      L8_2, L9_2, L10_2 = L8_2(L9_2)
      L7_2(L8_2, L9_2, L10_2)
      L7_2 = Framework
      L7_2 = L7_2.Active
      if 3 == L7_2 then
        L7_2 = CreateThread
        function L8_2()
          local L0_3, L1_3
          L0_3 = Wait
          L1_3 = 5000
          L0_3(L1_3)
          L0_3 = IN_CASINO
          if L0_3 then
            L0_3 = CASINO_BEING_KICKED
            if not L0_3 then
              L0_3 = StartCasinoLeaveScene
              L0_3()
            end
          end
        end
        L7_2(L8_2)
      end
    else
      L6_2 = A1_2.winningItem
      if "Random" == L6_2 then
        L6_2 = string
        L6_2 = L6_2.format
        L7_2 = Translation
        L7_2 = L7_2.Get
        L8_2 = "LUCKYWHEEL_RANDOMUNLOCKED"
        L7_2 = L7_2(L8_2)
        L8_2 = A1_2.randomItem
        L8_2 = L8_2.title
        L9_2 = A1_2.randomAmount
        L6_2 = L6_2(L7_2, L8_2, L9_2)
        L7_2 = InfoPanel_UpdateNotification
        L8_2 = L6_2
        L7_2(L8_2)
      else
        L6_2 = A1_2.winningItem
        if "Drinks" == L6_2 then
          L6_2 = DrinkingBar_AnimatePrice
          L7_2 = Translation
          L7_2 = L7_2.Get
          L8_2 = "WHEEL_PRICE_DRINKS_1"
          L7_2 = L7_2(L8_2)
          L8_2 = Translation
          L8_2 = L8_2.Get
          L9_2 = "WHEEL_PRICE_DRINKS_2"
          L8_2 = L8_2(L9_2)
          L9_2 = Translation
          L9_2 = L9_2.Get
          L10_2 = "WHEEL_PRICE_DRINKS_3"
          L9_2, L10_2 = L9_2(L10_2)
          L6_2(L7_2, L8_2, L9_2, L10_2)
        else
          L6_2 = string
          L6_2 = L6_2.match
          L7_2 = A1_2.winningItem
          L8_2 = "Money"
          L6_2 = L6_2(L7_2, L8_2)
          if L6_2 then
            L6_2 = string
            L6_2 = L6_2.format
            L7_2 = Translation
            L7_2 = L7_2.Get
            L8_2 = "LUCKYWHEEL_YOU_GOT_MONEY"
            L7_2 = L7_2(L8_2)
            L8_2 = A1_2.chipsMoney
            L6_2 = L6_2(L7_2, L8_2)
            L7_2 = InfoPanel_UpdateNotification
            L8_2 = L6_2
            L7_2(L8_2)
          else
            L6_2 = string
            L6_2 = L6_2.match
            L7_2 = A1_2.winningItem
            L8_2 = "Chips"
            L6_2 = L6_2(L7_2, L8_2)
            if L6_2 then
              L6_2 = string
              L6_2 = L6_2.format
              L7_2 = Translation
              L7_2 = L7_2.Get
              L8_2 = "LUCKYWHEEL_YOU_GOT_CHIPS"
              L7_2 = L7_2(L8_2)
              L8_2 = A1_2.chipsMoney
              L6_2 = L6_2(L7_2, L8_2)
              L7_2 = InfoPanel_UpdateNotification
              L8_2 = L6_2
              L7_2(L8_2)
            else
              L6_2 = A1_2.winningItem
              if "Nothing" == L6_2 then
                L6_2 = InfoPanel_UpdateNotification
                L7_2 = Translation
                L7_2 = L7_2.Get
                L8_2 = "LUCKYWHEEL_YOU_GOT_NOTHING"
                L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
                L6_2(L7_2, L8_2, L9_2, L10_2)
              end
            end
          end
        end
      end
    end
    if nil ~= L3_2 then
      L6_2 = PlaySound
      L7_2 = L3_2
      L8_2 = "dlc_vw_casino_lucky_wheel_sounds"
      L9_2 = L5_1
      L10_2 = true
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
    L6_2 = L14_1
    if nil ~= L6_2 then
      L6_2 = L14_1
      L7_2 = L6_2
      L6_2 = L6_2.startswith
      L8_2 = "SpinningIDLE_"
      L6_2 = L6_2(L7_2, L8_2)
      if L6_2 then
        L6_2 = L27_1
        L7_2 = L4_2
        L6_2(L7_2)
      end
    end
    if -1 ~= A2_2 then
      PLAYER_CHIPS = A2_2
      L6_2 = Casino_AnimateBalance
      L6_2()
    end
    L6_2 = CreateThread
    function L7_2()
      local L0_3, L1_3
      L0_3 = Wait
      L1_3 = 3500
      L0_3(L1_3)
      L0_3 = InfoPanel_UpdateNotification
      L1_3 = nil
      L0_3(L1_3)
    end
    L6_2(L7_2)
  end
end
L44_1(L45_1, L46_1)
L44_1 = RegisterNetEvent
L45_1 = "LuckyWheel:State"
L44_1(L45_1)
L44_1 = AddEventHandler
L45_1 = "LuckyWheel:State"
function L46_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L24_1.actualRotation
  L24_1 = A0_2
  L2_2 = L18_1
  if L2_2 and L1_2 then
    L24_1.actualRotation = L1_2
  end
  L2_2 = L6_1
  if nil ~= L2_2 then
    L2_2 = L18_1
    if not L2_2 then
      L2_2 = SetEntityRotation
      L3_2 = L6_1
      L4_2 = 0.0
      L5_2 = Repeat
      L6_2 = L24_1.finalRotation
      L7_2 = 360.0
      L5_2 = L5_2(L6_2, L7_2)
      L6_2 = L1_1
      L7_2 = 0
      L8_2 = false
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    end
  end
  L2_2 = A0_2.broken
  if L2_2 then
    L2_2 = L43_1
    L3_2 = true
    L2_2(L3_2)
  end
end
L44_1(L45_1, L46_1)
L44_1 = RegisterNetEvent
L45_1 = "LuckyWheel:BeginFix"
L44_1(L45_1)
L44_1 = AddEventHandler
L45_1 = "LuckyWheel:BeginFix"
function L46_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  if A0_2 then
    L1_2 = exports
    L1_2 = L1_2.rcore_casino_jobs
    L1_2 = L1_2.GetCircuitBoard
    L1_2 = L1_2()
    L2_2 = Config
    L2_2 = L2_2.Jobs
    L2_2 = L2_2.Electrician
    L2_2 = L2_2.Difficulty
    L2_2 = L2_2.LuckyWheel
    L3_2 = L1_2.LoadAndStart
    L4_2 = L2_2.CircuitBoardLevel
    L5_2 = L2_2.CircuitBoardLifes
    function L6_2(A0_3)
      local L1_3, L2_3
      if A0_3 then
        L1_3 = TriggerServerEvent
        L2_3 = "LuckyWheel:GotFixed"
        L1_3(L2_3)
      end
    end
    L3_2(L4_2, L5_2, L6_2)
  end
end
L44_1(L45_1, L46_1)
L44_1 = RegisterNetEvent
L45_1 = "LuckyWheel:GotFixed"
L44_1(L45_1)
L44_1 = AddEventHandler
L45_1 = "LuckyWheel:GotFixed"
function L46_1(A0_2)
  local L1_2, L2_2
  L24_1.broken = false
  L1_2 = L43_1
  L2_2 = false
  L1_2(L2_2)
end
L44_1(L45_1, L46_1)
L44_1 = RegisterNetEvent
L45_1 = "LuckyWheel:Busy"
L44_1(L45_1)
L44_1 = AddEventHandler
L45_1 = "LuckyWheel:Busy"
function L46_1(A0_2, A1_2)
  local L2_2
  L24_1 = A1_2
  L2_2 = GAME_TIMER
  L2_2 = L2_2 + A0_2
  L24_1.spinTime = L2_2
end
L44_1(L45_1, L46_1)
