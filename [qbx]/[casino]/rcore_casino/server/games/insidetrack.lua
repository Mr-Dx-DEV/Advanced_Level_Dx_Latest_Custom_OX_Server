local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1
L0_1 = {}
BettingSession = L0_1
L0_1 = BettingSession
L1_1 = BettingSession
L0_1.__index = L1_1
L0_1 = BettingSession
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = DebugStart
  L3_2 = "BettingSession:create"
  L2_2(L3_2)
  L2_2 = {}
  L3_2 = setmetatable
  L4_2 = L2_2
  L5_2 = BettingSession
  L3_2(L4_2, L5_2)
  L2_2.id = A1_2
  L3_2 = A1_2 % 2
  if 0 == L3_2 then
    L3_2 = "BETTING_GENERIC_PURPLE"
    if L3_2 then
      goto lbl_19
    end
  end
  L3_2 = "BETTING_GENERIC_ORANGE"
  ::lbl_19::
  L2_2.screen = L3_2
  L2_2.playerId = -1
  L2_2.ticket = nil
  L2_2.mainEvent = false
  L3_2 = {}
  L2_2.horses = L3_2
  L2_2.winnings = 0
  L3_2 = GetGameTimer
  L3_2 = L3_2()
  L2_2.canInteractTime = L3_2
  L2_2.raceStartTime = 0
  function L3_2()
    local L0_3, L1_3
    L2_2.ticket = nil
    L2_2.horses = nil
    L2_2.playerId = -1
    L0_3 = L2_2.id
    L0_3 = L0_3 % 2
    if 0 == L0_3 then
      L0_3 = "BETTING_GENERIC_PURPLE"
      if L0_3 then
        goto lbl_13
      end
    end
    L0_3 = "BETTING_GENERIC_ORANGE"
    ::lbl_13::
    L2_2.screen = L0_3
    L2_2.winnings = 0
    L0_3 = GetGameTimer
    L0_3 = L0_3()
    L2_2.canInteractTime = L0_3
  end
  L2_2.reset = L3_2
  function L3_2()
    local L0_3, L1_3
    L0_3 = GetGameTimer
    L0_3 = L0_3()
    L1_3 = L2_2.canInteractTime
    L0_3 = L0_3 < L1_3
    return L0_3
  end
  L2_2.inTimeout = L3_2
  function L3_2(A0_3)
    local L1_3
    L1_3 = GetGameTimer
    L1_3 = L1_3()
    L1_3 = L1_3 + A0_3
    L2_2.canInteractTime = L1_3
  end
  L2_2.blockInteraction = L3_2
  function L3_2(A0_3)
    local L1_3
    L1_3 = L2_2.playerId
    if -1 ~= L1_3 then
      L1_3 = false
      return L1_3
    end
    L1_3 = L2_2.reset
    L1_3()
    L2_2.playerId = A0_3
    L2_2.screen = "BETTING"
    L1_3 = true
    return L1_3
  end
  L2_2.use = L3_2
  return L2_2
end
L0_1.create = L1_1
L0_1 = {}
L1_1 = 1
L2_1 = 16
L3_1 = 1
for L4_1 = L1_1, L2_1, L3_1 do
  L5_1 = BettingSession
  L6_1 = L5_1
  L5_1 = L5_1.create
  L7_1 = L4_1
  L5_1 = L5_1(L6_1, L7_1)
  L0_1[L4_1] = L5_1
end
L1_1 = {}
L2_1 = {}
L1_1.roundId = 0
L3_1 = {}
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = DebugStart
  L3_2 = "PlayingStateChanged"
  L2_2(L3_2)
  if A1_2 then
    L2_2 = L3_1
    L2_2 = L2_2[A0_2]
    if nil == L2_2 then
      L2_2 = table
      L2_2 = L2_2.insert
      L3_2 = L3_1
      L4_2 = A0_2
      L2_2(L3_2, L4_2)
  end
  elseif not A1_2 then
    L2_2 = L3_1
    L2_2[A0_2] = nil
  end
end
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L3_2 = DebugStart
  L4_2 = "GetRandomHorsesByOdds"
  L3_2(L4_2)
  L3_2 = {}
  L4_2 = {}
  L5_2 = {}
  L6_2 = -1
  L7_2 = 1
  L8_2 = 95
  L9_2 = 1
  for L10_2 = L7_2, L8_2, L9_2 do
    L11_2 = horsePresets
    L11_2 = L11_2[L10_2]
    L11_2 = L11_2.odds
    if A0_2 <= L11_2 and A1_2 >= L11_2 then
      L12_2 = #L5_2
      if 0 == L12_2 then
        L12_2 = 1
      end
      L13_2 = table
      L13_2 = L13_2.insert
      L14_2 = L5_2
      L15_2 = RandomNumber
      L16_2 = 1
      L17_2 = L12_2
      L15_2 = L15_2(L16_2, L17_2)
      L16_2 = L10_2
      L13_2(L14_2, L15_2, L16_2)
    end
  end
  L7_2 = #L5_2
  if A2_2 > L7_2 then
    A2_2 = #L5_2
  end
  while true do
    L7_2 = #L3_2
    if not (A2_2 > L7_2) then
      break
    end
    L7_2 = RandomNumber
    L8_2 = 1
    L9_2 = #L5_2
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = L5_2[L7_2]
    L9_2 = horsePresets
    L9_2 = L9_2[L8_2]
    L9_2 = L9_2.odds
    L10_2 = table
    L10_2 = L10_2.remove
    L11_2 = L5_2
    L12_2 = L7_2
    L10_2(L11_2, L12_2)
    L10_2 = L4_2[L9_2]
    if not L10_2 then
      L4_2[L9_2] = true
      L10_2 = table
      L10_2 = L10_2.insert
      L11_2 = L3_2
      L12_2 = L8_2
      L10_2(L11_2, L12_2)
    end
  end
  return L3_2
end
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = DebugStart
  L2_2 = "GenerateRandomHorses"
  L1_2(L2_2)
  L1_2 = {}
  if A0_2 then
    L2_2 = Config
    L2_2 = L2_2.IT_MAIN_EVENT_HORSE_ODDS
    if L2_2 then
      goto lbl_14
    end
  end
  L2_2 = Config
  L2_2 = L2_2.IT_LOCAL_RACE_HORSE_ODDS
  ::lbl_14::
  L3_2 = pairs
  L4_2 = L5_1
  L5_2 = L2_2[1]
  L6_2 = L2_2[2]
  L7_2 = 2
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L1_2
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
  end
  L3_2 = pairs
  L4_2 = L5_1
  L5_2 = L2_2[3]
  L6_2 = L2_2[4]
  L7_2 = 2
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L1_2
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
  end
  L3_2 = pairs
  L4_2 = L5_1
  L5_2 = L2_2[5]
  L6_2 = L2_2[6]
  L7_2 = 2
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L1_2
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
  end
  return L1_2
end
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L1_2 = DebugStart
  L2_2 = "GetRandomWinners"
  L1_2(L2_2)
  L1_2 = {}
  L2_2 = {}
  L3_2 = 1
  L4_2 = 6
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2[L6_2]
    L8_2 = horsePresets
    L8_2 = L8_2[L7_2]
    L8_2 = L8_2.odds
    L9_2 = 31
    L8_2 = L9_2 - L8_2
    L9_2 = 1
    L10_2 = L8_2
    L11_2 = 1
    for L12_2 = L9_2, L10_2, L11_2 do
      L13_2 = #L1_2
      if 0 == L13_2 then
        L13_2 = 1
      end
      L14_2 = table
      L14_2 = L14_2.insert
      L15_2 = L1_2
      L16_2 = RandomNumber
      L17_2 = 1
      L18_2 = L13_2
      L16_2 = L16_2(L17_2, L18_2)
      L17_2 = L6_2
      L14_2(L15_2, L16_2, L17_2)
    end
  end
  L3_2 = {}
  L4_2 = 1
  L5_2 = #L1_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L1_2[L7_2]
    L9_2 = L3_2[L8_2]
    if nil == L9_2 then
      L3_2[L8_2] = true
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = L2_2
      L11_2 = L8_2
      L9_2(L10_2, L11_2)
    end
  end
  return L2_2
end
function L8_1()
  local L0_2, L1_2
  L0_2 = DebugStart
  L1_2 = "RefreshPlayerCount"
  L0_2(L1_2)
  L0_2 = L3_1
  L0_2 = #L0_2
  L1_1.playerCount = L0_2
end
function L9_1()
  local L0_2, L1_2
  L0_2 = DebugStart
  L1_2 = "ResetMainEvent"
  L0_2(L1_2)
  L1_1.bettingEnabled = false
  L1_1.locked = true
  L1_1.timeLeft = 0
  L1_1.state = -2
  L0_2 = {}
  L1_1.winners = L0_2
  L0_2 = {}
  L1_1.horses = L0_2
  L0_2 = {}
  L1_1.leaderboards = L0_2
  L0_2 = L1_1.roundId
  L0_2 = L0_2 + 1
  L1_1.roundId = L0_2
  L0_2 = Config
  L0_2 = L0_2.IT_MAIN_EVENT_MIN_PLAYERS
  L1_1.minPlayers = L0_2
  L0_2 = {}
  L2_1 = L0_2
  L0_2 = L8_1
  L0_2()
end
function L10_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = DebugStart
  L1_2 = "ProcessMainEventResults"
  L0_2(L1_2)
  L0_2 = {}
  L1_1.leaderboards = L0_2
  L0_2 = L1_1.winners
  L0_2 = L0_2[1]
  L1_2 = pairs
  L2_2 = L2_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = {}
    L8_2 = L6_2.horse
    if L8_2 == L0_2 then
      L8_2 = L6_2.potentialwinnings
      if L8_2 then
        goto lbl_23
      end
    end
    L8_2 = L6_2.bettings
    L8_2 = -L8_2
    ::lbl_23::
    L7_2.winnings = L8_2
    L8_2 = L6_2.playername
    L7_2.name = L8_2
    L8_2 = L6_2.playerid
    L7_2.id = L8_2
    L8_2 = L6_2.bettings
    L7_2.bettings = L8_2
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L1_1.leaderboards
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  L1_2 = pairs
  L2_2 = L1_1.leaderboards
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.winnings
    if L7_2 > 0 then
      L7_2 = Win
      L8_2 = L6_2.id
      L9_2 = "IT Main Event"
      L10_2 = L6_2.winnings
      L11_2 = "it"
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
      L8_2 = SendPlayerChipsBalance
      L9_2 = L6_2.id
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
    L7_2 = TriggerClientEvent
    L8_2 = "InsideTrack:WinningsInTotal"
    L9_2 = L6_2.id
    L10_2 = L6_2.winnings
    L11_2 = L6_2.bettings
    L7_2(L8_2, L9_2, L10_2, L11_2)
  end
end
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 0
  L2_2 = pairs
  L3_2 = L2_1
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.horse
    if L8_2 == A0_2 then
      L8_2 = L7_2.potentialwinnings
      if L8_2 then
        goto lbl_13
      end
    end
    L8_2 = 0
    ::lbl_13::
    L1_2 = L1_2 + L8_2
  end
  return L1_2
end
function L12_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = L1_1.winners
  L1_2 = 2147483647
  L2_2 = 1
  L3_2 = 1
  L4_2 = #L0_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L11_1
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if L1_2 > L7_2 then
      L2_2 = L6_2
      L1_2 = L7_2
    elseif L7_2 == L1_2 then
      L8_2 = RandomNumber
      L9_2 = 1
      L10_2 = 3
      L8_2 = L8_2(L9_2, L10_2)
      if 2 == L8_2 then
        L2_2 = L6_2
      end
    end
  end
  return L2_2
end
function L13_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = DebugStart
  L1_2 = "MainEventTimeExpired"
  L0_2(L1_2)
  L0_2 = L8_1
  L0_2()
  L0_2 = L1_1.state
  L1_2 = L1_1.state
  if -2 == L1_2 then
    L1_2 = L1_1.playerCount
    L2_2 = L1_1.minPlayers
    if L1_2 >= L2_2 then
      L1_2 = Config
      L1_2 = L1_2.IT_STARTING_SOON_TIME
      if L1_2 > 0 then
        L1_2 = -1
        if L1_2 then
          goto lbl_22
        end
      end
      L1_2 = 0
      ::lbl_22::
      L1_1.state = L1_2
    else
      L0_2 = -10
      L1_1.timeLeft = 3
    end
  else
    L1_2 = L1_1.state
    if -1 == L1_2 then
      L1_2 = Config
      L1_2 = L1_2.IT_STARTING_SOON_TIME
      L1_1.timeLeft = L1_2
      L1_1.state = 0
      L1_1.locked = true
      L1_1.bettingEnabled = false
    else
      L1_2 = L1_1.state
      if 0 == L1_2 then
        L1_2 = Config
        L1_2 = L1_2.IT_MAIN_EVENT_BETTING_TIME
        L1_1.timeLeft = L1_2
        L1_1.state = 1
        L1_1.locked = false
        L1_1.bettingEnabled = true
        L1_2 = L6_1
        L2_2 = true
        L1_2 = L1_2(L2_2)
        L1_1.horses = L1_2
      else
        L1_2 = L1_1.state
        if 1 == L1_2 then
          L1_2 = Config
          L1_2 = L1_2.IT_MAIN_EVENT_RACE_DURATION
          L1_1.timeLeft = L1_2
          L1_1.state = 2
          L1_1.locked = false
          L1_1.bettingEnabled = false
          L1_2 = L7_1
          L2_2 = L1_1.horses
          L1_2 = L1_2(L2_2)
          L1_1.winners = L1_2
          L1_2 = RandomNumber
          L2_2 = 1
          L3_2 = 100
          L1_2 = L1_2(L2_2, L3_2)
          L2_2 = Config
          L2_2 = L2_2.IT_MAIN_EVENT_RACE_WIN_CHANCE
          if L1_2 > L2_2 then
            L1_2 = L12_1
            L1_2 = L1_2()
            L2_2 = 1
            L3_2 = 1
            L4_2 = 6
            L5_2 = 1
            for L6_2 = L3_2, L4_2, L5_2 do
              L7_2 = L1_1.winners
              L7_2 = L7_2[L6_2]
              if L7_2 == L1_2 then
                L2_2 = L6_2
                break
              end
            end
            if 1 ~= L2_2 then
              L3_2 = L1_1.winners
              L3_2 = L3_2[L2_2]
              L4_2 = L1_1.winners
              L5_2 = L1_1.winners
              L5_2 = L5_2[1]
              L4_2[L2_2] = L5_2
              L4_2 = L1_1.winners
              L4_2[1] = L3_2
            end
          end
        else
          L1_2 = L1_1.state
          if 2 == L1_2 then
            L1_2 = L10_1
            L1_2()
            L1_1.locked = true
            L1_1.bettingEnabled = false
            L1_1.timeLeft = 10
            L1_1.state = 3
          else
            L1_2 = L1_1.state
            if 3 == L1_2 then
              L1_1.locked = true
              L1_1.bettingEnabled = false
              L1_1.state = 4
              L1_1.timeLeft = 10
            else
              L1_2 = L1_1.state
              if 4 == L1_2 then
                L1_2 = L9_1
                L1_2()
              end
            end
          end
        end
      end
    end
  end
  L1_2 = L1_1.state
  if L1_2 ~= L0_2 then
    L1_2 = BroadcastCasino
    L2_2 = "InsideTrack:MainEvent"
    L3_2 = L1_1
    L1_2(L2_2, L3_2)
  end
end
function L14_1()
  local L0_2, L1_2, L2_2
  L0_2 = DebugStart
  L1_2 = "StartMainEvent"
  L0_2(L1_2)
  L0_2 = L9_1
  L0_2()
  L0_2 = BroadcastCasino
  L1_2 = "InsideTrack:MainEvent"
  L2_2 = L1_1
  L0_2(L1_2, L2_2)
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3
    while true do
      L0_3 = L1_1
      if nil == L0_3 then
        break
      end
      L0_3 = L1_1.timeLeft
      if L0_3 > 0 then
        L0_3 = L1_1.timeLeft
        L0_3 = L0_3 - 1
        L1_1.timeLeft = L0_3
      end
      L0_3 = L1_1.timeLeft
      if 0 == L0_3 then
        L0_3 = L13_1
        L0_3()
      end
      L0_3 = Wait
      L1_3 = 1000
      L0_3(L1_3)
    end
  end
  L2_2 = true
  L0_2(L1_2, L2_2)
end
function L15_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = DebugStart
  L3_2 = "AddMainEventTicket"
  L2_2(L3_2)
  L2_2 = L2_1
  L2_2 = L2_2[A0_2]
  if nil ~= L2_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = L2_1
  L2_2[A0_2] = A1_2
  L2_2 = Debug
  L3_2 = "Main event ticket for player saved."
  L2_2(L3_2)
  L2_2 = true
  return L2_2
end
function L16_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = DebugStart
  L2_2 = "GetPlayerSession"
  L1_2(L2_2)
  L1_2 = pairs
  L2_2 = L0_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.playerId
    if L7_2 == A0_2 then
      return L6_2
    end
  end
  L1_2 = nil
  return L1_2
end
L17_1 = RegisterNetEvent
L18_1 = "InsideTrack:SendTicket"
L17_1(L18_1)
L17_1 = AddEventHandler
L18_1 = "InsideTrack:SendTicket"
function L19_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = source
  L3_2 = L16_1
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if nil == L3_2 then
    L4_2 = Debug
    L5_2 = "Player "
    L6_2 = L2_2
    L7_2 = " is sending ticket but doesn't control any machine"
    L5_2 = L5_2 .. L6_2 .. L7_2
    L4_2(L5_2)
    return
  end
  L4_2 = L3_2.inTimeout
  L4_2 = L4_2()
  if L4_2 then
    return
  end
  L4_2 = L3_2.blockInteraction
  L5_2 = 300
  L4_2(L5_2)
  if 0 == A1_2 then
    L4_2 = Config
    L4_2 = L4_2.IT_LOCAL_RACE_MIN_BET
    if L4_2 then
      goto lbl_30
    end
  end
  L4_2 = Config
  L4_2 = L4_2.IT_MAIN_EVENT_RACE_MIN_BET
  ::lbl_30::
  if 0 == A1_2 then
    L5_2 = Config
    L5_2 = L5_2.IT_LOCAL_RACE_MAX_BET
    if L5_2 then
      goto lbl_38
    end
  end
  L5_2 = Config
  L5_2 = L5_2.IT_MAIN_EVENT_RACE_MAX_BET
  ::lbl_38::
  L6_2 = Clamp
  L7_2 = A0_2.bet
  L8_2 = L4_2
  L9_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = A0_2.horse
  L8_2 = 0
  L9_2 = nil
  if 0 == A1_2 then
    L10_2 = Config
    L10_2 = L10_2.IT_LOCAL_RACE_COOLDOWN
    if L10_2 then
      goto lbl_54
    end
  end
  L10_2 = Config
  L10_2 = L10_2.IT_MAIN_EVENT_COOLDOWN
  ::lbl_54::
  if L10_2 then
    L11_2 = tonumber
    L12_2 = L10_2
    L11_2 = L11_2(L12_2)
    if L11_2 then
      L11_2 = GetPlayerIdentifier
      L12_2 = L2_2
      L11_2 = L11_2(L12_2)
      L12_2 = Cache
      L13_2 = L12_2
      L12_2 = L12_2.GetNow
      L14_2 = L11_2
      L12_2 = L12_2(L13_2, L14_2)
      L13_2 = os
      L13_2 = L13_2.time
      L13_2 = L13_2()
      if L12_2 then
        L9_2 = L13_2 + L10_2
        if 0 == A1_2 then
          L14_2 = L12_2.insideTrackCooldownUntil
          if L14_2 then
            L14_2 = L12_2.insideTrackCooldownUntil
            if L13_2 < L14_2 then
              return
            end
          end
          L12_2.insideTrackCooldownUntil = L9_2
        elseif 1 == A1_2 then
          L14_2 = L12_2.insideTrackMainCooldownUntil
          if L14_2 then
            L14_2 = L12_2.insideTrackMainCooldownUntil
            if L13_2 < L14_2 then
              return
            end
          end
          L12_2.insideTrackMainCooldownUntil = L9_2
        end
        L14_2 = Cache
        L15_2 = L14_2
        L14_2 = L14_2.Save
        L16_2 = L11_2
        L14_2(L15_2, L16_2)
      end
    end
  end
  if 0 == A1_2 then
    L11_2 = L3_2.ticket
    if nil ~= L11_2 then
      L11_2 = Debug
      L12_2 = "This machine already has a betting ticket"
      L11_2(L12_2)
      return
    end
    L11_2 = L3_2.horses
    if L11_2 then
      L11_2 = L3_2.horses
      L11_2 = #L11_2
      if 0 ~= L11_2 then
        goto lbl_127
      end
    end
    L11_2 = L6_1
    L12_2 = false
    L11_2 = L11_2(L12_2)
    L3_2.horses = L11_2
    L11_2 = TriggerClientEvent
    L12_2 = "InsideTrack:ResetLocalHorses"
    L13_2 = L2_2
    L14_2 = L3_2.horses
    L15_2 = L9_2
    L11_2(L12_2, L13_2, L14_2, L15_2)
    do return end
    ::lbl_127::
    L11_2 = Pay
    L12_2 = L2_2
    L13_2 = "bet $"
    L14_2 = L6_2
    L15_2 = " on horse "
    L16_2 = L7_2
    L13_2 = L13_2 .. L14_2 .. L15_2 .. L16_2
    L14_2 = L6_2
    L15_2 = "Inside Track"
    L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
    L8_2 = L11_2
    if not L8_2 or -1 == L8_2 then
      return
    end
    L3_2.ticket = A0_2
    L11_2 = L3_2.blockInteraction
    L12_2 = Config
    L12_2 = L12_2.IT_LOCAL_RACE_DURATION
    L12_2 = L12_2 * 1000
    L11_2(L12_2)
    L11_2 = GetGameTimer
    L11_2 = L11_2()
    L3_2.raceStartTime = L11_2
    L3_2.winnings = 0
    L11_2 = L7_1
    L12_2 = L3_2.horses
    L11_2 = L11_2(L12_2)
    L12_2 = L11_2[1]
    L13_2 = A0_2.horse
    if L12_2 == L13_2 then
      L12_2 = GetGainFromBet
      L13_2 = L3_2.horses
      L13_2 = L13_2[L7_2]
      L14_2 = A0_2.bet
      L12_2 = L12_2(L13_2, L14_2)
      L3_2.winnings = L12_2
      L12_2 = Config
      L12_2 = L12_2.IT_LOCAL_RACE_WIN_CHANCE
      if L12_2 then
        L12_2 = tonumber
        L13_2 = Config
        L13_2 = L13_2.IT_LOCAL_RACE_WIN_CHANCE
        L12_2 = L12_2(L13_2)
        if L12_2 then
          L12_2 = RandomNumber
          L13_2 = 1
          L14_2 = 100
          L12_2 = L12_2(L13_2, L14_2)
          L13_2 = Config
          L13_2 = L13_2.IT_LOCAL_RACE_WIN_CHANCE
          if L12_2 > L13_2 then
            L12_2 = L11_2[1]
            L13_2 = L11_2[2]
            L11_2[1] = L13_2
            L11_2[2] = L12_2
            L3_2.winnings = 0
          end
        end
      end
    end
    L12_2 = L3_2.winnings
    if 0 == L12_2 then
      L12_2 = -L6_2
      L3_2.winnings = L12_2
    end
    L12_2 = TriggerClientEvent
    L13_2 = "InsideTrack:ReturnTicket"
    L14_2 = L2_2
    L15_2 = 0
    L16_2 = L11_2
    L12_2(L13_2, L14_2, L15_2, L16_2)
  elseif 1 == A1_2 then
    L11_2 = L1_1.state
    if 1 == L11_2 then
      L11_2 = L1_1.state
      if 1 == L11_2 then
        L11_2 = L2_1
        L11_2 = L11_2[L2_2]
        if nil == L11_2 then
          goto lbl_219
        end
      end
      L11_2 = TriggerClientEvent
      L12_2 = "InsideTrack:MainEventTicketDeclined"
      L13_2 = L2_2
      L11_2(L12_2, L13_2)
      do return end
      ::lbl_219::
      L11_2 = Pay
      L12_2 = L2_2
      L13_2 = "bet $"
      L14_2 = L6_2
      L15_2 = " on horse "
      L16_2 = L7_2
      L13_2 = L13_2 .. L14_2 .. L15_2 .. L16_2
      L14_2 = L6_2
      L15_2 = "Inside Track"
      L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
      L8_2 = L11_2
      if not L8_2 or -1 == L8_2 then
        L11_2 = TriggerClientEvent
        L12_2 = "InsideTrack:MainEventTicketDeclined"
        L13_2 = L2_2
        L11_2(L12_2, L13_2)
        return
      end
      L11_2 = GetGainFromBet
      L12_2 = L1_1.horses
      L12_2 = L12_2[L7_2]
      L13_2 = A0_2.bet
      L11_2 = L11_2(L12_2, L13_2)
      A0_2.potentialwinnings = L11_2
      L11_2 = L1_1.roundId
      A0_2.roundid = L11_2
      A0_2.bettings = L6_2
      L11_2 = GetPlayerRealName
      L12_2 = L2_2
      L11_2 = L11_2(L12_2)
      A0_2.playername = L11_2
      A0_2.playerid = L2_2
      L11_2 = horsePresets
      L12_2 = L1_1.horses
      L12_2 = L12_2[L7_2]
      L11_2 = L11_2[L12_2]
      L11_2 = L11_2.odds
      A0_2.odds = L11_2
      L11_2 = L15_1
      L12_2 = L2_2
      L13_2 = A0_2
      L11_2 = L11_2(L12_2, L13_2)
      if L11_2 then
        L11_2 = TriggerClientEvent
        L12_2 = "InsideTrack:MainEventTicketAccepted"
        L13_2 = L2_2
        L14_2 = A0_2
        L15_2 = L9_2
        L11_2(L12_2, L13_2, L14_2, L15_2)
      else
        L11_2 = TriggerClientEvent
        L12_2 = "InsideTrack:MainEventTicketDeclined"
        L13_2 = L2_2
        L11_2(L12_2, L13_2)
      end
    end
  end
  L11_2 = SendPlayerChipsBalance
  L12_2 = L2_2
  L13_2 = L8_2
  L11_2(L12_2, L13_2)
end
L17_1(L18_1, L19_1)
L17_1 = RegisterNetEvent
L18_1 = "InsideTrack:CollectWinnings"
L17_1(L18_1)
L17_1 = AddEventHandler
L18_1 = "InsideTrack:CollectWinnings"
function L19_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = source
  L1_2 = L16_1
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if nil == L1_2 then
    return
  end
  L2_2 = L1_2.winnings
  L3_2 = GetGameTimer
  L3_2 = L3_2()
  L4_2 = L1_2.raceStartTime
  L3_2 = L3_2 - L4_2
  L4_2 = Config
  L4_2 = L4_2.IT_LOCAL_RACE_DURATION
  L4_2 = L4_2 * 1000
  if L3_2 < L4_2 then
    L2_2 = 0
  end
  L4_2 = TriggerClientEvent
  L5_2 = "InsideTrack:WinningsInTotal"
  L6_2 = L0_2
  L7_2 = L2_2
  L8_2 = L1_2.ticket
  L8_2 = L8_2.bet
  L4_2(L5_2, L6_2, L7_2, L8_2)
  if L2_2 > 0 then
    L4_2 = Win
    L5_2 = L0_2
    L6_2 = "IT Local Game"
    L7_2 = L2_2
    L8_2 = "it"
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
    L5_2 = SendPlayerChipsBalance
    L6_2 = L0_2
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
  end
  L1_2.winnings = 0
  L1_2.ticket = nil
  L1_2.horses = nil
end
L17_1(L18_1, L19_1)
L17_1 = RegisterNetEvent
L18_1 = "InsideTrack:UpdateScreen"
L17_1(L18_1)
L17_1 = AddEventHandler
L18_1 = "InsideTrack:UpdateScreen"
function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = source
  L2_2 = L16_1
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if nil == L2_2 then
    return
  end
  L2_2.screen = A0_2
  L3_2 = BroadcastCasino
  L4_2 = "InsideTrack:ScreenUpdated"
  L5_2 = L2_2.id
  L6_2 = L2_2.screen
  L3_2(L4_2, L5_2, L6_2)
end
L17_1(L18_1, L19_1)
L17_1 = RegisterNetEvent
L18_1 = "InsideTrack:ResetLocalHorses"
L17_1(L18_1)
L17_1 = AddEventHandler
L18_1 = "InsideTrack:ResetLocalHorses"
function L19_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = source
  L1_2 = L16_1
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if nil == L1_2 then
    return
  end
  L2_2 = L1_2.horses
  if nil ~= L2_2 then
    return
  end
  L2_2 = GetPlayerIdentifier
  L3_2 = L0_2
  L2_2 = L2_2(L3_2)
  L3_2 = Cache
  L4_2 = L3_2
  L3_2 = L3_2.GetNow
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L4_2 = L3_2.insideTrackCooldownUntil
    if L4_2 then
      goto lbl_25
    end
  end
  L4_2 = nil
  ::lbl_25::
  L5_2 = L6_1
  L6_2 = false
  L5_2 = L5_2(L6_2)
  L1_2.horses = L5_2
  L5_2 = TriggerClientEvent
  L6_2 = "InsideTrack:ResetLocalHorses"
  L7_2 = L0_2
  L8_2 = L1_2.horses
  L9_2 = L4_2
  L5_2(L6_2, L7_2, L8_2, L9_2)
end
L17_1(L18_1, L19_1)
L17_1 = RegisterNetEvent
L18_1 = "InsideTrack:GetStates"
L17_1(L18_1)
L17_1 = AddEventHandler
L18_1 = "InsideTrack:GetStates"
function L19_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = source
  L1_2 = TriggerClientEvent
  L2_2 = "InsideTrack:GetStates"
  L3_2 = L0_2
  L4_2 = L0_1
  L5_2 = L1_1
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L17_1(L18_1, L19_1)
L17_1 = RegisterNetEvent
L18_1 = "InsideTrack:EnterMachine"
L17_1(L18_1)
L17_1 = AddEventHandler
L18_1 = "InsideTrack:EnterMachine"
function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = source
  L2_2 = Debug
  L3_2 = "Player "
  L4_2 = L1_2
  L5_2 = " is trying to enter machine id "
  L6_2 = A0_2
  L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2
  L2_2(L3_2)
  L2_2 = 1
  L3_2 = 16
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L0_1
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.playerId
    if L6_2 == L1_2 then
      return
    end
  end
  L2_2 = L0_1
  L2_2 = L2_2[A0_2]
  if nil == L2_2 then
    return
  end
  L3_2 = L2_2.use
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = L6_1
    L5_2 = false
    L4_2 = L4_2(L5_2)
    L2_2.horses = L4_2
    L4_2 = TriggerClientEvent
    L5_2 = "InsideTrack:EnterMachine"
    L6_2 = L1_2
    L7_2 = L2_2
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = BroadcastCasino
    L5_2 = "InsideTrack:PlayerEnteredMachine"
    L6_2 = L2_2
    L4_2(L5_2, L6_2)
    L4_2 = Cache
    L5_2 = L4_2
    L4_2 = L4_2.SetPlayerState
    L6_2 = L1_2
    L7_2 = "Game"
    L8_2 = {}
    L8_2.type = "Inside Track"
    L8_2.coords = A0_2
    L8_2.chair = A0_2
    L4_2(L5_2, L6_2, L7_2, L8_2)
  else
    L4_2 = Debug
    L5_2 = "Player couldn't enter the machine."
    L4_2(L5_2)
    L4_2 = TriggerClientEvent
    L5_2 = "InsideTrack:EnterMachine"
    L6_2 = L1_2
    L7_2 = nil
    L4_2(L5_2, L6_2, L7_2)
  end
end
L17_1(L18_1, L19_1)
function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = DebugStart
  L2_2 = "PlayerLeftMachine"
  L1_2(L2_2)
  L1_2 = Cache
  L2_2 = L1_2
  L1_2 = L1_2.SetPlayerState
  L3_2 = A0_2
  L4_2 = "Game"
  L5_2 = nil
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = L16_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if nil == L1_2 then
    L2_2 = Debug
    L3_2 = "Player "
    L4_2 = A0_2
    L5_2 = " is trying to leave machine, but he's not controlling any"
    L3_2 = L3_2 .. L4_2 .. L5_2
    L2_2(L3_2)
    return
  end
  L2_2 = L1_2.reset
  L2_2()
  L2_2 = BroadcastCasino
  L3_2 = "InsideTrack:PlayerLeftMachine"
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L18_1 = RegisterNetEvent
L19_1 = "InsideTrack:LeaveMachine"
L18_1(L19_1)
L18_1 = AddEventHandler
L19_1 = "InsideTrack:LeaveMachine"
function L20_1()
  local L0_2, L1_2, L2_2
  L0_2 = source
  L1_2 = L17_1
  L2_2 = L0_2
  L1_2(L2_2)
end
L18_1(L19_1, L20_1)
L18_1 = RegisterNetEvent
L19_1 = "InsideTrack:PlayingStateChanged"
L18_1(L19_1)
L18_1 = AddEventHandler
L19_1 = "InsideTrack:PlayingStateChanged"
function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = source
  L2_2 = L4_1
  L3_2 = L1_2
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
end
L18_1(L19_1, L20_1)
function L18_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = DebugStart
  L2_2 = "InsideTrack_PlayerDropped"
  L1_2(L2_2)
  L1_2 = L17_1
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = L4_1
  L2_2 = A0_2
  L3_2 = false
  L1_2(L2_2, L3_2)
end
InsideTrack_PlayerDropped = L18_1
L18_1 = L9_1
L18_1()
L18_1 = Config
L18_1 = L18_1.IT_MAIN_EVENT_ENABLED
if L18_1 then
  L18_1 = CreateThread
  function L19_1()
    local L0_2, L1_2
    L0_2 = Wait
    L1_2 = 3000
    L0_2(L1_2)
    L0_2 = L14_1
    L0_2()
  end
  L18_1(L19_1)
end
