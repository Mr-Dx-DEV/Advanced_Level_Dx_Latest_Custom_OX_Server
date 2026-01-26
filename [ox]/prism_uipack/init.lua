



local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1
L0_1 = exports
L0_1 = L0_1.prism_uipack
L1_1 = {}
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.Notify
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L1_1.notify = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.ShowTextUI
  L4_2 = A0_2
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L1_1.showTextUI = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = L0_1
  L1_2 = L0_2
  L0_2 = L0_2.HideTextUI
  L0_2(L1_2)
end
L1_1.hideTextUI = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = L0_1
  L1_2 = L0_2
  L0_2 = L0_2.IsTextUIOpen
  return L0_2(L1_2)
end
L1_1.isTextUIOpen = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.ProgressBar
  L3_2 = A0_2
  return L1_2(L2_2, L3_2)
end
L1_1.progressBar = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2.variant = "secondary"
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.ProgressBar
  L3_2 = A0_2
  return L1_2(L2_2, L3_2)
end
L1_1.progressCircle = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = L0_1
  L1_2 = L0_2
  L0_2 = L0_2.ProgressActive
  return L0_2(L1_2)
end
L1_1.progressActive = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = L0_1
  L1_2 = L0_2
  L0_2 = L0_2.CancelProgress
  L0_2(L1_2)
end
L1_1.cancelProgress = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.AddRadialItem
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L1_1.addRadialItem = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.RemoveRadialItem
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L1_1.removeRadialItem = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = L0_1
  L1_2 = L0_2
  L0_2 = L0_2.ClearRadialItems
  L0_2(L1_2)
end
L1_1.clearRadialItems = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.RegisterRadial
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L1_1.registerRadial = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = L0_1
  L1_2 = L0_2
  L0_2 = L0_2.HideRadial
  L0_2(L1_2)
end
L1_1.hideRadial = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.DisableRadial
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L1_1.disableRadial = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = L0_1
  L1_2 = L0_2
  L0_2 = L0_2.GetCurrentRadialId
  return L0_2(L1_2)
end
L1_1.getCurrentRadialId = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = L0_1
  L4_2 = L3_2
  L3_2 = L3_2.SkillCheck
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  return L3_2(L4_2, L5_2, L6_2, L7_2)
end
L1_1.skillCheck = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = L0_1
  L1_2 = L0_2
  L0_2 = L0_2.SkillCheckActive
  return L0_2(L1_2)
end
L1_1.skillCheckActive = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = L0_1
  L1_2 = L0_2
  L0_2 = L0_2.CancelSkillCheck
  return L0_2(L1_2)
end
L1_1.cancelSkillCheck = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = L0_1
  L4_2 = L3_2
  L3_2 = L3_2.InputDialog
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  return L3_2(L4_2, L5_2, L6_2, L7_2)
end
L1_1.inputDialog = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = L0_1
  L1_2 = L0_2
  L0_2 = L0_2.CloseInputDialog
  L0_2(L1_2)
end
L1_1.closeInputDialog = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.RegisterContext
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L1_1.registerContext = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.ShowContext
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L1_1.showContext = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.HideContext
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L1_1.hideContext = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = L0_1
  L1_2 = L0_2
  L0_2 = L0_2.GetOpenContextMenu
  return L0_2(L1_2)
end
L1_1.getOpenContextMenu = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.AlertDialog
  L3_2 = A0_2
  return L1_2(L2_2, L3_2)
end
L1_1.alertDialog = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = L0_1
  L1_2 = L0_2
  L0_2 = L0_2.CloseAlertDialog
  L0_2(L1_2)
end
L1_1.closeAlertDialog = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.RegisterMenu
  L4_2 = A0_2
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L1_1.registerMenu = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.ShowMenu
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L1_1.showMenu = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.HideMenu
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L1_1.hideMenu = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = L0_1
  L1_2 = L0_2
  L0_2 = L0_2.GetOpenMenu
  return L0_2(L1_2)
end
L1_1.getOpenMenu = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = L0_1
  L4_2 = L3_2
  L3_2 = L3_2.SetMenuOptions
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L1_1.setMenuOptions = L2_1
L2_1 = 0
L3_1 = pairs
L4_1 = L1_1
L3_1, L4_1, L5_1, L6_1 = L3_1(L4_1)
for L7_1, L8_1 in L3_1, L4_1, L5_1, L6_1 do
  L9_1 = pcall
  function L10_1()
    local L0_2, L1_2, L2_2
    L0_2 = lib
    L1_2 = L7_1
    L2_2 = L8_1
    L0_2[L1_2] = L2_2
    L0_2 = L2_1
    L0_2 = L0_2 + 1
    L2_1 = L0_2
  end
  L9_1, L10_1 = L9_1(L10_1)
  if not L9_1 then
    L11_1 = print
    L12_1 = "[prism_uipack] Failed to override lib.%s: %s"
    L13_1 = L12_1
    L12_1 = L12_1.format
    L14_1 = L7_1
    L15_1 = L10_1
    L12_1, L13_1, L14_1, L15_1 = L12_1(L13_1, L14_1, L15_1)
    L11_1(L12_1, L13_1, L14_1, L15_1)
  end
end
L3_1 = print
L4_1 = "[prism_uipack] Successfully initialized %d/%d function overrides"
L5_1 = L4_1
L4_1 = L4_1.format
L6_1 = L2_1
L7_1 = #L1_1
L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1 = L4_1(L5_1, L6_1, L7_1)
L3_1(L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1)
L2_1 = exports
L3_1 = setmetatable
L4_1 = {}
L5_1 = {}
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = L2_1
  L4_2 = A1_2
  L5_2 = A2_2
  return L3_2(L4_2, L5_2)
end
L5_1.__call = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if "ox_lib" == A1_2 then
    L2_2 = setmetatable
    L3_2 = {}
    L4_2 = {}
    function L5_2(A0_3, A1_3)
      local L2_3, L3_3
      L2_3 = L1_1
      L2_3 = L2_3[A1_3]
      if L2_3 then
        function L3_3(A0_4, ...)
          local L1_4, L2_4
          L1_4 = L2_3
          L2_4 = ...
          return L1_4(L2_4)
        end
        return L3_3
      end
      L3_3 = L2_1.ox_lib
      L3_3 = L3_3[A1_3]
      return L3_3
    end
    L4_2.__index = L5_2
    return L2_2(L3_2, L4_2)
  end
  L2_2 = L2_1
  L2_2 = L2_2[A1_2]
  return L2_2
end
L5_1.__index = L6_1
L3_1 = L3_1(L4_1, L5_1)
exports = L3_1
