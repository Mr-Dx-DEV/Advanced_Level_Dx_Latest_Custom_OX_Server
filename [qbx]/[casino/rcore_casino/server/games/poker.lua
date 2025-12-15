local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1
L0_1 = {}
L1_1 = {}
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = DebugStart
  L2_2 = "GetPokerTableFromCoords"
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
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = DebugStart
  L2_2 = "ShuffleCards"
  L1_2(L2_2)
  if nil == A0_2 then
    return
  end
  L1_2 = {}
  A0_2.cardPile = L1_2
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
  end
  L1_2 = Shuffle
  L2_2 = A0_2.cardPile
  L1_2 = L1_2(L2_2)
  A0_2.cardPile = L1_2
  A0_2.cardPilePosition = 1
end
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = DebugStart
  L2_2 = "ResetPokerTable"
  L1_2(L2_2)
  if nil == A0_2 then
    return
  end
  L1_2 = {}
  A0_2.chairs = L1_2
  L1_2 = {}
  A0_2.playerScore = L1_2
  L1_2 = {}
  A0_2.cardStates = L1_2
  L1_2 = {}
  A0_2.cardsInHands = L1_2
  L1_2 = 1
  L2_2 = 4
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2.chairs
    L5_2[L4_2] = -1
    L5_2 = A0_2.cardsInHands
    L5_2[L4_2] = false
  end
  A0_2.step = 0
  A0_2.lastStep = -1
  A0_2.timeleft = 0
  L1_2 = PokerTableDatas
  L2_2 = A0_2.type
  L1_2 = L1_2[L2_2]
  A0_2.datas = L1_2
end
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = DebugStart
  L3_2 = "CreatePokerTable"
  L2_2(L3_2)
  L2_2 = {}
  L2_2.coords = A0_2
  L2_2.type = A1_2
  L2_2.rounds = 0
  L2_2.dirtLevel = 0.0
  L2_2.dirtProps = 0
  L3_2 = L4_1
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = L0_1
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  return L2_2
end
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = DebugStart
  L3_2 = "DrawCardAtTable"
  L2_2(L3_2)
  if nil == A0_2 then
    return
  end
  if A1_2 then
    L2_2 = 1
    L3_2 = 3
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = A0_2.cardPilePosition
      L6_2 = L6_2 + 1
      A0_2.cardPilePosition = L6_2
      L6_2 = A0_2.cardPile
      L7_2 = A0_2.cardPilePosition
      L6_2 = L6_2[L7_2]
      L7_2 = GetPlayingCardValue
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      if L7_2 <= 10 then
        return L6_2
      end
    end
  end
  L2_2 = A0_2.cardPilePosition
  L2_2 = L2_2 + 1
  A0_2.cardPilePosition = L2_2
  L2_2 = A0_2.cardPile
  L3_2 = A0_2.cardPilePosition
  L2_2 = L2_2[L3_2]
  return L2_2
end
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L2_2 = DebugStart
  L3_2 = "GetInitialCardsForTable"
  L2_2(L3_2)
  if nil == A0_2 then
    return
  end
  L2_2 = {}
  L3_2 = 0
  L4_2 = 1
  L5_2 = 4
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A0_2.chairs
    L8_2 = L8_2[L7_2]
    if -1 ~= L8_2 then
      L8_2 = A0_2.chairs
      L9_2 = L8_2[L7_2]
      L8_2 = L1_1
      L8_2 = L8_2[L9_2]
      L9_2 = L8_2.ante
      if L9_2 then
        L9_2 = L8_2.ante
        if L9_2 > 0 then
          goto lbl_34
        end
      end
      L9_2 = L8_2.pairPlus
      if L9_2 then
        L9_2 = L8_2.pairPlus
        ::lbl_34::
        if L9_2 > 0 then
          L3_2 = L3_2 + 1
          L9_2 = {}
          L2_2[L7_2] = L9_2
          L9_2 = 1
          L10_2 = 3
          L11_2 = 1
          for L12_2 = L9_2, L10_2, L11_2 do
            L13_2 = L6_1
            L14_2 = A0_2
            L15_2 = A1_2
            L13_2 = L13_2(L14_2, L15_2)
            L14_2 = table
            L14_2 = L14_2.insert
            L15_2 = L2_2[L7_2]
            L16_2 = L13_2
            L14_2(L15_2, L16_2)
          end
          if A1_2 then
            L9_2 = {}
            L10_2 = PokerGetAllHandValues
            L11_2 = L2_2[L7_2]
            L10_2 = L10_2(L11_2)
            L9_2.score = L10_2
            L10_2 = {}
            L11_2 = L2_2[L7_2]
            L11_2 = L11_2[1]
            L12_2 = L2_2[L7_2]
            L12_2 = L12_2[2]
            L13_2 = L2_2[L7_2]
            L13_2 = L13_2[3]
            L10_2[1] = L11_2
            L10_2[2] = L12_2
            L10_2[3] = L13_2
            L9_2.cards = L10_2
            L10_2 = 1
            L11_2 = 3
            L12_2 = 1
            for L13_2 = L10_2, L11_2, L12_2 do
              L14_2 = L2_2[L7_2]
              L15_2 = L6_1
              L16_2 = A0_2
              L17_2 = A1_2
              L15_2 = L15_2(L16_2, L17_2)
              L14_2[3] = L15_2
              L14_2 = PokerGetAllHandValues
              L15_2 = L2_2[L7_2]
              L14_2 = L14_2(L15_2)
              L15_2 = L9_2.score
              if L14_2 < L15_2 then
                L15_2 = L9_2.cards
                L16_2 = L2_2[L7_2]
                L16_2 = L16_2[3]
                L15_2[3] = L16_2
                L9_2.score = L14_2
              end
            end
            L10_2 = 1
            L11_2 = 3
            L12_2 = 1
            for L13_2 = L10_2, L11_2, L12_2 do
              L14_2 = L2_2[L7_2]
              L15_2 = L9_2.cards
              L15_2 = L15_2[L13_2]
              L14_2[L13_2] = L15_2
            end
          end
        end
      end
    end
  end
  L4_2 = {}
  L2_2.dealer = L4_2
  L4_2 = 1
  L5_2 = 3
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L2_2.dealer
    L10_2 = L6_1
    L11_2 = A0_2
    L12_2 = false
    L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L10_2(L11_2, L12_2)
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  end
  L4_2 = L3_2
  L5_2 = L2_2
  return L4_2, L5_2
end
function L8_1(A0_2)
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
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = DebugStart
  L2_2 = "TryToFastForward"
  L1_2(L2_2)
  L1_2 = L8_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    A0_2.timeleft = 0
  end
end
function L10_1(A0_2)
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
    L2_2 = L4_1
    L3_2 = A0_2
    L2_2(L3_2)
  end
end
function L11_1(A0_2)
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
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
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
        L7_2[L5_2] = L8_2
      end
    end
  end
end
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = DebugStart
  L2_2 = "IsPokerUsed"
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
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = DebugStart
  L2_2 = "GetPokerPlayers"
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
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = DebugStart
  L2_2 = "KickInactivePlayers"
  L1_2(L2_2)
  L1_2 = 0
  L2_2 = 1
  L3_2 = 4
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2.chairs
    L6_2 = L6_2[L5_2]
    if -1 ~= L6_2 then
      L6_2 = A0_2.chairs
      L7_2 = L6_2[L5_2]
      L6_2 = L1_1
      L6_2 = L6_2[L7_2]
      L7_2 = L6_2.ante
      if L7_2 then
        L7_2 = L6_2.ante
        if 0 ~= L7_2 then
          goto lbl_34
        end
      end
      L7_2 = L6_2.pairPlus
      if L7_2 then
        L7_2 = L6_2.pairPlus
        if 0 ~= L7_2 then
          goto lbl_34
        end
      end
      L7_2 = TriggerClientEvent
      L8_2 = "Poker:Kicked"
      L9_2 = A0_2.chairs
      L9_2 = L9_2[L5_2]
      L7_2(L8_2, L9_2)
    end
    ::lbl_34::
  end
end
function L16_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = DebugStart
  L2_2 = "SkipPlayForPlayer"
  L1_2(L2_2)
  L1_2 = L1_1
  L1_2 = L1_2[A0_2]
  if nil == L1_2 then
    return
  end
  L2_2 = L1_2.inRound
  if not L2_2 then
    return
  end
  L2_2 = L1_2.table
  L3_2 = L2_2.step
  if 4 ~= L3_2 then
    L3_2 = L2_2.step
    if 5 ~= L3_2 then
      return
    end
  end
  L3_2 = L1_2.isPlaying
  if nil ~= L3_2 then
    return
  end
  L3_2 = L1_2.ante
  if nil ~= L3_2 then
    L3_2 = L1_2.ante
    if 0 ~= L3_2 then
      goto lbl_32
    end
  end
  do return end
  ::lbl_32::
  L1_2.isPlaying = false
  L1_2.doneForStep = 4
  L3_2 = L1_2.table
  L3_2 = L3_2.cardsInHands
  L4_2 = L1_2.chair
  L3_2 = L3_2[L4_2]
  if true == L3_2 then
    L3_2 = L1_2.table
    L3_2 = L3_2.cardStates
    L4_2 = L1_2.chair
    L3_2[L4_2] = 0
  else
    L3_2 = L1_2.table
    L3_2 = L3_2.cardStates
    L4_2 = L1_2.chair
    L3_2[L4_2] = 9
  end
  L3_2 = TriggerClientEvent
  L4_2 = "Poker:SkipPlay"
  L5_2 = A0_2
  L6_2 = L1_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = Cache
  L4_2 = L3_2
  L3_2 = L3_2.PlayerToNet
  L5_2 = A0_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = BroadcastCasino
  L5_2 = "Poker:FoldCards"
  L6_2 = A0_2
  L7_2 = L1_2.table
  L7_2 = L7_2.coords
  L8_2 = L1_2.chair
  L9_2 = L3_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end
function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = DebugStart
  L2_2 = "FoldUnfinishedChairs"
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
        L7_2 = L6_2.inRound
        if L7_2 then
          L7_2 = L6_2.table
          if L7_2 == A0_2 then
            L7_2 = L6_2.isPlaying
            if nil == L7_2 then
              L7_2 = L16_1
              L8_2 = L5_2
              L7_2(L8_2)
            end
          end
        end
      end
    end
  end
end
function L18_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = DebugStart
  L2_2 = "DontWaitForNonAntePlayers"
  L1_2(L2_2)
  L1_2 = false
  L2_2 = 1
  L3_2 = 4
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2.chairs
    L6_2 = L6_2[L5_2]
    if -1 ~= L6_2 then
      L7_2 = L1_1
      L7_2 = L7_2[L6_2]
      if nil ~= L7_2 then
        L8_2 = L7_2.inRound
        if L8_2 then
          L8_2 = L7_2.table
          if L8_2 == A0_2 then
            L8_2 = L7_2.ante
            if nil ~= L8_2 then
              L8_2 = L7_2.ante
              if not (L8_2 <= 0) then
                goto lbl_32
              end
            end
            L7_2.doneForStep = 4
            L7_2.isPlaying = false
            L1_2 = true
          end
        end
      end
    end
    ::lbl_32::
  end
  if L1_2 then
    L2_2 = L9_1
    L3_2 = A0_2
    L2_2(L3_2)
  end
end
function L19_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = DebugStart
  L3_2 = "GetActualMinMaxBetValue"
  L2_2(L3_2)
  L2_2 = 0
  L3_2 = 0
  if nil ~= A0_2 then
    L4_2 = PokerTableDatas
    L5_2 = A0_2.type
    L4_2 = L4_2[L5_2]
    L5_2 = A0_2.step
    if 1 == L5_2 then
      L2_2 = L4_2.MinBetValueAntePlay
      L3_2 = L4_2.MaxBetValueAntePlay
    else
      L5_2 = A0_2.step
      if 2 == L5_2 then
        L2_2 = L4_2.MinBetValuePairPlus
        L3_2 = L4_2.MaxBetValuePairPlus
      else
        L5_2 = A0_2.step
        if 4 == L5_2 and nil ~= A1_2 then
          L5_2 = A1_2.ante
          if nil ~= L5_2 then
            L2_2 = A1_2.ante
            L3_2 = A1_2.ante
          end
        end
      end
    end
  end
  L4_2 = L2_2
  L5_2 = L3_2
  return L4_2, L5_2
end
function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = DebugStart
  L3_2 = "CheckIfPlayerBeatDealer"
  L2_2(L3_2)
  L2_2 = 1
  L3_2 = 3
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2[L5_2]
    L7_2 = A1_2[L5_2]
    if L6_2 > L7_2 then
      L6_2 = true
      L7_2 = false
      return L6_2, L7_2
    else
      L6_2 = A0_2[L5_2]
      L7_2 = A1_2[L5_2]
      if L6_2 < L7_2 then
        L6_2 = false
        L7_2 = false
        return L6_2, L7_2
      end
    end
  end
  L2_2 = false
  L3_2 = true
  return L2_2, L3_2
end
function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = DebugStart
  L3_2 = "PlayerWinPairPlus"
  L2_2(L3_2)
  if nil ~= A0_2 then
    L2_2 = A0_2.pairPlus
    if nil ~= L2_2 then
      L2_2 = A0_2.pairPlus
      if L2_2 > 0 then
        L2_2 = math
        L2_2 = L2_2.floor
        L3_2 = A0_2.pairPlus
        L4_2 = A0_2.pairPlus
        L4_2 = L4_2 * A1_2
        L3_2 = L3_2 + L4_2
        L2_2 = L2_2(L3_2)
        if L2_2 > 0 then
          L3_2 = Win
          L4_2 = A0_2.playerId
          L5_2 = "Poker Round <Pair Plus>"
          L6_2 = L2_2
          L7_2 = "Poker"
          L3_2(L4_2, L5_2, L6_2, L7_2)
          L3_2 = TriggerClientEvent
          L4_2 = "Poker:WonAmount"
          L5_2 = A0_2.playerId
          L6_2 = L2_2
          L3_2(L4_2, L5_2, L6_2)
          L3_2 = math
          L3_2 = L3_2.floor
          L4_2 = A0_2.roundScore
          L4_2 = L4_2 + L2_2
          L3_2 = L3_2(L4_2)
          A0_2.roundScore = L3_2
        end
        return L2_2
      end
    end
  end
  L2_2 = 0
  return L2_2
end
function L22_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = DebugStart
  L3_2 = "PlayerWinAnteAndPlay"
  L2_2(L3_2)
  L2_2 = A0_2.isPlaying
  if true ~= L2_2 then
    L2_2 = 0
    return L2_2
  end
  L2_2 = 0
  L3_2 = math
  L3_2 = L3_2.floor
  L4_2 = A0_2.ante
  L4_2 = L4_2 * 2
  L3_2 = L3_2(L4_2)
  L4_2 = math
  L4_2 = L4_2.floor
  L5_2 = A0_2.ante
  L5_2 = L5_2 * 2
  L4_2 = L4_2(L5_2)
  L2_2 = L2_2 + L3_2
  L2_2 = L2_2 + L4_2
  L5_2 = PokerGetAnteMultiplier
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  if L5_2 > 0 then
    L6_2 = math
    L6_2 = L6_2.floor
    L7_2 = A0_2.ante
    L7_2 = L5_2 * L7_2
    L6_2 = L6_2(L7_2)
    L2_2 = L2_2 + L6_2
  end
  L6_2 = Win
  L7_2 = A0_2.playerId
  L8_2 = "Poker Round <Ante/Play>"
  L9_2 = L2_2
  L10_2 = "Poker"
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L6_2 = TriggerClientEvent
  L7_2 = "Poker:WonAmount"
  L8_2 = A0_2.playerId
  L9_2 = L2_2
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = math
  L6_2 = L6_2.floor
  L7_2 = A0_2.roundScore
  L7_2 = L7_2 + L2_2
  L6_2 = L6_2(L7_2)
  A0_2.roundScore = L6_2
  return L2_2
end
function L23_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = DebugStart
  L3_2 = "PlayerDrawAnteAndPlay"
  L2_2(L3_2)
  L2_2 = A0_2.isPlaying
  if true ~= L2_2 then
    L2_2 = 0
    return L2_2
  end
  L2_2 = 0
  L3_2 = A0_2.ante
  if nil ~= L3_2 then
    L3_2 = A0_2.ante
    if L3_2 > 0 then
      L3_2 = math
      L3_2 = L3_2.floor
      L4_2 = A0_2.ante
      L3_2 = L3_2(L4_2)
      L2_2 = L3_2
      L3_2 = math
      L3_2 = L3_2.floor
      L4_2 = A0_2.ante
      L4_2 = L4_2 * 2
      L3_2 = L3_2(L4_2)
      L2_2 = L2_2 + L3_2
    end
  end
  L3_2 = Win
  L4_2 = A0_2.playerId
  L5_2 = "Poker Round <Draw>"
  L6_2 = L2_2
  L7_2 = "Poker"
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = TriggerClientEvent
  L4_2 = "Poker:WonAmount"
  L5_2 = A0_2.playerId
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = math
  L3_2 = L3_2.floor
  L4_2 = A0_2.roundScore
  L4_2 = L4_2 + L2_2
  L3_2 = L3_2(L4_2)
  A0_2.roundScore = L3_2
  return L2_2
end
function L24_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L1_2 = DebugStart
  L2_2 = "CheckWinners"
  L1_2(L2_2)
  if nil ~= A0_2 then
    L1_2 = {}
    L2_2 = 0
    L3_2 = 0
    L4_2 = 0
    L1_2[1] = L2_2
    L1_2[2] = L3_2
    L1_2[3] = L4_2
    L2_2 = A0_2.allCards
    L2_2 = L2_2.dealer
    L3_2 = {}
    L4_2 = 0
    if nil ~= L2_2 then
      L5_2 = {}
      L6_2 = PokerGetAllHandValues
      L7_2 = L2_2
      L6_2 = L6_2(L7_2)
      L7_2 = PokerGetAllHandValues
      L8_2 = L2_2
      L9_2 = true
      L10_2 = false
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L8_2 = PokerGetAllHandValues
      L9_2 = L2_2
      L10_2 = false
      L11_2 = true
      L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L8_2(L9_2, L10_2, L11_2)
      L5_2[1] = L6_2
      L5_2[2] = L7_2
      L5_2[3] = L8_2
      L5_2[4] = L9_2
      L5_2[5] = L10_2
      L5_2[6] = L11_2
      L5_2[7] = L12_2
      L5_2[8] = L13_2
      L5_2[9] = L14_2
      L5_2[10] = L15_2
      L5_2[11] = L16_2
      L5_2[12] = L17_2
      L5_2[13] = L18_2
      L5_2[14] = L19_2
      L5_2[15] = L20_2
      L5_2[16] = L21_2
      L1_2 = L5_2
    end
    L5_2 = {}
    L6_2 = 1
    L7_2 = 4
    L8_2 = 1
    for L9_2 = L6_2, L7_2, L8_2 do
      L10_2 = A0_2.allCards
      L10_2 = L10_2[L9_2]
      if nil ~= L10_2 then
        L10_2 = A0_2.allCards
        L10_2 = L10_2[L9_2]
        L10_2 = #L10_2
        if 3 == L10_2 then
          L10_2 = A0_2.chairs
          L10_2 = L10_2[L9_2]
          L11_2 = L1_1
          L11_2 = L11_2[L10_2]
          L12_2 = {}
          L13_2 = 0
          L14_2 = 0
          L15_2 = 0
          L16_2 = 0
          L17_2 = 0
          L18_2 = 0
          L19_2 = false
          L12_2[1] = L13_2
          L12_2[2] = L14_2
          L12_2[3] = L15_2
          L12_2[4] = L16_2
          L12_2[5] = L17_2
          L12_2[6] = L18_2
          L12_2[7] = L19_2
          if nil ~= L11_2 then
            L13_2 = L11_2.inRound
            if true == L13_2 then
              L13_2 = table
              L13_2 = L13_2.insert
              L14_2 = L5_2
              L15_2 = L10_2
              L13_2(L14_2, L15_2)
              L13_2 = {}
              L14_2 = PokerGetAllHandValues
              L15_2 = A0_2.allCards
              L15_2 = L15_2[L9_2]
              L14_2 = L14_2(L15_2)
              L15_2 = PokerGetAllHandValues
              L16_2 = A0_2.allCards
              L16_2 = L16_2[L9_2]
              L17_2 = true
              L18_2 = false
              L15_2 = L15_2(L16_2, L17_2, L18_2)
              L16_2 = PokerGetAllHandValues
              L17_2 = A0_2.allCards
              L17_2 = L17_2[L9_2]
              L18_2 = false
              L19_2 = true
              L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L16_2(L17_2, L18_2, L19_2)
              L13_2[1] = L14_2
              L13_2[2] = L15_2
              L13_2[3] = L16_2
              L13_2[4] = L17_2
              L13_2[5] = L18_2
              L13_2[6] = L19_2
              L13_2[7] = L20_2
              L13_2[8] = L21_2
              L14_2 = L11_2.isPlaying
              if true == L14_2 then
                L14_2 = 1
                if L14_2 then
                  goto lbl_101
                end
              end
              L14_2 = 0
              ::lbl_101::
              L12_2[3] = L14_2
              L14_2 = L13_2[1]
              L12_2[4] = L14_2
              L14_2 = L1_2[1]
              L12_2[5] = L14_2
              L14_2 = L11_2.ante
              L12_2[6] = L14_2
              L14_2 = L20_1
              L15_2 = L13_2
              L16_2 = L1_2
              L14_2, L15_2 = L14_2(L15_2, L16_2)
              L16_2 = L1_2[1]
              if L16_2 >= 12 then
                if L14_2 then
                  L16_2 = L22_1
                  L17_2 = L11_2
                  L18_2 = L13_2[1]
                  L16_2 = L16_2(L17_2, L18_2)
                  L12_2[1] = L16_2
                elseif not L14_2 and not L15_2 then
                elseif L15_2 then
                  L16_2 = L23_1
                  L17_2 = L11_2
                  L18_2 = L13_2[1]
                  L16_2 = L16_2(L17_2, L18_2)
                  L12_2[1] = L16_2
                  L12_2[7] = true
                end
              else
                L16_2 = L23_1
                L17_2 = L11_2
                L18_2 = L13_2[1]
                L16_2 = L16_2(L17_2, L18_2)
                L12_2[1] = L16_2
              end
              L16_2 = L11_2.ante
              if nil ~= L16_2 then
                L16_2 = L11_2.ante
                if L16_2 <= 0 then
                end
              end
              L16_2 = L11_2.pairPlus
              if nil ~= L16_2 then
                L16_2 = L11_2.pairPlus
                if L16_2 > 0 then
                  L16_2 = PokerGetPairMultiplier
                  L17_2 = L13_2[1]
                  L16_2 = L16_2(L17_2)
                  if L16_2 > 0 then
                    L17_2 = L21_1
                    L18_2 = L11_2
                    L19_2 = L16_2
                    L17_2 = L17_2(L18_2, L19_2)
                    L12_2[2] = L17_2
                  end
                end
              end
              L16_2 = L12_2[1]
              L17_2 = L12_2[2]
              L16_2 = L16_2 + L17_2
              L11_2.lastWinnings = L16_2
              L11_2.totalSpent = 0
              L16_2 = GetPlayerChips
              L17_2 = L10_2
              L16_2 = L16_2(L17_2)
              L17_2 = TriggerClientEvent
              L18_2 = "Poker:TicketResults"
              L19_2 = L10_2
              L20_2 = L12_2
              L21_2 = L16_2
              L17_2(L18_2, L19_2, L20_2, L21_2)
            end
          end
        end
      end
    end
    L6_2 = pairs
    L7_2 = L5_2
    L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
    for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
      L12_2 = L1_1
      L12_2 = L12_2[L11_2]
      if nil ~= L12_2 then
        L12_2 = L1_1
        L12_2 = L12_2[L11_2]
        L12_2 = L12_2.lastWinnings
        if L12_2 > 0 then
          L12_2 = table
          L12_2 = L12_2.insert
          L13_2 = L3_2
          L14_2 = {}
          L15_2 = L1_1
          L15_2 = L15_2[L11_2]
          L15_2 = L15_2.lastWinnings
          L14_2.score = L15_2
          L15_2 = GetPlayerRealName
          L16_2 = L11_2
          L15_2 = L15_2(L16_2)
          L14_2.realName = L15_2
          L14_2.playerId = L11_2
          L12_2(L13_2, L14_2)
        end
        L12_2 = L1_1
        L12_2 = L12_2[L11_2]
        L12_2 = L12_2.roundScore
        if nil ~= L12_2 then
          L12_2 = L1_1
          L12_2 = L12_2[L11_2]
          L12_2 = L12_2.roundScore
          if L12_2 < 0 then
            L12_2 = table
            L12_2 = L12_2.insert
            L13_2 = L3_2
            L14_2 = {}
            L15_2 = L1_1
            L15_2 = L15_2[L11_2]
            L15_2 = L15_2.roundScore
            L14_2.score = L15_2
            L15_2 = GetPlayerRealName
            L16_2 = L11_2
            L15_2 = L15_2(L16_2)
            L14_2.realName = L15_2
            L14_2.playerId = L11_2
            L12_2(L13_2, L14_2)
          end
        end
        L12_2 = A0_2.playerScore
        L12_2 = L12_2[L11_2]
        if nil ~= L12_2 then
          L12_2 = L1_1
          L12_2 = L12_2[L11_2]
          L12_2 = L12_2.roundScore
          if nil ~= L12_2 then
            L12_2 = A0_2.playerScore
            L13_2 = A0_2.playerScore
            L13_2 = L13_2[L11_2]
            L14_2 = L1_1
            L14_2 = L14_2[L11_2]
            L14_2 = L14_2.roundScore
            L13_2 = L13_2 + L14_2
            L12_2[L11_2] = L13_2
          end
        end
        L4_2 = L4_2 + 1
      end
    end
    if L4_2 > 0 then
      L6_2 = pairs
      L7_2 = L5_2
      L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
      for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
        L12_2 = TriggerClientEvent
        L13_2 = "Poker:LastRoundScores"
        L14_2 = L11_2
        L15_2 = L3_2
        L12_2(L13_2, L14_2, L15_2)
      end
    end
  end
end
function L25_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = DebugStart
  L2_2 = "PokerTick"
  L1_2(L2_2)
  L1_2 = A0_2.step
  if 1 == L1_2 then
    L1_2 = A0_2.timeleft
    if 0 == L1_2 then
      L1_2 = A0_2.lastStep
      if 2 ~= L1_2 then
        A0_2.step = 2
        A0_2.lastStep = 2
        L1_2 = A0_2.datas
        L1_2 = L1_2.PlaceBetsTime
        A0_2.timeleft = L1_2
        L1_2 = L10_1
        L2_2 = A0_2
        L1_2(L2_2)
        L1_2 = BroadcastCasino
        L2_2 = "Poker:StateChanged"
        L3_2 = A0_2
        L1_2(L2_2, L3_2)
    end
  end
  else
    L1_2 = A0_2.step
    if 2 == L1_2 then
      L1_2 = A0_2.timeleft
      if 0 == L1_2 then
        L1_2 = A0_2.lastStep
        if 3 ~= L1_2 then
          L1_2 = L3_1
          L2_2 = A0_2
          L1_2(L2_2)
          L1_2 = 0
          L2_2 = false
          L3_2 = A0_2.datas
          L3_2 = L3_2.UnluckyRound
          if L3_2 then
            L3_2 = A0_2.rounds
            L3_2 = L3_2 + 1
            A0_2.rounds = L3_2
            L3_2 = A0_2.rounds
            L4_2 = A0_2.datas
            L4_2 = L4_2.UnluckyRound
            if L3_2 >= L4_2 then
              A0_2.rounds = 0
              L2_2 = true
            end
          end
          L3_2 = L7_1
          L4_2 = A0_2
          L5_2 = L2_2
          L3_2, L4_2 = L3_2(L4_2, L5_2)
          A0_2.allCards = L4_2
          L1_2 = L3_2
          A0_2.step = 3
          A0_2.lastStep = 3
          A0_2.timeleft = 3
          L3_2 = 1
          L4_2 = 4
          L5_2 = 1
          for L6_2 = L3_2, L4_2, L5_2 do
            L7_2 = A0_2.chairs
            L7_2 = L7_2[L6_2]
            if nil ~= L7_2 then
              L7_2 = A0_2.timeleft
              L7_2 = L7_2 + 2
              A0_2.timeleft = L7_2
            end
          end
          L3_2 = 1
          L4_2 = 4
          L5_2 = 1
          for L6_2 = L3_2, L4_2, L5_2 do
            L7_2 = A0_2.cardStates
            L7_2[L6_2] = nil
            L7_2 = A0_2.cardsInHands
            L7_2[L6_2] = false
          end
          L3_2 = L15_1
          L4_2 = A0_2
          L3_2(L4_2)
          if 0 == L1_2 then
            A0_2.step = 6
          end
          L3_2 = BroadcastCasino
          L4_2 = "Poker:StateChanged"
          L5_2 = A0_2
          L6_2 = A0_2.allCards
          L3_2(L4_2, L5_2, L6_2)
      end
    end
    else
      L1_2 = A0_2.step
      if 3 == L1_2 then
        L1_2 = A0_2.lastStep
        if 4 ~= L1_2 then
          L1_2 = A0_2.timeleft
          if 0 == L1_2 then
            L1_2 = A0_2.datas
            L1_2 = L1_2.PlaceBetsTime
            A0_2.timeleft = L1_2
            A0_2.step = 4
            A0_2.lastStep = 4
            L1_2 = BroadcastCasino
            L2_2 = "Poker:StateChanged"
            L3_2 = A0_2
            L1_2(L2_2, L3_2)
            L1_2 = L18_1
            L2_2 = A0_2
            L1_2(L2_2)
        end
      end
      else
        L1_2 = A0_2.step
        if 4 == L1_2 then
          L1_2 = A0_2.lastStep
          if 5 ~= L1_2 then
            L1_2 = L9_1
            L2_2 = A0_2
            L1_2(L2_2)
            L1_2 = A0_2.timeleft
            if 0 == L1_2 then
              A0_2.timeleft = 2
              A0_2.step = 5
              A0_2.lastStep = 5
              L1_2 = L17_1
              L2_2 = A0_2
              L1_2(L2_2)
              L1_2 = BroadcastCasino
              L2_2 = "Poker:StateChanged"
              L3_2 = A0_2
              L1_2(L2_2, L3_2)
            end
        end
        else
          L1_2 = A0_2.step
          if 5 == L1_2 then
            L1_2 = A0_2.lastStep
            if 6 ~= L1_2 then
              L1_2 = A0_2.timeleft
              if 0 == L1_2 then
                A0_2.timeleft = 8
                L1_2 = 1
                L2_2 = 4
                L3_2 = 1
                for L4_2 = L1_2, L2_2, L3_2 do
                  L5_2 = A0_2.chairs
                  L5_2 = L5_2[L4_2]
                  if nil ~= L5_2 then
                    L5_2 = A0_2.timeleft
                    L5_2 = L5_2 + 4
                    A0_2.timeleft = L5_2
                  end
                end
                A0_2.step = 6
                A0_2.lastStep = 6
                L1_2 = BroadcastCasino
                L2_2 = "Poker:StateChanged"
                L3_2 = A0_2
                L1_2(L2_2, L3_2)
                L1_2 = CreateThread
                function L2_2()
                  local L0_3, L1_3
                  L0_3 = Wait
                  L1_3 = A0_2.timeleft
                  L1_3 = L1_3 / 3.3
                  L1_3 = L1_3 * 1000
                  L0_3(L1_3)
                  L0_3 = L24_1
                  L1_3 = A0_2
                  L0_3(L1_3)
                end
                L1_2(L2_2)
            end
          end
          else
            L1_2 = A0_2.step
            if 6 == L1_2 then
              L1_2 = A0_2.lastStep
              if 7 ~= L1_2 then
                L1_2 = A0_2.timeleft
                if 0 == L1_2 then
                  A0_2.timeleft = 2
                  A0_2.step = 7
                  A0_2.lastStep = 7
                  L1_2 = BroadcastCasino
                  L2_2 = "Poker:StateChanged"
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
                      L3_2 = "poker"
                      L4_2 = A0_2.coords
                      L5_2 = A0_2.dirtLevel
                      L6_2 = A0_2.dirtProps
                      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
                    end
                  end
              end
            end
            else
              L1_2 = A0_2.step
              if 7 == L1_2 then
                L1_2 = A0_2.lastStep
                if 1 ~= L1_2 then
                  L1_2 = A0_2.timeleft
                  if 0 == L1_2 then
                    L1_2 = A0_2.datas
                    L1_2 = L1_2.PlaceBetsTime
                    A0_2.timeleft = L1_2
                    A0_2.step = 1
                    A0_2.lastStep = 1
                    L1_2 = L12_1
                    L2_2 = A0_2
                    L1_2(L2_2)
                    L1_2 = L11_1
                    L2_2 = A0_2
                    L1_2(L2_2)
                    L1_2 = L10_1
                    L2_2 = A0_2
                    L1_2(L2_2)
                    L1_2 = BroadcastCasino
                    L2_2 = "Poker:StateChanged"
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
  end
  L1_2 = A0_2.timeleft
  if L1_2 > 0 then
    L1_2 = A0_2.timeleft
    L1_2 = L1_2 - 1
    A0_2.timeleft = L1_2
  end
end
function L26_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = DebugStart
  L1_2 = "RefreshPokers"
  L0_2(L1_2)
  L0_2 = pairs
  L1_2 = L0_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = L25_1
    L7_2 = L5_2
    L6_2(L7_2)
  end
end
function L27_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = DebugStart
  L2_2 = "Poker_LeaveChair"
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
  L6_2 = PokerTableDatas
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
  L8_2 = "Poker:Quit"
  L9_2 = A0_2
  L10_2 = L2_2.coords
  L11_2 = L3_2
  L12_2 = L2_2.chairs
  L13_2 = L4_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L7_2 = L2_2.step
  if 1 ~= L7_2 then
    L7_2 = L2_2.step
    if 2 ~= L7_2 then
      goto lbl_65
    end
  end
  L7_2 = L9_1
  L8_2 = L2_2
  L7_2(L8_2)
  ::lbl_65::
end
Poker_LeaveChair = L27_1
L27_1 = RegisterNetEvent
L28_1 = "Poker:Quit"
L27_1(L28_1)
L27_1 = AddEventHandler
L28_1 = "Poker:Quit"
function L29_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = source
  L4_2 = Poker_LeaveChair
  L5_2 = L3_2
  L4_2(L5_2)
end
L27_1(L28_1, L29_1)
L27_1 = RegisterNetEvent
L28_1 = "Poker:ConfirmAnte"
L27_1(L28_1)
L27_1 = AddEventHandler
L28_1 = "Poker:ConfirmAnte"
function L29_1(A0_2)
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
  L4_2 = L2_2.ante
  if nil ~= L4_2 then
    return
  end
  L4_2 = L19_1
  L5_2 = L3_2
  L6_2 = L2_2
  L4_2, L5_2 = L4_2(L5_2, L6_2)
  if A0_2 < L4_2 then
    return
  end
  if A0_2 > L5_2 then
    return
  end
  L6_2 = Pay
  L7_2 = L1_2
  L8_2 = "Ante"
  L9_2 = A0_2
  L10_2 = "Poker"
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  if L6_2 and -1 ~= L6_2 then
    L7_2 = TriggerClientEvent
    L8_2 = "Poker:PaidAmount"
    L9_2 = L1_2
    L10_2 = A0_2
    L7_2(L8_2, L9_2, L10_2)
    L2_2.ante = A0_2
    L2_2.doneForStep = 1
    L7_2 = L2_2.roundScore
    L7_2 = L7_2 - A0_2
    L2_2.roundScore = L7_2
    L7_2 = Cache
    L8_2 = L7_2
    L7_2 = L7_2.PlayerToNet
    L9_2 = L1_2
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = BroadcastCasino
    L9_2 = "Poker:PlaceBet"
    L10_2 = L1_2
    L11_2 = L2_2.table
    L11_2 = L11_2.coords
    L12_2 = L2_2.chair
    L13_2 = A0_2
    L14_2 = 1
    L15_2 = L7_2
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  end
  L7_2 = TriggerClientEvent
  L8_2 = "Poker:ConfirmAnte"
  L9_2 = L1_2
  L10_2 = L6_2
  L11_2 = L2_2
  L7_2(L8_2, L9_2, L10_2, L11_2)
  if L6_2 then
    L7_2 = L9_1
    L8_2 = L3_2
    L7_2(L8_2)
  end
end
L27_1(L28_1, L29_1)
L27_1 = RegisterNetEvent
L28_1 = "Poker:SkipAnte"
L27_1(L28_1)
L27_1 = AddEventHandler
L28_1 = "Poker:SkipAnte"
function L29_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
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
  L2_2 = L1_2.table
  L3_2 = L2_2.step
  if 1 ~= L3_2 then
    return
  end
  L3_2 = L1_2.ante
  if nil ~= L3_2 then
    return
  end
  L1_2.ante = 0
  L1_2.doneForStep = 1
  L3_2 = BroadcastTable
  L4_2 = L2_2
  L5_2 = "Poker:ChairReady"
  L6_2 = L1_2.chair
  L7_2 = 1
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = TriggerClientEvent
  L4_2 = "Poker:SkipAnte"
  L5_2 = L0_2
  L6_2 = L1_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = L9_1
  L4_2 = L2_2
  L3_2(L4_2)
end
L27_1(L28_1, L29_1)
L27_1 = RegisterNetEvent
L28_1 = "Poker:SkipPairPlus"
L27_1(L28_1)
L27_1 = AddEventHandler
L28_1 = "Poker:SkipPairPlus"
function L29_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
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
  L2_2 = L1_2.table
  L3_2 = L2_2.step
  if 2 ~= L3_2 then
    return
  end
  L3_2 = L1_2.pairPlus
  if nil ~= L3_2 then
    return
  end
  L1_2.pairPlus = 0
  L1_2.doneForStep = 2
  L3_2 = BroadcastTable
  L4_2 = L2_2
  L5_2 = "Poker:ChairReady"
  L6_2 = L1_2.chair
  L7_2 = 2
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = TriggerClientEvent
  L4_2 = "Poker:SkipPairPlus"
  L5_2 = L0_2
  L6_2 = L1_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = L9_1
  L4_2 = L2_2
  L3_2(L4_2)
end
L27_1(L28_1, L29_1)
L27_1 = RegisterNetEvent
L28_1 = "Poker:SkipPlay"
L27_1(L28_1)
L27_1 = AddEventHandler
L28_1 = "Poker:SkipPlay"
function L29_1()
  local L0_2, L1_2, L2_2
  L0_2 = source
  L1_2 = L16_1
  L2_2 = L0_2
  L1_2(L2_2)
end
L27_1(L28_1, L29_1)
L27_1 = RegisterNetEvent
L28_1 = "Poker:ConfirmPairPlus"
L27_1(L28_1)
L27_1 = AddEventHandler
L28_1 = "Poker:ConfirmPairPlus"
function L29_1(A0_2)
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
  if 2 ~= L4_2 then
    return
  end
  L4_2 = L2_2.pairPlus
  if nil ~= L4_2 then
    return
  end
  L4_2 = L19_1
  L5_2 = L3_2
  L6_2 = L2_2
  L4_2, L5_2 = L4_2(L5_2, L6_2)
  if A0_2 < L4_2 then
    return
  end
  if A0_2 > L5_2 then
    return
  end
  L6_2 = Pay
  L7_2 = L1_2
  L8_2 = "PairPlus"
  L9_2 = A0_2
  L10_2 = "Poker"
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  if L6_2 and -1 ~= L6_2 then
    L7_2 = TriggerClientEvent
    L8_2 = "Poker:PaidAmount"
    L9_2 = L1_2
    L10_2 = A0_2
    L7_2(L8_2, L9_2, L10_2)
    L2_2.pairPlus = A0_2
    L2_2.doneForStep = 2
    L7_2 = L2_2.roundScore
    L7_2 = L7_2 - A0_2
    L2_2.roundScore = L7_2
    L7_2 = Cache
    L8_2 = L7_2
    L7_2 = L7_2.PlayerToNet
    L9_2 = L1_2
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = BroadcastCasino
    L9_2 = "Poker:PlaceBet"
    L10_2 = L1_2
    L11_2 = L2_2.table
    L11_2 = L11_2.coords
    L12_2 = L2_2.chair
    L13_2 = A0_2
    L14_2 = 2
    L15_2 = L7_2
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  end
  L7_2 = TriggerClientEvent
  L8_2 = "Poker:ConfirmPairPlus"
  L9_2 = L1_2
  L10_2 = L6_2
  L11_2 = L2_2
  L7_2(L8_2, L9_2, L10_2, L11_2)
  if L6_2 then
    L7_2 = L9_1
    L8_2 = L3_2
    L7_2(L8_2)
  end
end
L27_1(L28_1, L29_1)
L27_1 = RegisterNetEvent
L28_1 = "Poker:ConfirmPlay"
L27_1(L28_1)
L27_1 = AddEventHandler
L28_1 = "Poker:ConfirmPlay"
function L29_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
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
  L2_2 = L1_2.table
  L3_2 = L2_2.step
  if 4 ~= L3_2 then
    return
  end
  L3_2 = L1_2.table
  L3_2 = L3_2.cardStates
  L4_2 = L1_2.chair
  L3_2 = L3_2[L4_2]
  if nil ~= L3_2 then
    return
  end
  L3_2 = L1_2.ante
  if nil ~= L3_2 then
    L3_2 = L1_2.ante
    if not (L3_2 <= 0) then
      goto lbl_30
    end
  end
  do return end
  ::lbl_30::
  L3_2 = Pay
  L4_2 = L0_2
  L5_2 = "Play Cards"
  L6_2 = L1_2.ante
  L7_2 = "Poker"
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  if L3_2 and -1 ~= L3_2 then
    L4_2 = TriggerClientEvent
    L5_2 = "Poker:PaidAmount"
    L6_2 = L0_2
    L7_2 = L1_2.ante
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = L1_2.table
    L4_2 = L4_2.cardsInHands
    L5_2 = L1_2.chair
    L4_2 = L4_2[L5_2]
    if true == L4_2 then
      L4_2 = L1_2.table
      L4_2 = L4_2.cardStates
      L5_2 = L1_2.chair
      L4_2[L5_2] = 1
    else
      L4_2 = L1_2.table
      L4_2 = L4_2.cardStates
      L5_2 = L1_2.chair
      L4_2[L5_2] = 9
    end
    L1_2.isPlaying = true
    L1_2.doneForStep = 4
    L4_2 = L1_2.roundScore
    L5_2 = L1_2.ante
    L4_2 = L4_2 - L5_2
    L1_2.roundScore = L4_2
    L4_2 = Cache
    L5_2 = L4_2
    L4_2 = L4_2.PlayerToNet
    L6_2 = L0_2
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = BroadcastCasino
    L6_2 = "Poker:PlaceBet"
    L7_2 = L0_2
    L8_2 = L1_2.table
    L8_2 = L8_2.coords
    L9_2 = L1_2.chair
    L10_2 = L1_2.ante
    L11_2 = 3
    L12_2 = L4_2
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  end
  L4_2 = TriggerClientEvent
  L5_2 = "Poker:ConfirmPlay"
  L6_2 = L0_2
  L7_2 = L3_2
  L8_2 = L1_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L27_1(L28_1, L29_1)
L27_1 = RegisterNetEvent
L28_1 = "Poker:GrabCards"
L27_1(L28_1)
L27_1 = AddEventHandler
L28_1 = "Poker:GrabCards"
function L29_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = source
  L1_2 = L1_1
  L1_2 = L1_2[L0_2]
  if nil == L1_2 then
    return
  end
  L2_2 = L1_2.table
  L3_2 = L2_2.step
  if 4 ~= L3_2 then
    return
  end
  L3_2 = L1_2.isPlaying
  if nil ~= L3_2 then
    return
  end
  L3_2 = L1_2.table
  L3_2 = L3_2.cardsInHands
  L4_2 = L1_2.chair
  L3_2 = L3_2[L4_2]
  if true == L3_2 then
    return
  end
  L3_2 = L1_2.table
  L3_2 = L3_2.cardsInHands
  L4_2 = L1_2.chair
  L3_2[L4_2] = true
  L3_2 = Cache
  L4_2 = L3_2
  L3_2 = L3_2.PlayerToNet
  L5_2 = L0_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = BroadcastCasino
  L5_2 = "Poker:GrabCards"
  L6_2 = L0_2
  L7_2 = L1_2.table
  L7_2 = L7_2.coords
  L8_2 = L1_2.chair
  L9_2 = L3_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end
L27_1(L28_1, L29_1)
L27_1 = RegisterNetEvent
L28_1 = "Poker:Sit"
L27_1(L28_1)
L27_1 = AddEventHandler
L28_1 = "Poker:Sit"
function L29_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L6_2 = source
  L7_2 = Cache
  L7_2 = L7_2.PedNetIdCache
  L7_2[L6_2] = A5_2
  L7_2 = L2_1
  L8_2 = A0_2
  L7_2 = L7_2(L8_2)
  if nil == L7_2 then
    L8_2 = L5_1
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
  L8_2[L6_2] = L9_2
  L8_2 = "MINIGAME_DEALER_GREET"
  L9_2 = RandomNumber
  L10_2 = 0
  L11_2 = 3
  L9_2 = L9_2(L10_2, L11_2)
  if 2 == L9_2 then
    if A4_2 then
      L9_2 = "MINIGAME_DEALER_GREET_MALE"
      if L9_2 then
        goto lbl_64
        L8_2 = L9_2 or L8_2
      end
    end
    L8_2 = "MINIGAME_DEALER_GREET_FEMALE"
  end
  ::lbl_64::
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
  if 0 == L9_2 then
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
  L10_2 = "Poker:Sit"
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
  L13_2.type = "Poker"
  L13_2.coords = A0_2
  L13_2.chair = A1_2
  L9_2(L10_2, L11_2, L12_2, L13_2)
end
L27_1(L28_1, L29_1)
function L27_1(A0_2)
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
  L4_2 = "poker"
  L5_2 = L1_2.coords
  L6_2 = L1_2.dirtLevel
  L7_2 = L1_2.dirtProps
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
Poker_CleanUpTableAtCoords = L27_1
L27_1 = RegisterNetEvent
L28_1 = "Poker:GetSessions"
L27_1(L28_1)
L27_1 = AddEventHandler
L28_1 = "Poker:GetSessions"
function L29_1(A0_2)
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
  L4_2 = "Poker:Sessions"
  L5_2 = L1_2
  L6_2 = L2_2
  L7_2 = DAY_OF_WEEK
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L27_1(L28_1, L29_1)
L27_1 = CreateThread
function L28_1()
  local L0_2, L1_2
  while true do
    L0_2 = L26_1
    L0_2()
    L0_2 = Wait
    L1_2 = 1000
    L0_2(L1_2)
  end
end
L29_1 = true
L27_1(L28_1, L29_1)
