local L0_1, L1_1, L2_1
L0_1 = 0
L1_1 = nil
function L2_1(A0_2)
  local L1_2
  L1_2 = Config
  L1_2 = L1_2.Rcore_Stats
  if not L1_2 then
    return
  end
  L1_2 = GetGameTimer
  L1_2 = L1_2()
  L0_1 = L1_2
  L1_1 = A0_2
end
Stats_StartActivity = L2_1
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = Config
  L0_2 = L0_2.Rcore_Stats
  if not L0_2 then
    return
  end
  L0_2 = L0_1
  if 0 == L0_2 then
    return
  end
  L0_2 = GetGameTimer
  L0_2 = L0_2()
  L1_2 = L0_1
  L0_2 = L0_2 - L1_2
  L1_2 = math
  L1_2 = L1_2.floor
  L2_2 = L0_2 / 1000
  L2_2 = L2_2 / 60
  L1_2 = L1_2(L2_2)
  if L1_2 > 0 then
    L2_2 = TriggerEvent
    L3_2 = "rcore_stats:api:increaseStatValue"
    L4_2 = "rcore_casino_"
    L5_2 = L1_1
    L6_2 = "_time_spent"
    L4_2 = L4_2 .. L5_2 .. L6_2
    L5_2 = L1_2
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = 0
  L0_1 = L2_2
end
Stats_EndActivity = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Config
  L2_2 = L2_2.Rcore_Stats
  if not L2_2 then
    return
  end
  L2_2 = TriggerEvent
  L3_2 = "rcore_stats:api:increaseStatValue"
  L4_2 = A0_2
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
Stats_Increase = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Config
  L2_2 = L2_2.Rcore_Stats
  if not L2_2 then
    return
  end
  L2_2 = TriggerEvent
  L3_2 = "rcore_stats:api:decreaseStatValue"
  L4_2 = A0_2
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
Stats_Decrease = L2_1
