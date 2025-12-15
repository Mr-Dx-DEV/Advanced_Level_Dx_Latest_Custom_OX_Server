local L0_1, L1_1, L2_1
L0_1 = AddEventHandler
L1_1 = "Casino:GetPlayerState"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = IN_CASINO
  if not L1_2 then
    L1_2 = A0_2
    L2_2 = nil
    L1_2(L2_2)
    return
  end
  L1_2 = A0_2
  L2_2 = {}
  L3_2 = PLAYER_CACHE
  L2_2.cache = L3_2
  L3_2 = PLAYER_CHIPS
  L2_2.chips = L3_2
  L3_2 = PLAYER_IS_BOSS
  L2_2.is_boss = L3_2
  L3_2 = PLAYER_IS_VIP
  L2_2.is_vip = L3_2
  L3_2 = PLAYER_ITEMS
  L2_2.items = L3_2
  L3_2 = PLAYER_MONEY
  L2_2.money = L3_2
  L1_2(L2_2)
end
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "GetCasinoControl"
function L2_1()
  local L0_2, L1_2
  L0_2 = CasinoControl
  return L0_2
end
L0_1(L1_1, L2_1)
L0_1 = {}
function L1_1()
  local L0_2, L1_2
  L0_2 = IN_CASINO
  return L0_2
end
L0_1.IsPlayerInCasino = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = LAST_STARTED_GAME_TYPE
  L0_2 = nil ~= L0_2
  return L0_2
end
L0_1.IsPlayerBusy = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = IN_TP_SCENE
  return L0_2
end
L0_1.IsPlayerInTeleportScene = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = {}
  L1_2 = PLAYER_CACHE
  L0_2.cache = L1_2
  L1_2 = PLAYER_CHIPS
  L0_2.chips = L1_2
  L1_2 = PLAYER_IS_BOSS
  L0_2.is_boss = L1_2
  L1_2 = PLAYER_IS_VIP
  L0_2.is_vip = L1_2
  L1_2 = PLAYER_ITEMS
  L0_2.items = L1_2
  L1_2 = PLAYER_MONEY
  L0_2.money = L1_2
  return L0_2
end
L0_1.GetState = L1_1
function L1_1(A0_2)
  local L1_2
  HEIST_MODE = A0_2
end
L0_1.ToggleHeistMode = L1_1
CasinoControl = L0_1
