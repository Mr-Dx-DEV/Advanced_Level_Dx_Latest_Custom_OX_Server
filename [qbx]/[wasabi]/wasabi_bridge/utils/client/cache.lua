local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = WSB
L1_1 = {}
L1_1.ped = nil
L1_1.vehicle = nil
L1_1.seat = nil
L1_1.weapon = nil
L0_1.cache = L1_1
L0_1 = WSB
L0_1 = L0_1.cache
L1_1 = PlayerId
L1_1 = L1_1()
L0_1.playerId = L1_1
L0_1 = WSB
L0_1 = L0_1.cache
L1_1 = GetPlayerServerId
L2_1 = WSB
L2_1 = L2_1.cache
L2_1 = L2_1.playerId
L1_1 = L1_1(L2_1)
L0_1.serverId = L1_1
L0_1 = GetVehiclePedIsIn
L1_1 = GetPedInVehicleSeat
L2_1 = GetVehicleMaxNumberOfPassengers
L3_1 = GetCurrentPedWeapon
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = WSB
  L2_2 = L2_2.cache
  L2_2 = L2_2[A0_2]
  if L2_2 ~= A1_2 then
    L2_2 = WSB
    L2_2 = L2_2.cache
    L2_2[A0_2] = A1_2
    L2_2 = TriggerEvent
    L3_2 = "wasabi_bridge:cache:"
    L4_2 = A0_2
    L3_2 = L3_2 .. L4_2
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
    L2_2 = TriggerEvent
    L3_2 = "wasabi_bridge:updateCache"
    L4_2 = A0_2
    L5_2 = A1_2
    L2_2(L3_2, L4_2, L5_2)
  end
end
L5_1 = CreateThread
function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  while true do
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = L4_1
    L2_2 = "ped"
    L3_2 = L0_2
    L1_2(L2_2, L3_2)
    L1_2 = L0_1
    L2_2 = L0_2
    L3_2 = false
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 > 0 then
      L2_2 = L4_1
      L3_2 = "vehicle"
      L4_2 = L1_2
      L2_2(L3_2, L4_2)
      L2_2 = WSB
      L2_2 = L2_2.cache
      L2_2 = L2_2.seat
      if L2_2 then
        L2_2 = L1_1
        L3_2 = L1_2
        L4_2 = WSB
        L4_2 = L4_2.cache
        L4_2 = L4_2.seat
        L2_2 = L2_2(L3_2, L4_2)
      end
      if L2_2 ~= L0_2 then
        L2_2 = -1
        L3_2 = L2_1
        L4_2 = L1_2
        L3_2 = L3_2(L4_2)
        L3_2 = L3_2 - 1
        L4_2 = 1
        for L5_2 = L2_2, L3_2, L4_2 do
          L6_2 = L1_1
          L7_2 = L1_2
          L8_2 = L5_2
          L6_2 = L6_2(L7_2, L8_2)
          if L6_2 == L0_2 then
            L6_2 = L4_1
            L7_2 = "seat"
            L8_2 = L5_2
            L6_2(L7_2, L8_2)
            break
          end
        end
      end
    else
      L2_2 = L4_1
      L3_2 = "vehicle"
      L4_2 = false
      L2_2(L3_2, L4_2)
      L2_2 = L4_1
      L3_2 = "seat"
      L4_2 = false
      L2_2(L3_2, L4_2)
    end
    L2_2 = L3_1
    L3_2 = L0_2
    L4_2 = true
    L2_2, L3_2 = L2_2(L3_2, L4_2)
    L4_2 = L4_1
    L5_2 = "weapon"
    L6_2 = L3_2 or L6_2
    if not L2_2 or not L3_2 then
      L6_2 = false
    end
    L4_2(L5_2, L6_2)
    L4_2 = Wait
    L5_2 = 100
    L4_2(L5_2)
  end
end
L5_1(L6_1)
