local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1
L0_1 = {}
L1_1 = {}
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = DebugStart
  L2_2 = "GetBlackjackTableFromCoords"
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
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = DebugStart
  L2_2 = "GetBlackjackPlayers"
  L1_2(L2_2)
  L1_2 = {}
  L2_2 = pairs
  L3_2 = A0_2.chairs
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    if nil ~= L7_2 and -1 ~= L7_2 then
      L8_2 = L1_1
      L8_2 = L8_2[L7_2]
      if nil ~= L8_2 then
        L8_2 = table
        L8_2 = L8_2.insert
        L9_2 = L1_2
        L10_2 = {}
        L10_2.chair = L6_2
        L10_2.playerId = L7_2
        L11_2 = L1_1
        L11_2 = L11_2[L7_2]
        L10_2.ticket = L11_2
        L8_2(L9_2, L10_2)
      end
    end
  end
  return L1_2
end
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if A0_2 then
    L1_2 = A0_2.playerId
    if L1_2 then
      goto lbl_7
    end
  end
  do return end
  ::lbl_7::
  L1_2 = tonumber
  L2_2 = A0_2.playerId
  L1_2 = L1_2(L2_2)
  L2_2 = Blackjack_LeaveChair
  L3_2 = L1_2
  L2_2(L3_2)
  L2_2 = TriggerClientEvent
  L3_2 = "Blackjack:Kicked"
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = DebugStart
  L2_2 = "KickInactivePlayers"
  L1_2(L2_2)
  L1_2 = L3_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = pairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = 0
    L9_2 = 1
    L10_2 = 2
    L11_2 = 1
    for L12_2 = L9_2, L10_2, L11_2 do
      L13_2 = L7_2.ticket
      L13_2 = L13_2.bettings
      L13_2 = L13_2[L12_2]
      if nil ~= L13_2 then
        L13_2 = L7_2.ticket
        L13_2 = L13_2.bettings
        L13_2 = L13_2[L12_2]
        if L13_2 > 0 then
          L13_2 = L7_2.ticket
          L13_2 = L13_2.bettings
          L13_2 = L13_2[L12_2]
          L8_2 = L8_2 + L13_2
        end
      end
    end
    if 0 == L8_2 then
      L9_2 = L4_1
      L10_2 = L7_2.ticket
      L9_2(L10_2)
    end
  end
end
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = DebugStart
  L2_2 = "GetActiveRoundPlayers"
  L1_2(L2_2)
  L1_2 = {}
  L2_2 = 0
  L3_2 = 1
  L4_2 = 4
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2.chairs
    L7_2 = L7_2[L6_2]
    if nil ~= L7_2 and -1 ~= L7_2 then
      L8_2 = L1_1
      L8_2 = L8_2[L7_2]
      if nil ~= L8_2 then
        L9_2 = L8_2.inRound
        if true == L9_2 then
          L9_2 = L8_2.isBusted
          if false == L9_2 then
            L1_2[L6_2] = L8_2
            L2_2 = L2_2 + 1
          end
        end
      end
    end
  end
  L3_2 = L2_2
  L4_2 = L1_2
  return L3_2, L4_2
end
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  if 1 == A1_2 then
    L2_2 = {}
    L3_2 = {}
    L4_2 = pairs
    L5_2 = BlackJackCardScores
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
      if 10 == L9_2 then
        L10_2 = table
        L10_2 = L10_2.insert
        L11_2 = L3_2
        L12_2 = L8_2
        L10_2(L11_2, L12_2)
      elseif 11 == L9_2 then
        L10_2 = table
        L10_2 = L10_2.insert
        L11_2 = L2_2
        L12_2 = L8_2
        L10_2(L11_2, L12_2)
      end
    end
    L4_2 = Shuffle
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    L3_2 = L4_2
    L4_2 = Shuffle
    L5_2 = L2_2
    L4_2 = L4_2(L5_2)
    L2_2 = L4_2
    L4_2 = A0_2.cardPileDealer
    L5_2 = L3_2[1]
    L4_2[1] = L5_2
    L4_2 = A0_2.cardPileDealer
    L5_2 = L2_2[1]
    L4_2[2] = L5_2
  elseif 2 == A1_2 then
    L2_2 = 0
    L3_2 = 1
    L4_2 = {}
    L5_2 = pairs
    L6_2 = BlackJackCardScores
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
    for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
      L11_2 = table
      L11_2 = L11_2.insert
      L12_2 = L4_2
      L13_2 = L9_2
      L11_2(L12_2, L13_2)
    end
    L5_2 = Shuffle
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    L4_2 = L5_2
    L5_2 = pairs
    L6_2 = L4_2
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
    for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
      L11_2 = BlackJackCardScores
      L11_2 = L11_2[L10_2]
      if L3_2 < 2 then
        L12_2 = 9
        if L12_2 then
          goto lbl_78
        end
      end
      L12_2 = 100
      ::lbl_78::
      if L11_2 < L12_2 then
        L13_2 = L2_2 + L11_2
        if not (L13_2 < 17) then
          L13_2 = L2_2 + L11_2
          if 21 ~= L13_2 then
            goto lbl_96
          end
        end
        L13_2 = A0_2.cardPileDealer
        L13_2[L3_2] = L10_2
        L2_2 = L2_2 + L11_2
        L3_2 = L3_2 + 1
        if 21 == L2_2 then
          break
        end
      end
      ::lbl_96::
    end
  elseif 3 == A1_2 then
    L2_2 = 0
    L3_2 = 1
    L4_2 = {}
    L5_2 = pairs
    L6_2 = BlackJackCardScores
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
    for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
      L11_2 = table
      L11_2 = L11_2.insert
      L12_2 = L4_2
      L13_2 = L9_2
      L11_2(L12_2, L13_2)
    end
    L5_2 = Shuffle
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    L4_2 = L5_2
    L5_2 = pairs
    L6_2 = L4_2
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
    for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
      L11_2 = BlackJackCardScores
      L11_2 = L11_2[L10_2]
      L12_2 = L2_2 + L11_2
      if 21 ~= L12_2 then
        L12_2 = A0_2.cardPileDealer
        L12_2[L3_2] = L10_2
        L2_2 = L2_2 + L11_2
        L3_2 = L3_2 + 1
        if L2_2 >= 17 or L2_2 > 21 then
          break
        end
      end
    end
  end
end
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = DebugStart
  L2_2 = "ShuffleCards"
  L1_2(L2_2)
  if nil == A0_2 then
    return
  end
  L1_2 = {}
  A0_2.cardPile = L1_2
  L1_2 = {}
  A0_2.cardPileDealer = L1_2
  L1_2 = pairs
  L2_2 = PokerCardModels
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = A0_2.cardPile
    L7_2 = #L7_2
    if 0 == L7_2 then
      L7_2 = 1
    end
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2.cardPile
    L10_2 = RandomNumber
    L11_2 = 1
    L12_2 = L7_2
    L10_2 = L10_2(L11_2, L12_2)
    L11_2 = L5_2
    L8_2(L9_2, L10_2, L11_2)
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2.cardPileDealer
    L10_2 = RandomNumber
    L11_2 = 1
    L12_2 = L7_2
    L10_2 = L10_2(L11_2, L12_2)
    L11_2 = L5_2
    L8_2(L9_2, L10_2, L11_2)
  end
  L1_2 = Shuffle
  L2_2 = A0_2.cardPile
  L1_2 = L1_2(L2_2)
  A0_2.cardPile = L1_2
  A0_2.cardPilePosition = 1
  L1_2 = Shuffle
  L2_2 = A0_2.cardPileDealer
  L1_2 = L1_2(L2_2)
  A0_2.cardPileDealer = L1_2
  A0_2.cardPileDealerPosition = 0
end
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = DebugStart
  L2_2 = "ResetBlackjackTable"
  L1_2(L2_2)
  if nil == A0_2 then
    return
  end
  L1_2 = {}
  A0_2.dealerCards = L1_2
  L1_2 = {}
  A0_2.chairs = L1_2
  L1_2 = {}
  A0_2.playerScore = L1_2
  L1_2 = 1
  L2_2 = 4
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2.chairs
    L5_2[L4_2] = -1
  end
  A0_2.step = -1
  A0_2.lastStep = -1
  A0_2.timeleft = 0
  A0_2.cardPilePosition = 1
  L1_2 = BlackjackTableDatas
  L2_2 = A0_2.type
  L1_2 = L1_2[L2_2]
  A0_2.datas = L1_2
end
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = DebugStart
  L3_2 = "CreateblackjackTable"
  L2_2(L3_2)
  L2_2 = {}
  L2_2.coords = A0_2
  L2_2.type = A1_2
  L2_2.processingPlayerId = -1
  L2_2.processingPlayerHand = 1
  L2_2.lastAskTime = 0
  L2_2.processingTimeout = 0
  L3_2 = {}
  L2_2.dealerCards = L3_2
  L2_2.dirtLevel = 0.0
  L2_2.dirtProps = 0
  L3_2 = L9_1
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = L0_1
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  return L2_2
end
function L11_1(A0_2, A1_2)
  local L2_2, L3_2
  if nil == A0_2 then
    return
  end
  if A1_2 then
    L2_2 = A0_2.cardPileDealerPosition
    L2_2 = L2_2 + 1
    A0_2.cardPileDealerPosition = L2_2
    L2_2 = A0_2.cardPileDealer
    L3_2 = A0_2.cardPileDealerPosition
    L2_2 = L2_2[L3_2]
    return L2_2
  else
    L2_2 = A0_2.cardPilePosition
    L2_2 = L2_2 + 1
    A0_2.cardPilePosition = L2_2
    L2_2 = A0_2.cardPile
    L3_2 = A0_2.cardPilePosition
    L2_2 = L2_2[L3_2]
    return L2_2
  end
end
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = DebugStart
  L2_2 = "GetDealerScore"
  L1_2(L2_2)
  if nil == A0_2 then
    L1_2 = 0
    return L1_2
  end
  L1_2 = A0_2.dealerCards
  L1_2 = #L1_2
  if L1_2 >= 2 then
    L1_2 = BlackJackCardScores
    L2_2 = A0_2.dealerCards
    L2_2 = L2_2[2]
    L2_2 = L2_2.value
    L1_2 = L1_2[L2_2]
    if L1_2 then
      goto lbl_20
    end
  end
  L1_2 = 0
  ::lbl_20::
  L2_2 = BlackjackGetScoreFromCards
  L3_2 = A0_2.dealerCards
  L2_2 = L2_2(L3_2)
  L3_2 = L1_2
  L4_2 = L2_2
  return L3_2, L4_2
end
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = DebugStart
  L2_2 = "BustTicketIfNeeded"
  L1_2(L2_2)
  L1_2 = A0_2.isBusted
  if true ~= L1_2 then
    L1_2 = A0_2.inRound
    if false ~= L1_2 then
      goto lbl_13
    end
  end
  L1_2 = 0
  L2_2 = false
  do return L1_2, L2_2 end
  ::lbl_13::
  L1_2 = A0_2.hasSplit
  if L1_2 then
    L1_2 = 2
    if L1_2 then
      goto lbl_20
    end
  end
  L1_2 = 1
  ::lbl_20::
  L2_2 = 0
  L3_2 = 1
  L4_2 = L1_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2.cards
    L7_2 = L7_2[L6_2]
    if nil ~= L7_2 then
      L7_2 = A0_2.cards
      L7_2 = L7_2[L6_2]
      L7_2 = #L7_2
      if L7_2 > 0 then
        L7_2 = BlackjackGetScoreFromCards
        L8_2 = A0_2.cards
        L8_2 = L8_2[L6_2]
        L7_2 = L7_2(L8_2)
        L8_2 = "blackjack" ~= L7_2 and L7_2 > 21
        if L8_2 then
          L2_2 = L2_2 + 1
          if L1_2 <= L2_2 then
            A0_2.isBusted = true
            L9_2 = L2_2
            L10_2 = true
            return L9_2, L10_2
          end
        end
      end
    end
  end
  L3_2 = L2_2
  L4_2 = false
  return L3_2, L4_2
end
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = DebugStart
  L2_2 = "BustPlayers"
  L1_2(L2_2)
  L1_2 = L6_1
  L2_2 = A0_2
  L1_2, L2_2 = L1_2(L2_2)
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L13_1
    L10_2 = L8_2
    L9_2(L10_2)
  end
end
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = DebugStart
  L2_2 = "RewardBlackjackersAndFinalizeTheirRounds"
  L1_2(L2_2)
  L1_2 = L6_1
  L2_2 = A0_2
  L1_2, L2_2 = L1_2(L2_2)
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.isBusted
    if false == L9_2 then
      L9_2 = L8_2.cards
      L9_2 = L9_2[1]
      L9_2 = #L9_2
      L10_2 = BlackjackGetScoreFromCards
      L11_2 = L8_2.cards
      L11_2 = L11_2[1]
      L10_2 = L10_2(L11_2)
      if 2 == L9_2 and "blackjack" == L10_2 then
        L11_2 = math
        L11_2 = L11_2.ceil
        L12_2 = L8_2.bettings
        L12_2 = L12_2[1]
        L12_2 = L12_2 * 2.5
        L11_2 = L11_2(L12_2)
        if L11_2 > 0 then
          L12_2 = Win
          L13_2 = L8_2.playerId
          L14_2 = "Blackjack"
          L15_2 = L11_2
          L16_2 = "blackjack"
          L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
          L8_2.accountBalance = L12_2
          L12_2 = TriggerClientEvent
          L13_2 = "Blackjack:WonAmount"
          L14_2 = L8_2.playerId
          L15_2 = L11_2
          L12_2(L13_2, L14_2, L15_2)
          L12_2 = L8_2.lastWinnings
          L12_2 = L12_2 + L11_2
          L8_2.lastWinnings = L12_2
        end
        L8_2.inRound = false
        L12_2 = L8_2.handsDoneForStep
        L12_2[1] = true
        L12_2 = L8_2.handsDoneForStep
        L12_2[2] = true
      end
    end
  end
end
function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L2_2 = DebugStart
  L3_2 = "CalculateWinningsAtEndOfTheRound"
  L2_2(L3_2)
  L2_2 = BlackjackGetScoreFromCards
  L3_2 = A0_2.dealerCards
  L2_2 = L2_2(L3_2)
  L3_2 = L3_1
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = {}
  L5_2 = pairs
  L6_2 = L3_2
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = L10_2.chair
    L12_2 = L10_2.ticket
    L13_2 = 0
    L14_2 = 0
    L15_2 = L12_2.isBusted
    if false == L15_2 then
      L15_2 = L12_2.inRound
      if true == L15_2 then
        L15_2 = L12_2.hasSplit
        if L15_2 then
          L15_2 = 2
          if L15_2 then
            goto lbl_33
          end
        end
        L15_2 = 1
        ::lbl_33::
        L16_2 = 1
        L17_2 = L15_2
        L18_2 = 1
        for L19_2 = L16_2, L17_2, L18_2 do
          L20_2 = 0
          L21_2 = BlackjackGetScoreFromCards
          L22_2 = L12_2.cards
          L22_2 = L22_2[L19_2]
          L21_2 = L21_2(L22_2)
          if "blackjack" == L21_2 or L21_2 >= 2 and L21_2 <= 21 then
            if L21_2 == L2_2 then
              L22_2 = math
              L22_2 = L22_2.ceil
              L23_2 = L12_2.bettings
              L23_2 = L23_2[L19_2]
              L22_2 = L22_2(L23_2)
              L20_2 = L20_2 + L22_2
            else
              L22_2 = L12_2.cards
              L22_2 = L22_2[L19_2]
              L22_2 = #L22_2
              if 7 == L22_2 then
                L22_2 = math
                L22_2 = L22_2.ceil
                L23_2 = L12_2.bettings
                L23_2 = L23_2[L19_2]
                L23_2 = L23_2 * 2.0
                L22_2 = L22_2(L23_2)
                L20_2 = L20_2 + L22_2
              elseif "blackjack" ~= L2_2 and "blackjack" == L21_2 then
                L22_2 = math
                L22_2 = L22_2.ceil
                L23_2 = L12_2.bettings
                L23_2 = L23_2[L19_2]
                L23_2 = L23_2 * 2.5
                L22_2 = L22_2(L23_2)
                L20_2 = L20_2 + L22_2
              elseif "blackjack" ~= L2_2 and "blackjack" ~= L21_2 and (L2_2 > 21 or L2_2 < L21_2) then
                L22_2 = math
                L22_2 = L22_2.ceil
                L23_2 = L12_2.bettings
                L23_2 = L23_2[L19_2]
                L23_2 = L23_2 * 2.0
                L22_2 = L22_2(L23_2)
                L20_2 = L20_2 + L22_2
              end
            end
          end
          if L20_2 > 0 then
            L13_2 = L13_2 + L20_2
          else
            L22_2 = L12_2.bettings
            L22_2 = L22_2[L19_2]
            if nil ~= L22_2 then
              L22_2 = tonumber
              L23_2 = L12_2.bettings
              L23_2 = L23_2[L19_2]
              L22_2 = L22_2(L23_2)
              if L22_2 then
                L22_2 = L12_2.bettings
                L22_2 = L22_2[L19_2]
                L14_2 = L14_2 + L22_2
              end
            end
          end
        end
        if L13_2 > 0 then
          L16_2 = Win
          L17_2 = L12_2.playerId
          L18_2 = "Winnings"
          L19_2 = L13_2
          L20_2 = "blackjack"
          L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2)
          L12_2.accountBalance = L16_2
          L16_2 = TriggerClientEvent
          L17_2 = "Blackjack:WonAmount"
          L18_2 = L12_2.playerId
          L19_2 = L13_2
          L16_2(L17_2, L18_2, L19_2)
          L16_2 = L12_2.lastWinnings
          L16_2 = L16_2 + L13_2
          L12_2.lastWinnings = L16_2
        end
    end
    else
      L15_2 = L12_2.isBusted
      if true == L15_2 then
        L15_2 = 1
        L16_2 = 2
        L17_2 = 1
        for L18_2 = L15_2, L16_2, L17_2 do
          L19_2 = L12_2.bettings
          L19_2 = L19_2[L18_2]
          if nil ~= L19_2 then
            L19_2 = tonumber
            L20_2 = L12_2.bettings
            L20_2 = L20_2[L18_2]
            L19_2 = L19_2(L20_2)
            if L19_2 then
              L19_2 = L12_2.bettings
              L19_2 = L19_2[L18_2]
              L14_2 = L14_2 + L19_2
            end
          end
        end
      end
    end
    L15_2 = -1
    L16_2 = L12_2.chair
    L17_2 = L12_2.lastWinnings
    if L14_2 > L17_2 then
      L15_2 = 0
    else
      L17_2 = L12_2.lastWinnings
      L18_2 = 3000
      if L17_2 <= L18_2 then
        L15_2 = 1
      else
        L17_2 = L12_2.lastWinnings
        L18_2 = 10000
        if L17_2 >= L18_2 then
          L15_2 = 2
        end
      end
    end
    L17_2 = L12_2.lastWinnings
    if L17_2 > 0 then
      L17_2 = table
      L17_2 = L17_2.insert
      L18_2 = L4_2
      L19_2 = {}
      L20_2 = L12_2.lastWinnings
      L19_2.score = L20_2
      L20_2 = L12_2.playerId
      L19_2.playerId = L20_2
      L20_2 = GetPlayerRealName
      L21_2 = L12_2.playerId
      L20_2 = L20_2(L21_2)
      L19_2.realName = L20_2
      L19_2.reaction = L15_2
      L17_2(L18_2, L19_2)
    end
    if L14_2 > 0 then
      L17_2 = table
      L17_2 = L17_2.insert
      L18_2 = L4_2
      L19_2 = {}
      L20_2 = -L14_2
      L19_2.score = L20_2
      L20_2 = GetPlayerRealName
      L21_2 = L12_2.playerId
      L20_2 = L20_2(L21_2)
      L19_2.realName = L20_2
      L20_2 = L12_2.playerId
      L19_2.playerId = L20_2
      L19_2.reaction = L15_2
      L17_2(L18_2, L19_2)
    end
    L17_2 = A0_2.playerScore
    L18_2 = L12_2.playerId
    L17_2 = L17_2[L18_2]
    if nil ~= L17_2 then
      L17_2 = A0_2.playerScore
      L18_2 = L12_2.playerId
      L19_2 = A0_2.playerScore
      L20_2 = L12_2.playerId
      L19_2 = L19_2[L20_2]
      L19_2 = L19_2 + L13_2
      L17_2[L18_2] = L19_2
      L17_2 = A0_2.playerScore
      L18_2 = L12_2.playerId
      L19_2 = A0_2.playerScore
      L20_2 = L12_2.playerId
      L19_2 = L19_2[L20_2]
      L19_2 = L19_2 - L14_2
      L17_2[L18_2] = L19_2
    end
  end
  L5_2 = #L4_2
  if L5_2 > 0 then
    L5_2 = pairs
    L6_2 = L3_2
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
    for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
      L11_2 = TriggerClientEvent
      L12_2 = "Blackjack:LastRoundScores"
      L13_2 = L10_2.playerId
      L14_2 = L4_2
      L15_2 = L10_2.ticket
      L16_2 = L2_2
      L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
    end
  end
end
function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = DebugStart
  L2_2 = "FinalizeDealerMovement"
  L1_2(L2_2)
  L1_2 = {}
  L2_2 = 1
  L3_2 = 5
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = BlackjackGetScoreFromCards
    L7_2 = A0_2.dealerCards
    L6_2 = L6_2(L7_2)
    if "blackjack" == L6_2 or L6_2 >= 17 then
      break
    end
    L7_2 = {}
    L7_2.hand = 1
    L8_2 = A0_2.dealerCards
    L8_2 = #L8_2
    L8_2 = L8_2 + 1
    L7_2.index = L8_2
    L8_2 = L11_1
    L9_2 = A0_2
    L10_2 = true
    L8_2 = L8_2(L9_2, L10_2)
    L7_2.value = L8_2
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2.dealerCards
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L1_2
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  L2_2 = A0_2.dealerCards
  L2_2 = #L2_2
  if 2 == L2_2 then
    A0_2.timeleft = 6
  elseif 3 == L2_2 then
    A0_2.timeleft = 8
  elseif 4 == L2_2 then
    A0_2.timeleft = 9
  elseif 5 == L2_2 then
    A0_2.timeleft = 11
  elseif 6 == L2_2 then
    A0_2.timeleft = 13
  else
    A0_2.timeleft = 15
  end
  L3_2 = BlackjackGetScoreFromCards
  L4_2 = A0_2.dealerCards
  L3_2 = L3_2(L4_2)
  L4_2 = "blackjack" ~= L3_2 and L3_2 > 21
  L5_2 = BroadcastCasino
  L6_2 = "Blackjack:PedFinalize"
  L7_2 = A0_2.coords
  L8_2 = L1_2
  L9_2 = L4_2
  L10_2 = A0_2.timeleft
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
end
function L18_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = DebugStart
  L2_2 = "GetInitialCardsForTable"
  L1_2(L2_2)
  if nil == A0_2 then
    return
  end
  L1_2 = {}
  L2_2 = 0
  L3_2 = 1
  L4_2 = 4
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2.chairs
    L7_2 = L7_2[L6_2]
    if nil ~= L7_2 and -1 ~= L7_2 then
      L8_2 = L1_1
      L8_2 = L8_2[L7_2]
      if nil ~= L8_2 then
        L2_2 = L2_2 + 1
        L9_2 = {}
        L1_2[L6_2] = L9_2
        L9_2 = L8_2.cards
        L10_2 = {}
        L9_2[1] = L10_2
        L9_2 = 1
        L10_2 = 2
        L11_2 = 1
        for L12_2 = L9_2, L10_2, L11_2 do
          L13_2 = {}
          L13_2.hand = 1
          L13_2.index = L12_2
          L14_2 = L11_1
          L15_2 = A0_2
          L16_2 = false
          L14_2 = L14_2(L15_2, L16_2)
          L13_2.value = L14_2
          L14_2 = table
          L14_2 = L14_2.insert
          L15_2 = L1_2[L6_2]
          L16_2 = L13_2
          L14_2(L15_2, L16_2)
          L14_2 = table
          L14_2 = L14_2.insert
          L15_2 = L8_2.cards
          L15_2 = L15_2[1]
          L16_2 = L13_2
          L14_2(L15_2, L16_2)
        end
      end
    end
  end
  L3_2 = {}
  L1_2.dealer = L3_2
  L3_2 = 1
  L4_2 = 2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = {}
    L7_2.hand = 1
    L7_2.index = L6_2
    L8_2 = L11_1
    L9_2 = A0_2
    L10_2 = true
    L8_2 = L8_2(L9_2, L10_2)
    L7_2.value = L8_2
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L1_2.dealer
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2.dealerCards
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  return L1_2
end
function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = DebugStart
  L2_2 = "IsEveryoneDone"
  L1_2(L2_2)
  if nil == A0_2 then
    return
  end
  L1_2 = 1
  L2_2 = 4
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2.chairs
    L5_2 = L5_2[L4_2]
    if -1 ~= L5_2 then
      L6_2 = L1_1
      L6_2 = L6_2[L5_2]
      if nil ~= L6_2 then
        L7_2 = L6_2.inRound
        if true == L7_2 then
          L7_2 = L6_2.doneForStep
          L8_2 = A0_2.step
          if L7_2 ~= L8_2 then
            L7_2 = false
            return L7_2
          end
        end
      end
    end
  end
  L1_2 = true
  return L1_2
end
function L20_1(A0_2)
  local L1_2, L2_2
  L1_2 = DebugStart
  L2_2 = "TryToFastForward"
  L1_2(L2_2)
  L1_2 = L19_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    A0_2.timeleft = 0
  end
end
function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = DebugStart
  L2_2 = "ResetIfNobodysPlaying"
  L1_2(L2_2)
  if nil == A0_2 then
    return
  end
  L1_2 = 0
  L2_2 = 1
  L3_2 = 4
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2.chairs
    L6_2 = L6_2[L5_2]
    if -1 ~= L6_2 then
      L1_2 = L1_2 + 1
    end
  end
  if 0 == L1_2 then
    L2_2 = L9_1
    L3_2 = A0_2
    L2_2(L3_2)
  end
end
function L22_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = DebugStart
  L2_2 = "PutEveryoneInRound"
  L1_2(L2_2)
  L1_2 = 1
  L2_2 = 4
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2.chairs
    L5_2 = L5_2[L4_2]
    if nil ~= L5_2 and -1 ~= L5_2 then
      L6_2 = L1_1
      L6_2 = L6_2[L5_2]
      if nil ~= L6_2 then
        L6_2 = L1_1
        L6_2 = L6_2[L5_2]
        L6_2.inRound = true
      end
    end
  end
end
function L23_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = DebugStart
  L2_2 = "ResetPlayerTickets"
  L1_2(L2_2)
  L1_2 = 1
  L2_2 = 4
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2.chairs
    L5_2 = L5_2[L4_2]
    if -1 ~= L5_2 then
      L6_2 = L1_1
      L6_2 = L6_2[L5_2]
      if nil ~= L6_2 then
        L6_2 = L1_1
        L6_2 = L6_2[L5_2]
        L6_2 = L6_2.chair
        L7_2 = L1_1
        L8_2 = {}
        L8_2.table = A0_2
        L8_2.chair = L6_2
        L8_2.doneForStep = -1
        L8_2.playerId = L5_2
        L8_2.roundScore = 0
        L8_2.lastWinnings = 0
        L8_2.hasSplit = false
        L9_2 = {}
        L10_2 = 0
        L11_2 = 0
        L9_2[1] = L10_2
        L9_2[2] = L11_2
        L8_2.bettings = L9_2
        L9_2 = {}
        L10_2 = false
        L11_2 = true
        L9_2[1] = L10_2
        L9_2[2] = L11_2
        L8_2.handsDoneForStep = L9_2
        L8_2.lastAskTime = 0
        L8_2.isBusted = false
        L9_2 = {}
        L8_2.cards = L9_2
        L7_2[L5_2] = L8_2
        L7_2 = L1_1
        L7_2 = L7_2[L5_2]
        L7_2 = L7_2.cards
        L8_2 = {}
        L7_2[1] = L8_2
        L7_2 = L1_1
        L7_2 = L7_2[L5_2]
        L7_2 = L7_2.cards
        L7_2[2] = nil
      end
    end
  end
  L1_2 = {}
  A0_2.dealerCards = L1_2
end
function L24_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = DebugStart
  L2_2 = "IsBlackjackUsed"
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
function L25_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = DebugStart
  L2_2 = "ProcessingStep"
  L1_2(L2_2)
  L1_2 = A0_2.processingPlayerId
  L2_2 = A0_2.chairs
  L2_2 = L2_2[L1_2]
  if nil ~= L2_2 then
    L2_2 = A0_2.chairs
    L2_2 = L2_2[L1_2]
    if -1 ~= L2_2 then
      goto lbl_14
    end
  end
  A0_2.timeleft = 0
  ::lbl_14::
  L2_2 = L1_2
  L3_2 = A0_2.chairs
  L3_2 = L3_2[L1_2]
  L4_2 = L1_1
  L4_2 = L4_2[L3_2]
  if nil == L4_2 then
    A0_2.timeleft = 0
  else
    L5_2 = L4_2.isBusted
    if true ~= L5_2 then
      L5_2 = L4_2.inRound
      if false ~= L5_2 then
        goto lbl_31
      end
    end
    A0_2.timeleft = 0
    goto lbl_38
    ::lbl_31::
    L5_2 = A0_2.processingPlayerHand
    if 2 == L5_2 then
      L5_2 = L4_2.hasSplit
      if not L5_2 then
        A0_2.timeleft = 0
      end
    end
  end
  ::lbl_38::
  if nil ~= L4_2 then
    L5_2 = L4_2.handsDoneForStep
    if nil ~= L5_2 then
      L5_2 = L4_2.handsDoneForStep
      L6_2 = A0_2.processingPlayerHand
      L5_2 = L5_2[L6_2]
      if true == L5_2 then
        A0_2.timeleft = 0
      end
    end
  end
  L5_2 = A0_2.timeleft
  if 0 == L5_2 then
    L5_2 = false
    L6_2 = A0_2.processingPlayerHand
    if 1 == L6_2 then
      L6_2 = 2
      if L6_2 then
        goto lbl_60
      end
    end
    L6_2 = 1
    ::lbl_60::
    if nil ~= L4_2 then
      L7_2 = L4_2.handsDoneForStep
      L8_2 = A0_2.processingPlayerHand
      L7_2[L8_2] = true
    end
    L7_2 = nil ~= L4_2
    if L7_2 then
      L5_2 = true
      A0_2.processingPlayerHand = L6_2
      L8_2 = BroadcastCasino
      L9_2 = "Blackjack:PedFocusChanged"
      L10_2 = A0_2.coords
      L11_2 = A0_2.processingPlayerId
      L12_2 = A0_2.processingPlayerHand
      L13_2 = 15
      L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
    else
      A0_2.processingPlayerHand = 1
      while true do
        L8_2 = A0_2.processingPlayerId
        if not (L8_2 < 4) then
          break
        end
        L8_2 = A0_2.processingPlayerId
        L8_2 = L8_2 + 1
        A0_2.processingPlayerId = L8_2
        L1_2 = A0_2.processingPlayerId
        L8_2 = A0_2.chairs
        L8_2 = L8_2[L1_2]
        if nil ~= L8_2 and -1 ~= L8_2 then
          L9_2 = L1_1
          L9_2 = L9_2[L8_2]
          if nil ~= L9_2 then
            L9_2 = L1_1
            L9_2 = L9_2[L8_2]
            L9_2 = L9_2.isBusted
            if true ~= L9_2 then
              L9_2 = L1_1
              L9_2 = L9_2[L8_2]
              L9_2 = L9_2.inRound
              if true == L9_2 then
                L5_2 = true
                L9_2 = BroadcastCasino
                L10_2 = "Blackjack:ChairReady"
                L11_2 = A0_2.coords
                L12_2 = L2_2
                L9_2(L10_2, L11_2, L12_2)
                L9_2 = BroadcastCasino
                L10_2 = "Blackjack:PedFocusChanged"
                L11_2 = A0_2.coords
                L12_2 = A0_2.processingPlayerId
                L13_2 = A0_2.processingPlayerHand
                L14_2 = 15
                L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
                break
              end
            end
          end
        end
      end
    end
    if L5_2 then
      A0_2.timeleft = 15
    else
      A0_2.timeleft = 0
    end
  end
end
function L26_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = DebugStart
  L2_2 = "BlackjackTick"
  L1_2(L2_2)
  L1_2 = A0_2.processingTimeout
  if L1_2 > 0 then
    L1_2 = A0_2.processingTimeout
    L1_2 = L1_2 - 1
    A0_2.processingTimeout = L1_2
    L1_2 = A0_2.timeleft
    L1_2 = L1_2 + 1
    A0_2.timeleft = L1_2
    return
  end
  L1_2 = A0_2.step
  if 0 == L1_2 then
    L1_2 = A0_2.timeleft
    if 0 == L1_2 then
      A0_2.step = 1
      A0_2.timeleft = 15
      L1_2 = BroadcastCasino
      L2_2 = "Blackjack:StateChanged"
      L3_2 = A0_2
      L1_2(L2_2, L3_2)
  end
  else
    L1_2 = A0_2.step
    if 1 == L1_2 then
      L1_2 = A0_2.timeleft
      if 0 == L1_2 then
        L1_2 = L5_1
        L2_2 = A0_2
        L1_2(L2_2)
        L1_2 = L6_1
        L2_2 = A0_2
        L1_2, L2_2 = L1_2(L2_2)
        if 1 == L1_2 then
          A0_2.timeleft = 9
        elseif 2 == L1_2 then
          A0_2.timeleft = 14
        elseif 3 == L1_2 then
          A0_2.timeleft = 18
        elseif 4 == L1_2 then
          A0_2.timeleft = 21
        end
        if 0 == L1_2 then
          A0_2.timeleft = 0
          A0_2.step = 7
          return
        end
        L3_2 = L8_1
        L4_2 = A0_2
        L3_2(L4_2)
        L3_2 = RandomNumber
        L4_2 = 0
        L5_2 = 100
        L3_2 = L3_2(L4_2, L5_2)
        L4_2 = A0_2.datas
        L4_2 = L4_2.DealerBlackjackPossibility
        if not L4_2 then
          L4_2 = 0
        end
        if L3_2 <= L4_2 then
          L4_2 = L7_1
          L5_2 = A0_2
          L6_2 = 1
          L4_2(L5_2, L6_2)
        else
          L4_2 = A0_2.datas
          L4_2 = L4_2.Dealer21Possibility
          if not L4_2 then
            L4_2 = 0
          end
          if L3_2 <= L4_2 then
            L4_2 = L7_1
            L5_2 = A0_2
            L6_2 = 2
            L4_2(L5_2, L6_2)
          else
            L4_2 = L7_1
            L5_2 = A0_2
            L6_2 = 3
            L4_2(L5_2, L6_2)
          end
        end
        L4_2 = L18_1
        L5_2 = A0_2
        L4_2 = L4_2(L5_2)
        A0_2.step = 2
        L5_2 = pairs
        L6_2 = L2_2
        L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
        for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
          L11_2 = TriggerClientEvent
          L12_2 = "Blackjack:ResyncTicket"
          L13_2 = L10_2.playerId
          L14_2 = L10_2
          L15_2 = true
          L11_2(L12_2, L13_2, L14_2, L15_2)
        end
        L5_2 = BroadcastCasino
        L6_2 = "Blackjack:StateChanged"
        L7_2 = A0_2
        L8_2 = L4_2
        L5_2(L6_2, L7_2, L8_2)
      end
    else
      L1_2 = A0_2.step
      if 2 == L1_2 then
        L1_2 = A0_2.timeleft
        if 0 == L1_2 then
          L1_2 = L14_1
          L2_2 = A0_2
          L1_2(L2_2)
          L1_2 = L12_1
          L2_2 = A0_2
          L1_2, L2_2 = L1_2(L2_2)
          L3_2 = "blackjack" == L2_2
          L4_2 = L3_1
          L5_2 = A0_2
          L4_2 = L4_2(L5_2)
          if nil ~= L4_2 then
            L5_2 = #L4_2
            if L5_2 then
              goto lbl_144
            end
          end
          L5_2 = 1
          ::lbl_144::
          L6_2 = CreateThread
          function L7_2()
            local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
            L0_3 = L1_2
            if L0_3 >= 10 then
              A0_2.step = 9
              L0_3 = BroadcastCasino
              L1_3 = "Blackjack:StateChanged"
              L2_3 = A0_2
              L3_3 = L3_2
              L0_3(L1_3, L2_3, L3_3)
              L0_3 = Wait
              L1_3 = L3_2
              if L1_3 then
                L1_3 = 3000
                if L1_3 then
                  goto lbl_18
                end
              end
              L1_3 = 2000
              ::lbl_18::
              L0_3(L1_3)
            end
            L0_3 = L3_2
            if L0_3 then
              L0_3 = L5_2
              if 1 == L0_3 then
                A0_2.timeleft = 7
              else
                L0_3 = L5_2
                if 2 == L0_3 then
                  A0_2.timeleft = 10
                else
                  L0_3 = L5_2
                  if 3 == L0_3 then
                    A0_2.timeleft = 13
                  else
                    L0_3 = L5_2
                    if 4 == L0_3 then
                      A0_2.timeleft = 16
                    end
                  end
                end
              end
              L0_3 = L16_1
              L1_3 = A0_2
              L0_3(L1_3)
              L0_3 = Wait
              L1_3 = 3500
              L0_3(L1_3)
              A0_2.step = 5
              L0_3 = BroadcastCasino
              L1_3 = "Blackjack:StateChanged"
              L2_3 = A0_2
              L3_3 = L3_2
              L0_3(L1_3, L2_3, L3_3)
              return
            end
            A0_2.step = 3
            L0_3 = L15_1
            L1_3 = A0_2
            L0_3(L1_3)
            A0_2.processingPlayerHand = 1
            A0_2.timeleft = 15
            A0_2.processingPlayerId = -1
            L0_3 = 1
            L1_3 = 4
            L2_3 = 1
            for L3_3 = L0_3, L1_3, L2_3 do
              L4_3 = A0_2.chairs
              L4_3 = L4_3[L3_3]
              if -1 ~= L4_3 then
                L5_3 = L1_1
                L5_3 = L5_3[L4_3]
                if nil ~= L5_3 then
                  L5_3 = L1_1
                  L5_3 = L5_3[L4_3]
                  L5_3 = L5_3.isBusted
                  if true ~= L5_3 then
                    L5_3 = L1_1
                    L5_3 = L5_3[L4_3]
                    L5_3 = L5_3.inRound
                    if true == L5_3 then
                      A0_2.processingPlayerId = L3_3
                      break
                    end
                  end
                end
              end
            end
            L0_3 = A0_2.processingPlayerId
            if -1 == L0_3 then
              A0_2.timeleft = 0
            else
              L0_3 = BroadcastCasino
              L1_3 = "Blackjack:PedFocusChanged"
              L2_3 = A0_2.coords
              L3_3 = A0_2.processingPlayerId
              L4_3 = A0_2.processingPlayerHand
              L5_3 = A0_2.timeleft
              L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
            end
            L0_3 = BroadcastCasino
            L1_3 = "Blackjack:StateChanged"
            L2_3 = A0_2
            L0_3(L1_3, L2_3)
          end
          L6_2(L7_2)
      end
      else
        L1_2 = A0_2.step
        if 3 == L1_2 then
          L1_2 = L25_1
          L2_2 = A0_2
          L1_2(L2_2)
          L1_2 = A0_2.timeleft
          if 0 == L1_2 then
            L1_2 = GetGameTimer
            L1_2 = L1_2()
            L2_2 = A0_2.lastAskTime
            L1_2 = L1_2 - L2_2
            L2_2 = 4000
            if L1_2 < L2_2 then
              return
            end
            A0_2.timeleft = 10
            A0_2.step = 4
            L1_2 = L17_1
            L2_2 = A0_2
            L1_2(L2_2)
            L1_2 = BroadcastCasino
            L2_2 = "Blackjack:StateChanged"
            L3_2 = A0_2
            L1_2(L2_2, L3_2)
          end
        else
          L1_2 = A0_2.step
          if 4 == L1_2 then
            L1_2 = A0_2.timeleft
            if 0 == L1_2 then
              A0_2.step = 10
              A0_2.timeleft = 10
              L1_2 = CreateThread
              function L2_2()
                local L0_3, L1_3, L2_3, L3_3, L4_3
                L0_3 = L16_1
                L1_3 = A0_2
                L0_3(L1_3)
                L0_3 = Wait
                L1_3 = 3500
                L0_3(L1_3)
                L0_3 = L3_1
                L1_3 = A0_2
                L0_3 = L0_3(L1_3)
                if nil ~= L0_3 then
                  L1_3 = #L0_3
                  if L1_3 then
                    goto lbl_16
                  end
                end
                L1_3 = 1
                ::lbl_16::
                if 1 == L1_3 then
                  A0_2.timeleft = 7
                elseif 2 == L1_3 then
                  A0_2.timeleft = 10
                elseif 3 == L1_3 then
                  A0_2.timeleft = 13
                elseif 4 == L1_3 then
                  A0_2.timeleft = 16
                end
                A0_2.step = 5
                L2_3 = BroadcastCasino
                L3_3 = "Blackjack:StateChanged"
                L4_3 = A0_2
                L2_3(L3_3, L4_3)
              end
              L1_2(L2_2)
          end
          else
            L1_2 = A0_2.step
            if 5 == L1_2 then
              L1_2 = A0_2.timeleft
              if 0 == L1_2 then
                A0_2.step = 7
                L1_2 = BroadcastCasino
                L2_2 = "Blackjack:StateChanged"
                L3_2 = A0_2
                L1_2(L2_2, L3_2)
                L1_2 = Config
                L1_2 = L1_2.Jobs
                if L1_2 then
                  L1_2 = Config
                  L1_2 = L1_2.Jobs
                  L1_2 = L1_2.Cleaner
                  L1_2 = L1_2.Enabled
                  if L1_2 then
                    L1_2 = Clamp
                    L2_2 = A0_2.dirtLevel
                    L3_2 = Config
                    L3_2 = L3_2.Jobs
                    L3_2 = L3_2.Cleaner
                    L3_2 = L3_2.TableGamesDirtSpeed
                    L3_2 = 0.01 * L3_2
                    L2_2 = L2_2 + L3_2
                    L3_2 = 0.0
                    L4_2 = 1.0
                    L1_2 = L1_2(L2_2, L3_2, L4_2)
                    A0_2.dirtLevel = L1_2
                    L1_2 = A0_2.dirtLevel
                    L2_2 = 0.99
                    if L1_2 > L2_2 then
                      L1_2 = A0_2.dirtProps
                      if L1_2 < 5 then
                        L1_2 = A0_2.lastDirtPropTime
                        if not L1_2 then
                          L1_2 = 0
                        end
                        L2_2 = GetGameTimer
                        L2_2 = L2_2()
                        L2_2 = L2_2 - L1_2
                        L3_2 = 600000
                        if L2_2 > L3_2 then
                          L2_2 = A0_2.dirtProps
                          L2_2 = L2_2 + 1
                          A0_2.dirtProps = L2_2
                          L2_2 = GetGameTimer
                          L2_2 = L2_2()
                          A0_2.lastDirtPropTime = L2_2
                        end
                      end
                    end
                    L1_2 = BroadcastCasino
                    L2_2 = "Casino:Jobs:DirtLevelChanged"
                    L3_2 = "blackjack"
                    L4_2 = A0_2.coords
                    L5_2 = A0_2.dirtLevel
                    L6_2 = A0_2.dirtProps
                    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
                  end
                end
            end
            else
              L1_2 = A0_2.step
              if 7 == L1_2 then
                L1_2 = A0_2.timeleft
                if 0 == L1_2 then
                  L1_2 = A0_2.datas
                  L1_2 = L1_2.PlaceBetsTime
                  A0_2.timeleft = L1_2
                  A0_2.step = 1
                  A0_2.lastStep = 1
                  L1_2 = L23_1
                  L2_2 = A0_2
                  L1_2(L2_2)
                  L1_2 = L22_1
                  L2_2 = A0_2
                  L1_2(L2_2)
                  L1_2 = L21_1
                  L2_2 = A0_2
                  L1_2(L2_2)
                  L1_2 = BroadcastCasino
                  L2_2 = "Blackjack:StateChanged"
                  L3_2 = A0_2
                  L1_2(L2_2, L3_2)
                end
              end
            end
          end
        end
      end
    end
  end
  L1_2 = A0_2.timeleft
  if L1_2 > 0 then
    L1_2 = A0_2.timeleft
    L1_2 = L1_2 - 1
    A0_2.timeleft = L1_2
  end
end
function L27_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = DebugStart
  L1_2 = "Refreshblackjacks"
  L0_2(L1_2)
  L0_2 = pairs
  L1_2 = L0_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = L26_1
    L7_2 = L5_2
    L6_2(L7_2)
    L6_2 = Wait
    L7_2 = 33
    L6_2(L7_2)
  end
end
function L28_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = DebugStart
  L2_2 = "Blackjack_LeaveChair"
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
  if nil == L2_2 then
    return
  end
  L3_2 = L1_1
  L3_2 = L3_2[A0_2]
  L3_2 = L3_2.chair
  L4_2 = L2_2.chairs
  L4_2 = L4_2[L3_2]
  if nil ~= L4_2 then
    L4_2 = L2_2.chairs
    L4_2 = L4_2[L3_2]
    if L4_2 == A0_2 then
      L4_2 = L2_2.chairs
      L4_2[L3_2] = -1
    end
  end
  L4_2 = "MINIGAME_DEALER_LEAVE_NEUTRAL_GAME"
  L5_2 = L2_2.playerScore
  L5_2 = L5_2[A0_2]
  L6_2 = BlackjackTableDatas
  L7_2 = L2_2.type
  L6_2 = L6_2[L7_2]
  if nil ~= L6_2 and nil ~= L5_2 then
    if L5_2 <= -100 then
      L4_2 = "MINIGAME_DEALER_LEAVE_BAD_GAME"
    elseif L5_2 >= 100 then
      L4_2 = "MINIGAME_DEALER_LEAVE_GOOD_GAME"
    end
  end
  L7_2 = BroadcastCasino
  L8_2 = "Blackjack:Quit"
  L9_2 = A0_2
  L10_2 = L2_2.coords
  L11_2 = L3_2
  L12_2 = L2_2.chairs
  L13_2 = L4_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L7_2 = L2_2.step
  if 1 ~= L7_2 then
    L7_2 = L2_2.step
    if 3 ~= L7_2 then
      goto lbl_68
    end
  end
  L7_2 = L20_1
  L8_2 = L2_2
  L7_2(L8_2)
  ::lbl_68::
end
Blackjack_LeaveChair = L28_1
function L28_1(A0_2)
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
  L4_2 = "blackjack"
  L5_2 = L1_2.coords
  L6_2 = L1_2.dirtLevel
  L7_2 = L1_2.dirtProps
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
Blackjack_CleanUpTableAtCoords = L28_1
L28_1 = RegisterNetEvent
L29_1 = "Blackjack:GetSessions"
L28_1(L29_1)
L28_1 = AddEventHandler
L29_1 = "Blackjack:GetSessions"
function L30_1(A0_2)
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
  L4_2 = "Blackjack:Sessions"
  L5_2 = L1_2
  L6_2 = L2_2
  L7_2 = DAY_OF_WEEK
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L28_1(L29_1, L30_1)
L28_1 = RegisterNetEvent
L29_1 = "Blackjack:AskCard"
L28_1(L29_1)
L28_1 = AddEventHandler
L29_1 = "Blackjack:AskCard"
function L30_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L1_2 = source
  L2_2 = L1_1
  L2_2 = L2_2[L1_2]
  if nil == L2_2 then
    return
  end
  L3_2 = L2_2.inRound
  if not L3_2 then
    return
  end
  L3_2 = L2_2.isBusted
  if true == L3_2 then
    return
  end
  L3_2 = L2_2.table
  L4_2 = GetGameTimer
  L4_2 = L4_2()
  L5_2 = L2_2.lastAskTime
  L4_2 = L4_2 - L5_2
  L5_2 = 2000
  if L4_2 < L5_2 then
    return
  end
  L4_2 = L3_2.step
  if 3 ~= L4_2 then
    return
  end
  if 1 ~= A0_2 and 2 ~= A0_2 then
    return
  end
  L4_2 = L3_2.processingPlayerHand
  if L4_2 ~= A0_2 then
    return
  end
  L4_2 = L3_2.processingPlayerId
  L5_2 = L2_2.chair
  if L4_2 ~= L5_2 then
    return
  end
  if 2 == A0_2 then
    L4_2 = L2_2.bustCount
    if 1 == L4_2 then
      return
    end
  end
  if 2 == A0_2 then
    L4_2 = L2_2.hasSplit
    if true ~= L4_2 then
      return
    end
  end
  L4_2 = L2_2.handsDoneForStep
  L4_2 = L4_2[A0_2]
  if true == L4_2 then
    return
  end
  L3_2.processingTimeout = 5
  L3_2.timeleft = 15
  L4_2 = GetGameTimer
  L4_2 = L4_2()
  L2_2.lastAskTime = L4_2
  L4_2 = GetGameTimer
  L4_2 = L4_2()
  L3_2.lastAskTime = L4_2
  L4_2 = {}
  L4_2.hand = A0_2
  L5_2 = L2_2.cards
  L5_2 = L5_2[A0_2]
  L5_2 = #L5_2
  L5_2 = L5_2 + 1
  L4_2.index = L5_2
  L5_2 = L11_1
  L6_2 = L3_2
  L7_2 = false
  L5_2 = L5_2(L6_2, L7_2)
  L4_2.value = L5_2
  L4_2.isFinal = false
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = L2_2.cards
  L6_2 = L6_2[A0_2]
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = L13_1
  L6_2 = L2_2
  L5_2, L6_2 = L5_2(L6_2)
  L2_2.bustCount = L5_2
  if 2 == A0_2 then
    L7_2 = L2_2.hasSplit
    if L7_2 and 1 == L5_2 then
      L3_2.processingTimeout = 2
      L3_2.timeleft = 2
    end
  end
  L7_2 = Cache
  L8_2 = L7_2
  L7_2 = L7_2.PlayerToNet
  L9_2 = L1_2
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = BroadcastCasino
  L9_2 = "Blackjack:CardGiven"
  L10_2 = L1_2
  L11_2 = L2_2.table
  L11_2 = L11_2.coords
  L12_2 = L2_2.chair
  L13_2 = L4_2
  L14_2 = L3_2.timeleft
  L15_2 = false
  L16_2 = 0
  L17_2 = L6_2
  L18_2 = L7_2
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L8_2 = BlackjackGetScoreFromCards
  L9_2 = L2_2.cards
  L9_2 = L9_2[1]
  L8_2 = L8_2(L9_2)
  L9_2 = L4_2.index
  if 7 == L9_2 or "blackjack" == L8_2 or L8_2 >= 21 then
    L3_2.timeleft = 0
    L9_2 = L2_2.handsDoneForStep
    L9_2[A0_2] = true
  end
  L9_2 = TriggerClientEvent
  L10_2 = "Blackjack:ResyncTicket"
  L11_2 = L1_2
  L12_2 = L2_2
  L13_2 = false
  L9_2(L10_2, L11_2, L12_2, L13_2)
end
L28_1(L29_1, L30_1)
L28_1 = RegisterNetEvent
L29_1 = "Blackjack:DoubleDown"
L28_1(L29_1)
L28_1 = AddEventHandler
L29_1 = "Blackjack:DoubleDown"
function L30_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L1_2 = source
  L2_2 = L1_1
  L2_2 = L2_2[L1_2]
  if nil == L2_2 then
    return
  end
  L3_2 = L2_2.inRound
  if not L3_2 then
    return
  end
  L3_2 = L2_2.isBusted
  if true == L3_2 then
    return
  end
  L3_2 = L2_2.table
  L4_2 = GetGameTimer
  L4_2 = L4_2()
  L5_2 = L2_2.lastAskTime
  L4_2 = L4_2 - L5_2
  L5_2 = 2000
  if L4_2 < L5_2 then
    return
  end
  L4_2 = L3_2.step
  if 3 ~= L4_2 then
    return
  end
  if 1 ~= A0_2 and 2 ~= A0_2 then
    return
  end
  L4_2 = L2_2.cards
  L4_2 = L4_2[A0_2]
  L4_2 = #L4_2
  if 2 ~= L4_2 then
    return
  end
  L4_2 = L3_2.processingPlayerHand
  if L4_2 ~= A0_2 then
    return
  end
  L4_2 = L3_2.processingPlayerId
  L5_2 = L2_2.chair
  if L4_2 ~= L5_2 then
    return
  end
  if 2 == A0_2 then
    L4_2 = L2_2.hasSplit
    if true ~= L4_2 then
      return
    end
  end
  L4_2 = L2_2.handsDoneForStep
  L4_2 = L4_2[A0_2]
  if true == L4_2 then
    return
  end
  L4_2 = L2_2.bettings
  L4_2 = L4_2[A0_2]
  if 0 == L4_2 then
    return
  end
  L4_2 = L2_2.bettings
  L4_2 = L4_2[A0_2]
  L5_2 = Pay
  L6_2 = L1_2
  L7_2 = "Initial bet"
  L8_2 = L4_2
  L9_2 = "blackjack"
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L6_2 = TriggerClientEvent
  L7_2 = "Blackjack:PaidAmount"
  L8_2 = L1_2
  L9_2 = L4_2
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = TriggerClientEvent
  L7_2 = "Blackjack:ConfirmDoubleDown"
  L8_2 = L1_2
  L9_2 = L5_2
  L10_2 = L2_2
  L6_2(L7_2, L8_2, L9_2, L10_2)
  if L5_2 and -1 ~= L5_2 then
    L6_2 = L2_2.bettings
    L7_2 = L2_2.bettings
    L7_2 = L7_2[A0_2]
    L7_2 = L7_2 + L4_2
    L6_2[A0_2] = L7_2
  else
    return
  end
  L3_2.processingTimeout = 4
  L3_2.timeleft = 0
  L6_2 = GetGameTimer
  L6_2 = L6_2()
  L2_2.lastAskTime = L6_2
  L6_2 = GetGameTimer
  L6_2 = L6_2()
  L3_2.lastAskTime = L6_2
  L6_2 = {}
  L6_2.hand = A0_2
  L7_2 = L2_2.cards
  L7_2 = L7_2[A0_2]
  L7_2 = #L7_2
  L7_2 = L7_2 + 1
  L6_2.index = L7_2
  L7_2 = L11_1
  L8_2 = L3_2
  L9_2 = false
  L7_2 = L7_2(L8_2, L9_2)
  L6_2.value = L7_2
  L6_2.isFinal = true
  L7_2 = table
  L7_2 = L7_2.insert
  L8_2 = L2_2.cards
  L8_2 = L8_2[A0_2]
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L7_2 = L13_1
  L8_2 = L2_2
  L7_2, L8_2 = L7_2(L8_2)
  L9_2 = Cache
  L10_2 = L9_2
  L9_2 = L9_2.PlayerToNet
  L11_2 = L1_2
  L9_2 = L9_2(L10_2, L11_2)
  L10_2 = BroadcastCasino
  L11_2 = "Blackjack:CardGiven"
  L12_2 = L1_2
  L13_2 = L2_2.table
  L13_2 = L13_2.coords
  L14_2 = L2_2.chair
  L15_2 = L6_2
  L16_2 = L3_2.timeleft
  L17_2 = true
  L18_2 = L4_2
  L19_2 = L8_2
  L20_2 = L9_2
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L10_2 = L2_2.handsDoneForStep
  L10_2[A0_2] = true
  L10_2 = L13_1
  L11_2 = L2_2
  L10_2(L11_2)
  L10_2 = TriggerClientEvent
  L11_2 = "Blackjack:ResyncTicket"
  L12_2 = L1_2
  L13_2 = L2_2
  L14_2 = false
  L10_2(L11_2, L12_2, L13_2, L14_2)
end
L28_1(L29_1, L30_1)
L28_1 = RegisterNetEvent
L29_1 = "Blackjack:Stand"
L28_1(L29_1)
L28_1 = AddEventHandler
L29_1 = "Blackjack:Stand"
function L30_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = source
  L2_2 = L1_1
  L2_2 = L2_2[L1_2]
  if nil == L2_2 then
    return
  end
  L3_2 = L2_2.inRound
  if not L3_2 then
    return
  end
  L3_2 = L2_2.isBusted
  if true == L3_2 then
    return
  end
  L3_2 = L2_2.table
  L4_2 = GetGameTimer
  L4_2 = L4_2()
  L5_2 = L2_2.lastAskTime
  L4_2 = L4_2 - L5_2
  L5_2 = 2000
  if L4_2 < L5_2 then
    return
  end
  L4_2 = L3_2.step
  if 3 ~= L4_2 then
    return
  end
  if 1 ~= A0_2 and 2 ~= A0_2 then
    return
  end
  L4_2 = L3_2.processingPlayerHand
  if L4_2 ~= A0_2 then
    return
  end
  L4_2 = L3_2.processingPlayerId
  L5_2 = L2_2.chair
  if L4_2 ~= L5_2 then
    return
  end
  if 2 == A0_2 then
    L4_2 = L2_2.hasSplit
    if true ~= L4_2 then
      return
    end
  end
  L4_2 = L2_2.handsDoneForStep
  L4_2 = L4_2[A0_2]
  if true == L4_2 then
    return
  end
  L3_2.timeleft = 0
end
L28_1(L29_1, L30_1)
L28_1 = RegisterNetEvent
L29_1 = "Blackjack:Split"
L28_1(L29_1)
L28_1 = AddEventHandler
L29_1 = "Blackjack:Split"
function L30_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L0_2 = source
  L1_2 = L1_1
  L1_2 = L1_2[L0_2]
  if nil == L1_2 then
    return
  end
  L2_2 = L1_2.inRound
  if not L2_2 then
    return
  end
  L2_2 = L1_2.isBusted
  if true == L2_2 then
    return
  end
  L2_2 = L1_2.table
  L3_2 = L2_2.step
  if 3 ~= L3_2 then
    return
  end
  L3_2 = L2_2.processingPlayerId
  L4_2 = L1_2.chair
  if L3_2 ~= L4_2 then
    return
  end
  L3_2 = L1_2.hasSplit
  if true == L3_2 then
    return
  end
  L3_2 = L1_2.bettings
  L3_2 = L3_2[1]
  if 0 == L3_2 then
    return
  end
  L3_2 = L1_2.cards
  L3_2 = L3_2[1]
  L3_2 = #L3_2
  if 2 ~= L3_2 then
    return
  end
  L3_2 = GetPlayingCardValue
  L4_2 = L1_2.cards
  L4_2 = L4_2[1]
  L4_2 = L4_2[1]
  L4_2 = L4_2.value
  L3_2 = L3_2(L4_2)
  L4_2 = GetPlayingCardValue
  L5_2 = L1_2.cards
  L5_2 = L5_2[1]
  L5_2 = L5_2[2]
  L5_2 = L5_2.value
  L4_2 = L4_2(L5_2)
  if L3_2 ~= L4_2 and (not (L3_2 >= 10) or not (L4_2 >= 10)) then
    return
  end
  L5_2 = L1_2.handsDoneForStep
  L5_2 = L5_2[1]
  if true == L5_2 then
    return
  end
  L5_2 = L1_2.bettings
  L5_2 = L5_2[1]
  L6_2 = Pay
  L7_2 = L0_2
  L8_2 = "Initial bet"
  L9_2 = L5_2
  L10_2 = "blackjack"
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  L7_2 = TriggerClientEvent
  L8_2 = "Blackjack:PaidAmount"
  L9_2 = L0_2
  L10_2 = L5_2
  L7_2(L8_2, L9_2, L10_2)
  if L6_2 and -1 ~= L6_2 then
    L7_2 = L1_2.bettings
    L7_2[2] = L5_2
  else
    L7_2 = TriggerClientEvent
    L8_2 = "Blackjack:ConfirmSplit"
    L9_2 = L0_2
    L10_2 = false
    L11_2 = L1_2
    L7_2(L8_2, L9_2, L10_2, L11_2)
    return
  end
  L7_2 = L1_2.handsDoneForStep
  L7_2[2] = false
  L1_2.hasSplit = true
  L2_2.processingPlayerHand = 2
  L2_2.processingTimeout = 8
  L2_2.timeleft = 20
  L7_2 = L1_2.cards
  L8_2 = {}
  L7_2[2] = L8_2
  L7_2 = L1_2.cards
  L7_2 = L7_2[1]
  L7_2 = L7_2[2]
  L7_2.index = 1
  L7_2.hand = 2
  L8_2 = table
  L8_2 = L8_2.remove
  L9_2 = L1_2.cards
  L9_2 = L9_2[1]
  L10_2 = 2
  L8_2(L9_2, L10_2)
  L8_2 = table
  L8_2 = L8_2.insert
  L9_2 = L1_2.cards
  L9_2 = L9_2[2]
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
  L8_2 = {}
  L9_2 = 1
  L10_2 = 2
  L11_2 = 1
  for L12_2 = L9_2, L10_2, L11_2 do
    L13_2 = {}
    L13_2.hand = L12_2
    L13_2.index = 2
    L14_2 = L11_1
    L15_2 = L2_2
    L16_2 = false
    L14_2 = L14_2(L15_2, L16_2)
    L13_2.value = L14_2
    L14_2 = table
    L14_2 = L14_2.insert
    L15_2 = L1_2.cards
    L15_2 = L15_2[L12_2]
    L16_2 = L13_2
    L14_2(L15_2, L16_2)
    L14_2 = table
    L14_2 = L14_2.insert
    L15_2 = L8_2
    L16_2 = L13_2
    L14_2(L15_2, L16_2)
  end
  L9_2 = TriggerClientEvent
  L10_2 = "Blackjack:ConfirmSplit"
  L11_2 = L0_2
  L12_2 = L6_2
  L13_2 = L1_2
  L9_2(L10_2, L11_2, L12_2, L13_2)
  L9_2 = Cache
  L10_2 = L9_2
  L9_2 = L9_2.PlayerToNet
  L11_2 = L0_2
  L9_2 = L9_2(L10_2, L11_2)
  L10_2 = BroadcastCasino
  L11_2 = "Blackjack:CardSplitted"
  L12_2 = L0_2
  L13_2 = L1_2.table
  L13_2 = L13_2.coords
  L14_2 = L1_2.chair
  L15_2 = L8_2
  L16_2 = L2_2.timeleft
  L17_2 = L5_2
  L18_2 = L9_2
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
end
L28_1(L29_1, L30_1)
L28_1 = RegisterNetEvent
L29_1 = "Blackjack:PlaceInitialBet"
L28_1(L29_1)
L28_1 = AddEventHandler
L29_1 = "Blackjack:PlaceInitialBet"
function L30_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = source
  L2_2 = L1_1
  L2_2 = L2_2[L1_2]
  if nil == L2_2 then
    return
  end
  L3_2 = L2_2.inRound
  if not L3_2 then
    return
  end
  L3_2 = L2_2.table
  L4_2 = L3_2.step
  if 1 ~= L4_2 then
    return
  end
  L4_2 = L2_2.bettings
  L4_2 = L4_2[1]
  if 0 ~= L4_2 then
    return
  end
  L4_2 = BlackjackTableDatas
  L5_2 = L3_2.type
  L4_2 = L4_2[L5_2]
  L5_2 = L4_2.MinimumBet
  L6_2 = L4_2.MaximumBet
  if A0_2 < L5_2 then
    return
  end
  if A0_2 > L6_2 then
    return
  end
  L7_2 = Pay
  L8_2 = L1_2
  L9_2 = "Initial bet"
  L10_2 = A0_2
  L11_2 = "blackjack"
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
  if L7_2 and -1 ~= L7_2 then
    L8_2 = TriggerClientEvent
    L9_2 = "Blackjack:PaidAmount"
    L10_2 = L1_2
    L11_2 = A0_2
    L8_2(L9_2, L10_2, L11_2)
    L8_2 = L2_2.bettings
    L8_2[1] = A0_2
    L2_2.doneForStep = 1
    L8_2 = Cache
    L9_2 = L8_2
    L8_2 = L8_2.PlayerToNet
    L10_2 = L1_2
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = BroadcastCasino
    L10_2 = "Blackjack:InitialBetPlaced"
    L11_2 = L1_2
    L12_2 = L2_2.table
    L12_2 = L12_2.coords
    L13_2 = L2_2.chair
    L14_2 = A0_2
    L15_2 = L8_2
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  end
  L8_2 = TriggerClientEvent
  L9_2 = "Blackjack:ConfirmInitialBet"
  L10_2 = L1_2
  L11_2 = L7_2
  L12_2 = L2_2
  L8_2(L9_2, L10_2, L11_2, L12_2)
  if L7_2 then
    L8_2 = L20_1
    L9_2 = L3_2
    L8_2(L9_2)
  end
end
L28_1(L29_1, L30_1)
L28_1 = RegisterNetEvent
L29_1 = "Blackjack:Quit"
L28_1(L29_1)
L28_1 = AddEventHandler
L29_1 = "Blackjack:Quit"
function L30_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = source
  L4_2 = Blackjack_LeaveChair
  L5_2 = L3_2
  L4_2(L5_2)
end
L28_1(L29_1, L30_1)
L28_1 = RegisterNetEvent
L29_1 = "Blackjack:Sit"
L28_1(L29_1)
L28_1 = AddEventHandler
L29_1 = "Blackjack:Sit"
function L30_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L6_2 = source
  L7_2 = Cache
  L7_2 = L7_2.PedNetIdCache
  L7_2[L6_2] = A5_2
  L7_2 = L2_1
  L8_2 = A0_2
  L7_2 = L7_2(L8_2)
  if nil == L7_2 then
    L8_2 = L10_1
    L9_2 = A0_2
    L10_2 = A2_2
    L8_2 = L8_2(L9_2, L10_2)
    L7_2 = L8_2
  end
  L8_2 = L7_2.chairs
  L8_2 = L8_2[A1_2]
  if -1 ~= L8_2 then
    return
  end
  L8_2 = Cache
  L9_2 = L8_2
  L8_2 = L8_2.GetPlayerState
  L10_2 = L6_2
  L11_2 = "Game"
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  if L8_2 then
    return
  end
  L8_2 = 1
  L9_2 = 4
  L10_2 = 1
  for L11_2 = L8_2, L9_2, L10_2 do
    L12_2 = L7_2.chairs
    L12_2 = L12_2[L11_2]
    if L12_2 == L6_2 then
      return
    end
  end
  L8_2 = L7_2.chairs
  L8_2[A1_2] = L6_2
  L8_2 = L1_1
  L9_2 = {}
  L9_2.table = L7_2
  L9_2.chair = A1_2
  L9_2.doneForStep = -1
  L9_2.playerId = L6_2
  L9_2.inRound = false
  L9_2.roundScore = 0
  L9_2.lastWinnings = 0
  L9_2.hasSplit = false
  L10_2 = {}
  L11_2 = 0
  L12_2 = 0
  L10_2[1] = L11_2
  L10_2[2] = L12_2
  L9_2.bettings = L10_2
  L10_2 = {}
  L11_2 = false
  L12_2 = true
  L10_2[1] = L11_2
  L10_2[2] = L12_2
  L9_2.handsDoneForStep = L10_2
  L9_2.lastAskTime = 0
  L9_2.isBusted = false
  L10_2 = {}
  L9_2.cards = L10_2
  L8_2[L6_2] = L9_2
  L8_2 = L1_1
  L8_2 = L8_2[L6_2]
  L8_2 = L8_2.cards
  L9_2 = {}
  L8_2[1] = L9_2
  L8_2 = L1_1
  L8_2 = L8_2[L6_2]
  L8_2 = L8_2.cards
  L8_2[2] = nil
  L8_2 = "MINIGAME_DEALER_GREET"
  L9_2 = RandomNumber
  L10_2 = 0
  L11_2 = 3
  L9_2 = L9_2(L10_2, L11_2)
  if L9_2 < 10 then
    if A4_2 then
      L9_2 = "MINIGAME_DEALER_GREET_MALE"
      if L9_2 then
        goto lbl_92
        L8_2 = L9_2 or L8_2
      end
    end
    L8_2 = "MINIGAME_DEALER_GREET_FEMALE"
  end
  ::lbl_92::
  L9_2 = L7_2.playerScore
  L9_2 = L9_2[L6_2]
  if nil ~= L9_2 then
    L8_2 = "MINIGAME_DEALER_REJOIN_TABLE"
  end
  if A3_2 then
    L8_2 = "MINIGAME_DEALER_GREET_DRUNK"
  end
  L9_2 = L7_2.playerScore
  L9_2[L6_2] = 0
  L9_2 = L7_2.step
  if -1 == L9_2 then
    L7_2.step = 7
    L9_2 = math
    L9_2 = L9_2.floor
    L10_2 = GetGameTimer
    L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L10_2()
    L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    L7_2.roundId = L9_2
    L7_2.timeleft = 0
  else
    L9_2 = L7_2.step
    if 1 == L9_2 then
      L9_2 = L1_1
      L9_2 = L9_2[L6_2]
      L9_2.inRound = true
    end
  end
  L9_2 = BroadcastCasino
  L10_2 = "Blackjack:Sit"
  L11_2 = L6_2
  L12_2 = A0_2
  L13_2 = A1_2
  L14_2 = L7_2
  L15_2 = L8_2
  L16_2 = L1_1
  L16_2 = L16_2[L6_2]
  L16_2 = L16_2.inRound
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L9_2 = Cache
  L10_2 = L9_2
  L9_2 = L9_2.SetPlayerState
  L11_2 = L6_2
  L12_2 = "Game"
  L13_2 = {}
  L13_2.type = "Blackjack"
  L13_2.coords = A0_2
  L13_2.chair = A1_2
  L9_2(L10_2, L11_2, L12_2, L13_2)
end
L28_1(L29_1, L30_1)
L28_1 = CreateThread
function L29_1()
  local L0_2, L1_2
  while true do
    L0_2 = L27_1
    L0_2()
    L0_2 = Wait
    L1_2 = 1000
    L0_2(L1_2)
  end
end
L30_1 = true
L28_1(L29_1, L30_1)
