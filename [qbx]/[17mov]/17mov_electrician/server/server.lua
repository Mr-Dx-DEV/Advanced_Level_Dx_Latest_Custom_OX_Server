local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = {}
L1_1 = {}
L2_1 = 2
L3_1 = {}
L4_1 = Config
L4_1.EnableRestoreAfterCrash = false
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
L7_1 = Config
L7_1 = L7_1.useModernUI
if L7_1 then
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
    L5_2 = "17mov_Electrician:SetMyReward"
    L6_2 = math
    L6_2 = L6_2.floor
    L7_2 = 100
    L7_2 = L7_2 / L2_2
    L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L3_2 = TriggerClientEvent
    L4_2 = "17mov_Electrician:UpdateHostPercentages"
    L5_2 = A0_2
    L6_2 = math
    L6_2 = L6_2.floor
    L7_2 = 100
    L7_2 = L7_2 / L2_2
    L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  end
  RecalculateRewards = L7_1
end
function L7_1(A0_2, A1_2)
  local L2_2
  L2_2 = L3_1
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
L7_1(L8_1, L9_1)
L7_1 = Citizen
L7_1 = L7_1.CreateThread
function L8_1()
  local L0_2, L1_2, L2_2
  L0_2 = RegisterServerCallback
  L1_2 = "17mov_Electrician:GetPlayersNames"
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
  L1_2 = "17mov_Electrician:CheckThisReward"
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
      L6_3 = "17mov_Electrician:SetMyReward"
      L7_3 = A2_3
      L8_3 = A1_3
      L5_3(L6_3, L7_3, L8_3)
      L5_3 = true
      return L5_3
    end
  end
  L0_2(L1_2, L2_2)
  L0_2 = RegisterServerCallback
  L1_2 = "17mov_Electrician:IfPlayerOwnsTeam"
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
  L1_2 = "17mov_Electrician:GetLobbyMembers"
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
  L1_2 = "17mov_Electrician:IfPlayerIsHost"
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
  L1_2 = "17mov_Electrician:init"
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
  L1_2 = "17mov_Electrician:checkPartyCar"
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3
    L1_3 = A0_3
    L2_3 = nil
    L3_3 = Config
    L3_3 = L3_3.Debug
    if true == L3_3 then
      L3_3 = print
      L4_3 = "CHECKING FOR:"
      L5_3 = L1_3
      L3_3(L4_3, L5_3)
    end
    L3_3 = pairs
    L4_3 = L0_1
    L3_3, L4_3, L5_3, L6_3 = L3_3(L4_3)
    for L7_3, L8_3 in L3_3, L4_3, L5_3, L6_3 do
      L9_3 = L8_3.host
      if L9_3 == L1_3 then
        L9_3 = Config
        L9_3 = L9_3.Debug
        if true == L9_3 then
          L9_3 = print
          L10_3 = "HOST MATCH REQUEST:"
          L11_3 = L8_3.car
          L9_3(L10_3, L11_3)
        end
        L2_3 = L8_3.car
        break
      end
      L9_3 = 1
      L10_3 = L8_3.clients
      L10_3 = #L10_3
      L11_3 = 1
      for L12_3 = L9_3, L10_3, L11_3 do
        L13_3 = L8_3.clients
        L13_3 = L13_3[L12_3]
        if L13_3 == L1_3 then
          L13_3 = Config
          L13_3 = L13_3.Debug
          if true == L13_3 then
            L13_3 = print
            L14_3 = "CLIENT MATCH REQUEST:"
            L15_3 = L8_3.car
            L13_3(L14_3, L15_3)
          end
          L2_3 = L8_3.car
          break
        end
      end
    end
    L3_3 = L2_3 or L3_3
    if not L2_3 then
      L3_3 = "nil"
    end
    L4_3 = Config
    L4_3 = L4_3.Debug
    if true == L4_3 then
      L4_3 = print
      L5_3 = "RETURNING:"
      L6_3 = L3_3
      L4_3(L5_3, L6_3)
    end
    return L3_3
  end
  L0_2(L1_2, L2_2)
  L0_2 = RegisterServerCallback
  L1_2 = "17mov_Electrician:CheckPartyReady"
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
    L2_3 = false
    if "host" == A1_3 then
      L3_3 = A0_3
      L4_3 = pairs
      L5_3 = L0_1
      L4_3, L5_3, L6_3, L7_3 = L4_3(L5_3)
      for L8_3, L9_3 in L4_3, L5_3, L6_3, L7_3 do
        L10_3 = L9_3.host
        if L10_3 == L3_3 then
          L10_3 = L9_3.clientReady
          if L10_3 then
            L10_3 = L9_3.hostReady
            if L10_3 then
              L2_3 = true
            end
          end
          break
        end
      end
    elseif "client" == A1_3 then
      L3_3 = A0_3
      L4_3 = pairs
      L5_3 = L0_1
      L4_3, L5_3, L6_3, L7_3 = L4_3(L5_3)
      for L8_3, L9_3 in L4_3, L5_3, L6_3, L7_3 do
        L10_3 = 1
        L11_3 = L9_3.clients
        L11_3 = #L11_3
        L12_3 = 1
        for L13_3 = L10_3, L11_3, L12_3 do
          L14_3 = L9_3.clients
          L14_3 = L14_3[L13_3]
          if L14_3 == L3_3 then
            L14_3 = L9_3.clientReady
            if L14_3 then
              L14_3 = L9_3.hostReady
              if L14_3 then
                L2_3 = true
              end
            end
            break
          end
        end
      end
    end
    return L2_3
  end
  L0_2(L1_2, L2_2)
end
L7_1(L8_1)
L7_1 = RegisterNetEvent
L8_1 = "17mov_Electrician:SendRequestToClient_sv"
L7_1(L8_1)
L7_1 = AddEventHandler
L8_1 = "17mov_Electrician:SendRequestToClient_sv"
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
      return L8_2(L9_2, L10_2)
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
          return L12_2(L13_2, L14_2)
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
      return L8_2(L9_2, L10_2)
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
        return L8_2(L9_2, L10_2)
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
  L4_2 = L2_1
  if L3_2 >= L4_2 then
    L3_2 = Notify
    L4_2 = L1_2
    L5_2 = Config
    L5_2 = L5_2.Lang
    L5_2 = L5_2.partyIsFull
    return L3_2(L4_2, L5_2)
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
  L4_2 = "17mov_Electrician:SendRequestToClient_cl"
  L5_2 = A0_2
  L6_2 = GetPlayerIdentity
  L7_2 = L1_2
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L6_2(L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "17mov_Electrician:ClientReactRequest"
L7_1(L8_1)
L7_1 = AddEventHandler
L8_1 = "17mov_Electrician:ClientReactRequest"
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
    if L10_2 == L1_2 then
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
      L7_2 = "17mov_Electrician:RefreshMugs"
      L8_2 = L4_2
      L5_2(L6_2, L7_2, L8_2)
    else
      L4_2 = Notify
      L5_2 = L1_2
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
L8_1 = "17mov_Electrician:KickPlayerFromLobby"
L7_1(L8_1)
L7_1 = AddEventHandler
L8_1 = "17mov_Electrician:KickPlayerFromLobby"
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
    L7_2 = "17mov_Electrician:RefreshMugs"
    L8_2 = L3_2
    L9_2 = L5_2
    L10_2 = L3_2
    L6_2(L7_2, L8_2, L9_2, L10_2)
    L6_2 = TriggerClientEvent
    L7_2 = "17mov_Electrician:clearMyLobby"
    L8_2 = L3_2
    L6_2(L7_2, L8_2)
    L6_2 = TriggerClientEvent
    L7_2 = "17mov_Electrician:SetMyReward"
    L8_2 = L3_2
    L9_2 = 100
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = GetAllPartyMugs
    L7_2 = L4_2
    L6_2 = L6_2(L7_2)
    L7_2 = TriggerForAllMembers
    L8_2 = L4_2
    L9_2 = "17mov_Electrician:RefreshMugs"
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
          L14_2 = "17mov_Electrician:clearMyLobby"
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
    L7_2 = "17mov_Electrician:RefreshMugs"
    L8_2 = L3_2
    L9_2 = L5_2
    L10_2 = L3_2
    L6_2(L7_2, L8_2, L9_2, L10_2)
    L6_2 = GetAllPartyMugs
    L7_2 = L4_2
    L6_2 = L6_2(L7_2)
    L7_2 = TriggerForAllMembers
    L8_2 = L4_2
    L9_2 = "17mov_Electrician:RefreshMugs"
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
L7_1(L8_1, L9_1)
function L7_1(A0_2)
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
GetAllPartyMugs = L7_1
function L7_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L5_2 = nil
  if nil ~= A3_2 and "medium" == A3_2 or "easy" == A3_2 or "hard" == A3_2 then
    L6_2 = math
    L6_2 = L6_2.randomseed
    L7_2 = os
    L7_2 = L7_2.time
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L7_2()
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
    L6_2 = math
    L6_2 = L6_2.random
    L7_2 = 1
    L8_2 = Config
    L8_2 = L8_2.JobLocations
    L8_2 = L8_2[A3_2]
    L8_2 = #L8_2
    L6_2 = L6_2(L7_2, L8_2)
    L5_2 = L6_2
  end
  L6_2 = {}
  L7_2 = pairs
  L8_2 = L0_1
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
  for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
    L13_2 = L12_2.host
    if A0_2 == L13_2 then
      L6_2 = L12_2.clients
      if L5_2 then
        L12_2.workingIndex = L5_2
        L12_2.AnticheatDiff = A3_2
      end
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
        if "17mov_Electrician:RefreshMugs" == A1_2 then
          L12_2 = TriggerClientEvent
          L13_2 = A1_2
          L14_2 = L11_2
          L15_2 = A2_2
          L16_2 = L11_2
          L12_2(L13_2, L14_2, L15_2, L16_2)
        elseif "17mov_Electrician_launchRepeairing" == A1_2 or "17mov_Electrician_endJob" == A1_2 then
          L12_2 = TriggerClientEvent
          L13_2 = A1_2
          L14_2 = L11_2
          L15_2 = A2_2
          L16_2 = L11_2
          L17_2 = A3_2
          L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
        elseif "17mov_Electrician:StartJob_cl" == A1_2 then
          L12_2 = TriggerClientEvent
          L13_2 = "17mov_Electrician:StartJob_cl"
          L14_2 = L11_2
          L15_2 = A2_2
          L16_2 = L11_2
          L17_2 = A3_2
          L18_2 = L5_2
          L19_2 = A4_2
          L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
        else
          L12_2 = TriggerClientEvent
          L13_2 = A1_2
          L14_2 = L11_2
          L15_2 = A2_2
          L12_2(L13_2, L14_2, L15_2)
        end
      end
    end
  end
end
TriggerForAllMembers = L7_1
L7_1 = RegisterNetEvent
L8_1 = "17mov_Electrician:refreshJobVehicle"
L7_1(L8_1)
L7_1 = AddEventHandler
L8_1 = "17mov_Electrician:refreshJobVehicle"
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = source
  L2_2 = RemoveMoney
  L3_2 = L1_2
  L4_2 = Config
  L4_2 = L4_2.VehicleDeposit
  L2_2(L3_2, L4_2)
  L2_2 = Notify
  L3_2 = L1_2
  L4_2 = Config
  L4_2 = L4_2.Lang
  L4_2 = L4_2.Deposit
  L2_2(L3_2, L4_2)
  L2_2 = Config
  L2_2 = L2_2.Debug
  if true == L2_2 then
    L2_2 = print
    L3_2 = "SETTING AS:"
    L4_2 = A0_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = pairs
  L3_2 = L0_1
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.host
    if L8_2 == L1_2 then
      L8_2 = Config
      L8_2 = L8_2.Debug
      if true == L8_2 then
        L8_2 = print
        L9_2 = "HOST MATCH REQUEST"
        L8_2(L9_2)
      end
      L8_2 = L7_2.car
      if nil ~= L8_2 then
        L7_2.car = nil
        L7_2.vehOwner = nil
      end
      L7_2.car = A0_2
      L7_2.vehOwner = L1_2
      L8_2 = Config
      L8_2 = L8_2.Debug
      if true == L8_2 then
        L8_2 = print
        L9_2 = "VEHICLE IS:"
        L10_2 = L7_2.car
        L8_2(L9_2, L10_2)
      end
      break
    end
    L8_2 = 1
    L9_2 = L7_2.clients
    L9_2 = #L9_2
    L10_2 = 1
    for L11_2 = L8_2, L9_2, L10_2 do
      L12_2 = L7_2.clients
      L12_2 = L12_2[L11_2]
      if L12_2 == L1_2 then
        L12_2 = Config
        L12_2 = L12_2.Debug
        if true == L12_2 then
          L12_2 = print
          L13_2 = "CLIENT MATCH REQUEST"
          L12_2(L13_2)
        end
        L12_2 = L7_2.car
        if nil ~= L12_2 then
          L7_2.car = nil
          L7_2.vehOwner = nil
        end
        L7_2.car = A0_2
        L7_2.vehOwner = L1_2
        L12_2 = Config
        L12_2 = L12_2.Debug
        if true == L12_2 then
          L12_2 = print
          L13_2 = "VEHICLE IS:"
          L14_2 = L7_2.car
          L12_2(L13_2, L14_2)
        end
        break
      end
    end
  end
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "malizniak_electro:DeleteJobCarFromParty"
L7_1(L8_1)
L7_1 = AddEventHandler
L8_1 = "malizniak_electro:DeleteJobCarFromParty"
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = source
  L2_2 = nil
  L3_2 = pairs
  L4_2 = L0_1
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.host
    if L9_2 == L1_2 then
      L8_2.car = nil
      L2_2 = L8_2.vehOwner
      L8_2.vehOwner = nil
      break
    end
    L9_2 = 1
    L10_2 = L8_2.clients
    L10_2 = #L10_2
    L11_2 = 1
    for L12_2 = L9_2, L10_2, L11_2 do
      L13_2 = L8_2.clients
      L13_2 = L13_2[L12_2]
      if L13_2 == L1_2 then
        L8_2.car = nil
        L2_2 = L8_2.vehOwner
        L8_2.vehOwner = nil
        break
      end
    end
  end
  if nil == L2_2 then
    return
  end
  L3_2 = TriggerForAllMembers
  L4_2 = L1_2
  L5_2 = "17mov_Electrician:StopJob"
  L3_2(L4_2, L5_2)
  if A0_2 then
    L3_2 = Pay
    L4_2 = L2_2
    L5_2 = Config
    L5_2 = L5_2.VehicleDeposit
    L6_2 = true
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = Notify
    L4_2 = L1_2
    L5_2 = Config
    L5_2 = L5_2.Lang
    L5_2 = L5_2.ReturnDeposit
    L3_2(L4_2, L5_2)
  else
    L3_2 = RemoveMoney
    L4_2 = L2_2
    L5_2 = Config
    L5_2 = L5_2.VehicleDeposit
    L3_2(L4_2, L5_2)
    L3_2 = Notify
    L4_2 = L2_2
    L5_2 = Config
    L5_2 = L5_2.Lang
    L5_2 = L5_2.penalty
    L6_2 = Config
    L6_2 = L6_2.VehicleDeposit
    L5_2 = L5_2 .. L6_2
    L3_2(L4_2, L5_2)
  end
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "17mov_Electrician:StartJob_sv"
L7_1(L8_1)
L7_1 = AddEventHandler
L8_1 = "17mov_Electrician:StartJob_sv"
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = source
  L3_2 = pairs
  L4_2 = L0_1
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.host
    if L9_2 == L2_2 then
      L9_2 = Config
      L9_2 = L9_2.RequireJobAlsoForFriends
      if L9_2 then
        L9_2 = Config
        L9_2 = L9_2.RequiredJob
        if "none" ~= L9_2 then
          L9_2 = 1
          L10_2 = L8_2.clients
          L10_2 = #L10_2
          L11_2 = 1
          for L12_2 = L9_2, L10_2, L11_2 do
            L13_2 = GetPlayerJob
            L14_2 = L8_2.clients
            L14_2 = L14_2[L12_2]
            L13_2 = L13_2(L14_2)
            L14_2 = Config
            L14_2 = L14_2.RequiredJob
            if L13_2 ~= L14_2 then
              L13_2 = Notify
              L14_2 = L2_2
              L15_2 = Config
              L15_2 = L15_2.Lang
              L15_2 = L15_2.notEverybodyHasRequiredJob
              L13_2(L14_2, L15_2)
              return
            end
          end
        end
      end
      L9_2 = isHaveRequiredItem
      L10_2 = L2_2
      L9_2 = L9_2(L10_2)
      if not L9_2 then
        L9_2 = Notify
        L10_2 = L2_2
        L11_2 = Config
        L11_2 = L11_2.Lang
        L11_2 = L11_2.dontHaveReqItem
        L9_2(L10_2, L11_2)
        return
      end
      L9_2 = Config
      L9_2 = L9_2.RequireItemFromWholeTeam
      if L9_2 then
        L9_2 = 1
        L10_2 = L8_2.clients
        L10_2 = #L10_2
        L11_2 = 1
        for L12_2 = L9_2, L10_2, L11_2 do
          L13_2 = isHaveRequiredItem
          L14_2 = L8_2.clients
          L14_2 = L14_2[L12_2]
          L13_2 = L13_2(L14_2)
          if not L13_2 then
            L13_2 = Notify
            L14_2 = L2_2
            L15_2 = Config
            L15_2 = L15_2.Lang
            L15_2 = L15_2.dontHaveReqItem
            L13_2(L14_2, L15_2)
            return
          end
        end
      end
      if false == A1_2 then
        L9_2 = GetPlayerMoney
        L10_2 = L2_2
        L9_2 = L9_2(L10_2)
        L10_2 = Config
        L10_2 = L10_2.VehicleDeposit
        if L9_2 >= L10_2 then
          L9_2 = TriggerForAllMembers
          L10_2 = L2_2
          L11_2 = "17mov_Electrician:StartJob_cl"
          L12_2 = L2_2
          L13_2 = A0_2
          L14_2 = A1_2
          L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
        else
          L9_2 = Notify
          L10_2 = L2_2
          L11_2 = Config
          L11_2 = L11_2.Lang
          L11_2 = L11_2.dontHaveMoney
          L9_2(L10_2, L11_2)
          return
        end
      else
        L9_2 = TriggerForAllMembers
        L10_2 = L2_2
        L11_2 = "17mov_Electrician:StartJob_cl"
        L12_2 = L2_2
        L13_2 = A0_2
        L14_2 = A1_2
        L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
      end
      return
    end
  end
  L3_2 = Notify
  L4_2 = L2_2
  L5_2 = Config
  L5_2 = L5_2.Lang
  L5_2 = L5_2.RequireOneFriend
  L3_2(L4_2, L5_2)
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "17mov_Electrician:HostSuccessMiniGame"
L7_1(L8_1)
L7_1 = AddEventHandler
L8_1 = "17mov_Electrician:HostSuccessMiniGame"
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = nil
  L3_2 = source
  L4_2 = pairs
  L5_2 = L0_1
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L9_2.host
    if L10_2 == L3_2 then
      L9_2.diff = A0_2
      L9_2.succes = A1_2
      L10_2 = L9_2.clients
      L2_2 = L10_2[1]
      break
    end
  end
  L4_2 = TriggerForAllMembers
  L5_2 = L3_2
  L6_2 = "17mov_Electrician_launchRepeairing"
  L7_2 = L3_2
  L8_2 = A1_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "17mov_Electrician:ClientSuccessRepeairingGame"
L7_1(L8_1)
L7_1 = AddEventHandler
L8_1 = "17mov_Electrician:ClientSuccessRepeairingGame"
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L1_2 = nil
  L2_2 = nil
  L3_2 = source
  L4_2 = 0
  L5_2 = nil
  L6_2 = nil
  L7_2 = pairs
  L8_2 = L0_1
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
  for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
    L13_2 = 1
    L14_2 = L12_2.clients
    L14_2 = #L14_2
    L15_2 = 1
    for L16_2 = L13_2, L14_2, L15_2 do
      L17_2 = L12_2.clients
      L17_2 = L17_2[L16_2]
      if L17_2 == L3_2 then
        L2_2 = L12_2.diff
        L12_2.succes = true
        L1_2 = L12_2.host
        L4_2 = L11_2
        L5_2 = L12_2.AnticheatDiff
        L6_2 = L12_2.workingIndex
        L12_2.workingIndex = nil
        break
      end
    end
  end
  if not L6_2 then
    return
  end
  L7_2 = Config
  L7_2 = L7_2.JobLocations
  L7_2 = L7_2[L5_2]
  L7_2 = L7_2[L6_2]
  L7_2 = L7_2[1]
  L8_2 = Config
  L8_2 = L8_2.JobLocations
  L8_2 = L8_2[L5_2]
  L8_2 = L8_2[L6_2]
  L8_2 = L8_2[2]
  L9_2 = TriggerForAllMembers
  L10_2 = L1_2
  L11_2 = "17mov_Electrician_endJob"
  L12_2 = L3_2
  L13_2 = A0_2
  L9_2(L10_2, L11_2, L12_2, L13_2)
  L9_2 = TriggerClientEvent
  L10_2 = "17mov_Electrician:openDecision"
  L11_2 = L1_2
  L9_2(L10_2, L11_2)
  L9_2 = RestartVariables
  L10_2 = L1_2
  L9_2(L10_2)
  L9_2 = Config
  L9_2 = L9_2.Debug
  if nil ~= L9_2 then
    L9_2 = print
    L10_2 = "STARTING REWARDS"
    L9_2(L10_2)
  end
  L9_2 = L0_1
  L9_2 = L9_2[L4_2]
  L10_2 = Config
  L10_2 = L10_2.Payments
  L10_2 = L10_2[L2_2]
  L11_2 = Config
  L11_2 = L11_2.multiplyRewardWhileWorkingInGroup
  if L11_2 then
    L11_2 = math
    L11_2 = L11_2.floor
    L12_2 = L9_2.clients
    L12_2 = #L12_2
    L12_2 = L12_2 + 1
    L12_2 = L10_2 * L12_2
    L11_2 = L11_2(L12_2)
    L10_2 = L11_2
  end
  L11_2 = Config
  L11_2 = L11_2.Debug
  if nil ~= L11_2 then
    L11_2 = print
    L12_2 = "reward: "
    L13_2 = L10_2
    L14_2 = "Lobby Index; "
    L15_2 = L4_2
    L11_2(L12_2, L13_2, L14_2, L15_2)
  end
  L11_2 = L10_2
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
    L12_2 = Config
    L12_2 = L12_2.letBossSplitReward
    if L12_2 then
      L12_2 = math
      L12_2 = L12_2.floor
      L13_2 = L9_2.rewardsOptions
      L13_2 = L13_2[L1_2]
      L13_2 = L13_2 / 100
      L13_2 = L10_2 * L13_2
      L12_2 = L12_2(L13_2)
      L11_2 = L12_2
    else
      L12_2 = math
      L12_2 = L12_2.floor
      L13_2 = L9_2.clients
      L13_2 = #L13_2
      L13_2 = L13_2 + 1
      L13_2 = L10_2 / L13_2
      L12_2 = L12_2(L13_2)
      L11_2 = L12_2
    end
  end
  L12_2 = Config
  L12_2 = L12_2.Debug
  if nil ~= L12_2 then
    L12_2 = print
    L13_2 = "payForHost: "
    L14_2 = L11_2
    L12_2(L13_2, L14_2)
  end
  L12_2 = GetPlayerPed
  L13_2 = L1_2
  L12_2 = L12_2(L13_2)
  L13_2 = GetEntityCoords
  L14_2 = L12_2
  L13_2 = L13_2(L14_2)
  if L13_2 then
    L14_2 = L13_2 - L7_2
    L14_2 = #L14_2
    if L14_2 < 50 then
      L14_2 = Pay
      L15_2 = L1_2
      L16_2 = L11_2
      L14_2(L15_2, L16_2)
  end
  else
    L14_2 = print
    L15_2 = "ID"
    L16_2 = L1_2
    L17_2 = "attempted to get paid in Electrician, but hes too far from working location. Propably a cheater"
    L14_2(L15_2, L16_2, L17_2)
  end
  L14_2 = GetPlayerIdentifierFromId
  L15_2 = L1_2
  L14_2 = L14_2(L15_2)
  L15_2 = Config
  L15_2 = L15_2.Debug
  if nil ~= L15_2 then
    L15_2 = print
    L16_2 = "hostIdentifier: "
    L17_2 = L14_2
    L15_2(L16_2, L17_2)
  end
  L15_2 = PlayerCourses
  L15_2 = L15_2[L14_2]
  if nil == L15_2 then
    L15_2 = PlayerCourses
    L15_2[L14_2] = 0
  end
  L15_2 = PlayerCourses
  L16_2 = PlayerCourses
  L16_2 = L16_2[L14_2]
  L16_2 = L16_2 + 1
  L15_2[L14_2] = L16_2
  L15_2 = Config
  L15_2 = L15_2.Debug
  if nil ~= L15_2 then
    L15_2 = print
    L16_2 = "Courses: "
    L17_2 = PlayerCourses
    L17_2 = L17_2[L14_2]
    L18_2 = Config
    L18_2 = L18_2.MinimumCoursesToMedium
    L15_2(L16_2, L17_2, L18_2)
  end
  L15_2 = PlayerCourses
  L15_2 = L15_2[L14_2]
  L16_2 = Config
  L16_2 = L16_2.MinimumCoursesToMedium
  if L15_2 == L16_2 then
    L15_2 = Notify
    L16_2 = L1_2
    L17_2 = Config
    L17_2 = L17_2.Lang
    L17_2 = L17_2.PromotionMedium
    L15_2(L16_2, L17_2)
  end
  L15_2 = Config
  L15_2 = L15_2.Debug
  if nil ~= L15_2 then
    L15_2 = print
    L16_2 = "Courses: "
    L17_2 = PlayerCourses
    L17_2 = L17_2[L14_2]
    L18_2 = Config
    L18_2 = L18_2.MinimumCoursesToHard
    L15_2(L16_2, L17_2, L18_2)
  end
  L15_2 = PlayerCourses
  L15_2 = L15_2[L14_2]
  L16_2 = Config
  L16_2 = L16_2.MinimumCoursesToHard
  if L15_2 == L16_2 then
    L15_2 = Notify
    L16_2 = L1_2
    L17_2 = Config
    L17_2 = L17_2.Lang
    L17_2 = L17_2.PromotionHard
    L15_2(L16_2, L17_2)
  end
  L15_2 = Config
  L15_2 = L15_2.Payments
  L15_2 = L15_2[L2_2]
  L16_2 = Config
  L16_2 = L16_2.multiplyRewardWhileWorkingInGroup
  if L16_2 then
    L16_2 = math
    L16_2 = L16_2.floor
    L17_2 = L9_2.clients
    L17_2 = #L17_2
    L17_2 = L17_2 + 1
    L17_2 = L15_2 * L17_2
    L16_2 = L16_2(L17_2)
    L15_2 = L16_2
  end
  L16_2 = L15_2
  L17_2 = Config
  L17_2 = L17_2.useModernUI
  if L17_2 then
    L17_2 = L9_2.clients
    L17_2 = #L17_2
    if 0 == L17_2 then
      L17_2 = RecalculateRewards
      L18_2 = L1_2
      L17_2(L18_2)
    end
    L17_2 = Config
    L17_2 = L17_2.letBossSplitReward
    if L17_2 then
      L17_2 = math
      L17_2 = L17_2.floor
      L18_2 = L9_2.rewardsOptions
      L18_2 = L18_2[L3_2]
      L18_2 = L18_2 / 100
      L18_2 = L15_2 * L18_2
      L17_2 = L17_2(L18_2)
      L16_2 = L17_2
    else
      L17_2 = math
      L17_2 = L17_2.floor
      L18_2 = L9_2.clients
      L18_2 = #L18_2
      L18_2 = L18_2 + 1
      L18_2 = L15_2 / L18_2
      L17_2 = L17_2(L18_2)
      L16_2 = L17_2
    end
  end
  L17_2 = Config
  L17_2 = L17_2.Debug
  if nil ~= L17_2 then
    L17_2 = print
    L18_2 = "payForClient: "
    L19_2 = L16_2
    L17_2(L18_2, L19_2)
  end
  L17_2 = GetPlayerPed
  L18_2 = L3_2
  L17_2 = L17_2(L18_2)
  L18_2 = GetEntityCoords
  L19_2 = L17_2
  L18_2 = L18_2(L19_2)
  if L18_2 then
    L19_2 = L18_2 - L8_2
    L19_2 = #L19_2
    if L19_2 < 50 then
      L19_2 = Pay
      L20_2 = L3_2
      L21_2 = L16_2
      L19_2(L20_2, L21_2)
  end
  else
    L19_2 = print
    L20_2 = "ID"
    L21_2 = L3_2
    L22_2 = "attempted to get paid in Electrician, but hes too far from working location. Propably a cheater"
    L19_2(L20_2, L21_2, L22_2)
  end
  L19_2 = GetPlayerIdentifierFromId
  L20_2 = L3_2
  L19_2 = L19_2(L20_2)
  L14_2 = L19_2
  L19_2 = PlayerCourses
  L19_2 = L19_2[L14_2]
  if nil == L19_2 then
    L19_2 = PlayerCourses
    L19_2[L14_2] = 0
  end
  L19_2 = PlayerCourses
  L20_2 = PlayerCourses
  L20_2 = L20_2[L14_2]
  L20_2 = L20_2 + 1
  L19_2[L14_2] = L20_2
  L19_2 = PlayerCourses
  L19_2 = L19_2[L14_2]
  L20_2 = Config
  L20_2 = L20_2.MinimumCoursesToMedium
  if L19_2 == L20_2 then
    L19_2 = Notify
    L20_2 = L3_2
    L21_2 = Config
    L21_2 = L21_2.Lang
    L21_2 = L21_2.PromotionMedium
    L19_2(L20_2, L21_2)
  end
  L19_2 = PlayerCourses
  L19_2 = L19_2[L14_2]
  L20_2 = Config
  L20_2 = L20_2.MinimumCoursesToHard
  if L19_2 == L20_2 then
    L19_2 = Notify
    L20_2 = L3_2
    L21_2 = Config
    L21_2 = L21_2.Lang
    L21_2 = L21_2.PromotionHard
    L19_2(L20_2, L21_2)
  end
end
L7_1(L8_1, L9_1)
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = pairs
  L2_2 = L0_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.host
    if L7_2 == A0_2 then
      L6_2.diff = nil
      L6_2.succes = false
      L6_2.hostReady = true
      L6_2.clientReady = true
      break
    end
  end
end
RestartVariables = L7_1
L7_1 = RegisterNetEvent
L8_1 = "17mov_Electrician:thisClientIsReady"
L7_1(L8_1)
L7_1 = AddEventHandler
L8_1 = "17mov_Electrician:thisClientIsReady"
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  if false == A1_2 then
    A1_2 = nil
  end
  if "host" == A0_2 then
    L2_2 = source
    L3_2 = pairs
    L4_2 = L0_1
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = L8_2.host
      if L9_2 == L2_2 then
        L8_2.hostReady = A1_2
        break
      end
    end
  elseif "client" == A0_2 then
    L2_2 = source
    L3_2 = pairs
    L4_2 = L0_1
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = 1
      L10_2 = L8_2.clients
      L10_2 = #L10_2
      L11_2 = 1
      for L12_2 = L9_2, L10_2, L11_2 do
        L13_2 = L8_2.clients
        L13_2 = L13_2[L12_2]
        if L13_2 == L2_2 then
          L8_2.clientReady = A1_2
          break
        end
      end
    end
  end
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "17mov_Electrician:TruckCantSpawn"
L7_1(L8_1)
L7_1 = AddEventHandler
L8_1 = "17mov_Electrician:TruckCantSpawn"
function L9_1(A0_2, A1_2)
  local L2_2
  L2_2 = Config
  L2_2 = L2_2.JobLocations
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2[A1_2]
  L2_2.ready = true
end
L7_1(L8_1, L9_1)
L7_1 = AddEventHandler
L8_1 = "playerDropped"
function L9_1()
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
      L4_2 = "17mov_Electrician:clearMyLobby"
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
    else
      L3_2 = TriggerForAllMembers
      L4_2 = L2_2
      L5_2 = "17mov_Electrician:RefreshMugs"
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
      L4_2 = "17mov_Electrician:clearMyLobby"
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
      L3_2 = L0_1
      L3_2[L1_2] = nil
    end
  end
end
L7_1(L8_1, L9_1)
