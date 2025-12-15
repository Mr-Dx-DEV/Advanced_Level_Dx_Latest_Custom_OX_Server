local L0_1, L1_1, L2_1
L0_1 = {}
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = DebugStart
  L1_2 = "ClearMugshotCache"
  L0_2(L1_2)
  L0_2 = pairs
  L1_2 = L0_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = UnregisterPedheadshot
    L7_2 = L5_2.handle
    L6_2(L7_2)
  end
  L0_2 = {}
  L0_1 = L0_2
end
ClearMugshotCache = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = DebugStart
  L1_2 = "GetMugshotCacheSize"
  L0_2(L1_2)
  L0_2 = 0
  L1_2 = pairs
  L2_2 = L0_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L0_2 = L0_2 + 1
  end
  return L0_2
end
GetMugshotCacheSize = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = DebugStart
  L2_2 = "GetCachedMugshot"
  L1_2(L2_2)
  L1_2 = pairs
  L2_2 = L0_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.pedId
    if L7_2 == A0_2 then
      return L6_2
    end
  end
  L1_2 = nil
  return L1_2
end
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = DebugStart
  L3_2 = "GetPlayerMugshotTexture"
  L2_2(L3_2)
  if nil == A1_2 then
    A1_2 = 1000
  end
  L2_2 = L1_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if nil ~= L2_2 then
    L3_2 = L2_2.txd
    return L3_2
  end
  L3_2 = RegisterPedheadshot
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = GAME_TIMER
  L4_2 = L4_2 + A1_2
  while true do
    L5_2 = IsPedheadshotReady
    L6_2 = L3_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      break
    end
    L5_2 = GAME_TIMER
    if not (L4_2 > L5_2) then
      break
    end
    L5_2 = IN_CASINO
    if not L5_2 then
      break
    end
    L5_2 = Wait
    L6_2 = 33
    L5_2(L6_2)
  end
  L5_2 = IsPedheadshotReady
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  if L5_2 then
    L5_2 = {}
    L5_2.pedId = A0_2
    L6_2 = GetPedheadshotTxdString
    L7_2 = L3_2
    L6_2 = L6_2(L7_2)
    L5_2.txd = L6_2
    L5_2.handle = L3_2
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = L0_1
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
    L6_2 = L5_2.txd
    return L6_2
  end
  L5_2 = "char_multiplayer"
  return L5_2
end
GetPlayerMugshotTexture = L2_1
