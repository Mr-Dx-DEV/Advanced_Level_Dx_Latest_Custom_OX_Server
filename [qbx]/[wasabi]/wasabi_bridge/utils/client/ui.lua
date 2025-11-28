local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = false
L1_1 = false
L2_1 = false
SkillCheckCallback = false
ProgressUICallback = L2_1
AlertDialogCallback = L1_1
InputDialogCallback = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = {}
  L1_2.fas = "fa-solid"
  L1_2.far = "fa-regular"
  L1_2.fab = "fa-brands"
  L1_2.fal = "fa-light"
  L1_2.fad = "fa-duotone"
  L2_2 = pairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L9_2 = A0_2
    L8_2 = A0_2.match
    L10_2 = "^"
    L11_2 = L6_2
    L12_2 = " fa%-.+$"
    L10_2 = L10_2 .. L11_2 .. L12_2
    L8_2 = L8_2(L9_2, L10_2)
    if L8_2 then
      L9_2 = A0_2
      L8_2 = A0_2.gsub
      L10_2 = "^"
      L11_2 = L6_2
      L12_2 = " fa%-"
      L10_2 = L10_2 .. L11_2 .. L12_2
      L11_2 = L7_2
      L12_2 = " fa-"
      L11_2 = L11_2 .. L12_2
      return L8_2(L9_2, L10_2, L11_2)
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2.match
  L4_2 = "^fa%-.+ fa%-.+$"
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    return A0_2
  end
  L3_2 = A0_2
  L2_2 = A0_2.match
  L4_2 = "%s"
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L2_2 = "fa-solid fa-"
    L3_2 = A0_2
    L2_2 = L2_2 .. L3_2
    return L2_2
  end
  return A0_2
end
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "table" == L1_2 then
    L1_2 = {}
    L2_2 = pairs
    L3_2 = A0_2
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L8_2 = tonumber
      L9_2 = L6_2
      L8_2 = L8_2(L9_2)
      if L8_2 then
        L1_2[L8_2] = L7_2
      end
    end
    return L1_2
  end
  return A0_2
end
NormalizeTable = L1_1
L1_1 = RegisterNUICallback
L2_1 = "onExit"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.onExit
  if not L2_2 then
    L2_2 = A1_2
    L3_2 = "ok"
    L2_2(L3_2)
    return
  end
  L2_2 = A0_2.onExit
  L2_2()
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNUICallback
L2_1 = "closeMenu"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = SetNuiFocus
  L3_2 = false
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = SetNuiFocusKeepInput
  L3_2 = false
  L2_2(L3_2)
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNUICallback
L2_1 = "menuEvent"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.event
  if L2_2 then
    L2_2 = A0_2.event
    if "" ~= L2_2 then
      L2_2 = TriggerEvent
      L3_2 = A0_2.event
      L4_2 = A0_2.args
      L2_2(L3_2, L4_2)
    end
  end
  L2_2 = SetNuiFocus
  L3_2 = false
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = SetNuiFocusKeepInput
  L3_2 = false
  L2_2(L3_2)
  L2_2 = A0_2.onExit
  if L2_2 then
    L2_2 = A0_2.onExit
    L2_2()
  end
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNUICallback
L2_1 = "setFocus"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = SetNuiFocus
  L3_2 = A0_2.isFocused
  L4_2 = A0_2.isFocused
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.isMenu
  if L2_2 then
    L2_2 = A0_2.isFocused
    if L2_2 then
      L2_2 = SetNuiFocusKeepInput
      L3_2 = true
      L2_2(L3_2)
    end
  end
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L1_1(L2_1, L3_1)
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2
  L5_2 = Config
  L5_2 = L5_2.Notifications
  L5_2 = L5_2.styles
  L5_2 = L5_2[A2_2]
  if not L5_2 then
    L5_2 = Config
    L5_2 = L5_2.Notifications
    L5_2 = L5_2.styles
    L5_2 = L5_2.info
  end
  if not A3_2 then
    A3_2 = L5_2.icon
  end
  L6_2 = L0_1
  L7_2 = A3_2
  L6_2 = L6_2(L7_2)
  A3_2 = L6_2
  L6_2 = SendNUIMessage
  L7_2 = {}
  L7_2.component = "notify"
  L7_2.type = "custom"
  L8_2 = {}
  L9_2 = L5_2.color
  L8_2.color = L9_2
  L7_2.customType = L8_2
  L8_2 = A0_2 or L8_2
  if not A0_2 then
    L8_2 = ""
  end
  L7_2.heading = L8_2
  L8_2 = A1_2 or L8_2
  if not A1_2 then
    L8_2 = ""
  end
  L7_2.content = L8_2
  L7_2.icon = A3_2
  L7_2.iconEffect = false
  L8_2 = Config
  L8_2 = L8_2.Notifications
  L8_2 = L8_2.defaults
  L8_2 = L8_2.iconSize
  L7_2.iconSize = L8_2
  L8_2 = Config
  L8_2 = L8_2.Notifications
  L8_2 = L8_2.defaults
  L8_2 = L8_2.position
  L7_2.position = L8_2
  L8_2 = Config
  L8_2 = L8_2.Notifications
  L8_2 = L8_2.defaults
  L8_2 = L8_2.time
  L7_2.time = L8_2
  L8_2 = Config
  L8_2 = L8_2.Notifications
  L8_2 = L8_2.defaults
  L8_2 = L8_2.fontColor
  L7_2.color = L8_2
  L8_2 = Config
  L8_2 = L8_2.Notifications
  L8_2 = L8_2.defaults
  L8_2 = L8_2.sound
  L7_2.sound = L8_2
  L8_2 = Config
  L8_2 = L8_2.Notifications
  L8_2 = L8_2.defaults
  L8_2 = L8_2.backgroundColor
  L7_2.backgroundColor = L8_2
  L7_2.id = A4_2
  L6_2(L7_2)
end
ShowNotification = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = Wait
  L2_2 = 300
  L1_2(L2_2)
  L1_2 = ipairs
  L2_2 = A0_2.options
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.icon
    if L7_2 then
      L7_2 = L0_1
      L8_2 = L6_2.icon
      L7_2 = L7_2(L8_2)
      L6_2.icon = L7_2
    end
  end
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.component = "menu"
  L3_2 = A0_2.title
  L2_2.title = L3_2
  L3_2 = A0_2.color
  if not L3_2 then
    L3_2 = false
  end
  L2_2.color = L3_2
  L3_2 = A0_2.position
  if not L3_2 then
    L3_2 = false
  end
  L2_2.position = L3_2
  L3_2 = A0_2.options
  L2_2.options = L3_2
  L3_2 = A0_2.onExit
  if not L3_2 then
    L3_2 = false
  end
  L2_2.onExit = L3_2
  L1_2(L2_2)
  L1_2 = SetNuiFocus
  L2_2 = true
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = SetNuiFocusKeepInput
  L2_2 = true
  L1_2(L2_2)
end
ShowMenu = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = Wait
  L2_2 = 300
  L1_2(L2_2)
  L1_2 = ipairs
  L2_2 = A0_2.options
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.icon
    if L7_2 then
      L7_2 = L0_1
      L8_2 = L6_2.icon
      L7_2 = L7_2(L8_2)
      L6_2.icon = L7_2
    end
  end
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.component = "contextMenu"
  L3_2 = A0_2.title
  L2_2.title = L3_2
  L3_2 = A0_2.color
  if not L3_2 then
    L3_2 = false
  end
  L2_2.color = L3_2
  L3_2 = A0_2.options
  L2_2.options = L3_2
  L3_2 = A0_2.onExit
  if not L3_2 then
    L3_2 = false
  end
  L2_2.onExit = L3_2
  L1_2(L2_2)
  L1_2 = SetNuiFocus
  L2_2 = true
  L3_2 = true
  L1_2(L2_2, L3_2)
end
ShowContextMenu = L1_1
L1_1 = RegisterNUICallback
L2_1 = "inputDialogData"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A0_2 then
    L2_2 = next
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_9
    end
  end
  A0_2 = nil
  ::lbl_9::
  L2_2 = A0_2 or L2_2
  if not A0_2 then
    L2_2 = "nil"
  end
  InputDialogCallback = L2_2
  L2_2 = SetNuiFocus
  L3_2 = false
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L1_1(L2_1, L3_1)
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = Wait
  L4_2 = 300
  L3_2(L4_2)
  L3_2 = SendNUIMessage
  L4_2 = {}
  L4_2.component = "inputDialog"
  L4_2.label = A0_2
  L4_2.data = A1_2
  L5_2 = A2_2 or L5_2
  if not A2_2 then
    L5_2 = false
  end
  L4_2.color = L5_2
  L3_2(L4_2)
  L3_2 = SetNuiFocus
  L4_2 = true
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = nil
  while nil == L3_2 do
    L4_2 = Wait
    L5_2 = 5
    L4_2(L5_2)
    L4_2 = InputDialogCallback
    if L4_2 then
      L3_2 = InputDialogCallback
      InputDialogCallback = nil
    end
  end
  if L3_2 and "nil" ~= L3_2 then
    L4_2 = NormalizeTable
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    L3_2 = L4_2
    L4_2 = 1
    L5_2 = #L3_2
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L8_2 = L3_2[L7_2]
      if "" == L8_2 then
        L3_2[L7_2] = false
      end
    end
    InputDialogCallback = nil
    return L3_2
  else
    InputDialogCallback = nil
    L4_2 = nil
    return L4_2
  end
end
InputDialog = L1_1
L1_1 = RegisterNUICallback
L2_1 = "alertDialogData"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2 or nil
  if not A0_2 then
    L2_2 = "nil"
  end
  AlertDialogCallback = L2_2
  L2_2 = SetNuiFocus
  L3_2 = false
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L1_1(L2_1, L3_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = Wait
  L2_2 = 300
  L1_2(L2_2)
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.component = "alertDialog"
  L3_2 = A0_2.header
  L2_2.header = L3_2
  L3_2 = A0_2.content
  L2_2.content = L3_2
  L3_2 = A0_2.centered
  if not L3_2 then
    L3_2 = false
  end
  L2_2.centered = L3_2
  L3_2 = A0_2.cancel
  if not L3_2 then
    L3_2 = false
  end
  L2_2.cancel = L3_2
  L3_2 = A0_2.color
  if not L3_2 then
    L3_2 = false
  end
  L2_2.color = L3_2
  L1_2(L2_2)
  L1_2 = SetNuiFocus
  L2_2 = true
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = nil
  while nil == L1_2 do
    L2_2 = Wait
    L3_2 = 5
    L2_2(L3_2)
    L2_2 = AlertDialogCallback
    if L2_2 then
      L1_2 = AlertDialogCallback
      AlertDialogCallback = nil
    end
  end
  if L1_2 and "nil" ~= L1_2 then
    AlertDialogCallback = nil
    return L1_2
  else
    AlertDialogCallback = nil
    L2_2 = nil
    return L2_2
  end
end
AlertDialog = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  if not A1_2 then
    L2_2 = {}
    A1_2 = L2_2
  end
  L2_2 = A1_2.position
  if not L2_2 then
    L2_2 = Config
    L2_2 = L2_2.TextUISettings
    L2_2 = L2_2.position
    if not L2_2 then
      L2_2 = "right-center"
    end
  end
  A1_2.position = L2_2
  L2_2 = A1_2.iconColor
  if not L2_2 then
    L2_2 = Config
    L2_2 = L2_2.TextUISettings
    L2_2 = L2_2.iconColor
    if not L2_2 then
      L2_2 = "#ffffff"
    end
  end
  A1_2.iconColor = L2_2
  L2_2 = A1_2.textColor
  if not L2_2 then
    L2_2 = Config
    L2_2 = L2_2.TextUISettings
    L2_2 = L2_2.textColor
    if not L2_2 then
      L2_2 = "#ffffff"
    end
  end
  A1_2.textColor = L2_2
  L2_2 = A1_2.backgroundColor
  if not L2_2 then
    L2_2 = Config
    L2_2 = L2_2.TextUISettings
    L2_2 = L2_2.backgroundColor
    if not L2_2 then
      L2_2 = "#25262B"
    end
  end
  A1_2.backgroundColor = L2_2
  L2_2 = Wait
  L3_2 = 300
  L2_2(L3_2)
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.component = "textUI"
  L3_2.message = A0_2
  L3_2.options = A1_2
  L2_2(L3_2)
end
ShowTextUI = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = Wait
  L1_2 = 300
  L0_2(L1_2)
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.component = "textUI"
  L1_2.message = false
  L0_2(L1_2)
end
HideTextUI = L1_1
L1_1 = RegisterNUICallback
L2_1 = "progressUIResponse"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A0_2 then
    L2_2 = A0_2.passed
    if L2_2 then
      goto lbl_7
    end
  end
  L2_2 = false
  ::lbl_7::
  L3_2 = L2_2 or L3_2
  if not L2_2 then
    L3_2 = "nil"
  end
  ProgressUICallback = L3_2
  L3_2 = A1_2
  L4_2 = "ok"
  L3_2(L4_2)
end
L1_1(L2_1, L3_1)
L1_1 = false
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2
  L2_2 = L1_1
  if L2_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = Wait
  L3_2 = 300
  L2_2(L3_2)
  if not A1_2 then
    A1_2 = "progressBar"
  end
  L2_2 = true
  L1_1 = L2_2
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.component = A1_2
  L4_2 = A0_2.label
  if not L4_2 then
    L4_2 = false
  end
  L3_2.label = L4_2
  L4_2 = A0_2.duration
  L3_2.duration = L4_2
  L4_2 = A0_2.color
  L3_2.color = L4_2
  L2_2(L3_2)
  L2_2 = {}
  L3_2 = {}
  L4_2 = {}
  L4_2.useWhileDead = true
  L4_2.canCancel = true
  L4_2.allowRagdoll = true
  L4_2.allowSwimming = true
  L4_2.allowCuffed = true
  L4_2.allowFalling = true
  L5_2 = nil
  L6_2 = nil
  L7_2 = {}
  L8_2 = pairs
  L9_2 = A0_2
  L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
  for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
    L14_2 = L4_2[L12_2]
    if L14_2 then
      L2_2[L12_2] = L13_2
    end
  end
  L8_2 = nil
  while nil == L8_2 do
    if L2_2 then
      L9_2 = next
      L10_2 = L2_2
      L9_2 = L9_2(L10_2)
      if L9_2 and not L8_2 then
        L9_2 = pairs
        L10_2 = L2_2
        L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
        for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
          if not L14_2 then
            L15_2 = WSB
            L15_2 = L15_2.cache
            L15_2 = L15_2.ped
            if not L15_2 then
              L15_2 = PlayerPedId
              L15_2 = L15_2()
            end
            if "useWhileDead" == L13_2 then
              L16_2 = WSB
              L16_2 = L16_2.isPlayerDead
              L16_2 = L16_2()
              if L16_2 then
                goto lbl_141
              end
            end
            if "canCancel" == L13_2 then
              L16_2 = IsControlJustReleased
              L17_2 = 0
              L18_2 = 177
              L16_2 = L16_2(L17_2, L18_2)
              if L16_2 then
                goto lbl_141
              end
              L16_2 = IsDisabledControlJustReleased
              L17_2 = 0
              L18_2 = 177
              L16_2 = L16_2(L17_2, L18_2)
              if L16_2 then
                goto lbl_141
              end
              L16_2 = IsControlJustReleased
              L17_2 = 0
              L18_2 = 73
              L16_2 = L16_2(L17_2, L18_2)
              if L16_2 then
                goto lbl_141
              end
              L16_2 = IsDisabledControlJustReleased
              L17_2 = 0
              L18_2 = 73
              L16_2 = L16_2(L17_2, L18_2)
              if L16_2 then
                goto lbl_141
              end
            end
            if "allowRagdoll" == L13_2 then
              L16_2 = IsPedRagdoll
              L17_2 = L15_2
              L16_2 = L16_2(L17_2)
              if L16_2 then
                goto lbl_141
              end
            end
            if "allowSwimming" == L13_2 then
              L16_2 = IsPedSwimming
              L17_2 = L15_2
              L16_2 = L16_2(L17_2)
              if L16_2 then
                goto lbl_141
              end
            end
            if "allowCuffed" == L13_2 then
              L16_2 = WSB
              L16_2 = L16_2.isPlayerHandcuffed
              L16_2 = L16_2()
            end
            L16_2 = IsPedFalling
            L17_2 = L15_2
            L16_2 = L16_2 or "allowFalling" == L13_2 and L16_2
            ::lbl_141::
            if L16_2 and ("canCancel" ~= L13_2 or "canCancel" == L13_2 and L14_2) then
              L17_2 = SendNUIMessage
              L18_2 = {}
              L18_2.component = A1_2
              L18_2.cancelled = true
              L17_2(L18_2)
            end
          end
        end
      end
    end
    L9_2 = A0_2.disable
    if L9_2 then
      L9_2 = next
      L10_2 = A0_2.disable
      L9_2 = L9_2(L10_2)
      if L9_2 and not L8_2 then
        L9_2 = pairs
        L10_2 = A0_2.disable
        L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
        for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
          if L14_2 then
            if "movement" == L13_2 or "move" == L13_2 or "all" == L13_2 then
              L15_2 = WSB
              L15_2 = L15_2.disableKeys
              L15_2()
            else
              if "car" == L13_2 then
                L15_2 = WSB
                L15_2 = L15_2.cache
                L15_2 = L15_2.vehicle
                if L15_2 then
                  L15_2 = A0_2.anim
                  if L15_2 then
                    L15_2 = ClearPedTasks
                    L16_2 = WSB
                    L16_2 = L16_2.cache
                    L16_2 = L16_2.ped
                    if not L16_2 then
                      L16_2 = PlayerPedId
                      L16_2 = L16_2()
                    end
                    L15_2(L16_2)
                  end
                  L15_2 = SendNUIMessage
                  L16_2 = {}
                  L16_2.component = A1_2
                  L16_2.cancelled = true
                  L15_2(L16_2)
                end
              end
              if "combat" == L13_2 then
                L15_2 = #L3_2
                L15_2 = L15_2 + 1
                L3_2[L15_2] = 76
                L15_2 = WSB
                L15_2 = L15_2.disableKeys
                L16_2 = 76
                L15_2(L16_2)
                L15_2 = DisablePlayerFiring
                L16_2 = WSB
                L16_2 = L16_2.cache
                L16_2 = L16_2.playerId
                L17_2 = true
                L15_2(L16_2, L17_2)
              end
              if "mouse" == L13_2 then
                L15_2 = WSB
                L15_2 = L15_2.disableKeys
                L16_2 = {}
                L17_2 = 24
                L18_2 = 25
                L16_2[1] = L17_2
                L16_2[2] = L18_2
                L15_2(L16_2)
              end
              if "sprint" == L13_2 then
                L15_2 = WSB
                L15_2 = L15_2.disableKeys
                L16_2 = 21
                L15_2(L16_2)
              end
            end
          end
        end
      end
    end
    L9_2 = A0_2.anim
    if L9_2 and not L5_2 and not L8_2 then
      L9_2 = A0_2.anim
      L9_2 = L9_2.scenario
      if L9_2 then
        L9_2 = TaskStartScenarioInPlace
        L10_2 = WSB
        L10_2 = L10_2.cache
        L10_2 = L10_2.ped
        if not L10_2 then
          L10_2 = PlayerPedId
          L10_2 = L10_2()
        end
        L11_2 = A0_2.anim
        L11_2 = L11_2.scenario
        L12_2 = 0
        L13_2 = A0_2.anim
        L13_2 = L13_2.playEnter
        if false == L13_2 then
        end
        L13_2 = true
        L9_2(L10_2, L11_2, L12_2, L13_2)
        L5_2 = true
      else
        L9_2 = A0_2.anim
        L9_2 = L9_2.dict
        if L9_2 then
          L9_2 = A0_2.anim
          L9_2 = L9_2.clip
          if L9_2 and not L5_2 then
            L9_2 = WSB
            L9_2 = L9_2.stream
            L9_2 = L9_2.animDict
            L10_2 = A0_2.anim
            L10_2 = L10_2.dict
            L11_2 = 5000
            L9_2 = L9_2(L10_2, L11_2)
            L5_2 = L9_2
            L9_2 = TaskPlayAnim
            L10_2 = WSB
            L10_2 = L10_2.cache
            L10_2 = L10_2.ped
            if not L10_2 then
              L10_2 = PlayerPedId
              L10_2 = L10_2()
            end
            L11_2 = A0_2.anim
            L11_2 = L11_2.dict
            L12_2 = A0_2.anim
            L12_2 = L12_2.clip
            L13_2 = A0_2.anim
            L13_2 = L13_2.blendIn
            if not L13_2 then
              L13_2 = 3.0
            end
            L14_2 = A0_2.anim
            L14_2 = L14_2.blendOut
            if not L14_2 then
              L14_2 = 3.0
            end
            L15_2 = A0_2.anim
            L15_2 = L15_2.duration
            if not L15_2 then
              L15_2 = -1
            end
            L16_2 = A0_2.anim
            L16_2 = L16_2.flag
            if not L16_2 then
              L16_2 = 49
            end
            L17_2 = A0_2.anim
            L17_2 = L17_2.playbackRate
            if not L17_2 then
              L17_2 = 0
            end
            L18_2 = A0_2.anim
            L18_2 = L18_2.lockX
            if L18_2 then
              L18_2 = true
              if L18_2 then
                goto lbl_337
              end
            end
            L18_2 = false
            ::lbl_337::
            L19_2 = A0_2.anim
            L19_2 = L19_2.lockY
            if L19_2 then
              L19_2 = true
              if L19_2 then
                goto lbl_345
              end
            end
            L19_2 = false
            ::lbl_345::
            L20_2 = A0_2.anim
            L20_2 = L20_2.lockZ
            if L20_2 then
              L20_2 = true
              if L20_2 then
                goto lbl_353
              end
            end
            L20_2 = false
            ::lbl_353::
            L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
          end
        end
      end
    end
    L9_2 = A0_2.prop
    if L9_2 and not L8_2 then
      L9_2 = A0_2.prop
      L9_2 = L9_2.model
      if L9_2 and not L6_2 then
        L9_2 = WSB
        L9_2 = L9_2.stream
        L9_2 = L9_2.model
        L10_2 = A0_2.prop
        L10_2 = L10_2.model
        L11_2 = 7500
        L9_2 = L9_2(L10_2, L11_2)
        if L9_2 then
          L10_2 = WSB
          L10_2 = L10_2.cache
          L10_2 = L10_2.ped
          if not L10_2 then
            L10_2 = PlayerPedId
            L10_2 = L10_2()
          end
          L11_2 = table
          L11_2 = L11_2.unpack
          L12_2 = GetOffsetFromEntityInWorldCoords
          L13_2 = L10_2
          L14_2 = 0.0
          L15_2 = 2.0
          L16_2 = 0.55
          L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
          L11_2, L12_2, L13_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2)
          L14_2 = A0_2.prop
          L15_2 = CreateObjectNoOffset
          L16_2 = L14_2.model
          L17_2 = L11_2
          L18_2 = L12_2
          L19_2 = L13_2
          L20_2 = true
          L21_2 = false
          L22_2 = false
          L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
          L16_2 = AttachEntityToEntity
          L17_2 = L15_2
          L18_2 = L10_2
          L19_2 = GetPedBoneIndex
          L20_2 = L10_2
          L21_2 = L14_2.bone
          if not L21_2 then
            L21_2 = 60309
          end
          L19_2 = L19_2(L20_2, L21_2)
          L20_2 = L14_2.pos
          L20_2 = L20_2.x
          L21_2 = L14_2.pos
          L21_2 = L21_2.y
          L22_2 = L14_2.pos
          L22_2 = L22_2.z
          L23_2 = L14_2.rot
          L23_2 = L23_2.x
          L24_2 = L14_2.rot
          L24_2 = L24_2.y
          L25_2 = L14_2.rot
          L25_2 = L25_2.z
          L26_2 = true
          L27_2 = true
          L28_2 = false
          L29_2 = true
          L30_2 = L14_2.rotOrder
          if not L30_2 then
            L30_2 = 0
          end
          L31_2 = true
          L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
          L16_2 = SetModelAsNoLongerNeeded
          L17_2 = L14_2.model
          L16_2(L17_2)
          L16_2 = DoesEntityExist
          L17_2 = L15_2
          L16_2 = L16_2(L17_2)
          if L16_2 then
            L16_2 = #L7_2
            L16_2 = L16_2 + 1
            L7_2[L16_2] = L15_2
          end
          L6_2 = true
        end
      else
        L9_2 = A0_2.prop
        L9_2 = L9_2[1]
        if L9_2 then
          L9_2 = A0_2.prop
          L9_2 = L9_2[1]
          L9_2 = L9_2.model
          if L9_2 and not L6_2 then
            L9_2 = 1
            L10_2 = A0_2.prop
            L10_2 = #L10_2
            L11_2 = 1
            for L12_2 = L9_2, L10_2, L11_2 do
              L13_2 = A0_2.prop
              L13_2 = L13_2[L12_2]
              L14_2 = WSB
              L14_2 = L14_2.stream
              L14_2 = L14_2.model
              L15_2 = L13_2.model
              L16_2 = 7500
              L14_2 = L14_2(L15_2, L16_2)
              if L14_2 then
                L15_2 = WSB
                L15_2 = L15_2.cache
                L15_2 = L15_2.ped
                if not L15_2 then
                  L15_2 = PlayerPedId
                  L15_2 = L15_2()
                end
                L16_2 = table
                L16_2 = L16_2.unpack
                L17_2 = GetOffsetFromEntityInWorldCoords
                L18_2 = L15_2
                L19_2 = 0.0
                L20_2 = 2.0
                L21_2 = 0.55
                L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2 = L17_2(L18_2, L19_2, L20_2, L21_2)
                L16_2, L17_2, L18_2 = L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2)
                L19_2 = CreateObjectNoOffset
                L20_2 = L13_2.model
                L21_2 = L16_2
                L22_2 = L17_2
                L23_2 = L18_2
                L24_2 = true
                L25_2 = false
                L26_2 = false
                L19_2 = L19_2(L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
                L20_2 = AttachEntityToEntity
                L21_2 = L19_2
                L22_2 = L15_2
                L23_2 = GetPedBoneIndex
                L24_2 = L15_2
                L25_2 = L13_2.bone
                if not L25_2 then
                  L25_2 = 60309
                end
                L23_2 = L23_2(L24_2, L25_2)
                L24_2 = L13_2.pos
                L24_2 = L24_2.x
                L25_2 = L13_2.pos
                L25_2 = L25_2.y
                L26_2 = L13_2.pos
                L26_2 = L26_2.z
                L27_2 = L13_2.rot
                L27_2 = L27_2.x
                L28_2 = L13_2.rot
                L28_2 = L28_2.y
                L29_2 = L13_2.rot
                L29_2 = L29_2.z
                L30_2 = true
                L31_2 = true
                L32_2 = false
                L33_2 = true
                L34_2 = L13_2.rotOrder
                if not L34_2 then
                  L34_2 = 0
                end
                L35_2 = true
                L20_2(L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2)
                L20_2 = SetModelAsNoLongerNeeded
                L21_2 = L13_2.model
                L20_2(L21_2)
                L20_2 = DoesEntityExist
                L21_2 = L19_2
                L20_2 = L20_2(L21_2)
                if L20_2 then
                  L20_2 = #L7_2
                  L20_2 = L20_2 + 1
                  L7_2[L20_2] = L19_2
                end
                L6_2 = true
              end
            end
          end
        end
      end
    end
    L9_2 = ProgressUICallback
    if L9_2 then
      L8_2 = ProgressUICallback
      ProgressUICallback = nil
    end
    L9_2 = Wait
    L10_2 = 0
    L9_2(L10_2)
  end
  L9_2 = A0_2.anim
  if L9_2 then
    L9_2 = ClearPedTasks
    L10_2 = WSB
    L10_2 = L10_2.cache
    L10_2 = L10_2.ped
    if not L10_2 then
      L10_2 = PlayerPedId
      L10_2 = L10_2()
    end
    L9_2(L10_2)
  end
  L9_2 = A0_2.prop
  if L9_2 and L7_2 then
    L9_2 = next
    L10_2 = L7_2
    L9_2 = L9_2(L10_2)
    if L9_2 then
      L9_2 = 1
      L10_2 = #L7_2
      L11_2 = 1
      for L12_2 = L9_2, L10_2, L11_2 do
        L13_2 = DoesEntityExist
        L14_2 = L7_2[L12_2]
        L13_2 = L13_2(L14_2)
        if L13_2 then
          L13_2 = DeleteEntity
          L14_2 = L7_2[L12_2]
          L13_2(L14_2)
        end
      end
    end
  end
  L9_2 = false
  L1_1 = L9_2
  if L8_2 and "nil" ~= L8_2 then
    return L8_2
  else
    L9_2 = nil
    return L9_2
  end
end
ProgressUI = L2_1
L2_1 = RegisterNUICallback
L3_1 = "skillCheckResult"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A0_2 then
    L2_2 = A0_2.passed
    if L2_2 then
      goto lbl_7
    end
  end
  L2_2 = false
  ::lbl_7::
  L3_2 = L2_2 or L3_2
  if not L2_2 then
    L3_2 = "nil"
  end
  SkillCheckCallback = L3_2
  L3_2 = SetNuiFocus
  L4_2 = false
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A1_2
  L4_2 = "ok"
  L3_2(L4_2)
end
L2_1(L3_1, L4_1)
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = Wait
  L4_2 = 300
  L3_2(L4_2)
  L3_2 = SendNUIMessage
  L4_2 = {}
  L4_2.component = "skillCheck"
  L4_2.difficulty = A0_2
  L4_2.key = A1_2
  L4_2.color = A2_2
  L3_2(L4_2)
  L3_2 = SetNuiFocus
  L4_2 = true
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = nil
  while nil == L3_2 do
    L4_2 = Wait
    L5_2 = 5
    L4_2(L5_2)
    L4_2 = SkillCheckCallback
    if L4_2 then
      L3_2 = SkillCheckCallback
      SkillCheckCallback = nil
    end
  end
  SkillCheckCallback = nil
  if L3_2 and "nil" ~= L3_2 then
    return L3_2
  end
  L4_2 = nil
  return L4_2
end
SkillCheck = L2_1
