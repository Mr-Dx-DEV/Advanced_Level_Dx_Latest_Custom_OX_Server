local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1
L0_1 = {}
L1_1 = {}
L2_1 = RegisterNetEvent
L3_1 = "DrinkingBar:ChampagneSceneStart"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "DrinkingBar:ChampagneSceneStart"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = source
  L3_2 = Cache
  L4_2 = L3_2
  L3_2 = L3_2.PlayerToNet
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = BroadcastCasino
  L5_2 = "DrinkingBar:ChampagneSceneStart"
  L6_2 = L2_2
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = L3_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "DrinkingBar:ChampagneSceneStrength"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "DrinkingBar:ChampagneSceneStrength"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = source
  L3_2 = Cache
  L4_2 = L3_2
  L3_2 = L3_2.PlayerToNet
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = BroadcastCasino
  L5_2 = "DrinkingBar:ChampagneSceneStrength"
  L6_2 = L2_2
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = L3_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "DrinkingBar:ChampagneSceneMiddle"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "DrinkingBar:ChampagneSceneMiddle"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = source
  L3_2 = Cache
  L4_2 = L3_2
  L3_2 = L3_2.PlayerToNet
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = BroadcastCasino
  L5_2 = "DrinkingBar:ChampagneSceneMiddle"
  L6_2 = L2_2
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = L3_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "DrinkingBar:ChampagneSceneOutro"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "DrinkingBar:ChampagneSceneOutro"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = source
  L3_2 = Cache
  L4_2 = L3_2
  L3_2 = L3_2.PlayerToNet
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = BroadcastCasino
  L5_2 = "DrinkingBar:ChampagneSceneOutro"
  L6_2 = L2_2
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = L3_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end
L2_1(L3_1, L4_1)
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = nil
  L4_2 = pairs
  L5_2 = CasinoInventoryItems
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L9_2.key
    if L10_2 == A2_2 then
      L3_2 = L9_2
      break
    end
  end
  if nil == L3_2 then
    return
  end
  L4_2 = false
  L5_2 = L3_2.luckyWheelAffected
  if L5_2 then
    L5_2 = A1_2.freeDrinksUntil
    if L5_2 then
      L5_2 = os
      L5_2 = L5_2.time
      L5_2 = L5_2()
      L6_2 = A1_2.freeDrinksUntil
      if L5_2 < L6_2 then
        L4_2 = true
      end
    end
  end
  if not L4_2 then
    L5_2 = GetPlayerMoney
    L6_2 = A0_2
    L5_2 = L5_2(L6_2)
    L6_2 = L3_2.price
    if L5_2 < L6_2 then
      return
    end
    L6_2 = RemovePlayerMoney
    L7_2 = A0_2
    L8_2 = L3_2.price
    L6_2(L7_2, L8_2)
  end
  L5_2 = L3_2.itemType
  if 1 == L5_2 or "casino_beer" == A2_2 then
    L5_2 = AddCasinoItem
    L6_2 = A0_2
    L7_2 = L3_2.key
    L8_2 = 1
    L5_2(L6_2, L7_2, L8_2)
  end
  L5_2 = TriggerClientEvent
  L6_2 = "DrinkingBar:DrinkBought"
  L7_2 = A0_2
  L8_2 = L3_2.key
  L5_2(L6_2, L7_2, L8_2)
end
L3_1 = RegisterNetEvent
L4_1 = "DrinkingBar:BuyDrink"
L3_1(L4_1)
L3_1 = AddEventHandler
L4_1 = "DrinkingBar:BuyDrink"
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = source
  L2_2 = GetPlayerIdentifier
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = Cache
  L4_2 = L3_2
  L3_2 = L3_2.Get
  L5_2 = L2_2
  function L6_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    if A0_3 then
      L1_3 = L2_1
      L2_3 = L1_2
      L3_3 = A0_3
      L4_3 = A0_2
      L1_3(L2_3, L3_3, L4_3)
    end
  end
  L3_2(L4_2, L5_2, L6_2)
end
L3_1(L4_1, L5_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = pairs
  L2_2 = L0_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    if L6_2 == A0_2 then
      L7_2 = true
      return L7_2
    end
  end
  L1_2 = false
  return L1_2
end
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L0_1
  L1_2 = L1_2[A0_2]
  if nil == L1_2 then
    return
  end
  L1_2 = BroadcastCasino
  L2_2 = "DrinkingBar:UnlockBartender"
  L3_2 = A0_2
  L4_2 = L0_1
  L4_2 = L4_2[A0_2]
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = Cache
  L2_2 = L1_2
  L1_2 = L1_2.SetPlayerState
  L3_2 = A0_2
  L4_2 = "Game"
  L5_2 = nil
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = L0_1
  L1_2[A0_2] = nil
end
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L0_1
  L2_2[A0_2] = A1_2
  L2_2 = BroadcastCasino
  L3_2 = "DrinkingBar:UseBartender"
  L4_2 = A0_2
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = Cache
  L3_2 = L2_2
  L2_2 = L2_2.SetPlayerState
  L4_2 = A0_2
  L5_2 = "Game"
  L6_2 = {}
  L6_2.type = "Bartender"
  L6_2.bartenderId = A1_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = pairs
  L2_2 = L1_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    if L6_2 == A0_2 then
      L7_2 = true
      return L7_2
    end
  end
  L1_2 = false
  return L1_2
end
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L1_1
  L1_2 = L1_2[A0_2]
  if nil == L1_2 then
    return
  end
  L1_2 = BroadcastCasino
  L2_2 = "DrinkingBar:UnlockChair"
  L3_2 = A0_2
  L4_2 = L1_1
  L4_2 = L4_2[A0_2]
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = Cache
  L2_2 = L1_2
  L1_2 = L1_2.SetPlayerState
  L3_2 = A0_2
  L4_2 = "Game"
  L5_2 = nil
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = L1_1
  L1_2[A0_2] = nil
end
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L1_1
  L2_2[A0_2] = A1_2
  L2_2 = BroadcastCasino
  L3_2 = "DrinkingBar:UseChair"
  L4_2 = A0_2
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = Cache
  L3_2 = L2_2
  L2_2 = L2_2.SetPlayerState
  L4_2 = A0_2
  L5_2 = "Game"
  L6_2 = {}
  L6_2.type = "Bar"
  L6_2.chair = A1_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L9_1 = RegisterNetEvent
L10_1 = "DrinkingBar:UseBartender"
L9_1(L10_1)
L9_1 = AddEventHandler
L10_1 = "DrinkingBar:UseBartender"
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = source
  L3_2 = Cache
  L3_2 = L3_2.PedNetIdCache
  L3_2[L2_2] = A1_2
  L3_2 = L3_1
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    return
  end
  L3_2 = L5_1
  L4_2 = L2_2
  L5_2 = A0_2
  L3_2(L4_2, L5_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "DrinkingBar:UseChair"
L9_1(L10_1)
L9_1 = AddEventHandler
L10_1 = "DrinkingBar:UseChair"
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = source
  L3_2 = Cache
  L3_2 = L3_2.PedNetIdCache
  L3_2[L2_2] = A1_2
  L3_2 = pairs
  L4_2 = L1_1
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    if L7_2 == L2_2 then
      return
    end
  end
  L3_2 = L6_1
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    return
  end
  L3_2 = L8_1
  L4_2 = L2_2
  L5_2 = A0_2
  L3_2(L4_2, L5_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "DrinkingBar:UseCasinoSnack"
L9_1(L10_1)
L9_1 = AddEventHandler
L10_1 = "DrinkingBar:UseCasinoSnack"
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = source
  L2_2 = L1_1
  L2_2 = L2_2[L1_2]
  if nil == L2_2 then
    return
  end
  L2_2 = GetPlayerCasinoItemCount
  L3_2 = L1_2
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 < 1 then
    return
  end
  L3_2 = Cache
  L4_2 = L3_2
  L3_2 = L3_2.PlayerToNet
  L5_2 = L1_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = RemoveCasinoItem
  L5_2 = L1_2
  L6_2 = A0_2
  L7_2 = 1
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = BroadcastCasino
  L5_2 = "DrinkingBar:UseCasinoSnack"
  L6_2 = L1_2
  L7_2 = A0_2
  L8_2 = L3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "DrinkingBar:StartWhiskeyAnimation"
L9_1(L10_1)
L9_1 = AddEventHandler
L10_1 = "DrinkingBar:StartWhiskeyAnimation"
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = source
  L3_2 = L0_1
  L3_2 = L3_2[L2_2]
  if nil == L3_2 then
    return
  end
  L3_2 = Cache
  L4_2 = L3_2
  L3_2 = L3_2.PlayerToNet
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = BroadcastCasino
  L5_2 = "DrinkingBar:StartWhiskeyAnimation"
  L6_2 = L2_2
  L7_2 = L0_1
  L7_2 = L7_2[L2_2]
  L8_2 = A0_2
  L9_2 = A1_2
  L10_2 = L3_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "DrinkingBar:StartPassAnimation"
L9_1(L10_1)
L9_1 = AddEventHandler
L10_1 = "DrinkingBar:StartPassAnimation"
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = source
  L3_2 = L0_1
  L3_2 = L3_2[L2_2]
  if nil == L3_2 then
    return
  end
  L3_2 = Cache
  L4_2 = L3_2
  L3_2 = L3_2.PlayerToNet
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = BroadcastCasino
  L5_2 = "DrinkingBar:StartPassAnimation"
  L6_2 = L2_2
  L7_2 = L0_1
  L7_2 = L7_2[L2_2]
  L8_2 = A0_2
  L9_2 = A1_2
  L10_2 = L3_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "DrinkingBar:LeaveBartender"
L9_1(L10_1)
L9_1 = AddEventHandler
L10_1 = "DrinkingBar:LeaveBartender"
function L11_1()
  local L0_2, L1_2, L2_2
  L0_2 = source
  L1_2 = L0_1
  L1_2 = L1_2[L0_2]
  if nil == L1_2 then
    return
  end
  L1_2 = L4_1
  L2_2 = L0_2
  L1_2(L2_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "DrinkingBar:LeaveChair"
L9_1(L10_1)
L9_1 = AddEventHandler
L10_1 = "DrinkingBar:LeaveChair"
function L11_1()
  local L0_2, L1_2, L2_2
  L0_2 = source
  L1_2 = L1_1
  L1_2 = L1_2[L0_2]
  if nil == L1_2 then
    return
  end
  L1_2 = L7_1
  L2_2 = L0_2
  L1_2(L2_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "DrinkingBar:VoiceBartender"
L9_1(L10_1)
L9_1 = AddEventHandler
L10_1 = "DrinkingBar:VoiceBartender"
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = source
  L3_2 = L0_1
  L3_2 = L3_2[L2_2]
  if nil == L3_2 then
    return
  end
  L3_2 = BroadcastCasino
  L4_2 = "DrinkingBar:VoiceBartender"
  L5_2 = L2_2
  L6_2 = L0_1
  L6_2 = L6_2[L2_2]
  L7_2 = A0_2
  L8_2 = A1_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "DrinkingBar:StartBeerAnimation"
L9_1(L10_1)
L9_1 = AddEventHandler
L10_1 = "DrinkingBar:StartBeerAnimation"
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = source
  L2_2 = L0_1
  L2_2 = L2_2[L1_2]
  if nil == L2_2 then
    return
  end
  L2_2 = BroadcastCasino
  L3_2 = "DrinkingBar:StartBeerAnimation"
  L4_2 = L1_2
  L5_2 = L0_1
  L5_2 = L5_2[L1_2]
  L6_2 = A0_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L9_1(L10_1, L11_1)
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = L4_1
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = L7_1
  L2_2 = A0_2
  L1_2(L2_2)
end
DrinkingBar_PlayerDropped = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = TriggerClientEvent
  L2_2 = "DrinkingBar:Sessions"
  L3_2 = A0_2
  L4_2 = L1_1
  L5_2 = L0_1
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
DrinkingBar_SendSessions = L9_1
