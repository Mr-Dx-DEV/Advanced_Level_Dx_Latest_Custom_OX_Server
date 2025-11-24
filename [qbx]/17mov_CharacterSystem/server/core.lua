local L0_1, L1_1, L2_1, L3_1
L0_1 = {}
L1_1 = Functions
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = L0_1
  L2_2[A0_2] = A1_2
end
L1_1.RegisterServerCallback = L2_1
L1_1 = RegisterNetEvent
L2_1 = "17mov_Callbacks:GetResponse"
L3_1 = Functions
L3_1 = L3_1.ResourceName
L2_1 = L2_1 .. L3_1
function L3_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = source
  L3_2 = L0_1
  L3_2 = L3_2[A0_2]
  if nil == L3_2 then
    return
  end
  L3_2 = TriggerClientEvent
  L4_2 = "17mov_Callbacks:receiveData"
  L5_2 = Functions
  L5_2 = L5_2.ResourceName
  L4_2 = L4_2 .. L5_2
  L5_2 = L2_2
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = L0_1
  L8_2 = L8_2[A0_2]
  L9_2 = L2_2
  L10_2 = ...
  L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end
L1_1(L2_1, L3_1)
L1_1 = CreateThread
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = GetResourcePath
  L1_2 = GetCurrentResourceName
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  while true do
    L1_2 = pairs
    L2_2 = Config
    L2_2 = L2_2.ResourcesToDisable
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      if L6_2 then
        L7_2 = GetResourceState
        L8_2 = L5_2
        L7_2 = L7_2(L8_2)
        L8_2 = GetResourcePath
        L9_2 = L5_2
        L8_2 = L8_2(L9_2)
        if L8_2 ~= L0_2 and "started" == L7_2 then
          L9_2 = Functions
          L9_2 = L9_2.Print
          L10_2 = L5_2
          L11_2 = " is started. 17mov_CharacterSystem cannot work together with it. Please stop it"
          L10_2 = L10_2 .. L11_2
          L9_2(L10_2)
        end
      end
    end
    L1_2 = Citizen
    L1_2 = L1_2.Wait
    L2_2 = 1000
    L1_2(L2_2)
  end
end
L1_1(L2_1)
