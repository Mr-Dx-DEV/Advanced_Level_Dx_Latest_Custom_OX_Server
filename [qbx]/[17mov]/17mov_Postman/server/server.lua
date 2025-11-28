local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1
L0_1 = {}
L1_1 = {}
L2_1 = {}
L3_1 = {}
L4_1 = 4
L5_1 = Config
L5_1.EnableRestoreAfterCrash = false
L5_1 = GetPlayerIdentifierByType
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if nil == A0_2 then
    L2_2 = 0
    return L2_2
  end
  L2_2 = L5_1
  if nil ~= L2_2 then
    L2_2 = L5_1
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
GetPlayerIdentifierByType = L6_1
L6_1 = GetPlayerPing
function L7_1(A0_2, ...)
  local L1_2, L2_2, L3_2
  if nil ~= A0_2 then
    L1_2 = L6_1
    L2_2 = A0_2
    L3_2 = ...
    L1_2(L2_2, L3_2)
  end
end
GetPlayerPing = L7_1
L7_1 = TriggerClientEvent
function L8_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2
  if nil ~= A1_2 then
    L2_2 = L7_1
    L3_2 = A0_2
    L4_2 = A1_2
    L5_2 = ...
    L2_2(L3_2, L4_2, L5_2)
  end
end
TriggerClientEvent = L8_1
function L8_1(A0_2, A1_2)
  local L2_2
  L2_2 = L3_1
  L2_2[A0_2] = A1_2
end
RegisterServerCallback = L8_1
function L8_1(A0_2)
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
  L5_2 = "17mov_postman:SetMyReward"
  L6_2 = math
  L6_2 = L6_2.floor
  L7_2 = 100
  L7_2 = L7_2 / L2_2
  L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L3_2 = TriggerClientEvent
  L4_2 = "17mov_postman:UpdateHostPercentages"
  L5_2 = A0_2
  L6_2 = math
  L6_2 = L6_2.floor
  L7_2 = 100
  L7_2 = L7_2 / L2_2
  L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end
RecalculateRewards = L8_1
L8_1 = RegisterNetEvent
L9_1 = "17mov_Callbacks:GetResponse"
L10_1 = GetCurrentResourceName
L10_1 = L10_1()
L9_1 = L9_1 .. L10_1
function L10_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2
  L2_2 = L3_1
  L2_2 = L2_2[A0_2]
  if nil == L2_2 then
    return
  end
  L2_2 = source
  L3_2 = L3_1
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
L8_1(L9_1, L10_1)
L8_1 = Citizen
L8_1 = L8_1.CreateThread
function L9_1()
  local L0_2, L1_2, L2_2
  L0_2 = RegisterServerCallback
  L1_2 = "17mov_postman:GetPlayersNames"
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
  L1_2 = "17mov_postman:CheckThisReward"
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
      L6_3 = "17mov_postman:SetMyReward"
      L7_3 = A2_3
      L8_3 = A1_3
      L5_3(L6_3, L7_3, L8_3)
      L5_3 = true
      return L5_3
    end
  end
  L0_2(L1_2, L2_2)
  L0_2 = RegisterServerCallback
  L1_2 = "17mov_postman:IfPlayerOwnsTeam"
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
  L1_2 = "17mov_postman:IfPlayerIsHost"
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
  L1_2 = "17mov_postman:getPartyVeh"
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L1_3 = nil
    L2_3 = pairs
    L3_3 = L0_1
    L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
    for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
      L8_3 = L7_3.host
      if L8_3 == A0_3 then
        L8_3 = L7_3.vehNetId
        if nil ~= L8_3 then
          L1_3 = L7_3.vehNetId
          break
        end
      end
      L8_3 = 1
      L9_3 = L7_3.clients
      L9_3 = #L9_3
      L10_3 = 1
      for L11_3 = L8_3, L9_3, L10_3 do
        L12_3 = L7_3.clients
        L12_3 = L12_3[L11_3]
        if L12_3 == A0_3 then
          L12_3 = L7_3.vehNetId
          if nil ~= L12_3 then
            L1_3 = L7_3.vehNetId
          end
        end
      end
    end
    return L1_3
  end
  L0_2(L1_2, L2_2)
  L0_2 = RegisterServerCallback
  L1_2 = "17mov_postman:init"
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
  L1_2 = "17mov_postman:GetLobbyMembers"
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
end
L8_1(L9_1)
L8_1 = RegisterNetEvent
L9_1 = "17mov_postman:SendRequestToClient_sv"
L8_1(L9_1)
L8_1 = AddEventHandler
L9_1 = "17mov_postman:SendRequestToClient_sv"
function L10_1(A0_2)
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
  L4_2 = L4_1
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
  L4_2 = "17mov_postman:SendRequestToClient_cl"
  L5_2 = A0_2
  L6_2 = GetPlayerIdentity
  L7_2 = L1_2
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L6_2(L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNetEvent
L9_1 = "17mov_postman:ClientReactRequest"
L8_1(L9_1)
L8_1 = AddEventHandler
L9_1 = "17mov_postman:ClientReactRequest"
function L10_1(A0_2)
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
        L6_2.letters = 0
        L6_2.working = false
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
      L7_2 = "17mov_postman:RefreshMugs"
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
L8_1(L9_1, L10_1)
L8_1 = RegisterNetEvent
L9_1 = "17mov_postman:KickPlayerFromLobby"
L8_1(L9_1)
L8_1 = AddEventHandler
L9_1 = "17mov_postman:KickPlayerFromLobby"
function L10_1(A0_2, A1_2, A2_2)
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
    L7_2 = "17mov_postman:RefreshMugs"
    L8_2 = L3_2
    L9_2 = L5_2
    L10_2 = L3_2
    L6_2(L7_2, L8_2, L9_2, L10_2)
    L6_2 = TriggerClientEvent
    L7_2 = "17mov_postman:clearMyLobby"
    L8_2 = L3_2
    L6_2(L7_2, L8_2)
    L6_2 = TriggerClientEvent
    L7_2 = "17mov_postman:SetMyReward"
    L8_2 = L3_2
    L9_2 = 100
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = GetAllPartyMugs
    L7_2 = L4_2
    L6_2 = L6_2(L7_2)
    L7_2 = TriggerForAllMembers
    L8_2 = L4_2
    L9_2 = "17mov_postman:RefreshMugs"
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
          L14_2 = "17mov_postman:clearMyLobby"
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
    L7_2 = "17mov_postman:RefreshMugs"
    L8_2 = L3_2
    L9_2 = L5_2
    L10_2 = L3_2
    L6_2(L7_2, L8_2, L9_2, L10_2)
    L6_2 = GetAllPartyMugs
    L7_2 = L4_2
    L6_2 = L6_2(L7_2)
    L7_2 = TriggerForAllMembers
    L8_2 = L4_2
    L9_2 = "17mov_postman:RefreshMugs"
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
L8_1(L9_1, L10_1)
L8_1 = RegisterNetEvent
L9_1 = "17mov_postman:endJob_sv"
L8_1(L9_1)
L8_1 = AddEventHandler
L9_1 = "17mov_postman:endJob_sv"
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L1_2 = source
  L2_2 = TriggerForAllMembers
  L3_2 = L1_2
  L4_2 = "17mov_postman:endJob_cl"
  L5_2 = 0
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = {}
  L3_2 = nil
  L4_2 = pairs
  L5_2 = L0_1
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L9_2.host
    if L10_2 == L1_2 then
      L3_2 = L9_2.letters
      L9_2.letters = 0
      L9_2.working = false
      L10_2 = {}
      L11_2 = 1
      L12_2 = L9_2.clients
      L12_2 = #L12_2
      L13_2 = 1
      for L14_2 = L11_2, L12_2, L13_2 do
        L15_2 = table
        L15_2 = L15_2.insert
        L16_2 = L10_2
        L17_2 = L9_2.clients
        L17_2 = L17_2[L14_2]
        L15_2(L16_2, L17_2)
      end
      L11_2 = table
      L11_2 = L11_2.insert
      L12_2 = L10_2
      L13_2 = L9_2.host
      L11_2(L12_2, L13_2)
      L11_2 = Config
      L11_2 = L11_2.Price
      L11_2 = L3_2 * L11_2
      L12_2 = Config
      L12_2 = L12_2.multiplyRewardWhileWorkingInGroup
      if L12_2 then
        L12_2 = math
        L12_2 = L12_2.floor
        L13_2 = L9_2.clients
        L13_2 = #L13_2
        L13_2 = L13_2 + 1
        L13_2 = L11_2 * L13_2
        L12_2 = L12_2(L13_2)
        L11_2 = L12_2
      end
      L12_2 = Config
      L12_2 = L12_2.useModernUI
      if L12_2 then
        L12_2 = L9_2.clients
        L12_2 = #L12_2
        if 0 == L12_2 then
          L12_2 = RecalculateRewards
          L13_2 = L1_2
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
            L19_2 = L9_2.rewardsOptions
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
              L19_2 = L9_2.clients
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
            goto lbl_159
          end
          L18_2 = Config
          L18_2 = L18_2.DontPayRewardWithoutVehicle
          if false ~= L18_2 then
            goto lbl_159
          end
        end
        L18_2 = L10_2[L16_2]
        L18_2 = L12_2[L18_2]
        if not L18_2 then
          L18_2 = L10_2[L16_2]
          L12_2[L18_2] = true
          L18_2 = Pay
          L19_2 = L10_2[L16_2]
          L20_2 = L17_2
          L21_2 = #L10_2
          L22_2 = L3_2
          L18_2(L19_2, L20_2, L21_2, L22_2)
          L18_2 = Notify
          L19_2 = L10_2[L16_2]
          L20_2 = Config
          L20_2 = L20_2.Lang
          L20_2 = L20_2.reward
          L21_2 = L17_2
          L20_2 = L20_2 .. L21_2
          L18_2(L19_2, L20_2)
        end
        ::lbl_159::
      end
      L13_2 = L9_2.clients
      L13_2 = #L13_2
      if 0 == L13_2 then
        L13_2 = L0_1
        L13_2[L8_2] = nil
        L13_2 = TriggerClientEvent
        L14_2 = "17mov_postman:clearMyLobby"
        L15_2 = L1_2
        L13_2(L14_2, L15_2)
      end
    end
  end
end
L8_1(L9_1, L10_1)
L8_1 = {}
L9_1 = RegisterNetEvent
L10_1 = "17mov_postman:StartJob_sv"
L9_1(L10_1)
L9_1 = AddEventHandler
L10_1 = "17mov_postman:StartJob_sv"
function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L0_2 = source
  L1_2 = nil
  L2_2 = 0
  L3_2 = pairs
  L4_2 = L0_1
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.host
    if L9_2 == L0_2 then
      L2_2 = L7_2
      L1_2 = L8_2.clients
      break
    end
  end
  L3_2 = Config
  L3_2 = L3_2.JobCooldown
  if L3_2 > 0 then
    L3_2 = CooldownsTime
    if not L3_2 then
      L3_2 = {}
    end
    CooldownsTime = L3_2
    L3_2 = os
    L3_2 = L3_2.time
    L3_2 = L3_2()
    L4_2 = GetPlayerIdentifierByType
    L5_2 = L0_2
    L6_2 = "license"
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = L8_1
    L5_2 = L5_2[L4_2]
    if L5_2 then
      L5_2 = CooldownsTime
      L5_2 = L5_2[L4_2]
      L5_2 = L3_2 - L5_2
      L6_2 = Config
      L6_2 = L6_2.JobCooldown
      if L5_2 >= L6_2 then
        L6_2 = L8_1
        L6_2[L4_2] = nil
        L6_2 = CooldownsTime
        L6_2[L4_2] = nil
      else
        L6_2 = Config
        L6_2 = L6_2.JobCooldown
        L6_2 = L6_2 - L5_2
        L7_2 = math
        L7_2 = L7_2.floor
        L8_2 = L6_2 / 3600
        L7_2 = L7_2(L8_2)
        L8_2 = math
        L8_2 = L8_2.floor
        L9_2 = L6_2 % 3600
        L9_2 = L9_2 / 60
        L8_2 = L8_2(L9_2)
        L9_2 = L6_2 % 60
        L10_2 = ""
        if L7_2 > 0 then
          L11_2 = L10_2
          L12_2 = L7_2
          L13_2 = Config
          L13_2 = L13_2.Lang
          L13_2 = L13_2.hours
          L14_2 = " "
          L11_2 = L11_2 .. L12_2 .. L13_2 .. L14_2
          L10_2 = L11_2
        end
        if L8_2 > 0 then
          L11_2 = L10_2
          L12_2 = L8_2
          L13_2 = Config
          L13_2 = L13_2.Lang
          L13_2 = L13_2.minutes
          L14_2 = " "
          L11_2 = L11_2 .. L12_2 .. L13_2 .. L14_2
          L10_2 = L11_2
        end
        L11_2 = L10_2
        L12_2 = L9_2
        L13_2 = Config
        L13_2 = L13_2.Lang
        L13_2 = L13_2.seconds
        L11_2 = L11_2 .. L12_2 .. L13_2
        L10_2 = L11_2
        L11_2 = Notify
        L12_2 = L0_2
        L13_2 = string
        L13_2 = L13_2.format
        L14_2 = Config
        L14_2 = L14_2.Lang
        L14_2 = L14_2.someoneIsOnCooldown
        L15_2 = GetPlayerIdentity
        L16_2 = L0_2
        L15_2 = L15_2(L16_2)
        L16_2 = L10_2
        L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L13_2(L14_2, L15_2, L16_2)
        L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
        return
      end
    end
    if nil ~= L1_2 then
      L5_2 = 1
      L6_2 = #L1_2
      L7_2 = 1
      for L8_2 = L5_2, L6_2, L7_2 do
        L9_2 = GetPlayerIdentifierByType
        L10_2 = L1_2[L8_2]
        L11_2 = "license"
        L9_2 = L9_2(L10_2, L11_2)
        L10_2 = L8_1
        L10_2 = L10_2[L9_2]
        if L10_2 then
          L10_2 = CooldownsTime
          L10_2 = L10_2[L9_2]
          L10_2 = L3_2 - L10_2
          L11_2 = Config
          L11_2 = L11_2.JobCooldown
          if L10_2 >= L11_2 then
            L11_2 = L8_1
            L11_2[L9_2] = nil
            L11_2 = CooldownsTime
            L11_2[L9_2] = nil
          else
            L11_2 = Config
            L11_2 = L11_2.JobCooldown
            L11_2 = L11_2 - L10_2
            L12_2 = math
            L12_2 = L12_2.floor
            L13_2 = L11_2 / 3600
            L12_2 = L12_2(L13_2)
            L13_2 = math
            L13_2 = L13_2.floor
            L14_2 = L11_2 % 3600
            L14_2 = L14_2 / 60
            L13_2 = L13_2(L14_2)
            L14_2 = L11_2 % 60
            L15_2 = ""
            if L12_2 > 0 then
              L16_2 = L15_2
              L17_2 = L12_2
              L18_2 = Config
              L18_2 = L18_2.Lang
              L18_2 = L18_2.hours
              L19_2 = " "
              L16_2 = L16_2 .. L17_2 .. L18_2 .. L19_2
              L15_2 = L16_2
            end
            if L13_2 > 0 then
              L16_2 = L15_2
              L17_2 = L13_2
              L18_2 = Config
              L18_2 = L18_2.Lang
              L18_2 = L18_2.minutes
              L19_2 = " "
              L16_2 = L16_2 .. L17_2 .. L18_2 .. L19_2
              L15_2 = L16_2
            end
            L16_2 = L15_2
            L17_2 = L14_2
            L18_2 = Config
            L18_2 = L18_2.Lang
            L18_2 = L18_2.seconds
            L16_2 = L16_2 .. L17_2 .. L18_2
            L15_2 = L16_2
            L16_2 = Notify
            L17_2 = L0_2
            L18_2 = string
            L18_2 = L18_2.format
            L19_2 = Config
            L19_2 = L19_2.Lang
            L19_2 = L19_2.someoneIsOnCooldown
            L20_2 = GetPlayerIdentity
            L21_2 = L1_2[L8_2]
            L20_2 = L20_2(L21_2)
            L21_2 = L15_2
            L18_2, L19_2, L20_2, L21_2 = L18_2(L19_2, L20_2, L21_2)
            L16_2(L17_2, L18_2, L19_2, L20_2, L21_2)
            return
          end
        end
      end
    end
    L5_2 = L8_1
    L5_2[L4_2] = true
    L5_2 = CooldownsTime
    L5_2[L4_2] = L3_2
    if nil ~= L1_2 then
      L5_2 = 1
      L6_2 = #L1_2
      L7_2 = 1
      for L8_2 = L5_2, L6_2, L7_2 do
        L9_2 = GetPlayerIdentifierByType
        L10_2 = L1_2[L8_2]
        L11_2 = "license"
        L9_2 = L9_2(L10_2, L11_2)
        L10_2 = L8_1
        L10_2[L9_2] = true
        L10_2 = CooldownsTime
        L10_2[L9_2] = L3_2
      end
    end
  end
  L3_2 = Config
  L3_2 = L3_2.RequireJobAlsoForFriends
  if L3_2 then
    L3_2 = Config
    L3_2 = L3_2.RequiredJob
    if "none" ~= L3_2 and nil ~= L1_2 then
      L3_2 = 1
      L4_2 = #L1_2
      L5_2 = 1
      for L6_2 = L3_2, L4_2, L5_2 do
        L7_2 = GetPlayerJob
        L8_2 = L1_2[L6_2]
        L7_2 = L7_2(L8_2)
        L8_2 = Config
        L8_2 = L8_2.RequiredJob
        if L7_2 ~= L8_2 then
          L7_2 = Notify
          L8_2 = L0_2
          L9_2 = Config
          L9_2 = L9_2.Lang
          L9_2 = L9_2.notEverybodyHasRequiredJob
          L7_2(L8_2, L9_2)
          return
        end
      end
    end
  end
  L3_2 = isHaveRequiredItem
  L4_2 = L0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = Notify
    L4_2 = L0_2
    L5_2 = Config
    L5_2 = L5_2.Lang
    L5_2 = L5_2.dontHaveReqItem
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = Config
  L3_2 = L3_2.RequireItemFromWholeTeam
  if L3_2 and nil ~= L1_2 then
    L3_2 = 1
    L4_2 = #L1_2
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = isHaveRequiredItem
      L8_2 = L1_2[L6_2]
      L7_2 = L7_2(L8_2)
      if not L7_2 then
        L7_2 = Notify
        L8_2 = L0_2
        L9_2 = Config
        L9_2 = L9_2.Lang
        L9_2 = L9_2.dontHaveReqItem
        L7_2(L8_2, L9_2)
        return
      end
    end
  end
  L3_2 = Config
  L3_2 = L3_2.RequireOneFriendMinimum
  if L3_2 then
    if nil ~= L1_2 then
      L3_2 = #L1_2
      if L3_2 > 0 then
        L3_2 = TriggerForAllMembers
        L4_2 = L0_2
        L5_2 = "17mov_postman:StartJob_cl"
        L6_2 = L0_2
        L3_2(L4_2, L5_2, L6_2)
        L3_2 = L0_1
        L3_2 = L3_2[L2_2]
        L3_2.working = true
    end
    else
      L3_2 = Notify
      L4_2 = L0_2
      L5_2 = Config
      L5_2 = L5_2.Lang
      L5_2 = L5_2.RequireOneFriend
      L3_2(L4_2, L5_2)
    end
  else
    if nil == L1_2 then
      L3_2 = table
      L3_2 = L3_2.insert
      L4_2 = L0_1
      L5_2 = {}
      L5_2.host = L0_2
      L6_2 = {}
      L5_2.clients = L6_2
      L5_2.letters = 0
      L5_2.working = false
      L3_2(L4_2, L5_2)
    end
    L3_2 = TriggerForAllMembers
    L4_2 = L0_2
    L5_2 = "17mov_postman:StartJob_cl"
    L6_2 = L0_2
    L3_2(L4_2, L5_2, L6_2)
    L2_2 = 0
    L3_2 = pairs
    L4_2 = L0_1
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = L8_2.host
      if L9_2 == L0_2 then
        L2_2 = L7_2
        break
      end
    end
    L3_2 = L0_1
    L3_2 = L3_2[L2_2]
    L3_2.working = true
  end
end
L9_1(L10_1, L11_1)
L9_1 = RegisterServerEvent
L10_1 = "17mov_postman:uploadJobVehicle"
function L11_1(A0_2)
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
L9_1(L10_1, L11_1)
L9_1 = {}
L10_1 = RegisterServerEvent
L11_1 = "17mov_postman:collectLetter"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L2_2 = source
  L3_2 = GetPlayerPed
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = GetEntityCoords
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = nil
  L6_2 = L9_1
  L6_2 = L6_2[L2_2]
  if L6_2 then
    L6_2 = GetGameTimer
    L6_2 = L6_2()
    L7_2 = L9_1
    L7_2 = L7_2[L2_2]
    L6_2 = L6_2 - L7_2
    L7_2 = 4500
    if L6_2 < L7_2 then
      L6_2 = print
      L7_2 = L2_2
      L8_2 = "was collecting mailboxes too fast"
      L6_2(L7_2, L8_2)
      return
    end
  end
  L6_2 = L4_2 - A0_2
  L6_2 = #L6_2
  if L6_2 > 5.0 then
    L6_2 = print
    L7_2 = L2_2
    L8_2 = "was trying to collect mailbox without being close"
    L6_2(L7_2, L8_2)
    return
  end
  L6_2 = L9_1
  L7_2 = GetGameTimer
  L7_2 = L7_2()
  L6_2[L2_2] = L7_2
  L6_2 = 1000
  if A1_2 < L6_2 then
    L6_2 = Notify
    L7_2 = L2_2
    L8_2 = Config
    L8_2 = L8_2.Lang
    L8_2 = L8_2.broken
    L6_2(L7_2, L8_2)
    return
  end
  L6_2 = Config
  L6_2 = L6_2.SyncMailboxStatus
  if not L6_2 then
    L6_2 = L2_1
    L6_2 = L6_2[L2_2]
    if nil == L6_2 then
      L6_2 = L2_1
      L7_2 = {}
      L6_2[L2_2] = L7_2
    end
    L6_2 = L2_1
    L6_2 = L6_2[L2_2]
    L6_2 = L6_2[A0_2]
    if L6_2 then
      L6_2 = Notify
      L7_2 = L2_2
      L8_2 = Config
      L8_2 = L8_2.Lang
      L8_2 = L8_2.empty
      L6_2(L7_2, L8_2)
      return
    else
      L6_2 = Notify
      L7_2 = L2_2
      L8_2 = Config
      L8_2 = L8_2.Lang
      L8_2 = L8_2.collected
      L6_2(L7_2, L8_2)
      L6_2 = L2_1
      L6_2 = L6_2[L2_2]
      L6_2[A0_2] = true
    end
  else
    L6_2 = L2_1
    L6_2 = L6_2[A0_2]
    if L6_2 then
      L6_2 = Notify
      L7_2 = L2_2
      L8_2 = Config
      L8_2 = L8_2.Lang
      L8_2 = L8_2.empty
      L6_2(L7_2, L8_2)
      return
    else
      L6_2 = Notify
      L7_2 = L2_2
      L8_2 = Config
      L8_2 = L8_2.Lang
      L8_2 = L8_2.collected
      L6_2(L7_2, L8_2)
      L6_2 = L2_1
      L6_2[A0_2] = true
    end
  end
  L6_2 = -1
  L7_2 = pairs
  L8_2 = L0_1
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
  for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
    L13_2 = L12_2.host
    if L13_2 == L2_2 then
      L6_2 = L11_2
      L5_2 = L12_2.host
      break
    end
    L13_2 = 1
    L14_2 = L12_2.clients
    L14_2 = #L14_2
    L15_2 = 1
    for L16_2 = L13_2, L14_2, L15_2 do
      L17_2 = L12_2.clients
      L17_2 = L17_2[L16_2]
      if L17_2 == L2_2 then
        L6_2 = L11_2
        L5_2 = L12_2.host
        break
      end
    end
  end
  if -1 == L6_2 then
    return
  end
  L7_2 = TriggerEvent
  L8_2 = "17mov_Postman:PlayerCollectedLetter"
  L9_2 = L2_2
  L7_2(L8_2, L9_2)
  L7_2 = L0_1
  L7_2 = L7_2[L6_2]
  L8_2 = L0_1
  L8_2 = L8_2[L6_2]
  L8_2 = L8_2.letters
  L9_2 = math
  L9_2 = L9_2.random
  L10_2 = Config
  L10_2 = L10_2.LettersInBoxAmount1
  if not L10_2 then
    L10_2 = 1
  end
  L11_2 = Config
  L11_2 = L11_2.LettersInBoxAmount2
  if not L11_2 then
    L11_2 = 1
  end
  L9_2 = L9_2(L10_2, L11_2)
  L8_2 = L8_2 + L9_2
  L7_2.letters = L8_2
  L7_2 = TriggerForAllMembers
  L8_2 = L5_2
  L9_2 = "17mov_postman:updateCounter"
  L10_2 = L0_1
  L10_2 = L10_2[L6_2]
  L10_2 = L10_2.letters
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = CreateThread
  function L8_2()
    local L0_3, L1_3
    L0_3 = Citizen
    L0_3 = L0_3.Wait
    L1_3 = Config
    L1_3 = L1_3.MailboxRenewalTime
    L0_3(L1_3)
    L0_3 = Config
    L0_3 = L0_3.SyncMailboxStatus
    if not L0_3 then
      L1_3 = L2_2
      L0_3 = L2_1
      L0_3 = L0_3[L1_3]
      L1_3 = A0_2
      L0_3[L1_3] = nil
    else
      L1_3 = A0_2
      L0_3 = L2_1
      L0_3[L1_3] = nil
    end
  end
  L7_2(L8_2)
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
      L2_2 = L9_2.clients
      L3_2 = L8_2
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
  return L1_2
end
GetAllPartyMugs = L10_1
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = {}
  L4_2 = pairs
  L5_2 = L0_1
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L9_2.host
    if A0_2 == L10_2 then
      L3_2 = L9_2.clients
    end
  end
  L4_2 = 1
  L5_2 = #L3_2
  L5_2 = L5_2 + 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L3_2[L7_2]
    id = L8_2
    L8_2 = #L3_2
    if L7_2 > L8_2 then
      id = A0_2
    end
    L8_2 = id
    if nil ~= L8_2 then
      L8_2 = type
      L9_2 = id
      L8_2 = L8_2(L9_2)
      if "number" == L8_2 then
        if "17mov_postman:RefreshMugs" == A1_2 or "17mov_postman:StartJob_cl" == A1_2 then
          L8_2 = TriggerClientEvent
          L9_2 = A1_2
          L10_2 = id
          L11_2 = A2_2
          L12_2 = id
          L13_2 = L7_2
          L14_2 = false
          L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
        else
          L8_2 = TriggerClientEvent
          L9_2 = A1_2
          L10_2 = id
          L11_2 = A2_2
          L8_2(L9_2, L10_2, L11_2)
        end
      end
    end
  end
end
TriggerForAllMembers = L10_1
L10_1 = Config
L10_1 = L10_1.EnableRestoreAfterCrash
if L10_1 then
  function L10_1(A0_2)
    local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
    L1_2 = nil
    L2_2 = pairs
    L3_2 = GetPlayerIdentifiers
    L4_2 = A0_2
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L3_2(L4_2)
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L8_2 = string
      L8_2 = L8_2.sub
      L9_2 = L7_2
      L10_2 = 1
      L11_2 = string
      L11_2 = L11_2.len
      L12_2 = "license:"
      L11_2, L12_2 = L11_2(L12_2)
      L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
      if "license:" == L8_2 then
        L1_2 = L7_2
      end
    end
    return L1_2
  end
  GetIdentifier = L10_1
  function L10_1(A0_2)
    local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
    L1_2 = A0_2
    L2_2 = GetIdentifier
    L3_2 = L1_2
    L4_2 = "license"
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = false
    L4_2 = "waiting"
    L5_2 = pairs
    L6_2 = L0_1
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
    for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
      L11_2 = L10_2.host
      if L11_2 == L2_2 then
        L10_2.host = L1_2
        L3_2 = true
        L4_2 = L9_2
        break
      end
      L11_2 = 1
      L12_2 = L10_2.clients
      L12_2 = #L12_2
      L13_2 = 1
      for L14_2 = L11_2, L12_2, L13_2 do
        L15_2 = L10_2.clients
        L15_2 = L15_2[L14_2]
        if L15_2 == L2_2 then
          L15_2 = L10_2.clients
          L15_2[L14_2] = L1_2
          L3_2 = true
          L4_2 = L9_2
          break
        end
      end
    end
    if L3_2 then
      L5_2 = L0_1
      L5_2 = L5_2[L4_2]
      if nil ~= L5_2 then
        L5_2 = Config
        L5_2 = L5_2.useModernUI
        if L5_2 then
          L5_2 = RecalculateRewards
          L6_2 = L0_1
          L6_2 = L6_2[L4_2]
          L6_2 = L6_2.host
          L5_2(L6_2)
        end
      end
    end
    if L3_2 then
      L5_2 = L0_1
      L5_2 = L5_2[L4_2]
      if nil ~= L5_2 then
        L5_2 = TriggerForAllMembers
        L6_2 = L0_1
        L6_2 = L6_2[L4_2]
        L6_2 = L6_2.host
        L7_2 = "17mov_postman:RefreshMugs"
        L8_2 = GetAllPartyMugs
        L9_2 = L0_1
        L9_2 = L9_2[L4_2]
        L9_2 = L9_2.host
        L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L8_2(L9_2)
        L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
        L5_2 = L0_1
        L5_2 = L5_2[L4_2]
        L5_2 = L5_2.working
        if L5_2 then
          L5_2 = TriggerClientEvent
          L6_2 = "17mov_postman:StartJob_cl"
          L7_2 = L1_2
          L8_2 = L0_1
          L8_2 = L8_2[L4_2]
          L8_2 = L8_2.host
          L9_2 = L1_2
          L10_2 = 0
          L11_2 = true
          L12_2 = L0_1
          L12_2 = L12_2[L4_2]
          L12_2 = L12_2.vehNetId
          L13_2 = true
          L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
          L5_2 = Citizen
          L5_2 = L5_2.Wait
          L6_2 = 2500
          L5_2(L6_2)
          L5_2 = TriggerClientEvent
          L6_2 = "17mov_postman:updateCounter"
          L7_2 = L1_2
          L8_2 = L0_1
          L8_2 = L8_2[L4_2]
          L8_2 = L8_2.letters
          L5_2(L6_2, L7_2, L8_2)
        end
      end
    end
  end
  onPlayerLoad = L10_1
  L10_1 = AddEventHandler
  L11_1 = "playerDropped"
  function L12_1()
    local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
    L0_2 = source
    L1_2 = "waiting"
    L2_2 = false
    L3_2 = pairs
    L4_2 = L0_1
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = L8_2.host
      if L9_2 == L0_2 then
        L1_2 = L7_2
        L2_2 = true
        break
      end
      L9_2 = 1
      L10_2 = L8_2.clients
      L10_2 = #L10_2
      L11_2 = 1
      for L12_2 = L9_2, L10_2, L11_2 do
        L13_2 = L8_2.clients
        L13_2 = L13_2[L12_2]
        if L13_2 == L0_2 then
          L1_2 = L7_2
          break
        end
      end
    end
    if "waiting" == L1_2 then
      return
    end
    L3_2 = L0_1
    L3_2 = L3_2[L1_2]
    L3_2 = L3_2.clients
    L3_2 = #L3_2
    if L3_2 > 0 then
      if L2_2 then
        L3_2 = GetIdentifier
        L4_2 = L0_2
        L5_2 = "license"
        L3_2 = L3_2(L4_2, L5_2)
        L4_2 = L0_1
        L4_2 = L4_2[L1_2]
        L4_2.host = L3_2
      else
        L3_2 = GetIdentifier
        L4_2 = L0_2
        L5_2 = "license"
        L3_2 = L3_2(L4_2, L5_2)
        L4_2 = 1
        L5_2 = L0_1
        L5_2 = L5_2[L1_2]
        L5_2 = L5_2.clients
        L5_2 = #L5_2
        L6_2 = 1
        for L7_2 = L4_2, L5_2, L6_2 do
          L8_2 = L0_1
          L8_2 = L8_2[L1_2]
          L8_2 = L8_2.clients
          L8_2 = L8_2[L7_2]
          if L8_2 == L0_2 then
            L8_2 = L0_1
            L8_2 = L8_2[L1_2]
            L8_2 = L8_2.clients
            L8_2[L7_2] = L3_2
          end
        end
      end
    end
  end
  L10_1(L11_1, L12_1)
end
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
      L4_2 = "17mov_postman:clearMyLobby"
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
    else
      L3_2 = TriggerForAllMembers
      L4_2 = L2_2
      L5_2 = "17mov_postman:RefreshMugs"
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
      L4_2 = "17mov_postman:clearMyLobby"
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
      L3_2 = L0_1
      L3_2[L1_2] = nil
    end
  end
end
L10_1(L11_1, L12_1)
