local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1
L0_1 = {}
L1_1 = {}
L2_1 = {}
L3_1 = 4
L4_1 = {}
L5_1 = {}
L6_1 = {}
L7_1 = {}
L8_1 = GetPlayerPing
function L9_1(A0_2, ...)
  local L1_2, L2_2, L3_2
  if nil ~= A0_2 then
    L1_2 = L8_1
    L2_2 = A0_2
    L3_2 = ...
    L1_2(L2_2, L3_2)
  end
end
GetPlayerPing = L9_1
L9_1 = TriggerClientEvent
function L10_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2
  if nil ~= A1_2 then
    L2_2 = L9_1
    L3_2 = A0_2
    L4_2 = A1_2
    L5_2 = ...
    L2_2(L3_2, L4_2, L5_2)
  end
end
TriggerClientEvent = L10_1
L10_1 = GetPlayerIdentifierByType
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if nil == A0_2 then
    L2_2 = 0
    return L2_2
  end
  L2_2 = L10_1
  if nil ~= L2_2 then
    L2_2 = L10_1
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
GetPlayerIdentifierByType = L11_1
L11_1 = Config
L11_1 = L11_1.useModernUI
if L11_1 then
  function L11_1(A0_2)
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
    L5_2 = "17mov_construction:SetMyReward"
    L6_2 = math
    L6_2 = L6_2.floor
    L7_2 = 100
    L7_2 = L7_2 / L2_2
    L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L3_2 = TriggerClientEvent
    L4_2 = "17mov_construction:UpdateHostPercentages"
    L5_2 = A0_2
    L6_2 = math
    L6_2 = L6_2.floor
    L7_2 = 100
    L7_2 = L7_2 / L2_2
    L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  end
  RecalculateRewards = L11_1
end
function L11_1(A0_2, A1_2)
  local L2_2
  L2_2 = L2_1
  L2_2[A0_2] = A1_2
end
RegisterServerCallback = L11_1
L11_1 = RegisterNetEvent
L12_1 = "17mov_Callbacks:GetResponse"
L13_1 = GetCurrentResourceName
L13_1 = L13_1()
L12_1 = L12_1 .. L13_1
function L13_1(A0_2, A1_2, ...)
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
L11_1(L12_1, L13_1)
L11_1 = Citizen
L11_1 = L11_1.CreateThread
function L12_1()
  local L0_2, L1_2, L2_2
  L0_2 = RegisterServerCallback
  L1_2 = "17mov_construction:CheckThisReward"
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
      L6_3 = "17mov_construction:SetMyReward"
      L7_3 = A2_3
      L8_3 = A1_3
      L5_3(L6_3, L7_3, L8_3)
      L5_3 = true
      return L5_3
    end
  end
  L0_2(L1_2, L2_2)
  L0_2 = RegisterServerCallback
  L1_2 = "17mov_construction:GetPlayersNames"
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
  L1_2 = "17mov_construction:GetLobbyMembers"
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
  L1_2 = "17mov_construction:IfPlayerOwnsTeam"
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
  L1_2 = "17mov_construction:IfPlayerIsHost"
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
    if not L1_3 then
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
    return L1_3
  end
  L0_2(L1_2, L2_2)
  L0_2 = RegisterServerCallback
  L1_2 = "17mov_construction:init"
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
  L0_2 = RegisterServerCallback
  L1_2 = "17mov_Construction:CheckIfWallIsFree"
  function L2_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L3_3 = true
    L4_3 = pairs
    L5_3 = L0_1
    L4_3, L5_3, L6_3, L7_3 = L4_3(L5_3)
    for L8_3, L9_3 in L4_3, L5_3, L6_3, L7_3 do
      L10_3 = L9_3.host
      if L10_3 == A1_3 then
        L10_3 = L9_3.blockedWalls
        L10_3 = L10_3[A2_3]
        if L10_3 then
          L3_3 = false
        end
      end
    end
    return L3_3
  end
  L0_2(L1_2, L2_2)
end
L11_1(L12_1)
L11_1 = RegisterNetEvent
L12_1 = "17mov_construction:SendRequestToClient_sv"
L11_1(L12_1)
L11_1 = AddEventHandler
L12_1 = "17mov_construction:SendRequestToClient_sv"
function L13_1(A0_2)
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
  L4_2 = "17mov_construction:SendRequestToClient_cl"
  L5_2 = A0_2
  L6_2 = GetPlayerIdentity
  L7_2 = L1_2
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L6_2(L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
end
L11_1(L12_1, L13_1)
L11_1 = RegisterNetEvent
L12_1 = "17mov_construction:ClientReactRequest"
L11_1(L12_1)
L11_1 = AddEventHandler
L12_1 = "17mov_construction:ClientReactRequest"
function L13_1(A0_2)
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
      L4_2 = Config
      L4_2 = L4_2.useModernUI
      if L4_2 then
        L4_2 = RecalculateRewards
        L5_2 = L2_2
        L4_2(L5_2)
      end
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
      L7_2 = "17mov_construction:RefreshMugs"
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
L11_1(L12_1, L13_1)
L11_1 = RegisterNetEvent
L12_1 = "17mov_construction:KickPlayerFromLobby"
L11_1(L12_1)
L11_1 = AddEventHandler
L12_1 = "17mov_construction:KickPlayerFromLobby"
function L13_1(A0_2, A1_2, A2_2)
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
  L5_2 = Config
  L5_2 = L5_2.useModernUI
  if L5_2 then
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
    L7_2 = "17mov_construction:RefreshMugs"
    L8_2 = L3_2
    L9_2 = L5_2
    L10_2 = L3_2
    L6_2(L7_2, L8_2, L9_2, L10_2)
    L6_2 = TriggerClientEvent
    L7_2 = "17mov_construction:clearMyLobby"
    L8_2 = L3_2
    L6_2(L7_2, L8_2)
    L6_2 = TriggerClientEvent
    L7_2 = "17mov_construction:SetMyReward"
    L8_2 = L3_2
    L9_2 = 100
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = GetAllPartyMugs
    L7_2 = L4_2
    L6_2 = L6_2(L7_2)
    L7_2 = TriggerForAllMembers
    L8_2 = L4_2
    L9_2 = "17mov_construction:RefreshMugs"
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
          L14_2 = "17mov_construction:clearMyLobby"
          L15_2 = L4_2
          L13_2(L14_2, L15_2)
        end
      end
    end
  else
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
    L7_2 = "17mov_construction:RefreshMugs"
    L8_2 = L3_2
    L9_2 = L5_2
    L10_2 = L3_2
    L6_2(L7_2, L8_2, L9_2, L10_2)
    L6_2 = GetAllPartyMugs
    L7_2 = L4_2
    L6_2 = L6_2(L7_2)
    L7_2 = TriggerForAllMembers
    L8_2 = L4_2
    L9_2 = "17mov_construction:RefreshMugs"
    L10_2 = L6_2
    L7_2(L8_2, L9_2, L10_2)
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
        end
      end
    end
  end
end
L11_1(L12_1, L13_1)
L11_1 = RegisterNetEvent
L12_1 = "17movement_builder:disableCustomTask"
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = TriggerForAllMembers
  L3_2 = A0_2
  L4_2 = "17mov_construction:disableThisCustomTask"
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L11_1(L12_1, L13_1)
L11_1 = RegisterNetEvent
L12_1 = "17mov_builder:CustomTaskDone"
function L13_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L3_2 = source
  L4_2 = nil
  L5_2 = pairs
  L6_2 = L0_1
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = L10_2.host
    if A0_2 == L11_2 then
      L4_2 = L9_2
    end
  end
  if not L4_2 then
    return
  end
  L5_2 = L0_1
  L5_2 = L5_2[L4_2]
  L5_2 = L5_2.randomLocation
  if A2_2 then
    L6_2 = A1_2.progressValue
    L7_2 = Config
    L7_2 = L7_2.JobLocations
    L7_2 = L7_2[L5_2]
    L7_2 = L7_2.customTasks
    L7_2 = L7_2[A2_2]
    L7_2 = L7_2.progressValue
    if L6_2 ~= L7_2 then
      return
    end
  end
  L6_2 = vec3
  L7_2 = Config
  L7_2 = L7_2.JobLocations
  L7_2 = L7_2[L5_2]
  L7_2 = L7_2.customTasks
  L7_2 = L7_2[A2_2]
  L7_2 = L7_2.pedInteractionCoords
  L7_2 = L7_2.x
  L8_2 = Config
  L8_2 = L8_2.JobLocations
  L8_2 = L8_2[L5_2]
  L8_2 = L8_2.customTasks
  L8_2 = L8_2[A2_2]
  L8_2 = L8_2.pedInteractionCoords
  L8_2 = L8_2.y
  L9_2 = Config
  L9_2 = L9_2.JobLocations
  L9_2 = L9_2[L5_2]
  L9_2 = L9_2.customTasks
  L9_2 = L9_2[A2_2]
  L9_2 = L9_2.pedInteractionCoords
  L9_2 = L9_2.z
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = GetEntityCoords
  L8_2 = GetPlayerPed
  L9_2 = source
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L8_2(L9_2)
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L8_2 = L6_2 - L7_2
  L8_2 = #L8_2
  if L8_2 > 10.0 then
    return
  end
  L8_2 = L0_1
  L8_2 = L8_2[L4_2]
  L9_2 = L0_1
  L9_2 = L9_2[L4_2]
  L9_2 = L9_2.completedCustomTasks
  if not L9_2 then
    L9_2 = {}
  end
  L8_2.completedCustomTasks = L9_2
  L8_2 = L0_1
  L8_2 = L8_2[L4_2]
  L8_2 = L8_2.completedCustomTasks
  L8_2 = L8_2[A2_2]
  if L8_2 then
    return
  end
  L8_2 = 5000
  L9_2 = GetGameTimer
  L9_2 = L9_2()
  L10_2 = L5_1
  L10_2 = L10_2[L3_2]
  if L10_2 then
    L10_2 = L5_1
    L10_2 = L10_2[L3_2]
    L10_2 = L9_2 - L10_2
    if L8_2 > L10_2 then
      return
    end
  end
  L10_2 = L5_1
  L10_2[L3_2] = L9_2
  L10_2 = L0_1
  L10_2 = L10_2[L4_2]
  L10_2 = L10_2.completedCustomTasks
  L10_2[A2_2] = true
  L10_2 = pairs
  L11_2 = L0_1
  L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
  for L14_2, L15_2 in L10_2, L11_2, L12_2, L13_2 do
    L16_2 = L15_2.host
    if A0_2 == L16_2 then
      L16_2 = L15_2.progress
      L17_2 = A1_2.progressValue
      L16_2 = L16_2 + L17_2
      L15_2.progress = L16_2
      L16_2 = L15_2.progress
      if L16_2 > 100 then
        L15_2.progress = 100
      end
      L16_2 = TriggerForAllMembers
      L17_2 = A0_2
      L18_2 = "17mov_constructionJob:refreshProgressValue"
      L19_2 = L15_2.progress
      L16_2(L17_2, L18_2, L19_2)
      break
    end
  end
  L10_2 = TriggerForAllMembers
  L11_2 = A0_2
  L12_2 = "17mov_Builder:SpawnCustomProps"
  L13_2 = A1_2
  L14_2 = A2_2
  L10_2(L11_2, L12_2, L13_2, L14_2)
end
L11_1(L12_1, L13_1)
L11_1 = RegisterNetEvent
L12_1 = "17mov_Construction:DisableThisPipe"
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = TriggerForAllMembers
  L3_2 = A0_2
  L4_2 = "17mov_construction:disableThisPipe"
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L11_1(L12_1, L13_1)
L11_1 = RegisterNetEvent
L12_1 = "17mov_construction:PourConcrete"
function L13_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L3_2 = source
  L4_2 = nil
  L5_2 = pairs
  L6_2 = L0_1
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = L10_2.host
    if A0_2 == L11_2 then
      L4_2 = L9_2
    end
  end
  if not L4_2 then
    return
  end
  L5_2 = L0_1
  L5_2 = L5_2[L4_2]
  L5_2 = L5_2.randomLocation
  if A2_2 then
    L6_2 = A1_2.progressValue
    L7_2 = Config
    L7_2 = L7_2.JobLocations
    L7_2 = L7_2[L5_2]
    L7_2 = L7_2.mixerTargetLocations
    L8_2 = A2_2.holeIndex
    L7_2 = L7_2[L8_2]
    L7_2 = L7_2.concreteSettings
    L7_2 = L7_2.progressValue
    if L6_2 ~= L7_2 then
      return
    end
  end
  L6_2 = vec3
  L7_2 = Config
  L7_2 = L7_2.JobLocations
  L7_2 = L7_2[L5_2]
  L7_2 = L7_2.mixerTargetLocations
  L8_2 = A2_2.holeIndex
  L7_2 = L7_2[L8_2]
  L7_2 = L7_2.concreteSettings
  L7_2 = L7_2.startingLoc
  L7_2 = L7_2.xyz
  L6_2 = L6_2(L7_2)
  L7_2 = GetEntityCoords
  L8_2 = GetPlayerPed
  L9_2 = source
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L8_2(L9_2)
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L8_2 = L6_2 - L7_2
  L8_2 = #L8_2
  if L8_2 > 10.0 then
    return
  end
  L8_2 = TriggerForAllMembers
  L9_2 = A0_2
  L10_2 = "17mov_construction:PourConcrete_cl"
  L11_2 = A1_2
  L12_2 = A2_2
  L8_2(L9_2, L10_2, L11_2, L12_2)
  L8_2 = pairs
  L9_2 = L0_1
  L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
  for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
    L14_2 = L13_2.host
    if A0_2 == L14_2 then
      L14_2 = L13_2.progress
      L15_2 = A1_2.progressValue
      L14_2 = L14_2 + L15_2
      L13_2.progress = L14_2
      L14_2 = L13_2.progress
      if L14_2 > 100 then
        L13_2.progress = 100
      end
      L14_2 = TriggerForAllMembers
      L15_2 = A0_2
      L16_2 = "17mov_constructionJob:refreshProgressValue"
      L17_2 = L13_2.progress
      L14_2(L15_2, L16_2, L17_2)
      break
    end
  end
end
L11_1(L12_1, L13_1)
L11_1 = RegisterNetEvent
L12_1 = "17mov_Construction:SpawnPipe_SV"
function L13_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L3_2 = source
  L4_2 = nil
  L5_2 = pairs
  L6_2 = L0_1
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = L10_2.host
    if A0_2 == L11_2 then
      L4_2 = L9_2
    end
  end
  if not L4_2 then
    return
  end
  L5_2 = L0_1
  L5_2 = L5_2[L4_2]
  L6_2 = L0_1
  L6_2 = L6_2[L4_2]
  L6_2 = L6_2.builtPipes
  if not L6_2 then
    L6_2 = {}
  end
  L5_2.builtPipes = L6_2
  L5_2 = L0_1
  L5_2 = L5_2[L4_2]
  L5_2 = L5_2.randomLocation
  L6_2 = string
  L6_2 = L6_2.format
  L7_2 = "%d-%d"
  L8_2 = A2_2.holeIndex
  L9_2 = A2_2.pipeIndex
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = L0_1
  L7_2 = L7_2[L4_2]
  L7_2 = L7_2.builtPipes
  L7_2 = L7_2[L6_2]
  if L7_2 then
    return
  end
  L7_2 = Config
  L7_2 = L7_2.PipeInstallingTime
  L7_2 = L7_2 * 0.8
  L8_2 = GetGameTimer
  L8_2 = L8_2()
  L9_2 = L6_1
  L9_2 = L9_2[L3_2]
  if L9_2 then
    L9_2 = L6_1
    L9_2 = L9_2[L3_2]
    L9_2 = L8_2 - L9_2
    if L7_2 > L9_2 then
      return
    end
  end
  L9_2 = L6_1
  L9_2[L3_2] = L8_2
  if A2_2 then
    L9_2 = A1_2.progressValue
    L10_2 = Config
    L10_2 = L10_2.JobLocations
    L10_2 = L10_2[L5_2]
    L10_2 = L10_2.mixerTargetLocations
    L11_2 = A2_2.holeIndex
    L10_2 = L10_2[L11_2]
    L10_2 = L10_2.pipes
    L11_2 = A2_2.pipeIndex
    L10_2 = L10_2[L11_2]
    L10_2 = L10_2.progressValue
    if L9_2 ~= L10_2 then
      return
    end
  end
  L9_2 = vec3
  L10_2 = Config
  L10_2 = L10_2.JobLocations
  L10_2 = L10_2[L5_2]
  L10_2 = L10_2.mixerTargetLocations
  L11_2 = A2_2.holeIndex
  L10_2 = L10_2[L11_2]
  L10_2 = L10_2.pipes
  L11_2 = A2_2.pipeIndex
  L10_2 = L10_2[L11_2]
  L10_2 = L10_2.pedInstallingCoords
  L10_2 = L10_2.xyz
  L9_2 = L9_2(L10_2)
  L10_2 = GetEntityCoords
  L11_2 = GetPlayerPed
  L12_2 = source
  L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L11_2(L12_2)
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L11_2 = L9_2 - L10_2
  L11_2 = #L11_2
  if L11_2 > 10.0 then
    return
  end
  L11_2 = TriggerForAllMembers
  L12_2 = A0_2
  L13_2 = "17mov_ConstructionJob:SpawnPipe"
  L14_2 = A1_2
  L15_2 = A2_2
  L11_2(L12_2, L13_2, L14_2, L15_2)
  L11_2 = pairs
  L12_2 = L0_1
  L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2)
  for L15_2, L16_2 in L11_2, L12_2, L13_2, L14_2 do
    L17_2 = L16_2.host
    if A0_2 == L17_2 then
      L17_2 = L16_2.progress
      L18_2 = A1_2.progressValue
      L17_2 = L17_2 + L18_2
      L16_2.progress = L17_2
      L17_2 = L16_2.progress
      if L17_2 > 100 then
        L16_2.progress = 100
      end
      L17_2 = TriggerForAllMembers
      L18_2 = A0_2
      L19_2 = "17mov_constructionJob:refreshProgressValue"
      L20_2 = L16_2.progress
      L17_2(L18_2, L19_2, L20_2)
      break
    end
  end
  L11_2 = L0_1
  L11_2 = L11_2[L4_2]
  L11_2 = L11_2.builtPipes
  L11_2[L6_2] = true
end
L11_1(L12_1, L13_1)
L11_1 = RegisterNetEvent
L12_1 = "17mov_constructionJob:RemoveMixerPickupBlip"
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = TriggerForAllMembers
  L3_2 = A0_2
  L4_2 = "17mov_constructionJob:RemoveMixerPickupBlip_cl"
  L2_2(L3_2, L4_2)
  L2_2 = pairs
  L3_2 = Config
  L3_2 = L3_2.MixerSpawns
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.coords
    if L8_2 == A1_2 then
      L7_2.avalible = true
    end
  end
end
L11_1(L12_1, L13_1)
L11_1 = RegisterNetEvent
L12_1 = "17mov_constructionJob:sendMixer"
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = pairs
  L3_2 = L0_1
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.host
    if A0_2 == L8_2 then
      L7_2.mixerNetId = A1_2
    end
  end
  L2_2 = TriggerForAllMembers
  L3_2 = A0_2
  L4_2 = "17mov_constructionJob:sendMixer_cl"
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L11_1(L12_1, L13_1)
L11_1 = RegisterNetEvent
L12_1 = "17mov_constructionJob:deleteBlockFromSpawn"
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = TriggerForAllMembers
  L3_2 = A0_2
  L4_2 = "17mov_constructionJob:deleteBlockFromSpawn_cl"
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L11_1(L12_1, L13_1)
L11_1 = RegisterNetEvent
L12_1 = "17mov_constructionJob:installBlockOnWall"
function L13_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L3_2 = source
  L4_2 = Config
  L4_2 = L4_2.WallBuildingTime
  L4_2 = L4_2 * 0.8
  L5_2 = GetGameTimer
  L5_2 = L5_2()
  L6_2 = L4_1
  L6_2 = L6_2[L3_2]
  if L6_2 then
    L6_2 = L4_1
    L6_2 = L6_2[L3_2]
    L6_2 = L5_2 - L6_2
    if L4_2 > L6_2 then
      L6_2 = print
      L7_2 = "Install block event REJECTED - Player %s installing blocks too fast. Current Time: %s Last value: %s Cooldown time: %s"
      L8_2 = L7_2
      L7_2 = L7_2.format
      L9_2 = L3_2
      L10_2 = L5_2
      L11_2 = L4_1
      L11_2 = L11_2[L3_2]
      L12_2 = L4_2
      L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
      return L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
    end
  end
  L6_2 = L4_1
  L6_2[L3_2] = L5_2
  L6_2 = nil
  L7_2 = pairs
  L8_2 = L0_1
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
  for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
    L13_2 = L12_2.host
    if A0_2 == L13_2 then
      L6_2 = L11_2
    end
  end
  if not L6_2 then
    return
  end
  L7_2 = L0_1
  L7_2 = L7_2[L6_2]
  L7_2 = L7_2.randomLocation
  L8_2 = A1_2.wallIndex
  if L8_2 then
    L8_2 = A1_2.placeIndex
    if L8_2 then
      L8_2 = Config
      L8_2 = L8_2.JobLocations
      L8_2 = L8_2[L7_2]
      L8_2 = L8_2.walls
      L9_2 = A1_2.wallIndex
      L8_2 = L8_2[L9_2]
      L8_2 = L8_2.blocksInFrameLocations
      L9_2 = A1_2.placeIndex
      L8_2 = L8_2[L9_2]
      L8_2 = L8_2.progressValue
      if A2_2 ~= L8_2 then
        return
      end
    end
  end
  L8_2 = vec3
  L9_2 = Config
  L9_2 = L9_2.JobLocations
  L9_2 = L9_2[L7_2]
  L9_2 = L9_2.walls
  L10_2 = A1_2.wallIndex
  L9_2 = L9_2[L10_2]
  L9_2 = L9_2.blocksInFrameLocations
  L10_2 = A1_2.placeIndex
  L9_2 = L9_2[L10_2]
  L9_2 = L9_2.coords
  L9_2 = L9_2.xyz
  L8_2 = L8_2(L9_2)
  L9_2 = GetEntityCoords
  L10_2 = GetPlayerPed
  L11_2 = source
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L10_2(L11_2)
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L10_2 = L8_2 - L9_2
  L10_2 = #L10_2
  if L10_2 > 12.0 then
    return
  end
  L10_2 = L0_1
  L10_2 = L10_2[L6_2]
  L11_2 = L0_1
  L11_2 = L11_2[L6_2]
  L11_2 = L11_2.completedBlockInstallations
  if not L11_2 then
    L11_2 = {}
  end
  L10_2.completedBlockInstallations = L11_2
  L10_2 = L0_1
  L10_2 = L10_2[L6_2]
  L10_2 = L10_2.completedBlockInstallations
  L10_2 = L10_2[A1_2]
  if L10_2 then
    return
  end
  L10_2 = L0_1
  L10_2 = L10_2[L6_2]
  L10_2 = L10_2.blockedWalls
  L11_2 = A1_2.wallIndex
  L10_2 = L10_2[L11_2]
  if L10_2 then
    return
  end
  L10_2 = L0_1
  L10_2 = L10_2[L6_2]
  L10_2 = L10_2.completedBlockInstallations
  L10_2[A1_2] = true
  L10_2 = TriggerForAllMembers
  L11_2 = A0_2
  L12_2 = "17mov_constructionJob:installBlockOnWall_cl"
  L13_2 = A1_2
  L10_2(L11_2, L12_2, L13_2)
  L10_2 = 0
  L11_2 = pairs
  L12_2 = L0_1
  L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2)
  for L15_2, L16_2 in L11_2, L12_2, L13_2, L14_2 do
    L17_2 = L16_2.host
    if A0_2 == L17_2 then
      L17_2 = L16_2.progress
      L17_2 = L17_2 + A2_2
      L16_2.progress = L17_2
      L17_2 = L16_2.progress
      if L17_2 > 100 then
        L16_2.progress = 100
      end
      L17_2 = TriggerForAllMembers
      L18_2 = A0_2
      L19_2 = "17mov_constructionJob:refreshProgressValue"
      L20_2 = L16_2.progress
      L17_2(L18_2, L19_2, L20_2)
      L17_2 = L16_2.blockedWalls
      L18_2 = A1_2.wallIndex
      L17_2[L18_2] = true
      L10_2 = L15_2
      break
    end
  end
  L11_2 = Citizen
  L11_2 = L11_2.Wait
  L12_2 = Config
  L12_2 = L12_2.WallBuildingTime
  L11_2(L12_2)
  L11_2 = L0_1
  L11_2 = L11_2[L10_2]
  L11_2 = L11_2.blockedWalls
  L12_2 = A1_2.wallIndex
  L11_2[L12_2] = nil
end
L11_1(L12_1, L13_1)
L11_1 = RegisterNetEvent
L12_1 = "17mov_constructionJob:weldingReady"
function L13_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L3_2 = source
  L4_2 = nil
  L5_2 = pairs
  L6_2 = L0_1
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = L10_2.host
    if A0_2 == L11_2 then
      L4_2 = L9_2
    end
  end
  if not L4_2 then
    return
  end
  L5_2 = L0_1
  L5_2 = L5_2[L4_2]
  L5_2 = L5_2.randomLocation
  if A1_2 then
    L6_2 = Config
    L6_2 = L6_2.JobLocations
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.welding
    L6_2 = L6_2[A1_2]
    L6_2 = L6_2.progressValue
    if A2_2 ~= L6_2 then
      return
    end
  end
  L6_2 = Config
  L6_2 = L6_2.WeldingTime
  L6_2 = L6_2 * 0.8
  L7_2 = GetGameTimer
  L7_2 = L7_2()
  L8_2 = L7_1
  L8_2 = L8_2[L3_2]
  if L8_2 then
    L8_2 = L7_1
    L8_2 = L8_2[L3_2]
    L8_2 = L7_2 - L8_2
    if L6_2 > L8_2 then
      return
    end
  end
  L8_2 = L7_1
  L8_2[L3_2] = L7_2
  L8_2 = vec3
  L9_2 = Config
  L9_2 = L9_2.JobLocations
  L9_2 = L9_2[L5_2]
  L9_2 = L9_2.welding
  L9_2 = L9_2[A1_2]
  L9_2 = L9_2.coords
  L9_2 = L9_2.x
  L10_2 = Config
  L10_2 = L10_2.JobLocations
  L10_2 = L10_2[L5_2]
  L10_2 = L10_2.welding
  L10_2 = L10_2[A1_2]
  L10_2 = L10_2.coords
  L10_2 = L10_2.y
  L11_2 = Config
  L11_2 = L11_2.JobLocations
  L11_2 = L11_2[L5_2]
  L11_2 = L11_2.welding
  L11_2 = L11_2[A1_2]
  L11_2 = L11_2.coords
  L11_2 = L11_2.z
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  L9_2 = GetEntityCoords
  L10_2 = GetPlayerPed
  L11_2 = source
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L10_2(L11_2)
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L10_2 = L8_2 - L9_2
  L10_2 = #L10_2
  if L10_2 > 10.0 then
    return
  end
  L10_2 = L0_1
  L10_2 = L10_2[L4_2]
  L11_2 = L0_1
  L11_2 = L11_2[L4_2]
  L11_2 = L11_2.completedWeldings
  if not L11_2 then
    L11_2 = {}
  end
  L10_2.completedWeldings = L11_2
  L10_2 = L0_1
  L10_2 = L10_2[L4_2]
  L10_2 = L10_2.completedWeldings
  L10_2 = L10_2[A1_2]
  if L10_2 then
    return
  end
  L10_2 = L0_1
  L10_2 = L10_2[L4_2]
  L10_2 = L10_2.completedWeldings
  L10_2[A1_2] = true
  L10_2 = TriggerForAllMembers
  L11_2 = A0_2
  L12_2 = "17mov_constructionJob:disableWeldingBlip"
  L13_2 = A1_2
  L10_2(L11_2, L12_2, L13_2)
  L10_2 = pairs
  L11_2 = L0_1
  L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
  for L14_2, L15_2 in L10_2, L11_2, L12_2, L13_2 do
    L16_2 = L15_2.host
    if A0_2 == L16_2 then
      L16_2 = L15_2.progress
      L16_2 = L16_2 + A2_2
      L15_2.progress = L16_2
      L16_2 = L15_2.progress
      if L16_2 > 100 then
        L15_2.progress = 100
      end
      L16_2 = TriggerForAllMembers
      L17_2 = A0_2
      L18_2 = "17mov_constructionJob:refreshProgressValue"
      L19_2 = L15_2.progress
      L16_2(L17_2, L18_2, L19_2)
      break
    end
  end
end
L11_1(L12_1, L13_1)
L11_1 = RegisterNetEvent
L12_1 = "17mov_construction:endJob_sv"
L11_1(L12_1)
L11_1 = AddEventHandler
L12_1 = "17mov_construction:endJob_sv"
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L2_2 = source
  L3_2 = TriggerForAllMembers
  L4_2 = L2_2
  L5_2 = "17mov_construction:endJob_cl"
  L6_2 = 0
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = pairs
  L4_2 = L0_1
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.host
    L10_2 = source
    if L9_2 == L10_2 then
      L9_2 = L8_2.progress
      L8_2.progress = 0
      L10_2 = DeleteEntity
      L11_2 = NetworkGetEntityFromNetworkId
      L12_2 = L8_2.mixerNetId
      L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L11_2(L12_2)
      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
      L10_2 = DeleteEntity
      L11_2 = NetworkGetEntityFromNetworkId
      L12_2 = A1_2
      L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L11_2(L12_2)
      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
      L8_2.working = false
      L10_2 = {}
      L8_2.builtPipes = L10_2
      L10_2 = {}
      L8_2.completedWeldings = L10_2
      L10_2 = {}
      L8_2.completedBlockInstallations = L10_2
      L10_2 = {}
      L8_2.completedCustomTasks = L10_2
      L10_2 = {}
      L11_2 = 1
      L12_2 = L8_2.clients
      L12_2 = #L12_2
      L13_2 = 1
      for L14_2 = L11_2, L12_2, L13_2 do
        L15_2 = table
        L15_2 = L15_2.insert
        L16_2 = L10_2
        L17_2 = L8_2.clients
        L17_2 = L17_2[L14_2]
        L15_2(L16_2, L17_2)
      end
      L11_2 = table
      L11_2 = L11_2.insert
      L12_2 = L10_2
      L13_2 = L8_2.host
      L11_2(L12_2, L13_2)
      L11_2 = Config
      L11_2 = L11_2.OnePercentWorth
      L11_2 = L9_2 * L11_2
      L12_2 = Config
      L12_2 = L12_2.multiplyRewardWhileWorkingInGroup
      if L12_2 then
        L12_2 = math
        L12_2 = L12_2.floor
        L13_2 = L8_2.clients
        L13_2 = #L13_2
        L13_2 = L13_2 + 1
        L13_2 = L11_2 * L13_2
        L12_2 = L12_2(L13_2)
        L11_2 = L12_2
      end
      L12_2 = Config
      L12_2 = L12_2.useModernUI
      if L12_2 then
        L12_2 = L8_2.clients
        L12_2 = #L12_2
        if 0 == L12_2 then
          L12_2 = RecalculateRewards
          L13_2 = L2_2
          L12_2(L13_2)
        end
      end
      L12_2 = {}
      L13_2 = 1
      L14_2 = #L10_2
      L15_2 = 1
      for L16_2 = L13_2, L14_2, L15_2 do
        L17_2 = 0
        L18_2 = Config
        L18_2 = L18_2.useModernUI
        if L18_2 then
          L18_2 = Config
          L18_2 = L18_2.letBossSplitReward
          if L18_2 then
            L18_2 = math
            L18_2 = L18_2.floor
            L19_2 = L8_2.rewardsOptions
            L20_2 = L10_2[L16_2]
            L19_2 = L19_2[L20_2]
            L19_2 = L19_2 / 100
            L19_2 = L11_2 * L19_2
            L18_2 = L18_2(L19_2)
            L17_2 = L18_2
        end
        else
          L18_2 = Config
          L18_2 = L18_2.useModernUI
          if not L18_2 then
            L18_2 = Config
            L18_2 = L18_2.splitReward
            if L18_2 then
              L18_2 = math
              L18_2 = L18_2.floor
              L19_2 = L8_2.clients
              L19_2 = #L19_2
              L19_2 = L19_2 + 1
              L19_2 = L11_2 / L19_2
              L18_2 = L18_2(L19_2)
              L17_2 = L18_2
          end
          else
            L17_2 = L11_2
          end
        end
        if not A0_2 then
          L18_2 = PayPenalty
          L19_2 = L10_2[L16_2]
          L20_2 = Config
          L20_2 = L20_2.PenaltyAmount
          L18_2(L19_2, L20_2)
          L18_2 = Notify
          L19_2 = L10_2[L16_2]
          L20_2 = Config
          L20_2 = L20_2.Lang
          L20_2 = L20_2.penalty
          L21_2 = Config
          L21_2 = L21_2.PenaltyAmount
          L20_2 = L20_2 .. L21_2
          L18_2(L19_2, L20_2)
        end
        if not A0_2 then
          if A0_2 then
            goto lbl_162
          end
          L18_2 = Config
          L18_2 = L18_2.DontPayRewardWithoutVehicle
          if false ~= L18_2 then
            goto lbl_162
          end
        end
        L18_2 = CreateThread
        function L19_2()
          local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
          L1_3 = L16_2
          L0_3 = L10_2
          L1_3 = L0_3[L1_3]
          L0_3 = L12_2
          L0_3 = L0_3[L1_3]
          if not L0_3 then
            L1_3 = L16_2
            L0_3 = L10_2
            L1_3 = L0_3[L1_3]
            L0_3 = L12_2
            L0_3[L1_3] = true
            L0_3 = Pay
            L2_3 = L16_2
            L1_3 = L10_2
            L1_3 = L1_3[L2_3]
            L2_3 = L17_2
            L3_3 = Config
            L3_3 = L3_3.JobLocations
            L4_3 = L8_2.randomLocation
            L3_3 = L3_3[L4_3]
            L3_3 = L3_3.paymentMultipler
            if not L3_3 then
              L3_3 = 1.0
            end
            L2_3 = L2_3 * L3_3
            L3_3 = L10_2
            L3_3 = #L3_3
            L4_3 = L9_2
            L0_3(L1_3, L2_3, L3_3, L4_3)
            L0_3 = Notify
            L2_3 = L16_2
            L1_3 = L10_2
            L1_3 = L1_3[L2_3]
            L2_3 = Config
            L2_3 = L2_3.Lang
            L2_3 = L2_3.reward
            L3_3 = L17_2
            L4_3 = Config
            L4_3 = L4_3.JobLocations
            L5_3 = L8_2.randomLocation
            L4_3 = L4_3[L5_3]
            L4_3 = L4_3.paymentMultipler
            if not L4_3 then
              L4_3 = 1.0
            end
            L3_3 = L3_3 * L4_3
            L2_3 = L2_3 .. L3_3
            L0_3(L1_3, L2_3)
          end
        end
        L18_2(L19_2)
        ::lbl_162::
      end
      L13_2 = L8_2.clients
      L13_2 = #L13_2
      if 0 == L13_2 then
        L13_2 = L0_1
        L13_2[L7_2] = nil
        L13_2 = TriggerClientEvent
        L14_2 = "17mov_construction:clearMyLobby"
        L15_2 = L2_2
        L13_2(L14_2, L15_2)
      end
    end
  end
end
L11_1(L12_1, L13_1)
L11_1 = {}
L12_1 = 0
L13_1 = 3000
L14_1 = RegisterNetEvent
L15_1 = "17mov_construction:StartJob_sv"
L14_1(L15_1)
L14_1 = AddEventHandler
L15_1 = "17mov_construction:StartJob_sv"
function L16_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L0_2 = source
  L1_2 = GetGameTimer
  L1_2 = L1_2()
  L2_2 = L12_1
  L2_2 = L1_2 - L2_2
  L3_2 = L13_1
  if L2_2 <= L3_2 then
    L2_2 = Notify
    L3_2 = L0_2
    L4_2 = Config
    L4_2 = L4_2.Lang
    L4_2 = L4_2.wait
    L2_2(L3_2, L4_2)
    return
  end
  L12_1 = L1_2
  L2_2 = nil
  L3_2 = 0
  L4_2 = pairs
  L5_2 = L0_1
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L9_2.host
    if L10_2 == L0_2 then
      L2_2 = L9_2.clients
      L3_2 = L8_2
      break
    end
  end
  L4_2 = Config
  L4_2 = L4_2.RequireJobAlsoForFriends
  if L4_2 then
    L4_2 = Config
    L4_2 = L4_2.RequiredJob
    if "none" ~= L4_2 and nil ~= L2_2 then
      L4_2 = 1
      L5_2 = #L2_2
      L6_2 = 1
      for L7_2 = L4_2, L5_2, L6_2 do
        L8_2 = GetPlayerJob
        L9_2 = L2_2[L7_2]
        L8_2 = L8_2(L9_2)
        L9_2 = Config
        L9_2 = L9_2.RequiredJob
        if L8_2 ~= L9_2 then
          L8_2 = Notify
          L9_2 = L0_2
          L10_2 = Config
          L10_2 = L10_2.Lang
          L10_2 = L10_2.notEverybodyHasRequiredJob
          L8_2(L9_2, L10_2)
          return
        end
      end
    end
  end
  L4_2 = IsHaveRequiredItem
  L5_2 = L0_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = Notify
    L5_2 = L0_2
    L6_2 = Config
    L6_2 = L6_2.Lang
    L6_2 = L6_2.dontHaveReqItem
    L4_2(L5_2, L6_2)
    return
  end
  L4_2 = Config
  L4_2 = L4_2.RequireItemFromWholeTeam
  if L4_2 and nil ~= L2_2 then
    L4_2 = 1
    L5_2 = #L2_2
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L8_2 = IsHaveRequiredItem
      L9_2 = L2_2[L7_2]
      L8_2 = L8_2(L9_2)
      if not L8_2 then
        L8_2 = Notify
        L9_2 = L0_2
        L10_2 = Config
        L10_2 = L10_2.Lang
        L10_2 = L10_2.dontHaveReqItem
        L8_2(L9_2, L10_2)
        return
      end
    end
  end
  L4_2 = os
  L4_2 = L4_2.time
  L4_2 = L4_2()
  L5_2 = GetPlayerIdentifierByType
  L6_2 = L0_2
  L7_2 = "license"
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = CooldownsTime
  if not L6_2 then
    L6_2 = {}
  end
  CooldownsTime = L6_2
  L6_2 = Config
  L6_2 = L6_2.JobCooldown
  if L6_2 > 0 then
    L6_2 = L11_1
    L6_2 = L6_2[L5_2]
    if L6_2 then
      L6_2 = CooldownsTime
      L6_2 = L6_2[L5_2]
      L6_2 = L4_2 - L6_2
      L7_2 = Config
      L7_2 = L7_2.JobCooldown
      if L6_2 >= L7_2 then
        L7_2 = L11_1
        L7_2[L5_2] = nil
        L7_2 = CooldownsTime
        L7_2[L5_2] = nil
      else
        L7_2 = Config
        L7_2 = L7_2.JobCooldown
        L7_2 = L7_2 - L6_2
        L8_2 = math
        L8_2 = L8_2.floor
        L9_2 = L7_2 / 3600
        L8_2 = L8_2(L9_2)
        L9_2 = math
        L9_2 = L9_2.floor
        L10_2 = L7_2 % 3600
        L10_2 = L10_2 / 60
        L9_2 = L9_2(L10_2)
        L10_2 = L7_2 % 60
        L11_2 = ""
        if L8_2 > 0 then
          L12_2 = L11_2
          L13_2 = L8_2
          L14_2 = Config
          L14_2 = L14_2.Lang
          L14_2 = L14_2.hours
          L15_2 = " "
          L12_2 = L12_2 .. L13_2 .. L14_2 .. L15_2
          L11_2 = L12_2
        end
        if L9_2 > 0 then
          L12_2 = L11_2
          L13_2 = L9_2
          L14_2 = Config
          L14_2 = L14_2.Lang
          L14_2 = L14_2.minutes
          L15_2 = " "
          L12_2 = L12_2 .. L13_2 .. L14_2 .. L15_2
          L11_2 = L12_2
        end
        L12_2 = L11_2
        L13_2 = L10_2
        L14_2 = Config
        L14_2 = L14_2.Lang
        L14_2 = L14_2.seconds
        L12_2 = L12_2 .. L13_2 .. L14_2
        L11_2 = L12_2
        L12_2 = Notify
        L13_2 = L0_2
        L14_2 = string
        L14_2 = L14_2.format
        L15_2 = Config
        L15_2 = L15_2.Lang
        L15_2 = L15_2.someoneIsOnCooldown
        L16_2 = GetPlayerIdentity
        L17_2 = L0_2
        L16_2 = L16_2(L17_2)
        L17_2 = L11_2
        L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L14_2(L15_2, L16_2, L17_2)
        L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
        return
      end
    end
    if nil ~= L2_2 then
      L6_2 = 1
      L7_2 = #L2_2
      L8_2 = 1
      for L9_2 = L6_2, L7_2, L8_2 do
        L10_2 = GetPlayerIdentifierByType
        L11_2 = L2_2[L9_2]
        L12_2 = "license"
        L10_2 = L10_2(L11_2, L12_2)
        L11_2 = L11_1
        L11_2 = L11_2[L10_2]
        if L11_2 then
          L11_2 = CooldownsTime
          L11_2 = L11_2[L10_2]
          L11_2 = L4_2 - L11_2
          L12_2 = Config
          L12_2 = L12_2.JobCooldown
          if L11_2 >= L12_2 then
            L12_2 = L11_1
            L12_2[L10_2] = nil
            L12_2 = CooldownsTime
            L12_2[L10_2] = nil
          else
            L12_2 = Config
            L12_2 = L12_2.JobCooldown
            L12_2 = L12_2 - L11_2
            L13_2 = math
            L13_2 = L13_2.floor
            L14_2 = L12_2 / 3600
            L13_2 = L13_2(L14_2)
            L14_2 = math
            L14_2 = L14_2.floor
            L15_2 = L12_2 % 3600
            L15_2 = L15_2 / 60
            L14_2 = L14_2(L15_2)
            L15_2 = L12_2 % 60
            L16_2 = ""
            if L13_2 > 0 then
              L17_2 = L16_2
              L18_2 = L13_2
              L19_2 = Config
              L19_2 = L19_2.Lang
              L19_2 = L19_2.hours
              L20_2 = " "
              L17_2 = L17_2 .. L18_2 .. L19_2 .. L20_2
              L16_2 = L17_2
            end
            if L14_2 > 0 then
              L17_2 = L16_2
              L18_2 = L14_2
              L19_2 = Config
              L19_2 = L19_2.Lang
              L19_2 = L19_2.minutes
              L20_2 = " "
              L17_2 = L17_2 .. L18_2 .. L19_2 .. L20_2
              L16_2 = L17_2
            end
            L17_2 = L16_2
            L18_2 = L15_2
            L19_2 = Config
            L19_2 = L19_2.Lang
            L19_2 = L19_2.seconds
            L17_2 = L17_2 .. L18_2 .. L19_2
            L16_2 = L17_2
            L17_2 = Notify
            L18_2 = L0_2
            L19_2 = string
            L19_2 = L19_2.format
            L20_2 = Config
            L20_2 = L20_2.Lang
            L20_2 = L20_2.someoneIsOnCooldown
            L21_2 = GetPlayerIdentity
            L22_2 = L2_2[L9_2]
            L21_2 = L21_2(L22_2)
            L22_2 = L16_2
            L19_2, L20_2, L21_2, L22_2 = L19_2(L20_2, L21_2, L22_2)
            L17_2(L18_2, L19_2, L20_2, L21_2, L22_2)
            return
          end
        end
      end
    end
  end
  L6_2 = math
  L6_2 = L6_2.randomseed
  L7_2 = os
  L7_2 = L7_2.time
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L7_2()
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  L6_2 = math
  L6_2 = L6_2.random
  L7_2 = 1
  L8_2 = Config
  L8_2 = L8_2.JobLocations
  L8_2 = #L8_2
  L6_2 = L6_2(L7_2, L8_2)
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
        L7_2.randomLocation = L6_2
        L7_2 = L0_1
        L7_2 = L7_2[L3_2]
        L8_2 = mixerCoords
        L7_2.mixerCoords = L8_2
        L7_2 = TriggerForAllMembers
        L8_2 = L0_2
        L9_2 = "17mov_construction:StartJob_cl"
        L10_2 = L0_2
        L11_2 = L0_1
        L11_2 = L11_2[L3_2]
        L11_2 = L11_2.randomLocation
        L12_2 = L0_1
        L12_2 = L12_2[L3_2]
        L12_2 = L12_2.clients
        L12_2 = #L12_2
        L12_2 = L12_2 + 1
        L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
        L7_2 = L11_1
        L7_2[L5_2] = true
        L7_2 = CooldownsTime
        L7_2[L5_2] = L4_2
        if nil ~= L2_2 then
          L7_2 = 1
          L8_2 = #L2_2
          L9_2 = 1
          for L10_2 = L7_2, L8_2, L9_2 do
            L11_2 = GetPlayerIdentifierByType
            L12_2 = L2_2[L10_2]
            L13_2 = "license"
            L11_2 = L11_2(L12_2, L13_2)
            L12_2 = L11_1
            L12_2[L11_2] = true
            L12_2 = CooldownsTime
            L12_2[L11_2] = L4_2
          end
        end
    end
    else
      L7_2 = Notify
      L8_2 = L0_2
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
      L9_2.host = L0_2
      L10_2 = {}
      L9_2.clients = L10_2
      L9_2.progress = 0
      L10_2 = {}
      L9_2.blockedWalls = L10_2
      L7_2(L8_2, L9_2)
    end
    L7_2 = pairs
    L8_2 = L0_1
    L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
    for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
      L13_2 = L12_2.host
      if L13_2 == L0_2 then
        L3_2 = L11_2
      end
    end
    L7_2 = L0_1
    L7_2 = L7_2[L3_2]
    L7_2.randomLocation = L6_2
    L7_2 = L0_1
    L7_2 = L7_2[L3_2]
    L7_2.working = true
    L7_2 = L0_1
    L7_2 = L7_2[L3_2]
    L8_2 = mixerCoords
    L7_2.mixerCoords = L8_2
    L7_2 = TriggerForAllMembers
    L8_2 = L0_2
    L9_2 = "17mov_construction:StartJob_cl"
    L10_2 = L0_2
    L11_2 = L0_1
    L11_2 = L11_2[L3_2]
    L11_2 = L11_2.randomLocation
    L12_2 = L0_1
    L12_2 = L12_2[L3_2]
    L12_2 = L12_2.clients
    L12_2 = #L12_2
    L12_2 = L12_2 + 1
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
    L7_2 = L11_1
    L7_2[L5_2] = true
    L7_2 = CooldownsTime
    L7_2[L5_2] = L4_2
    if nil ~= L2_2 then
      L7_2 = 1
      L8_2 = #L2_2
      L9_2 = 1
      for L10_2 = L7_2, L8_2, L9_2 do
        L11_2 = GetPlayerIdentifierByType
        L12_2 = L2_2[L10_2]
        L13_2 = "license"
        L11_2 = L11_2(L12_2, L13_2)
        L12_2 = L11_1
        L12_2[L11_2] = true
        L12_2 = CooldownsTime
        L12_2[L11_2] = L4_2
      end
    end
  end
end
L14_1(L15_1, L16_1)
function L14_1(A0_2)
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
  L4_2 = Config
  L4_2 = L4_2.useModernUI
  if L4_2 then
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
  else
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
      L4_2(L5_2, L6_2)
    end
  end
  return L1_2
end
GetAllPartyMugs = L14_1
function L14_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L6_2 = {}
  L7_2 = pairs
  L8_2 = L0_1
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
  for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
    L13_2 = L12_2.host
    if A0_2 == L13_2 then
      L6_2 = L12_2.clients
    end
  end
  L7_2 = 1
  L8_2 = #L6_2
  L8_2 = L8_2 + 1
  L9_2 = 1
  for L10_2 = L7_2, L8_2, L9_2 do
    L11_2 = L6_2[L10_2]
    L12_2 = #L6_2
    if L10_2 > L12_2 then
      L11_2 = A0_2
    end
    if nil ~= L11_2 then
      L12_2 = type
      L13_2 = L11_2
      L12_2 = L12_2(L13_2)
      if "number" == L12_2 then
        if "17mov_construction:RefreshMugs" == A1_2 then
          L12_2 = TriggerClientEvent
          L13_2 = A1_2
          L14_2 = L11_2
          L15_2 = A2_2
          L16_2 = L11_2
          L17_2 = A3_2
          L18_2 = A4_2
          L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
        elseif "17mov_construction:StartJob_cl" == A1_2 then
          L12_2 = TriggerClientEvent
          L13_2 = A1_2
          L14_2 = L11_2
          L15_2 = A2_2
          L16_2 = L11_2
          L17_2 = A3_2
          L18_2 = A4_2
          L19_2 = A5_2
          L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
        elseif "17mov_constructionJob:sendMixer_cl" == A1_2 then
          L12_2 = TriggerClientEvent
          L13_2 = A1_2
          L14_2 = L11_2
          L15_2 = A2_2
          L16_2 = L11_2
          L17_2 = A0_2
          L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
        else
          L12_2 = TriggerClientEvent
          L13_2 = A1_2
          L14_2 = L11_2
          L15_2 = A2_2
          L16_2 = A3_2
          L12_2(L13_2, L14_2, L15_2, L16_2)
        end
      end
    end
  end
end
TriggerForAllMembers = L14_1
L14_1 = RegisterNetEvent
L15_1 = "17mov_construction:SendVehicleNetId"
function L16_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = source
  L2_2 = pairs
  L3_2 = L0_1
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.host
    if L8_2 == L1_2 then
      L7_2.vehNetId = A0_2
      break
    end
  end
end
L14_1(L15_1, L16_1)
L14_1 = AddEventHandler
L15_1 = "playerDropped"
function L16_1()
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
  if "waiting" == L1_2 then
    return
  end
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
      L4_2 = "17mov_construction:clearMyLobby"
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
    else
      L3_2 = TriggerForAllMembers
      L4_2 = L2_2
      L5_2 = "17mov_construction:RefreshMugs"
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
  else
    L3_2 = L0_1
    L3_2 = L3_2[L1_2]
    L3_2 = L3_2.clients
    L3_2 = #L3_2
    if 0 == L3_2 then
      L3_2 = TriggerClientEvent
      L4_2 = "17mov_construction:clearMyLobby"
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
      L3_2 = L0_1
      L3_2[L1_2] = nil
    end
  end
  L3_2 = L4_1
  L3_2 = L3_2[L0_2]
  if nil ~= L3_2 then
    L3_2 = L4_1
    L3_2[L0_2] = nil
  end
  L3_2 = L5_1
  L3_2 = L3_2[L0_2]
  if nil ~= L3_2 then
    L3_2 = L5_1
    L3_2[L0_2] = nil
  end
  L3_2 = L6_1
  L3_2 = L3_2[L0_2]
  if nil ~= L3_2 then
    L3_2 = L6_1
    L3_2[L0_2] = nil
  end
  L3_2 = L7_1
  L3_2 = L3_2[L0_2]
  if nil ~= L3_2 then
    L3_2 = L7_1
    L3_2[L0_2] = nil
  end
end
L14_1(L15_1, L16_1)
