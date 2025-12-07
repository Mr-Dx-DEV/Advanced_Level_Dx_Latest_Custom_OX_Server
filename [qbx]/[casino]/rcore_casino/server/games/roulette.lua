local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1
L0_1 = {}
L1_1 = {}
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = DebugStart
  L2_2 = "GetRouletteTableFromCoords"
  L1_2(L2_2)
  L1_2 = pairs
  L2_2 = L0_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.coords
    L7_2 = L7_2 - A0_2
    L7_2 = #L7_2
    L8_2 = 0.2
    if L7_2 < L8_2 then
      return L6_2
    end
  end
  L1_2 = nil
  return L1_2
end
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = DebugStart
  L3_2 = "CreateRouletteTable"
  L2_2(L3_2)
  L2_2 = {}
  L2_2.coords = A0_2
  L2_2.type = A1_2
  L2_2.winnerNumber = 1
  L3_2 = {}
  L2_2.chairs = L3_2
  L3_2 = {}
  L2_2.history = L3_2
  L3_2 = {}
  L2_2.playerScore = L3_2
  L2_2.rounds = 0
  L2_2.dirtLevel = 0.0
  L2_2.dirtProps = 0
  L3_2 = 1
  L4_2 = 4
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L2_2.chairs
    L7_2[L6_2] = -1
  end
  L2_2.step = 0
  L2_2.timeleft = 0
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = L0_1
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  return L2_2
end
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = DebugStart
  L2_2 = "IsRouletteUsed"
  L1_2(L2_2)
  L1_2 = 1
  L2_2 = 4
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2.chairs
    L5_2 = L5_2[L4_2]
    if -1 ~= L5_2 then
      L5_2 = true
      return L5_2
    end
  end
  L1_2 = false
  return L1_2
end
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = DebugStart
  L2_2 = "GetRoulettePlayers"
  L1_2(L2_2)
  L1_2 = {}
  L2_2 = pairs
  L3_2 = A0_2.chairs
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    if nil ~= L7_2 and -1 ~= L7_2 then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L1_2
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
  end
  return L1_2
end
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L1_2 = DebugStart
  L2_2 = "PayForTickets"
  L1_2(L2_2)
  L1_2 = L5_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  A0_2.lastRoundBettings = L2_2
  L2_2 = {}
  A0_2.lastRoundWinnings = L2_2
  L2_2 = pairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L1_1
    L8_2 = L8_2[L7_2]
    if nil ~= L8_2 then
      L9_2 = L8_2.table
      if L9_2 == A0_2 then
        goto lbl_25
      end
    end
    do return end
    ::lbl_25::
    L9_2 = RouletteTableDatas
    L10_2 = A0_2.type
    L9_2 = L9_2[L10_2]
    L10_2 = pairs
    L11_2 = L8_2.ticket
    L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
    for L14_2, L15_2 in L10_2, L11_2, L12_2, L13_2 do
      L16_2 = true
      L17_2 = IsRouletteIndexBetOutsideBet
      L18_2 = L14_2
      L17_2 = L17_2(L18_2)
      if L17_2 then
        L17_2 = L9_2.MaxBetValueOutside
        if L15_2 > L17_2 then
          L17_2 = L8_2.ticket
          L18_2 = L9_2.MaxBetValueOutside
          L17_2[L14_2] = L18_2
      end
      else
        L17_2 = IsRouletteIndexBetOutsideBet
        L18_2 = L14_2
        L17_2 = L17_2(L18_2)
        if not L17_2 then
          L17_2 = L9_2.MaxBetValueInside
          if L15_2 > L17_2 then
            L17_2 = L8_2.ticket
            L18_2 = L9_2.MaxBetValueInside
            L17_2[L14_2] = L18_2
        end
        else
          L17_2 = L9_2.MinBetValue
          if L15_2 < L17_2 then
            L17_2 = L8_2.ticket
            L17_2[L14_2] = 0
          end
        end
      end
    end
    L10_2 = GetRouletteBetCountAndValue
    L11_2 = L8_2.ticket
    L10_2, L11_2, L12_2 = L10_2(L11_2)
    L13_2 = L9_2.MaxBetValueInside
    if not (L11_2 > L13_2) then
      L13_2 = L9_2.MaxBetValueOutside
      if not (L12_2 > L13_2) then
        goto lbl_78
      end
    end
    L13_2 = {}
    L8_2.ticket = L13_2
    do return end
    ::lbl_78::
    L13_2 = false
    L14_2 = GetPlayerChips
    L15_2 = L7_2
    L14_2 = L14_2(L15_2)
    L15_2 = L11_2 + L12_2
    if L14_2 >= L15_2 then
      L15_2 = TriggerClientEvent
      L16_2 = "Roulette:TicketPaidInTotal"
      L17_2 = L7_2
      L18_2 = L11_2 + L12_2
      L15_2(L16_2, L17_2, L18_2)
      L15_2 = Pay
      L16_2 = L7_2
      L17_2 = "Roulette Ticket"
      L18_2 = L11_2 + L12_2
      L19_2 = "Roulette"
      L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2)
      L13_2 = L15_2
    end
    if not L13_2 or -1 == L13_2 then
      L15_2 = {}
      L8_2.ticket = L15_2
    else
      L15_2 = L8_2.table
      L15_2 = L15_2.playerScore
      L15_2 = L15_2[L7_2]
      if nil ~= L15_2 then
        L15_2 = L8_2.table
        L15_2 = L15_2.playerScore
        L16_2 = L8_2.table
        L16_2 = L16_2.playerScore
        L16_2 = L16_2[L7_2]
        L17_2 = L11_2 + L12_2
        L16_2 = L16_2 - L17_2
        L15_2[L7_2] = L16_2
        L15_2 = A0_2.lastRoundBettings
        L16_2 = L11_2 + L12_2
        L15_2[L7_2] = L16_2
      end
      L15_2 = SendPlayerChipsBalance
      L16_2 = L7_2
      L17_2 = L13_2
      L15_2(L16_2, L17_2)
    end
  end
end
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = 0
  L3_2 = L5_1
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = pairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L1_1
    L10_2 = L10_2[L9_2]
    if nil ~= L10_2 then
      L11_2 = L10_2.table
      if L11_2 ~= A0_2 then
      else
        L11_2 = CalculateRoulettePlayerWinnings
        L12_2 = A1_2
        L13_2 = L10_2.ticket
        L11_2 = L11_2(L12_2, L13_2)
        L2_2 = L2_2 + L11_2
      end
    end
  end
  return L2_2
end
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = {}
  L3_2 = 2147483647
  L4_2 = 1
  if A1_2 then
    L5_2 = 38
    if L5_2 then
      goto lbl_11
    end
  end
  L5_2 = 36
  ::lbl_11::
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L7_1
    L9_2 = A0_2
    L10_2 = L7_2
    L8_2 = L8_2(L9_2, L10_2)
    if L3_2 > L8_2 then
      L3_2 = L8_2
    end
    L9_2 = #L2_2
    if 0 == L9_2 then
      L9_2 = 1
    end
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = L2_2
    L12_2 = RandomNumber
    L13_2 = 1
    L14_2 = L9_2
    L12_2 = L12_2(L13_2, L14_2)
    L13_2 = {}
    L13_2.number = L7_2
    L13_2.winnings = L8_2
    L10_2(L11_2, L12_2, L13_2)
  end
  L4_2 = pairs
  L5_2 = L2_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L9_2.winnings
    if L10_2 == L3_2 then
      L10_2 = L9_2.winnings
      L11_2 = L9_2.number
      return L10_2, L11_2
    end
  end
  L4_2 = -1
  L5_2 = -1
  return L4_2, L5_2
end
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = DebugStart
  L2_2 = "RewardWinners"
  L1_2(L2_2)
  L1_2 = L5_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = pairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L1_1
    L8_2 = L8_2[L7_2]
    if nil ~= L8_2 then
      L9_2 = L8_2.table
      if L9_2 == A0_2 then
        goto lbl_19
      end
    end
    do return end
    ::lbl_19::
    L9_2 = CalculateRoulettePlayerWinnings
    L10_2 = A0_2.winnerNumber
    L11_2 = L8_2.ticket
    L9_2 = L9_2(L10_2, L11_2)
    L10_2 = TriggerClientEvent
    L11_2 = "Roulette:TicketWinInTotal"
    L12_2 = L7_2
    L13_2 = L9_2
    L10_2(L11_2, L12_2, L13_2)
    if L9_2 > 0 then
      L10_2 = Win
      L11_2 = L7_2
      L12_2 = "Roulette Ticket"
      L13_2 = L9_2
      L14_2 = "Roulette"
      L10_2(L11_2, L12_2, L13_2, L14_2)
      L10_2 = L8_2.table
      L10_2 = L10_2.playerScore
      L10_2 = L10_2[L7_2]
      if nil ~= L10_2 then
        L10_2 = L8_2.table
        L10_2 = L10_2.playerScore
        L11_2 = L8_2.table
        L11_2 = L11_2.playerScore
        L11_2 = L11_2[L7_2]
        L11_2 = L11_2 + L9_2
        L10_2[L7_2] = L11_2
        L10_2 = A0_2.lastRoundWinnings
        L11_2 = {}
        L11_2.playerId = L7_2
        L12_2 = GetPlayerRealName
        L13_2 = L7_2
        L12_2 = L12_2(L13_2)
        L11_2.realName = L12_2
        L11_2.winnings = L9_2
        L10_2[L7_2] = L11_2
      end
    end
    L10_2 = {}
    L8_2.ticket = L10_2
  end
end
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = pairs
  L2_2 = A0_2.chairs
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2
    if -1 ~= L7_2 then
      L8_2 = L1_1
      L8_2 = L8_2[L7_2]
      L9_2 = 0
      if L8_2 then
        L10_2 = L8_2.ticket
        if L10_2 then
          L10_2 = tableLength
          L11_2 = L8_2.ticket
          L10_2 = L10_2(L11_2)
          L9_2 = L10_2
        end
      end
      if 0 == L9_2 then
        L10_2 = Roulette_LeaveChair
        L11_2 = L7_2
        L10_2(L11_2)
        L10_2 = TriggerClientEvent
        L11_2 = "Roulette:Kicked"
        L12_2 = L7_2
        L10_2(L11_2, L12_2)
      end
    end
  end
end
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  if A0_2 then
    L1_2 = DebugStart
    L2_2 = "RouletteTick("
    L3_2 = tostring
    L4_2 = A0_2.step
    L3_2 = L3_2(L4_2)
    L4_2 = ")"
    L2_2 = L2_2 .. L3_2 .. L4_2
    L1_2(L2_2)
  else
    L1_2 = DebugStart
    L2_2 = "RouletteTick(nil)"
    L1_2(L2_2)
  end
  L1_2 = A0_2.step
  if 1 == L1_2 then
    L1_2 = A0_2.timeleft
    if 10 == L1_2 then
      L1_2 = L4_1
      L2_2 = A0_2
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L1_2 = BroadcastCasino
        L2_2 = "Roulette:StartSpin"
        L3_2 = A0_2.coords
        L1_2(L2_2, L3_2)
      else
        A0_2.step = 0
      end
    else
      L1_2 = A0_2.timeleft
      if 0 == L1_2 then
        L1_2 = RouletteTableDatas
        L2_2 = A0_2.type
        L1_2 = L1_2[L2_2]
        A0_2.step = 2
        L2_2 = RandomNumber
        L3_2 = L1_2.SpinDelayMin
        L4_2 = L1_2.SpinDelayMax
        L2_2 = L2_2(L3_2, L4_2)
        A0_2.timeleft = L2_2
        L2_2 = BroadcastCasino
        L3_2 = "Roulette:NoMoreBets"
        L4_2 = A0_2.coords
        L5_2 = A0_2
        L2_2(L3_2, L4_2, L5_2)
        L2_2 = L6_1
        L3_2 = A0_2
        L2_2(L3_2)
      end
    end
  else
    L1_2 = A0_2.step
    if 2 == L1_2 then
      L1_2 = A0_2.timeleft
      if 0 ~= L1_2 then
        goto lbl_293
      end
      L1_2 = L10_1
      L2_2 = A0_2
      L1_2(L2_2)
      L1_2 = RandomNumber
      L2_2 = 1
      L3_2 = 38
      L1_2 = L1_2(L2_2, L3_2)
      L2_2 = L7_1
      L3_2 = A0_2
      L4_2 = L1_2
      L2_2 = L2_2(L3_2, L4_2)
      L3_2 = A0_2.rounds
      L3_2 = L3_2 + 1
      A0_2.rounds = L3_2
      L3_2 = RouletteTableDatas
      L4_2 = A0_2.type
      L3_2 = L3_2[L4_2]
      L4_2 = L3_2.UnluckyRound
      if L4_2 then
        L4_2 = L3_2.TriggerUnluckyRoundFrom
        if L4_2 then
          L4_2 = A0_2.rounds
          L5_2 = L3_2.UnluckyRound
          if not (L4_2 >= L5_2) then
            L4_2 = L3_2.TriggerUnluckyRoundFrom
            if not (L2_2 >= L4_2) then
              goto lbl_110
            end
          end
          A0_2.rounds = 0
          L4_2 = L8_1
          L5_2 = A0_2
          L6_2 = false
          L4_2, L5_2 = L4_2(L5_2, L6_2)
          L6_2 = L3_2.MaxBetValueInside
          L6_2 = L6_2 * 10
          if L4_2 > L6_2 then
            L6_2 = L8_1
            L7_2 = A0_2
            L8_2 = true
            L6_2, L7_2 = L6_2(L7_2, L8_2)
            L5_2 = L7_2
            L4_2 = L6_2
          end
          if -1 ~= L5_2 then
            L1_2 = L5_2
          end
        end
      end
      ::lbl_110::
      A0_2.winnerNumber = L1_2
      L4_2 = BroadcastCasino
      L5_2 = "Roulette:EndSpin"
      L6_2 = A0_2.coords
      L7_2 = A0_2
      L4_2(L5_2, L6_2, L7_2)
      A0_2.step = 3
      A0_2.timeleft = 10
    else
      L1_2 = A0_2.step
      if 3 == L1_2 then
        L1_2 = A0_2.timeleft
        if 0 == L1_2 then
          A0_2.timeleft = 6
          A0_2.step = 4
          L1_2 = A0_2.history
          L1_2 = #L1_2
          if L1_2 >= 5 then
            L1_2 = table
            L1_2 = L1_2.remove
            L2_2 = A0_2.history
            L3_2 = 1
            L1_2(L2_2, L3_2)
          end
          L1_2 = table
          L1_2 = L1_2.insert
          L2_2 = A0_2.history
          L3_2 = A0_2.winnerNumber
          L1_2(L2_2, L3_2)
          L1_2 = L9_1
          L2_2 = A0_2
          L1_2(L2_2)
          L1_2 = L5_1
          L2_2 = A0_2
          L1_2 = L1_2(L2_2)
          L2_2 = {}
          L3_2 = pairs
          L4_2 = A0_2.lastRoundBettings
          L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
          for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
            L9_2 = A0_2.lastRoundBettings
            L9_2 = L9_2[L7_2]
            if L9_2 then
              L9_2 = 0
              L10_2 = A0_2.lastRoundWinnings
              L10_2 = L10_2[L7_2]
              if L10_2 then
                L10_2 = A0_2.lastRoundWinnings
                L10_2 = L10_2[L7_2]
                L10_2 = L10_2.winnings
                if L10_2 then
                  L10_2 = A0_2.lastRoundWinnings
                  L10_2 = L10_2[L7_2]
                  L9_2 = L10_2.winnings
                end
              end
              L10_2 = A0_2.lastRoundBettings
              L10_2 = L10_2[L7_2]
              L10_2 = L10_2 - L9_2
              if L10_2 > 0 then
                L11_2 = {}
                L11_2.playerId = L7_2
                L12_2 = GetPlayerRealName
                L13_2 = L7_2
                L12_2 = L12_2(L13_2)
                L11_2.realName = L12_2
                L12_2 = -L10_2
                L11_2.winnings = L12_2
                L2_2[L7_2] = L11_2
              end
            end
          end
          L3_2 = pairs
          L4_2 = L1_2
          L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
          for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
            L9_2 = GetPlayerChips
            L10_2 = L8_2
            L9_2 = L9_2(L10_2)
            L10_2 = TriggerClientEvent
            L11_2 = "Roulette:LastRoundScores"
            L12_2 = L8_2
            L13_2 = A0_2.lastRoundWinnings
            L14_2 = L2_2
            L15_2 = L9_2
            L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
          end
          L3_2 = BroadcastCasino
          L4_2 = "Roulette:CleanUp"
          L5_2 = A0_2.coords
          L6_2 = A0_2
          L3_2(L4_2, L5_2, L6_2)
          L3_2 = Config
          L3_2 = L3_2.Jobs
          if L3_2 then
            L3_2 = Config
            L3_2 = L3_2.Jobs
            L3_2 = L3_2.Cleaner
            L3_2 = L3_2.Enabled
            if L3_2 then
              L3_2 = Clamp
              L4_2 = A0_2.dirtLevel
              L5_2 = Config
              L5_2 = L5_2.Jobs
              L5_2 = L5_2.Cleaner
              L5_2 = L5_2.TableGamesDirtSpeed
              L5_2 = 0.01 * L5_2
              L4_2 = L4_2 + L5_2
              L5_2 = 0.0
              L6_2 = 1.0
              L3_2 = L3_2(L4_2, L5_2, L6_2)
              A0_2.dirtLevel = L3_2
              L3_2 = A0_2.dirtLevel
              L4_2 = 0.99
              if L3_2 > L4_2 then
                L3_2 = A0_2.dirtProps
                if L3_2 < 5 then
                  L3_2 = A0_2.lastDirtPropTime
                  if not L3_2 then
                    L3_2 = 0
                  end
                  L4_2 = GetGameTimer
                  L4_2 = L4_2()
                  L4_2 = L4_2 - L3_2
                  L5_2 = 600000
                  if L4_2 > L5_2 then
                    L4_2 = A0_2.dirtProps
                    L4_2 = L4_2 + 1
                    A0_2.dirtProps = L4_2
                    L4_2 = GetGameTimer
                    L4_2 = L4_2()
                    A0_2.lastDirtPropTime = L4_2
                  end
                end
              end
              L3_2 = BroadcastCasino
              L4_2 = "Casino:Jobs:DirtLevelChanged"
              L5_2 = "roulette"
              L6_2 = A0_2.coords
              L7_2 = A0_2.dirtLevel
              L8_2 = A0_2.dirtProps
              L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
            end
          end
        end
      else
        L1_2 = A0_2.step
        if 4 == L1_2 then
          L1_2 = A0_2.timeleft
          if 0 == L1_2 then
            L1_2 = RouletteTableDatas
            L2_2 = A0_2.type
            L1_2 = L1_2[L2_2]
            L2_2 = L1_2.PlaceBetsTime
            A0_2.timeleft = L2_2
            L2_2 = L4_1
            L3_2 = A0_2
            L2_2 = L2_2(L3_2)
            if L2_2 then
              L2_2 = 1
              if L2_2 then
                goto lbl_288
              end
            end
            L2_2 = 0
            ::lbl_288::
            A0_2.step = L2_2
            L2_2 = BroadcastCasino
            L3_2 = "Roulette:StateChanged"
            L4_2 = A0_2
            L2_2(L3_2, L4_2)
          end
        end
      end
    end
  end
  ::lbl_293::
  L1_2 = A0_2.timeleft
  if L1_2 >= 0 then
    L1_2 = A0_2.timeleft
    L1_2 = L1_2 - 1
    A0_2.timeleft = L1_2
  end
end
function L12_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = DebugStart
  L1_2 = "RefreshRoulettes"
  L0_2(L1_2)
  L0_2 = pairs
  L1_2 = L0_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = L11_1
    L7_2 = L5_2
    L6_2(L7_2)
  end
end
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = DebugStart
  L2_2 = "Roulette_LeaveChair"
  L1_2(L2_2)
  L1_2 = Cache
  L2_2 = L1_2
  L1_2 = L1_2.SetPlayerState
  L3_2 = A0_2
  L4_2 = "Game"
  L5_2 = nil
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = L1_1
  L1_2 = L1_2[A0_2]
  if nil == L1_2 then
    return
  end
  L2_2 = L1_1
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2.table
  L3_2 = L1_1
  L3_2 = L3_2[A0_2]
  L3_2 = L3_2.chair
  L4_2 = L2_2.chairs
  L4_2 = L4_2[L3_2]
  if L4_2 == A0_2 then
    L4_2 = L2_2.chairs
    L4_2[L3_2] = -1
  end
  L4_2 = "MINIGAME_DEALER_LEAVE_NEUTRAL_GAME"
  L5_2 = L2_2.playerScore
  L5_2 = L5_2[A0_2]
  L6_2 = RouletteTableDatas
  L7_2 = L2_2.type
  L6_2 = L6_2[L7_2]
  if nil ~= L5_2 then
    if L5_2 <= -100 then
      L4_2 = "MINIGAME_DEALER_LEAVE_BAD_GAME"
    elseif L5_2 >= 100 then
      L4_2 = "MINIGAME_DEALER_LEAVE_GOOD_GAME"
    end
  end
  L7_2 = BroadcastCasino
  L8_2 = "Roulette:Quit"
  L9_2 = A0_2
  L10_2 = L2_2.coords
  L11_2 = L3_2
  L12_2 = L2_2.chairs
  L13_2 = L4_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end
Roulette_LeaveChair = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L2_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = L1_2.dirtProps
  if L2_2 > 0 then
    L2_2 = L1_2.dirtProps
    L2_2 = L2_2 - 1
    L1_2.dirtProps = L2_2
  else
    L2_2 = L1_2.dirtLevel
    if L2_2 > 0.0 then
      L2_2 = L1_2.dirtLevel
      L2_2 = L2_2 - 0.1
      L1_2.dirtLevel = L2_2
    end
  end
  L2_2 = BroadcastCasino
  L3_2 = "Casino:Jobs:DirtLevelChanged"
  L4_2 = "roulette"
  L5_2 = L1_2.coords
  L6_2 = L1_2.dirtLevel
  L7_2 = L1_2.dirtProps
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
Roulette_CleanUpTableAtCoords = L13_1
L13_1 = RegisterNetEvent
L14_1 = "Roulette:GetSessions"
L13_1(L14_1)
L13_1 = AddEventHandler
L14_1 = "Roulette:GetSessions"
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = source
  L2_2 = {}
  L3_2 = pairs
  L4_2 = A0_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L2_1
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    if L9_2 then
      L10_2 = table
      L10_2 = L10_2.insert
      L11_2 = L2_2
      L12_2 = L9_2
      L10_2(L11_2, L12_2)
    end
  end
  L3_2 = TriggerClientEvent
  L4_2 = "Roulette:Sessions"
  L5_2 = L1_2
  L6_2 = L2_2
  L7_2 = DAY_OF_WEEK
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNetEvent
L14_1 = "Roulette:Sit"
L13_1(L14_1)
L13_1 = AddEventHandler
L14_1 = "Roulette:Sit"
function L15_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L5_2 = source
  L6_2 = L2_1
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  if nil == L6_2 then
    L7_2 = L3_1
    L8_2 = A0_2
    L9_2 = A2_2
    L7_2 = L7_2(L8_2, L9_2)
    L6_2 = L7_2
  end
  L7_2 = L6_2.chairs
  L7_2 = L7_2[A1_2]
  if -1 ~= L7_2 then
    return
  end
  L7_2 = Cache
  L8_2 = L7_2
  L7_2 = L7_2.GetPlayerState
  L9_2 = L5_2
  L10_2 = "Game"
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  if L7_2 then
    return
  end
  L7_2 = 1
  L8_2 = 4
  L9_2 = 1
  for L10_2 = L7_2, L8_2, L9_2 do
    L11_2 = L6_2.chairs
    L11_2 = L11_2[L10_2]
    if L11_2 == L5_2 then
      return
    end
  end
  L7_2 = L6_2.chairs
  L7_2[A1_2] = L5_2
  L7_2 = L1_1
  L8_2 = {}
  L8_2.table = L6_2
  L8_2.chair = A1_2
  L9_2 = {}
  L8_2.ticket = L9_2
  L7_2[L5_2] = L8_2
  L7_2 = "MINIGAME_DEALER_GREET"
  L8_2 = RandomNumber
  L9_2 = 0
  L10_2 = 3
  L8_2 = L8_2(L9_2, L10_2)
  if 2 == L8_2 then
    if A4_2 then
      L8_2 = "MINIGAME_DEALER_GREET_MALE"
      if L8_2 then
        goto lbl_59
        L7_2 = L8_2 or L7_2
      end
    end
    L7_2 = "MINIGAME_DEALER_GREET_FEMALE"
  end
  ::lbl_59::
  L8_2 = L6_2.playerScore
  L8_2 = L8_2[L5_2]
  if nil ~= L8_2 then
    L7_2 = "MINIGAME_DEALER_REJOIN_TABLE"
  end
  if A3_2 then
    L7_2 = "MINIGAME_DEALER_GREET_DRUNK"
  end
  L8_2 = L6_2.playerScore
  L8_2[L5_2] = 0
  L8_2 = BroadcastCasino
  L9_2 = "Roulette:Sit"
  L10_2 = L5_2
  L11_2 = A0_2
  L12_2 = A1_2
  L13_2 = L6_2
  L14_2 = L7_2
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L8_2 = Cache
  L9_2 = L8_2
  L8_2 = L8_2.SetPlayerState
  L10_2 = L5_2
  L11_2 = "Game"
  L12_2 = {}
  L12_2.type = "Roulette"
  L12_2.coords = A0_2
  L12_2.chair = A1_2
  L8_2(L9_2, L10_2, L11_2, L12_2)
  L8_2 = L6_2.step
  if 0 == L8_2 then
    L8_2 = RouletteTableDatas
    L9_2 = L6_2.type
    L8_2 = L8_2[L9_2]
    L6_2.step = 1
    L9_2 = L8_2.PlaceBetsTime
    L6_2.timeleft = L9_2
    L9_2 = BroadcastCasino
    L10_2 = "Roulette:StateChanged"
    L11_2 = L6_2
    L9_2(L10_2, L11_2)
  end
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNetEvent
L14_1 = "Roulette:Quit"
L13_1(L14_1)
L13_1 = AddEventHandler
L14_1 = "Roulette:Quit"
function L15_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = source
  L4_2 = Roulette_LeaveChair
  L5_2 = L3_2
  L4_2(L5_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNetEvent
L14_1 = "Roulette:UpdateTicket"
L13_1(L14_1)
L13_1 = AddEventHandler
L14_1 = "Roulette:UpdateTicket"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = source
  L3_2 = L1_1
  L3_2 = L3_2[L2_2]
  if nil == L3_2 then
    return
  end
  L4_2 = L3_2.table
  if L4_2 then
    L4_2 = L3_2.table
    L4_2 = L4_2.step
    if 1 == L4_2 then
      goto lbl_15
    end
  end
  do return end
  ::lbl_15::
  L3_2.ticket = A0_2
  L4_2 = L5_1
  L5_2 = L3_2.table
  L4_2 = L4_2(L5_2)
  L5_2 = 0
  L6_2 = pairs
  L7_2 = L4_2
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L12_2 = L1_1
    L12_2 = L12_2[L11_2]
    if nil ~= L12_2 then
      L12_2 = L1_1
      L12_2 = L12_2[L11_2]
      L12_2 = L12_2.ticket
      L12_2 = L12_2[A1_2]
      if nil ~= L12_2 then
        L12_2 = L1_1
        L12_2 = L12_2[L11_2]
        L12_2 = L12_2.ticket
        L12_2 = L12_2[A1_2]
        L5_2 = L5_2 + L12_2
      end
    end
  end
  L6_2 = BroadcastCasino
  L7_2 = "Roulette:TotalChanged"
  L8_2 = L3_2.table
  L8_2 = L8_2.coords
  L9_2 = A1_2
  L10_2 = L5_2
  L6_2(L7_2, L8_2, L9_2, L10_2)
end
L13_1(L14_1, L15_1)
L13_1 = CreateThread
function L14_1()
  local L0_2, L1_2
  while true do
    L0_2 = L12_1
    L0_2()
    L0_2 = Wait
    L1_2 = 1000
    L0_2(L1_2)
  end
end
L15_1 = true
L13_1(L14_1, L15_1)
