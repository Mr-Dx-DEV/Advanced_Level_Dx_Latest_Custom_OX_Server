local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1
L0_1 = {}
L1_1 = {}
L2_1 = {}
L3_1 = 4
L4_1 = GetPlayerIdentifierByType
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if nil == A0_2 then
    L2_2 = 0
    return L2_2
  end
  L2_2 = L4_1
  if nil ~= L2_2 then
    L2_2 = L4_1
    L3_2 = A0_2
    L4_2 = A1_2
    return L2_2(L3_2, L4_2)
  else
    L2_2 = GetPlayerIdentifier
    L3_2 = A0_2
    L4_2 = 1
    return L2_2(L3_2, L4_2)
  end
end
GetPlayerIdentifierByType = L5_1
L5_1 = GetPlayerPing
function L6_1(A0_2, ...)
  local L1_2, L2_2, L3_2
  if nil ~= A0_2 then
    L1_2 = L5_1
    L2_2 = A0_2
    L3_2 = ...
    L1_2(L2_2, L3_2)
  end
end
GetPlayerPing = L6_1
L6_1 = TriggerClientEvent
function L7_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2
  if nil ~= A1_2 then
    L2_2 = L6_1
    L3_2 = A0_2
    L4_2 = A1_2
    L5_2 = ...
    L2_2(L3_2, L4_2, L5_2)
  end
end
TriggerClientEvent = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = 0
  L2_2 = pairs
  L3_2 = L0_1
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.host
    if L8_2 == A0_2 then
      L1_2 = L6_2
    end
  end
  L2_2 = L0_1
  L2_2 = L2_2[L1_2]
  L3_2 = {}
  L2_2.rewardsOptions = L3_2
  L2_2 = L0_1
  L2_2 = L2_2[L1_2]
  L2_2 = L2_2.clients
  L2_2 = #L2_2
  L2_2 = L2_2 + 1
  L3_2 = 1
  L4_2 = L2_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L0_1
    L7_2 = L7_2[L1_2]
    L7_2 = L7_2.clients
    L7_2 = L7_2[L6_2]
    L8_2 = L0_1
    L8_2 = L8_2[L1_2]
    L8_2 = L8_2.rewardsOptions
    L9_2 = math
    L9_2 = L9_2.floor
    L10_2 = 100
    L10_2 = L10_2 / L2_2
    L9_2 = L9_2(L10_2)
    L8_2[L7_2] = L9_2
  end
  L3_2 = L0_1
  L3_2 = L3_2[L1_2]
  L3_2 = L3_2.rewardsOptions
  L4_2 = math
  L4_2 = L4_2.floor
  L5_2 = 100
  L5_2 = L5_2 / L2_2
  L4_2 = L4_2(L5_2)
  L3_2[A0_2] = L4_2
  L3_2 = TriggerForAllMembers
  L4_2 = A0_2
  L5_2 = "17mov_OilRig:SetMyReward"
  L6_2 = math
  L6_2 = L6_2.floor
  L7_2 = 100
  L7_2 = L7_2 / L2_2
  L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L3_2 = TriggerClientEvent
  L4_2 = "17mov_OilRig:UpdateHostPercentages"
  L5_2 = A0_2
  L6_2 = math
  L6_2 = L6_2.floor
  L7_2 = 100
  L7_2 = L7_2 / L2_2
  L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end
RecalculateRewards = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = L0_1
  L2_2 = L2_2[A0_2]
  if not L2_2 then
    return
  end
  if not A1_2 then
    L3_2 = {}
    L4_2 = L2_2.host
    L3_2[1] = L4_2
    A1_2 = L3_2
    L3_2 = pairs
    L4_2 = L2_2.clients
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = A1_2
      L11_2 = L8_2
      L9_2(L10_2, L11_2)
    end
  end
  L3_2 = TriggerForAllMembers
  L4_2 = L2_2.host
  L5_2 = "17mov_OilRig:UpdateLobbyMembers"
  L6_2 = A1_2
  L3_2(L4_2, L5_2, L6_2)
end
UpdateLobbyMembers = L7_1
function L7_1(A0_2, A1_2)
  local L2_2
  L2_2 = L2_1
  L2_2[A0_2] = A1_2
end
RegisterServerCallback = L7_1
L7_1 = RegisterNetEvent
L8_1 = "17mov_Callbacks:GetResponse"
L9_1 = GetCurrentResourceName
L9_1 = L9_1()
L8_1 = L8_1 .. L9_1
function L9_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2
  L2_2 = L2_1
  L2_2 = L2_2[A0_2]
  if nil == L2_2 then
    return
  end
  L2_2 = source
  L3_2 = L2_1
  L3_2 = L3_2[A0_2]
  L4_2 = L2_2
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2 = ...
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
  L14_2 = TriggerClientEvent
  L15_2 = "17mov_Callbacks:receiveData"
  L16_2 = GetCurrentResourceName
  L16_2 = L16_2()
  L15_2 = L15_2 .. L16_2
  L16_2 = L2_2
  L17_2 = A0_2
  L18_2 = A1_2
  L19_2 = L3_2
  L20_2 = L4_2
  L21_2 = L5_2
  L22_2 = L6_2
  L23_2 = L7_2
  L24_2 = L8_2
  L25_2 = L9_2
  L26_2 = L10_2
  L27_2 = L11_2
  L28_2 = L12_2
  L29_2 = L13_2
  L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
end
L7_1(L8_1, L9_1)
L7_1 = CreateThread
function L8_1()
  local L0_2, L1_2, L2_2
  L0_2 = RegisterServerCallback
  L1_2 = "17mov_OilRig:getVehicles"
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = GetLobbyIndex
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    L2_3 = L0_1
    L2_3 = L2_3[L1_3]
    L2_3 = L2_3.vehNetId
    if not L2_3 then
      L2_3 = nil
    end
    L3_3 = L0_1
    L3_3 = L3_3[L1_3]
    L3_3 = L3_3.boatNetId
    if not L3_3 then
      L3_3 = nil
    end
    return L2_3, L3_3
  end
  L0_2(L1_2, L2_2)
  L0_2 = RegisterServerCallback
  L1_2 = "17mov_OilRig:IsDrillFree"
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = GetLobbyIndex
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    if 0 == L1_3 then
      L2_3 = print
      L3_3 = "CANT FIND LOBBY IN 'IsDrillFree'"
      L2_3(L3_3)
      return
    end
    L2_3 = L0_1
    L2_3 = L2_3[L1_3]
    L2_3 = L2_3.drillBusy
    if nil ~= L2_3 then
      L2_3 = L0_1
      L2_3 = L2_3[L1_3]
      L2_3 = L2_3.drillBusy
      if false ~= L2_3 then
        goto lbl_26
      end
    end
    L2_3 = L0_1
    L2_3 = L2_3[L1_3]
    L2_3.drillBusy = true
    L2_3 = true
    do return L2_3 end
    goto lbl_28
    ::lbl_26::
    L2_3 = false
    do return L2_3 end
    ::lbl_28::
  end
  L0_2(L1_2, L2_2)
  L0_2 = RegisterServerCallback
  L1_2 = "17mov_OilRig:CheckIfCraneIsFree"
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = GetLobbyIndex
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    if 0 == L1_3 then
      L2_3 = print
      L3_3 = "CANT FIND LOBBY IN 'CheckIfCraneIsFree'"
      L2_3(L3_3)
      return
    end
    L2_3 = L0_1
    L2_3 = L2_3[L1_3]
    L2_3 = L2_3.craneBusy
    if nil ~= L2_3 then
      L2_3 = L0_1
      L2_3 = L2_3[L1_3]
      L2_3 = L2_3.craneBusy
      if false ~= L2_3 then
        goto lbl_26
      end
    end
    L2_3 = L0_1
    L2_3 = L2_3[L1_3]
    L2_3.craneBusy = true
    L2_3 = true
    do return L2_3 end
    goto lbl_28
    ::lbl_26::
    L2_3 = false
    do return L2_3 end
    ::lbl_28::
  end
  L0_2(L1_2, L2_2)
  L0_2 = RegisterServerCallback
  L1_2 = "17mov_OilRig:CheckThisReward"
  function L2_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
    L3_3 = 0
    L4_3 = pairs
    L5_3 = L0_1
    L4_3, L5_3, L6_3, L7_3 = L4_3(L5_3)
    for L8_3, L9_3 in L4_3, L5_3, L6_3, L7_3 do
      L10_3 = L9_3.host
      if A0_3 == L10_3 then
        L3_3 = L8_3
        break
      end
      L10_3 = 1
      L11_3 = L9_3.clients
      L11_3 = #L11_3
      L12_3 = 1
      for L13_3 = L10_3, L11_3, L12_3 do
        L14_3 = L9_3.clients
        L14_3 = L14_3[L13_3]
        if A0_3 == L14_3 then
          L3_3 = L8_3
          break
        end
      end
    end
    L4_3 = 0
    L5_3 = pairs
    L6_3 = L0_1
    L6_3 = L6_3[L3_3]
    L6_3 = L6_3.rewardsOptions
    L5_3, L6_3, L7_3, L8_3 = L5_3(L6_3)
    for L9_3, L10_3 in L5_3, L6_3, L7_3, L8_3 do
      if L9_3 ~= A2_3 then
        L4_3 = L4_3 + L10_3
      end
    end
    L5_3 = L4_3 + A1_3
    if L5_3 > 100 then
      L5_3 = false
      return L5_3
    else
      L5_3 = L0_1
      L5_3 = L5_3[L3_3]
      L5_3 = L5_3.rewardsOptions
      L5_3[A2_3] = A1_3
      L5_3 = TriggerClientEvent
      L6_3 = "17mov_OilRig:SetMyReward"
      L7_3 = A2_3
      L8_3 = A1_3
      L5_3(L6_3, L7_3, L8_3)
      L5_3 = true
      return L5_3
    end
  end
  L0_2(L1_2, L2_2)
  L0_2 = RegisterServerCallback
  L1_2 = "17mov_OilRig:GetPlayersNames"
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L2_3 = {}
    L3_3 = 1
    L4_3 = #A1_3
    L5_3 = 1
    for L6_3 = L3_3, L4_3, L5_3 do
      L7_3 = table
      L7_3 = L7_3.insert
      L8_3 = L2_3
      L9_3 = {}
      L10_3 = A1_3[L6_3]
      L9_3.id = L10_3
      L10_3 = GetPlayerIdentity
      L11_3 = A1_3[L6_3]
      L10_3 = L10_3(L11_3)
      L9_3.name = L10_3
      L7_3(L8_3, L9_3)
    end
    return L2_3
  end
  L0_2(L1_2, L2_2)
  L0_2 = RegisterServerCallback
  L1_2 = "17mov_OilRig:GetLobbyMembers"
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3
    if nil == A1_3 then
      L2_3 = {}
      return L2_3
    end
    L2_3 = {}
    L3_3 = A1_3
    L2_3[1] = L3_3
    L3_3 = pairs
    L4_3 = L0_1
    L3_3, L4_3, L5_3, L6_3 = L3_3(L4_3)
    for L7_3, L8_3 in L3_3, L4_3, L5_3, L6_3 do
      L9_3 = L8_3.host
      if L9_3 == A1_3 then
        L9_3 = 1
        L10_3 = L8_3.clients
        L10_3 = #L10_3
        L11_3 = 1
        for L12_3 = L9_3, L10_3, L11_3 do
          L13_3 = table
          L13_3 = L13_3.insert
          L14_3 = L2_3
          L15_3 = L8_3.clients
          L15_3 = L15_3[L12_3]
          L13_3(L14_3, L15_3)
        end
      end
    end
    return L2_3
  end
  L0_2(L1_2, L2_2)
  L0_2 = RegisterServerCallback
  L1_2 = "17mov_OilRig:IfPlayerOwnsTeam"
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L1_3 = false
    L2_3 = pairs
    L3_3 = L0_1
    L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
    for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
      L8_3 = L7_3.host
      if L8_3 == A0_3 then
        L1_3 = true
        break
      end
    end
    return L1_3
  end
  L0_2(L1_2, L2_2)
  L0_2 = RegisterServerCallback
  L1_2 = "17mov_OilRig:IfPlayerIsHost"
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    L1_3 = true
    L2_3 = 0
    L3_3 = pairs
    L4_3 = L0_1
    L3_3, L4_3, L5_3, L6_3 = L3_3(L4_3)
    for L7_3, L8_3 in L3_3, L4_3, L5_3, L6_3 do
      L9_3 = 1
      L10_3 = L8_3.clients
      L10_3 = #L10_3
      L11_3 = 1
      for L12_3 = L9_3, L10_3, L11_3 do
        L13_3 = L8_3.clients
        L13_3 = L13_3[L12_3]
        if L13_3 == A0_3 then
          L1_3 = false
          L2_3 = L7_3
          break
        end
      end
    end
    L3_3 = L0_1
    L3_3 = L3_3[L2_3]
    if nil ~= L3_3 then
      L3_3 = L0_1
      L3_3 = L3_3[L2_3]
      L3_3 = L3_3.host
      if A0_3 == L3_3 then
        L3_3 = true
        return L3_3
      end
    end
    if not L1_3 then
      L3_3 = L0_1
      L3_3 = L3_3[L2_3]
      L3_3 = L3_3.host
      if nil ~= L3_3 then
        L3_3 = GetPlayerPing
        L4_3 = L0_1
        L4_3 = L4_3[L2_3]
        L4_3 = L4_3.host
        L3_3 = L3_3(L4_3)
        if 0 == L3_3 then
          L1_3 = true
          L3_3 = L0_1
          L3_3 = L3_3[L2_3]
          L3_3.host = A0_3
        end
      end
    end
    return L1_3
  end
  L0_2(L1_2, L2_2)
  L0_2 = RegisterServerCallback
  L1_2 = "17mov_OilRig:init"
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = {}
    L2_3 = GetPlayerIdentity
    L3_3 = A0_3
    L2_3 = L2_3(L3_3)
    L1_3.name = L2_3
    L1_3.source = A0_3
    return L1_3
  end
  L0_2(L1_2, L2_2)
end
L7_1(L8_1)
L7_1 = RegisterNetEvent
L8_1 = "17mov_OilRig:SendRequestToClient_sv"
L7_1(L8_1)
L7_1 = AddEventHandler
L8_1 = "17mov_OilRig:SendRequestToClient_sv"
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = source
  L2_2 = pairs
  L3_2 = L0_1
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.host
    if L8_2 == A0_2 then
      L8_2 = Notify
      L9_2 = L1_2
      L10_2 = Config
      L10_2 = L10_2.Lang
      L10_2 = L10_2.isAlreadyHost
      L8_2(L9_2, L10_2)
      return
    else
      L8_2 = 1
      L9_2 = L7_2.clients
      L9_2 = #L9_2
      L10_2 = 1
      for L11_2 = L8_2, L9_2, L10_2 do
        L12_2 = L7_2.clients
        L12_2 = L12_2[L11_2]
        if L12_2 == A0_2 then
          L12_2 = Notify
          L13_2 = L1_2
          L14_2 = Config
          L14_2 = L14_2.Lang
          L14_2 = L14_2.isBusy
          L12_2(L13_2, L14_2)
          return
        end
      end
    end
  end
  L2_2 = pairs
  L3_2 = L1_1
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.client
    if L8_2 == A0_2 then
      L8_2 = Notify
      L9_2 = L1_2
      L10_2 = Config
      L10_2 = L10_2.Lang
      L10_2 = L10_2.hasActiveInvite
      L8_2(L9_2, L10_2)
      return
    end
    L8_2 = L7_2.host
    if L8_2 == L1_2 then
      L8_2 = L7_2.client
      if nil ~= L8_2 then
        L8_2 = Notify
        L9_2 = L1_2
        L10_2 = Config
        L10_2 = L10_2.Lang
        L10_2 = L10_2.HaveActiveInvite
        L8_2(L9_2, L10_2)
        return
      end
    end
  end
  L2_2 = {}
  L3_2 = pairs
  L4_2 = L0_1
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.host
    if L9_2 == L1_2 then
      L2_2 = L8_2.clients
    end
  end
  L3_2 = #L2_2
  L3_2 = L3_2 + 1
  L4_2 = L3_1
  if L3_2 >= L4_2 then
    L3_2 = Notify
    L4_2 = L1_2
    L5_2 = Config
    L5_2 = L5_2.Lang
    L5_2 = L5_2.partyIsFull
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = L1_1
  L5_2 = {}
  L5_2.host = L1_2
  L5_2.client = A0_2
  L3_2(L4_2, L5_2)
  L3_2 = Notify
  L4_2 = L1_2
  L5_2 = Config
  L5_2 = L5_2.Lang
  L5_2 = L5_2.inviteSent
  L3_2(L4_2, L5_2)
  L3_2 = TriggerClientEvent
  L4_2 = "17mov_OilRig:SendRequestToClient_cl"
  L5_2 = A0_2
  L6_2 = GetPlayerIdentity
  L7_2 = L1_2
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L6_2(L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "17mov_OilRig:ClientReactRequest"
L7_1(L8_1)
L7_1 = AddEventHandler
L8_1 = "17mov_OilRig:ClientReactRequest"
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = source
  L2_2 = nil
  L3_2 = false
  L4_2 = pairs
  L5_2 = L1_1
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L9_2.client
    L11_2 = source
    if L10_2 == L11_2 then
      L2_2 = L9_2.host
      L10_2 = L1_1
      L10_2[L8_2] = nil
      break
    end
  end
  if A0_2 then
    if nil ~= L2_2 and nil ~= L1_2 then
      L4_2 = pairs
      L5_2 = L0_1
      L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
      for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
        L10_2 = L9_2.host
        if L10_2 == L2_2 then
          L10_2 = L9_2.clients
          if nil ~= L10_2 then
            L10_2 = table
            L10_2 = L10_2.insert
            L11_2 = L9_2.clients
            L12_2 = L1_2
            L10_2(L11_2, L12_2)
            L3_2 = true
          end
        end
      end
      if not L3_2 then
        L4_2 = table
        L4_2 = L4_2.insert
        L5_2 = L0_1
        L6_2 = {}
        L6_2.host = L2_2
        L7_2 = {}
        L8_2 = L1_2
        L7_2[1] = L8_2
        L6_2.clients = L7_2
        L6_2.progress = 0
        L7_2 = {}
        L6_2.blockedWalls = L7_2
        L4_2(L5_2, L6_2)
      end
      L4_2 = RecalculateRewards
      L5_2 = L2_2
      L4_2(L5_2)
      L4_2 = Notify
      L5_2 = L2_2
      L6_2 = Config
      L6_2 = L6_2.Lang
      L6_2 = L6_2.InviteAccepted
      L4_2(L5_2, L6_2)
      L4_2 = GetAllPartyMugs
      L5_2 = L2_2
      L4_2 = L4_2(L5_2)
      L5_2 = TriggerForAllMembers
      L6_2 = L2_2
      L7_2 = "17mov_OilRig:RefreshMugs"
      L8_2 = L4_2
      L5_2(L6_2, L7_2, L8_2)
    else
      L4_2 = Notify
      L5_2 = source
      L6_2 = Config
      L6_2 = L6_2.Lang
      L6_2 = L6_2.error
      L4_2(L5_2, L6_2)
      L4_2 = Notify
      L5_2 = L2_2
      L6_2 = Config
      L6_2 = L6_2.Lang
      L6_2 = L6_2.error
      L4_2(L5_2, L6_2)
    end
  else
    L4_2 = Notify
    L5_2 = L2_2
    L6_2 = Config
    L6_2 = L6_2.Lang
    L6_2 = L6_2.InviteDeclined
    L4_2(L5_2, L6_2)
  end
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "17mov_OilRig:KickPlayerFromLobby"
L7_1(L8_1)
L7_1 = AddEventHandler
L8_1 = "17mov_OilRig:KickPlayerFromLobby"
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L3_2 = A0_2
  L4_2 = nil
  if nil == A2_2 then
    L4_2 = source
    L5_2 = pairs
    L6_2 = L0_1
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
    for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
      L11_2 = 1
      L12_2 = L10_2.clients
      L12_2 = #L12_2
      L13_2 = 1
      for L14_2 = L11_2, L12_2, L13_2 do
        L15_2 = L10_2.host
        if L15_2 == L4_2 then
          L15_2 = L10_2.clients
          L15_2 = L15_2[L14_2]
          if L15_2 == L3_2 then
            L15_2 = L10_2.clients
            L15_2[L14_2] = nil
            break
          end
        end
      end
    end
  else
    L5_2 = pairs
    L6_2 = L0_1
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
    for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
      L11_2 = 1
      L12_2 = L10_2.clients
      L12_2 = #L12_2
      L13_2 = 1
      for L14_2 = L11_2, L12_2, L13_2 do
        L15_2 = L10_2.clients
        L15_2 = L15_2[L14_2]
        if L15_2 == A2_2 then
          L4_2 = L10_2.host
          L15_2 = L10_2.clients
          L15_2[L14_2] = nil
          break
        end
      end
    end
  end
  if A1_2 then
    L5_2 = Notify
    L6_2 = L3_2
    L7_2 = Config
    L7_2 = L7_2.Lang
    L7_2 = L7_2.kickedOut
    L5_2(L6_2, L7_2)
  end
  L5_2 = {}
  L6_2 = {}
  L6_2.id = L3_2
  L7_2 = GetPlayerIdentity
  L8_2 = L3_2
  L7_2 = L7_2(L8_2)
  L6_2.name = L7_2
  L6_2.isHost = true
  L5_2[1] = L6_2
  L6_2 = TriggerClientEvent
  L7_2 = "17mov_OilRig:RefreshMugs"
  L8_2 = L3_2
  L9_2 = L5_2
  L10_2 = L3_2
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L6_2 = TriggerClientEvent
  L7_2 = "17mov_OilRig:clearMyLobby"
  L8_2 = L3_2
  L6_2(L7_2, L8_2)
  L6_2 = TriggerClientEvent
  L7_2 = "17mov_OilRig:SetMyReward"
  L8_2 = L3_2
  L9_2 = 100
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = GetAllPartyMugs
  L7_2 = L4_2
  L6_2 = L6_2(L7_2)
  L7_2 = TriggerForAllMembers
  L8_2 = L4_2
  L9_2 = "17mov_OilRig:RefreshMugs"
  L10_2 = L6_2
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = RecalculateRewards
  L8_2 = L4_2
  L7_2(L8_2)
  L7_2 = pairs
  L8_2 = L0_1
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
  for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
    L13_2 = L12_2.clients
    L13_2 = #L13_2
    if 0 == L13_2 then
      L13_2 = L12_2.host
      if L13_2 == L4_2 then
        L13_2 = L0_1
        L13_2[L11_2] = nil
        L13_2 = TriggerClientEvent
        L14_2 = "17mov_OilRig:clearMyLobby"
        L15_2 = L4_2
        L13_2(L14_2, L15_2)
      end
    end
  end
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "17mov_OilRig:endJob_sv"
L7_1(L8_1)
L7_1 = AddEventHandler
L8_1 = "17mov_OilRig:endJob_sv"
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L1_2 = source
  L2_2 = TriggerForAllMembers
  L3_2 = L1_2
  L4_2 = "17mov_OilRig:endJob_cl"
  L5_2 = 0
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = pairs
  L3_2 = L0_1
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.host
    L9_2 = source
    if L8_2 == L9_2 then
      L7_2.working = false
      L8_2 = Config
      L8_2 = L8_2.RigsLocations
      L9_2 = L7_2.rig
      L8_2 = L8_2[L9_2]
      L8_2 = L8_2.BoatParking
      L8_2 = L8_2.BusyParkings
      L9_2 = L7_2.parkingIndex
      L8_2[L9_2] = false
      L8_2 = CreateThread
      function L9_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
        L0_3 = L7_2.vehNetId
        L1_3 = L7_2.boatNetId
        L2_3 = NetworkGetEntityFromNetworkId
        L3_3 = L0_3
        L2_3 = L2_3(L3_3)
        L3_3 = NetworkGetEntityFromNetworkId
        L4_3 = L1_3
        L3_3 = L3_3(L4_3)
        L4_3 = DeleteEntity
        L5_3 = L2_3
        L4_3(L5_3)
        L4_3 = DeleteEntity
        L5_3 = L3_3
        L4_3(L5_3)
      end
      L8_2(L9_2)
      L8_2 = UpdateLobbyMembers
      L9_2 = L6_2
      L10_2 = {}
      L8_2(L9_2, L10_2)
      L8_2 = {}
      L9_2 = 1
      L10_2 = L7_2.clients
      L10_2 = #L10_2
      L11_2 = 1
      for L12_2 = L9_2, L10_2, L11_2 do
        L13_2 = table
        L13_2 = L13_2.insert
        L14_2 = L8_2
        L15_2 = L7_2.clients
        L15_2 = L15_2[L12_2]
        L13_2(L14_2, L15_2)
      end
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = L8_2
      L11_2 = L7_2.host
      L9_2(L10_2, L11_2)
      L9_2 = math
      L9_2 = L9_2.floor
      L10_2 = L7_2.gasProgress
      L11_2 = Config
      L11_2 = L11_2.OneGasPercentWorth
      L10_2 = L10_2 * L11_2
      L9_2 = L9_2(L10_2)
      L10_2 = math
      L10_2 = L10_2.floor
      L11_2 = L7_2.questProgress
      L12_2 = Config
      L12_2 = L12_2.OneQuestPercentWorth
      L11_2 = L11_2 * L12_2
      L10_2 = L10_2(L11_2)
      L9_2 = L9_2 + L10_2
      L10_2 = Config
      L10_2 = L10_2.multiplyRewardWhileWorkingInGroup
      if L10_2 then
        L10_2 = math
        L10_2 = L10_2.floor
        L11_2 = L7_2.clients
        L11_2 = #L11_2
        L11_2 = L11_2 + 1
        L11_2 = L9_2 * L11_2
        L10_2 = L10_2(L11_2)
        L9_2 = L10_2
      end
      L10_2 = L7_2.clients
      L10_2 = #L10_2
      if 0 == L10_2 then
        L10_2 = RecalculateRewards
        L11_2 = L1_2
        L10_2(L11_2)
      end
      L10_2 = {}
      L11_2 = 1
      L12_2 = #L8_2
      L13_2 = 1
      for L14_2 = L11_2, L12_2, L13_2 do
        L15_2 = 0
        L16_2 = Config
        L16_2 = L16_2.letBossSplitReward
        if L16_2 then
          L16_2 = math
          L16_2 = L16_2.floor
          L17_2 = L7_2.rewardsOptions
          L18_2 = L8_2[L14_2]
          L17_2 = L17_2[L18_2]
          L17_2 = L17_2 / 100
          L17_2 = L9_2 * L17_2
          L16_2 = L16_2(L17_2)
          L15_2 = L16_2
        else
          L15_2 = L9_2
        end
        if not A0_2 then
          L16_2 = PayPenalty
          L17_2 = L8_2[L14_2]
          L18_2 = Config
          L18_2 = L18_2.PenaltyAmount
          L16_2(L17_2, L18_2)
          L16_2 = Notify
          L17_2 = L8_2[L14_2]
          L18_2 = Config
          L18_2 = L18_2.Lang
          L18_2 = L18_2.penalty
          L19_2 = Config
          L19_2 = L19_2.PenaltyAmount
          L18_2 = L18_2 .. L19_2
          L16_2(L17_2, L18_2)
        end
        if not A0_2 then
          if A0_2 then
            goto lbl_141
          end
          L16_2 = Config
          L16_2 = L16_2.DontPayRewardWithoutVehicle
          if false ~= L16_2 then
            goto lbl_141
          end
        end
        L16_2 = CreateThread
        function L17_2()
          local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
          L1_3 = L14_2
          L0_3 = L8_2
          L1_3 = L0_3[L1_3]
          L0_3 = L10_2
          L0_3 = L0_3[L1_3]
          if not L0_3 then
            L1_3 = L14_2
            L0_3 = L8_2
            L1_3 = L0_3[L1_3]
            L0_3 = L10_2
            L0_3[L1_3] = true
            L0_3 = Pay
            L2_3 = L14_2
            L1_3 = L8_2
            L1_3 = L1_3[L2_3]
            L2_3 = L15_2
            L3_3 = L7_2.gasProgress
            L4_3 = L7_2.questProgress
            L5_3 = L8_2
            L5_3 = #L5_3
            L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
            L0_3 = Notify
            L2_3 = L14_2
            L1_3 = L8_2
            L1_3 = L1_3[L2_3]
            L2_3 = Config
            L2_3 = L2_3.Lang
            L2_3 = L2_3.reward
            L3_3 = L15_2
            L2_3 = L2_3 .. L3_3
            L0_3(L1_3, L2_3)
          end
        end
        L16_2(L17_2)
        ::lbl_141::
      end
      L11_2 = L7_2.clients
      L11_2 = #L11_2
      if 0 == L11_2 then
        L11_2 = L0_1
        L11_2[L6_2] = nil
        L11_2 = TriggerClientEvent
        L12_2 = "17mov_OilRig:clearMyLobby"
        L13_2 = L1_2
        L11_2(L12_2, L13_2)
      end
    end
  end
end
L7_1(L8_1, L9_1)
L7_1 = 0
L8_1 = 3000
L9_1 = {}
L10_1 = RegisterNetEvent
L11_1 = "17mov_OilRig:StartJob_sv"
L10_1(L11_1)
L10_1 = AddEventHandler
L11_1 = "17mov_OilRig:StartJob_sv"
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2
  L1_2 = source
  L2_2 = nil
  L3_2 = 0
  L4_2 = pairs
  L5_2 = L0_1
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L9_2.host
    if L10_2 == L1_2 then
      L2_2 = L9_2.clients
      L3_2 = L8_2
      break
    end
  end
  L4_2 = GetGameTimer
  L4_2 = L4_2()
  L5_2 = L7_1
  L5_2 = L4_2 - L5_2
  L6_2 = L8_1
  if L5_2 <= L6_2 then
    L5_2 = Notify
    L6_2 = L1_2
    L7_2 = Config
    L7_2 = L7_2.Lang
    L7_2 = L7_2.wait
    return L5_2(L6_2, L7_2)
  end
  L7_1 = L4_2
  L5_2 = Config
  L5_2 = L5_2.RequireJobAlsoForFriends
  if L5_2 then
    L5_2 = Config
    L5_2 = L5_2.RequiredJob
    if "none" ~= L5_2 and nil ~= L2_2 then
      L5_2 = 1
      L6_2 = #L2_2
      L7_2 = 1
      for L8_2 = L5_2, L6_2, L7_2 do
        L9_2 = GetPlayerJob
        L10_2 = L2_2[L8_2]
        L9_2 = L9_2(L10_2)
        L10_2 = Config
        L10_2 = L10_2.RequiredJob
        if L9_2 ~= L10_2 then
          L9_2 = Notify
          L10_2 = L1_2
          L11_2 = Config
          L11_2 = L11_2.Lang
          L11_2 = L11_2.notEverybodyHasRequiredJob
          return L9_2(L10_2, L11_2)
        end
      end
    end
  end
  L5_2 = IsHaveRequiredItem
  L6_2 = L1_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = Notify
    L6_2 = L1_2
    L7_2 = Config
    L7_2 = L7_2.Lang
    L7_2 = L7_2.dontHaveReqItem
    return L5_2(L6_2, L7_2)
  end
  L5_2 = Config
  L5_2 = L5_2.RequireItemFromWholeTeam
  if L5_2 and nil ~= L2_2 then
    L5_2 = 1
    L6_2 = #L2_2
    L7_2 = 1
    for L8_2 = L5_2, L6_2, L7_2 do
      L9_2 = IsHaveRequiredItem
      L10_2 = L2_2[L8_2]
      L9_2 = L9_2(L10_2)
      if not L9_2 then
        L9_2 = Notify
        L10_2 = L1_2
        L11_2 = Config
        L11_2 = L11_2.Lang
        L11_2 = L11_2.dontHaveReqItem
        return L9_2(L10_2, L11_2)
      end
    end
  end
  L5_2 = {}
  L6_2 = 1
  L7_2 = Config
  L7_2 = L7_2.RigsLocations
  L7_2 = #L7_2
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = pairs
    L11_2 = Config
    L11_2 = L11_2.RigsLocations
    L11_2 = L11_2[L9_2]
    L11_2 = L11_2.BoatParking
    L11_2 = L11_2.BusyParkings
    L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
    for L14_2, L15_2 in L10_2, L11_2, L12_2, L13_2 do
      if not L15_2 then
        L16_2 = table
        L16_2 = L16_2.insert
        L17_2 = L5_2
        L18_2 = {}
        L18_2.Rig = L9_2
        L18_2.ParkingIndex = L14_2
        L16_2(L17_2, L18_2)
      end
    end
  end
  L6_2 = nil
  L7_2 = #L5_2
  if L7_2 > 0 then
    L7_2 = math
    L7_2 = L7_2.random
    L8_2 = #L5_2
    L7_2 = L7_2(L8_2)
    L6_2 = L5_2[L7_2]
    L8_2 = Config
    L8_2 = L8_2.RigsLocations
    L9_2 = L6_2.Rig
    L8_2 = L8_2[L9_2]
    L8_2 = L8_2.BoatParking
    L8_2 = L8_2.BusyParkings
    L9_2 = L6_2.ParkingIndex
    L8_2[L9_2] = true
  end
  if L6_2 then
    L7_2 = L6_2.Rig
    L8_2 = L6_2.ParkingIndex
    ParkingIndex = L8_2
    Rig = L7_2
  else
    L7_2 = Notify
    L8_2 = L1_2
    L9_2 = Config
    L9_2 = L9_2.Lang
    L9_2 = L9_2.noRig
    return L7_2(L8_2, L9_2)
  end
  L7_2 = Config
  L7_2 = L7_2.JobCooldown
  if L7_2 > 0 then
    L7_2 = CooldownsTime
    if not L7_2 then
      L7_2 = {}
    end
    CooldownsTime = L7_2
    L7_2 = os
    L7_2 = L7_2.time
    L7_2 = L7_2()
    L8_2 = GetPlayerIdentifierByType
    L9_2 = L1_2
    L10_2 = "license"
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = L9_1
    L9_2 = L9_2[L8_2]
    if L9_2 then
      L9_2 = CooldownsTime
      L9_2 = L9_2[L8_2]
      L9_2 = L7_2 - L9_2
      L10_2 = Config
      L10_2 = L10_2.JobCooldown
      if L9_2 >= L10_2 then
        L10_2 = L9_1
        L10_2[L8_2] = nil
        L10_2 = CooldownsTime
        L10_2[L8_2] = nil
      else
        L10_2 = Config
        L10_2 = L10_2.JobCooldown
        L10_2 = L10_2 - L9_2
        L11_2 = math
        L11_2 = L11_2.floor
        L12_2 = L10_2 / 3600
        L11_2 = L11_2(L12_2)
        L12_2 = math
        L12_2 = L12_2.floor
        L13_2 = L10_2 % 3600
        L13_2 = L13_2 / 60
        L12_2 = L12_2(L13_2)
        L13_2 = L10_2 % 60
        L14_2 = ""
        if L11_2 > 0 then
          L15_2 = L14_2
          L16_2 = L11_2
          L17_2 = Config
          L17_2 = L17_2.Lang
          L17_2 = L17_2.hours
          L18_2 = " "
          L15_2 = L15_2 .. L16_2 .. L17_2 .. L18_2
          L14_2 = L15_2
        end
        if L12_2 > 0 then
          L15_2 = L14_2
          L16_2 = L12_2
          L17_2 = Config
          L17_2 = L17_2.Lang
          L17_2 = L17_2.minutes
          L18_2 = " "
          L15_2 = L15_2 .. L16_2 .. L17_2 .. L18_2
          L14_2 = L15_2
        end
        L15_2 = L14_2
        L16_2 = L13_2
        L17_2 = Config
        L17_2 = L17_2.Lang
        L17_2 = L17_2.seconds
        L15_2 = L15_2 .. L16_2 .. L17_2
        L14_2 = L15_2
        L15_2 = Notify
        L16_2 = L1_2
        L17_2 = string
        L17_2 = L17_2.format
        L18_2 = Config
        L18_2 = L18_2.Lang
        L18_2 = L18_2.someoneIsOnCooldown
        L19_2 = GetPlayerIdentity
        L20_2 = L1_2
        L19_2 = L19_2(L20_2)
        L20_2 = L14_2
        L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L17_2(L18_2, L19_2, L20_2)
        return L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
      end
    end
    if nil ~= L2_2 then
      L9_2 = 1
      L10_2 = #L2_2
      L11_2 = 1
      for L12_2 = L9_2, L10_2, L11_2 do
        L13_2 = GetPlayerIdentifierByType
        L14_2 = L2_2[L12_2]
        L15_2 = "license"
        L13_2 = L13_2(L14_2, L15_2)
        L14_2 = L9_1
        L14_2 = L14_2[L13_2]
        if L14_2 then
          L14_2 = CooldownsTime
          L14_2 = L14_2[L13_2]
          L14_2 = L7_2 - L14_2
          L15_2 = Config
          L15_2 = L15_2.JobCooldown
          if L14_2 >= L15_2 then
            L15_2 = L9_1
            L15_2[L13_2] = nil
            L15_2 = CooldownsTime
            L15_2[L13_2] = nil
          else
            L15_2 = Config
            L15_2 = L15_2.JobCooldown
            L15_2 = L15_2 - L14_2
            L16_2 = math
            L16_2 = L16_2.floor
            L17_2 = L15_2 / 3600
            L16_2 = L16_2(L17_2)
            L17_2 = math
            L17_2 = L17_2.floor
            L18_2 = L15_2 % 3600
            L18_2 = L18_2 / 60
            L17_2 = L17_2(L18_2)
            L18_2 = L15_2 % 60
            L19_2 = ""
            if L16_2 > 0 then
              L20_2 = L19_2
              L21_2 = L16_2
              L22_2 = Config
              L22_2 = L22_2.Lang
              L22_2 = L22_2.hours
              L23_2 = " "
              L20_2 = L20_2 .. L21_2 .. L22_2 .. L23_2
              L19_2 = L20_2
            end
            if L17_2 > 0 then
              L20_2 = L19_2
              L21_2 = L17_2
              L22_2 = Config
              L22_2 = L22_2.Lang
              L22_2 = L22_2.minutes
              L23_2 = " "
              L20_2 = L20_2 .. L21_2 .. L22_2 .. L23_2
              L19_2 = L20_2
            end
            L20_2 = L19_2
            L21_2 = L18_2
            L22_2 = Config
            L22_2 = L22_2.Lang
            L22_2 = L22_2.seconds
            L20_2 = L20_2 .. L21_2 .. L22_2
            L19_2 = L20_2
            L20_2 = Notify
            L21_2 = L1_2
            L22_2 = string
            L22_2 = L22_2.format
            L23_2 = Config
            L23_2 = L23_2.Lang
            L23_2 = L23_2.someoneIsOnCooldown
            L24_2 = GetPlayerIdentity
            L25_2 = L2_2[L12_2]
            L24_2 = L24_2(L25_2)
            L25_2 = L19_2
            L22_2, L23_2, L24_2, L25_2 = L22_2(L23_2, L24_2, L25_2)
            return L20_2(L21_2, L22_2, L23_2, L24_2, L25_2)
          end
        end
      end
    end
    L9_2 = L9_1
    L9_2[L8_2] = true
    L9_2 = CooldownsTime
    L9_2[L8_2] = L7_2
    if nil ~= L2_2 then
      L9_2 = 1
      L10_2 = #L2_2
      L11_2 = 1
      for L12_2 = L9_2, L10_2, L11_2 do
        L13_2 = GetPlayerIdentifierByType
        L14_2 = L2_2[L12_2]
        L15_2 = "license"
        L13_2 = L13_2(L14_2, L15_2)
        L14_2 = L9_1
        L14_2[L13_2] = true
        L14_2 = CooldownsTime
        L14_2[L13_2] = L7_2
      end
    end
  end
  L7_2 = Config
  L7_2 = L7_2.RequireOneFriendMinimum
  if L7_2 then
    if nil ~= L2_2 then
      L7_2 = #L2_2
      if L7_2 > 0 then
        L7_2 = L0_1
        L7_2 = L7_2[L3_2]
        L7_2.working = true
        L7_2 = L0_1
        L7_2 = L7_2[L3_2]
        L7_2.cash = 0
        L7_2 = L0_1
        L7_2 = L7_2[L3_2]
        L8_2 = {}
        L7_2.WeldingDisabledLocations = L8_2
        L7_2 = L0_1
        L7_2 = L7_2[L3_2]
        L7_2.questProgress = 0
        L7_2 = L0_1
        L7_2 = L7_2[L3_2]
        L7_2.gasProgress = 0
        L7_2 = L0_1
        L7_2 = L7_2[L3_2]
        L7_2.drillBusy = false
        L7_2 = L0_1
        L7_2 = L7_2[L3_2]
        L8_2 = Rig
        L7_2.rig = L8_2
        L7_2 = L0_1
        L7_2 = L7_2[L3_2]
        L8_2 = ParkingIndex
        L7_2.parkingIndex = L8_2
        L7_2 = L0_1
        L7_2 = L7_2[L3_2]
        L7_2.containerUnloadTimes = 0
        L7_2 = L0_1
        L7_2 = L7_2[L3_2]
        L7_2.craneBusy = false
        L7_2 = Rig
        A0_2.Rig = L7_2
        L7_2 = ParkingIndex
        A0_2.parkingIndex = L7_2
        L7_2 = TriggerForAllMembers
        L8_2 = L1_2
        L9_2 = "17mov_OilRig:StartJob_cl"
        L10_2 = L1_2
        L11_2 = L0_1
        L11_2 = L11_2[L3_2]
        L11_2 = L11_2.clients
        L11_2 = #L11_2
        L11_2 = L11_2 + 1
        L12_2 = L0_1
        L12_2 = L12_2[L3_2]
        L12_2 = L12_2.clients
        L12_2 = L12_2[1]
        if not L12_2 then
          L12_2 = nil
        end
        L13_2 = L0_1
        L13_2 = L13_2[L3_2]
        L13_2 = L13_2.clients
        L13_2 = L13_2[2]
        if not L13_2 then
          L13_2 = nil
        end
        L14_2 = A0_2
        L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
        L7_2 = UpdateLobbyMembers
        L8_2 = L3_2
        L7_2(L8_2)
    end
    else
      L7_2 = Notify
      L8_2 = L1_2
      L9_2 = Config
      L9_2 = L9_2.Lang
      L9_2 = L9_2.RequireOneFriend
      L7_2(L8_2, L9_2)
    end
  else
    if nil == L2_2 then
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = L0_1
      L9_2 = {}
      L9_2.host = L1_2
      L10_2 = {}
      L9_2.clients = L10_2
      L7_2(L8_2, L9_2)
    end
    L7_2 = pairs
    L8_2 = L0_1
    L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
    for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
      L13_2 = L12_2.host
      if L13_2 == L1_2 then
        L3_2 = L11_2
      end
    end
    L7_2 = L0_1
    L7_2 = L7_2[L3_2]
    L7_2.working = true
    L7_2 = L0_1
    L7_2 = L7_2[L3_2]
    L7_2.cash = 0
    L7_2 = L0_1
    L7_2 = L7_2[L3_2]
    L8_2 = {}
    L7_2.WeldingDisabledLocations = L8_2
    L7_2 = L0_1
    L7_2 = L7_2[L3_2]
    L7_2.questProgress = 0
    L7_2 = L0_1
    L7_2 = L7_2[L3_2]
    L7_2.gasProgress = 0
    L7_2 = L0_1
    L7_2 = L7_2[L3_2]
    L7_2.drillBusy = false
    L7_2 = L0_1
    L7_2 = L7_2[L3_2]
    L8_2 = Rig
    L7_2.rig = L8_2
    L7_2 = L0_1
    L7_2 = L7_2[L3_2]
    L8_2 = ParkingIndex
    L7_2.parkingIndex = L8_2
    L7_2 = L0_1
    L7_2 = L7_2[L3_2]
    L7_2.containerUnloadTimes = 0
    L7_2 = L0_1
    L7_2 = L7_2[L3_2]
    L7_2.craneBusy = false
    L7_2 = Rig
    A0_2.Rig = L7_2
    L7_2 = ParkingIndex
    A0_2.parkingIndex = L7_2
    L7_2 = TriggerForAllMembers
    L8_2 = L1_2
    L9_2 = "17mov_OilRig:StartJob_cl"
    L10_2 = L1_2
    L11_2 = L0_1
    L11_2 = L11_2[L3_2]
    L11_2 = L11_2.clients
    L11_2 = #L11_2
    L11_2 = L11_2 + 1
    L12_2 = L0_1
    L12_2 = L12_2[L3_2]
    L12_2 = L12_2.clients
    L12_2 = L12_2[1]
    if not L12_2 then
      L12_2 = nil
    end
    L13_2 = L0_1
    L13_2 = L13_2[L3_2]
    L13_2 = L13_2.clients
    L13_2 = L13_2[2]
    if not L13_2 then
      L13_2 = nil
    end
    L14_2 = A0_2
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L7_2 = UpdateLobbyMembers
    L8_2 = L3_2
    L7_2(L8_2)
  end
end
L10_1(L11_1, L12_1)
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = {}
  L2_2 = {}
  L3_2 = 0
  L4_2 = pairs
  L5_2 = L0_1
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L9_2.host
    if A0_2 == L10_2 then
      L3_2 = L8_2
      L2_2 = L9_2.clients
    end
  end
  L4_2 = 1
  L5_2 = #L2_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L1_2
    L10_2 = {}
    L11_2 = L2_2[L7_2]
    L10_2.id = L11_2
    L11_2 = GetPlayerIdentity
    L12_2 = L2_2[L7_2]
    L11_2 = L11_2(L12_2)
    L10_2.name = L11_2
    L10_2.isHost = false
    L11_2 = L0_1
    L11_2 = L11_2[L3_2]
    L11_2 = L11_2.rewardsOptions
    L12_2 = L2_2[L7_2]
    L11_2 = L11_2[L12_2]
    L10_2.rewardPercent = L11_2
    L8_2(L9_2, L10_2)
  end
  L4_2 = #L2_2
  if 0 == L4_2 then
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = L1_2
    L6_2 = {}
    L6_2.id = A0_2
    L7_2 = GetPlayerIdentity
    L8_2 = A0_2
    L7_2 = L7_2(L8_2)
    L6_2.name = L7_2
    L6_2.isHost = true
    L7_2 = L0_1
    L7_2 = L7_2[L3_2]
    L7_2 = L7_2.rewardsOptions
    L7_2 = L7_2[A0_2]
    L6_2.rewardPercent = L7_2
    L4_2(L5_2, L6_2)
  else
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = L1_2
    L6_2 = {}
    L6_2.id = A0_2
    L7_2 = GetPlayerIdentity
    L8_2 = A0_2
    L7_2 = L7_2(L8_2)
    L6_2.name = L7_2
    L6_2.isHost = true
    L7_2 = L0_1
    L7_2 = L7_2[L3_2]
    L7_2 = L7_2.rewardsOptions
    L7_2 = L7_2[A0_2]
    L6_2.rewardPercent = L7_2
    L4_2(L5_2, L6_2)
  end
  return L1_2
end
GetAllPartyMugs = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = 0
  L2_2 = pairs
  L3_2 = L0_1
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.host
    if L8_2 == A0_2 then
      L1_2 = L6_2
      break
    end
    L8_2 = 1
    L9_2 = L7_2.clients
    L9_2 = #L9_2
    L10_2 = 1
    for L11_2 = L8_2, L9_2, L10_2 do
      L12_2 = L7_2.clients
      L12_2 = L12_2[L11_2]
      if L12_2 == A0_2 then
        L1_2 = L6_2
        break
      end
    end
  end
  return L1_2
end
GetLobbyIndex = L10_1
function L10_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L8_2 = {}
  L9_2 = pairs
  L10_2 = L0_1
  L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
  for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
    L15_2 = L14_2.host
    if A0_2 == L15_2 then
      L8_2 = L14_2.clients
    end
  end
  L9_2 = 1
  L10_2 = #L8_2
  L10_2 = L10_2 + 1
  L11_2 = 1
  for L12_2 = L9_2, L10_2, L11_2 do
    L13_2 = L8_2[L12_2]
    L14_2 = #L8_2
    if L12_2 > L14_2 then
      L13_2 = A0_2
    end
    if nil ~= L13_2 then
      L14_2 = type
      L15_2 = L13_2
      L14_2 = L14_2(L15_2)
      if "number" == L14_2 then
        if "17mov_OilRig:RefreshMugs" == A1_2 then
          L14_2 = TriggerClientEvent
          L15_2 = A1_2
          L16_2 = L13_2
          L17_2 = A2_2
          L18_2 = L13_2
          L19_2 = A3_2
          L20_2 = A4_2
          L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
        elseif "17mov_OilRig:StartJob_cl" == A1_2 then
          L14_2 = TriggerClientEvent
          L15_2 = A1_2
          L16_2 = L13_2
          L17_2 = A2_2
          L18_2 = L13_2
          L19_2 = A3_2
          L20_2 = A4_2
          L21_2 = A5_2
          L22_2 = A6_2
          L23_2 = L12_2
          L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
        elseif "17mov_lumberjackJob:sendMixer_cl" == A1_2 then
          L14_2 = TriggerClientEvent
          L15_2 = A1_2
          L16_2 = L13_2
          L17_2 = A2_2
          L18_2 = L13_2
          L19_2 = A0_2
          L14_2(L15_2, L16_2, L17_2, L18_2, L19_2)
        else
          L14_2 = TriggerClientEvent
          L15_2 = A1_2
          L16_2 = L13_2
          L17_2 = A2_2
          L18_2 = A3_2
          L19_2 = A4_2
          L20_2 = A5_2
          L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
        end
      end
    end
  end
end
TriggerForAllMembers = L10_1
L10_1 = RegisterNetEvent
L11_1 = "17mov_OilRig:SendVehicleNetId"
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = GetLobbyIndex
  L2_2 = source
  L1_2 = L1_2(L2_2)
  if 0 == L1_2 then
    L2_2 = print
    L3_2 = "CANT FIND LOBBY IN 'SendVehicleNetId'"
    L2_2(L3_2)
    return
  end
  L2_2 = L0_1
  L2_2 = L2_2[L1_2]
  L2_2 = L2_2.host
  L3_2 = pairs
  L4_2 = L0_1
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.host
    if L9_2 == L2_2 then
      L8_2.vehNetId = A0_2
      break
    end
  end
  L3_2 = TriggerForAllMembers
  L4_2 = L2_2
  L5_2 = "17mov_OilRig:SendJobVehicle"
  L6_2 = A0_2
  L3_2(L4_2, L5_2, L6_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNetEvent
L11_1 = "17mov_OilRig:SendBoatNetId"
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = GetLobbyIndex
  L2_2 = source
  L1_2 = L1_2(L2_2)
  if 0 == L1_2 then
    L2_2 = print
    L3_2 = "CANT FIND LOBBY IN 'SendBoatNetId'"
    L2_2(L3_2)
    return
  end
  L2_2 = L0_1
  L2_2 = L2_2[L1_2]
  L2_2 = L2_2.host
  L3_2 = pairs
  L4_2 = L0_1
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.host
    if L9_2 == L2_2 then
      L8_2.boatNetId = A0_2
      break
    end
  end
  L3_2 = TriggerForAllMembers
  L4_2 = L2_2
  L5_2 = "17mov_OilRig:SendBoatNetId"
  L6_2 = A0_2
  L3_2(L4_2, L5_2, L6_2)
end
L10_1(L11_1, L12_1)
L10_1 = AddEventHandler
L11_1 = "playerDropped"
function L12_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = source
  L1_2 = "waiting"
  L2_2 = pairs
  L3_2 = L0_1
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.host
    if L8_2 == L0_2 then
      L8_2 = 1
      L9_2 = L7_2.clients
      L9_2 = #L9_2
      L10_2 = 1
      for L11_2 = L8_2, L9_2, L10_2 do
        L12_2 = L7_2.clients
        L12_2 = L12_2[L11_2]
        if nil ~= L12_2 then
          L12_2 = GetPlayerPing
          L13_2 = L7_2.clients
          L13_2 = L13_2[L11_2]
          L12_2 = L12_2(L13_2)
          if 0 ~= L12_2 then
            L12_2 = L7_2.clients
            L12_2 = L12_2[L11_2]
            L7_2.host = L12_2
            L12_2 = Notify
            L13_2 = L7_2.clients
            L13_2 = L13_2[L11_2]
            L14_2 = Config
            L14_2 = L14_2.Lang
            L14_2 = L14_2.newBoss
            L12_2(L13_2, L14_2)
            L12_2 = L7_2.clients
            L12_2[L11_2] = nil
            break
          end
        end
      end
      L1_2 = L6_2
      break
    end
    L8_2 = 1
    L9_2 = L7_2.clients
    L9_2 = #L9_2
    L10_2 = 1
    for L11_2 = L8_2, L9_2, L10_2 do
      L12_2 = L7_2.clients
      L12_2 = L12_2[L11_2]
      if L12_2 == L0_2 then
        L12_2 = L7_2.clients
        L12_2[L11_2] = nil
        L1_2 = L6_2
        break
      end
    end
  end
  if "waiting" ~= L1_2 then
    L2_2 = L0_1
    L2_2 = L2_2[L1_2]
    if nil ~= L2_2 then
      goto lbl_65
    end
  end
  do return end
  ::lbl_65::
  L2_2 = L0_1
  L2_2 = L2_2[L1_2]
  L2_2 = L2_2.host
  L3_2 = L0_1
  L3_2 = L3_2[L1_2]
  L3_2 = L3_2.working
  if L3_2 then
    L3_2 = L0_1
    L3_2 = L3_2[L1_2]
    L3_2 = L3_2.clients
    L3_2 = #L3_2
    if 0 == L3_2 then
      L3_2 = TriggerClientEvent
      L4_2 = "17mov_OilRig:clearMyLobby"
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
    else
      L3_2 = TriggerForAllMembers
      L4_2 = L2_2
      L5_2 = "17mov_OilRig:RefreshMugs"
      L6_2 = GetAllPartyMugs
      L7_2 = L2_2
      L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L6_2(L7_2)
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
      L3_2 = Config
      L3_2 = L3_2.useModernUI
      if L3_2 then
        L3_2 = RecalculateRewards
        L4_2 = L2_2
        L3_2(L4_2)
      end
    end
    L3_2 = Citizen
    L3_2 = L3_2.Wait
    L4_2 = 5000
    L3_2(L4_2)
    L3_2 = {}
    L4_2 = GetPlayerPing
    L5_2 = L0_1
    L5_2 = L5_2[L1_2]
    L5_2 = L5_2.host
    L4_2 = L4_2(L5_2)
    L5_2 = L0_1
    L5_2 = L5_2[L1_2]
    L5_2 = L5_2.host
    if nil ~= L5_2 and 0 ~= L4_2 and "" ~= L4_2 and nil ~= L4_2 then
      L5_2 = table
      L5_2 = L5_2.insert
      L6_2 = L3_2
      L7_2 = L0_1
      L7_2 = L7_2[L1_2]
      L7_2 = L7_2.host
      L5_2(L6_2, L7_2)
    end
    L5_2 = 1
    L6_2 = L0_1
    L6_2 = L6_2[L1_2]
    L6_2 = L6_2.clients
    L6_2 = #L6_2
    L7_2 = 1
    for L8_2 = L5_2, L6_2, L7_2 do
      L9_2 = GetPlayerPing
      L10_2 = L0_1
      L10_2 = L10_2[L1_2]
      L10_2 = L10_2.clients
      L10_2 = L10_2[L8_2]
      L9_2 = L9_2(L10_2)
      L10_2 = L0_1
      L10_2 = L10_2[L1_2]
      L10_2 = L10_2.clients
      L10_2 = L10_2[L8_2]
      if nil ~= L10_2 and 0 ~= L9_2 and "" ~= L9_2 and nil ~= L9_2 then
        L10_2 = table
        L10_2 = L10_2.insert
        L11_2 = L3_2
        L12_2 = L0_1
        L12_2 = L12_2[L1_2]
        L12_2 = L12_2.clients
        L12_2 = L12_2[L8_2]
        L10_2(L11_2, L12_2)
      end
    end
    L5_2 = #L3_2
    if L5_2 < 1 then
      L5_2 = Config
      L5_2 = L5_2.RigsLocations
      L6_2 = L0_1
      L6_2 = L6_2[L1_2]
      L6_2 = L6_2.rig
      L5_2 = L5_2[L6_2]
      L5_2 = L5_2.BoatParking
      L5_2 = L5_2.BusyParkings
      L6_2 = L0_1
      L6_2 = L6_2[L1_2]
      L6_2 = L6_2.parkingIndex
      L5_2[L6_2] = false
    end
    L5_2 = UpdateLobbyMembers
    L6_2 = L1_2
    L5_2(L6_2)
  else
    L3_2 = L0_1
    L3_2 = L3_2[L1_2]
    L3_2 = L3_2.clients
    L3_2 = #L3_2
    if 0 == L3_2 then
      L3_2 = TriggerClientEvent
      L4_2 = "17mov_OilRig:clearMyLobby"
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
      L3_2 = L0_1
      L3_2[L1_2] = nil
    end
  end
end
L10_1(L11_1, L12_1)
L10_1 = {}
L11_1 = {}
L12_1 = {}
L11_1.Statements = L12_1
L11_1.RequestId = 0
L10_1.Tcp = L11_1
Core = L10_1
L10_1 = Core
function L11_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = Core
  L2_2 = L2_2.Tcp
  L3_2 = Core
  L3_2 = L3_2.Tcp
  L3_2 = L3_2.RequestId
  L3_2 = L3_2 + 1
  L2_2.RequestId = L3_2
  L2_2 = Core
  L2_2 = L2_2.Tcp
  L2_2 = L2_2.RequestId
  L3_2 = Core
  L3_2 = L3_2.Tcp
  L3_2 = L3_2.Statements
  L3_2[L2_2] = false
  while true do
    L3_2 = Core
    L3_2 = L3_2.Tcp
    L3_2 = L3_2.Statements
    L3_2 = L3_2[L2_2]
    if L3_2 then
      break
    end
    L3_2 = TriggerClientEvent
    L4_2 = "17movement_Oilrig:triggerClientEventTcp"
    L5_2 = A1_2
    L6_2 = A0_2
    L7_2 = Core
    L7_2 = L7_2.Tcp
    L7_2 = L7_2.RequestId
    L8_2 = ...
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    L3_2 = Wait
    L4_2 = 500
    L3_2(L4_2)
  end
  L3_2 = Core
  L3_2 = L3_2.Tcp
  L3_2 = L3_2.Statements
  L3_2[L2_2] = nil
end
L10_1.TriggerClientEventTcp = L11_1
L10_1 = RegisterNetEvent
L11_1 = "17movement_Oilrig:confirmClientEventTcp"
function L12_1(A0_2)
  local L1_2
  L1_2 = Core
  L1_2 = L1_2.Tcp
  L1_2 = L1_2.Statements
  L1_2[A0_2] = true
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNetEvent
L11_1 = "17movement_Oilrig:enableControl"
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = GetLobbyIndex
  L2_2 = source
  L1_2 = L1_2(L2_2)
  if 0 == L1_2 then
    L2_2 = print
    L3_2 = "CANT FIND LOBBY IN 'enableControl'"
    L2_2(L3_2)
    return
  end
  L2_2 = L0_1
  L2_2 = L2_2[L1_2]
  L2_2 = L2_2.host
  L3_2 = TriggerForAllMembers
  L4_2 = L2_2
  L5_2 = "17mov_OilRig:craneEnableControl"
  L6_2 = A0_2
  L3_2(L4_2, L5_2, L6_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNetEvent
L11_1 = "17movement_Oilrig:disableControl"
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = GetLobbyIndex
  L4_2 = source
  L3_2 = L3_2(L4_2)
  L4_2 = {}
  L5_2 = 1
  L6_2 = L0_1
  L6_2 = L6_2[L3_2]
  L6_2 = L6_2.clients
  L6_2 = #L6_2
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L4_2
    L11_2 = L0_1
    L11_2 = L11_2[L3_2]
    L11_2 = L11_2.clients
    L11_2 = L11_2[L8_2]
    L9_2(L10_2, L11_2)
  end
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = L4_2
  L7_2 = L0_1
  L7_2 = L7_2[L3_2]
  L7_2 = L7_2.host
  L5_2(L6_2, L7_2)
  L5_2 = 1
  L6_2 = #L4_2
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = ignore
    if L9_2 then
      L9_2 = ignore
      L10_2 = L4_2[L8_2]
      if L9_2 == L10_2 then
        goto lbl_47
      end
    end
    L9_2 = TriggerClientEvent
    L10_2 = "17movement:craneDisableControl"
    L11_2 = L4_2[L8_2]
    L12_2 = A0_2
    L13_2 = A1_2
    L14_2 = A2_2
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
    ::lbl_47::
  end
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNetEvent
L11_1 = "17mov_OilRig:DeleteHandler"
function L12_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = GetLobbyIndex
  L1_2 = source
  L0_2 = L0_2(L1_2)
  if 0 == L0_2 then
    L1_2 = print
    L2_2 = "CANT FIND LOBBY IN 'DeleteHandler'"
    L1_2(L2_2)
    return
  end
  L1_2 = TriggerForAllMembers
  L2_2 = L0_1
  L2_2 = L2_2[L0_2]
  L2_2 = L2_2.host
  L3_2 = "17mov_OilRig:DeleteHandler"
  L1_2(L2_2, L3_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNetEvent
L11_1 = "17mov_OilRig:AttachContainerToLifter"
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = GetLobbyIndex
  L2_2 = source
  L1_2 = L1_2(L2_2)
  if 0 == L1_2 then
    L2_2 = print
    L3_2 = "CANT FIND LOBBY IN 'AttachContainerToLifter'"
    L2_2(L3_2)
    return
  end
  L2_2 = TriggerForAllMembers
  L3_2 = L0_1
  L3_2 = L3_2[L1_2]
  L3_2 = L3_2.host
  L4_2 = "17mov_OilRig:AttachContainerToLifter"
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNetEvent
L11_1 = "17mov_OilRig:MyLocalContainerDeleted"
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = GetLobbyIndex
  L2_2 = source
  L1_2 = L1_2(L2_2)
  if 0 == L1_2 then
    L2_2 = print
    L3_2 = "CANT FIND LOBBY IN 'MyLocalContainerDeleted'"
    L2_2(L3_2)
    return
  end
  L2_2 = TriggerForAllMembers
  L3_2 = L0_1
  L3_2 = L3_2[L1_2]
  L3_2 = L3_2.host
  L4_2 = "17mov_OilRig:MyLocalContainerDeleted"
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNetEvent
L11_1 = "17mov_OilRig:GlobalContainerSpawned"
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = GetLobbyIndex
  L2_2 = source
  L1_2 = L1_2(L2_2)
  if 0 == L1_2 then
    L2_2 = print
    L3_2 = "CANT FIND LOBBY IN 'GlobalContainerSpawned'"
    L2_2(L3_2)
    return
  end
  L2_2 = TriggerForAllMembers
  L3_2 = L0_1
  L3_2 = L3_2[L1_2]
  L3_2 = L3_2.host
  L4_2 = "17mov_OilRig:GlobalContainerSpawned"
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNetEvent
L11_1 = "17mov_OilRig:TransformContainerToAttached"
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = GetLobbyIndex
  L2_2 = source
  L1_2 = L1_2(L2_2)
  if 0 == L1_2 then
    L2_2 = print
    L3_2 = "CANT FIND LOBBY IN 'TransformContainerToAttached'"
    L2_2(L3_2)
    return
  end
  L2_2 = TriggerForAllMembers
  L3_2 = L0_1
  L3_2 = L3_2[L1_2]
  L3_2 = L3_2.host
  L4_2 = "17mov_OilRig:TransformContainerToAttached"
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNetEvent
L11_1 = "17mov_OilRig:DeleteTemporaryContainer"
function L12_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = GetLobbyIndex
  L1_2 = source
  L0_2 = L0_2(L1_2)
  if 0 == L0_2 then
    L1_2 = print
    L2_2 = "CANT FIND LOBBY IN 'DeleteTemporaryContainer'"
    L1_2(L2_2)
    return
  end
  L1_2 = TriggerForAllMembers
  L2_2 = L0_1
  L2_2 = L2_2[L0_2]
  L2_2 = L2_2.host
  L3_2 = "17mov_OilRig:DeleteTemporaryContainer"
  L1_2(L2_2, L3_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNetEvent
L11_1 = "17mov_OilRig:craneDetachContainer"
function L12_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = GetLobbyIndex
  L1_2 = source
  L0_2 = L0_2(L1_2)
  if 0 == L0_2 then
    L1_2 = print
    L2_2 = "CANT FIND LOBBY IN 'craneDetachContainer'"
    L1_2(L2_2)
    return
  end
  L1_2 = L0_1
  L1_2 = L1_2[L0_2]
  L1_2 = L1_2.containerUnloadTimes
  if nil == L1_2 then
    L1_2 = L0_1
    L1_2 = L1_2[L0_2]
    L1_2.containerUnloadTimes = 0
  end
  L1_2 = L0_1
  L1_2 = L1_2[L0_2]
  L2_2 = L0_1
  L2_2 = L2_2[L0_2]
  L2_2 = L2_2.containerUnloadTimes
  L2_2 = L2_2 + 1
  L1_2.containerUnloadTimes = L2_2
  L1_2 = L0_1
  L1_2 = L1_2[L0_2]
  L1_2 = L1_2.containerUnloadTimes
  if L1_2 > 3 then
    L1_2 = print
    L2_2 = "RETURNING BECAUSE CONTAINER UNLOAD PROGRESS REACHED PROGRESS. THERE'S A POSSIBILITY THAT CHEATER IS TRYING TO EXECUTE EVENT"
    L1_2(L2_2)
    return
  end
  L1_2 = L0_1
  L1_2 = L1_2[L0_2]
  L2_2 = L0_1
  L2_2 = L2_2[L0_2]
  L2_2 = L2_2.questProgress
  L2_2 = L2_2 + 6.5
  L1_2.questProgress = L2_2
  L1_2 = L0_1
  L1_2 = L1_2[L0_2]
  L1_2 = L1_2.questProgress
  if L1_2 > 100 then
    L1_2 = L0_1
    L1_2 = L1_2[L0_2]
    L1_2.questProgress = 100
  end
  L1_2 = TriggerForAllMembers
  L2_2 = L0_1
  L2_2 = L2_2[L0_2]
  L2_2 = L2_2.host
  L3_2 = "17mov_OilRig:craneDetachContainer"
  L1_2(L2_2, L3_2)
  L1_2 = TriggerForAllMembers
  L2_2 = L0_1
  L2_2 = L2_2[L0_2]
  L2_2 = L2_2.host
  L3_2 = "17mov_OilRig:UpdateQuestProgress"
  L4_2 = L0_1
  L4_2 = L4_2[L0_2]
  L4_2 = L4_2.questProgress
  L1_2(L2_2, L3_2, L4_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNetEvent
L11_1 = "17mov_OilRig:OpenThisContainer"
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = GetLobbyIndex
  L2_2 = source
  L1_2 = L1_2(L2_2)
  if 0 == L1_2 then
    L2_2 = print
    L3_2 = "CANT FIND LOBBY IN 'OpenThisContainer'"
    L2_2(L3_2)
    return
  end
  L2_2 = TriggerForAllMembers
  L3_2 = L0_1
  L3_2 = L3_2[L1_2]
  L3_2 = L3_2.host
  L4_2 = "17mov_OilRig:OpenThisContainer"
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNetEvent
L11_1 = "17mov_OilRig:ParkBoat"
function L12_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = GetLobbyIndex
  L1_2 = source
  L0_2 = L0_2(L1_2)
  if 0 == L0_2 then
    L1_2 = print
    L2_2 = "CANT FIND LOBBY IN 'ParkBoat'"
    L1_2(L2_2)
    return
  end
  L1_2 = TriggerForAllMembers
  L2_2 = L0_1
  L2_2 = L2_2[L0_2]
  L2_2 = L2_2.host
  L3_2 = "17mov_OilRig:ParkBoat"
  L1_2(L2_2, L3_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNetEvent
L11_1 = "17mov_OilRig:DeleteThisProp"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = GetLobbyIndex
  L3_2 = source
  L2_2 = L2_2(L3_2)
  if 0 == L2_2 then
    L3_2 = print
    L4_2 = "CANT FIND LOBBY IN 'DeleteThisProp'"
    L3_2(L4_2)
    return
  end
  L3_2 = TriggerForAllMembers
  L4_2 = L0_1
  L4_2 = L4_2[L2_2]
  L4_2 = L4_2.host
  L5_2 = "17mov_OilRig:DeleteThisProp"
  L6_2 = A0_2
  L7_2 = A1_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNetEvent
L11_1 = "17mov_OilRig:SpawnDestinationObject"
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = GetPlayerPed
  L2_2 = source
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2.destinationPoint
  L3_2 = GetEntityCoords
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2 - L2_2
  L3_2 = #L3_2
  if L3_2 > 10.0 then
    return
  end
  L4_2 = GetLobbyIndex
  L5_2 = source
  L4_2 = L4_2(L5_2)
  L5_2 = L0_1
  L5_2 = L5_2[L4_2]
  L6_2 = L0_1
  L6_2 = L6_2[L4_2]
  L6_2 = L6_2.questProgress
  L7_2 = A0_2.reward
  if not L7_2 then
    L7_2 = 0.0
  end
  L6_2 = L6_2 + L7_2
  L5_2.questProgress = L6_2
  L5_2 = L0_1
  L5_2 = L5_2[L4_2]
  L5_2 = L5_2.questProgress
  if L5_2 > 100 then
    L5_2 = L0_1
    L5_2 = L5_2[L4_2]
    L5_2.questProgress = 100
  end
  L5_2 = TriggerForAllMembers
  L6_2 = L0_1
  L6_2 = L6_2[L4_2]
  L6_2 = L6_2.host
  L7_2 = "17mov_OilRig:UpdateQuestProgress"
  L8_2 = L0_1
  L8_2 = L8_2[L4_2]
  L8_2 = L8_2.questProgress
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = TriggerForAllMembers
  L6_2 = L0_1
  L6_2 = L6_2[L4_2]
  L6_2 = L6_2.host
  L7_2 = "17mov_OilRig:SpawnDestinationObject"
  L8_2 = A0_2
  L5_2(L6_2, L7_2, L8_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNetEvent
L11_1 = "17mov_OilRig:DisableThisLocation"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = GetLobbyIndex
  L3_2 = source
  L2_2 = L2_2(L3_2)
  L3_2 = L0_1
  L3_2 = L3_2[L2_2]
  L3_2 = L3_2.WeldingDisabledLocations
  L3_2 = L3_2[A0_2]
  if nil == L3_2 then
    L3_2 = L0_1
    L3_2 = L3_2[L2_2]
    L3_2 = L3_2.WeldingDisabledLocations
    L4_2 = {}
    L3_2[A0_2] = L4_2
  end
  L3_2 = L0_1
  L3_2 = L3_2[L2_2]
  L3_2 = L3_2.WeldingDisabledLocations
  L3_2 = L3_2[A0_2]
  L3_2[A1_2] = true
  L3_2 = TriggerForAllMembers
  L4_2 = L0_1
  L4_2 = L4_2[L2_2]
  L4_2 = L4_2.host
  L5_2 = "17mov_OilRig:DisableThisLocation"
  L6_2 = A0_2
  L7_2 = A1_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNetEvent
L11_1 = "17mov_OilRig:EnableThisLocation"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = GetLobbyIndex
  L3_2 = source
  L2_2 = L2_2(L3_2)
  L3_2 = L0_1
  L3_2 = L3_2[L2_2]
  L3_2 = L3_2.WeldingDisabledLocations
  L3_2 = L3_2[A0_2]
  L3_2 = L3_2[A1_2]
  if nil ~= L3_2 then
    L3_2 = L0_1
    L3_2 = L3_2[L2_2]
    L3_2 = L3_2.WeldingDisabledLocations
    L3_2 = L3_2[A0_2]
    L3_2[A1_2] = nil
  end
  L3_2 = TriggerForAllMembers
  L4_2 = L0_1
  L4_2 = L4_2[L2_2]
  L4_2 = L4_2.host
  L5_2 = "17mov_OilRig:EnableThisLocation"
  L6_2 = A0_2
  L7_2 = A1_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNetEvent
L11_1 = "17mov_OilRig:WeldingWin"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = GetLobbyIndex
  L3_2 = source
  L2_2 = L2_2(L3_2)
  L3_2 = L0_1
  L3_2 = L3_2[L2_2]
  L3_2 = L3_2.WeldingDisabledLocations
  L3_2 = L3_2[A0_2]
  if nil ~= L3_2 then
    L3_2 = L0_1
    L3_2 = L3_2[L2_2]
    L3_2 = L3_2.WeldingDisabledLocations
    L3_2 = L3_2[A0_2]
    L3_2 = L3_2[A1_2]
    if nil ~= L3_2 then
      goto lbl_18
    end
  end
  do return end
  ::lbl_18::
  L3_2 = L0_1
  L3_2 = L3_2[L2_2]
  L3_2 = L3_2.WeldingDisabledLocations
  L3_2 = L3_2[A0_2]
  L3_2[A1_2] = nil
  L3_2 = L0_1
  L3_2 = L3_2[L2_2]
  L4_2 = L0_1
  L4_2 = L4_2[L2_2]
  L4_2 = L4_2.questProgress
  L5_2 = Config
  L5_2 = L5_2.RigsLocations
  L5_2 = L5_2[A0_2]
  L5_2 = L5_2.Welding
  L5_2 = L5_2.percentReward
  L4_2 = L4_2 + L5_2
  L3_2.questProgress = L4_2
  L3_2 = L0_1
  L3_2 = L3_2[L2_2]
  L3_2 = L3_2.questProgress
  if L3_2 > 100 then
    L3_2 = L0_1
    L3_2 = L3_2[L2_2]
    L3_2.questProgress = 100
  end
  L3_2 = TriggerForAllMembers
  L4_2 = L0_1
  L4_2 = L4_2[L2_2]
  L4_2 = L4_2.host
  L5_2 = "17mov_OilRig:UpdateQuestProgress"
  L6_2 = L0_1
  L6_2 = L6_2[L2_2]
  L6_2 = L6_2.questProgress
  L7_2 = "welding"
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNetEvent
L11_1 = "17mov_OilRig:PipesNowFree"
function L12_1()
  local L0_2, L1_2, L2_2
  L0_2 = GetLobbyIndex
  L1_2 = source
  L0_2 = L0_2(L1_2)
  if 0 == L0_2 then
    L1_2 = print
    L2_2 = "CANT FIND LOBBY IN 'PipesNowFree'"
    L1_2(L2_2)
    return
  end
  L1_2 = L0_1
  L1_2 = L1_2[L0_2]
  L1_2.drillBusy = false
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNetEvent
L11_1 = "17mov_OilRig:CraneIsNowFree"
function L12_1()
  local L0_2, L1_2
  L0_2 = GetLobbyIndex
  L1_2 = source
  L0_2 = L0_2(L1_2)
  if 0 == L0_2 then
    return
  end
  L1_2 = L0_1
  L1_2 = L1_2[L0_2]
  L1_2.craneBusy = false
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNetEvent
L11_1 = "17mov_OilRig:StartPipesAnim"
function L12_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = GetLobbyIndex
  L1_2 = source
  L0_2 = L0_2(L1_2)
  L1_2 = L0_1
  L1_2 = L1_2[L0_2]
  L1_2 = L1_2.gasProgress
  L2_2 = 140
  if L1_2 > L2_2 then
    return
  end
  L1_2 = L0_1
  L1_2 = L1_2[L0_2]
  L1_2 = L1_2.drillAwaiting
  if true == L1_2 then
    return
  end
  L1_2 = L0_1
  L1_2 = L1_2[L0_2]
  L1_2.drillAwaiting = true
  L1_2 = GetPlayerPed
  L2_2 = source
  L1_2 = L1_2(L2_2)
  L2_2 = Config
  L2_2 = L2_2.RigsLocations
  L3_2 = L0_1
  L3_2 = L3_2[L0_2]
  L3_2 = L3_2.rig
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.Drill
  L2_2 = L2_2.Coords
  L2_2 = L2_2[1]
  L3_2 = GetEntityCoords
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2 - L2_2
  L3_2 = #L3_2
  if L3_2 > 10.0 then
    return
  end
  L4_2 = Citizen
  L4_2 = L4_2.Wait
  L5_2 = 1400
  L4_2(L5_2)
  L4_2 = TriggerForAllMembers
  L5_2 = L0_1
  L5_2 = L5_2[L0_2]
  L5_2 = L5_2.host
  L6_2 = "17mov_OilRig:StartPipesAnim"
  L4_2(L5_2, L6_2)
  L4_2 = Citizen
  L4_2 = L4_2.Wait
  L5_2 = 15350
  L4_2(L5_2)
  L4_2 = L0_1
  L4_2 = L4_2[L0_2]
  L4_2.drillAwaiting = false
  L4_2 = L0_1
  L4_2 = L4_2[L0_2]
  L5_2 = L0_1
  L5_2 = L5_2[L0_2]
  L5_2 = L5_2.gasProgress
  L5_2 = L5_2 + 10
  L4_2.gasProgress = L5_2
  L4_2 = L0_1
  L4_2 = L4_2[L0_2]
  L4_2 = L4_2.gasProgress
  if L4_2 > 100 then
    L4_2 = Config
    L4_2 = L4_2.ExplodeChance
    L5_2 = L0_1
    L5_2 = L5_2[L0_2]
    L5_2 = L5_2.gasProgress
    L4_2 = L4_2[L5_2]
    L5_2 = math
    L5_2 = L5_2.random
    L6_2 = 1
    L7_2 = 100
    L5_2 = L5_2(L6_2, L7_2)
    if L4_2 >= L5_2 then
      L5_2 = L0_1
      L5_2 = L5_2[L0_2]
      L5_2.gasProgress = 0.0
      L5_2 = TriggerForAllMembers
      L6_2 = L0_1
      L6_2 = L6_2[L0_2]
      L6_2 = L6_2.host
      L7_2 = "17mov_OilRig:RigExplode"
      L5_2(L6_2, L7_2)
    end
  end
  L4_2 = TriggerForAllMembers
  L5_2 = L0_1
  L5_2 = L5_2[L0_2]
  L5_2 = L5_2.host
  L6_2 = "17mov_OilRig:UpdateGasProgress"
  L7_2 = L0_1
  L7_2 = L7_2[L0_2]
  L7_2 = L7_2.gasProgress
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = L0_1
  L4_2 = L4_2[L0_2]
  L4_2.drillBusy = false
end
L10_1(L11_1, L12_1)
