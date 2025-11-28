local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1
L0_1 = {}
L1_1 = {}
L2_1 = {}
L3_1 = Config
L3_1 = L3_1.LimitLobbyToTwoMembers
if L3_1 then
  L3_1 = 2
  if L3_1 then
    goto lbl_16
  end
end
L3_1 = 4
::lbl_16::
L4_1 = {}
L5_1 = {}
L6_1 = {}
L7_1 = GetPlayerIdentifierByType
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if nil == A0_2 then
    L2_2 = 0
    return L2_2
  end
  L2_2 = L7_1
  if nil ~= L2_2 then
    L2_2 = L7_1
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
GetPlayerIdentifierByType = L8_1
L8_1 = GetPlayerPing
function L9_1(A0_2)
  local L1_2, L2_2
  if A0_2 then
    L1_2 = type
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if "number" == L1_2 then
      L1_2 = L8_1
      L2_2 = A0_2
      return L1_2(L2_2)
  end
  else
    L1_2 = 0
    return L1_2
  end
end
GetPlayerPing = L9_1
L9_1 = Config
L9_1.EnableRestoreAfterCrash = false
function L9_1(A0_2)
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
  L5_2 = "17mov_lumberjack:SetMyReward"
  L6_2 = math
  L6_2 = L6_2.floor
  L7_2 = 100
  L7_2 = L7_2 / L2_2
  L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L3_2 = TriggerClientEvent
  L4_2 = "17mov_lumberjack:UpdateHostPercentages"
  L5_2 = A0_2
  L6_2 = math
  L6_2 = L6_2.floor
  L7_2 = 100
  L7_2 = L7_2 / L2_2
  L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end
RecalculateRewards = L9_1
function L9_1(A0_2, A1_2)
  local L2_2
  L2_2 = L2_1
  L2_2[A0_2] = A1_2
end
RegisterServerCallback = L9_1
L9_1 = RegisterNetEvent
L10_1 = "17mov_Callbacks:GetResponse"
L11_1 = GetCurrentResourceName
L11_1 = L11_1()
L10_1 = L10_1 .. L11_1
function L11_1(A0_2, A1_2, ...)
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
L9_1(L10_1, L11_1)
L9_1 = RegisterServerCallback
L10_1 = "17mov_lumberjack:requestLogsData"
function L11_1(A0_2)
  local L1_2
  L1_2 = L4_1
  return L1_2
end
L9_1(L10_1, L11_1)
L9_1 = RegisterServerCallback
L10_1 = "17mov_lumberjack:GetTreesData"
function L11_1(A0_2)
  local L1_2, L2_2
  while true do
    L1_2 = L5_1
    L1_2 = #L1_2
    if 0 ~= L1_2 then
      break
    end
    L1_2 = Wait
    L2_2 = 100
    L1_2(L2_2)
  end
  L1_2 = L5_1
  return L1_2
end
L9_1(L10_1, L11_1)
L9_1 = RegisterServerCallback
L10_1 = "17mov_Lumberjack:GetPrice"
function L11_1(A0_2, A1_2, A2_2)
  local L3_2
  if "sellChips" == A2_2 then
    L3_2 = Config
    L3_2 = L3_2.Stations
    L3_2 = L3_2[A2_2]
    L3_2 = L3_2[A1_2]
    L3_2 = L3_2.pricePerPercent
    return L3_2
  elseif "sellLogs" == A2_2 then
    L3_2 = Config
    L3_2 = L3_2.Stations
    L3_2 = L3_2[A2_2]
    L3_2 = L3_2[A1_2]
    L3_2 = L3_2.pricePerLog
    return L3_2
  else
    L3_2 = Config
    L3_2 = L3_2.Stations
    L3_2 = L3_2[A2_2]
    if nil ~= L3_2 then
      L3_2 = Config
      L3_2 = L3_2.Stations
      L3_2 = L3_2[A2_2]
      L3_2 = L3_2[A1_2]
      if nil ~= L3_2 then
        L3_2 = Config
        L3_2 = L3_2.Stations
        L3_2 = L3_2[A2_2]
        L3_2 = L3_2[A1_2]
        L3_2 = L3_2.pricePerPallete
        if nil ~= L3_2 then
          L3_2 = Config
          L3_2 = L3_2.Stations
          L3_2 = L3_2[A2_2]
          L3_2 = L3_2[A1_2]
          L3_2 = L3_2.pricePerPallete
          return L3_2
        end
      end
    end
  end
end
L9_1(L10_1, L11_1)
L9_1 = RegisterServerCallback
L10_1 = "17mov_lumberjack:CheckIfCanWithdrawTruck"
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = GetLobbyIndex
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L0_1
  L2_2 = L2_2[L1_2]
  L2_2 = L2_2.logCarHidden
  if L2_2 then
    L2_2 = L0_1
    L2_2 = L2_2[L1_2]
    L2_2 = L2_2.JobTruck
    if not L2_2 then
      L2_2 = true
      return L2_2
    else
      L2_2 = Notify
      L3_2 = A0_2
      L4_2 = Config
      L4_2 = L4_2.Lang
      L4_2 = L4_2.alreadyRentedOneTruck
      L2_2(L3_2, L4_2)
      L2_2 = false
      return L2_2
    end
  else
    L2_2 = Notify
    L3_2 = A0_2
    L4_2 = Config
    L4_2 = L4_2.Lang
    L4_2 = L4_2.LogCarNotHidden
    L2_2(L3_2, L4_2)
    L2_2 = false
    return L2_2
  end
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "17mov_Lumberjack:UpdateLogCounter"
function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = source
  L1_2 = GetLobbyIndex
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if 0 == L1_2 then
    return
  end
  L2_2 = TriggerForAllMembers
  L3_2 = L0_1
  L3_2 = L3_2[L1_2]
  L3_2 = L3_2.host
  L4_2 = "17mov_Lumberjack:UpdateLogCounter"
  L2_2(L3_2, L4_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterServerCallback
L10_1 = "17mov_lumberjack:getVehicles"
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = GetLobbyIndex
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L0_1
  L2_2 = L2_2[L1_2]
  L2_2 = L2_2.JobVehicle
  if not L2_2 then
    L2_2 = nil
  end
  L3_2 = L0_1
  L3_2 = L3_2[L1_2]
  L3_2 = L3_2.JobFlatbed
  if not L3_2 then
    L3_2 = nil
  end
  return L2_2, L3_2
end
L9_1(L10_1, L11_1)
L9_1 = RegisterServerCallback
L10_1 = "17mov_lumberjack:CheckIfCanRentForklift"
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = GetLobbyIndex
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L0_1
  L2_2 = L2_2[L1_2]
  L2_2 = L2_2.JobForklift
  if not L2_2 then
    L2_2 = true
    return L2_2
  else
    L2_2 = Notify
    L3_2 = A0_2
    L4_2 = Config
    L4_2 = L4_2.Lang
    L4_2 = L4_2.alreadyRentedOneForklift
    L2_2(L3_2, L4_2)
    L2_2 = false
    return L2_2
  end
end
L9_1(L10_1, L11_1)
L9_1 = RegisterServerCallback
L10_1 = "17mov_lumberjack:CheckThisReward"
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = 0
  L4_2 = pairs
  L5_2 = L0_1
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L9_2.host
    if A0_2 == L10_2 then
      L3_2 = L8_2
      break
    end
    L10_2 = 1
    L11_2 = L9_2.clients
    L11_2 = #L11_2
    L12_2 = 1
    for L13_2 = L10_2, L11_2, L12_2 do
      L14_2 = L9_2.clients
      L14_2 = L14_2[L13_2]
      if A0_2 == L14_2 then
        L3_2 = L8_2
        break
      end
    end
  end
  L4_2 = 0
  L5_2 = pairs
  L6_2 = L0_1
  L6_2 = L6_2[L3_2]
  L6_2 = L6_2.rewardsOptions
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    if L9_2 ~= A2_2 then
      L4_2 = L4_2 + L10_2
    end
  end
  L5_2 = L4_2 + A1_2
  if L5_2 > 100 then
    L5_2 = false
    return L5_2
  else
    L5_2 = L0_1
    L5_2 = L5_2[L3_2]
    L5_2 = L5_2.rewardsOptions
    L5_2[A2_2] = A1_2
    L5_2 = TriggerClientEvent
    L6_2 = "17mov_lumberjack:SetMyReward"
    L7_2 = A2_2
    L8_2 = A1_2
    L5_2(L6_2, L7_2, L8_2)
    L5_2 = true
    return L5_2
  end
end
L9_1(L10_1, L11_1)
L9_1 = RegisterServerCallback
L10_1 = "17mov_lumberjack:GetPlayersNames"
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = {}
  L3_2 = 1
  L4_2 = #A1_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L2_2
    L9_2 = {}
    L10_2 = A1_2[L6_2]
    L9_2.id = L10_2
    L10_2 = GetPlayerIdentity
    L11_2 = A1_2[L6_2]
    L10_2 = L10_2(L11_2)
    L9_2.name = L10_2
    L7_2(L8_2, L9_2)
  end
  return L2_2
end
L9_1(L10_1, L11_1)
L9_1 = RegisterServerCallback
L10_1 = "17mov_lumberjack:GetLobbyMembers"
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  if nil == A1_2 then
    L2_2 = {}
    return L2_2
  end
  L2_2 = {}
  L3_2 = A1_2
  L2_2[1] = L3_2
  L3_2 = pairs
  L4_2 = L0_1
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.host
    if L9_2 == A1_2 then
      L9_2 = 1
      L10_2 = L8_2.clients
      L10_2 = #L10_2
      L11_2 = 1
      for L12_2 = L9_2, L10_2, L11_2 do
        L13_2 = table
        L13_2 = L13_2.insert
        L14_2 = L2_2
        L15_2 = L8_2.clients
        L15_2 = L15_2[L12_2]
        L13_2(L14_2, L15_2)
      end
    end
  end
  return L2_2
end
L9_1(L10_1, L11_1)
L9_1 = RegisterServerCallback
L10_1 = "17mov_lumberjack:IfPlayerOwnsTeam"
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = false
  L2_2 = pairs
  L3_2 = L0_1
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.host
    if L8_2 == A0_2 then
      L1_2 = true
      break
    end
  end
  return L1_2
end
L9_1(L10_1, L11_1)
L9_1 = RegisterServerCallback
L10_1 = "17mov_lumberjack:IfPlayerIsHost"
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = true
  L2_2 = 0
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
      if L13_2 == A0_2 then
        L1_2 = false
        L2_2 = L7_2
        break
      end
    end
  end
  L3_2 = L0_1
  L3_2 = L3_2[L2_2]
  if nil ~= L3_2 then
    L3_2 = L0_1
    L3_2 = L3_2[L2_2]
    L3_2 = L3_2.host
    if A0_2 == L3_2 then
      L3_2 = true
      return L3_2
    end
  end
  if not L1_2 then
    L3_2 = GetPlayerPing
    L4_2 = L0_1
    L4_2 = L4_2[L2_2]
    L4_2 = L4_2.host
    L3_2 = L3_2(L4_2)
    if 0 == L3_2 then
      L1_2 = true
      L3_2 = L0_1
      L3_2 = L3_2[L2_2]
      L3_2.host = A0_2
    end
  end
  return L1_2
end
L9_1(L10_1, L11_1)
L9_1 = RegisterServerCallback
L10_1 = "17mov_lumberjack:init"
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  L2_2 = GetPlayerIdentity
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L1_2.name = L2_2
  L1_2.source = A0_2
  return L1_2
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "17mov_lumberjack:SendRequestToClient_sv"
L9_1(L10_1)
L9_1 = AddEventHandler
L10_1 = "17mov_lumberjack:SendRequestToClient_sv"
function L11_1(A0_2)
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
  L4_2 = "17mov_lumberjack:SendRequestToClient_cl"
  L5_2 = A0_2
  L6_2 = GetPlayerIdentity
  L7_2 = L1_2
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L6_2(L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "17mov_lumberjack:ClientReactRequest"
L9_1(L10_1)
L9_1 = AddEventHandler
L10_1 = "17mov_lumberjack:ClientReactRequest"
function L11_1(A0_2)
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
      L7_2 = "17mov_lumberjack:RefreshMugs"
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
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "17mov_lumberjack:KickPlayerFromLobby"
L9_1(L10_1)
L9_1 = AddEventHandler
L10_1 = "17mov_lumberjack:KickPlayerFromLobby"
function L11_1(A0_2, A1_2, A2_2)
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
  L7_2 = "17mov_lumberjack:RefreshMugs"
  L8_2 = L3_2
  L9_2 = L5_2
  L10_2 = L3_2
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L6_2 = TriggerClientEvent
  L7_2 = "17mov_lumberjack:clearMyLobby"
  L8_2 = L3_2
  L6_2(L7_2, L8_2)
  L6_2 = TriggerClientEvent
  L7_2 = "17mov_lumberjack:SetMyReward"
  L8_2 = L3_2
  L9_2 = 100
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = GetAllPartyMugs
  L7_2 = L4_2
  L6_2 = L6_2(L7_2)
  L7_2 = TriggerForAllMembers
  L8_2 = L4_2
  L9_2 = "17mov_lumberjack:RefreshMugs"
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
        L14_2 = "17mov_lumberjack:clearMyLobby"
        L15_2 = L4_2
        L13_2(L14_2, L15_2)
      end
    end
  end
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "17mov_lumberjack:UnloadThisLog"
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = Config
  L2_2 = L2_2.Stations
  L2_2 = L2_2.sellLogs
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2.pricePerLog
  L3_2 = GetLobbyIndex
  L4_2 = source
  L3_2 = L3_2(L4_2)
  L4_2 = TriggerForAllMembers
  L5_2 = L0_1
  L5_2 = L5_2[L3_2]
  L5_2 = L5_2.host
  L6_2 = "17mov_Lumberjack:UnloadThisLog"
  L7_2 = A1_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = pairs
  L5_2 = Config
  L5_2 = L5_2.Stations
  L5_2 = L5_2.sellLogs
  L5_2 = L5_2[A0_2]
  L5_2 = L5_2.itemRewards
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L0_1
    L10_2 = L10_2[L3_2]
    L10_2 = L10_2.logsItems
    L11_2 = L9_2.item_name
    L10_2 = L10_2[L11_2]
    if nil == L10_2 then
      L10_2 = L0_1
      L10_2 = L10_2[L3_2]
      L10_2 = L10_2.logsItems
      L11_2 = L9_2.item_name
      L10_2[L11_2] = 0
    end
    L10_2 = math
    L10_2 = L10_2.random
    L11_2 = 100
    L10_2 = L10_2(L11_2)
    L11_2 = L9_2.chance
    if L10_2 <= L11_2 then
      L10_2 = L0_1
      L10_2 = L10_2[L3_2]
      L10_2 = L10_2.logsItems
      L11_2 = L9_2.item_name
      L12_2 = L0_1
      L12_2 = L12_2[L3_2]
      L12_2 = L12_2.logsItems
      L13_2 = L9_2.item_name
      L12_2 = L12_2[L13_2]
      L13_2 = L9_2.amountPerLog
      L12_2 = L12_2 + L13_2
      L10_2[L11_2] = L12_2
    end
  end
  L4_2 = L0_1
  L4_2 = L4_2[L3_2]
  L5_2 = L0_1
  L5_2 = L5_2[L3_2]
  L5_2 = L5_2.cash
  L5_2 = L5_2 + L2_2
  L4_2.cash = L5_2
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "17mov_Lumberjack:ClearThisIDSkip"
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = L4_1
  L3_2 = L3_2[A1_2]
  if nil ~= L3_2 then
    L3_2 = pairs
    L4_2 = L4_1
    L4_2 = L4_2[A1_2]
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = L8_2.slot
      if L9_2 == A2_2 then
        L9_2 = L8_2.type
        if "skip" == L9_2 then
          L9_2 = L4_1
          L9_2 = L9_2[A1_2]
          L9_2[L7_2] = nil
        end
      end
    end
  end
  L3_2 = TriggerClientEvent
  L4_2 = "17mov_Lumberjack:DeleteThisSlotObj"
  L5_2 = -1
  L6_2 = A2_2
  L7_2 = A1_2
  L8_2 = "skip"
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "17mov_Lumberjack:ClearThisIDPlank"
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = L4_1
  L3_2 = L3_2[A1_2]
  if nil ~= L3_2 then
    L3_2 = pairs
    L4_2 = L4_1
    L4_2 = L4_2[A1_2]
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = L8_2.slot
      if L9_2 == A2_2 then
        L9_2 = L8_2.type
        if "planks" == L9_2 then
          L9_2 = L4_1
          L9_2 = L9_2[A1_2]
          L9_2[L7_2] = nil
        end
      end
    end
  end
  L3_2 = TriggerClientEvent
  L4_2 = "17mov_Lumberjack:DeleteThisSlotObj"
  L5_2 = -1
  L6_2 = A2_2
  L7_2 = A1_2
  L8_2 = "planks"
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "17mov_lumberjack:UnloadThisPlank"
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = GetLobbyIndex
  L3_2 = source
  L2_2 = L2_2(L3_2)
  L3_2 = TriggerForAllMembers
  L4_2 = L0_1
  L4_2 = L4_2[L2_2]
  L4_2 = L4_2.host
  L5_2 = "17mov_Lumberjack:UnloadThisPlank"
  L6_2 = A0_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = Config
  L3_2 = L3_2.Stations
  L3_2 = L3_2.sellPlanks
  L3_2 = L3_2[A1_2]
  L3_2 = L3_2.pricePerPallete
  L4_2 = L0_1
  L4_2 = L4_2[L2_2]
  L5_2 = L0_1
  L5_2 = L5_2[L2_2]
  L5_2 = L5_2.cash
  L5_2 = L5_2 + L3_2
  L4_2.cash = L5_2
  L4_2 = pairs
  L5_2 = Config
  L5_2 = L5_2.Stations
  L5_2 = L5_2.sellPlanks
  L5_2 = L5_2[A1_2]
  L5_2 = L5_2.itemRewards
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L0_1
    L10_2 = L10_2[L2_2]
    L10_2 = L10_2.plankItems
    L11_2 = L9_2.item_name
    L10_2 = L10_2[L11_2]
    if nil == L10_2 then
      L10_2 = L0_1
      L10_2 = L10_2[L2_2]
      L10_2 = L10_2.plankItems
      L11_2 = L9_2.item_name
      L10_2[L11_2] = 0
    end
    L10_2 = math
    L10_2 = L10_2.random
    L11_2 = 100
    L10_2 = L10_2(L11_2)
    L11_2 = L9_2.chance
    if L10_2 <= L11_2 then
      L10_2 = L0_1
      L10_2 = L10_2[L2_2]
      L10_2 = L10_2.plankItems
      L11_2 = L9_2.item_name
      L12_2 = L0_1
      L12_2 = L12_2[L2_2]
      L12_2 = L12_2.plankItems
      L13_2 = L9_2.item_name
      L12_2 = L12_2[L13_2]
      L13_2 = L9_2.amountPerPallete
      L12_2 = L12_2 + L13_2
      L10_2[L11_2] = L12_2
    end
  end
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "17mov_lumberjack:UnloadThisSkip"
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = GetLobbyIndex
  L3_2 = source
  L2_2 = L2_2(L3_2)
  L3_2 = TriggerForAllMembers
  L4_2 = L0_1
  L4_2 = L4_2[L2_2]
  L4_2 = L4_2.host
  L5_2 = "17mov_Lumberjack:UnloadThisSkip"
  L6_2 = A0_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = Config
  L3_2 = L3_2.Stations
  L3_2 = L3_2.sellChips
  L3_2 = L3_2[A1_2]
  L3_2 = L3_2.pricePerPercent
  L4_2 = L0_1
  L4_2 = L4_2[L2_2]
  L4_2 = L4_2.skipsStatus
  L4_2 = L4_2[A0_2]
  L3_2 = L3_2 * L4_2
  L4_2 = pairs
  L5_2 = Config
  L5_2 = L5_2.Stations
  L5_2 = L5_2.sellChips
  L5_2 = L5_2[A1_2]
  L5_2 = L5_2.itemRewards
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L0_1
    L10_2 = L10_2[L2_2]
    L10_2 = L10_2.chipsItems
    L11_2 = L9_2.item_name
    L10_2 = L10_2[L11_2]
    if nil == L10_2 then
      L10_2 = L0_1
      L10_2 = L10_2[L2_2]
      L10_2 = L10_2.chipsItems
      L11_2 = L9_2.item_name
      L10_2[L11_2] = 0
    end
    L10_2 = math
    L10_2 = L10_2.random
    L11_2 = 100
    L10_2 = L10_2(L11_2)
    L11_2 = L9_2.chance
    if L10_2 <= L11_2 then
      L10_2 = L0_1
      L10_2 = L10_2[L2_2]
      L10_2 = L10_2.chipsItems
      L11_2 = L9_2.item_name
      L12_2 = L0_1
      L12_2 = L12_2[L2_2]
      L12_2 = L12_2.chipsItems
      L13_2 = L9_2.item_name
      L12_2 = L12_2[L13_2]
      L13_2 = L9_2.amountPerPercent
      L14_2 = L0_1
      L14_2 = L14_2[L2_2]
      L14_2 = L14_2.skipsStatus
      L14_2 = L14_2[A0_2]
      L13_2 = L13_2 * L14_2
      L12_2 = L12_2 + L13_2
      L10_2[L11_2] = L12_2
    end
  end
  L4_2 = L0_1
  L4_2 = L4_2[L2_2]
  L4_2 = L4_2.skipsStatus
  L4_2[A0_2] = 0
  L4_2 = L0_1
  L4_2 = L4_2[L2_2]
  L5_2 = L0_1
  L5_2 = L5_2[L2_2]
  L5_2 = L5_2.cash
  L5_2 = L5_2 + L3_2
  L4_2.cash = L5_2
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "17mov_Lumberjack:ForkliftDeleted"
function L11_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = GetLobbyIndex
  L1_2 = source
  L0_2 = L0_2(L1_2)
  L1_2 = DeleteEntity
  L2_2 = NetworkGetEntityFromNetworkId
  L3_2 = L0_1
  L3_2 = L3_2[L0_2]
  L3_2 = L3_2.JobForklift
  L2_2, L3_2 = L2_2(L3_2)
  L1_2(L2_2, L3_2)
  L1_2 = L0_1
  L1_2 = L1_2[L0_2]
  L1_2.JobForklift = nil
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "17mov_Lumberjack:StartAnimation"
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = GetLobbyIndex
  L2_2 = source
  L1_2 = L1_2(L2_2)
  L2_2 = TriggerForAllMembers
  L3_2 = L0_1
  L3_2 = L3_2[L1_2]
  L3_2 = L3_2.host
  L4_2 = "17mov_Lumberjack:StartAnimation"
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "17mov_Lumberjack:SetProcessedPlanksCount"
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = TriggerForAllMembers
  L2_2 = GetLobbyIndex
  L3_2 = source
  L2_2 = L2_2(L3_2)
  L3_2 = L0_1
  L2_2 = L3_2[L2_2]
  L2_2 = L2_2.host
  L3_2 = "17mov_lumberjack:SetProcessedPlanksCount"
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "17mov_lumberjack:StartLoopOnThisFlatbed"
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = pairs
  L2_2 = L4_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    if L5_2 == A0_2 and nil ~= L6_2 then
      L7_2 = 1
      L8_2 = #L6_2
      L9_2 = 1
      for L10_2 = L7_2, L8_2, L9_2 do
        L11_2 = L6_2[L10_2]
        L11_2 = L11_2.stopLoop
        if nil ~= L11_2 then
          L11_2 = L6_2[L10_2]
          L11_2.stopLoop = nil
        end
      end
    end
  end
  L1_2 = TriggerClientEvent
  L2_2 = "17mov_lumberjack:StartLoopOnThisFlatbed"
  L3_2 = -1
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "17mov_lumberjack:StopLoopOnThisFlatbed"
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = pairs
  L2_2 = L4_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    if L5_2 == A0_2 then
      L7_2 = 1
      L8_2 = #L6_2
      L9_2 = 1
      for L10_2 = L7_2, L8_2, L9_2 do
        L11_2 = L6_2[L10_2]
        L11_2.stopLoop = nil
      end
    end
  end
  L1_2 = TriggerClientEvent
  L2_2 = "17mov_lumberjack:StopLoopOnThisFlatbed"
  L3_2 = -1
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "17mov_lumberjack:endJob_sv"
L9_1(L10_1)
L9_1 = AddEventHandler
L10_1 = "17mov_lumberjack:endJob_sv"
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L1_2 = source
  L2_2 = TriggerForAllMembers
  L3_2 = L1_2
  L4_2 = "17mov_lumberjack:endJob_cl"
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
      L8_2 = L8_2.EnableVehicleLegacyMode
      if not L8_2 then
        L8_2 = pairs
        L9_2 = L6_1
        L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
        for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
          L14_2 = L13_2.lobbyIndex
          if L14_2 == L6_2 then
            L14_2 = L6_1
            L14_2[L12_2] = nil
            L14_2 = TriggerClientEvent
            L15_2 = "17mov_Lumberjack:RefreshCranes"
            L16_2 = -1
            L17_2 = L6_1
            L14_2(L15_2, L16_2, L17_2)
          end
        end
      end
      L8_2 = CreateThread
      function L9_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3
        L0_3 = L7_2.JobVehicle
        L1_3 = L7_2.JobFlatbed
        L2_3 = L7_2.JobTruck
        L3_3 = L7_2.JobForklift
        L4_3 = L7_2.JobPickup
        L5_3 = L7_2.JobVehicle2
        L6_3 = NetworkGetEntityFromNetworkId
        L7_3 = L0_3
        L6_3 = L6_3(L7_3)
        L7_3 = NetworkGetEntityFromNetworkId
        L8_3 = L1_3
        L7_3 = L7_3(L8_3)
        L8_3 = NetworkGetEntityFromNetworkId
        L9_3 = L2_3
        L8_3 = L8_3(L9_3)
        L9_3 = NetworkGetEntityFromNetworkId
        L10_3 = L3_3
        L9_3 = L9_3(L10_3)
        L10_3 = NetworkGetEntityFromNetworkId
        L11_3 = L4_3
        L10_3 = L10_3(L11_3)
        L11_3 = NetworkGetEntityFromNetworkId
        L12_3 = L5_3
        L11_3 = L11_3(L12_3)
        L12_3 = DeleteEntity
        L13_3 = L6_3
        L12_3(L13_3)
        if 0 ~= L7_3 then
          L12_3 = DeleteEntity
          L13_3 = L7_3
          L12_3(L13_3)
          L12_3 = L4_1
          L12_3[L1_3] = nil
          L12_3 = TriggerClientEvent
          L13_3 = "17mov_Lumberjack:ClearThisFlatbed"
          L14_3 = -1
          L15_3 = L1_3
          L12_3(L13_3, L14_3, L15_3)
        end
        if 0 ~= L8_3 then
          L12_3 = DeleteEntity
          L13_3 = L8_3
          L12_3(L13_3)
        end
        if 0 ~= L9_3 then
          L12_3 = DeleteEntity
          L13_3 = L9_3
          L12_3(L13_3)
        end
        if 0 ~= L10_3 then
          L12_3 = DeleteEntity
          L13_3 = L10_3
          L12_3(L13_3)
        end
        if 0 ~= L11_3 then
          L12_3 = DeleteEntity
          L13_3 = L11_3
          L12_3(L13_3)
        end
      end
      L8_2(L9_2)
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
      L9_2 = L7_2.cash
      L7_2.cash = 0
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
            goto lbl_133
          end
          L16_2 = Config
          L16_2 = L16_2.DontPayRewardWithoutVehicle
          if false ~= L16_2 then
            goto lbl_133
          end
        end
        L16_2 = CreateThread
        function L17_2()
          local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
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
            L3_3 = L7_2.logsItems
            L4_3 = L7_2.plankItems
            L5_3 = L7_2.chipsItems
            L6_3 = L8_2
            L6_3 = #L6_3
            L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3)
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
        ::lbl_133::
      end
      L11_2 = L7_2.clients
      L11_2 = #L11_2
      if 0 == L11_2 then
        L11_2 = L0_1
        L11_2[L6_2] = nil
        L11_2 = TriggerClientEvent
        L12_2 = "17mov_lumberjack:clearMyLobby"
        L13_2 = L1_2
        L11_2(L12_2, L13_2)
      end
    end
  end
end
L9_1(L10_1, L11_1)
L9_1 = CreateThread
function L10_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = ipairs
  L1_2 = Config
  L1_2 = L1_2.TreeSpawningCoords
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = L5_1
    L7_2 = {}
    L6_2[L4_2] = L7_2
    L6_2 = L5_1
    L6_2 = L6_2[L4_2]
    L6_2.coords = L5_2
    L6_2 = L5_1
    L6_2 = L6_2[L4_2]
    L6_2.isAvalible = true
  end
end
L9_1(L10_1)
L9_1 = RegisterNetEvent
L10_1 = "17mov_lumberjack:logCarHidden"
function L11_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = GetLobbyIndex
  L1_2 = source
  L0_2 = L0_2(L1_2)
  L1_2 = L0_1
  L1_2 = L1_2[L0_2]
  L1_2.logCarHidden = true
  L1_2 = Notify
  L2_2 = source
  L3_2 = Config
  L3_2 = L3_2.Lang
  L3_2 = L3_2.logCarHidden
  L1_2(L2_2, L3_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "17mov_lumberjack:SpawnLocalPlanks"
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = source
  L2_2 = GetLobbyIndex
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = GetPlayerPing
  L4_2 = L0_1
  L4_2 = L4_2[L2_2]
  L4_2 = L4_2.host
  L3_2 = L3_2(L4_2)
  if 0 == L3_2 then
    L3_2 = 1
    L4_2 = L0_1
    L4_2 = L4_2[L2_2]
    L4_2 = L4_2.clients
    L5_2 = i
    L4_2 = L4_2[L5_2]
    L4_2 = #L4_2
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = GetPlayerPing
      L8_2 = L0_1
      L8_2 = L8_2[L2_2]
      L8_2 = L8_2.clients
      L8_2 = L8_2[L6_2]
      L7_2 = L7_2(L8_2)
      if 0 ~= L7_2 then
        L7_2 = L0_1
        L7_2 = L7_2[L2_2]
        L8_2 = L0_1
        L8_2 = L8_2[L2_2]
        L8_2 = L8_2.clients
        L8_2 = L8_2[L6_2]
        L7_2.host = L8_2
        break
      end
    end
  end
  L3_2 = L0_1
  L3_2 = L3_2[L2_2]
  L3_2 = L3_2.host
  if L3_2 ~= L1_2 then
    return
  end
  L3_2 = TriggerForAllMembers
  L4_2 = L0_1
  L4_2 = L4_2[L2_2]
  L4_2 = L4_2.host
  L5_2 = "17mov_Lumberjack:SpawnLocalPlanks"
  L6_2 = A0_2
  L3_2(L4_2, L5_2, L6_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "17mov_Lumberjack:ForkliftUpdate"
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = GetLobbyIndex
  L3_2 = source
  L2_2 = L2_2(L3_2)
  L3_2 = TriggerForAllMembers
  L4_2 = L0_1
  L4_2 = L4_2[L2_2]
  L4_2 = L4_2.host
  L5_2 = "17mov_Lumberjack:ForkliftUpdate"
  L6_2 = A0_2
  L7_2 = A1_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "17mov_Lumberjack:AttachLogToLumberCar"
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = TriggerClientEvent
  L4_2 = "17mov_Lumberjack:AttachLogToLumberCar"
  L5_2 = -1
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "17mov_Lumberjack:DetachObjFromLumber"
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = GetLobbyIndex
  L4_2 = source
  L3_2 = L3_2(L4_2)
  L4_2 = TriggerClientEvent
  L5_2 = "17mov_Lumberjack:DetachObjFromLumber"
  L6_2 = -1
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = A2_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "17mov_Lumberjack:PlaySound"
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = TriggerClientEvent
  L4_2 = "17mov_Lumberjack:PlaySound"
  L5_2 = -1
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A2_2 or L8_2
  if not A2_2 then
    L8_2 = false
  end
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "17mov_lumberjack:StartFallAnim"
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = TriggerClientEvent
  L3_2 = "17mov_lumberjack:StartFallAnim"
  L4_2 = -1
  L5_2 = A0_2
  L6_2 = A1_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = GetLobbyIndex
  L3_2 = source
  L2_2 = L2_2(L3_2)
  L3_2 = TriggerForAllMembers
  L4_2 = L0_1
  L4_2 = L4_2[L2_2]
  L4_2 = L4_2.host
  L5_2 = "17mov_Lumberjack:updateCounter"
  L3_2(L4_2, L5_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "17mov_Lumberjack:3dBoxState"
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = GetLobbyIndex
  L2_2 = source
  L1_2 = L1_2(L2_2)
  L2_2 = TriggerForAllMembers
  L3_2 = L0_1
  L3_2 = L3_2[L1_2]
  L3_2 = L3_2.host
  L4_2 = "17mov_Lumberjack:3dBoxState"
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "17mov_Lumberjack:AttachLog"
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = GetLobbyIndex
  L4_2 = source
  L3_2 = L3_2(L4_2)
  L4_2 = L4_1
  L4_2 = L4_2[A1_2]
  if nil == L4_2 then
    L4_2 = L4_1
    L5_2 = {}
    L4_2[A1_2] = L5_2
  end
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = L4_1
  L5_2 = L5_2[A1_2]
  L6_2 = {}
  L6_2.netid = A1_2
  L6_2.slot = A0_2
  L6_2.type = "logs"
  L4_2(L5_2, L6_2)
  L4_2 = TriggerClientEvent
  L5_2 = "17mov_Lumberjack:AttachLog_CL"
  L6_2 = -1
  L7_2 = A1_2
  L8_2 = A0_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = TriggerForAllMembers
  L5_2 = L0_1
  L5_2 = L5_2[L3_2]
  L5_2 = L5_2.host
  L6_2 = "17mov_Lumberjack:SaveObject"
  L7_2 = A1_2
  L8_2 = A0_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = DoesEntityExist
  L5_2 = NetworkGetEntityFromNetworkId
  L6_2 = A2_2
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if L4_2 then
    L4_2 = DeleteEntity
    L5_2 = NetworkGetEntityFromNetworkId
    L6_2 = A2_2
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "17mov_Lumberjack:AttachPallete"
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = GetLobbyIndex
  L3_2 = source
  L2_2 = L2_2(L3_2)
  L3_2 = L4_1
  L3_2 = L3_2[A0_2]
  if nil == L3_2 then
    L3_2 = L4_1
    L4_2 = {}
    L3_2[A0_2] = L4_2
  end
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = L4_1
  L4_2 = L4_2[A0_2]
  L5_2 = {}
  L5_2.netid = A0_2
  L5_2.slot = A1_2
  L5_2.type = "planks"
  L3_2(L4_2, L5_2)
  L3_2 = TriggerForAllMembers
  L4_2 = L0_1
  L4_2 = L4_2[L2_2]
  L4_2 = L4_2.host
  L5_2 = "17mov_Lumberjack:SavePlankObject"
  L6_2 = A0_2
  L7_2 = A1_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = TriggerClientEvent
  L4_2 = "17mov_Lumberjack:AttachPallete"
  L5_2 = -1
  L6_2 = A0_2
  L7_2 = A1_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "17mov_Lumberjack:AttachSkipToTrailer"
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = GetLobbyIndex
  L4_2 = source
  L3_2 = L3_2(L4_2)
  L4_2 = L4_1
  L4_2 = L4_2[A0_2]
  if nil == L4_2 then
    L4_2 = L4_1
    L5_2 = {}
    L4_2[A0_2] = L5_2
  end
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = L4_1
  L5_2 = L5_2[A0_2]
  L6_2 = {}
  L6_2.netid = A0_2
  L6_2.slot = A1_2
  L6_2.type = "skip"
  L6_2.offset = A2_2
  L4_2(L5_2, L6_2)
  L4_2 = TriggerForAllMembers
  L5_2 = L0_1
  L5_2 = L5_2[L3_2]
  L5_2 = L5_2.host
  L6_2 = "17mov_Lumberjack:SaveSkipObject"
  L7_2 = A0_2
  L8_2 = A1_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = TriggerClientEvent
  L5_2 = "17mov_Lumberjack:AttachLocalSkip"
  L6_2 = -1
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = A2_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "17mov_lumberjack:AddChipsToQueue"
function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = source
  L1_2 = GetLobbyIndex
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = GetPlayerPing
  L3_2 = L0_1
  L3_2 = L3_2[L1_2]
  L3_2 = L3_2.host
  L2_2 = L2_2(L3_2)
  if 0 == L2_2 then
    L2_2 = 1
    L3_2 = L0_1
    L3_2 = L3_2[L1_2]
    L3_2 = L3_2.clients
    L3_2 = #L3_2
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = GetPlayerPing
      L7_2 = L0_1
      L7_2 = L7_2[L1_2]
      L7_2 = L7_2.clients
      L7_2 = L7_2[L5_2]
      L6_2 = L6_2(L7_2)
      if 0 ~= L6_2 then
        L6_2 = L0_1
        L6_2 = L6_2[L1_2]
        L7_2 = L0_1
        L7_2 = L7_2[L1_2]
        L7_2 = L7_2.clients
        L7_2 = L7_2[L5_2]
        L6_2.host = L7_2
        break
      end
    end
  end
  L2_2 = L0_1
  L2_2 = L2_2[L1_2]
  L2_2 = L2_2.host
  if L2_2 ~= L0_2 then
    return
  end
  L2_2 = TriggerForAllMembers
  L3_2 = L0_1
  L3_2 = L3_2[L1_2]
  L3_2 = L3_2.host
  L4_2 = "17mov_Lumberjack:AddChipsToQueue"
  L2_2(L3_2, L4_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "17mov_Lumberjack:AttachSkip"
function L11_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L4_2 = source
  L5_2 = GetLobbyIndex
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L6_2 = TriggerForAllMembers
  L7_2 = L0_1
  L7_2 = L7_2[L5_2]
  L7_2 = L7_2.host
  L8_2 = "17mov_Lumberjack:AttachSkip"
  L9_2 = A0_2
  L10_2 = A1_2
  L11_2 = A2_2
  L12_2 = A3_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "17mov_Lumberjack:LiftChips"
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = source
  L2_2 = GetLobbyIndex
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = GetPlayerPing
  L4_2 = L0_1
  L4_2 = L4_2[L2_2]
  L4_2 = L4_2.host
  L3_2 = L3_2(L4_2)
  if 0 == L3_2 then
    L3_2 = 1
    L4_2 = L0_1
    L4_2 = L4_2[L2_2]
    L4_2 = L4_2.clients
    L5_2 = i
    L4_2 = L4_2[L5_2]
    L4_2 = #L4_2
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = GetPlayerPing
      L8_2 = L0_1
      L8_2 = L8_2[L2_2]
      L8_2 = L8_2.clients
      L8_2 = L8_2[L6_2]
      L7_2 = L7_2(L8_2)
      if 0 ~= L7_2 then
        L7_2 = L0_1
        L7_2 = L7_2[L2_2]
        L8_2 = L0_1
        L8_2 = L8_2[L2_2]
        L8_2 = L8_2.clients
        L8_2 = L8_2[L6_2]
        L7_2.host = L8_2
        break
      end
    end
  end
  L3_2 = L0_1
  L3_2 = L3_2[L2_2]
  L3_2 = L3_2.host
  if L3_2 ~= L1_2 then
    return
  end
  L3_2 = L0_1
  L3_2 = L3_2[L2_2]
  L3_2 = L3_2.skipsStatus
  L4_2 = L0_1
  L4_2 = L4_2[L2_2]
  L4_2 = L4_2.skipsStatus
  L4_2 = L4_2[A0_2]
  L4_2 = L4_2 + 1
  L3_2[A0_2] = L4_2
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "17mov_Lumberjack:ClearThisIDLog"
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = source
  L4_2 = GetLobbyIndex
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if nil ~= A1_2 then
    L5_2 = L4_1
    L5_2 = L5_2[A1_2]
    if nil ~= L5_2 then
      L5_2 = pairs
      L6_2 = L4_1
      L6_2 = L6_2[A1_2]
      L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
      for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
        if nil ~= L10_2 then
          L11_2 = L10_2.slot
          if nil ~= L11_2 then
            L11_2 = L10_2.type
            if nil ~= L11_2 then
              L11_2 = L10_2.slot
              if L11_2 == A2_2 then
                L11_2 = L10_2.type
                if "logs" == L11_2 then
                  L11_2 = L4_1
                  L11_2 = L11_2[A1_2]
                  L11_2[L9_2] = nil
                end
              end
            end
          end
        end
      end
    end
  end
  L5_2 = TriggerClientEvent
  L6_2 = "17mov_Lumberjack:DeleteThisSlotObj"
  L7_2 = -1
  L8_2 = A2_2
  L9_2 = A1_2
  L10_2 = "logs"
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L5_2 = L0_1
  L5_2 = L5_2[L4_2]
  if nil ~= L5_2 then
    L5_2 = L0_1
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2.host
    if nil ~= L5_2 then
      L5_2 = TriggerForAllMembers
      L6_2 = L0_1
      L6_2 = L6_2[L4_2]
      L6_2 = L6_2.host
      L7_2 = "17mov_Lumberjack:ClearThisIDLog"
      L8_2 = A0_2
      L5_2(L6_2, L7_2, L8_2)
    end
  end
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "17mov_lumberjack:StartPlanksProcessing"
function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = source
  L1_2 = GetLobbyIndex
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L0_1
  L2_2 = L2_2[L1_2]
  L2_2.planksProcessed = true
  L2_2 = TriggerForAllMembers
  L3_2 = L0_1
  L3_2 = L3_2[L1_2]
  L3_2 = L3_2.host
  L4_2 = "17mov_Lumberjack:PlanksProcessed"
  L2_2(L3_2, L4_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "17mov_lumberjack:StartChipsProcessing"
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = source
  L2_2 = GetLobbyIndex
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = TriggerForAllMembers
  L4_2 = L0_1
  L4_2 = L4_2[L2_2]
  L4_2 = L4_2.host
  L5_2 = "17mov_Lumberjack:StartChipsProcessing"
  L6_2 = L1_2
  L7_2 = A0_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "17mov_Lumberjack:DisableViaAboveSpawn"
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = source
  L2_2 = GetLobbyIndex
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = TriggerForAllMembers
  L4_2 = L0_1
  L4_2 = L4_2[L2_2]
  L4_2 = L4_2.host
  L5_2 = "17mov_Lumberjack:DisableViaAboveSpawn"
  L6_2 = A0_2
  L3_2(L4_2, L5_2, L6_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "17mov_Lumberjack:EnableViaAboveLift"
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = source
  L2_2 = GetLobbyIndex
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = TriggerForAllMembers
  L4_2 = L0_1
  L4_2 = L4_2[L2_2]
  L4_2 = L4_2.host
  L5_2 = "17mov_Lumberjack:EnableViaAboveLift"
  L6_2 = A0_2
  L3_2(L4_2, L5_2, L6_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "17mov_Lumberjack:disableThisTree"
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L5_1
  L1_2 = L1_2[A0_2]
  if nil ~= L1_2 then
    L1_2 = L5_1
    L1_2 = L1_2[A0_2]
    L1_2.isAvalible = false
  end
  L1_2 = TriggerClientEvent
  L2_2 = "17mov_Lumberjack:DeleteThisID"
  L3_2 = -1
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = Wait
  L2_2 = Config
  L2_2 = L2_2.TreeRespawnTime
  L1_2(L2_2)
  L1_2 = L5_1
  L1_2 = L1_2[A0_2]
  if nil ~= L1_2 then
    L1_2 = L5_1
    L1_2 = L1_2[A0_2]
    L1_2.isAvalible = true
  end
  L1_2 = TriggerClientEvent
  L2_2 = "17mov_Lumberjack:RespawnThisTree"
  L3_2 = -1
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "17mov_Lumberjack:ResetTractors"
function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = source
  L1_2 = GetLobbyIndex
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = TriggerForAllMembers
  L3_2 = L0_1
  L3_2 = L3_2[L1_2]
  L3_2 = L3_2.host
  L4_2 = "17mov_Lumberjack:ResetTractors"
  L2_2(L3_2, L4_2)
end
L9_1(L10_1, L11_1)
L9_1 = {}
L10_1 = RegisterNetEvent
L11_1 = "17mov_lumberjack:StartJob_sv"
L10_1(L11_1)
L10_1 = AddEventHandler
L11_1 = "17mov_lumberjack:StartJob_sv"
function L12_1()
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
      L1_2 = L8_2.clients
      L2_2 = L7_2
      break
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
          return L7_2(L8_2, L9_2)
        end
      end
    end
  end
  L3_2 = IsHaveRequiredItem
  L4_2 = L0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = Notify
    L4_2 = L0_2
    L5_2 = Config
    L5_2 = L5_2.Lang
    L5_2 = L5_2.dontHaveReqItem
    return L3_2(L4_2, L5_2)
  end
  L3_2 = Config
  L3_2 = L3_2.RequireItemFromWholeTeam
  if L3_2 and nil ~= L1_2 then
    L3_2 = 1
    L4_2 = #L1_2
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = IsHaveRequiredItem
      L8_2 = L1_2[L6_2]
      L7_2 = L7_2(L8_2)
      if not L7_2 then
        L7_2 = Notify
        L8_2 = L0_2
        L9_2 = Config
        L9_2 = L9_2.Lang
        L9_2 = L9_2.dontHaveReqItem
        return L7_2(L8_2, L9_2)
      end
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
    L5_2 = L9_1
    L5_2 = L5_2[L4_2]
    if L5_2 then
      L5_2 = CooldownsTime
      L5_2 = L5_2[L4_2]
      L5_2 = L3_2 - L5_2
      L6_2 = Config
      L6_2 = L6_2.JobCooldown
      if L5_2 >= L6_2 then
        L6_2 = L9_1
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
        L10_2 = L9_1
        L10_2 = L10_2[L9_2]
        if L10_2 then
          L10_2 = CooldownsTime
          L10_2 = L10_2[L9_2]
          L10_2 = L3_2 - L10_2
          L11_2 = Config
          L11_2 = L11_2.JobCooldown
          if L10_2 >= L11_2 then
            L11_2 = L9_1
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
    L5_2 = L9_1
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
        L10_2 = L9_1
        L10_2[L9_2] = true
        L10_2 = CooldownsTime
        L10_2[L9_2] = L3_2
      end
    end
  end
  L3_2 = Config
  L3_2 = L3_2.RequireOneFriendMinimum
  if L3_2 then
    if nil ~= L1_2 then
      L3_2 = #L1_2
    end
    if L3_2 < 1 then
      L3_2 = Notify
      L4_2 = L0_2
      L5_2 = Config
      L5_2 = L5_2.Lang
      L5_2 = L5_2.RequireOneFriend
      return L3_2(L4_2, L5_2)
    end
  elseif nil == L1_2 then
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = L0_1
    L5_2 = {}
    L5_2.host = L0_2
    L6_2 = {}
    L5_2.clients = L6_2
    L3_2(L4_2, L5_2)
    L3_2 = pairs
    L4_2 = L0_1
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = L8_2.host
      if L9_2 == L0_2 then
        L2_2 = L7_2
      end
    end
  end
  L3_2 = L0_1
  L3_2 = L3_2[L2_2]
  L3_2.logCarHidden = false
  L3_2 = L0_1
  L3_2 = L3_2[L2_2]
  L3_2.JobTruck = nil
  L3_2 = L0_1
  L3_2 = L3_2[L2_2]
  L3_2.JobForklift = nil
  L3_2 = L0_1
  L3_2 = L3_2[L2_2]
  L3_2.working = true
  L3_2 = L0_1
  L3_2 = L3_2[L2_2]
  L3_2.cash = 0
  L3_2 = L0_1
  L3_2 = L3_2[L2_2]
  L3_2.planksProcessed = false
  L3_2 = L0_1
  L3_2 = L3_2[L2_2]
  L4_2 = {}
  L3_2.plankItems = L4_2
  L3_2 = L0_1
  L3_2 = L3_2[L2_2]
  L4_2 = {}
  L3_2.chipsItems = L4_2
  L3_2 = L0_1
  L3_2 = L3_2[L2_2]
  L4_2 = {}
  L3_2.logsItems = L4_2
  L3_2 = L0_1
  L3_2 = L3_2[L2_2]
  L4_2 = {}
  L4_2[1] = 0
  L4_2[2] = 0
  L4_2[3] = 0
  L3_2.skipsStatus = L4_2
  L3_2 = TriggerForAllMembers
  L4_2 = L0_2
  L5_2 = "17mov_lumberjack:StartJob_cl"
  L6_2 = L0_2
  L7_2 = L0_1
  L7_2 = L7_2[L2_2]
  L7_2 = L7_2.clients
  L7_2 = #L7_2
  L7_2 = L7_2 + 1
  L8_2 = L0_1
  L8_2 = L8_2[L2_2]
  L8_2 = L8_2.clients
  L8_2 = L8_2[1]
  if not L8_2 then
    L8_2 = nil
  end
  L9_2 = L0_1
  L9_2 = L9_2[L2_2]
  L9_2 = L9_2.clients
  L9_2 = L9_2[2]
  if not L9_2 then
    L9_2 = nil
  end
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
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
function L10_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
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
        if "17mov_lumberjack:RefreshMugs" == A1_2 then
          L12_2 = TriggerClientEvent
          L13_2 = A1_2
          L14_2 = L11_2
          L15_2 = A2_2
          L16_2 = L11_2
          L17_2 = A3_2
          L18_2 = A4_2
          L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
        elseif "17mov_lumberjack:StartJob_cl" == A1_2 then
          L12_2 = TriggerClientEvent
          L13_2 = A1_2
          L14_2 = L11_2
          L15_2 = A2_2
          L16_2 = L11_2
          L17_2 = A3_2
          L18_2 = A4_2
          L19_2 = A5_2
          L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
        elseif "17mov_lumberjackJob:sendMixer_cl" == A1_2 then
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
          L17_2 = A4_2
          L18_2 = A5_2
          L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
        end
      end
    end
  end
end
TriggerForAllMembers = L10_1
L10_1 = RegisterNetEvent
L11_1 = "17mov_lumberjack:SendVehicleToClients"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = source
  L3_2 = GetLobbyIndex
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = L0_1
  L4_2 = L4_2[L3_2]
  L4_2[A0_2] = A1_2
  L4_2 = TriggerForAllMembers
  L5_2 = L0_1
  L5_2 = L5_2[L3_2]
  L5_2 = L5_2.host
  L6_2 = "17mov_lumberjack:SendVehicleToClients"
  L7_2 = A0_2
  L8_2 = A1_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNetEvent
L11_1 = "17mov_Lumberjack:TreeFallen"
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = pairs
  L2_2 = A0_2
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    if nil ~= L6_2 then
      L7_2 = false
      L8_2 = CreateObject
      L9_2 = L6_2.hash
      L10_2 = L6_2.coords
      L10_2 = L10_2.x
      L11_2 = L6_2.coords
      L11_2 = L11_2.y
      L12_2 = L6_2.coords
      L12_2 = L12_2.z
      L13_2 = true
      L14_2 = true
      L15_2 = true
      L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
      L9_2 = GetGameTimer
      L9_2 = L9_2()
      L9_2 = L9_2 + 250
      while true do
        L10_2 = DoesEntityExist
        L11_2 = L8_2
        L10_2 = L10_2(L11_2)
        if L10_2 then
          break
        end
        L10_2 = DoesEntityExist
        L11_2 = L8_2
        L10_2 = L10_2(L11_2)
        if L10_2 then
          L10_2 = DeleteEntity
          L11_2 = L8_2
          L10_2(L11_2)
        end
        L10_2 = GetGameTimer
        L10_2 = L10_2()
        if L9_2 < L10_2 then
          L7_2 = true
          L10_2 = DoesEntityExist
          L11_2 = L8_2
          L10_2 = L10_2(L11_2)
          if L10_2 then
            L10_2 = DeleteEntity
            L11_2 = L8_2
            L10_2(L11_2)
          end
          break
        end
        L10_2 = Wait
        L11_2 = 100
        L10_2(L11_2)
      end
      if not L7_2 then
        L10_2 = SetEntityHeading
        L11_2 = L8_2
        L12_2 = L6_2.heading
        L10_2(L11_2, L12_2)
      end
    end
  end
end
L10_1(L11_1, L12_1)
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
        L3_2 = L3_2(L4_2)
        L4_2 = L0_1
        L4_2 = L4_2[L1_2]
        L4_2.host = L3_2
      else
        L3_2 = GetIdentifier
        L4_2 = L0_2
        L3_2 = L3_2(L4_2)
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
      L4_2 = "17mov_lumberjack:clearMyLobby"
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
    else
      L3_2 = TriggerForAllMembers
      L4_2 = L2_2
      L5_2 = "17mov_lumberjack:RefreshMugs"
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
      L4_2 = "17mov_lumberjack:clearMyLobby"
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
      L3_2 = L0_1
      L3_2[L1_2] = nil
    end
  end
end
L10_1(L11_1, L12_1)
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = L6_1
  L2_2 = L2_2[A1_2]
  if L2_2 then
    L2_2 = {}
    L3_2 = 1
    L4_2 = L6_1
    L4_2 = L4_2[A1_2]
    L5_2 = L4_2.lobbyIndex
    L4_2 = L0_1
    L4_2 = L4_2[L5_2]
    L4_2 = L4_2.clients
    L4_2 = #L4_2
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = L2_2
      L9_2 = L6_1
      L9_2 = L9_2[A1_2]
      L10_2 = L9_2.lobbyIndex
      L9_2 = L0_1
      L9_2 = L9_2[L10_2]
      L9_2 = L9_2.clients
      L9_2 = L9_2[L6_2]
      L7_2(L8_2, L9_2)
    end
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = L2_2
    L5_2 = L6_1
    L5_2 = L5_2[A1_2]
    L6_2 = L5_2.lobbyIndex
    L5_2 = L0_1
    L5_2 = L5_2[L6_2]
    L5_2 = L5_2.host
    L3_2(L4_2, L5_2)
    L3_2 = 1
    L4_2 = #L2_2
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = L2_2[L6_2]
      if L7_2 == A0_2 then
        L7_2 = true
        return L7_2
      end
    end
  end
  L2_2 = false
  return L2_2
end
IsAuthorizedToCrane = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = GetPlayerPed
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = DoesEntityExist
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = NetworkGetNetworkIdFromEntity
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    L3_2 = 0
    while 0 == L2_2 or L2_2 == L1_2 do
      L4_2 = Citizen
      L4_2 = L4_2.Wait
      L5_2 = 100
      L4_2(L5_2)
      L3_2 = L3_2 + 1
      L4_2 = NetworkGetNetworkIdFromEntity
      L5_2 = L1_2
      L4_2 = L4_2(L5_2)
      L2_2 = L4_2
      if 3 == L3_2 then
        break
      end
    end
    if nil ~= L2_2 and 0 ~= L2_2 and L2_2 ~= L1_2 then
      return L2_2
    else
      L4_2 = 0
      return L4_2
    end
  end
end
GetPlayerPedNetId = L10_1
L10_1 = RegisterNetEvent
L11_1 = "17mov_Lumberjack:SpawnCrane"
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = source
  L2_2 = GetLobbyIndex
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = {}
  L4_2 = L6_1
  L4_2 = #L4_2
  L4_2 = L4_2 + 1
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = L3_2
  L7_2 = GetPlayerPedNetId
  L8_2 = L0_1
  L8_2 = L8_2[L2_2]
  L8_2 = L8_2.host
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L7_2(L8_2)
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L5_2 = 1
  L6_2 = L0_1
  L6_2 = L6_2[L2_2]
  L6_2 = L6_2.clients
  L6_2 = #L6_2
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L3_2
    L11_2 = GetPlayerPedNetId
    L12_2 = L0_1
    L12_2 = L12_2[L2_2]
    L12_2 = L12_2.clients
    L12_2 = L12_2[L8_2]
    L11_2, L12_2 = L11_2(L12_2)
    L9_2(L10_2, L11_2, L12_2)
  end
  L5_2 = L6_1
  L6_2 = {}
  L6_2.owner = L1_2
  L6_2.players = L3_2
  L6_2.netId = A0_2
  L6_2.contentQuantity = 0
  L6_2.lobbyIndex = L2_2
  L5_2[L4_2] = L6_2
  L5_2 = TriggerClientEvent
  L6_2 = "17mov_Lumberjack:RefreshCranes"
  L7_2 = -1
  L8_2 = L6_1
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = TriggerForAllMembers
  L6_2 = L0_1
  L6_2 = L6_2[L2_2]
  L6_2 = L6_2.host
  L7_2 = "17mov_Lumberjack:RemoteCreated"
  L8_2 = L4_2
  L5_2(L6_2, L7_2, L8_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNetEvent
L11_1 = "17mov_Lumberjack:UpdateCrane"
function L12_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L8_2 = source
  L9_2 = IsAuthorizedToCrane
  L10_2 = L8_2
  L11_2 = A0_2
  L9_2 = L9_2(L10_2, L11_2)
  if L9_2 then
    L10_2 = L6_1
    L10_2 = L10_2[A0_2]
    L10_2.hasControl = A1_2
    L10_2 = L6_1
    L10_2 = L10_2[A0_2]
    L10_2.baseRotation = A2_2
    L10_2 = L6_1
    L10_2 = L10_2[A0_2]
    L10_2.hookRotation = A3_2
    L10_2 = L6_1
    L10_2 = L10_2[A0_2]
    L10_2.stick1Rotation = A4_2
    L10_2 = L6_1
    L10_2 = L10_2[A0_2]
    L10_2.stick3Offset = A5_2
    L10_2 = L6_1
    L10_2 = L10_2[A0_2]
    L10_2.grabRotation = A6_2
    L10_2 = 1
    L11_2 = #A7_2
    L12_2 = 1
    for L13_2 = L10_2, L11_2, L12_2 do
      L14_2 = TriggerClientEvent
      L15_2 = "17mov_Lumberjack:UpdateCrane"
      L16_2 = A7_2[L13_2]
      L17_2 = L8_2
      L18_2 = A0_2
      L19_2 = L6_1
      L19_2 = L19_2[A0_2]
      L14_2(L15_2, L16_2, L17_2, L18_2, L19_2)
    end
  end
end
L10_1(L11_1, L12_1)
L10_1 = RegisterServerCallback
L11_1 = "17mov_Lumberjack:RequestCraneControl"
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = IsAuthorizedToCrane
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L4_2 = L6_1
    L4_2 = L4_2[A1_2]
    if L4_2 then
      L4_2 = L6_1
      L4_2 = L4_2[A1_2]
      L4_2 = L4_2.hasControl
      if nil == L4_2 then
        L4_2 = L6_1
        L4_2 = L4_2[A1_2]
        L4_2.hasControl = A2_2
        L4_2 = TriggerClientEvent
        L5_2 = "17mov_Lumberjack:UpdateCrane"
        L6_2 = -1
        L7_2 = A0_2
        L8_2 = A1_2
        L9_2 = L6_1
        L9_2 = L9_2[A1_2]
        L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
        L4_2 = true
        return L4_2
      end
    end
  end
  L4_2 = false
  return L4_2
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNetEvent
L11_1 = "17mov_Lumberjack:DeleteCrane"
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = source
  L2_2 = IsAuthorizedToCrane
  L3_2 = L1_2
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L3_2 = L6_1
    L3_2[A0_2] = nil
    L3_2 = TriggerClientEvent
    L4_2 = "17mov_Lumberjack:RefreshCranes"
    L5_2 = -1
    L6_2 = L6_1
    L3_2(L4_2, L5_2, L6_2)
  end
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNetEvent
L11_1 = "17mov_Lumberjack:RequestCranes"
function L12_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = source
  L1_2 = TriggerClientEvent
  L2_2 = "17mov_Lumberjack:RefreshCranes"
  L3_2 = L0_2
  L4_2 = L6_1
  L1_2(L2_2, L3_2, L4_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNetEvent
L11_1 = "17mov_Lumberjack:RunCraneAction"
function L12_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = source
  L3_2 = IsAuthorizedToCrane
  L4_2 = L2_2
  L5_2 = A0_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L4_2 = TriggerClientEvent
    L5_2 = "17mov_Lumberjack:RunCraneAction"
    L6_2 = -1
    L7_2 = L2_2
    L8_2 = A0_2
    L9_2 = A1_2
    L10_2 = ...
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  end
end
L10_1(L11_1, L12_1)
L10_1 = {}
L11_1 = RegisterNetEvent
L12_1 = "17mov_Lumberjack:StartCraneAction"
function L13_1(A0_2, A1_2, A2_2, ...)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L3_2 = source
  L4_2 = IsAuthorizedToCrane
  L5_2 = L3_2
  L6_2 = A0_2
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    L5_2 = L10_1
    L5_2 = L5_2[A0_2]
    if nil == L5_2 then
      L5_2 = L10_1
      L6_2 = {}
      L5_2[A0_2] = L6_2
    end
    L5_2 = L10_1
    L5_2 = L5_2[A0_2]
    L5_2[A1_2] = A2_2
    L5_2 = 1
    L6_2 = #A2_2
    L7_2 = 1
    for L8_2 = L5_2, L6_2, L7_2 do
      L9_2 = TriggerClientEvent
      L10_2 = "17mov_Lumberjack:StartCraneAction"
      L11_2 = A2_2[L8_2]
      L12_2 = L3_2
      L13_2 = A0_2
      L14_2 = A1_2
      L15_2 = ...
      L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
    end
  end
end
L11_1(L12_1, L13_1)
L11_1 = RegisterNetEvent
L12_1 = "17mov_Lumberjack:StopCraneAction"
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = source
  L3_2 = IsAuthorizedToCrane
  L4_2 = L2_2
  L5_2 = A0_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L4_2 = L10_1
    L4_2 = L4_2[A0_2]
    L4_2 = L4_2[A1_2]
    if L4_2 then
      L5_2 = 1
      L6_2 = #L4_2
      L7_2 = 1
      for L8_2 = L5_2, L6_2, L7_2 do
        L9_2 = TriggerClientEvent
        L10_2 = "17mov_Lumberjack:StopCraneAction"
        L11_2 = L4_2[L8_2]
        L12_2 = L2_2
        L13_2 = A0_2
        L14_2 = A1_2
        L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
      end
    end
  end
end
L11_1(L12_1, L13_1)
L11_1 = RegisterServerCallback
L12_1 = "17mov_Lumberjack:AttachPropToHook"
function L13_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = IsAuthorizedToCrane
  L5_2 = A0_2
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = {}
  L6_2 = 1366334172
  L5_2[L6_2] = 32
  L6_2 = 1597396577
  L5_2[L6_2] = 4
  L6_2 = -1937513394
  L5_2[L6_2] = 2
  if L4_2 then
    L6_2 = L6_1
    L6_2 = L6_2[A1_2]
    L6_2 = L6_2.contentType
    if nil ~= L6_2 then
      L6_2 = L6_1
      L6_2 = L6_2[A1_2]
      L6_2 = L6_2.contentType
      if L6_2 ~= A2_2 then
        goto lbl_31
      end
    end
    L6_2 = L6_1
    L6_2 = L6_2[A1_2]
    L6_2 = L6_2.contentQuantity
    L7_2 = L5_2[A2_2]
    if not (L6_2 >= L7_2) then
      goto lbl_33
    end
  end
  ::lbl_31::
  L6_2 = false
  do return L6_2 end
  ::lbl_33::
  L6_2 = L6_1
  L6_2 = L6_2[A1_2]
  L6_2.attachedProp = A2_2
  L6_2 = L6_1
  L6_2 = L6_2[A1_2]
  L6_2.chipsOffset = A3_2
  L6_2 = true
  return L6_2
end
L11_1(L12_1, L13_1)
L11_1 = RegisterNetEvent
L12_1 = "17mov_Lumberjack:DeleteEntity"
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = source
  L3_2 = GetLobbyIndex
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = TriggerForAllMembers
  L5_2 = L0_1
  L5_2 = L5_2[L3_2]
  L5_2 = L5_2.host
  L6_2 = "17mov_Lumberjack:DeleteEntity"
  L7_2 = A0_2
  L8_2 = A1_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L11_1(L12_1, L13_1)
L11_1 = RegisterServerCallback
L12_1 = "17mov_Lumberjack:AttachPropToTrailer"
function L13_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = IsAuthorizedToCrane
  L5_2 = A0_2
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = {}
  L6_2 = 1366334172
  L5_2[L6_2] = 32
  L6_2 = 1597396577
  L5_2[L6_2] = 4
  L6_2 = -1937513394
  L5_2[L6_2] = 2
  if L4_2 then
    L6_2 = L6_1
    L6_2 = L6_2[A1_2]
    L6_2 = L6_2.contentType
    if nil ~= L6_2 then
      L6_2 = L6_1
      L6_2 = L6_2[A1_2]
      L6_2 = L6_2.contentType
      if L6_2 ~= A2_2 then
        goto lbl_31
      end
    end
    L6_2 = L6_1
    L6_2 = L6_2[A1_2]
    L6_2 = L6_2.contentQuantity
    L7_2 = L5_2[A2_2]
    if not (L6_2 >= L7_2) then
      goto lbl_33
    end
  end
  ::lbl_31::
  L6_2 = false
  do return L6_2 end
  ::lbl_33::
  L6_2 = L6_1
  L6_2 = L6_2[A1_2]
  L6_2 = L6_2.chipsData
  if nil == L6_2 then
    L6_2 = L6_1
    L6_2 = L6_2[A1_2]
    L7_2 = {}
    L6_2.chipsData = L7_2
  end
  L6_2 = table
  L6_2 = L6_2.insert
  L7_2 = L6_1
  L7_2 = L7_2[A1_2]
  L7_2 = L7_2.chipsData
  L8_2 = A3_2
  L6_2(L7_2, L8_2)
  L6_2 = L6_1
  L6_2 = L6_2[A1_2]
  L6_2.contentType = A2_2
  L6_2 = L6_1
  L6_2 = L6_2[A1_2]
  L7_2 = L6_1
  L7_2 = L7_2[A1_2]
  L7_2 = L7_2.contentQuantity
  L7_2 = L7_2 + 1
  L6_2.contentQuantity = L7_2
  L6_2 = L6_1
  L6_2 = L6_2[A1_2]
  L6_2.attachedProp = nil
  L6_2 = true
  return L6_2
end
L11_1(L12_1, L13_1)
L11_1 = RegisterNetEvent
L12_1 = "17mov_Lumberjack:DeleteTrailerProp"
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = source
  L2_2 = L6_1
  L2_2 = L2_2[A0_2]
  if L2_2 then
    L2_2 = L6_1
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2.contentQuantity
    if L2_2 > 0 then
      L2_2 = L6_1
      L2_2 = L2_2[A0_2]
      L3_2 = L6_1
      L3_2 = L3_2[A0_2]
      L3_2 = L3_2.contentQuantity
      L3_2 = L3_2 - 1
      L2_2.contentQuantity = L3_2
      L2_2 = L6_1
      L2_2 = L2_2[A0_2]
      L2_2 = L2_2.contentQuantity
      if L2_2 < 1 then
        L2_2 = L6_1
        L2_2 = L2_2[A0_2]
        L2_2.contentType = nil
      end
      L2_2 = TriggerClientEvent
      L3_2 = "17mov_Lumberjack:UpdateCrane"
      L4_2 = -1
      L5_2 = L1_2
      L6_2 = A0_2
      L7_2 = L6_1
      L7_2 = L7_2[A0_2]
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    end
  end
end
L11_1(L12_1, L13_1)
