



local L0_1, L1_1, L2_1
L0_1 = false
L1_1 = nil
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L1_1
  if L2_2 == A0_2 then
    return
  end
  if not A1_2 then
    L2_2 = {}
    A1_2 = L2_2
  end
  A1_2.text = A0_2
  L1_1 = A0_2
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.action = "textUi"
  L3_2.data = A1_2
  L2_2(L3_2)
  L2_2 = true
  L0_1 = L2_2
end
ShowTextUI = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "textUiHide"
  L0_2(L1_2)
  L0_2 = false
  L0_1 = L0_2
  L0_2 = nil
  L1_1 = L0_2
end
HideTextUI = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = L0_1
  L1_2 = L1_1
  return L0_2, L1_2
end
IsTextUIOpen = L2_1
