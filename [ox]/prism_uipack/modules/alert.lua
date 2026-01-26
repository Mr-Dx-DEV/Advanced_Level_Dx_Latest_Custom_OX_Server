



local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = nil
L1_1 = 0
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L0_1
  if L2_2 then
    return
  end
  L2_2 = L1_1
  L2_2 = L2_2 + 1
  L1_1 = L2_2
  L3_2 = promise
  L3_2 = L3_2.new
  L3_2 = L3_2()
  L0_1 = L3_2
  L3_2 = Utils
  L3_2 = L3_2.setNuiFocus
  L4_2 = false
  L3_2(L4_2)
  L3_2 = SendNUIMessage
  L4_2 = {}
  L4_2.action = "sendAlert"
  L4_2.data = A0_2
  L3_2(L4_2)
  if A1_2 then
    L3_2 = SetTimeout
    L4_2 = A1_2
    function L5_2()
      local L0_3, L1_3
      L0_3 = L2_2
      L1_3 = L1_1
      if L0_3 == L1_3 then
        L0_3 = CloseAlertDialog
        L1_3 = "timeout"
        L0_3(L1_3)
      end
    end
    L3_2(L4_2, L5_2)
  end
  L3_2 = Citizen
  L3_2 = L3_2.Await
  L4_2 = L0_1
  return L3_2(L4_2)
end
AlertDialog = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1
  if not L1_2 then
    return
  end
  L1_2 = Utils
  L1_2 = L1_2.resetNuiFocus
  L1_2()
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "closeAlertDialog"
  L1_2(L2_2)
  L1_2 = L0_1
  L2_2 = nil
  L0_1 = L2_2
  if A0_2 then
    L3_2 = L1_2
    L2_2 = L1_2.reject
    L4_2 = A0_2
    L2_2(L3_2, L4_2)
  else
    L3_2 = L1_2
    L2_2 = L1_2.resolve
    L2_2(L3_2)
  end
end
CloseAlertDialog = L2_1
L2_1 = RegisterNUICallback
L3_1 = "closeAlert"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2
  L3_2 = 1
  L2_2(L3_2)
  L2_2 = Utils
  L2_2 = L2_2.resetNuiFocus
  L2_2()
  L2_2 = L0_1
  L3_2 = nil
  L0_1 = L3_2
  L4_2 = L2_2
  L3_2 = L2_2.resolve
  L5_2 = A0_2
  L3_2(L4_2, L5_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "ox_lib:alertDialog"
L4_1 = AlertDialog
L2_1(L3_1, L4_1)
