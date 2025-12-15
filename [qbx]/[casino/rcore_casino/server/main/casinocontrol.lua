local L0_1, L1_1, L2_1
L0_1 = exports
L1_1 = "GetCasinoControl"
function L2_1()
  local L0_2, L1_2
  L0_2 = CasinoControl
  return L0_2
end
L0_1(L1_1, L2_1)
L0_1 = {}
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CasinoPlayers
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = CasinoControl
  L1_2 = L1_2.GetPlayerCacheFromIdOrID
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  L2_2.playerId = A0_2
  L3_2 = GetPlayerRealName
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L2_2.playerName = L3_2
  L3_2 = GetPlayerChips
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L2_2.playerChips = L3_2
  L3_2 = Cache
  L4_2 = L3_2
  L3_2 = L3_2.GetPlayerState
  L5_2 = A0_2
  L6_2 = "EnterTime"
  L7_2 = GetGameTimer
  L7_2 = L7_2()
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L2_2.enterTime = L3_2
  L3_2 = Cache
  L4_2 = L3_2
  L3_2 = L3_2.GetPlayerState
  L5_2 = A0_2
  L6_2 = "Score"
  L7_2 = 0
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L2_2.sessionScore = L3_2
  L3_2 = Cache
  L4_2 = L3_2
  L3_2 = L3_2.GetPlayerState
  L5_2 = A0_2
  L6_2 = "Game"
  L7_2 = nil
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L2_2.currentGame = L3_2
  L3_2 = GetServerTime
  L3_2 = L3_2()
  L4_2 = L1_2.vipUntil
  if not L4_2 then
    L4_2 = 0
  end
  L3_2 = L3_2 < L4_2
  L2_2.isVIP = L3_2
  return L2_2
end
L0_1.GetCasinoPlayer = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = {}
  L1_2 = pairs
  L2_2 = CasinoPlayers
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = CasinoControl
    L7_2 = L7_2.GetCasinoPlayer
    L8_2 = L5_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L0_2
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
  end
  return L0_2
end
L0_1.GetCasinoPlayers = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = CasinoPlayers
  L1_2 = L1_2[A0_2]
  L1_2 = nil ~= L1_2
  return L1_2
end
L0_1.IsPlayerInCasino = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = Cache
  L2_2 = L1_2
  L1_2 = L1_2.GetPlayerState
  L3_2 = A0_2
  L4_2 = "Game"
  L5_2 = nil
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = nil == L1_2
  return L1_2
end
L0_1.IsPlayerBusy = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = TriggerClientEvent
  L2_2 = "Casino:BouncerKicked"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1.KickPlayer = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = EndEverything
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = TriggerClientEvent
  L2_2 = "Casino:StopPlaying"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1.StopPlaying = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = TriggerClientEvent
  L2_2 = "Casino:BlockPlaying"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1.BlockPlaying = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = TriggerClientEvent
  L2_2 = "Casino:AllowPlaying"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1.AllowPlaying = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = -1
  L2_2 = tonumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = GetPlayerIdentifier
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2
  else
    L1_2 = A0_2
  end
  if not L1_2 or -1 == L1_2 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = promise
  L3_2 = L2_2
  L2_2 = L2_2.new
  L2_2 = L2_2(L3_2)
  L3_2 = nil
  L4_2 = Cache
  L5_2 = L4_2
  L4_2 = L4_2.Get
  L6_2 = L1_2
  function L7_2(A0_3)
    local L1_3, L2_3, L3_3
    L3_2 = A0_3
    L1_3 = L2_2
    L2_3 = L1_3
    L1_3 = L1_3.resolve
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = Citizen
  L4_2 = L4_2.Await
  L5_2 = L2_2
  L4_2(L5_2)
  return L3_2
end
L0_1.GetPlayerCacheFromIdOrID = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CasinoControl
  L2_2 = L2_2.GetPlayerCacheFromIdOrID
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = os
    L3_2 = L3_2.time
    L3_2 = L3_2()
    L4_2 = Config
    L4_2 = L4_2.CASHIER_VIP_DURATION
    L3_2 = L3_2 + L4_2
    L4_2 = L3_2 or L4_2
    if not A1_2 or not L3_2 then
      L4_2 = 0
    end
    L2_2.vipUntil = L4_2
    L4_2 = true
    return L4_2
  end
  L3_2 = false
  return L3_2
end
L0_1.ToggleVIP = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = CasinoControl
  L1_2 = L1_2.GetPlayerCacheFromIdOrID
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  return L1_2
end
L0_1.GetCache = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  if not A1_2 then
    A1_2 = 0
  end
  L2_2 = CasinoControl
  L2_2 = L2_2.GetPlayerCacheFromIdOrID
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = os
    L3_2 = L3_2.time
    L3_2 = L3_2()
    L3_2 = L3_2 + A1_2
    L2_2.luckyWheelCooldownUntil = L3_2
    L3_2 = true
    return L3_2
  end
  L3_2 = false
  return L3_2
end
L0_1.SetLuckySpinCooldown = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  if not A1_2 then
    A1_2 = 0
  end
  L2_2 = CasinoControl
  L2_2 = L2_2.GetPlayerCacheFromIdOrID
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = os
    L3_2 = L3_2.time
    L3_2 = L3_2()
    L3_2 = L3_2 + A1_2
    L2_2.freeDrinksUntil = L3_2
    L3_2 = true
    return L3_2
  end
  L3_2 = false
  return L3_2
end
L0_1.SetFreeDrinksFor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = Casino_ResendPlayerProgress
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1.ResendPlayerCasinoProgress = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = pairs
  L3_2 = GameStates
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.activity
    if L8_2 == A0_2 then
      L7_2.enabled = A1_2
    end
  end
  L2_2 = TriggerClientEvent
  L3_2 = "Casino:NewGameStates"
  L4_2 = -1
  L5_2 = GameStates
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.ToggleCasinoActivity = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CasinoControl
  L1_2 = L1_2.ToggleCasinoActivity
  L2_2 = "casinoentrance"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1.ToggleCasino = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Cache
  L3_2 = L2_2
  L2_2 = L2_2.UpdateSetting
  L4_2 = A0_2
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.UpdateSetting = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = Cache
  L1_2 = L1_2.Settings
  L1_2 = L1_2[A0_2]
  return L1_2
end
L0_1.GetSetting = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = Cache
  L2_2 = L1_2
  L1_2 = L1_2.UpdateSetting
  L3_2 = "PodiumPriceProps"
  L4_2 = json
  L4_2 = L4_2.encode
  L5_2 = A0_2
  L4_2, L5_2 = L4_2(L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1.SetPodiumVehicleProps = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = Cache
  L1_2 = L1_2.Settings
  L1_2 = L1_2.PodiumPriceProps
  return L1_2
end
L0_1.GetPodiumVehicleProps = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = GetMoneyFromSociety
  return L0_2()
end
L0_1.GetSocietyMoney = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = RemoveMoneyFromSociety
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1.TakeMoneyFromSociety = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = GiveMoneyToSociety
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1.GiveMoneyToSociety = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  FORCE_CLOSED = A0_2
  L1_2 = TriggerClientEvent
  L2_2 = "Casino:ToggleForceCloseChanged"
  L3_2 = -1
  L4_2 = FORCE_CLOSED
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.ToggleForceClose = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = TriggerClientEvent
  L3_2 = "Casino:ToggleHeistMode"
  L4_2 = A0_2
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.ToggleHeistMode = L1_1
CasinoControl = L0_1
