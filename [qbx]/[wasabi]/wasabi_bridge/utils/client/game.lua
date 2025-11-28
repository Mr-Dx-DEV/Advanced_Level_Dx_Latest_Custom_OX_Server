local L0_1, L1_1
L0_1 = WSB
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L4_2 = GetVehiclePedIsIn
  L5_2 = L3_2
  L6_2 = false
  L4_2 = L4_2(L5_2, L6_2)
  if A2_2 and 0 ~= L4_2 then
    return L4_2
  end
  L5_2 = GetGamePool
  L6_2 = "CVehicle"
  L5_2 = L5_2(L6_2)
  L6_2 = -1
  L7_2 = -1
  L8_2 = A0_2
  if nil == L8_2 then
    L9_2 = GetEntityCoords
    L10_2 = L3_2
    L9_2 = L9_2(L10_2)
    L8_2 = L9_2
  end
  if nil == A1_2 then
    A1_2 = 1000.0
  end
  L9_2 = 1
  L10_2 = #L5_2
  L11_2 = 1
  for L12_2 = L9_2, L10_2, L11_2 do
    if L4_2 then
      L13_2 = L5_2[L12_2]
      if L13_2 == L4_2 then
        goto lbl_48
      end
    end
    L13_2 = GetEntityCoords
    L14_2 = L5_2[L12_2]
    L13_2 = L13_2(L14_2)
    L14_2 = L8_2 - L13_2
    L14_2 = #L14_2
    if -1 == L6_2 or L6_2 > L14_2 then
      L7_2 = L5_2[L12_2]
      L6_2 = L14_2
    end
    ::lbl_48::
  end
  if -1 ~= L6_2 and A1_2 >= L6_2 then
    return L7_2
  else
    L9_2 = nil
    return L9_2
  end
end
L0_1.getClosestVehicle = L1_1
L0_1 = WSB
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = GetActivePlayers
  L2_2 = L2_2()
  L3_2 = PlayerId
  L3_2 = L3_2()
  L4_2 = -1
  L5_2 = -1
  L6_2 = A0_2
  if nil == L6_2 then
    L7_2 = GetEntityCoords
    L8_2 = PlayerPedId
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L8_2()
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    L6_2 = L7_2
  end
  if nil == A1_2 then
    A1_2 = 1000.0
  end
  L7_2 = 1
  L8_2 = #L2_2
  L9_2 = 1
  for L10_2 = L7_2, L8_2, L9_2 do
    L11_2 = L2_2[L10_2]
    if L11_2 ~= L3_2 then
      L11_2 = GetPlayerPed
      L12_2 = L2_2[L10_2]
      L11_2 = L11_2(L12_2)
      if nil ~= L11_2 then
        L12_2 = GetEntityCoords
        L13_2 = L11_2
        L12_2 = L12_2(L13_2)
        L13_2 = L6_2 - L12_2
        L13_2 = #L13_2
        if -1 == L4_2 or L4_2 > L13_2 then
          L5_2 = L2_2[L10_2]
          L4_2 = L13_2
        end
      end
    end
  end
  if -1 ~= L4_2 and A1_2 >= L4_2 then
    return L5_2
  else
    L7_2 = nil
    return L7_2
  end
end
L0_1.getClosestPlayer = L1_1
L0_1 = WSB
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = GetActivePlayers
  L2_2 = L2_2()
  L3_2 = PlayerId
  L3_2 = L3_2()
  L4_2 = -1
  L5_2 = -1
  L6_2 = A0_2
  if nil == L6_2 then
    L7_2 = GetEntityCoords
    L8_2 = PlayerPedId
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L8_2()
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    L6_2 = L7_2
  end
  if nil == A1_2 then
    A1_2 = 1000.0
  end
  L7_2 = 1
  L8_2 = #L2_2
  L9_2 = 1
  for L10_2 = L7_2, L8_2, L9_2 do
    L11_2 = L2_2[L10_2]
    if L11_2 ~= L3_2 then
      L11_2 = GetPlayerPed
      L12_2 = L2_2[L10_2]
      L11_2 = L11_2(L12_2)
      if nil ~= L11_2 then
        L12_2 = GetEntityCoords
        L13_2 = L11_2
        L12_2 = L12_2(L13_2)
        L13_2 = L6_2 - L12_2
        L13_2 = #L13_2
        if -1 == L4_2 or L4_2 > L13_2 then
          L5_2 = L11_2
          L4_2 = L13_2
        end
      end
    end
  end
  if -1 ~= L4_2 and A1_2 >= L4_2 then
    return L5_2
  end
  L7_2 = nil
  return L7_2
end
L0_1.getClosestPlayerPed = L1_1
L0_1 = WSB
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L3_2 = {}
  L4_2 = PlayerPedId
  L4_2 = L4_2()
  L5_2 = GetVehiclePedIsIn
  L6_2 = L4_2
  L7_2 = false
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = GetGamePool
  L7_2 = "CVehicle"
  L6_2 = L6_2(L7_2)
  L7_2 = A0_2
  if nil == L7_2 then
    L8_2 = GetEntityCoords
    L9_2 = L4_2
    L8_2 = L8_2(L9_2)
    L7_2 = L8_2
  end
  if nil == A1_2 then
    A1_2 = 1000.0
  end
  L8_2 = 1
  L9_2 = #L6_2
  L10_2 = 1
  for L11_2 = L8_2, L9_2, L10_2 do
    L12_2 = GetEntityCoords
    L13_2 = L6_2[L11_2]
    L12_2 = L12_2(L13_2)
    L13_2 = L7_2 - L12_2
    L13_2 = #L13_2
    if not A2_2 then
      if L5_2 then
        L14_2 = L6_2[L11_2]
        if L14_2 ~= L5_2 and A1_2 >= L13_2 then
          L14_2 = #L3_2
          L14_2 = L14_2 + 1
          L15_2 = L6_2[L11_2]
          L3_2[L14_2] = L15_2
        end
      end
    elseif A1_2 >= L13_2 then
      L14_2 = #L3_2
      L14_2 = L14_2 + 1
      L15_2 = L6_2[L11_2]
      L3_2[L14_2] = L15_2
    end
  end
  return L3_2
end
L0_1.getNearbyVehicles = L1_1
L0_1 = WSB
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = GetActivePlayers
  L2_2 = L2_2()
  L3_2 = PlayerId
  L3_2 = L3_2()
  L4_2 = {}
  L5_2 = A0_2
  if nil == L5_2 then
    L6_2 = GetEntityCoords
    L7_2 = PlayerPedId
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L7_2()
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L5_2 = L6_2
  end
  if nil == A1_2 then
    A1_2 = 1000.0
  end
  L6_2 = 1
  L7_2 = #L2_2
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = L2_2[L9_2]
    if L10_2 ~= L3_2 then
      L10_2 = GetPlayerPed
      L11_2 = L2_2[L9_2]
      L10_2 = L10_2(L11_2)
      if nil ~= L10_2 then
        L11_2 = GetEntityCoords
        L12_2 = L10_2
        L11_2 = L11_2(L12_2)
        L12_2 = L5_2 - L11_2
        L12_2 = #L12_2
        if A1_2 >= L12_2 then
          L13_2 = #L4_2
          L13_2 = L13_2 + 1
          L14_2 = L2_2[L9_2]
          L4_2[L13_2] = L14_2
        end
      end
    end
  end
  return L4_2
end
L0_1.getNearbyPlayers = L1_1
L0_1 = WSB
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = GetActivePlayers
  L2_2 = L2_2()
  L3_2 = PlayerId
  L3_2 = L3_2()
  L4_2 = {}
  L5_2 = A0_2
  if nil == L5_2 then
    L6_2 = GetEntityCoords
    L7_2 = PlayerPedId
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L7_2()
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    L5_2 = L6_2
  end
  if nil == A1_2 then
    A1_2 = 1000.0
  end
  L6_2 = 1
  L7_2 = #L2_2
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = L2_2[L9_2]
    if L10_2 ~= L3_2 then
      L10_2 = GetPlayerPed
      L11_2 = L2_2[L9_2]
      L10_2 = L10_2(L11_2)
      if nil ~= L10_2 then
        L11_2 = GetEntityCoords
        L12_2 = L10_2
        L11_2 = L11_2(L12_2)
        L12_2 = L5_2 - L11_2
        L12_2 = #L12_2
        if A1_2 >= L12_2 then
          L13_2 = #L4_2
          L13_2 = L13_2 + 1
          L4_2[L13_2] = L10_2
        end
      end
    end
  end
  return L4_2
end
L0_1.getNearbyPlayerPeds = L1_1
L0_1 = WSB
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = PlayerId
  L2_2 = L2_2()
  L3_2 = DoesEntityExist
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = A0_2
    L4_2 = false
    L3_2(L4_2)
    return
  end
  L3_2 = NetworkGetNetworkIdFromEntity
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = SetNetworkIdCanMigrate
  L5_2 = L3_2
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = SetNetworkIdExistsOnAllMachines
  L5_2 = L3_2
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = NetworkSetNetworkIdDynamic
  L5_2 = L3_2
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = SetNetworkIdSyncToPlayer
  L5_2 = L3_2
  L6_2 = L2_2
  L7_2 = true
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = NetworkGetEntityOwner
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  if L4_2 ~= L2_2 then
    while true do
      L4_2 = NetworkGetEntityOwner
      L5_2 = A1_2
      L4_2 = L4_2(L5_2)
      if L4_2 == L2_2 then
        break
      end
      L4_2 = NetworkRequestControlOfEntity
      L5_2 = A1_2
      L4_2(L5_2)
      L4_2 = Wait
      L5_2 = 30
      L4_2(L5_2)
    end
  end
  L4_2 = A0_2
  L5_2 = true
  L4_2(L5_2)
end
L0_1.forceEntityOwnership = L1_1
L0_1 = WSB
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "number" == L1_2 then
    L1_2 = DisableControlAction
    L2_2 = 0
    L3_2 = A0_2
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
  else
    if A0_2 then
      L1_2 = next
      L2_2 = A0_2
      L1_2 = L1_2(L2_2)
      if L1_2 then
        goto lbl_23
      end
    end
    L1_2 = DisableAllControlActions
    L2_2 = 0
    L1_2(L2_2)
    goto lbl_33
    ::lbl_23::
    L1_2 = 1
    L2_2 = #A0_2
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = DisableControlAction
      L6_2 = 0
      L7_2 = A0_2[L4_2]
      L8_2 = true
      L5_2(L6_2, L7_2, L8_2)
    end
  end
  ::lbl_33::
end
L0_1.disableKeys = L1_1
L0_1 = WSB
function L1_1()
  local L0_2, L1_2
  L0_2 = WSB
  L0_2 = L0_2.awaitServerCallback
  L1_2 = "wasabi_bridge:isPlayerBoss"
  L0_2 = L0_2(L1_2)
  L1_2 = L0_2 or L1_2
  if not L0_2 then
    L1_2 = false
  end
  return L1_2
end
L0_1.isPlayerBoss = L1_1
