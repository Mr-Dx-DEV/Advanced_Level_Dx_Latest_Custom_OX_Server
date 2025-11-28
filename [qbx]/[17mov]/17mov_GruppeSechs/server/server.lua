local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1
L0_1 = {}
L1_1 = {}
L2_1 = {}
L3_1 = {}
L4_1 = {}
L5_1 = {}
L6_1 = Config
L6_1 = L6_1.DefaultMessages
L7_1 = {}
L8_1 = {}
L9_1 = {}
L10_1 = 0
L11_1 = 4
L12_1 = {}
L13_1 = GetPlayerIdentifierByType
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if nil == A0_2 then
    L2_2 = 0
    return L2_2
  end
  L2_2 = L13_1
  if nil ~= L2_2 then
    L2_2 = L13_1
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
GetPlayerIdentifierByType = L14_1
L14_1 = GetPlayerPing
function L15_1(A0_2, ...)
  local L1_2, L2_2, L3_2
  if nil ~= A0_2 then
    L1_2 = L14_1
    L2_2 = A0_2
    L3_2 = ...
    L1_2(L2_2, L3_2)
  end
end
GetPlayerPing = L15_1
L15_1 = TriggerClientEvent
function L16_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2
  if nil ~= A1_2 then
    L2_2 = L15_1
    L3_2 = A0_2
    L4_2 = A1_2
    L5_2 = ...
    L2_2(L3_2, L4_2, L5_2)
  end
end
TriggerClientEvent = L16_1
L16_1 = Config
L16_1.EnableRestoreAfterCrash = false
function L16_1(A0_2, A1_2)
  local L2_2
  L2_2 = L12_1
  L2_2[A0_2] = A1_2
end
RegisterServerCallback = L16_1
function L16_1(A0_2)
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
  L5_2 = "17mov_GruppeSechs:SetMyReward"
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
RecalculateRewards = L16_1
L16_1 = RegisterNetEvent
L17_1 = "17mov_Callbacks:GetResponse"
L18_1 = GetCurrentResourceName
L18_1 = L18_1()
L17_1 = L17_1 .. L18_1
function L18_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2
  L2_2 = L12_1
  L2_2 = L2_2[A0_2]
  if nil == L2_2 then
    return
  end
  L2_2 = source
  L3_2 = L12_1
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
L16_1(L17_1, L18_1)
L16_1 = Citizen
L16_1 = L16_1.CreateThread
function L17_1()
  local L0_2, L1_2, L2_2
  L0_2 = RegisterServerCallback
  L1_2 = "17mov_GruppeSechs:GetVehicleCoords"
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = GetEntityCoords
    L3_3 = NetworkGetEntityFromNetworkId
    L4_3 = A1_3
    L3_3, L4_3 = L3_3(L4_3)
    L2_3 = L2_3(L3_3, L4_3)
    return L2_3
  end
  L0_2(L1_2, L2_2)
  L0_2 = RegisterServerCallback
  L1_2 = "17mov_GruppeSechs:checkPassword"
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = Config
    L2_3 = L2_3.TabletPassword
    if A1_3 == L2_3 then
      L2_3 = table
      L2_3 = L2_3.insert
      L3_3 = L7_1
      L4_3 = A0_3
      L2_3(L3_3, L4_3)
      L2_3 = TriggerClientEvent
      L3_3 = "17mov_GruppeSechs:RefreshLoggedInValue"
      L4_3 = -1
      L5_3 = L7_1
      L5_3 = #L5_3
      L2_3(L3_3, L4_3, L5_3)
      L2_3 = true
      return L2_3
    else
      L2_3 = false
      return L2_3
    end
  end
  L0_2(L1_2, L2_2)
  L0_2 = RegisterServerCallback
  L1_2 = "17mov_GruppeSechs:CheckThisReward"
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
      L6_3 = "17mov_GruppeSechs:SetMyReward"
      L7_3 = A2_3
      L8_3 = A1_3
      L5_3(L6_3, L7_3, L8_3)
      L5_3 = true
      return L5_3
    end
  end
  L0_2(L1_2, L2_2)
  L0_2 = RegisterServerCallback
  L1_2 = "17mov_GruppeSechs:IfPlayerOwnsTeam"
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
  L1_2 = "17mov_GruppeSechs:GetPlayersNames"
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
  L0_2 = RegisterUsableItem
  L1_2 = Config
  L1_2 = L1_2.TabletItemName
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = TriggerClientEvent
    L2_3 = "17mov_GruppeSechs:OpenTablet"
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  L0_2(L1_2, L2_2)
  L0_2 = RegisterServerCallback
  L1_2 = "17mov_GruppeSechs:GetJobVehicleNetId"
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = GetLobbyIndex
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    while true do
      L2_3 = L0_1
      L2_3 = L2_3[L1_3]
      L2_3 = L2_3.vehNetId
      if nil ~= L2_3 then
        break
      end
      L2_3 = Citizen
      L2_3 = L2_3.Wait
      L3_3 = 100
      L2_3(L3_3)
    end
    L2_3 = L0_1
    L2_3 = L2_3[L1_3]
    L2_3 = L2_3.vehNetId
    return L2_3
  end
  L0_2(L1_2, L2_2)
  L0_2 = RegisterServerCallback
  L1_2 = "17mov_GruppeSechs:GetFreeVehBagIndex"
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L1_3 = GetLobbyIndex
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    L2_3 = 0
    L3_3 = 1
    L4_3 = L0_1
    L4_3 = L4_3[L1_3]
    L4_3 = L4_3.clients
    L4_3 = #L4_3
    L5_3 = 1
    for L6_3 = L3_3, L4_3, L5_3 do
      L7_3 = GetPlayerPing
      L8_3 = L0_1
      L8_3 = L8_3[L1_3]
      L8_3 = L8_3.clients
      L8_3 = L8_3[L6_3]
      L7_3 = L7_3(L8_3)
      if 0 ~= L7_3 then
        L2_3 = L2_3 + 1
      end
    end
    L3_3 = GetPlayerPing
    L4_3 = L0_1
    L4_3 = L4_3[L1_3]
    L4_3 = L4_3.host
    L3_3 = L3_3(L4_3)
    if 0 ~= L3_3 then
      L2_3 = L2_3 + 1
    end
    L3_3 = L0_1
    L3_3 = L3_3[L1_3]
    L3_3 = L3_3.host
    L4_3 = L0_1
    L4_3 = L4_3[L1_3]
    L4_3 = L4_3.target
    L5_3 = 1
    L6_3 = 1
    L7_3 = L2_3
    L8_3 = 1
    for L9_3 = L6_3, L7_3, L8_3 do
      L10_3 = L0_1
      L10_3 = L10_3[L1_3]
      L10_3 = L10_3.VehBags
      L10_3 = L10_3[L9_3]
      if not L10_3 then
        L10_3 = L0_1
        L10_3 = L10_3[L1_3]
        L10_3 = L10_3.VehBags
        L10_3[L9_3] = true
        L5_3 = L9_3
        break
      end
    end
    if L5_3 == L2_3 then
      L6_3 = L10_1
      L6_3 = L6_3 + 1
      L7_3 = L8_1
      L8_3 = {}
      L9_3 = L0_1
      L9_3 = L9_3[L1_3]
      L9_3 = L9_3.target
      L8_3.target = L9_3
      L9_3 = L0_1
      L9_3 = L9_3[L1_3]
      L9_3 = L9_3.source
      L8_3.source = L9_3
      L9_3 = GetPlayerIdentity
      L10_3 = L3_3
      L9_3 = L9_3(L10_3)
      L8_3.ownerName = L9_3
      L8_3.transportId = L6_3
      L9_3 = GenerateLoot
      L9_3 = L9_3()
      L8_3.loot = L9_3
      L8_3.Owners = L1_3
      L7_3[L6_3] = L8_3
      L7_3 = L0_1
      L7_3 = L7_3[L1_3]
      L7_3.transportId = L6_3
      L7_3 = TriggerClientEvent
      L8_3 = "17mov_GruppeSechs:UpdateTransports"
      L9_3 = -1
      L10_3 = L8_1
      L7_3(L8_3, L9_3, L10_3)
      L7_3 = Config
      L7_3 = L7_3.enableAtmsFillingUp
      if not L7_3 then
        L7_3 = Config
        L7_3 = L7_3.BankLocations
        L8_3 = L0_1
        L8_3 = L8_3[L1_3]
        L8_3 = L8_3.target
        L7_3 = L7_3[L8_3]
        L7_3 = L7_3.isVault
        if not L7_3 then
          L7_3 = TriggerForAllMembers
          L8_3 = L3_3
          L9_3 = "17mov_GruppeSechs:enableBagPlacing"
          L10_3 = {}
          L10_3.bankId = L4_3
          L11_3 = clients
          L11_3 = #L11_3
          L11_3 = L11_3 + 1
          L10_3.partyCount = L11_3
          L7_3(L8_3, L9_3, L10_3)
        end
      end
    end
    if L5_3 > 0 then
      L6_3 = TriggerForAllMembers
      L7_3 = L0_1
      L7_3 = L7_3[L1_3]
      L7_3 = L7_3.host
      L8_3 = "17mov_GruppeSechs:DeleteHelpVehBag"
      L9_3 = L5_3
      L10_3 = L2_3
      L11_3 = L4_3
      L6_3(L7_3, L8_3, L9_3, L10_3, L11_3)
      return L5_3
    end
  end
  L0_2(L1_2, L2_2)
  L0_2 = RegisterServerCallback
  L1_2 = "17mov_GruppeSechs:IsAllAreBagsThrowed"
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L1_3 = GetLobbyIndex
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    L2_3 = L0_1
    L2_3 = L2_3[L1_3]
    L2_3 = L2_3.target
    L3_3 = 0
    L4_3 = 1
    L5_3 = L0_1
    L5_3 = L5_3[L1_3]
    L5_3 = L5_3.clients
    L5_3 = #L5_3
    L6_3 = 1
    for L7_3 = L4_3, L5_3, L6_3 do
      L8_3 = GetPlayerPing
      L9_3 = L0_1
      L9_3 = L9_3[L1_3]
      L9_3 = L9_3.clients
      L9_3 = L9_3[L7_3]
      L8_3 = L8_3(L9_3)
      if 0 ~= L8_3 then
        L3_3 = L3_3 + 1
      end
    end
    L4_3 = GetPlayerPing
    L5_3 = L0_1
    L5_3 = L5_3[L1_3]
    L5_3 = L5_3.host
    L4_3 = L4_3(L5_3)
    if 0 ~= L4_3 then
      L3_3 = L3_3 + 1
    end
    L4_3 = true
    L5_3 = 1
    L6_3 = L3_3
    L7_3 = 1
    for L8_3 = L5_3, L6_3, L7_3 do
      L9_3 = Config
      L9_3 = L9_3.BankLocations
      L9_3 = L9_3[L2_3]
      L9_3 = L9_3.DeliveryLocations
      L9_3 = L9_3[L8_3]
      L9_3 = L9_3.busy
      if not L9_3 then
        L4_3 = false
        break
      end
    end
    return L4_3
  end
  L0_2(L1_2, L2_2)
  L0_2 = RegisterServerCallback
  L1_2 = "17mov_GruppeSechs:GetFreeDeliveryLocation"
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L1_3 = GetLobbyIndex
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    L2_3 = L0_1
    L2_3 = L2_3[L1_3]
    L2_3 = L2_3.target
    L3_3 = L0_1
    L3_3 = L3_3[L1_3]
    L3_3 = L3_3.host
    L4_3 = 0
    L5_3 = 1
    L6_3 = Config
    L6_3 = L6_3.BankLocations
    L6_3 = L6_3[L2_3]
    L6_3 = L6_3.DeliveryLocations
    L6_3 = #L6_3
    L7_3 = 1
    for L8_3 = L5_3, L6_3, L7_3 do
      L9_3 = Config
      L9_3 = L9_3.BankLocations
      L9_3 = L9_3[L2_3]
      L9_3 = L9_3.DeliveryLocations
      L9_3 = L9_3[L8_3]
      L9_3 = L9_3.busy
      if not L9_3 then
        L9_3 = Config
        L9_3 = L9_3.BankLocations
        L9_3 = L9_3[L2_3]
        L9_3 = L9_3.DeliveryLocations
        L9_3 = L9_3[L8_3]
        L9_3.busy = true
        L4_3 = L8_3
        break
      end
    end
    L5_3 = TriggerForAllMembers
    L6_3 = L3_3
    L7_3 = "17mov_disableHelpDeliveryBag"
    L8_3 = L4_3
    L9_3 = L2_3
    L5_3(L6_3, L7_3, L8_3, L9_3)
    L5_3 = Config
    L5_3 = L5_3.BankLocations
    L5_3 = L5_3[L2_3]
    L5_3 = L5_3.DeliveryLocations
    L5_3 = #L5_3
    if L4_3 == L5_3 then
      L5_3 = TriggerForAllMembers
      L6_3 = L3_3
      L7_3 = "17mov_GruppeSechs:BagsDelivered"
      L5_3(L6_3, L7_3)
    end
    return L4_3
  end
  L0_2(L1_2, L2_2)
  L0_2 = RegisterServerCallback
  L1_2 = "17mov_GruppeSechs:GetLobbyMembers"
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
  L1_2 = "17mov_GruppeSechs:IfPlayerIsCrimeHost"
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L1_3 = true
    L2_3 = pairs
    L3_3 = L1_1
    L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
    for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
      L8_3 = 1
      L9_3 = L7_3.clients
      L9_3 = #L9_3
      L10_3 = 1
      for L11_3 = L8_3, L9_3, L10_3 do
        L12_3 = L7_3.clients
        L12_3 = L12_3[L11_3]
        if L12_3 == A0_3 then
          L1_3 = false
          break
        end
      end
    end
    return L1_3
  end
  L0_2(L1_2, L2_2)
  L0_2 = RegisterServerCallback
  L1_2 = "17mov_GruppeSechs:IfPlayerIsHost"
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
  L1_2 = "17mov_GruppeSechs:init"
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = {}
    L2_3 = GetPlayerIdentity
    L3_3 = A0_3
    L2_3 = L2_3(L3_3)
    L1_3.name = L2_3
    L1_3.source = A0_3
    L2_3 = L6_1
    L1_3.chatMessages = L2_3
    L2_3 = L8_1
    L1_3.transports = L2_3
    return L1_3
  end
  L0_2(L1_2, L2_2)
end
L16_1(L17_1)
L16_1 = RegisterNetEvent
L17_1 = "17mov_GruppeSechs:DeleteNetId"
function L18_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = NetworkGetEntityFromNetworkId
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if nil ~= A0_2 then
    L2_2 = DoesEntityExist
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = DeleteEntity
      L3_2 = L1_2
      L2_2(L3_2)
    end
  end
end
L16_1(L17_1, L18_1)
L16_1 = RegisterNetEvent
L17_1 = "17mov_GruppeSechs:attachEntity"
function L18_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = TriggerClientEvent
  L2_2 = "17mov_GruppeSechs:attachEntity"
  L3_2 = -1
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L16_1(L17_1, L18_1)
L16_1 = RegisterNetEvent
L17_1 = "17mov_GruppeSechs:syncEntity"
function L18_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = TriggerClientEvent
  L4_2 = "17mov_GruppeSechs:syncEntity"
  L5_2 = -1
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L16_1(L17_1, L18_1)
L16_1 = RegisterNetEvent
L17_1 = "17mov_GruppeSechs:NotifyCops"
function L18_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = NotifyCops
  L2_2 = GetEntityCoords
  L3_2 = NetworkGetEntityFromNetworkId
  L4_2 = A0_2
  L3_2, L4_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L4_2 = plate
  L1_2(L2_2, L3_2, L4_2)
end
L16_1(L17_1, L18_1)
L16_1 = RegisterNetEvent
L17_1 = "17mov_GruppeSechs:SendMessage"
function L18_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if "" == A0_2 or " " == A0_2 then
    return
  end
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = L6_1
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = TriggerClientEvent
  L2_2 = "17mov_GruppeSechs:newMessage"
  L3_2 = -1
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L16_1(L17_1, L18_1)
function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = 0
  if A1_2 then
    L3_2 = pairs
    L4_2 = L1_1
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = L8_2.host
      if L9_2 == A0_2 then
        L2_2 = L7_2
        break
      end
      L9_2 = 1
      L10_2 = L8_2.clients
      L10_2 = #L10_2
      L11_2 = 1
      for L12_2 = L9_2, L10_2, L11_2 do
        L13_2 = L8_2.clients
        L13_2 = L13_2[L12_2]
        if L13_2 == A0_2 then
          L2_2 = L7_2
          break
        end
      end
    end
  else
    L3_2 = pairs
    L4_2 = L0_1
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = L8_2.host
      if L9_2 == A0_2 then
        L2_2 = L7_2
        break
      end
      L9_2 = 1
      L10_2 = L8_2.clients
      L10_2 = #L10_2
      L11_2 = 1
      for L12_2 = L9_2, L10_2, L11_2 do
        L13_2 = L8_2.clients
        L13_2 = L13_2[L12_2]
        if L13_2 == A0_2 then
          L2_2 = L7_2
          break
        end
      end
    end
  end
  return L2_2
end
GetLobbyIndex = L16_1
L16_1 = RegisterNetEvent
L17_1 = "17mov_GruppeSechs:doorsOpenedOnTarget"
function L18_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = TriggerForAllMembers
  L3_2 = A0_2
  L4_2 = "17mov_GruppeSechs:doorsOpenedOnTarget_cl"
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L16_1(L17_1, L18_1)
L16_1 = RegisterNetEvent
L17_1 = "17mov_GruppeSechs:LoggedOut"
function L18_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = source
  L1_2 = 1
  L2_2 = L7_1
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L7_1
    L5_2 = L5_2[L4_2]
    if L5_2 == L0_2 then
      L5_2 = L7_1
      L5_2[L4_2] = nil
    end
  end
  L1_2 = TriggerClientEvent
  L2_2 = "17mov_GruppeSechs:RefreshLoggedInValue"
  L3_2 = -1
  L4_2 = L7_1
  L4_2 = #L4_2
  L1_2(L2_2, L3_2, L4_2)
end
L16_1(L17_1, L18_1)
L16_1 = RegisterNetEvent
L17_1 = "17mov_GruppeSechs:disableThisStation"
function L18_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = TriggerClientEvent
  L2_2 = "17mov_GruppeSechs:thisStationIsDisabled"
  L3_2 = -1
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L16_1(L17_1, L18_1)
L16_1 = RegisterNetEvent
L17_1 = "17mov_GruppeSechs:enableThisStation"
function L18_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = TriggerClientEvent
  L2_2 = "17mov_GruppeSechs:thisStationIsEnabled"
  L3_2 = -1
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L16_1(L17_1, L18_1)
L16_1 = RegisterNetEvent
L17_1 = "17mov_GruppeSechs:OneBagGrabbed"
function L18_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = GetLobbyIndex
  L2_2 = source
  L1_2 = L1_2(L2_2)
  L2_2 = L0_1
  L2_2 = L2_2[L1_2]
  L2_2 = L2_2.grabbedBags
  if nil == L2_2 then
    L2_2 = L0_1
    L2_2 = L2_2[L1_2]
    L2_2.grabbedBags = 1
  else
    L2_2 = L0_1
    L2_2 = L2_2[L1_2]
    L3_2 = L0_1
    L3_2 = L3_2[L1_2]
    L3_2 = L3_2.grabbedBags
    L3_2 = L3_2 + 1
    L2_2.grabbedBags = L3_2
  end
  L2_2 = 0
  L3_2 = 1
  L4_2 = L0_1
  L4_2 = L4_2[L1_2]
  L4_2 = L4_2.clients
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = GetPlayerPing
    L8_2 = L0_1
    L8_2 = L8_2[L1_2]
    L8_2 = L8_2.clients
    L8_2 = L8_2[L6_2]
    L7_2 = L7_2(L8_2)
    if 0 ~= L7_2 then
      L2_2 = L2_2 + 1
    end
  end
  L3_2 = GetPlayerPing
  L4_2 = L0_1
  L4_2 = L4_2[L1_2]
  L4_2 = L4_2.host
  L3_2 = L3_2(L4_2)
  if 0 ~= L3_2 then
    L2_2 = L2_2 + 1
  end
  L3_2 = TriggerForAllMembers
  L4_2 = L0_1
  L4_2 = L4_2[L1_2]
  L4_2 = L4_2.host
  L5_2 = "17mov_GruppeSechs:BagGrabbedFromVeh"
  L6_2 = A0_2
  L7_2 = L0_1
  L7_2 = L7_2[L1_2]
  L7_2 = L7_2.grabbedBags
  L8_2 = L2_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L16_1(L17_1, L18_1)
L16_1 = RegisterNetEvent
L17_1 = "17mov_GruppeSechs:SendRequestToClient_sv"
L16_1(L17_1)
L16_1 = AddEventHandler
L17_1 = "17mov_GruppeSechs:SendRequestToClient_sv"
function L18_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = source
  if A1_2 then
    L3_2 = pairs
    L4_2 = L0_1
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = L8_2.working
      if L9_2 then
        L9_2 = L8_2.host
        if L9_2 == A0_2 then
          L9_2 = Notify
          L10_2 = L2_2
          L11_2 = Config
          L11_2 = L11_2.Lang
          L11_2 = L11_2.alreadyInLegalParty
          L9_2(L10_2, L11_2)
          return
        end
        L9_2 = 1
        L10_2 = L8_2.clients
        L10_2 = #L10_2
        L11_2 = 1
        for L12_2 = L9_2, L10_2, L11_2 do
          L13_2 = L8_2.clients
          L13_2 = L13_2[L12_2]
          if L13_2 == A0_2 then
            L13_2 = Notify
            L14_2 = L2_2
            L15_2 = Config
            L15_2 = L15_2.Lang
            L15_2 = L15_2.alreadyInLegalParty
            L13_2(L14_2, L15_2)
            return
          end
        end
      end
    end
    L3_2 = pairs
    L4_2 = L1_1
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = L8_2.host
      if L9_2 == A0_2 then
        L9_2 = Notify
        L10_2 = L2_2
        L11_2 = Config
        L11_2 = L11_2.Lang
        L11_2 = L11_2.isAlreadyHost
        L9_2(L10_2, L11_2)
        return
      else
        L9_2 = 1
        L10_2 = L8_2.clients
        L10_2 = #L10_2
        L11_2 = 1
        for L12_2 = L9_2, L10_2, L11_2 do
          L13_2 = L8_2.clients
          L13_2 = L13_2[L12_2]
          if L13_2 == A0_2 then
            L13_2 = Notify
            L14_2 = L2_2
            L15_2 = Config
            L15_2 = L15_2.Lang
            L15_2 = L15_2.isBusy
            L13_2(L14_2, L15_2)
            return
          end
        end
      end
    end
    L3_2 = pairs
    L4_2 = L2_1
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = L8_2.client
      if L9_2 == A0_2 then
        L9_2 = Notify
        L10_2 = L2_2
        L11_2 = Config
        L11_2 = L11_2.Lang
        L11_2 = L11_2.hasActiveInvite
        L9_2(L10_2, L11_2)
        return
      end
      L9_2 = L8_2.host
      if L9_2 == L2_2 then
        L9_2 = L8_2.client
        if nil ~= L9_2 then
          L9_2 = Notify
          L10_2 = L2_2
          L11_2 = Config
          L11_2 = L11_2.Lang
          L11_2 = L11_2.HaveActiveInvite
          L9_2(L10_2, L11_2)
          return
        end
      end
    end
    L3_2 = {}
    L4_2 = pairs
    L5_2 = L2_1
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
      L10_2 = L9_2.host
      if L10_2 == L2_2 then
        L3_2 = L9_2.clients
      end
    end
    L4_2 = #L3_2
    L4_2 = L4_2 + 1
    L5_2 = L11_1
    if L4_2 >= L5_2 then
      L4_2 = Notify
      L5_2 = L2_2
      L6_2 = Config
      L6_2 = L6_2.Lang
      L6_2 = L6_2.partyIsFull
      L4_2(L5_2, L6_2)
      return
    end
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = L2_1
    L6_2 = {}
    L6_2.host = L2_2
    L6_2.client = A0_2
    L4_2(L5_2, L6_2)
  else
    L3_2 = pairs
    L4_2 = L0_1
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = L8_2.host
      if L9_2 == A0_2 then
        L9_2 = Notify
        L10_2 = L2_2
        L11_2 = Config
        L11_2 = L11_2.Lang
        L11_2 = L11_2.isAlreadyHost
        L9_2(L10_2, L11_2)
        return
      else
        L9_2 = 1
        L10_2 = L8_2.clients
        L10_2 = #L10_2
        L11_2 = 1
        for L12_2 = L9_2, L10_2, L11_2 do
          L13_2 = L8_2.clients
          L13_2 = L13_2[L12_2]
          if L13_2 == A0_2 then
            L13_2 = Notify
            L14_2 = L2_2
            L15_2 = Config
            L15_2 = L15_2.Lang
            L15_2 = L15_2.isBusy
            L13_2(L14_2, L15_2)
            return
          end
        end
      end
    end
    L3_2 = pairs
    L4_2 = L3_1
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = L8_2.client
      if L9_2 == A0_2 then
        L9_2 = Notify
        L10_2 = L2_2
        L11_2 = Config
        L11_2 = L11_2.Lang
        L11_2 = L11_2.hasActiveInvite
        L9_2(L10_2, L11_2)
        return
      end
      L9_2 = L8_2.host
      if L9_2 == L2_2 then
        L9_2 = L8_2.client
        if nil ~= L9_2 then
          L9_2 = Notify
          L10_2 = L2_2
          L11_2 = Config
          L11_2 = L11_2.Lang
          L11_2 = L11_2.HaveActiveInvite
          L9_2(L10_2, L11_2)
          return
        end
      end
    end
    L3_2 = {}
    L4_2 = pairs
    L5_2 = L0_1
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
      L10_2 = L9_2.host
      if L10_2 == L2_2 then
        L3_2 = L9_2.clients
      end
    end
    L4_2 = #L3_2
    L4_2 = L4_2 + 1
    L5_2 = L11_1
    if L4_2 >= L5_2 then
      L4_2 = Notify
      L5_2 = L2_2
      L6_2 = Config
      L6_2 = L6_2.Lang
      L6_2 = L6_2.partyIsFull
      L4_2(L5_2, L6_2)
      return
    end
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = L3_1
    L6_2 = {}
    L6_2.host = L2_2
    L6_2.client = A0_2
    L4_2(L5_2, L6_2)
  end
  L3_2 = Notify
  L4_2 = L2_2
  L5_2 = Config
  L5_2 = L5_2.Lang
  L5_2 = L5_2.inviteSent
  L3_2(L4_2, L5_2)
  L3_2 = TriggerClientEvent
  L4_2 = "17mov_GruppeSechs:SendRequestToClient_cl"
  L5_2 = A0_2
  L6_2 = GetPlayerIdentity
  L7_2 = L2_2
  L6_2 = L6_2(L7_2)
  L7_2 = A1_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L16_1(L17_1, L18_1)
L16_1 = RegisterNetEvent
L17_1 = "17mov_GruppeSechs:ClientReactRequest"
L16_1(L17_1)
L16_1 = AddEventHandler
L17_1 = "17mov_GruppeSechs:ClientReactRequest"
function L18_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = source
  L3_2 = nil
  L4_2 = false
  if A1_2 then
    L5_2 = pairs
    L6_2 = L2_1
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
    for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
      L11_2 = L10_2.client
      L12_2 = source
      if L11_2 == L12_2 then
        L3_2 = L10_2.host
        L11_2 = L2_1
        L11_2[L9_2] = nil
        break
      end
    end
    if A0_2 then
      if nil ~= L3_2 and nil ~= L2_2 then
        L5_2 = pairs
        L6_2 = L1_1
        L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
        for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
          L11_2 = L10_2.host
          if L11_2 == L3_2 then
            L11_2 = L10_2.clients
            if nil ~= L11_2 then
              L11_2 = table
              L11_2 = L11_2.insert
              L12_2 = L10_2.clients
              L13_2 = L2_2
              L11_2(L12_2, L13_2)
              L4_2 = true
            end
          end
        end
        if not L4_2 then
          L5_2 = table
          L5_2 = L5_2.insert
          L6_2 = L1_1
          L7_2 = {}
          L7_2.host = L3_2
          L8_2 = {}
          L9_2 = L2_2
          L8_2[1] = L9_2
          L7_2.clients = L8_2
          L5_2(L6_2, L7_2)
        end
        L5_2 = Notify
        L6_2 = L3_2
        L7_2 = Config
        L7_2 = L7_2.Lang
        L7_2 = L7_2.InviteAccepted
        L5_2(L6_2, L7_2)
        L5_2 = GetAllPartyMugs
        L6_2 = L3_2
        L7_2 = true
        L5_2 = L5_2(L6_2, L7_2)
        L6_2 = TriggerForAllCrimeMembers
        L7_2 = L3_2
        L8_2 = "17mov_GruppeSechs:RefreshCrimeMugs"
        L9_2 = L5_2
        L6_2(L7_2, L8_2, L9_2)
      else
        L5_2 = Notify
        L6_2 = source
        L7_2 = Config
        L7_2 = L7_2.Lang
        L7_2 = L7_2.error
        L5_2(L6_2, L7_2)
        L5_2 = Notify
        L6_2 = L3_2
        L7_2 = Config
        L7_2 = L7_2.Lang
        L7_2 = L7_2.error
        L5_2(L6_2, L7_2)
      end
    else
      L5_2 = Notify
      L6_2 = L3_2
      L7_2 = Config
      L7_2 = L7_2.Lang
      L7_2 = L7_2.InviteDeclined
      L5_2(L6_2, L7_2)
    end
  else
    L5_2 = pairs
    L6_2 = L3_1
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
    for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
      L11_2 = L10_2.client
      L12_2 = source
      if L11_2 == L12_2 then
        L3_2 = L10_2.host
        L11_2 = L3_1
        L11_2[L9_2] = nil
        break
      end
    end
    if A0_2 then
      if nil ~= L3_2 and nil ~= L2_2 then
        L5_2 = pairs
        L6_2 = L0_1
        L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
        for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
          L11_2 = L10_2.host
          if L11_2 == L3_2 then
            L11_2 = L10_2.clients
            if nil ~= L11_2 then
              L11_2 = table
              L11_2 = L11_2.insert
              L12_2 = L10_2.clients
              L13_2 = L2_2
              L11_2(L12_2, L13_2)
              L4_2 = true
            end
          end
        end
        if not L4_2 then
          L5_2 = table
          L5_2 = L5_2.insert
          L6_2 = L0_1
          L7_2 = {}
          L7_2.host = L3_2
          L8_2 = {}
          L9_2 = L2_2
          L8_2[1] = L9_2
          L7_2.clients = L8_2
          L7_2.progress = 0
          L8_2 = {}
          L7_2.blockedWalls = L8_2
          L5_2(L6_2, L7_2)
        end
        L5_2 = Config
        L5_2 = L5_2.useModernUI
        if L5_2 then
          L5_2 = RecalculateRewards
          L6_2 = L3_2
          L5_2(L6_2)
        end
        L5_2 = Notify
        L6_2 = L3_2
        L7_2 = Config
        L7_2 = L7_2.Lang
        L7_2 = L7_2.InviteAccepted
        L5_2(L6_2, L7_2)
        L5_2 = GetAllPartyMugs
        L6_2 = L3_2
        L5_2 = L5_2(L6_2)
        L6_2 = TriggerForAllMembers
        L7_2 = L3_2
        L8_2 = "17mov_GruppeSechs:RefreshMugs"
        L9_2 = L5_2
        L6_2(L7_2, L8_2, L9_2)
      else
        L5_2 = Notify
        L6_2 = source
        L7_2 = Config
        L7_2 = L7_2.Lang
        L7_2 = L7_2.error
        L5_2(L6_2, L7_2)
        L5_2 = Notify
        L6_2 = L3_2
        L7_2 = Config
        L7_2 = L7_2.Lang
        L7_2 = L7_2.error
        L5_2(L6_2, L7_2)
      end
    else
      L5_2 = Notify
      L6_2 = L3_2
      L7_2 = Config
      L7_2 = L7_2.Lang
      L7_2 = L7_2.InviteDeclined
      L5_2(L6_2, L7_2)
    end
  end
end
L16_1(L17_1, L18_1)
L16_1 = RegisterNetEvent
L17_1 = "17mov_GruppeSechs:KickPlayerFromLobby"
L16_1(L17_1)
L16_1 = AddEventHandler
L17_1 = "17mov_GruppeSechs:KickPlayerFromLobby"
function L18_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L4_2 = A0_2
  L5_2 = nil
  if A3_2 then
    if nil == A2_2 then
      L5_2 = source
      L6_2 = pairs
      L7_2 = L1_1
      L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
      for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
        L12_2 = 1
        L13_2 = L11_2.clients
        L13_2 = #L13_2
        L14_2 = 1
        for L15_2 = L12_2, L13_2, L14_2 do
          L16_2 = L11_2.host
          if L16_2 == L5_2 then
            L16_2 = L11_2.clients
            L16_2 = L16_2[L15_2]
            if L16_2 == L4_2 then
              L16_2 = L11_2.clients
              L16_2[L15_2] = nil
              break
            end
          end
        end
      end
    else
      L6_2 = pairs
      L7_2 = L1_1
      L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
      for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
        L12_2 = 1
        L13_2 = L11_2.clients
        L13_2 = #L13_2
        L14_2 = 1
        for L15_2 = L12_2, L13_2, L14_2 do
          L16_2 = L11_2.clients
          L16_2 = L16_2[L15_2]
          if L16_2 == A2_2 then
            L5_2 = L11_2.host
            L16_2 = L11_2.clients
            L16_2[L15_2] = nil
            break
          end
        end
      end
    end
    if A1_2 then
      L6_2 = Notify
      L7_2 = L4_2
      L8_2 = Config
      L8_2 = L8_2.Lang
      L8_2 = L8_2.kickedOut
      L6_2(L7_2, L8_2)
    end
    L6_2 = {}
    L7_2 = {}
    L7_2.id = L4_2
    L8_2 = GetPlayerIdentity
    L9_2 = L4_2
    L8_2 = L8_2(L9_2)
    L7_2.name = L8_2
    L7_2.isHost = true
    L6_2[1] = L7_2
    L7_2 = TriggerClientEvent
    L8_2 = "17mov_GruppeSechs:RefreshCrimeMugs"
    L9_2 = L4_2
    L10_2 = L6_2
    L11_2 = L4_2
    L7_2(L8_2, L9_2, L10_2, L11_2)
    L7_2 = GetAllPartyMugs
    L8_2 = L5_2
    L9_2 = true
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = TriggerForAllCrimeMembers
    L9_2 = L5_2
    L10_2 = "17mov_GruppeSechs:RefreshCrimeMugs"
    L11_2 = L7_2
    L8_2(L9_2, L10_2, L11_2)
    L8_2 = pairs
    L9_2 = L1_1
    L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
    for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
      L14_2 = L13_2.clients
      L14_2 = #L14_2
      if 0 == L14_2 then
        L14_2 = L13_2.host
        if L14_2 == L5_2 then
          L14_2 = L1_1
          L14_2[L12_2] = nil
        end
      end
    end
  else
    if nil == A2_2 then
      L5_2 = source
      L6_2 = pairs
      L7_2 = L0_1
      L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
      for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
        L12_2 = 1
        L13_2 = L11_2.clients
        L13_2 = #L13_2
        L14_2 = 1
        for L15_2 = L12_2, L13_2, L14_2 do
          L16_2 = L11_2.host
          if L16_2 == L5_2 then
            L16_2 = L11_2.clients
            L16_2 = L16_2[L15_2]
            if L16_2 == L4_2 then
              L16_2 = L11_2.clients
              L16_2[L15_2] = nil
              break
            end
          end
        end
      end
    else
      L6_2 = pairs
      L7_2 = L0_1
      L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
      for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
        L12_2 = 1
        L13_2 = L11_2.clients
        L13_2 = #L13_2
        L14_2 = 1
        for L15_2 = L12_2, L13_2, L14_2 do
          L16_2 = L11_2.clients
          L16_2 = L16_2[L15_2]
          if L16_2 == A2_2 then
            L5_2 = L11_2.host
            L16_2 = L11_2.clients
            L16_2[L15_2] = nil
            break
          end
        end
      end
    end
    if A1_2 then
      L6_2 = Notify
      L7_2 = L4_2
      L8_2 = Config
      L8_2 = L8_2.Lang
      L8_2 = L8_2.kickedOut
      L6_2(L7_2, L8_2)
    end
    L6_2 = Config
    L6_2 = L6_2.useModernUI
    if L6_2 then
      L6_2 = {}
      L7_2 = {}
      L7_2.id = L4_2
      L8_2 = GetPlayerIdentity
      L9_2 = L4_2
      L8_2 = L8_2(L9_2)
      L7_2.name = L8_2
      L7_2.isHost = true
      L6_2[1] = L7_2
      L7_2 = TriggerClientEvent
      L8_2 = "17mov_GruppeSechs:RefreshMugs"
      L9_2 = L4_2
      L10_2 = L6_2
      L11_2 = L4_2
      L7_2(L8_2, L9_2, L10_2, L11_2)
      L7_2 = TriggerClientEvent
      L8_2 = "17mov_GruppeSechs:clearMyLobby"
      L9_2 = L4_2
      L7_2(L8_2, L9_2)
      L7_2 = TriggerClientEvent
      L8_2 = "17mov_GruppeSechs:SetMyReward"
      L9_2 = L4_2
      L10_2 = 100
      L7_2(L8_2, L9_2, L10_2)
      L7_2 = GetAllPartyMugs
      L8_2 = L5_2
      L7_2 = L7_2(L8_2)
      L8_2 = TriggerForAllMembers
      L9_2 = L5_2
      L10_2 = "17mov_GruppeSechs:RefreshMugs"
      L11_2 = L7_2
      L8_2(L9_2, L10_2, L11_2)
      L8_2 = RecalculateRewards
      L9_2 = L5_2
      L8_2(L9_2)
      L8_2 = pairs
      L9_2 = L0_1
      L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
      for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
        L14_2 = L13_2.clients
        L14_2 = #L14_2
        if 0 == L14_2 then
          L14_2 = L13_2.host
          if L14_2 == L5_2 then
            L14_2 = L0_1
            L14_2[L12_2] = nil
            L14_2 = TriggerClientEvent
            L15_2 = "17mov_GruppeSechs:clearMyLobby"
            L16_2 = L5_2
            L14_2(L15_2, L16_2)
          end
        end
      end
    else
      L6_2 = {}
      L7_2 = {}
      L7_2.id = L4_2
      L8_2 = GetPlayerIdentity
      L9_2 = L4_2
      L8_2 = L8_2(L9_2)
      L7_2.name = L8_2
      L7_2.isHost = true
      L6_2[1] = L7_2
      L7_2 = TriggerClientEvent
      L8_2 = "17mov_GruppeSechs:RefreshMugs"
      L9_2 = L4_2
      L10_2 = L6_2
      L11_2 = L4_2
      L7_2(L8_2, L9_2, L10_2, L11_2)
      L7_2 = GetAllPartyMugs
      L8_2 = L5_2
      L7_2 = L7_2(L8_2)
      L8_2 = TriggerForAllMembers
      L9_2 = L5_2
      L10_2 = "17mov_GruppeSechs:RefreshMugs"
      L11_2 = L7_2
      L8_2(L9_2, L10_2, L11_2)
      L8_2 = pairs
      L9_2 = L0_1
      L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
      for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
        L14_2 = L13_2.clients
        L14_2 = #L14_2
        if 0 == L14_2 then
          L14_2 = L13_2.host
          if L14_2 == L5_2 then
            L14_2 = L0_1
            L14_2[L12_2] = nil
          end
        end
      end
    end
  end
end
L16_1(L17_1, L18_1)
L16_1 = AddEventHandler
L17_1 = "playerDropped"
function L18_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = source
  L1_2 = 1
  L2_2 = L7_1
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L7_1
    L5_2 = L5_2[L4_2]
    if L5_2 == L0_2 then
      L5_2 = L7_1
      L5_2[L4_2] = nil
      L5_2 = TriggerClientEvent
      L6_2 = "17mov_GruppeSechs:RefreshLoggedInValue"
      L7_2 = -1
      L8_2 = L7_1
      L8_2 = #L8_2
      L5_2(L6_2, L7_2, L8_2)
      break
    end
  end
  L1_2 = 0
  L2_2 = pairs
  L3_2 = L0_1
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.host
    if L8_2 == L0_2 then
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
        L1_2 = L6_2
        break
      end
    end
  end
  if 0 ~= L1_2 then
    L2_2 = L0_1
    L2_2 = L2_2[L1_2]
    L3_2 = L2_2.source
    L2_2 = L5_1
    L2_2[L3_2] = nil
    L2_2 = L0_1
    L2_2 = L2_2[L1_2]
    L3_2 = L2_2.target
    L2_2 = L5_1
    L2_2[L3_2] = nil
    L2_2 = pairs
    L3_2 = L4_1
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L8_2 = L7_2.coords
      L9_2 = Config
      L9_2 = L9_2.BankLocations
      L10_2 = L0_1
      L10_2 = L10_2[L1_2]
      L10_2 = L10_2.source
      L9_2 = L9_2[L10_2]
      L9_2 = L9_2.DoorsCoords
      if L8_2 ~= L9_2 then
        L8_2 = L7_2.coords
        L9_2 = Config
        L9_2 = L9_2.BankLocations
        L10_2 = L0_1
        L10_2 = L10_2[L1_2]
        L10_2 = L10_2.target
        L9_2 = L9_2[L10_2]
        L9_2 = L9_2.DoorsCoords
        if L8_2 ~= L9_2 then
          goto lbl_123
        end
      end
      L6_2 = nil
      L8_2 = DoesEntityExist
      L9_2 = Config
      L9_2 = L9_2.BankLocations
      L10_2 = L0_1
      L10_2 = L10_2[L1_2]
      L10_2 = L10_2.source
      L9_2 = L9_2[L10_2]
      L9_2 = L9_2.doorsProp
      L8_2 = L8_2(L9_2)
      if L8_2 then
        L8_2 = DeleteEntity
        L9_2 = Config
        L9_2 = L9_2.BankLocations
        L10_2 = L0_1
        L10_2 = L10_2[L1_2]
        L10_2 = L10_2.source
        L9_2 = L9_2[L10_2]
        L9_2 = L9_2.doorsProp
        L8_2(L9_2)
      end
      L8_2 = DoesEntityExist
      L9_2 = Config
      L9_2 = L9_2.BankLocations
      L10_2 = L0_1
      L10_2 = L10_2[L1_2]
      L10_2 = L10_2.target
      L9_2 = L9_2[L10_2]
      L9_2 = L9_2.doorsProp
      L8_2 = L8_2(L9_2)
      if L8_2 then
        L8_2 = DeleteEntity
        L9_2 = Config
        L9_2 = L9_2.BankLocations
        L10_2 = L0_1
        L10_2 = L10_2[L1_2]
        L10_2 = L10_2.target
        L9_2 = L9_2[L10_2]
        L9_2 = L9_2.doorsProp
        L8_2(L9_2)
      end
      ::lbl_123::
    end
  end
end
L16_1(L17_1, L18_1)
L16_1 = RegisterNetEvent
L17_1 = "17mov_GruppeSechs:DisableUsFromTransports"
function L18_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = source
  L1_2 = GetLobbyIndex
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L0_1
  L2_2 = L2_2[L1_2]
  L2_2 = L2_2.transportId
  L3_2 = L8_1
  L3_2 = L3_2[L2_2]
  if nil == L3_2 then
    L3_2 = L9_1
    L3_2 = L3_2[L2_2]
    L3_2 = L3_2.crimePartyOwner
    L4_2 = L9_1
    L4_2[L2_2] = nil
    L4_2 = TriggerForAllCrimeMembers
    L5_2 = L3_2
    L6_2 = "17mov_GruppeSechs:tooLate"
    L4_2(L5_2, L6_2)
  else
    L3_2 = L8_1
    L3_2[L2_2] = nil
    L3_2 = TriggerClientEvent
    L4_2 = "17mov_GruppeSechs:UpdateTransports"
    L5_2 = -1
    L6_2 = L8_1
    L3_2(L4_2, L5_2, L6_2)
  end
end
L16_1(L17_1, L18_1)
L16_1 = RegisterNetEvent
L17_1 = "17mov_GruppeSechs:endJob_sv"
L16_1(L17_1)
L16_1 = AddEventHandler
L17_1 = "17mov_GruppeSechs:endJob_sv"
function L18_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = GetLobbyIndex
  L4_2 = source
  L3_2 = L3_2(L4_2)
  L4_2 = L0_1
  L4_2 = L4_2[L3_2]
  L4_2 = L4_2.host
  L5_2 = L0_1
  L5_2 = L5_2[L3_2]
  L5_2.working = false
  L5_2 = L0_1
  L5_2 = L5_2[L3_2]
  L5_2.vehNetId = nil
  L5_2 = TriggerForAllMembers
  L6_2 = L0_1
  L6_2 = L6_2[L3_2]
  L6_2 = L6_2.host
  L7_2 = "17mov_GruppeSechs:endJob_cl"
  L8_2 = L0_1
  L8_2 = L8_2[L3_2]
  L8_2 = L8_2.source
  L9_2 = L0_1
  L9_2 = L9_2[L3_2]
  L9_2 = L9_2.target
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = L0_1
  L5_2 = L5_2[L3_2]
  L6_2 = L5_2.source
  L5_2 = L5_1
  L5_2[L6_2] = nil
  L5_2 = L0_1
  L5_2 = L5_2[L3_2]
  L6_2 = L5_2.target
  L5_2 = L5_1
  L5_2[L6_2] = nil
  L5_2 = L0_1
  L5_2 = L5_2[L3_2]
  L6_2 = L5_2.transportId
  L5_2 = L8_1
  L5_2 = L5_2[L6_2]
  if nil ~= L5_2 then
    L5_2 = L0_1
    L5_2 = L5_2[L3_2]
    L6_2 = L5_2.transportId
    L5_2 = L8_1
    L5_2[L6_2] = nil
  end
  L5_2 = TriggerClientEvent
  L6_2 = "17mov_GruppeSechs:UpdateTransports"
  L7_2 = -1
  L8_2 = L8_1
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = Config
  L5_2 = L5_2.BankLocations
  L6_2 = L0_1
  L6_2 = L6_2[L3_2]
  L6_2 = L6_2.source
  L5_2 = L5_2[L6_2]
  L5_2 = L5_2.DoorsCoords
  if nil ~= L5_2 then
    L5_2 = TriggerClientEvent
    L6_2 = "17mov_GruppeSechs:RefreshInterior"
    L7_2 = -1
    L8_2 = Config
    L8_2 = L8_2.BankLocations
    L9_2 = L0_1
    L9_2 = L9_2[L3_2]
    L9_2 = L9_2.source
    L8_2 = L8_2[L9_2]
    L8_2 = L8_2.DoorsCoords
    L5_2(L6_2, L7_2, L8_2)
  end
  L5_2 = Config
  L5_2 = L5_2.BankLocations
  L6_2 = L0_1
  L6_2 = L6_2[L3_2]
  L6_2 = L6_2.target
  L5_2 = L5_2[L6_2]
  L5_2 = L5_2.DoorsCoords
  if nil ~= L5_2 then
    L5_2 = TriggerClientEvent
    L6_2 = "17mov_GruppeSechs:RefreshInterior"
    L7_2 = -1
    L8_2 = Config
    L8_2 = L8_2.BankLocations
    L9_2 = L0_1
    L9_2 = L9_2[L3_2]
    L9_2 = L9_2.target
    L8_2 = L8_2[L9_2]
    L8_2 = L8_2.DoorsCoords
    L5_2(L6_2, L7_2, L8_2)
  end
  L5_2 = Config
  L5_2 = L5_2.useModernUI
  if L5_2 then
    L5_2 = L0_1
    L5_2 = L5_2[L3_2]
    L5_2 = L5_2.clients
    L5_2 = #L5_2
    if 0 == L5_2 then
      L5_2 = RecalculateRewards
      L6_2 = L4_2
      L5_2(L6_2)
    end
  end
  L5_2 = L0_1
  L5_2 = L5_2[L3_2]
  L5_2.lastAtms = nil
  L5_2 = {}
  L6_2 = 1
  L7_2 = L0_1
  L7_2 = L7_2[L3_2]
  L7_2 = L7_2.clients
  L7_2 = #L7_2
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = L5_2
    L12_2 = L0_1
    L12_2 = L12_2[L3_2]
    L12_2 = L12_2.clients
    L12_2 = L12_2[L9_2]
    L10_2(L11_2, L12_2)
  end
  L6_2 = table
  L6_2 = L6_2.insert
  L7_2 = L5_2
  L8_2 = L0_1
  L8_2 = L8_2[L3_2]
  L8_2 = L8_2.host
  L6_2(L7_2, L8_2)
  if A0_2 then
    L6_2 = PayPenalty
    L7_2 = L0_1
    L7_2 = L7_2[L3_2]
    L7_2 = L7_2.host
    L8_2 = Config
    L8_2 = L8_2.PenaltyAmount
    L6_2(L7_2, L8_2)
    L6_2 = Notify
    L7_2 = L0_1
    L7_2 = L7_2[L3_2]
    L7_2 = L7_2.host
    L8_2 = Config
    L8_2 = L8_2.Lang
    L8_2 = L8_2.penalty
    L9_2 = Config
    L9_2 = L9_2.PenaltyAmount
    L8_2 = L8_2 .. L9_2
    L6_2(L7_2, L8_2)
  end
  L6_2 = Config
  L6_2 = L6_2.Reward
  L7_2 = Config
  L7_2 = L7_2.useModernUI
  if not L7_2 then
    L7_2 = Config
    L7_2 = L7_2.splitReward
    if L7_2 then
      L7_2 = math
      L7_2 = L7_2.floor
      L8_2 = L0_1
      L8_2 = L8_2[L3_2]
      L8_2 = L8_2.clients
      L8_2 = #L8_2
      L8_2 = L8_2 + 1
      L8_2 = L6_2 / L8_2
      L7_2 = L7_2(L8_2)
      L6_2 = L7_2
    end
  end
  L7_2 = Config
  L7_2 = L7_2.multiplyRewardWhileWorkingInGroup
  if L7_2 then
    L7_2 = math
    L7_2 = L7_2.floor
    L8_2 = L0_1
    L8_2 = L8_2[L3_2]
    L8_2 = L8_2.clients
    L8_2 = #L8_2
    L8_2 = L8_2 + 1
    L8_2 = L6_2 * L8_2
    L7_2 = L7_2(L8_2)
    L6_2 = L7_2
  end
  L7_2 = Config
  L7_2 = L7_2.BankLocations
  L8_2 = L0_1
  L8_2 = L8_2[L3_2]
  L8_2 = L8_2.source
  L7_2 = L7_2[L8_2]
  if nil ~= L7_2 then
    L7_2 = Config
    L7_2 = L7_2.BankLocations
    L8_2 = L0_1
    L8_2 = L8_2[L3_2]
    L8_2 = L8_2.source
    L7_2 = L7_2[L8_2]
    L7_2 = L7_2.rewardBonus
    if nil ~= L7_2 then
      L7_2 = Config
      L7_2 = L7_2.BankLocations
      L8_2 = L0_1
      L8_2 = L8_2[L3_2]
      L8_2 = L8_2.source
      L7_2 = L7_2[L8_2]
      L7_2 = L7_2.rewardBonus
      L6_2 = L6_2 + L7_2
    end
  end
  L7_2 = Config
  L7_2 = L7_2.BankLocations
  L8_2 = L0_1
  L8_2 = L8_2[L3_2]
  L8_2 = L8_2.target
  L7_2 = L7_2[L8_2]
  if nil ~= L7_2 then
    L7_2 = Config
    L7_2 = L7_2.BankLocations
    L8_2 = L0_1
    L8_2 = L8_2[L3_2]
    L8_2 = L8_2.target
    L7_2 = L7_2[L8_2]
    L7_2 = L7_2.rewardBonus
    if nil ~= L7_2 then
      L7_2 = Config
      L7_2 = L7_2.BankLocations
      L8_2 = L0_1
      L8_2 = L8_2[L3_2]
      L8_2 = L8_2.target
      L7_2 = L7_2[L8_2]
      L7_2 = L7_2.rewardBonus
      L6_2 = L6_2 + L7_2
    end
  end
  L7_2 = {}
  if A2_2 then
    L8_2 = Config
    L8_2 = L8_2.GiveRewardAfterHeist
  end
  if (L8_2 or not A2_2) and A1_2 then
    L8_2 = Config
    L8_2 = L8_2.Debug
    if L8_2 then
      L8_2 = print
      L9_2 = json
      L9_2 = L9_2.encode
      L10_2 = L5_2
      L9_2, L10_2, L11_2, L12_2, L13_2 = L9_2(L10_2)
      L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
    end
    L8_2 = 1
    L9_2 = #L5_2
    L10_2 = 1
    for L11_2 = L8_2, L9_2, L10_2 do
      L12_2 = L5_2[L11_2]
      L12_2 = L7_2[L12_2]
      if not L12_2 then
        L12_2 = L5_2[L11_2]
        L7_2[L12_2] = true
        L12_2 = CreateThread
        function L13_2()
          local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
          L0_3 = Config
          L0_3 = L0_3.letBossSplitReward
          if L0_3 then
            L0_3 = Config
            L0_3 = L0_3.useModernUI
            if L0_3 then
              L0_3 = Config
              L0_3 = L0_3.Debug
              if L0_3 then
                L0_3 = print
                L1_3 = "PAYING: "
                L3_3 = L11_2
                L2_3 = L5_2
                L2_3 = L2_3[L3_3]
                L3_3 = math
                L3_3 = L3_3.floor
                L4_3 = L6_2
                L6_3 = L3_2
                L5_3 = L0_1
                L5_3 = L5_3[L6_3]
                L5_3 = L5_3.rewardsOptions
                L7_3 = L11_2
                L6_3 = L5_2
                L6_3 = L6_3[L7_3]
                L5_3 = L5_3[L6_3]
                L5_3 = L5_3 / 100
                L4_3 = L4_3 * L5_3
                L3_3, L4_3, L5_3, L6_3, L7_3 = L3_3(L4_3)
                L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3)
              end
              L0_3 = Pay
              L2_3 = L11_2
              L1_3 = L5_2
              L1_3 = L1_3[L2_3]
              L2_3 = math
              L2_3 = L2_3.floor
              L3_3 = L6_2
              L5_3 = L3_2
              L4_3 = L0_1
              L4_3 = L4_3[L5_3]
              L4_3 = L4_3.rewardsOptions
              L6_3 = L11_2
              L5_3 = L5_2
              L5_3 = L5_3[L6_3]
              L4_3 = L4_3[L5_3]
              L4_3 = L4_3 / 100
              L3_3 = L3_3 * L4_3
              L2_3 = L2_3(L3_3)
              L4_3 = L3_2
              L3_3 = L0_1
              L3_3 = L3_3[L4_3]
              L3_3 = L3_3.clients
              L3_3 = #L3_3
              L3_3 = L3_3 + 1
              L0_3(L1_3, L2_3, L3_3)
              L0_3 = Notify
              L2_3 = L11_2
              L1_3 = L5_2
              L1_3 = L1_3[L2_3]
              L2_3 = Config
              L2_3 = L2_3.Lang
              L2_3 = L2_3.reward
              L3_3 = math
              L3_3 = L3_3.floor
              L4_3 = L6_2
              L6_3 = L3_2
              L5_3 = L0_1
              L5_3 = L5_3[L6_3]
              L5_3 = L5_3.rewardsOptions
              L7_3 = L11_2
              L6_3 = L5_2
              L6_3 = L6_3[L7_3]
              L5_3 = L5_3[L6_3]
              L5_3 = L5_3 / 100
              L4_3 = L4_3 * L5_3
              L3_3 = L3_3(L4_3)
              L2_3 = L2_3 .. L3_3
              L0_3(L1_3, L2_3)
          end
          else
            L0_3 = Config
            L0_3 = L0_3.Debug
            if L0_3 then
              L0_3 = print
              L1_3 = "PAYING: "
              L3_3 = L11_2
              L2_3 = L5_2
              L2_3 = L2_3[L3_3]
              L3_3 = L6_2
              L0_3(L1_3, L2_3, L3_3)
            end
            L0_3 = Pay
            L2_3 = L11_2
            L1_3 = L5_2
            L1_3 = L1_3[L2_3]
            L2_3 = L6_2
            L4_3 = L3_2
            L3_3 = L0_1
            L3_3 = L3_3[L4_3]
            L3_3 = L3_3.clients
            L3_3 = #L3_3
            L3_3 = L3_3 + 1
            L0_3(L1_3, L2_3, L3_3)
            L0_3 = Notify
            L2_3 = L11_2
            L1_3 = L5_2
            L1_3 = L1_3[L2_3]
            L2_3 = Config
            L2_3 = L2_3.Lang
            L2_3 = L2_3.reward
            L3_3 = L6_2
            L2_3 = L2_3 .. L3_3
            L0_3(L1_3, L2_3)
          end
        end
        L12_2(L13_2)
      end
    end
  end
  L8_2 = Citizen
  L8_2 = L8_2.Wait
  L9_2 = 1000
  L8_2(L9_2)
  L8_2 = #L5_2
  L8_2 = L8_2 - 1
  if 0 == L8_2 then
    L8_2 = L0_1
    L8_2[L3_2] = nil
    L8_2 = TriggerClientEvent
    L9_2 = "17mov_GruppeSechs:clearMyLobby"
    L10_2 = L4_2
    L8_2(L9_2, L10_2)
  end
end
L16_1(L17_1, L18_1)
L16_1 = {}
L17_1 = RegisterNetEvent
L18_1 = "17mov_GruppeSechs:StartJob_sv"
L17_1(L18_1)
L17_1 = AddEventHandler
L18_1 = "17mov_GruppeSechs:StartJob_sv"
function L19_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L0_2 = L5_1
  L0_2 = #L0_2
  L1_2 = Config
  L1_2 = L1_2.BankLocations
  L1_2 = #L1_2
  if L0_2 ~= L1_2 then
    L0_2 = Config
    L0_2 = L0_2.BankLocations
    L0_2 = #L0_2
    L1_2 = L5_1
    L1_2 = #L1_2
    L0_2 = L0_2 - L1_2
    if 1 ~= L0_2 then
      goto lbl_24
    end
  end
  L0_2 = Notify
  L1_2 = source
  L2_2 = Config
  L2_2 = L2_2.Lang
  L2_2 = L2_2.noFreeLocations
  L0_2(L1_2, L2_2)
  do return end
  ::lbl_24::
  L0_2 = false
  L1_2 = pairs
  L2_2 = Config
  L2_2 = L2_2.BankLocations
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.isVault
    if not L7_2 then
      L7_2 = Config
      L7_2 = L7_2.EnableDeliveriesToNonVaultPlaces
      if not L7_2 then
        goto lbl_44
      end
    end
    L7_2 = Config
    L8_2 = L7_2.BankLocations
    L7_2 = L5_1
    L7_2 = L7_2[L8_2]
    if not L7_2 then
      L0_2 = true
    end
    ::lbl_44::
  end
  if not L0_2 then
    L1_2 = Notify
    L2_2 = source
    L3_2 = Config
    L3_2 = L3_2.Lang
    L3_2 = L3_2.noFreeLocations
    L1_2(L2_2, L3_2)
    return
  end
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
          L9_2 = L1_2
          L10_2 = Config
          L10_2 = L10_2.Lang
          L10_2 = L10_2.notEverybodyHasRequiredJob
          L8_2(L9_2, L10_2)
          return
        end
      end
    end
  end
  L4_2 = isHaveRequiredItem
  L5_2 = L1_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = Notify
    L5_2 = L1_2
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
      L8_2 = isHaveRequiredItem
      L9_2 = L2_2[L7_2]
      L8_2 = L8_2(L9_2)
      if not L8_2 then
        L8_2 = Notify
        L9_2 = L1_2
        L10_2 = Config
        L10_2 = L10_2.Lang
        L10_2 = L10_2.dontHaveReqItem
        L8_2(L9_2, L10_2)
        return
      end
    end
  end
  L4_2 = Config
  L4_2 = L4_2.JobCooldown
  if L4_2 > 0 then
    L4_2 = CooldownsTime
    if not L4_2 then
      L4_2 = {}
    end
    CooldownsTime = L4_2
    L4_2 = os
    L4_2 = L4_2.time
    L4_2 = L4_2()
    L5_2 = GetPlayerIdentifierByType
    L6_2 = L1_2
    L7_2 = "license"
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = L16_1
    L6_2 = L6_2[L5_2]
    if L6_2 then
      L6_2 = CooldownsTime
      L6_2 = L6_2[L5_2]
      L6_2 = L4_2 - L6_2
      L7_2 = Config
      L7_2 = L7_2.JobCooldown
      if L6_2 >= L7_2 then
        L7_2 = L16_1
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
        L13_2 = L1_2
        L14_2 = string
        L14_2 = L14_2.format
        L15_2 = Config
        L15_2 = L15_2.Lang
        L15_2 = L15_2.someoneIsOnCooldown
        L16_2 = GetPlayerIdentity
        L17_2 = L1_2
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
        L11_2 = L16_1
        L11_2 = L11_2[L10_2]
        if L11_2 then
          L11_2 = CooldownsTime
          L11_2 = L11_2[L10_2]
          L11_2 = L4_2 - L11_2
          L12_2 = Config
          L12_2 = L12_2.JobCooldown
          if L11_2 >= L12_2 then
            L12_2 = L16_1
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
            L18_2 = L1_2
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
    L6_2 = L16_1
    L6_2[L5_2] = true
    L6_2 = CooldownsTime
    L6_2[L5_2] = L4_2
    if nil ~= L2_2 then
      L6_2 = 1
      L7_2 = #L2_2
      L8_2 = 1
      for L9_2 = L6_2, L7_2, L8_2 do
        L10_2 = GetPlayerIdentifierByType
        L11_2 = L2_2[L9_2]
        L12_2 = "license"
        L10_2 = L10_2(L11_2, L12_2)
        L11_2 = L16_1
        L11_2[L10_2] = true
        L11_2 = CooldownsTime
        L11_2[L10_2] = L4_2
      end
    end
  end
  L4_2 = Config
  L4_2 = L4_2.RequireOneFriendMinimum
  if L4_2 then
    if nil ~= L2_2 then
      L4_2 = #L2_2
      if L4_2 > 0 then
        L4_2 = startJob
        L5_2 = L3_2
        L6_2 = L1_2
        L7_2 = L2_2
        L4_2(L5_2, L6_2, L7_2)
    end
    else
      L4_2 = Notify
      L5_2 = L1_2
      L6_2 = Config
      L6_2 = L6_2.Lang
      L6_2 = L6_2.RequireOneFriend
      L4_2(L5_2, L6_2)
    end
  else
    if nil == L2_2 then
      L4_2 = table
      L4_2 = L4_2.insert
      L5_2 = L0_1
      L6_2 = {}
      L6_2.host = L1_2
      L7_2 = {}
      L6_2.clients = L7_2
      L6_2.progress = 0
      L7_2 = {}
      L6_2.blockedWalls = L7_2
      L4_2(L5_2, L6_2)
      L4_2 = pairs
      L5_2 = L0_1
      L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
      for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
        L10_2 = L9_2.host
        if L10_2 == L1_2 then
          L3_2 = L8_2
        end
      end
    end
    L4_2 = startJob
    L5_2 = L3_2
    L6_2 = L1_2
    L7_2 = L2_2
    L4_2(L5_2, L6_2, L7_2)
  end
end
L17_1(L18_1, L19_1)
function L17_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = math
  L3_2 = L3_2.randomseed
  L4_2 = os
  L4_2 = L4_2.time
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2()
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L3_2 = L0_1
  L3_2 = L3_2[A0_2]
  L3_2.grabbedBags = nil
  L3_2 = L0_1
  L3_2 = L3_2[A0_2]
  L3_2.filledAtms = nil
  L3_2 = L0_1
  L3_2 = L3_2[A0_2]
  L4_2 = {}
  L3_2.filledAtmsIndexes = L4_2
  L3_2 = L0_1
  L3_2 = L3_2[A0_2]
  L4_2 = math
  L4_2 = L4_2.random
  L5_2 = 1
  L6_2 = Config
  L6_2 = L6_2.BankLocations
  L6_2 = #L6_2
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.target = L4_2
  L3_2 = L0_1
  L3_2 = L3_2[A0_2]
  L3_2.lastAtms = nil
  L3_2 = Config
  L3_2 = L3_2.BankLocations
  L3_2 = #L3_2
  L4_2 = 0
  L5_2 = Config
  L5_2 = L5_2.EnableDeliveriesToNonVaultPlaces
  if L5_2 then
    while true do
      L5_2 = L0_1
      L5_2 = L5_2[A0_2]
      L6_2 = L5_2.target
      L5_2 = L5_1
      L5_2 = L5_2[L6_2]
      if not L5_2 then
        break
      end
      L5_2 = Citizen
      L5_2 = L5_2.Wait
      L6_2 = 10
      L5_2(L6_2)
      L5_2 = L0_1
      L5_2 = L5_2[A0_2]
      L6_2 = math
      L6_2 = L6_2.random
      L7_2 = 1
      L8_2 = Config
      L8_2 = L8_2.BankLocations
      L8_2 = #L8_2
      L6_2 = L6_2(L7_2, L8_2)
      L5_2.target = L6_2
      L4_2 = L4_2 + 1
      L5_2 = L3_2 + 50
      if L4_2 > L5_2 then
        L5_2 = Notify
        L6_2 = A1_2
        L7_2 = Config
        L7_2 = L7_2.Lang
        L7_2 = L7_2.noFreeLocations
        L5_2(L6_2, L7_2)
        L5_2 = L0_1
        L5_2 = L5_2[A0_2]
        L6_2 = L5_2.source
        L5_2 = L5_1
        L5_2[L6_2] = nil
        L5_2 = L0_1
        L5_2 = L5_2[A0_2]
        L5_2 = L5_2.clients
        L5_2 = #L5_2
        if 0 == L5_2 then
          L5_2 = L0_1
          L5_2[A0_2] = nil
        end
        return
      end
    end
  else
    while true do
      L5_2 = L0_1
      L5_2 = L5_2[A0_2]
      L6_2 = L5_2.target
      L5_2 = L5_1
      L5_2 = L5_2[L6_2]
      if not L5_2 then
        L5_2 = Config
        L5_2 = L5_2.BankLocations
        L6_2 = L0_1
        L6_2 = L6_2[A0_2]
        L6_2 = L6_2.target
        L5_2 = L5_2[L6_2]
        L5_2 = L5_2.isVault
        if L5_2 then
          break
        end
      end
      L5_2 = Citizen
      L5_2 = L5_2.Wait
      L6_2 = 10
      L5_2(L6_2)
      L5_2 = L0_1
      L5_2 = L5_2[A0_2]
      L6_2 = math
      L6_2 = L6_2.random
      L7_2 = 1
      L8_2 = Config
      L8_2 = L8_2.BankLocations
      L8_2 = #L8_2
      L6_2 = L6_2(L7_2, L8_2)
      L5_2.target = L6_2
      L4_2 = L4_2 + 1
      L5_2 = L3_2 + 50
      if L4_2 > L5_2 then
        L5_2 = Notify
        L6_2 = A1_2
        L7_2 = Config
        L7_2 = L7_2.Lang
        L7_2 = L7_2.noFreeLocations
        L5_2(L6_2, L7_2)
        L5_2 = L0_1
        L5_2 = L5_2[A0_2]
        L6_2 = L5_2.source
        L5_2 = L5_1
        L5_2[L6_2] = nil
        L5_2 = L0_1
        L5_2 = L5_2[A0_2]
        L5_2 = L5_2.clients
        L5_2 = #L5_2
        if 0 == L5_2 then
          L5_2 = L0_1
          L5_2[A0_2] = nil
        end
        return
      end
    end
  end
  L5_2 = L0_1
  L5_2 = L5_2[A0_2]
  L6_2 = L5_2.target
  L5_2 = L5_1
  L5_2[L6_2] = true
  L5_2 = math
  L5_2 = L5_2.randomseed
  L6_2 = os
  L6_2 = L6_2.time
  L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L5_2 = L0_1
  L5_2 = L5_2[A0_2]
  L6_2 = L0_1
  L6_2 = L6_2[A0_2]
  L6_2 = L6_2.target
  L5_2.source = L6_2
  while true do
    L5_2 = L0_1
    L5_2 = L5_2[A0_2]
    L6_2 = L5_2.source
    L5_2 = L5_1
    L5_2 = L5_2[L6_2]
    if not L5_2 then
      L5_2 = L0_1
      L5_2 = L5_2[A0_2]
      L5_2 = L5_2.target
      L6_2 = L0_1
      L6_2 = L6_2[A0_2]
      L6_2 = L6_2.source
      if L5_2 ~= L6_2 then
        break
      end
    end
    L5_2 = Citizen
    L5_2 = L5_2.Wait
    L6_2 = 10
    L5_2(L6_2)
    L5_2 = L0_1
    L5_2 = L5_2[A0_2]
    L6_2 = math
    L6_2 = L6_2.random
    L7_2 = 1
    L8_2 = Config
    L8_2 = L8_2.BankLocations
    L8_2 = #L8_2
    L6_2 = L6_2(L7_2, L8_2)
    L5_2.source = L6_2
  end
  L5_2 = L0_1
  L5_2 = L5_2[A0_2]
  L6_2 = L5_2.source
  L5_2 = L5_1
  L5_2[L6_2] = true
  L5_2 = L0_1
  L5_2 = L5_2[A0_2]
  L5_2.working = true
  L5_2 = L0_1
  L5_2 = L5_2[A0_2]
  L6_2 = {}
  L6_2[1] = false
  L6_2[2] = false
  L6_2[3] = false
  L6_2[4] = false
  L5_2.VehBags = L6_2
  L5_2 = TriggerClientEvent
  L6_2 = "17mov_GruppeSechs:RefreshInterior"
  L7_2 = -1
  L8_2 = Config
  L8_2 = L8_2.BankLocations
  L9_2 = L0_1
  L9_2 = L9_2[A0_2]
  L9_2 = L9_2.source
  L8_2 = L8_2[L9_2]
  L8_2 = L8_2.DoorsCoords
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = TriggerClientEvent
  L6_2 = "17mov_GruppeSechs:RefreshInterior"
  L7_2 = -1
  L8_2 = Config
  L8_2 = L8_2.BankLocations
  L9_2 = L0_1
  L9_2 = L9_2[A0_2]
  L9_2 = L9_2.target
  L8_2 = L8_2[L9_2]
  L8_2 = L8_2.DoorsCoords
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = TriggerForAllMembers
  L6_2 = A1_2
  L7_2 = "17mov_GruppeSechs:StartJob_cl"
  L8_2 = A1_2
  L9_2 = L0_1
  L9_2 = L9_2[A0_2]
  L9_2 = L9_2.source
  L10_2 = L0_1
  L10_2 = L10_2[A0_2]
  L10_2 = L10_2.target
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L5_2 = Config
  L5_2 = L5_2.BankLocations
  L6_2 = L0_1
  L6_2 = L6_2[A0_2]
  L6_2 = L6_2.source
  L5_2 = L5_2[L6_2]
  L5_2 = L5_2.isVault
  if not L5_2 then
    L5_2 = TriggerForAllMembers
    L6_2 = A1_2
    L7_2 = "17mov_GruppeSechs:enableGrabbing"
    L8_2 = {}
    L8_2.isVault = true
    L9_2 = Config
    L9_2 = L9_2.BankLocations
    L10_2 = L0_1
    L10_2 = L10_2[A0_2]
    L10_2 = L10_2.source
    L9_2 = L9_2[L10_2]
    L8_2.source = L9_2
    L9_2 = L0_1
    L9_2 = L9_2[A0_2]
    L9_2 = L9_2.source
    L8_2.bankId = L9_2
    L5_2(L6_2, L7_2, L8_2)
  end
end
startJob = L17_1
L17_1 = RegisterNetEvent
L18_1 = "17mov_GruppeSechs:StartHeist"
function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = IsEnoughPolice
  L1_2 = L1_2()
  if not L1_2 then
    L1_2 = Notify
    L2_2 = source
    L3_2 = Config
    L3_2 = L3_2.Lang
    L3_2 = L3_2.notEnoughPolice
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = tonumber
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  L1_2 = source
  L2_2 = GetLobbyIndex
  L3_2 = L1_2
  L4_2 = true
  L2_2 = L2_2(L3_2, L4_2)
  if 0 == L2_2 then
    L3_2 = Config
    L3_2 = L3_2.MinimunFriendsToStartHeist
    if 0 == L3_2 then
      L3_2 = table
      L3_2 = L3_2.insert
      L4_2 = L1_1
      L5_2 = {}
      L5_2.host = L1_2
      L6_2 = {}
      L5_2.clients = L6_2
      L3_2(L4_2, L5_2)
  end
  elseif 0 == L2_2 then
    L3_2 = Notify
    L4_2 = L1_2
    L5_2 = Config
    L5_2 = L5_2.Lang
    L5_2 = L5_2.notEnoughClients
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = GetLobbyIndex
  L4_2 = L1_2
  L5_2 = true
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L1_1
  L4_2 = L4_2[L3_2]
  L4_2 = L4_2.clients
  L5_2 = #L4_2
  L6_2 = Config
  L6_2 = L6_2.MinimunFriendsToStartHeist
  if L5_2 >= L6_2 then
    L5_2 = L9_1
    L6_2 = L8_1
    L6_2 = L6_2[A0_2]
    L5_2[A0_2] = L6_2
    L5_2 = L9_1
    L5_2 = L5_2[A0_2]
    L5_2.crimePartyOwner = L1_2
    L5_2 = L9_1
    L5_2 = L5_2[A0_2]
    L6_2 = L9_1
    L6_2 = L6_2[A0_2]
    L7_2 = L6_2.Owners
    L6_2 = L0_1
    L6_2 = L6_2[L7_2]
    L6_2 = L6_2.vehNetId
    L5_2.PlayersVehicleNetId = L6_2
    L5_2 = L8_1
    L5_2[A0_2] = nil
    L5_2 = L1_1
    L5_2 = L5_2[L3_2]
    L5_2.heistId = A0_2
    L5_2 = TriggerClientEvent
    L6_2 = "17mov_GruppeSechs:UpdateTransports"
    L7_2 = -1
    L8_2 = L8_1
    L5_2(L6_2, L7_2, L8_2)
    while true do
      L5_2 = L9_1
      L5_2 = L5_2[A0_2]
      L6_2 = L5_2.Owners
      L5_2 = L0_1
      L5_2 = L5_2[L6_2]
      L5_2 = L5_2.vehNetId
      if nil ~= L5_2 then
        L5_2 = L9_1
        L5_2 = L5_2[A0_2]
        L6_2 = L5_2.Owners
        L5_2 = L0_1
        L5_2 = L5_2[L6_2]
        L5_2 = L5_2.vehNetId
        if 0 ~= L5_2 then
          break
        end
      end
      L5_2 = Citizen
      L5_2 = L5_2.Wait
      L6_2 = 100
      L5_2(L6_2)
    end
    L5_2 = L9_1
    L5_2 = L5_2[A0_2]
    L6_2 = L5_2.Owners
    L5_2 = L0_1
    L5_2 = L5_2[L6_2]
    L5_2 = L5_2.vehNetId
    L6_2 = TriggerForAllCrimeMembers
    L7_2 = L1_2
    L8_2 = "17mov_GruppeSechs:StartHeist_cl"
    L9_2 = L1_2
    L10_2 = L5_2
    L11_2 = L9_1
    L11_2 = L11_2[A0_2]
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  else
    L5_2 = Notify
    L6_2 = L1_2
    L7_2 = Config
    L7_2 = L7_2.Lang
    L7_2 = L7_2.notEnoughClients
    L5_2(L6_2, L7_2)
  end
end
L17_1(L18_1, L19_1)
L17_1 = RegisterNetEvent
L18_1 = "17mov_GrupeSechs:HasBeenFetched"
function L19_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = GetLobbyIndex
  L1_2 = source
  L2_2 = true
  L0_2 = L0_2(L1_2, L2_2)
  L1_2 = L1_1
  L1_2 = L1_2[L0_2]
  L1_2 = L1_2.hasBeenFetched
  if L1_2 then
    return
  end
  L1_2 = L1_1
  L1_2 = L1_2[L0_2]
  L1_2.hasBeenFetched = true
  L1_2 = TriggerForAllCrimeMembers
  L2_2 = L1_1
  L2_2 = L2_2[L0_2]
  L2_2 = L2_2.host
  L3_2 = "17mov_GruppeSechs:HeistFirstStageReady"
  L1_2(L2_2, L3_2)
end
L17_1(L18_1, L19_1)
L17_1 = RegisterNetEvent
L18_1 = "17mov_GruppeSechs:blockEngine"
function L19_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = GetLobbyIndex
  L1_2 = source
  L2_2 = true
  L0_2 = L0_2(L1_2, L2_2)
  if 0 == L0_2 then
    return
  end
  L1_2 = L1_1
  L1_2 = L1_2[L0_2]
  L1_2 = L1_2.engineBlocked
  if L1_2 then
    return
  end
  L1_2 = L1_1
  L1_2 = L1_2[L0_2]
  L1_2.engineBlocked = true
  L1_2 = L1_1
  L1_2 = L1_2[L0_2]
  L2_2 = L1_2.heistId
  L1_2 = L9_1
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2.Owners
  L2_2 = TriggerForAllMembers
  L3_2 = L0_1
  L3_2 = L3_2[L1_2]
  L3_2 = L3_2.host
  L4_2 = "17mov_GruppeSechs:BlockMovement"
  L2_2(L3_2, L4_2)
end
L17_1(L18_1, L19_1)
L17_1 = RegisterNetEvent
L18_1 = "17mov_GruppeSechs:OpenVehicleDoors"
function L19_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = GetLobbyIndex
  L1_2 = source
  L2_2 = true
  L0_2 = L0_2(L1_2, L2_2)
  if 0 == L0_2 then
    return
  end
  L1_2 = L1_1
  L1_2 = L1_2[L0_2]
  L1_2 = L1_2.doorsOpened
  if L1_2 then
    return
  end
  L1_2 = L1_1
  L1_2 = L1_2[L0_2]
  L1_2.doorsOpened = true
  L1_2 = L1_1
  L1_2 = L1_2[L0_2]
  L2_2 = L1_2.heistId
  L1_2 = L9_1
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2.Owners
  L2_2 = math
  L2_2 = L2_2.random
  L3_2 = 1
  L4_2 = Config
  L4_2 = L4_2.DeliveryLocations
  L4_2 = #L4_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = TriggerForAllCrimeMembers
  L4_2 = L1_1
  L4_2 = L4_2[L0_2]
  L4_2 = L4_2.host
  L5_2 = "17mov_GruppeSechs:CrimeCanCollectMoney"
  L6_2 = L0_1
  L6_2 = L6_2[L1_2]
  L6_2 = L6_2.vehNetId
  L7_2 = L2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = TriggerForAllMembers
  L4_2 = L0_1
  L4_2 = L4_2[L1_2]
  L4_2 = L4_2.host
  L5_2 = "17mov_GruppeSechs:openDoors"
  L3_2(L4_2, L5_2)
end
L17_1(L18_1, L19_1)
L17_1 = RegisterNetEvent
L18_1 = "17mov_GruppeSechs:RobComplete"
function L19_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = GetLobbyIndex
  L1_2 = source
  L2_2 = true
  L0_2 = L0_2(L1_2, L2_2)
  L1_2 = L1_1
  L1_2 = L1_2[L0_2]
  L2_2 = L1_2.heistId
  L1_2 = L9_1
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2.Owners
  L2_2 = TriggerForAllMembers
  L3_2 = L0_1
  L3_2 = L3_2[L1_2]
  L3_2 = L3_2.host
  L4_2 = "17mov_GruppeSechs:UnderAttack"
  L2_2(L3_2, L4_2)
end
L17_1(L18_1, L19_1)
L17_1 = RegisterNetEvent
L18_1 = "17mov_GruppeSechs:ImReady"
function L19_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = GetLobbyIndex
  L1_2 = source
  L2_2 = true
  L0_2 = L0_2(L1_2, L2_2)
  if 0 == L0_2 then
    return
  end
  L1_2 = L1_1
  L1_2 = L1_2[L0_2]
  L1_2 = L1_2.heistId
  L2_2 = L1_1
  L2_2 = L2_2[L0_2]
  L2_2 = L2_2.host
  L3_2 = L9_1
  L3_2 = L3_2[L1_2]
  if nil == L3_2 then
    return
  end
  L3_2 = L1_1
  L3_2 = L3_2[L0_2]
  L3_2.doorsOpened = false
  L3_2 = L9_1
  L3_2 = L3_2[L1_2]
  L3_2 = L3_2.loot
  L4_2 = nil
  L5_2 = Config
  L5_2 = L5_2.splitCrimeReward
  if L5_2 then
    L5_2 = math
    L5_2 = L5_2.floor
    L6_2 = Config
    L6_2 = L6_2.PercentForCrimeFromWholeLoot
    L6_2 = L6_2 / 100
    L6_2 = L3_2 * L6_2
    L7_2 = L1_1
    L7_2 = L7_2[L0_2]
    L7_2 = L7_2.clients
    L7_2 = #L7_2
    L7_2 = L7_2 + 1
    L6_2 = L6_2 / L7_2
    L5_2 = L5_2(L6_2)
    L4_2 = L5_2
  else
    L5_2 = math
    L5_2 = L5_2.floor
    L6_2 = Config
    L6_2 = L6_2.PercentForCrimeFromWholeLoot
    L6_2 = L6_2 / 100
    L6_2 = L3_2 * L6_2
    L5_2 = L5_2(L6_2)
    L4_2 = L5_2
  end
  L5_2 = PayForCrime
  L6_2 = source
  L7_2 = L4_2
  L8_2 = L1_1
  L8_2 = L8_2[L0_2]
  L8_2 = L8_2.clients
  L8_2 = #L8_2
  L8_2 = L8_2 + 1
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = Notify
  L6_2 = source
  L7_2 = Config
  L7_2 = L7_2.Lang
  L7_2 = L7_2.reward
  L8_2 = tostring
  L9_2 = L4_2
  L8_2 = L8_2(L9_2)
  L7_2 = L7_2 .. L8_2
  L5_2(L6_2, L7_2)
  L5_2 = TriggerClientEvent
  L6_2 = "17mov_GruppeSechs:EndHeist_cl"
  L7_2 = source
  L5_2(L6_2, L7_2)
  L5_2 = DisableNotificationForCops
  L6_2 = L1_1
  L6_2 = L6_2[L0_2]
  L7_2 = L6_2.heistId
  L6_2 = L9_1
  L6_2 = L6_2[L7_2]
  L6_2 = L6_2.PlayersVehicleNetId
  L5_2(L6_2)
end
L17_1(L18_1, L19_1)
L17_1 = RegisterNetEvent
L18_1 = "17mov_GruppeSechs:endHeist"
function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = GetLobbyIndex
  L2_2 = source
  L3_2 = true
  L1_2 = L1_2(L2_2, L3_2)
  if 0 == L1_2 then
    return
  end
  L2_2 = TriggerForAllCrimeMembers
  L3_2 = L1_1
  L3_2 = L3_2[L1_2]
  L3_2 = L3_2.host
  L4_2 = "17mov_GruppeSechs:EndHeist_cl"
  L2_2(L3_2, L4_2)
end
L17_1(L18_1, L19_1)
function L17_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = math
  L0_2 = L0_2.randomseed
  L1_2 = os
  L1_2 = L1_2.time
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2 = L1_2()
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2)
  L0_2 = 1
  L1_2 = math
  L1_2 = L1_2.random
  L2_2 = 1
  L3_2 = 99
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = 1
  L3_2 = Config
  L3_2 = L3_2.PossibleLoots
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = Config
    L6_2 = L6_2.PossibleLoots
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.chance
    if L1_2 > L6_2 then
      L0_2 = L5_2
      break
    end
  end
  L2_2 = Config
  L2_2 = L2_2.PossibleLoots
  L2_2 = L2_2[L0_2]
  L2_2 = L2_2.loot
  return L2_2
end
GenerateLoot = L17_1
function L17_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = {}
  L3_2 = {}
  L4_2 = nil
  if A1_2 then
    L5_2 = pairs
    L6_2 = L1_1
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
    for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
      L11_2 = L10_2.host
      if A0_2 == L11_2 then
        L3_2 = L10_2.clients
      end
    end
  else
    L5_2 = pairs
    L6_2 = L0_1
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
    for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
      L11_2 = L10_2.host
      if A0_2 == L11_2 then
        L3_2 = L10_2.clients
        L4_2 = L9_2
      end
    end
  end
  L5_2 = Config
  L5_2 = L5_2.useModernUI
  if L5_2 and not A1_2 then
    L5_2 = 1
    L6_2 = #L3_2
    L7_2 = 1
    for L8_2 = L5_2, L6_2, L7_2 do
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = L2_2
      L11_2 = {}
      L12_2 = L3_2[L8_2]
      L11_2.id = L12_2
      L12_2 = GetPlayerIdentity
      L13_2 = L3_2[L8_2]
      L12_2 = L12_2(L13_2)
      L11_2.name = L12_2
      L11_2.isHost = false
      L12_2 = L0_1
      L12_2 = L12_2[L4_2]
      L12_2 = L12_2.rewardsOptions
      L13_2 = L3_2[L8_2]
      L12_2 = L12_2[L13_2]
      L11_2.rewardPercent = L12_2
      L9_2(L10_2, L11_2)
    end
    L5_2 = #L3_2
    if 0 == L5_2 then
      L5_2 = table
      L5_2 = L5_2.insert
      L6_2 = L2_2
      L7_2 = {}
      L7_2.id = A0_2
      L8_2 = GetPlayerIdentity
      L9_2 = A0_2
      L8_2 = L8_2(L9_2)
      L7_2.name = L8_2
      L7_2.isHost = true
      L8_2 = L0_1
      L8_2 = L8_2[L4_2]
      L8_2 = L8_2.rewardsOptions
      L8_2 = L8_2[A0_2]
      L7_2.rewardPercent = L8_2
      L5_2(L6_2, L7_2)
    else
      L5_2 = table
      L5_2 = L5_2.insert
      L6_2 = L2_2
      L7_2 = {}
      L7_2.id = A0_2
      L8_2 = GetPlayerIdentity
      L9_2 = A0_2
      L8_2 = L8_2(L9_2)
      L7_2.name = L8_2
      L7_2.isHost = true
      L8_2 = L0_1
      L8_2 = L8_2[L4_2]
      L8_2 = L8_2.rewardsOptions
      L8_2 = L8_2[A0_2]
      L7_2.rewardPercent = L8_2
      L5_2(L6_2, L7_2)
    end
  else
    L5_2 = 1
    L6_2 = #L3_2
    L7_2 = 1
    for L8_2 = L5_2, L6_2, L7_2 do
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = L2_2
      L11_2 = {}
      L12_2 = L3_2[L8_2]
      L11_2.id = L12_2
      L12_2 = GetPlayerIdentity
      L13_2 = L3_2[L8_2]
      L12_2 = L12_2(L13_2)
      L11_2.name = L12_2
      L11_2.isHost = false
      L9_2(L10_2, L11_2)
    end
    L5_2 = #L3_2
    if 0 == L5_2 then
      L5_2 = table
      L5_2 = L5_2.insert
      L6_2 = L2_2
      L7_2 = {}
      L7_2.id = A0_2
      L8_2 = GetPlayerIdentity
      L9_2 = A0_2
      L8_2 = L8_2(L9_2)
      L7_2.name = L8_2
      L7_2.isHost = true
      L5_2(L6_2, L7_2)
    else
      L5_2 = table
      L5_2 = L5_2.insert
      L6_2 = L2_2
      L7_2 = {}
      L7_2.id = A0_2
      L8_2 = GetPlayerIdentity
      L9_2 = A0_2
      L8_2 = L8_2(L9_2)
      L7_2.name = L8_2
      L7_2.isHost = true
      L5_2(L6_2, L7_2)
    end
  end
  return L2_2
end
GetAllPartyMugs = L17_1
function L17_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L5_2 = {}
  L6_2 = pairs
  L7_2 = L1_1
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L12_2 = L11_2.host
    if A0_2 == L12_2 then
      L5_2 = L11_2.clients
    end
  end
  L6_2 = 1
  L7_2 = #L5_2
  L7_2 = L7_2 + 1
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = L5_2[L9_2]
    id = L10_2
    L10_2 = #L5_2
    if L9_2 > L10_2 then
      id = A0_2
    end
    L10_2 = id
    if nil ~= L10_2 then
      L10_2 = type
      L11_2 = id
      L10_2 = L10_2(L11_2)
      if "number" == L10_2 then
        if "17mov_GruppeSechs:RefreshCrimeMugs" == A1_2 then
          L10_2 = TriggerClientEvent
          L11_2 = A1_2
          L12_2 = id
          L13_2 = A2_2
          L14_2 = id
          L10_2(L11_2, L12_2, L13_2, L14_2)
        elseif "17mov_GruppeSechs:StartHeist_cl" == A1_2 then
          L10_2 = TriggerClientEvent
          L11_2 = A1_2
          L12_2 = id
          L13_2 = A2_2
          L14_2 = id
          L15_2 = A3_2
          L16_2 = A4_2
          L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
        elseif "17mov_GruppeSechs:DeleteHelpVehBag" == A1_2 then
          L10_2 = TriggerClientEvent
          L11_2 = A1_2
          L12_2 = id
          L13_2 = A0_2
          L14_2 = id
          L15_2 = A2_2
          L16_2 = A3_2
          L17_2 = A4_2
          L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
        elseif "17mov_GruppeSechs:CrimeCanCollectMoney" == A1_2 then
          L10_2 = TriggerClientEvent
          L11_2 = A1_2
          L12_2 = id
          L13_2 = A2_2
          L14_2 = A3_2
          L15_2 = L9_2
          L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
        else
          L10_2 = TriggerClientEvent
          L11_2 = A1_2
          L12_2 = id
          L13_2 = A2_2
          L14_2 = A3_2
          L10_2(L11_2, L12_2, L13_2, L14_2)
        end
      end
    end
  end
end
TriggerForAllCrimeMembers = L17_1
function L17_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
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
    id = L11_2
    L11_2 = #L6_2
    if L10_2 > L11_2 then
      id = A0_2
    end
    L11_2 = id
    if nil ~= L11_2 then
      L11_2 = type
      L12_2 = id
      L11_2 = L11_2(L12_2)
      if "number" == L11_2 then
        if "17mov_GruppeSechs:RefreshMugs" == A1_2 then
          L11_2 = TriggerClientEvent
          L12_2 = A1_2
          L13_2 = id
          L14_2 = A2_2
          L15_2 = id
          L11_2(L12_2, L13_2, L14_2, L15_2)
        elseif "17mov_GruppeSechs:StartJob_cl" == A1_2 then
          L11_2 = TriggerClientEvent
          L12_2 = A1_2
          L13_2 = id
          L14_2 = A2_2
          L15_2 = id
          L16_2 = A3_2
          L17_2 = A4_2
          L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
        elseif "17mov_GruppeSechs:DeleteHelpVehBag" == A1_2 then
          L11_2 = TriggerClientEvent
          L12_2 = A1_2
          L13_2 = id
          L14_2 = A0_2
          L15_2 = id
          L16_2 = A2_2
          L17_2 = A3_2
          L18_2 = A4_2
          L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
        else
          L11_2 = TriggerClientEvent
          L12_2 = A1_2
          L13_2 = id
          L14_2 = A2_2
          L15_2 = A3_2
          L16_2 = A4_2
          L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
        end
      end
    end
  end
end
TriggerForAllMembers = L17_1
L17_1 = RegisterNetEvent
L18_1 = "17mov_GruppeSechs:RemovePile"
function L19_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = TriggerClientEvent
  L3_2 = "17mov_GruppeSechs:RemovePile_cl"
  L4_2 = -1
  L5_2 = A1_2
  L6_2 = A0_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L17_1(L18_1, L19_1)
L17_1 = RegisterNetEvent
L18_1 = "17mov_GruppeSechs:MoneyLoaded"
function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = {}
  L2_2 = GetLobbyIndex
  L3_2 = source
  L2_2 = L2_2(L3_2)
  L3_2 = L0_1
  L3_2 = L3_2[L2_2]
  L3_2 = L3_2.host
  L4_2 = L0_1
  L4_2 = L4_2[L2_2]
  L4_2.MoneyLoaded = true
  L4_2 = Config
  L4_2 = L4_2.enableAtmsFillingUp
  if L4_2 then
    L4_2 = Config
    L4_2 = L4_2.BankLocations
    L5_2 = L0_1
    L5_2 = L5_2[L2_2]
    L5_2 = L5_2.source
    L4_2 = L4_2[L5_2]
    L4_2 = L4_2.isVault
    if not L4_2 then
      L4_2 = TriggerForAllMembers
      L5_2 = L3_2
      L6_2 = "17mov_GruppeSechs:MoneyLoaded_cl"
      L7_2 = L0_1
      L7_2 = L7_2[L2_2]
      L7_2 = L7_2.target
      L4_2(L5_2, L6_2, L7_2)
  end
  else
    L4_2 = TriggerForAllMembers
    L5_2 = L3_2
    L6_2 = "17mov_GruppeSechs:MoneyLoaded_cl"
    L7_2 = L0_1
    L7_2 = L7_2[L2_2]
    L7_2 = L7_2.target
    L4_2(L5_2, L6_2, L7_2)
  end
end
L17_1(L18_1, L19_1)
L17_1 = RegisterNetEvent
L18_1 = "17mov_GruppeSechs:DeliverThisAtm"
function L19_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = GetLobbyIndex
  L3_2 = source
  L2_2 = L2_2(L3_2)
  L3_2 = L0_1
  L3_2 = L3_2[L2_2]
  L3_2 = L3_2.filledAtms
  if nil == L3_2 then
    L3_2 = L0_1
    L3_2 = L3_2[L2_2]
    L3_2.filledAtms = 1
  else
    L3_2 = L0_1
    L3_2 = L3_2[L2_2]
    L4_2 = L0_1
    L4_2 = L4_2[L2_2]
    L4_2 = L4_2.filledAtms
    L4_2 = L4_2 + 1
    L3_2.filledAtms = L4_2
  end
  L3_2 = L0_1
  L3_2 = L3_2[L2_2]
  L3_2 = L3_2.transportId
  L4_2 = L8_1
  L4_2 = L4_2[L3_2]
  if nil == L4_2 then
    L4_2 = L9_1
    L4_2 = L4_2[L3_2]
    if nil ~= L4_2 then
      L4_2 = L9_1
      L4_2 = L4_2[L3_2]
      L5_2 = L9_1
      L5_2 = L5_2[L3_2]
      L5_2 = L5_2.loot
      L6_2 = Config
      L6_2 = L6_2.howMuchAtmFillWillRemoveFromLoot
      L5_2 = L5_2 - L6_2
      L4_2.loot = L5_2
    end
  else
    L4_2 = L8_1
    L4_2 = L4_2[L3_2]
    L5_2 = L8_1
    L5_2 = L5_2[L3_2]
    L5_2 = L5_2.loot
    L6_2 = Config
    L6_2 = L6_2.howMuchAtmFillWillRemoveFromLoot
    L5_2 = L5_2 - L6_2
    L4_2.loot = L5_2
    L4_2 = TriggerClientEvent
    L5_2 = "17mov_GruppeSechs:UpdateTransports"
    L6_2 = -1
    L7_2 = L8_1
    L4_2(L5_2, L6_2, L7_2)
  end
  L4_2 = L0_1
  L4_2 = L4_2[L2_2]
  L4_2 = L4_2.filledAtms
  L5_2 = Config
  L5_2 = L5_2.neededAtms
  if L4_2 >= L5_2 then
    L4_2 = TriggerForAllMembers
    L5_2 = L0_1
    L5_2 = L5_2[L2_2]
    L5_2 = L5_2.host
    L6_2 = "17mov_GruppeSechs:DisableThisAtm"
    L7_2 = A0_2
    L8_2 = A1_2
    L4_2(L5_2, L6_2, L7_2, L8_2)
    L4_2 = Config
    L4_2 = L4_2.BankLocations
    L5_2 = L0_1
    L5_2 = L5_2[L2_2]
    L5_2 = L5_2.target
    L4_2 = L4_2[L5_2]
    L4_2 = L4_2.isVault
    if not L4_2 then
      L4_2 = 0
      L5_2 = 1
      L6_2 = L0_1
      L6_2 = L6_2[L2_2]
      L6_2 = L6_2.clients
      L6_2 = #L6_2
      L7_2 = 1
      for L8_2 = L5_2, L6_2, L7_2 do
        L9_2 = GetPlayerPing
        L10_2 = L0_1
        L10_2 = L10_2[L2_2]
        L10_2 = L10_2.clients
        L10_2 = L10_2[L8_2]
        L9_2 = L9_2(L10_2)
        if 0 ~= L9_2 then
          L4_2 = L4_2 + 1
        end
      end
      L5_2 = GetPlayerPing
      L6_2 = L0_1
      L6_2 = L6_2[L2_2]
      L6_2 = L6_2.host
      L5_2 = L5_2(L6_2)
      if 0 ~= L5_2 then
        L4_2 = L4_2 + 1
      end
      L5_2 = TriggerForAllMembers
      L6_2 = L0_1
      L6_2 = L6_2[L2_2]
      L6_2 = L6_2.host
      L7_2 = "17mov_GruppeSechs:enableBagPlacing"
      L8_2 = {}
      L9_2 = L0_1
      L9_2 = L9_2[L2_2]
      L9_2 = L9_2.target
      L8_2.bankId = L9_2
      L8_2.partyCount = L4_2
      L5_2(L6_2, L7_2, L8_2)
    end
  else
    L4_2 = GenerateATMLocation
    L5_2 = L0_1
    L5_2 = L5_2[L2_2]
    L5_2 = L5_2.host
    L6_2 = L2_2
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = TriggerForAllMembers
    L6_2 = L0_1
    L6_2 = L6_2[L2_2]
    L6_2 = L6_2.host
    L7_2 = "17mov_GruppeSechs:DisableThisAtm"
    L8_2 = A0_2
    L9_2 = A1_2
    L10_2 = L4_2
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  end
end
L17_1(L18_1, L19_1)
function L17_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L0_1
  L2_2 = L2_2[A1_2]
  L2_2 = L2_2.lastAtms
  if nil == L2_2 then
    L2_2 = L0_1
    L2_2 = L2_2[A1_2]
    L3_2 = {}
    L2_2.lastAtms = L3_2
  end
  L2_2 = math
  L2_2 = L2_2.random
  L3_2 = 1
  L4_2 = Config
  L4_2 = L4_2.AtmsLocations
  L4_2 = #L4_2
  L2_2 = L2_2(L3_2, L4_2)
  while true do
    L3_2 = L0_1
    L3_2 = L3_2[A1_2]
    L3_2 = L3_2.lastAtms
    L3_2 = L3_2[L2_2]
    if L3_2 ~= L2_2 then
      break
    end
    L3_2 = math
    L3_2 = L3_2.random
    L4_2 = 1
    L5_2 = Config
    L5_2 = L5_2.AtmsLocations
    L5_2 = #L5_2
    L3_2 = L3_2(L4_2, L5_2)
    L2_2 = L3_2
    L3_2 = Citizen
    L3_2 = L3_2.Wait
    L4_2 = 100
    L3_2(L4_2)
  end
  L3_2 = L0_1
  L3_2 = L3_2[A1_2]
  L3_2 = L3_2.lastAtms
  L3_2[L2_2] = L2_2
  return L2_2
end
GenerateATMLocation = L17_1
L17_1 = RegisterNetEvent
L18_1 = "17mov_GruppeSechs:firstStageReady"
function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = GetLobbyIndex
  L2_2 = source
  L1_2 = L1_2(L2_2)
  L2_2 = 0
  L3_2 = 1
  L4_2 = L0_1
  L4_2 = L4_2[L1_2]
  L4_2 = L4_2.clients
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = GetPlayerPing
    L8_2 = L0_1
    L8_2 = L8_2[L1_2]
    L8_2 = L8_2.clients
    L8_2 = L8_2[L6_2]
    L7_2 = L7_2(L8_2)
    if 0 ~= L7_2 then
      L2_2 = L2_2 + 1
    end
  end
  L3_2 = GetPlayerPing
  L4_2 = L0_1
  L4_2 = L4_2[L1_2]
  L4_2 = L4_2.host
  L3_2 = L3_2(L4_2)
  if 0 ~= L3_2 then
    L2_2 = L2_2 + 1
  end
  L3_2 = Config
  L3_2 = L3_2.enableAtmsFillingUp
  if L3_2 then
    L3_2 = GenerateATMLocation
    L4_2 = A0_2
    L5_2 = L1_2
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = TriggerForAllMembers
    L5_2 = A0_2
    L6_2 = "17mov_GruppeSechs:firstStageReady_cl"
    L7_2 = L2_2
    L8_2 = L3_2
    L4_2(L5_2, L6_2, L7_2, L8_2)
  else
    L3_2 = TriggerForAllMembers
    L4_2 = A0_2
    L5_2 = "17mov_GruppeSechs:firstStageReady_cl"
    L6_2 = L2_2
    L7_2 = nil
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
end
L17_1(L18_1, L19_1)
L17_1 = RegisterNetEvent
L18_1 = "17mov_GruppeSechs:closeDoor"
function L19_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L2_2 = A0_2.DoorsCoords
  L3_2 = doorsModel
  L4_2 = pairs
  L5_2 = L4_1
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L9_2.coords
    if L10_2 == L2_2 then
      L10_2 = TriggerClientEvent
      L11_2 = "17mov_GruppeSechs:CloseDoor_cl"
      L12_2 = -1
      L13_2 = L2_2
      L14_2 = L3_2
      L15_2 = A0_2
      L16_2 = A1_2
      L17_2 = source
      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
      L10_2 = L4_1
      L10_2[L8_2] = nil
      break
    end
  end
end
L17_1(L18_1, L19_1)
L17_1 = RegisterNetEvent
L18_1 = "17mov_GruppeSechs:OpenDoor"
function L19_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L5_2 = A0_2.DoorsCoords
  L6_2 = A4_2
  L7_2 = nil
  L8_2 = pairs
  L9_2 = L4_1
  L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
  for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
    L14_2 = L13_2.coords
    if L14_2 == L5_2 then
      return
    end
  end
  L8_2 = {}
  L9_2 = GetLobbyIndex
  L10_2 = source
  L9_2 = L9_2(L10_2)
  L10_2 = L0_1
  L10_2 = L10_2[L9_2]
  L10_2 = L10_2.clients
  L11_2 = L0_1
  L11_2 = L11_2[L9_2]
  L11_2 = L11_2.target
  L12_2 = TriggerClientEvent
  L13_2 = "17mov_GruppeSechs:OpenDoor_cl"
  L14_2 = -1
  L15_2 = L5_2
  L16_2 = L6_2
  L17_2 = A0_2
  L18_2 = A1_2
  L19_2 = A3_2
  L20_2 = source
  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  if not A3_2 then
    L12_2 = TriggerForAllMembers
    L13_2 = A2_2
    L14_2 = "17mov_GruppeSechs:enableGrabbing"
    L15_2 = {}
    L15_2.coords = L5_2
    L15_2.model = L6_2
    L15_2.source = A0_2
    L15_2.bankId = A1_2
    L12_2(L13_2, L14_2, L15_2)
  else
    L12_2 = Config
    L12_2 = L12_2.BankLocations
    L12_2 = L12_2[L11_2]
    L12_2 = L12_2.isVault
    if L12_2 then
      L12_2 = 0
      L13_2 = 1
      L14_2 = L0_1
      L14_2 = L14_2[L9_2]
      L14_2 = L14_2.clients
      L14_2 = #L14_2
      L15_2 = 1
      for L16_2 = L13_2, L14_2, L15_2 do
        L17_2 = GetPlayerPing
        L18_2 = L0_1
        L18_2 = L18_2[L9_2]
        L18_2 = L18_2.clients
        L18_2 = L18_2[L16_2]
        L17_2 = L17_2(L18_2)
        if 0 ~= L17_2 then
          L12_2 = L12_2 + 1
        end
      end
      L13_2 = GetPlayerPing
      L14_2 = L0_1
      L14_2 = L14_2[L9_2]
      L14_2 = L14_2.host
      L13_2 = L13_2(L14_2)
      if 0 ~= L13_2 then
        L12_2 = L12_2 + 1
      end
      L13_2 = TriggerForAllMembers
      L14_2 = A2_2
      L15_2 = "17mov_GruppeSechs:enableBagPlacing"
      L16_2 = {}
      L16_2.coords = L5_2
      L16_2.model = L6_2
      L16_2.source = L11_2
      L16_2.bankId = L11_2
      L16_2.partyCount = L12_2
      L13_2(L14_2, L15_2, L16_2)
    end
  end
  L12_2 = table
  L12_2 = L12_2.insert
  L13_2 = L4_1
  L14_2 = {}
  L14_2.coords = L5_2
  L14_2.model = L6_2
  L14_2.bankId = A1_2
  L12_2(L13_2, L14_2)
end
L17_1(L18_1, L19_1)
L17_1 = RegisterNetEvent
L18_1 = "17mov_GruppeSechs:SpawnDoors"
function L19_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L5_2 = Config
  L5_2 = L5_2.BankLocations
  L5_2 = L5_2[A3_2]
  L5_2.doorsBaseHeading = A2_2
  L5_2 = Config
  L5_2 = L5_2.BankLocations
  L5_2 = L5_2[A3_2]
  L5_2.doorsBaseModel = A4_2
  L5_2 = Citizen
  L5_2 = L5_2.Wait
  L6_2 = 150
  L5_2(L6_2)
  while true do
    L5_2 = NetworkGetEntityFromNetworkId
    L6_2 = A0_2
    L5_2 = L5_2(L6_2)
    if 0 ~= L5_2 then
      break
    end
    L5_2 = Citizen
    L5_2 = L5_2.Wait
    L6_2 = 100
    L5_2(L6_2)
  end
  L5_2 = Config
  L5_2 = L5_2.BankLocations
  L5_2 = L5_2[A3_2]
  L6_2 = NetworkGetEntityFromNetworkId
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  L5_2.doorsProp = L6_2
  L5_2 = Config
  L5_2 = L5_2.BankLocations
  L5_2 = L5_2[A3_2]
  L5_2.doorsRunning = true
  L5_2 = SetEntityHeading
  L6_2 = Config
  L6_2 = L6_2.BankLocations
  L6_2 = L6_2[A3_2]
  L6_2 = L6_2.doorsProp
  L7_2 = A2_2
  L5_2(L6_2, L7_2)
  while true do
    L5_2 = DoesEntityExist
    L6_2 = Config
    L6_2 = L6_2.BankLocations
    L6_2 = L6_2[A3_2]
    L6_2 = L6_2.doorsProp
    L5_2 = L5_2(L6_2)
    if L5_2 then
      break
    end
    L5_2 = Citizen
    L5_2 = L5_2.Wait
    L6_2 = 0
    L5_2(L6_2)
  end
  L5_2 = FreezeEntityPosition
  L6_2 = Config
  L6_2 = L6_2.BankLocations
  L6_2 = L6_2[A3_2]
  L6_2 = L6_2.doorsProp
  L7_2 = true
  L5_2(L6_2, L7_2)
  L5_2 = TriggerClientEvent
  L6_2 = "17mov_GruppeSechs:RunDoorsOpenAnim"
  L7_2 = -1
  L8_2 = NetworkGetNetworkIdFromEntity
  L9_2 = Config
  L9_2 = L9_2.BankLocations
  L9_2 = L9_2[A3_2]
  L9_2 = L9_2.doorsProp
  L8_2 = L8_2(L9_2)
  L9_2 = A3_2
  L10_2 = A4_2
  L11_2 = A1_2
  L12_2 = A2_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L5_2 = Config
  L5_2 = L5_2.BankLocations
  L5_2 = L5_2[A3_2]
  L5_2.doorsRunning = false
end
L17_1(L18_1, L19_1)
L17_1 = RegisterNetEvent
L18_1 = "17mov_GruppeSechs:CloseDoorsFunc"
function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  while true do
    L1_2 = Config
    L1_2 = L1_2.BankLocations
    L1_2 = L1_2[A0_2]
    L1_2 = L1_2.doorsRunning
    if not L1_2 then
      break
    end
    L1_2 = Citizen
    L1_2 = L1_2.Wait
    L2_2 = 100
    L1_2(L2_2)
  end
  L1_2 = TriggerClientEvent
  L2_2 = "17mov_GruppeSechs:RunDoorsCloseAnim"
  L3_2 = -1
  L4_2 = NetworkGetNetworkIdFromEntity
  L5_2 = Config
  L5_2 = L5_2.BankLocations
  L5_2 = L5_2[A0_2]
  L5_2 = L5_2.doorsProp
  L4_2 = L4_2(L5_2)
  L5_2 = Config
  L5_2 = L5_2.BankLocations
  L5_2 = L5_2[A0_2]
  L5_2 = L5_2.doorsBaseHeading
  L6_2 = A0_2
  L7_2 = Config
  L7_2 = L7_2.BankLocations
  L7_2 = L7_2[A0_2]
  L7_2 = L7_2.doorsBaseModel
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
end
L17_1(L18_1, L19_1)
L17_1 = RegisterNetEvent
L18_1 = "17mov_GruppeSechs:DeleteDoors"
function L19_1(A0_2)
  local L1_2, L2_2
  L1_2 = Config
  L1_2 = L1_2.BankLocations
  L1_2 = L1_2[A0_2]
  L1_2 = L1_2.doorsProp
  if nil ~= L1_2 then
    L1_2 = DoesEntityExist
    L2_2 = Config
    L2_2 = L2_2.BankLocations
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2.doorsProp
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = DeleteEntity
      L2_2 = Config
      L2_2 = L2_2.BankLocations
      L2_2 = L2_2[A0_2]
      L2_2 = L2_2.doorsProp
      L1_2(L2_2)
      L1_2 = Config
      L1_2 = L1_2.BankLocations
      L1_2 = L1_2[A0_2]
      L1_2.doorsProp = nil
    end
  end
end
L17_1(L18_1, L19_1)
L17_1 = RegisterNetEvent
L18_1 = "17mov_GruppeSechs:SendVehicleNetId"
function L19_1(A0_2)
  local L1_2, L2_2
  L1_2 = GetLobbyIndex
  L2_2 = source
  L1_2 = L1_2(L2_2)
  L2_2 = L0_1
  L2_2 = L2_2[L1_2]
  L2_2.vehNetId = A0_2
end
L17_1(L18_1, L19_1)
L17_1 = AddEventHandler
L18_1 = "playerDropped"
function L19_1()
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
      L4_2 = "17mov_GruppeSechs:clearMyLobby"
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
    else
      L3_2 = TriggerForAllMembers
      L4_2 = L2_2
      L5_2 = "17mov_GruppeSechs:RefreshMugs"
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
      L4_2 = "17mov_GruppeSechs:clearMyLobby"
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
      L3_2 = L0_1
      L3_2[L1_2] = nil
    end
  end
end
L17_1(L18_1, L19_1)
