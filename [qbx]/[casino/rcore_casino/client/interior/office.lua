local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1
L0_1 = {}
Office = L0_1
L0_1 = nil
L1_1 = nil
L2_1 = nil
L3_1 = nil
L4_1 = "anim@amb@clubhouse@boss@male@"
L5_1 = false
L6_1 = false
L7_1 = false
L8_1 = {}
L9_1 = 599.15
L10_1 = 508.15
L8_1[1] = L9_1
L8_1[2] = L10_1
function L9_1()
  local L0_2, L1_2
  L0_2 = DebugStart
  L1_2 = "NextDevice"
  L0_2(L1_2)
  L0_2 = L0_1
  L1_2 = OfficeCameraDevices
  L1_2 = #L1_2
  if L0_2 < L1_2 then
    L0_2 = L0_1
    L0_2 = L0_2 + 1
    if L0_2 then
      goto lbl_15
    end
  end
  L0_2 = 1
  ::lbl_15::
  L0_1 = L0_2
  L0_2 = L0_1
  L0_2 = 14 == L0_2
  FORCE_INSIDE_TRACK = L0_2
end
function L10_1()
  local L0_2, L1_2
  L0_2 = DebugStart
  L1_2 = "PreviousDevice"
  L0_2(L1_2)
  L0_2 = L0_1
  if L0_2 > 1 then
    L0_2 = L0_1
    L0_2 = L0_2 - 1
    if L0_2 then
      goto lbl_14
    end
  end
  L0_2 = OfficeCameraDevices
  L0_2 = #L0_2
  ::lbl_14::
  L0_1 = L0_2
  L0_2 = L0_1
  L0_2 = 14 == L0_2
  FORCE_INSIDE_TRACK = L0_2
end
function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = DebugStart
  L1_2 = "StopCameras"
  L0_2(L1_2)
  L0_2 = nil
  L0_1 = L0_2
  L0_2 = AnimpostfxStop
  L1_2 = "FocusIn"
  L0_2(L1_2)
  CAN_MOVE = true
  L0_2 = SetCamActive
  L1_2 = L1_1
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = RenderScriptCams
  L1_2 = false
  L2_2 = 0
  L3_2 = 0
  L4_2 = true
  L5_2 = false
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
  L0_2 = PlaySoundFrontend
  L1_2 = L3_1
  L2_2 = "Pin_Bad"
  L3_2 = "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS"
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = L3_1
  if L0_2 then
    L0_2 = ReleaseSoundId
    L1_2 = L3_1
    L0_2(L1_2)
  end
  L0_2 = DestroyCam
  L1_2 = L1_1
  L0_2(L1_2)
  L0_2 = ClearFocus
  L0_2()
end
function L12_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L0_2 = pairs
  L1_2 = ELEVATORS
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = GetObjectOffsetFromCoords
    L7_2 = L5_2.leftPosition
    L8_2 = L5_2.heading
    L9_2 = 0.0
    L10_2 = -0.5
    L11_2 = 1.0
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
    L13_2.icon = "fas fa-elevator"
    L14_2 = removePlaceholderText
    L15_2 = Translation
    L15_2 = L15_2.Get
    L16_2 = "BOSS_PRESS_TO_USE_ELEVATOR"
    L15_2, L16_2, L17_2, L18_2 = L15_2(L16_2)
    L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2)
    L13_2.label = L14_2
    L13_2.targeticon = "fas fa-elevator"
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
    L13_2.eventAction = "elevator_enter"
    L13_2.elevator = L5_2
    L12_2[1] = L13_2
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  end
  L0_2 = GetObjectOffsetFromCoords
  L1_2 = OfficeTableEnterPosition
  L2_2 = 0.0
  L3_2 = 0.0
  L4_2 = 0.0
  L5_2 = 0.0
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
  L1_2 = CreateTargetZone
  L2_2 = vector3
  L3_2 = L0_2.x
  L4_2 = L0_2.y
  L5_2 = L0_2.z
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = 2.0
  L4_2 = 4.0
  L5_2 = 0.0
  L6_2 = {}
  L7_2 = {}
  L7_2.num = 1
  L7_2.type = "client"
  L7_2.event = "Casino:Target"
  L7_2.icon = "fas fa-user-tie"
  L8_2 = removePlaceholderText
  L9_2 = Translation
  L9_2 = L9_2.Get
  L10_2 = "BOSS_PRESS_TO_USE_COMPUTER"
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L9_2(L10_2)
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L7_2.label = L8_2
  L7_2.targeticon = "fas fa-user-tie"
  function L8_2(A0_3, A1_3, A2_3)
    local L3_3
    L3_3 = CAN_INTERACT
    return L3_3
  end
  L7_2.canInteract = L8_2
  L8_2 = {}
  L9_2 = 255
  L10_2 = 255
  L11_2 = 255
  L12_2 = 255
  L8_2[1] = L9_2
  L8_2[2] = L10_2
  L8_2[3] = L11_2
  L8_2[4] = L12_2
  L7_2.drawColor = L8_2
  L8_2 = {}
  L9_2 = 30
  L10_2 = 144
  L11_2 = 255
  L12_2 = 255
  L8_2[1] = L9_2
  L8_2[2] = L10_2
  L8_2[3] = L11_2
  L8_2[4] = L12_2
  L7_2.successDrawColor = L8_2
  L7_2.eventAction = "cameras_enter"
  L6_2[1] = L7_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
Office_Load = L12_1
L12_1 = Office
function L13_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = DebugStart
  L1_2 = "Office.EnterCameras"
  L0_2(L1_2)
  LAST_STARTED_GAME_TYPE = "cameras"
  L0_2 = BlockPlayerInteraction
  L1_2 = 1000
  L0_2(L1_2)
  L0_2 = 1
  L0_1 = L0_2
  L0_2 = CreateCamWithParams
  L1_2 = "DEFAULT_SCRIPTED_CAMERA"
  L2_2 = OfficeCameraDevices
  L3_2 = L0_1
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.coords
  L3_2 = OfficeCameraDevices
  L4_2 = L0_1
  L3_2 = L3_2[L4_2]
  L3_2 = L3_2.rotation
  L4_2 = 50.0
  L5_2 = true
  L6_2 = 2
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_1 = L0_2
  L0_2 = SetCamActive
  L1_2 = L1_1
  L2_2 = false
  L0_2(L1_2, L2_2)
  CAN_MOVE = false
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L0_3 = nil
    L1_3 = GAME_TIMER
    L2_3 = 50.0
    while true do
      L3_3 = L0_1
      if nil == L3_3 then
        break
      end
      L3_3 = L0_1
      if L3_3 ~= L0_3 then
        L3_3 = PlaySoundFrontend
        L4_3 = L3_1
        L5_3 = "Pin_Good"
        L6_3 = "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS"
        L7_3 = true
        L3_3(L4_3, L5_3, L6_3, L7_3)
        L3_3 = AnimpostfxStop
        L4_3 = "FocusIn"
        L3_3(L4_3)
        L3_3 = Wait
        L4_3 = 100
        L3_3(L4_3)
        L0_3 = L0_1
        L3_3 = vector3
        L4_3 = 0.0
        L5_3 = 0.0
        L6_3 = 0.0
        L3_3 = L3_3(L4_3, L5_3, L6_3)
        L2_1 = L3_3
        L2_3 = 50.0
        L3_3 = SetCamFov
        L4_3 = L1_1
        L5_3 = L2_3
        L3_3(L4_3, L5_3)
        L3_3 = SetCamActive
        L4_3 = L1_1
        L5_3 = true
        L3_3(L4_3, L5_3)
        L3_3 = RenderScriptCams
        L4_3 = true
        L5_3 = 0
        L6_3 = 0
        L7_3 = true
        L8_3 = false
        L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
        L3_3 = SetFocusPosAndVel
        L4_3 = OfficeCameraDevices
        L5_3 = L0_1
        L4_3 = L4_3[L5_3]
        L4_3 = L4_3.coords
        L5_3 = 0.0
        L6_3 = 0.0
        L7_3 = 0.0
        L3_3(L4_3, L5_3, L6_3, L7_3)
        L3_3 = SetCamCoord
        L4_3 = L1_1
        L5_3 = OfficeCameraDevices
        L6_3 = L0_1
        L5_3 = L5_3[L6_3]
        L5_3 = L5_3.coords
        L3_3(L4_3, L5_3)
        L3_3 = AnimpostfxPlay
        L4_3 = "FocusIn"
        L3_3(L4_3)
      end
      L3_3 = HideHudAndRadarThisFrame
      L3_3()
      L3_3 = SetCamRot
      L4_3 = L1_1
      L5_3 = OfficeCameraDevices
      L6_3 = L0_1
      L5_3 = L5_3[L6_3]
      L5_3 = L5_3.rotation
      L6_3 = L2_1
      L5_3 = L5_3 + L6_3
      L6_3 = 2
      L3_3(L4_3, L5_3, L6_3)
      L3_3 = GAME_TIMER
      L3_3 = L3_3 - L1_3
      L3_3 = L3_3 / 15
      L4_3 = 0.0
      L5_3 = 0.0
      L6_3 = IsGamepadControl
      L6_3 = L6_3()
      if L6_3 then
        L6_3 = GetSmartControlNormal
        L7_3 = 31
        L6_3 = L6_3(L7_3)
        L6_3 = L6_3 * 0.2
        L4_3 = L6_3 * L3_3
        L6_3 = GetSmartControlNormal
        L7_3 = 30
        L6_3 = L6_3(L7_3)
        L6_3 = L6_3 * 0.2
        L5_3 = L6_3 * L3_3
      else
        L6_3 = IsControlPressed
        L7_3 = 2
        L8_3 = 172
        L6_3 = L6_3(L7_3, L8_3)
        if L6_3 then
          L4_3 = -0.2 * L3_3
        else
          L6_3 = IsControlPressed
          L7_3 = 2
          L8_3 = 173
          L6_3 = L6_3(L7_3, L8_3)
          if L6_3 then
            L4_3 = 0.2 * L3_3
          else
            L6_3 = IsControlPressed
            L7_3 = 2
            L8_3 = 174
            L6_3 = L6_3(L7_3, L8_3)
            if L6_3 then
              L5_3 = -0.2 * L3_3
            else
              L6_3 = IsControlPressed
              L7_3 = 2
              L8_3 = 175
              L6_3 = L6_3(L7_3, L8_3)
              if L6_3 then
                L5_3 = 0.2 * L3_3
              end
            end
          end
        end
      end
      L6_3 = IsControlJustPressed
      L7_3 = 2
      L8_3 = 234
      L6_3 = L6_3(L7_3, L8_3)
      if L6_3 then
        L6_3 = L10_1
        L6_3()
      else
        L6_3 = IsControlJustPressed
        L7_3 = 2
        L8_3 = 235
        L6_3 = L6_3(L7_3, L8_3)
        if L6_3 then
          L6_3 = L9_1
          L6_3()
        end
      end
      L6_3 = IsControlJustPressed
      L7_3 = 2
      L8_3 = 232
      L6_3 = L6_3(L7_3, L8_3)
      if not L6_3 then
        L6_3 = IsDisabledControlJustPressed
        L7_3 = 2
        L8_3 = 42
        L6_3 = L6_3(L7_3, L8_3)
      end
      if L6_3 and L2_3 > 30.0 then
        L2_3 = L2_3 - 5.0
        L6_3 = SetCamFov
        L7_3 = L1_1
        L8_3 = L2_3
        L6_3(L7_3, L8_3)
      else
        L6_3 = IsControlJustPressed
        L7_3 = 2
        L8_3 = 233
        L6_3 = L6_3(L7_3, L8_3)
        if not L6_3 then
          L6_3 = IsDisabledControlJustPressed
          L7_3 = 2
          L8_3 = 43
          L6_3 = L6_3(L7_3, L8_3)
        end
        if L6_3 and L2_3 < 90.0 then
          L2_3 = L2_3 + 5.0
          L6_3 = SetCamFov
          L7_3 = L1_1
          L8_3 = L2_3
          L6_3(L7_3, L8_3)
        end
      end
      L6_3 = L4_3 + L5_3
      L6_3 = 0.0 ~= L6_3
      if L6_3 then
        L7_3 = L3_1
        if not L7_3 then
          L7_3 = GetSoundId
          L7_3 = L7_3()
          L3_1 = L7_3
          L7_3 = PlaySoundFrontend
          L8_3 = L3_1
          L9_3 = "Pin_Movement"
          L10_3 = "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS"
          L11_3 = true
          L7_3(L8_3, L9_3, L10_3, L11_3)
      end
      elseif not L6_3 then
        L7_3 = L3_1
        if L7_3 then
          L7_3 = StopSound
          L8_3 = L3_1
          L7_3(L8_3)
          L7_3 = nil
          L3_1 = L7_3
        end
      end
      L7_3 = L2_1
      L8_3 = vector3
      L9_3 = L4_3
      L10_3 = 0.0
      L11_3 = L5_3
      L8_3 = L8_3(L9_3, L10_3, L11_3)
      L7_3 = L7_3 - L8_3
      L2_1 = L7_3
      L7_3 = L2_1.x
      if L7_3 > 30.0 then
        L7_3 = vector3
        L8_3 = 30.0
        L9_3 = L2_1.y
        L10_3 = L2_1.z
        L7_3 = L7_3(L8_3, L9_3, L10_3)
        L2_1 = L7_3
      end
      L1_3 = GAME_TIMER
      L7_3 = Wait
      L8_3 = 0
      L7_3(L8_3)
    end
    L3_3 = L11_1
    L3_3()
  end
  L2_2 = true
  L3_2 = "Office enter camera"
  L0_2(L1_2, L2_2, L3_2)
end
L12_1.EnterCameras = L13_1
L12_1 = Office
function L13_1()
  local L0_2, L1_2, L2_2
  L0_2 = DebugStart
  L1_2 = "Office.CameraLeaveRequest"
  L0_2(L1_2)
  L0_2 = LAST_STARTED_GAME_TYPE
  if "cameras" ~= L0_2 then
    return
  end
  L0_2 = BlockPlayerInteraction
  L1_2 = 1000
  L0_2(L1_2)
  L0_2 = L6_1
  if L0_2 then
    L0_2 = L7_1
    if L0_2 then
      L0_2 = false
      L7_1 = L0_2
      L0_2 = TriggerServerEvent
      L1_2 = "CasinoOffice:ToggleComputer"
      L2_2 = false
      L0_2(L1_2, L2_2)
    else
      L0_2 = TriggerServerEvent
      L1_2 = "CasinoOffice:LeaveChair"
      L0_2(L1_2)
    end
  end
end
L12_1.CameraLeaveRequest = L13_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = DebugStart
  L2_2 = "OnPlayerTouchLeaveKeyboard"
  L1_2(L2_2)
  if A0_2 then
    L1_2 = IsGamepadControl
    L1_2 = L1_2()
    if L1_2 then
      L1_2 = InfoPanel_UpdateNotification
      L2_2 = Translation
      L2_2 = L2_2.Get
      L3_2 = "BOSS_CAM_CONTROL_GAMEPAD"
      L2_2, L3_2 = L2_2(L3_2)
      L1_2(L2_2, L3_2)
    else
      L1_2 = InfoPanel_UpdateNotification
      L2_2 = Translation
      L2_2 = L2_2.Get
      L3_2 = "BOSS_CAM_CONTROL_KEYS"
      L2_2, L3_2 = L2_2(L3_2)
      L1_2(L2_2, L3_2)
    end
    L1_2 = Office
    L1_2 = L1_2.EnterCameras
    L1_2()
  else
    L1_2 = InfoPanel_UpdateNotification
    L2_2 = Translation
    L2_2 = L2_2.Get
    L3_2 = "BOSS_SITTING_OPTIONS"
    L2_2, L3_2 = L2_2(L3_2)
    L1_2(L2_2, L3_2)
    L1_2 = nil
    L0_1 = L1_2
  end
end
function L13_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = DebugStart
  L2_2 = "OnPlayerSatDown"
  L1_2(L2_2)
  if A0_2 then
    L1_2 = true
    L6_1 = L1_2
    L1_2 = InfoPanel_UpdateNotification
    L2_2 = Translation
    L2_2 = L2_2.Get
    L3_2 = "BOSS_SITTING_OPTIONS"
    L2_2, L3_2 = L2_2(L3_2)
    L1_2(L2_2, L3_2)
  else
    L1_2 = ClearPedTasks
    L2_2 = PlayerPedId
    L2_2, L3_2 = L2_2()
    L1_2(L2_2, L3_2)
    L1_2 = ClearPedSecondaryTask
    L2_2 = PlayerPedId
    L2_2, L3_2 = L2_2()
    L1_2(L2_2, L3_2)
    L1_2 = ScenePed_AnnounceEnd
    L1_2()
  end
end
function L14_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = Casino_GetObjectsOfTypes
  L1_2 = {}
  L2_2 = 1127420746
  L3_2 = -1633198649
  L4_2 = 1339364336
  L5_2 = 538002882
  L6_2 = -1173315865
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L1_2[5] = L6_2
  L0_2 = L0_2(L1_2)
  L1_2 = #L0_2
  if L1_2 > 0 then
    L1_2 = L0_2[1]
    L2_2 = 1
    L3_2 = #L0_2
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = GetEntityCoords
      L7_2 = L0_2[L5_2]
      L6_2 = L6_2(L7_2)
      L7_2 = GetEntityCoords
      L8_2 = L1_2
      L7_2 = L7_2(L8_2)
      L8_2 = OfficeTableAnimPosition
      L8_2 = L6_2 - L8_2
      L8_2 = #L8_2
      L9_2 = OfficeTableAnimPosition
      L9_2 = L7_2 - L9_2
      L9_2 = #L9_2
      if L8_2 < L9_2 then
        L1_2 = L0_2[L5_2]
      end
    end
    return L1_2
  end
  L1_2 = nil
  return L1_2
end
function L15_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = DebugStart
  L4_2 = "ToggleComputer"
  L3_2(L4_2)
  L3_2 = nil
  L4_2 = GetMyPlayerId
  L4_2 = L4_2()
  if A0_2 == L4_2 then
    L4_2 = PlayerPedId
    L4_2 = L4_2()
    L3_2 = L4_2
    L7_1 = A1_2
    if not A1_2 then
      L4_2 = nil
      L0_1 = L4_2
    end
    L4_2 = InfoPanel_UpdateNotification
    L5_2 = nil
    L4_2(L5_2)
    L4_2 = BlockPlayerInteraction
    L5_2 = 3000
    L4_2(L5_2)
  else
    L4_2 = ScenePed_ForceUseForPlayer
    L5_2 = A0_2
    L6_2 = A2_2
    L4_2 = L4_2(L5_2, L6_2)
    L3_2 = L4_2
  end
  L4_2 = CreateThread
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3
    L0_3 = RequestAnimDictAndWait
    L1_3 = L4_1
    L0_3(L1_3)
    L0_3 = GAME_POOL
    L1_3 = GetGamePool
    L2_3 = "CObject"
    L1_3 = L1_3(L2_3)
    L0_3.CObject = L1_3
    L0_3 = L14_1
    L0_3 = L0_3()
    if L0_3 then
      L1_3 = OfficeTableAnimPosition
      L2_3 = OfficeTableAnimHeading
      L3_3 = A1_2
      if L3_3 then
        L3_3 = {}
        L4_3 = "computer_enter_chair"
        L5_3 = "computer_enter"
        L3_3[1] = L4_3
        L3_3[2] = L5_3
        if L3_3 then
          goto lbl_30
        end
      end
      L3_3 = {}
      L4_3 = "computer_exit_chair"
      L5_3 = "computer_exit"
      L3_3[1] = L4_3
      L3_3[2] = L5_3
      ::lbl_30::
      L4_3 = vector3
      L5_3 = L1_3.x
      L6_3 = L1_3.y
      L7_3 = L1_3.z
      L7_3 = L7_3 - 1
      L4_3 = L4_3(L5_3, L6_3, L7_3)
      L5_3 = -0.3899
      L6_3 = GetEntityModel
      L7_3 = L0_3
      L6_3 = L6_3(L7_3)
      if 1339364336 == L6_3 then
        L6_3 = vector3
        L7_3 = L1_3.x
        L8_3 = L1_3.y
        L9_3 = L1_3.z
        L9_3 = L9_3 - 1.4
        L6_3 = L6_3(L7_3, L8_3, L9_3)
        L4_3 = L6_3
        L6_3 = vector3
        L7_3 = L1_3.x
        L8_3 = L1_3.y
        L9_3 = L1_3.z
        L9_3 = L9_3 - 1.0
        L6_3 = L6_3(L7_3, L8_3, L9_3)
        L1_3 = L6_3
      end
      L6_3 = GetEntityModel
      L7_3 = L0_3
      L6_3 = L6_3(L7_3)
      if 538002882 == L6_3 then
        L5_3 = -1.3
        L6_3 = vector3
        L7_3 = L1_3.x
        L8_3 = L1_3.y
        L9_3 = L1_3.z
        L9_3 = L9_3 - 1.5
        L6_3 = L6_3(L7_3, L8_3, L9_3)
        L4_3 = L6_3
      end
      L6_3 = CreateSynchronizedScene
      L7_3 = L4_3
      L8_3 = 0.0
      L9_3 = 0.0
      L10_3 = L2_3
      L11_3 = 0
      L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3, L11_3)
      L7_3 = PlaySynchronizedEntityAnim
      L8_3 = L0_3
      L9_3 = L6_3
      L10_3 = L3_3[1]
      L11_3 = L4_1
      L12_3 = 1000
      L13_3 = 1
      L14_3 = 0
      L15_3 = 1.0
      L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
      L7_3 = CreateSynchronizedScene
      L8_3 = L1_3.x
      L9_3 = L1_3.y
      L10_3 = L1_3.z
      L10_3 = L10_3 + L5_3
      L11_3 = 0.0
      L12_3 = 0.0
      L13_3 = L2_3
      L14_3 = 0
      L7_3 = L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
      L8_3 = L3_2
      if L8_3 then
        L8_3 = TaskSynchronizedScene
        L9_3 = L3_2
        L10_3 = L7_3
        L11_3 = L4_1
        L12_3 = L3_3[2]
        L13_3 = 2.0
        L14_3 = -1.5
        L15_3 = 13
        L16_3 = 16
        L17_3 = 2.0
        L18_3 = 0
        L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
        L8_3 = L3_2
        L9_3 = PlayerPedId
        L9_3 = L9_3()
        if L8_3 == L9_3 then
          L8_3 = CreateNewSceneEndEvent
          L9_3 = L7_3
          L10_3 = 0.5
          function L11_3()
            local L0_4, L1_4
            L0_4 = L12_1
            L1_4 = A1_2
            L0_4(L1_4)
          end
          L12_3 = 10000
          L13_3 = 500
          L8_3(L9_3, L10_3, L11_3, L12_3, L13_3)
        end
      end
    end
  end
  L4_2(L5_2)
end
function L16_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = DebugStart
  L4_2 = "EnterLeaveOfficeChair"
  L3_2(L4_2)
  L3_2 = nil
  L4_2 = GetMyPlayerId
  L4_2 = L4_2()
  if A0_2 == L4_2 then
    LAST_STARTED_GAME_TYPE = "cameras"
    L4_2 = PlayerPedId
    L4_2 = L4_2()
    L3_2 = L4_2
    L4_2 = false
    L6_1 = L4_2
    L4_2 = InfoPanel_UpdateNotification
    L5_2 = nil
    L4_2(L5_2)
    L4_2 = BlockPlayerInteraction
    L5_2 = 3000
    L4_2(L5_2)
  else
    L4_2 = ScenePed_ForceUseForPlayer
    L5_2 = A0_2
    L6_2 = A2_2
    L4_2 = L4_2(L5_2, L6_2)
    L3_2 = L4_2
  end
  L4_2 = CreateThread
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3
    L0_3 = A1_2
    if L0_3 then
      L0_3 = L3_2
      if L0_3 then
        L0_3 = OfficeTableEnterPosition
        L1_3 = TaskGoStraightToCoord
        L2_3 = L3_2
        L3_3 = L0_3.x
        L4_3 = L0_3.y
        L5_3 = L0_3.z
        L6_3 = 1.0
        L7_3 = 3.0
        L8_3 = 328.0
        L9_3 = 0.0
        L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
        L1_3 = WaitForPedOnCoords
        L2_3 = L3_2
        L3_3 = L0_3
        L4_3 = 0.05
        L5_3 = 5000
        L1_3(L2_3, L3_3, L4_3, L5_3)
      end
    end
    L0_3 = RequestAnimDictAndWait
    L1_3 = L4_1
    L0_3(L1_3)
    L0_3 = GAME_POOL
    L1_3 = GetGamePool
    L2_3 = "CObject"
    L1_3 = L1_3(L2_3)
    L0_3.CObject = L1_3
    L0_3 = L14_1
    L0_3 = L0_3()
    if not L0_3 then
      L1_3 = RequestModelAndWait
      L2_3 = 1127420746
      L1_3(L2_3)
      L1_3 = CreateObject
      L2_3 = 1127420746
      L3_3 = vector3
      L4_3 = 0.0
      L5_3 = 0.0
      L6_3 = 0.0
      L3_3 = L3_3(L4_3, L5_3, L6_3)
      L4_3 = false
      L5_3 = false
      L6_3 = false
      L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
      L0_3 = L1_3
      L1_3 = Wait
      L2_3 = 100
      L1_3(L2_3)
    end
    L1_3 = OfficeTableAnimPosition
    L2_3 = OfficeTableAnimHeading
    L3_3 = vector3
    L4_3 = L1_3.x
    L5_3 = L1_3.y
    L6_3 = L1_3.z
    L6_3 = L6_3 - 1
    L3_3 = L3_3(L4_3, L5_3, L6_3)
    L4_3 = -0.3899
    L5_3 = GetEntityModel
    L6_3 = L0_3
    L5_3 = L5_3(L6_3)
    if 1339364336 == L5_3 then
      L4_3 = -1.3899
      L5_3 = vector3
      L6_3 = L1_3.x
      L7_3 = L1_3.y
      L8_3 = L1_3.z
      L8_3 = L8_3 - 1.5
      L5_3 = L5_3(L6_3, L7_3, L8_3)
      L3_3 = L5_3
    end
    L5_3 = GetEntityModel
    L6_3 = L0_3
    L5_3 = L5_3(L6_3)
    if 538002882 == L5_3 then
      L4_3 = -1.3
      L5_3 = vector3
      L6_3 = L1_3.x
      L7_3 = L1_3.y
      L8_3 = L1_3.z
      L8_3 = L8_3 - 1.5
      L5_3 = L5_3(L6_3, L7_3, L8_3)
      L3_3 = L5_3
    end
    L5_3 = A1_2
    if L5_3 then
      L5_3 = {}
      L6_3 = "enter_chair"
      L7_3 = "enter"
      L5_3[1] = L6_3
      L5_3[2] = L7_3
      if L5_3 then
        goto lbl_107
      end
    end
    L5_3 = {}
    L6_3 = "exit_chair"
    L7_3 = "exit"
    L5_3[1] = L6_3
    L5_3[2] = L7_3
    ::lbl_107::
    L6_3 = GetAnimInitialOffsetPosition
    L7_3 = L4_1
    L8_3 = L5_3[1]
    L9_3 = L1_3.x
    L10_3 = L1_3.y
    L11_3 = L1_3.z
    L11_3 = L11_3 - 1
    L12_3 = 0.0
    L13_3 = 0.0
    L14_3 = L2_3
    L15_3 = 0.01
    L16_3 = 2
    L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
    L7_3 = GetAnimInitialOffsetRotation
    L8_3 = L4_1
    L9_3 = L5_3[1]
    L10_3 = L1_3.x
    L11_3 = L1_3.y
    L12_3 = L1_3.z
    L12_3 = L12_3 - 1
    L13_3 = 0.0
    L14_3 = 0.0
    L15_3 = L2_3
    L16_3 = 0.01
    L17_3 = 2
    L7_3 = L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
    L8_3 = SetEntityCoordsNoOffset
    L9_3 = L0_3
    L10_3 = L6_3
    L11_3 = false
    L12_3 = false
    L13_3 = false
    L8_3(L9_3, L10_3, L11_3, L12_3, L13_3)
    L8_3 = SetEntityHeading
    L9_3 = L0_3
    L10_3 = L7_3.z
    L8_3(L9_3, L10_3)
    L8_3 = CreateSynchronizedScene
    L9_3 = L3_3
    L10_3 = 0.0
    L11_3 = 0.0
    L12_3 = L2_3
    L13_3 = 0
    L8_3 = L8_3(L9_3, L10_3, L11_3, L12_3, L13_3)
    L9_3 = PlaySynchronizedEntityAnim
    L10_3 = L0_3
    L11_3 = L8_3
    L12_3 = L5_3[1]
    L13_3 = L4_1
    L14_3 = 1000
    L15_3 = 1
    L16_3 = 0
    L17_3 = 1.0
    L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
    L9_3 = CreateSynchronizedScene
    L10_3 = L1_3.x
    L11_3 = L1_3.y
    L12_3 = L1_3.z
    L12_3 = L12_3 + L4_3
    L13_3 = 0.0
    L14_3 = 0.0
    L15_3 = L2_3
    L16_3 = 0
    L9_3 = L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
    L10_3 = TaskSynchronizedScene
    L11_3 = L3_2
    L12_3 = L9_3
    L13_3 = L4_1
    L14_3 = L5_3[2]
    L15_3 = 2.0
    L16_3 = -1.5
    L17_3 = 13
    L18_3 = 16
    L19_3 = 2.0
    L20_3 = 0
    L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3)
    L10_3 = L3_2
    L11_3 = PlayerPedId
    L11_3 = L11_3()
    if L10_3 == L11_3 then
      L10_3 = CreateNewSceneEndEvent
      L11_3 = L9_3
      L12_3 = 0.9
      function L13_3()
        local L0_4, L1_4
        L0_4 = L13_1
        L1_4 = A1_2
        L0_4(L1_4)
      end
      L14_3 = 12000
      L15_3 = 500
      L10_3(L11_3, L12_3, L13_3, L14_3, L15_3)
      L10_3 = A1_2
      if not L10_3 then
        L10_3 = ForgotLastStartedGameType
        L11_3 = "cameras"
        L10_3(L11_3)
      end
    end
  end
  L4_2(L5_2)
end
L17_1 = RegisterNetEvent
L18_1 = "CasinoOffice:EnterChair"
L17_1(L18_1)
L17_1 = AddEventHandler
L18_1 = "CasinoOffice:EnterChair"
function L19_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = IN_CASINO
  if not L2_2 then
    return
  end
  L5_1 = A0_2
  L2_2 = L16_1
  L3_2 = A0_2
  L4_2 = true
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L17_1(L18_1, L19_1)
L17_1 = RegisterNetEvent
L18_1 = "CasinoOffice:LeaveChair"
L17_1(L18_1)
L17_1 = AddEventHandler
L18_1 = "CasinoOffice:LeaveChair"
function L19_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = IN_CASINO
  if not L2_2 then
    return
  end
  L2_2 = false
  L5_1 = L2_2
  L2_2 = L16_1
  L3_2 = A0_2
  L4_2 = false
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L17_1(L18_1, L19_1)
L17_1 = RegisterNetEvent
L18_1 = "CasinoOffice:ToggleComputer"
L17_1(L18_1)
L17_1 = AddEventHandler
L18_1 = "CasinoOffice:ToggleComputer"
function L19_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = IN_CASINO
  if not L3_2 then
    return
  end
  L3_2 = L15_1
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L17_1(L18_1, L19_1)
L17_1 = Office
function L18_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = Config
  L1_2 = L1_2.UseTarget
  if L1_2 then
    return
  end
  L1_2 = DebugStart
  L2_2 = "Office.ShowNotifyUI"
  L1_2(L2_2)
  if "cameras" == A0_2 then
    L1_2 = L5_1
    if L1_2 then
      L1_2 = InfoPanel_UpdateNotification
      L2_2 = Translation
      L2_2 = L2_2.Get
      L3_2 = "BOSS_COMPUTER_USED"
      L2_2, L3_2 = L2_2(L3_2)
      L1_2(L2_2, L3_2)
      return
    end
    L1_2 = InfoPanel_UpdateNotification
    L2_2 = Translation
    L2_2 = L2_2.Get
    L3_2 = "BOSS_PRESS_TO_USE_COMPUTER"
    L2_2, L3_2 = L2_2(L3_2)
    L1_2(L2_2, L3_2)
  end
end
L17_1.ShowNotifyUI = L18_1
L17_1 = Office
function L18_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = DebugStart
  L1_2 = "Office.OnInteraction"
  L0_2(L1_2)
  L0_2 = GetMyPedNetworkId
  L0_2 = L0_2()
  if not L0_2 then
    return
  end
  L1_2 = LAST_INTERACTION_GAME
  if "cameras" == L1_2 then
    L1_2 = L6_1
    if not L1_2 then
      L1_2 = L5_1
      if L1_2 then
        L1_2 = InfoPanel_UpdateNotification
        L2_2 = Translation
        L2_2 = L2_2.Get
        L3_2 = "BOSS_COMPUTER_USED"
        L2_2, L3_2 = L2_2(L3_2)
        L1_2(L2_2, L3_2)
        return
      end
      L1_2 = BlockPlayerInteraction
      L2_2 = 1000
      L1_2(L2_2)
      L1_2 = TriggerServerEvent
      L2_2 = "CasinoOffice:EnterChair"
      L3_2 = L0_2
      L1_2(L2_2, L3_2)
    else
      L1_2 = L7_1
      if not L1_2 then
        L1_2 = BlockPlayerInteraction
        L2_2 = 1000
        L1_2(L2_2)
        L1_2 = TriggerServerEvent
        L2_2 = "CasinoOffice:ToggleComputer"
        L3_2 = true
        L1_2(L2_2, L3_2)
      end
    end
  end
end
L17_1.OnInteraction = L18_1
