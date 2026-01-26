



local L0_1, L1_1, L2_1
L0_1 = RegisterNuiCallback
L1_1 = "getConfig"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A1_2
  L3_2 = {}
  L4_2 = GetConvar
  L5_2 = "prism:primaryColor"
  L6_2 = "#BEEE11"
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.primaryColor = L4_2
  L4_2 = GetConvarInt
  L5_2 = "prism:notificationDuration"
  L6_2 = 3000
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.notificationDuration = L4_2
  L4_2 = GetConvar
  L5_2 = "prism:progressCancelKey"
  L6_2 = "X"
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.progressCancelKey = L4_2
  L4_2 = GetConvar
  L5_2 = "prism:notificationPosition"
  L6_2 = "top-right"
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.notifyPosition = L4_2
  L4_2 = GetConvar
  L5_2 = "prism:textUIPosition"
  L6_2 = "center-left"
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.textUIPosition = L4_2
  L4_2 = GetConvar
  L5_2 = "prism:progressBar"
  L6_2 = "primary"
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.progressVariant = L4_2
  L2_2(L3_2)
end
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "Notify"
L2_1 = Notify
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "ShowTextUI"
L2_1 = ShowTextUI
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "HideTextUI"
L2_1 = HideTextUI
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "IsTextUIOpen"
L2_1 = IsTextUIOpen
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "ProgressBar"
L2_1 = ProgressBar
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "ProgressActive"
L2_1 = ProgressActive
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "CancelProgress"
L2_1 = CancelProgress
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "AddRadialItem"
L2_1 = AddRadialItem
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "RemoveRadialItem"
L2_1 = RemoveRadialItem
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "ClearRadialItems"
L2_1 = ClearRadialItems
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "RegisterRadial"
L2_1 = RegisterRadial
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "HideRadial"
L2_1 = HideRadial
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "DisableRadial"
L2_1 = disableRadial
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "GetCurrentRadialId"
L2_1 = GetCurrentRadialId
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "SkillCheck"
L2_1 = SkillCheck
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "SkillCheckActive"
L2_1 = SkillCheckActive
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "CancelSkillCheck"
L2_1 = CancelSkillCheck
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "InputDialog"
L2_1 = InputDialog
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "CloseInputDialog"
L2_1 = CloseInputDialog
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "RegisterContext"
L2_1 = RegisterContext
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "ShowContext"
L2_1 = ShowContext
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "HideContext"
L2_1 = HideContext
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "GetOpenContextMenu"
L2_1 = GetOpenContextMenu
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "AlertDialog"
L2_1 = AlertDialog
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "CloseAlertDialog"
L2_1 = CloseAlertDialog
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "RegisterMenu"
L2_1 = RegisterMenu
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "ShowMenu"
L2_1 = ShowMenu
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "HideMenu"
L2_1 = HideMenu
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "GetOpenMenu"
L2_1 = GetOpenMenu
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "SetMenuOptions"
L2_1 = SetMenuOptions
L0_1(L1_1, L2_1)
