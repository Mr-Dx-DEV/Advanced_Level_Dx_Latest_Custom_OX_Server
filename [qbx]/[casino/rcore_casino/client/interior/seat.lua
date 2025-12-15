local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1
L0_1 = {}
L1_1 = IsPedMale
L2_1 = PlayerPedId
L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1 = L2_1()
L1_1 = L1_1(L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1)
L1_1 = false
L2_1 = 1
L3_1 = 1
L4_1 = nil
L5_1 = nil
if L1_1 then
  L6_1 = "male"
  if L6_1 then
    goto lbl_18
  end
end
L6_1 = "female"
::lbl_18::
L7_1 = false
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = DebugStart
  L2_2 = "GetOffsetFromSeatingType"
  L1_2(L2_2)
  if "vip" == A0_2 then
    L1_2 = vector3
    L2_2 = 0.065
    L3_2 = -0.22999999999999998
    L4_2 = -0.475
    return L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = vector3
  L2_2 = -0.035
  L3_2 = 0.37
  L4_2 = 0.595
  return L1_2(L2_2, L3_2, L4_2)
end
function L9_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = DebugStart
  L1_2 = "SeatLoop"
  L0_2(L1_2)
  L0_2 = CasinoSeating
  L1_2 = L3_1
  L0_2 = L0_2[L1_2]
  L4_1 = L0_2
  L0_2 = RandomNumber
  L1_2 = 1
  L2_2 = 13
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 < 7 then
    L0_2 = "base"
    if L0_2 then
      goto lbl_25
    end
  end
  L0_2 = GetRandomItem
  L1_2 = {}
  L2_2 = "idle_a"
  L3_2 = "idle_b"
  L4_2 = "idle_c"
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L0_2 = L0_2(L1_2)
  ::lbl_25::
  L1_2 = "anim@amb@clubhouse@seating@"
  L2_2 = L6_1
  L3_2 = "@var_"
  L4_2 = PokerLetterIndex
  L5_2 = L2_1
  L4_2 = L4_2[L5_2]
  L5_2 = "@base@"
  L1_2 = L1_2 .. L2_2 .. L3_2 .. L4_2 .. L5_2
  L2_2 = GetObjectOffsetFromCoords
  L3_2 = L4_1.coords
  L4_2 = L4_1.heading
  L5_2 = L8_1
  L6_2 = "vip"
  L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = PlaySynchronizedScene
  L4_2 = L2_2
  L5_2 = vector3
  L6_2 = 0.0
  L7_2 = 0.0
  L8_2 = L4_1.heading
  L8_2 = L8_2 + 180
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = L1_2
  L7_2 = L0_2
  L8_2 = false
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L4_2 = CreateNewSceneEndEvent
  L5_2 = L3_2
  L6_2 = 0.95
  L7_2 = L9_1
  L8_2 = 20000
  L9_2 = 500
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end
function L10_1()
  local L0_2, L1_2, L2_2
  L0_2 = DebugStart
  L1_2 = "PoseTransition"
  L0_2(L1_2)
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L0_3 = BlockPlayerInteraction
    L1_3 = 2000
    L0_3(L1_3)
    L0_3 = InfoPanel_UpdateNotification
    L1_3 = nil
    L0_3(L1_3)
    L0_3 = PokerLetterIndex
    L1_3 = L2_1
    L0_3 = L0_3[L1_3]
    L1_3 = "anim@amb@clubhouse@seating@"
    L2_3 = L6_1
    L3_3 = "@var_"
    L4_3 = L0_3
    L5_3 = "@base@"
    L1_3 = L1_3 .. L2_3 .. L3_3 .. L4_3 .. L5_3
    L2_3 = L2_1
    if L2_3 < 3 then
      L2_3 = L2_1
      L2_3 = L2_3 + 1
      L2_1 = L2_3
    else
      L2_3 = 1
      L2_1 = L2_3
    end
    L2_3 = L0_3
    L3_3 = "_to_"
    L4_3 = PokerLetterIndex
    L5_3 = L2_1
    L4_3 = L4_3[L5_3]
    L2_3 = L2_3 .. L3_3 .. L4_3
    L3_3 = CreateNewSceneEndEvent
    L4_3 = nil
    L5_3 = 0
    L6_3 = nil
    L7_3 = 0
    L8_3 = 0
    L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
    L3_3 = GetObjectOffsetFromCoords
    L4_3 = L4_1.coords
    L5_3 = L4_1.heading
    L6_3 = L8_1
    L7_3 = "vip"
    L6_3, L7_3, L8_3, L9_3, L10_3 = L6_3(L7_3)
    L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
    L4_3 = PlaySynchronizedScene
    L5_3 = L3_3
    L6_3 = vector3
    L7_3 = 0.0
    L8_3 = 0.0
    L9_3 = L4_1.heading
    L9_3 = L9_3 + 180
    L6_3 = L6_3(L7_3, L8_3, L9_3)
    L7_3 = L1_3
    L8_3 = L2_3
    L9_3 = false
    L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3, L9_3)
    L5_3 = CreateNewSceneEndEvent
    L6_3 = L4_3
    L7_3 = 0.95
    function L8_3()
      local L0_4, L1_4, L2_4
      L0_4 = InfoPanel_UpdateNotification
      L1_4 = Translation
      L1_4 = L1_4.Get
      L2_4 = "SEATING_CHANGE_POSE_LEAVE"
      L1_4, L2_4 = L1_4(L2_4)
      L0_4(L1_4, L2_4)
      L0_4 = L9_1
      L0_4()
    end
    L9_3 = 5000
    L10_3 = 500
    L5_3(L6_3, L7_3, L8_3, L9_3, L10_3)
  end
  L2_2 = "PoseTransition"
  L0_2(L1_2, L2_2)
end
function L11_1()
  local L0_2, L1_2
  L0_2 = DebugStart
  L1_2 = "OnPlayerStandUp"
  L0_2(L1_2)
  L0_2 = ClearPedTasks
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L0_2(L1_2)
  L0_2 = ClearPedSecondaryTask
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L0_2(L1_2)
  L0_2 = ScenePed_AnnounceEnd
  L0_2()
end
function L12_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = DebugStart
  L1_2 = "HandleControls"
  L0_2(L1_2)
  L0_2 = CAN_INTERACT
  if not L0_2 then
    return
  end
  L0_2 = DisableControlAction
  L1_2 = 1
  L2_2 = 203
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = IsDisabledControlJustPressed
  L1_2 = 0
  L2_2 = 203
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 then
    L0_2 = L10_1
    L0_2()
  end
end
function L13_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = DebugStart
  L2_2 = "EnterSeat"
  L1_2(L2_2)
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L0_3 = BlockPlayerInteraction
    L1_3 = 3000
    L0_3(L1_3)
    L0_3 = InfoPanel_UpdateNotification
    L1_3 = nil
    L0_3(L1_3)
    L0_3 = 1
    L2_1 = L0_3
    L0_3 = A0_2
    L3_1 = L0_3
    L0_3 = CasinoSeating
    L1_3 = L3_1
    L0_3 = L0_3[L1_3]
    L4_1 = L0_3
    L0_3 = TaskAchieveHeading
    L1_3 = PlayerPedId
    L1_3 = L1_3()
    L2_3 = L4_1.heading
    L3_3 = 1000
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = Wait
    L1_3 = 1000
    L0_3(L1_3)
    L0_3 = "anim@amb@clubhouse@seating@"
    L1_3 = L6_1
    L2_3 = "@var_"
    L3_3 = PokerLetterIndex
    L4_3 = L2_1
    L3_3 = L3_3[L4_3]
    L4_3 = "@base@"
    L0_3 = L0_3 .. L1_3 .. L2_3 .. L3_3 .. L4_3
    L1_3 = GetObjectOffsetFromCoords
    L2_3 = L4_1.coords
    L3_3 = L4_1.heading
    L4_3 = L8_1
    L5_3 = "vip"
    L4_3, L5_3, L6_3, L7_3, L8_3, L9_3 = L4_3(L5_3)
    L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
    L2_3 = PlaySynchronizedScene
    L3_3 = L1_3
    L4_3 = vector3
    L5_3 = 0.0
    L6_3 = 0.0
    L7_3 = L4_1.heading
    L7_3 = L7_3 + 180
    L4_3 = L4_3(L5_3, L6_3, L7_3)
    L5_3 = L0_3
    L6_3 = "enter"
    L7_3 = false
    L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
    L3_3 = CreateNewSceneEndEvent
    L4_3 = L2_3
    L5_3 = 0.95
    function L6_3()
      local L0_4, L1_4, L2_4
      L0_4 = InfoPanel_UpdateNotification
      L1_4 = Translation
      L1_4 = L1_4.Get
      L2_4 = "SEATING_CHANGE_POSE_LEAVE"
      L1_4, L2_4 = L1_4(L2_4)
      L0_4(L1_4, L2_4)
      L0_4 = L9_1
      L0_4()
    end
    L7_3 = 6000
    L8_3 = 500
    L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
    L3_3 = true
    L7_1 = L3_3
    while true do
      L3_3 = L7_1
      if true ~= L3_3 then
        break
      end
      L3_3 = IN_CASINO
      if not L3_3 then
        break
      end
      L3_3 = L12_1
      L3_3()
      L3_3 = Wait
      L4_3 = 0
      L3_3(L4_3)
    end
    L3_3 = InfoPanel_UpdateNotification
    L4_3 = nil
    L3_3(L4_3)
    L3_3 = ForgotLastStartedGameType
    L4_3 = "seating"
    L3_3(L4_3)
    LAST_INTERACTION_GAME = ""
    L3_3 = IN_CASINO
    if L3_3 then
      L3_3 = PlaySynchronizedScene
      L4_3 = L1_3
      L5_3 = vector3
      L6_3 = 0.0
      L7_3 = 0.0
      L8_3 = L4_1.heading
      L8_3 = L8_3 + 180
      L5_3 = L5_3(L6_3, L7_3, L8_3)
      L6_3 = L0_3
      L7_3 = "exit"
      L8_3 = false
      L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
      L4_3 = CreateNewSceneEndEvent
      L5_3 = L3_3
      L6_3 = 0.95
      L7_3 = L11_1
      L8_3 = 6000
      L9_3 = 500
      L4_3(L5_3, L6_3, L7_3, L8_3, L9_3)
    end
  end
  L3_2 = "EnterSeat"
  L1_2(L2_2, L3_2)
end
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = DebugStart
  L2_2 = "ExitSeat"
  L1_2(L2_2)
  L1_2 = BlockPlayerInteraction
  L2_2 = 3000
  L1_2(L2_2)
  L1_2 = CreateNewSceneEndEvent
  L2_2 = nil
  L3_2 = 0
  L4_2 = nil
  L5_2 = 0
  L6_2 = 0
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
function L15_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = DebugStart
  L2_2 = "Seating_ShowNotifyUI"
  L1_2(L2_2)
  L1_2 = L7_1
  if true == L1_2 then
    return
  end
  L5_1 = A0_2
  L1_2 = Config
  L1_2 = L1_2.UseTarget
  if L1_2 then
    return
  end
  L2_2 = L5_1
  L1_2 = L0_1
  L1_2 = L1_2[L2_2]
  if L1_2 then
    L1_2 = InfoPanel_UpdateNotification
    L2_2 = Translation
    L2_2 = L2_2.Get
    L3_2 = "SEATING_USED"
    L2_2, L3_2 = L2_2(L3_2)
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = InfoPanel_UpdateNotification
  L2_2 = Translation
  L2_2 = L2_2.Get
  L3_2 = "SEATING_PRESS_TO_SIT"
  L2_2, L3_2 = L2_2(L3_2)
  L1_2(L2_2, L3_2)
end
Seating_ShowNotifyUI = L15_1
function L15_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = DebugStart
  L2_2 = "Seating_OnInteraction"
  L1_2(L2_2)
  L1_2 = CAN_INTERACT
  if not L1_2 then
    return
  end
  if A0_2 then
    L5_1 = A0_2
  end
  L1_2 = L7_1
  if not L1_2 then
    L1_2 = L5_1
    if nil ~= L1_2 then
      goto lbl_18
    end
  end
  do return end
  ::lbl_18::
  L2_2 = L5_1
  L1_2 = L0_1
  L1_2 = L1_2[L2_2]
  if not L1_2 then
    L1_2 = Peds_SomeoneNearCoords
    L2_2 = CasinoSeating
    L3_2 = L5_1
    L2_2 = L2_2[L3_2]
    L2_2 = L2_2.coords
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      goto lbl_38
    end
  end
  L1_2 = InfoPanel_UpdateNotification
  L2_2 = Translation
  L2_2 = L2_2.Get
  L3_2 = "SEATING_USED"
  L2_2, L3_2 = L2_2(L3_2)
  L1_2(L2_2, L3_2)
  do return end
  ::lbl_38::
  L1_2 = TriggerServerEvent
  L2_2 = "Casino:UseSeating"
  L3_2 = L5_1
  L1_2(L2_2, L3_2)
  L1_2 = BlockPlayerInteraction
  L2_2 = 2000
  L1_2(L2_2)
end
Seating_OnInteraction = L15_1
function L15_1()
  local L0_2, L1_2, L2_2
  L0_2 = DebugStart
  L1_2 = "Seating_OnInteractionQuit"
  L0_2(L1_2)
  L0_2 = CAN_INTERACT
  if not L0_2 then
    return
  end
  L0_2 = false
  L7_1 = L0_2
  L0_2 = TriggerServerEvent
  L1_2 = "Casino:QuitSeating"
  L2_2 = L4_1.coords
  L0_2(L1_2, L2_2)
end
Seating_OnInteractionQuit = L15_1
function L15_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L0_2 = DebugStart
  L1_2 = "Seating_Load"
  L0_2(L1_2)
  L0_2 = RequestAnimDictAndWait
  L1_2 = "anim@amb@clubhouse@seating@female@var_a@base@"
  L0_2(L1_2)
  L0_2 = RequestAnimDictAndWait
  L1_2 = "anim@amb@clubhouse@seating@female@var_b@base@"
  L0_2(L1_2)
  L0_2 = RequestAnimDictAndWait
  L1_2 = "anim@amb@clubhouse@seating@female@var_c@base@"
  L0_2(L1_2)
  L0_2 = RequestAnimDictAndWait
  L1_2 = "anim@amb@clubhouse@seating@male@var_a@base@"
  L0_2(L1_2)
  L0_2 = RequestAnimDictAndWait
  L1_2 = "anim@amb@clubhouse@seating@male@var_b@base@"
  L0_2(L1_2)
  L0_2 = RequestAnimDictAndWait
  L1_2 = "anim@amb@clubhouse@seating@male@var_c@base@"
  L0_2(L1_2)
  L0_2 = pairs
  L1_2 = CasinoSeating
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = GetObjectOffsetFromCoords
    L7_2 = L5_2.coords
    L8_2 = L5_2.heading
    L9_2 = 0.0
    L10_2 = -0.5
    L11_2 = 0.0
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
    L7_2 = CreateTargetZone
    L8_2 = vector3
    L9_2 = L6_2.x
    L10_2 = L6_2.y
    L11_2 = L6_2.z
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    L9_2 = 1.0
    L10_2 = 2.0
    L11_2 = L5_2.heading
    L12_2 = {}
    L13_2 = {}
    L13_2.num = 1
    L13_2.type = "client"
    L13_2.event = "Casino:Target"
    L13_2.icon = "fas fa-chair"
    L14_2 = removePlaceholderText
    L15_2 = Translation
    L15_2 = L15_2.Get
    L16_2 = "SEATING_PRESS_TO_SIT"
    L15_2, L16_2, L17_2, L18_2 = L15_2(L16_2)
    L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2)
    L13_2.label = L14_2
    L13_2.targeticon = "fas fa-chair"
    function L14_2(A0_3, A1_3, A2_3)
      local L3_3
      L3_3 = CAN_INTERACT
      return L3_3
    end
    L13_2.canInteract = L14_2
    L14_2 = {}
    L15_2 = 255
    L16_2 = 255
    L17_2 = 255
    L18_2 = 255
    L14_2[1] = L15_2
    L14_2[2] = L16_2
    L14_2[3] = L17_2
    L14_2[4] = L18_2
    L13_2.drawColor = L14_2
    L14_2 = {}
    L15_2 = 30
    L16_2 = 144
    L17_2 = 255
    L18_2 = 255
    L14_2[1] = L15_2
    L14_2[2] = L16_2
    L14_2[3] = L17_2
    L14_2[4] = L18_2
    L13_2.successDrawColor = L14_2
    L13_2.eventAction = "seat_enter"
    L13_2.chairIndex = L4_2
    L12_2[1] = L13_2
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  end
end
Seating_Load = L15_1
L15_1 = RegisterNetEvent
L16_1 = "Casino:UseSeating"
L15_1(L16_1)
L15_1 = AddEventHandler
L16_1 = "Casino:UseSeating"
function L17_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = IN_CASINO
  if not L2_2 then
    return
  end
  L2_2 = L0_1
  L2_2[A1_2] = A0_2
  L2_2 = GetMyPlayerId
  L2_2 = L2_2()
  if A0_2 == L2_2 then
    LAST_STARTED_GAME_TYPE = "seating"
    L2_2 = L13_1
    L3_2 = A1_2
    L2_2(L3_2)
  end
end
L15_1(L16_1, L17_1)
L15_1 = RegisterNetEvent
L16_1 = "Casino:UsedSeatings"
L15_1(L16_1)
L15_1 = AddEventHandler
L16_1 = "Casino:UsedSeatings"
function L17_1(A0_2)
  local L1_2
  L1_2 = IN_CASINO
  if not L1_2 then
    return
  end
  L0_1 = A0_2
end
L15_1(L16_1, L17_1)
L15_1 = RegisterNetEvent
L16_1 = "Casino:QuitSeating"
L15_1(L16_1)
L15_1 = AddEventHandler
L16_1 = "Casino:QuitSeating"
function L17_1(A0_2, A1_2)
  local L2_2
  L2_2 = IN_CASINO
  if not L2_2 then
    return
  end
  L2_2 = L0_1
  L2_2[A1_2] = nil
end
L15_1(L16_1, L17_1)
