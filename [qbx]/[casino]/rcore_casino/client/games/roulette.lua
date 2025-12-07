local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1, L41_1, L42_1, L43_1, L44_1, L45_1, L46_1, L47_1, L48_1, L49_1, L50_1, L51_1, L52_1, L53_1, L54_1, L55_1, L56_1, L57_1, L58_1
L0_1 = {}
L1_1 = false
L2_1 = false
L3_1 = false
L4_1 = nil
L5_1 = nil
L6_1 = nil
L7_1 = nil
L8_1 = nil
L9_1 = 0
L10_1 = 0.5
L11_1 = 0.5
L12_1 = 0.0
L13_1 = 0
L14_1 = nil
L15_1 = nil
L16_1 = nil
L17_1 = nil
L18_1 = -1
L19_1 = 0
L20_1 = false
L21_1 = 0
L22_1 = 0
L23_1 = 0
L24_1 = "anim_casino_b@amb@casino@games@roulette@table"
L25_1 = "anim_casino_b@amb@casino@games@shared@player@"
function L26_1()
  local L0_2, L1_2
  L0_2 = DebugStart
  L1_2 = "Reset"
  L0_2(L1_2)
  L0_2 = {}
  L0_1 = L0_2
  L0_2 = false
  L1_1 = L0_2
  L0_2 = false
  L2_1 = L0_2
  L0_2 = false
  L3_1 = L0_2
  L0_2 = nil
  L4_1 = L0_2
  L0_2 = nil
  L5_1 = L0_2
  L0_2 = nil
  L6_1 = L0_2
  L0_2 = nil
  L8_1 = L0_2
  L0_2 = 0.5
  L10_1 = L0_2
  L0_2 = 0.5
  L11_1 = L0_2
  L0_2 = 0.0
  L12_1 = L0_2
  L0_2 = 0
  L13_1 = L0_2
  L0_2 = nil
  L14_1 = L0_2
  L0_2 = nil
  L15_1 = L0_2
  L0_2 = nil
  L16_1 = L0_2
  L0_2 = nil
  L17_1 = L0_2
  L0_2 = -1
  L18_1 = L0_2
  L0_2 = 0
  L19_1 = L0_2
  L0_2 = false
  L20_1 = L0_2
  L0_2 = 0
  L21_1 = L0_2
  L0_2 = 0
  L22_1 = L0_2
  L0_2 = 0
  L23_1 = L0_2
end
function L27_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = DebugStart
  L4_2 = "ShowWinnersUI"
  L3_2(L4_2)
  L3_2 = InfoPanel_UpdateNotification
  L4_2 = nil
  L3_2(L4_2)
  L3_2 = RageUI
  L3_2 = L3_2.CreateMenu
  L4_2 = ""
  L5_2 = "custom"
  L6_2 = 25
  L7_2 = 25
  L8_2 = "casinoui_winners"
  L9_2 = "casinoui_winners"
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2.NoHud = true
  L4_2 = L3_2.Display
  L4_2.Header = false
  L4_2 = L3_2.Display
  L4_2.InstructionalButton = false
  L4_2 = L3_2.Display
  L4_2.Subtitle = false
  function L4_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3
    L3_3 = pairs
    L4_3 = A1_3
    L3_3, L4_3, L5_3, L6_3 = L3_3(L4_3)
    for L7_3, L8_3 in L3_3, L4_3, L5_3, L6_3 do
      L10_3 = A0_3
      L9_3 = A0_3.AddWinnerLoser
      L11_3 = L8_3.name
      L12_3 = L8_3.score
      L13_3 = L8_3.txd
      L14_3 = nil
      L15_3 = {}
      L15_3.IsDisabled = false
      L16_3 = L8_3.score
      L15_3.RightLabel = L16_3
      L15_3.RightLabelColor = A2_3
      L16_3 = RageUI
      L16_3 = L16_3.ItemsColour
      L16_3 = L16_3.White
      L15_3.TextLabelColor = L16_3
      L16_3 = {}
      L17_3 = {}
      L18_3 = 0
      L19_3 = 0
      L20_3 = 0
      L21_3 = 100
      L17_3[1] = L18_3
      L17_3[2] = L19_3
      L17_3[3] = L20_3
      L17_3[4] = L21_3
      L16_3.BackgroundColor = L17_3
      L15_3.Color = L16_3
      L16_3 = nil
      function L17_3()
        local L0_4, L1_4
      end
      L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
    end
  end
  DrawPlayers = L4_2
  L4_2 = RageUI
  L4_2 = L4_2.PoolMenus
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = L3_2
    L2_3 = L1_3
    L1_3 = L1_3.IsVisible
    function L3_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4
      L1_4 = A0_2
      L1_4 = #L1_4
      if L1_4 > 0 then
        L2_4 = A0_4
        L1_4 = A0_4.AddExtraSubtitle
        L3_4 = Translation
        L3_4 = L3_4.Get
        L4_4 = "WINNERS"
        L3_4 = L3_4(L4_4)
        L4_4 = A0_2
        L4_4 = #L4_4
        L5_4 = 0
        L6_4 = 181
        L7_4 = 0
        L8_4 = 50
        L1_4(L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4)
        L1_4 = DrawPlayers
        L2_4 = A0_4
        L3_4 = A0_2
        L4_4 = RageUI
        L4_4 = L4_4.ItemsColour
        L4_4 = L4_4.GreenLight
        L1_4(L2_4, L3_4, L4_4)
      end
      L1_4 = A1_2
      L1_4 = #L1_4
      if L1_4 > 0 then
        L2_4 = A0_4
        L1_4 = A0_4.AddExtraSubtitle
        L3_4 = Translation
        L3_4 = L3_4.Get
        L4_4 = "LOSERS"
        L3_4 = L3_4(L4_4)
        L4_4 = A1_2
        L4_4 = #L4_4
        L5_4 = 181
        L6_4 = 0
        L7_4 = 0
        L8_4 = 50
        L1_4(L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4)
        L1_4 = DrawPlayers
        L2_4 = A0_4
        L3_4 = A1_2
        L4_4 = RageUI
        L4_4 = L4_4.ItemsColour
        L4_4 = L4_4.RedLight
        L1_4(L2_4, L3_4, L4_4)
      end
      L1_4 = A2_2
      if L1_4 then
        L2_4 = A0_4
        L1_4 = A0_4.AddText
        L3_4 = A2_2
        L4_4 = "\n"
        L3_4 = L3_4 .. L4_4
        L4_4 = 5
        L1_4(L2_4, L3_4, L4_4)
      end
    end
    function L4_3(A0_4)
      local L1_4
    end
    L1_3(L2_3, L3_3, L4_3)
  end
  L4_2.WinnersUI = L5_2
  L4_2 = RageUI
  L4_2 = L4_2.Visible
  L5_2 = L3_2
  L6_2 = true
  L4_2(L5_2, L6_2)
end
function L28_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = DebugStart
  L1_2 = "RedrawInstructionalButtonsNUI"
  L0_2(L1_2)
  L0_2 = L1_1
  if not L0_2 then
    L0_2 = PushNUIInstructionalButtons
    L1_2 = nil
    L0_2(L1_2)
    return
  end
  L0_2 = {}
  L1_2 = L19_1
  if L1_2 > 0 then
    L1_2 = table
    L1_2 = L1_2.insert
    L2_2 = L0_2
    L3_2 = {}
    L3_2.key = 202
    L4_2 = Translation
    L4_2 = L4_2.Get
    L5_2 = "ROULETTE_BTN_CLOSE_RULES"
    L4_2 = L4_2(L5_2)
    L3_2.title = L4_2
    L1_2(L2_2, L3_2)
    L1_2 = table
    L1_2 = L1_2.insert
    L2_2 = L0_2
    L3_2 = {}
    L3_2.key = 190
    L4_2 = Translation
    L4_2 = L4_2.Get
    L5_2 = "BTN_PREV_PAGE"
    L4_2 = L4_2(L5_2)
    L3_2.title = L4_2
    L1_2(L2_2, L3_2)
    L1_2 = table
    L1_2 = L1_2.insert
    L2_2 = L0_2
    L3_2 = {}
    L3_2.key = 189
    L4_2 = Translation
    L4_2 = L4_2.Get
    L5_2 = "BTN_NEXT_PAGE"
    L4_2 = L4_2(L5_2)
    L3_2.title = L4_2
    L1_2(L2_2, L3_2)
  else
    L1_2 = table
    L1_2 = L1_2.insert
    L2_2 = L0_2
    L3_2 = {}
    L3_2.key = 202
    L4_2 = Translation
    L4_2 = L4_2.Get
    L5_2 = "BTN_QUIT"
    L4_2 = L4_2(L5_2)
    L3_2.title = L4_2
    L1_2(L2_2, L3_2)
    L1_2 = L3_1
    if L1_2 then
      L1_2 = table
      L1_2 = L1_2.insert
      L2_2 = L0_2
      L3_2 = {}
      L4_2 = IsGamepadControl
      L4_2 = L4_2()
      if L4_2 then
        L4_2 = 201
        if L4_2 then
          goto lbl_81
        end
      end
      L4_2 = 237
      ::lbl_81::
      L3_2.key = L4_2
      L4_2 = Translation
      L4_2 = L4_2.Get
      L5_2 = "ROULETTE_BTN_PLACE_BET"
      L4_2 = L4_2(L5_2)
      L3_2.title = L4_2
      L1_2(L2_2, L3_2)
      L1_2 = L20_1
      if L1_2 then
        L1_2 = table
        L1_2 = L1_2.insert
        L2_2 = L0_2
        L3_2 = {}
        L4_2 = IsGamepadControl
        L4_2 = L4_2()
        if L4_2 then
          L4_2 = 203
          if L4_2 then
            goto lbl_104
          end
        end
        L4_2 = 238
        ::lbl_104::
        L3_2.key = L4_2
        L4_2 = Translation
        L4_2 = L4_2.Get
        L5_2 = "ROULETTE_BTN_REMOVE_THIS_BET"
        L4_2 = L4_2(L5_2)
        L3_2.title = L4_2
        L1_2(L2_2, L3_2)
      end
      L1_2 = table
      L1_2 = L1_2.insert
      L2_2 = L0_2
      L3_2 = {}
      L4_2 = GameplayKeys
      L4_2 = L4_2.TableGamesMaxBet
      L3_2.key = L4_2
      L4_2 = Translation
      L4_2 = L4_2.Get
      L5_2 = "ROULETTE_BTN_MAX_BET"
      L4_2 = L4_2(L5_2)
      L3_2.title = L4_2
      L1_2(L2_2, L3_2)
      L1_2 = table
      L1_2 = L1_2.insert
      L2_2 = L0_2
      L3_2 = {}
      L3_2.key = 187
      L4_2 = Translation
      L4_2 = L4_2.Get
      L5_2 = "ROULETTE_BTN_ADJUST_BET"
      L4_2 = L4_2(L5_2)
      L3_2.title = L4_2
      L3_2.extraKey = 188
      L1_2(L2_2, L3_2)
    end
    L1_2 = table
    L1_2 = L1_2.insert
    L2_2 = L0_2
    L3_2 = {}
    L3_2.key = 207
    L4_2 = Translation
    L4_2 = L4_2.Get
    L5_2 = "BTN_CAMERA"
    L4_2 = L4_2(L5_2)
    L3_2.title = L4_2
    L3_2.extraKey = 208
    L1_2(L2_2, L3_2)
    L1_2 = table
    L1_2 = L1_2.insert
    L2_2 = L0_2
    L3_2 = {}
    L3_2.key = 210
    L4_2 = Translation
    L4_2 = L4_2.Get
    L5_2 = "BTN_RULES"
    L4_2 = L4_2(L5_2)
    L3_2.title = L4_2
    L1_2(L2_2, L3_2)
    L1_2 = table
    L1_2 = L1_2.insert
    L2_2 = L0_2
    L3_2 = {}
    L4_2 = GameplayKeys
    L4_2 = L4_2.RouletteHistoryKey
    L3_2.key = L4_2
    L4_2 = Translation
    L4_2 = L4_2.Get
    L5_2 = "BTN_HISTORY"
    L4_2 = L4_2(L5_2)
    L3_2.title = L4_2
    L1_2(L2_2, L3_2)
  end
  L1_2 = PushNUIInstructionalButtons
  L2_2 = L0_2
  L1_2(L2_2)
end
function L29_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2
  L1_2 = DebugStart
  L2_2 = "ShowRulesUI"
  L1_2(L2_2)
  L1_2 = CloseAllMenus
  L1_2()
  L1_2 = {}
  L2_2 = ""
  L3_2 = nil
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L19_1 = A0_2
  L2_2 = L19_1
  if 1 == L2_2 then
    L2_2 = Translation
    L2_2 = L2_2.Get
    L3_2 = "ROULETTE_RULES_PART1"
    L2_2 = L2_2(L3_2)
    L1_2[1] = L2_2
    L2_2 = Translation
    L2_2 = L2_2.Get
    L3_2 = "ROULETTE_RULES_PART2"
    L2_2 = L2_2(L3_2)
    L1_2[2] = L2_2
  else
    L2_2 = L19_1
    if 2 == L2_2 then
      L2_2 = Translation
      L2_2 = L2_2.Get
      L3_2 = "ROULETTE_RULES_PART3"
      L2_2 = L2_2(L3_2)
      L1_2[1] = L2_2
      L2_2 = Translation
      L2_2 = L2_2.Get
      L3_2 = "ROULETTE_RULES_PART4"
      L2_2 = L2_2(L3_2)
      L1_2[2] = L2_2
    else
      L2_2 = L19_1
      if 3 == L2_2 then
        L2_2 = Translation
        L2_2 = L2_2.Get
        L3_2 = "ROULETTE_RULES_BET_LIMITS"
        L2_2 = L2_2(L3_2)
        L3_2 = [[


]]
        L4_2 = Translation
        L4_2 = L4_2.Get
        L5_2 = "ROULETTE_RULES_INSIDE_BETS"
        L4_2 = L4_2(L5_2)
        L5_2 = [[
:
- ]]
        L6_2 = Translation
        L6_2 = L6_2.Get
        L7_2 = "ROULETTE_RULES_MINIMUM"
        L6_2 = L6_2(L7_2)
        L7_2 = ": "
        L8_2 = L7_1.MinBetValue
        L9_2 = " "
        L10_2 = Translation
        L10_2 = L10_2.Get
        L11_2 = "ROULETTE_RULES_CHIPS"
        L10_2 = L10_2(L11_2)
        L11_2 = [[

- ]]
        L12_2 = Translation
        L12_2 = L12_2.Get
        L13_2 = "ROULETTE_NUMBERS_MAXIMUM"
        L12_2 = L12_2(L13_2)
        L13_2 = ": "
        L14_2 = L7_1.MaxBetValueInside
        L15_2 = " "
        L16_2 = Translation
        L16_2 = L16_2.Get
        L17_2 = "ROULETTE_RULES_CHIPS"
        L16_2 = L16_2(L17_2)
        L17_2 = [[


]]
        L18_2 = Translation
        L18_2 = L18_2.Get
        L19_2 = "ROULETTE_RULES_OUTSIDE_BETS"
        L18_2 = L18_2(L19_2)
        L19_2 = [[
:
- ]]
        L20_2 = Translation
        L20_2 = L20_2.Get
        L21_2 = "ROULETTE_RULES_MINIMUM"
        L20_2 = L20_2(L21_2)
        L21_2 = ": "
        L22_2 = L7_1.MinBetValue
        L23_2 = " "
        L24_2 = Translation
        L24_2 = L24_2.Get
        L25_2 = "ROULETTE_RULES_CHIPS"
        L24_2 = L24_2(L25_2)
        L25_2 = [[

- ]]
        L26_2 = Translation
        L26_2 = L26_2.Get
        L27_2 = "ROULETTE_NUMBERS_MAXIMUM"
        L26_2 = L26_2(L27_2)
        L27_2 = ": "
        L28_2 = L7_1.MaxBetValueOutside
        L29_2 = " "
        L30_2 = Translation
        L30_2 = L30_2.Get
        L31_2 = "ROULETTE_RULES_CHIPS"
        L30_2 = L30_2(L31_2)
        L2_2 = L2_2 .. L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2 .. L17_2 .. L18_2 .. L19_2 .. L20_2 .. L21_2 .. L22_2 .. L23_2 .. L24_2 .. L25_2 .. L26_2 .. L27_2 .. L28_2 .. L29_2 .. L30_2
        L1_2[1] = L2_2
      end
    end
  end
  L2_2 = InfoPanel_Update
  L3_2 = L7_1.Banner
  L4_2 = L7_1.Banner
  L5_2 = Translation
  L5_2 = L5_2.Get
  L6_2 = "ROULETTE_RULES_TITLE"
  L5_2 = L5_2(L6_2)
  L6_2 = L1_2[1]
  L7_2 = L1_2[2]
  L8_2 = false
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = L2_2.Display
  L3_2.PageCounter = true
  L3_2 = L2_2.Display
  L3_2.InstructionalButton = false
  L3_2 = L19_1
  L4_2 = " / 3"
  L3_2 = L3_2 .. L4_2
  L2_2.CustomCounter = L3_2
  L3_2 = L28_1
  L3_2()
end
L30_1 = {}
function L31_1(A0_2)
  local L1_2, L2_2
  L1_2 = DebugStart
  L2_2 = "GetBetOnIndex"
  L1_2(L2_2)
  L1_2 = L30_1
  L1_2 = L1_2[A0_2]
  if nil ~= L1_2 then
    L1_2 = L30_1
    L1_2 = L1_2[A0_2]
    if L1_2 then
      goto lbl_13
    end
  end
  L1_2 = 0
  ::lbl_13::
  return L1_2
end
function L32_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = DebugStart
  L3_2 = "SetBetOnIndex"
  L2_2(L3_2)
  L2_2 = L30_1
  L3_2 = A1_2 or L3_2
  if not (A1_2 > 0) or not A1_2 then
    L3_2 = nil
  end
  L2_2[A0_2] = L3_2
end
function L33_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = DebugStart
  L3_2 = "IncrementBetOnIndex"
  L2_2(L3_2)
  L2_2 = L30_1
  L2_2 = L2_2[A0_2]
  if nil == L2_2 then
    L2_2 = 0
  end
  L3_2 = L30_1
  L4_2 = L2_2 + A1_2
  L3_2[A0_2] = L4_2
  L3_2 = L30_1
  L3_2 = L3_2[A0_2]
  return L3_2
end
function L34_1(A0_2)
  local L1_2, L2_2
  L1_2 = 10000
  if A0_2 >= L1_2 then
    L1_2 = 10000
    L2_2 = "vw_prop_plaq_10kdollar_x1"
    return L1_2, L2_2
  else
    L1_2 = 5000
    if A0_2 >= L1_2 then
      L1_2 = 5000
      L2_2 = "vw_prop_chip_5kdollar_x1"
      return L1_2, L2_2
    else
      L1_2 = 1000
      if A0_2 >= L1_2 then
        L1_2 = 1000
        L2_2 = "vw_prop_chip_1kdollar_x1"
        return L1_2, L2_2
      else
        L1_2 = 500
        if A0_2 >= L1_2 then
          L1_2 = 500
          L2_2 = "vw_prop_chip_500dollar_x1"
          return L1_2, L2_2
        elseif A0_2 >= 100 then
          L1_2 = 100
          L2_2 = "vw_prop_chip_100dollar_x1"
          return L1_2, L2_2
        elseif A0_2 >= 50 then
          L1_2 = 50
          L2_2 = "vw_prop_chip_50dollar_x1"
          return L1_2, L2_2
        elseif A0_2 >= 10 then
          L1_2 = 10
          L2_2 = "vw_prop_chip_10dollar_x1"
          return L1_2, L2_2
        elseif A0_2 >= 0 then
          L1_2 = 1
          L2_2 = "vw_prop_vw_coin_01a"
          return L1_2, L2_2
        else
          L1_2 = 0
          L2_2 = 0
          return L1_2, L2_2
        end
      end
    end
  end
end
function L35_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = DebugStart
  L1_2 = "PlayRandomIdleAnimation"
  L0_2(L1_2)
  L0_2 = "idle_var_"
  L1_2 = string
  L1_2 = L1_2.format
  L2_2 = "%02d"
  L3_2 = RandomNumber
  L4_2 = 1
  L5_2 = 13
  L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2(L4_2, L5_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L0_2 = L0_2 .. L1_2
  L1_2 = GetAnimDuration
  L2_2 = L25_1
  L3_2 = L0_2
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2 * 1000
  L2_2 = PlaySynchronizedScene
  L3_2 = L8_1.coords
  L4_2 = L8_1.rotation
  L5_2 = L25_1
  L6_2 = L0_2
  L7_2 = false
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = CreateNewSceneEndEvent
  L4_2 = L2_2
  L5_2 = 0.98
  L6_2 = L35_1
  L7_2 = L1_2 + 3000
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
function L36_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = DebugStart
  L2_2 = "PlayRandomReactionAnimation"
  L1_2(L2_2)
  L1_2 = "reaction_impartial_var_"
  L2_2 = string
  L2_2 = L2_2.format
  L3_2 = "%02d"
  L4_2 = RandomNumber
  L5_2 = 1
  L6_2 = 8
  L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2(L5_2, L6_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L1_2 = L1_2 .. L2_2
  if 0 == A0_2 then
    L2_2 = "reaction_terrible_var_"
    L3_2 = string
    L3_2 = L3_2.format
    L4_2 = "%02d"
    L5_2 = RandomNumber
    L6_2 = 1
    L7_2 = 4
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    L2_2 = L2_2 .. L3_2
    L1_2 = L2_2
  elseif 1 == A0_2 then
    L2_2 = "reaction_bad_var_"
    L3_2 = string
    L3_2 = L3_2.format
    L4_2 = "%02d"
    L5_2 = RandomNumber
    L6_2 = 1
    L7_2 = 4
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    L2_2 = L2_2 .. L3_2
    L1_2 = L2_2
  elseif 3 == A0_2 then
    L2_2 = "reaction_good_var_"
    L3_2 = string
    L3_2 = L3_2.format
    L4_2 = "%02d"
    L5_2 = RandomNumber
    L6_2 = 1
    L7_2 = 4
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    L2_2 = L2_2 .. L3_2
    L1_2 = L2_2
  elseif 4 == A0_2 then
    L2_2 = "reaction_great_var_"
    L3_2 = string
    L3_2 = L3_2.format
    L4_2 = "%02d"
    L5_2 = RandomNumber
    L6_2 = 1
    L7_2 = 4
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    L2_2 = L2_2 .. L3_2
    L1_2 = L2_2
  end
  L2_2 = GetAnimDuration
  L3_2 = L25_1
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L2_2 = L2_2 * 1000
  L3_2 = PlaySynchronizedScene
  L4_2 = L8_1.coords
  L5_2 = L8_1.rotation
  L6_2 = L25_1
  L7_2 = L1_2
  L8_2 = false
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L4_2 = CreateNewSceneEndEvent
  L5_2 = L3_2
  L6_2 = 0.98
  L7_2 = L35_1
  L8_2 = L2_2 + 3000
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
function L37_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = DebugStart
  L2_2 = "PlaySpinEndReaction"
  L1_2(L2_2)
  L1_2 = GetRouletteBetCountAndValue
  L2_2 = L30_1
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  L4_2 = L2_2 + L3_2
  L5_2 = CalculateRoulettePlayerWinnings
  L6_2 = A0_2
  L7_2 = L30_1
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L4_2 - L5_2
  L7_2 = 2
  if L5_2 < L6_2 then
    L8_2 = 2500
    if L6_2 <= L8_2 then
      L7_2 = 1
    else
      L8_2 = 2500
      if L6_2 > L8_2 then
        L7_2 = 0
      end
    end
  elseif L5_2 > L6_2 then
    L8_2 = 2500
    if L5_2 <= L8_2 then
      L7_2 = 3
    else
      L8_2 = 2500
      if L5_2 > L8_2 then
        L7_2 = 4
      end
    end
  end
  L8_2 = L36_1
  L9_2 = L7_2
  L8_2(L9_2)
end
function L38_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = DebugStart
  L2_2 = "GetChipsArrayFromTotalAmount"
  L1_2(L2_2)
  L1_2 = {}
  L2_2 = 0
  while A0_2 > 0 and L2_2 < 5 do
    L3_2 = L34_1
    L4_2 = A0_2
    L3_2, L4_2 = L3_2(L4_2)
    A0_2 = A0_2 - L3_2
    L2_2 = L2_2 + 1
    L5_2 = table
    L5_2 = L5_2.insert
    L6_2 = L1_2
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
  end
  return L1_2
end
function L39_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = DebugStart
  L2_2 = "BetIndexClearClicked"
  L1_2(L2_2)
  L1_2 = L15_1
  if nil ~= L1_2 then
    L1_2 = L2_1
    if L1_2 then
      goto lbl_11
    end
  end
  do return end
  ::lbl_11::
  L1_2 = L18_1
  if 1 ~= L1_2 then
    return
  end
  L1_2 = L6_1
  if nil == L1_2 then
    return
  end
  L1_2 = L31_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if 0 == L1_2 then
    return
  end
  L2_2 = PlaySound
  L3_2 = "DLC_VW_REMOVE_BET"
  L4_2 = "dlc_vw_table_games_frontend_sounds"
  L2_2(L3_2, L4_2)
  L2_2 = GetRouletteBetCountAndValue
  L3_2 = L30_1
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  L2_2 = L2_2 - 1
  L5_2 = L15_1.setText
  L6_2 = tostring
  L7_2 = L7_1.MaxBets
  L7_2 = L7_2 - L2_2
  L6_2, L7_2, L8_2 = L6_2(L7_2)
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = L30_1
  L5_2[A0_2] = 0
  L5_2 = false
  L20_1 = L5_2
  L5_2 = L28_1
  L5_2()
  L5_2 = TriggerServerEvent
  L6_2 = "Roulette:UpdateTicket"
  L7_2 = L30_1
  L8_2 = A0_2
  L5_2(L6_2, L7_2, L8_2)
end
function L40_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = DebugStart
  L2_2 = "BetIndexClicked"
  L1_2(L2_2)
  L1_2 = L15_1
  if nil ~= L1_2 then
    L1_2 = L2_1
    if L1_2 then
      goto lbl_11
    end
  end
  do return end
  ::lbl_11::
  L1_2 = L18_1
  if 1 ~= L1_2 then
    return
  end
  L1_2 = L6_1
  if nil == L1_2 then
    return
  end
  L1_2 = PLAYER_CHIPS
  L2_2 = L30_1
  if L2_2 then
    L2_2 = pairs
    L3_2 = L30_1
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L1_2 = L1_2 - L7_2
    end
  end
  L2_2 = GetRouletteBetCountAndValue
  L3_2 = L30_1
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  L5_2 = L31_1
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  if 0 == L5_2 then
    L6_2 = L7_1.MaxBets
    if L2_2 == L6_2 then
      L6_2 = PlaySound
      L7_2 = "DLC_VW_ERROR_MAX"
      L8_2 = "dlc_vw_table_games_frontend_sounds"
      L6_2(L7_2, L8_2)
      return
    end
    L2_2 = L2_2 + 1
    L6_2 = L15_1.setText
    L7_2 = tostring
    L8_2 = L7_1.MaxBets
    L8_2 = L8_2 - L2_2
    L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
    L6_2(L7_2, L8_2, L9_2, L10_2)
  end
  L6_2 = L23_1
  L7_2 = IsRouletteIndexBetOutsideBet
  L8_2 = A0_2
  L7_2 = L7_2(L8_2)
  if L7_2 then
    L7_2 = L4_2 + L6_2
    L8_2 = L7_1.MaxBetValueOutside
    if L7_2 > L8_2 then
      L7_2 = L7_1.MaxBetValueOutside
      L6_2 = L7_2 - L4_2
    end
  end
  L7_2 = IsRouletteIndexBetOutsideBet
  L8_2 = A0_2
  L7_2 = L7_2(L8_2)
  if not L7_2 then
    L7_2 = L3_2 + L6_2
    L8_2 = L7_1.MaxBetValueInside
    if L7_2 > L8_2 then
      L7_2 = L7_1.MaxBetValueInside
      L6_2 = L7_2 - L3_2
    end
  end
  if L1_2 < L6_2 then
    L6_2 = 0
  end
  L7_2 = IsRouletteIndexBetOutsideBet
  L8_2 = A0_2
  L7_2 = L7_2(L8_2)
  if L7_2 then
    L7_2 = L7_1.MaxBetValueOutside
    if L4_2 >= L7_2 then
      L7_2 = PlaySound
      L8_2 = "DLC_VW_ERROR_MAX"
      L9_2 = "dlc_vw_table_games_frontend_sounds"
      L7_2(L8_2, L9_2)
      return
    end
  end
  L7_2 = IsRouletteIndexBetOutsideBet
  L8_2 = A0_2
  L7_2 = L7_2(L8_2)
  if not L7_2 then
    L7_2 = L7_1.MaxBetValueInside
    if L3_2 >= L7_2 then
      L7_2 = PlaySound
      L8_2 = "DLC_VW_ERROR_MAX"
      L9_2 = "dlc_vw_table_games_frontend_sounds"
      L7_2(L8_2, L9_2)
      return
    end
  end
  if L6_2 > 0 then
    if L6_2 <= 50 then
      L7_2 = PlaySound
      L8_2 = "DLC_VW_BET_50"
      L9_2 = "dlc_vw_table_games_sounds"
      L7_2(L8_2, L9_2)
    else
      L7_2 = PlaySound
      L8_2 = "DLC_VW_BET_100"
      L9_2 = "dlc_vw_table_games_sounds"
      L7_2(L8_2, L9_2)
    end
    L5_2 = L5_2 + L6_2
    L7_2 = L30_1
    L7_2[A0_2] = L5_2
    L7_2 = true
    L20_1 = L7_2
    L7_2 = L28_1
    L7_2()
    L7_2 = TriggerServerEvent
    L8_2 = "Roulette:UpdateTicket"
    L9_2 = L30_1
    L10_2 = A0_2
    L7_2(L8_2, L9_2, L10_2)
  end
end
function L41_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = DebugStart
  L1_2 = "HandleUIButtons"
  L0_2(L1_2)
  L0_2 = L6_1
  if nil ~= L0_2 then
    L0_2 = L1_1
    if L0_2 then
      goto lbl_11
    end
  end
  do return end
  ::lbl_11::
  L0_2 = DisableControlAction
  L1_2 = 0
  L2_2 = 187
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = DisableControlAction
  L1_2 = 0
  L2_2 = 188
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = DisableControlAction
  L1_2 = 0
  L2_2 = 189
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = DisableControlAction
  L1_2 = 0
  L2_2 = 190
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = DisableControlAction
  L1_2 = 0
  L2_2 = 207
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = DisableControlAction
  L1_2 = 0
  L2_2 = 208
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = DisableControlAction
  L1_2 = 0
  L2_2 = 210
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = DisableControlAction
  L1_2 = 0
  L2_2 = GameplayKeys
  L2_2 = L2_2.TableGamesMaxBet
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = DisableControlAction
  L1_2 = 0
  L2_2 = 201
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = DisableESCThisFrame
  L0_2()
  L0_2 = IsDisabledControlJustPressed
  L1_2 = 0
  L2_2 = 188
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 then
    L0_2 = L3_1
    if L0_2 then
      L0_2 = GetHigherBetStepOf
      L1_2 = L23_1
      L0_2 = L0_2(L1_2)
      L23_1 = L0_2
      L0_2 = math
      L0_2 = L0_2.round
      L1_2 = L23_1
      L1_2 = L1_2 / 5
      L0_2 = L0_2(L1_2)
      L0_2 = L0_2 * 5
      L23_1 = L0_2
      L0_2 = L23_1
      L1_2 = L7_1.MaxBetValue
      if L0_2 > L1_2 then
        L0_2 = L7_1.MaxBetValue
        L23_1 = L0_2
        L0_2 = PlaySound
        L1_2 = "DLC_VW_ERROR_MAX"
        L2_2 = "dlc_vw_table_games_frontend_sounds"
        L0_2(L1_2, L2_2)
      else
        L0_2 = L23_1
        L1_2 = PLAYER_CHIPS
        if L0_2 > L1_2 then
          L0_2 = PLAYER_CHIPS
          L23_1 = L0_2
          L0_2 = PlaySound
          L1_2 = "DLC_VW_ERROR_MAX"
          L2_2 = "dlc_vw_table_games_frontend_sounds"
          L0_2(L1_2, L2_2)
        else
          L0_2 = PlaySound
          L1_2 = "DLC_VW_BET_UP"
          L2_2 = "dlc_vw_table_games_frontend_sounds"
          L0_2(L1_2, L2_2)
        end
      end
      L0_2 = L17_1
      if nil ~= L0_2 then
        L0_2 = L17_1.setText
        L1_2 = tostring
        L2_2 = L23_1
        L1_2, L2_2, L3_2, L4_2, L5_2 = L1_2(L2_2)
        L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
      end
    end
  end
  L0_2 = IsDisabledControlJustPressed
  L1_2 = 0
  L2_2 = 187
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 then
    L0_2 = L3_1
    if L0_2 then
      L0_2 = GetLowerBetStepOf
      L1_2 = L23_1
      L0_2 = L0_2(L1_2)
      L23_1 = L0_2
      L0_2 = math
      L0_2 = L0_2.round
      L1_2 = L23_1
      L1_2 = L1_2 / 5
      L0_2 = L0_2(L1_2)
      L0_2 = L0_2 * 5
      L23_1 = L0_2
      L0_2 = L23_1
      L1_2 = L7_1.MinBetValue
      if L0_2 < L1_2 then
        L0_2 = L7_1.MinBetValue
        L23_1 = L0_2
        L0_2 = L23_1
        L1_2 = PLAYER_CHIPS
        if L0_2 > L1_2 then
          L0_2 = PLAYER_CHIPS
          L23_1 = L0_2
        end
        L0_2 = PlaySound
        L1_2 = "DLC_VW_ERROR_MAX"
        L2_2 = "dlc_vw_table_games_frontend_sounds"
        L0_2(L1_2, L2_2)
      else
        L0_2 = PlaySound
        L1_2 = "DLC_VW_BET_DOWN"
        L2_2 = "dlc_vw_table_games_frontend_sounds"
        L0_2(L1_2, L2_2)
      end
      L0_2 = L17_1
      if nil ~= L0_2 then
        L0_2 = L17_1.setText
        L1_2 = tostring
        L2_2 = L23_1
        L1_2, L2_2, L3_2, L4_2, L5_2 = L1_2(L2_2)
        L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
      end
    end
  end
  L0_2 = IsDisabledControlJustPressed
  L1_2 = 0
  L2_2 = 207
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 then
    L0_2 = L6_1.changeCameraMode
    L1_2 = false
    L2_2 = true
    L0_2(L1_2, L2_2)
  end
  L0_2 = IsDisabledControlJustPressed
  L1_2 = 0
  L2_2 = 208
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 then
    L0_2 = L6_1.changeCameraMode
    L1_2 = true
    L2_2 = true
    L0_2(L1_2, L2_2)
  end
  L0_2 = IsControlPressed
  L1_2 = 0
  L2_2 = GameplayKeys
  L2_2 = L2_2.RouletteHistoryKey
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 then
    L0_2 = L19_1
    if 0 == L0_2 then
      L0_2 = BeginTextCommandDisplayHelp
      L1_2 = "STRING"
      L0_2(L1_2)
      L0_2 = L6_1.getHistoryString
      L0_2 = L0_2()
      if "" ~= L0_2 then
        L0_2 = AddTextComponentSubstringPlayerName
        L1_2 = Translation
        L1_2 = L1_2.Get
        L2_2 = "ROULETTE_HISTORY"
        L1_2 = L1_2(L2_2)
        L2_2 = ": "
        L3_2 = L6_1.getHistoryString
        L3_2 = L3_2()
        L1_2 = L1_2 .. L2_2 .. L3_2
        L0_2(L1_2)
      else
        L0_2 = AddTextComponentSubstringPlayerName
        L1_2 = Translation
        L1_2 = L1_2.Get
        L2_2 = "ROULETTE_HISTORY_IS_EMPTY"
        L1_2, L2_2, L3_2, L4_2, L5_2 = L1_2(L2_2)
        L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
      end
      L0_2 = EndTextCommandDisplayHelp
      L1_2 = 0
      L2_2 = false
      L3_2 = false
      L4_2 = -1
      L0_2(L1_2, L2_2, L3_2, L4_2)
    end
  end
  L0_2 = IsGamepadControl
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = GAME_TIMER
    L1_2 = L13_1
    L0_2 = L0_2 - L1_2
    L0_2 = L0_2 / 15
    L12_1 = L0_2
    L0_2 = GetSmartControlNormal
    L1_2 = 30
    L0_2 = L0_2(L1_2)
    L1_2 = GetSmartControlNormal
    L2_2 = 31
    L1_2 = L1_2(L2_2)
    L2_2 = L10_1
    L3_2 = L0_2 * 0.0075
    L4_2 = L12_1
    L3_2 = L3_2 * L4_2
    L2_2 = L2_2 + L3_2
    L10_1 = L2_2
    L2_2 = L11_1
    L3_2 = L1_2 * 0.0075
    L4_2 = L12_1
    L3_2 = L3_2 * L4_2
    L2_2 = L2_2 + L3_2
    L11_1 = L2_2
    L2_2 = Clamp
    L3_2 = L10_1
    L4_2 = 0.0
    L5_2 = 1.0
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L10_1 = L2_2
    L2_2 = Clamp
    L3_2 = L11_1
    L4_2 = 0.0
    L5_2 = 1.0
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L11_1 = L2_2
    L2_2 = SetCursorLocation
    L3_2 = L10_1
    L4_2 = L11_1
    L2_2(L3_2, L4_2)
    L2_2 = GAME_TIMER
    L13_1 = L2_2
  end
  L0_2 = IsDisabledControlJustPressed
  L1_2 = 0
  L2_2 = GameplayKeys
  L2_2 = L2_2.TableGamesMaxBet
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 then
    L0_2 = L19_1
    if 0 == L0_2 then
      L0_2 = L3_1
      if L0_2 then
        L0_2 = L23_1
        L1_2 = L7_1.MaxBetValue
        if L0_2 == L1_2 then
          L0_2 = L7_1.MinBetValue
          if L0_2 then
            goto lbl_300
          end
        end
        L0_2 = L7_1.MaxBetValue
        ::lbl_300::
        L23_1 = L0_2
        L0_2 = L17_1.setText
        L1_2 = tostring
        L2_2 = L23_1
        L1_2, L2_2, L3_2, L4_2, L5_2 = L1_2(L2_2)
        L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
        L0_2 = PlaySound
        L1_2 = "DLC_VW_BET_MAX"
        L2_2 = "dlc_vw_table_games_frontend_sounds"
        L0_2(L1_2, L2_2)
      end
    end
  end
  L0_2 = IsControlJustPressed
  L1_2 = 0
  L2_2 = 210
  L0_2 = L0_2(L1_2, L2_2)
  if not L0_2 then
    L0_2 = IsDisabledControlJustPressed
    L1_2 = 0
    L2_2 = 210
    L0_2 = L0_2(L1_2, L2_2)
    if not L0_2 then
      goto lbl_341
    end
  end
  L0_2 = L19_1
  if 0 == L0_2 then
    L0_2 = Config
    L0_2 = L0_2.EnableGuidebookIntegration
    if L0_2 then
      L0_2 = TriggerServerEvent
      L1_2 = "GuideBook:ShowItToMe"
      L2_2 = "casinoroulette"
      L0_2(L1_2, L2_2)
    else
      L0_2 = L29_1
      L1_2 = 1
      L0_2(L1_2)
      L0_2 = PlaySound
      L1_2 = "DLC_VW_RULES"
      L2_2 = "dlc_vw_table_games_frontend_sounds"
      L0_2(L1_2, L2_2)
    end
  end
  ::lbl_341::
  L0_2 = L19_1
  if 0 ~= L0_2 then
    L0_2 = IsDisabledControlJustPressed
    L1_2 = 0
    L2_2 = 189
    L0_2 = L0_2(L1_2, L2_2)
    if L0_2 then
      L0_2 = L19_1
      if L0_2 > 1 then
        L0_2 = L29_1
        L1_2 = L19_1
        L1_2 = L1_2 - 1
        L0_2(L1_2)
        L0_2 = PlaySound
        L1_2 = "DLC_VW_BET_UP"
        L2_2 = "dlc_vw_table_games_frontend_sounds"
        L0_2(L1_2, L2_2)
      end
    end
    L0_2 = IsDisabledControlJustPressed
    L1_2 = 0
    L2_2 = 190
    L0_2 = L0_2(L1_2, L2_2)
    if L0_2 then
      L0_2 = L19_1
      if L0_2 < 3 then
        L0_2 = L29_1
        L1_2 = L19_1
        L1_2 = L1_2 + 1
        L0_2(L1_2)
        L0_2 = PlaySound
        L1_2 = "DLC_VW_BET_UP"
        L2_2 = "dlc_vw_table_games_frontend_sounds"
        L0_2(L1_2, L2_2)
      end
    end
  end
end
function L42_1()
  local L0_2, L1_2, L2_2
  L0_2 = DebugStart
  L1_2 = "StartSittingThread"
  L0_2(L1_2)
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3
    L0_3 = nil
    while true do
      L1_3 = IN_CASINO
      if not L1_3 then
        break
      end
      L1_3 = L1_1
      if not L1_3 then
        break
      end
      L1_3 = L6_1
      if nil == L1_3 then
        break
      end
      L1_3 = IsGamepadControl
      L1_3 = L1_3()
      if L1_3 ~= L0_3 then
        L1_3 = L28_1
        L1_3()
        L1_3 = IsGamepadControl
        L1_3 = L1_3()
        L0_3 = L1_3
      end
      L1_3 = L19_1
      if L1_3 > 0 then
        L1_3 = GAME_INFO_PANEL
        if nil == L1_3 then
          L1_3 = 0
          L19_1 = L1_3
          L1_3 = RageUI
          L1_3.WaitForClose = false
          L1_3 = L28_1
          L1_3()
        end
      end
      L1_3 = L41_1
      L1_3()
      L1_3 = Wait
      L2_3 = 0
      L1_3(L2_3)
    end
  end
  L2_2 = "sitting/playing thread poker"
  L0_2(L1_2, L2_2)
end
function L43_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = DebugStart
  L2_2 = "StartAiming"
  L1_2(L2_2)
  L1_2 = L3_1
  if L1_2 then
    return
  end
  L1_2 = GAME_TIMER
  L13_1 = L1_2
  L1_2 = true
  L3_1 = L1_2
  L4_1 = A0_2
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3
    L0_3 = GetIsWidescreen
    L0_3 = L0_3()
    if L0_3 then
      L0_3 = 30.0
      if L0_3 then
        goto lbl_9
      end
    end
    L0_3 = 26.0
    ::lbl_9::
    L1_3 = -1
    while true do
      L2_3 = IN_CASINO
      if not L2_3 then
        break
      end
      L2_3 = L3_1
      if not L2_3 then
        break
      end
      L2_3 = L18_1
      if 1 ~= L2_3 then
        break
      end
      L2_3 = L6_1
      if nil ~= L2_3 then
        L2_3 = L6_1.cameraMode
        if 4 == L2_3 then
          L2_3 = -1
          L3_3 = GetNuiCursorPosition
          L3_3, L4_3 = L3_3()
          L5_3 = GetActiveScreenResolution
          L5_3, L6_3 = L5_3()
          L7_3 = 1
          L8_3 = A0_2.hoverPositions
          L8_3 = #L8_3
          L9_3 = 1
          for L10_3 = L7_3, L8_3, L9_3 do
            L11_3 = A0_2.hoverPositions
            L11_3 = L11_3[L10_3]
            L12_3 = World3dToScreen2d
            L13_3 = L11_3.hoverPos
            L13_3 = L13_3.x
            L14_3 = L11_3.hoverPos
            L14_3 = L14_3.y
            L15_3 = L11_3.hoverPos
            L15_3 = L15_3.z
            L12_3, L13_3, L14_3 = L12_3(L13_3, L14_3, L15_3)
            L15_3 = math
            L15_3 = L15_3.sqrt
            L16_3 = math
            L16_3 = L16_3.pow
            L17_3 = L13_3 * L5_3
            L17_3 = L17_3 - L3_3
            L18_3 = 2
            L16_3 = L16_3(L17_3, L18_3)
            L17_3 = math
            L17_3 = L17_3.pow
            L18_3 = L14_3 * L6_3
            L18_3 = L18_3 - L4_3
            L19_3 = 2
            L17_3 = L17_3(L18_3, L19_3)
            L16_3 = L16_3 + L17_3
            L15_3 = L15_3(L16_3)
            if L0_3 > L15_3 then
              L2_3 = L10_3
            end
          end
          L7_3 = A0_2.hoverAt
          L8_3 = L2_3
          L7_3(L8_3)
          L7_3 = L30_1
          L7_3 = L7_3[L2_3]
          if nil == L7_3 then
            L7_3 = 0
          end
          L8_3 = L16_1
          if nil ~= L8_3 then
            L8_3 = L16_1.setText
            L9_3 = tostring
            L10_3 = L7_3
            L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3 = L9_3(L10_3)
            L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
          end
          L8_3 = L7_3 > 0
          L20_1 = L8_3
          if L1_3 ~= L2_3 then
            L1_3 = L2_3
            L8_3 = L28_1
            L8_3()
          end
          if -1 ~= L2_3 then
            L8_3 = IsDisabledControlJustPressed
            L9_3 = 0
            L10_3 = 24
            L8_3 = L8_3(L9_3, L10_3)
            if not L8_3 then
              L8_3 = IsDisabledControlJustPressed
              L9_3 = 0
              L10_3 = 201
              L8_3 = L8_3(L9_3, L10_3)
              if not L8_3 then
                goto lbl_114
              end
            end
            L8_3 = L40_1
            L9_3 = L2_3
            L8_3(L9_3)
            goto lbl_129
            ::lbl_114::
            L8_3 = IsDisabledControlJustPressed
            L9_3 = 0
            L10_3 = 25
            L8_3 = L8_3(L9_3, L10_3)
            if not L8_3 then
              L8_3 = IsDisabledControlJustPressed
              L9_3 = 0
              L10_3 = 203
              L8_3 = L8_3(L9_3, L10_3)
              if not L8_3 then
                goto lbl_129
              end
            end
            L8_3 = L39_1
            L9_3 = L2_3
            L8_3(L9_3)
          end
        end
      end
      ::lbl_129::
      L2_3 = Wait
      L3_3 = 0
      L2_3(L3_3)
      L2_3 = SetMouseCursorActiveThisFrame
      L2_3()
    end
    L2_3 = false
    L3_1 = L2_3
    L2_3 = L28_1
    L2_3()
    L2_3 = A0_2.clearHoveredObjects
    L2_3()
  end
  L3_2 = "Aiming thread roulette"
  L1_2(L2_2, L3_2)
end
function L44_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2
  L6_2 = DebugStart
  L7_2 = "CreateRouletteTable"
  L6_2(L7_2)
  L6_2 = {}
  L6_2.ambientPeds = nil
  L6_2.lastHoverIndex = -1
  L7_2 = {}
  L6_2.hoverPositions = L7_2
  L7_2 = {}
  L6_2.betValues = L7_2
  L7_2 = {}
  L6_2.chairPositions = L7_2
  L7_2 = {}
  L6_2.othersBet = L7_2
  L6_2.keepTableObject = false
  L6_2.loopSoundIndex = -1
  L6_2.magicNumber = A5_2
  L6_2.pedModel = "S_F_Y_Casino_01"
  L6_2.pedVoice = "S_M_Y_Casino_01_WHITE_01"
  L6_2.pedAnim = "anim_casino_b@amb@casino@games@roulette@dealer"
  L7_2 = {}
  L6_2.hoverObjects = L7_2
  L7_2 = {}
  L6_2.chipsObjects = L7_2
  L6_2.ballOffset = nil
  L6_2.ballHeading = 0
  L6_2.rouletteCamera = nil
  L6_2.ped = nil
  L7_2 = {}
  L6_2.syncedState = L7_2
  L7_2 = L6_2.syncedState
  L8_2 = {}
  L7_2.history = L8_2
  L7_2 = L6_2.syncedState
  L8_2 = {}
  L7_2.chairs = L8_2
  L7_2 = DoesEntityExist
  L8_2 = A0_2
  L7_2 = L7_2(L8_2)
  if L7_2 then
    L6_2.tableObject = A0_2
    L7_2 = GetEntityCoords
    L8_2 = A0_2
    L7_2 = L7_2(L8_2)
    A1_2 = L7_2
    L7_2 = GetEntityRotation
    L8_2 = A0_2
    L7_2 = L7_2(L8_2)
    A2_2 = L7_2
    L7_2 = GetEntityHeading
    L8_2 = A0_2
    L7_2 = L7_2(L8_2)
    A3_2 = L7_2
    L6_2.keepTableObject = true
  else
    L7_2 = CreateObject
    L8_2 = A0_2
    L9_2 = A1_2
    L10_2 = false
    L11_2 = false
    L12_2 = false
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
    L6_2.tableObject = L7_2
  end
  L7_2 = L6_2.tableObject
  L6_2.id = L7_2
  L6_2.color = A4_2
  L6_2.coords = A1_2
  L6_2.heading = A3_2
  L7_2 = SetObjectTextureVariation
  L8_2 = L6_2.tableObject
  L9_2 = A4_2
  L7_2(L8_2, L9_2)
  L7_2 = GetWorldPositionOfEntityBone
  L8_2 = L6_2.tableObject
  L9_2 = 1
  L7_2 = L7_2(L8_2, L9_2)
  L6_2.ballOffset = L7_2
  L7_2 = GetEntityHeading
  L8_2 = L6_2.tableObject
  L7_2 = L7_2(L8_2)
  L7_2 = L7_2 + 0.0
  L6_2.ballHeading = L7_2
  L7_2 = CreateObject
  L8_2 = GetHashKey
  L9_2 = "vw_prop_roulette_ball"
  L8_2 = L8_2(L9_2)
  L9_2 = L6_2.ballOffset
  L10_2 = false
  L11_2 = false
  L12_2 = false
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  L6_2.ballObject = L7_2
  L7_2 = SetEntityHeading
  L8_2 = L6_2.ballObject
  L9_2 = L6_2.ballHeading
  L7_2(L8_2, L9_2)
  L7_2 = SetEntityVisible
  L8_2 = L6_2.ballObject
  L9_2 = false
  L7_2(L8_2, L9_2)
  L7_2 = vector3
  L8_2 = 270.0
  L9_2 = -90.0
  L10_2 = A3_2 + 270.0
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L8_2 = CreateCamWithParams
  L9_2 = "DEFAULT_SCRIPTED_CAMERA"
  L10_2 = A1_2.x
  L11_2 = A1_2.y
  L12_2 = A1_2.z
  L12_2 = L12_2 + 2.6
  L13_2 = L7_2
  L14_2 = 50.0
  L15_2 = true
  L16_2 = 2
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L6_2.rouletteCamera = L8_2
  L8_2 = SetCamActive
  L9_2 = L6_2.rouletteCamera
  L10_2 = false
  L8_2(L9_2, L10_2)
  L8_2 = math
  L8_2 = L8_2.fmod
  L9_2 = L6_2.magicNumber
  L10_2 = 2
  L8_2 = L8_2(L9_2, L10_2)
  if 0 == L8_2 then
    L6_2.pedModel = "S_F_Y_Casino_01"
    L8_2 = RouletteFemaleVoices
    L9_2 = Repeat
    L10_2 = L6_2.magicNumber
    L11_2 = 3
    L9_2 = L9_2(L10_2, L11_2)
    L9_2 = L9_2 + 1
    L8_2 = L8_2[L9_2]
    L6_2.pedVoice = L8_2
    L6_2.pedAnim = "anim_casino_b@amb@casino@games@roulette@dealer_female"
  else
    L6_2.pedModel = "S_M_Y_Casino_01"
    L8_2 = RouletteMaleVoices
    L9_2 = Repeat
    L10_2 = L6_2.magicNumber
    L11_2 = 3
    L9_2 = L9_2(L10_2, L11_2)
    L9_2 = L9_2 + 1
    L8_2 = L8_2[L9_2]
    L6_2.pedVoice = L8_2
    L6_2.pedAnim = "anim_casino_b@amb@casino@games@roulette@dealer"
  end
  function L8_2()
    local L0_3, L1_3
    L0_3 = RequestAnimDictAndWait
    L1_3 = L6_2.pedAnim
    L0_3(L1_3)
  end
  L6_2.pedEnsureDictionary = L8_2
  L8_2 = RequestModelAndWait
  L9_2 = GetHashKey
  L10_2 = L6_2.pedModel
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2 = L9_2(L10_2)
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2)
  L8_2 = GetObjectOffsetFromCoords
  L9_2 = A1_2.x
  L10_2 = A1_2.y
  L11_2 = A1_2.z
  L12_2 = A3_2
  L13_2 = 0.001
  L14_2 = 0.7
  L15_2 = 1.0
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L9_2 = CreatePed
  L10_2 = 2
  L11_2 = GetHashKey
  L12_2 = L6_2.pedModel
  L11_2 = L11_2(L12_2)
  L12_2 = L8_2
  L13_2 = A3_2 + 180.0
  L14_2 = false
  L15_2 = false
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L6_2.ped = L9_2
  L9_2 = SetCroupierSkin
  L10_2 = L6_2.ped
  L11_2 = L6_2.magicNumber
  L9_2(L10_2, L11_2)
  L9_2 = SetPedBrave
  L10_2 = L6_2.ped
  L9_2(L10_2)
  L9_2 = L6_2.pedEnsureDictionary
  L9_2()
  L9_2 = TaskPlayAnim
  L10_2 = L6_2.ped
  L11_2 = L6_2.pedAnim
  L12_2 = "idle"
  L13_2 = 3.0
  L14_2 = 3.0
  L15_2 = -1
  L16_2 = 1
  L17_2 = 0
  L18_2 = true
  L19_2 = true
  L20_2 = true
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L9_2 = 1
  L10_2 = 4
  L11_2 = 1
  for L12_2 = L9_2, L10_2, L11_2 do
    L13_2 = L6_2.syncedState
    L13_2 = L13_2.chairs
    L13_2[L12_2] = -1
  end
  L6_2.cameraMode = 4
  function L9_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L2_3 = DoesCamExist
    L3_3 = L6_2.rouletteCamera
    L2_3 = L2_3(L3_3)
    if L2_3 then
      if A0_3 then
        L2_3 = L6_2.cameraMode
        L2_3 = L2_3 + 1
        L6_2.cameraMode = L2_3
        L2_3 = L6_2.cameraMode
        if 6 == L2_3 then
          L6_2.cameraMode = 1
        end
      else
        L2_3 = L6_2.cameraMode
        L2_3 = L2_3 - 1
        L6_2.cameraMode = L2_3
        L2_3 = L6_2.cameraMode
        if 0 == L2_3 then
          L6_2.cameraMode = 5
        end
      end
      L2_3 = L6_2.cameraMode
      if 4 ~= L2_3 then
        L2_3 = L6_2.clearHoveredObjects
        L2_3()
      end
      L2_3 = GetEntityHeading
      L3_3 = L6_2.tableObject
      L2_3 = L2_3(L3_3)
      L3_3 = GetEntityCoords
      L4_3 = L6_2.tableObject
      L3_3 = L3_3(L4_3)
      if A1_3 then
        L4_3 = DoScreenFadeOut
        L5_3 = 200
        L4_3(L5_3)
        L4_3 = Wait
        L5_3 = 200
        L4_3(L5_3)
      end
      L4_3 = L6_2.cameraMode
      if 5 ~= L4_3 then
        L4_3 = L6_2.usePlayingCamera
        L4_3()
      else
        L4_3 = L6_2.disableCameras
        L4_3()
      end
      L4_3 = L6_2.cameraMode
      if 1 == L4_3 then
        L4_3 = GetOffsetFromEntityInWorldCoords
        L5_3 = L6_2.tableObject
        L6_3 = -1.45
        L7_3 = -0.15
        L8_3 = 1.45
        L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3)
        L5_3 = SetCamCoord
        L6_3 = L6_2.rouletteCamera
        L7_3 = L4_3
        L5_3(L6_3, L7_3)
        L5_3 = SetCamRot
        L6_3 = L6_2.rouletteCamera
        L7_3 = -25.0
        L8_3 = 0.0
        L9_3 = L2_3 + 270.0
        L10_3 = 2
        L5_3(L6_3, L7_3, L8_3, L9_3, L10_3)
        L5_3 = SetCamFov
        L6_3 = L6_2.rouletteCamera
        L7_3 = 40.0
        L5_3(L6_3, L7_3)
        L5_3 = ShakeCam
        L6_3 = L6_2.rouletteCamera
        L7_3 = "HAND_SHAKE"
        L8_3 = 0.3
        L5_3(L6_3, L7_3, L8_3)
      else
        L4_3 = L6_2.cameraMode
        if 2 == L4_3 then
          L4_3 = GetOffsetFromEntityInWorldCoords
          L5_3 = L6_2.tableObject
          L6_3 = 1.45
          L7_3 = -0.15
          L8_3 = 2.15
          L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3)
          L5_3 = SetCamCoord
          L6_3 = L6_2.rouletteCamera
          L7_3 = L4_3
          L5_3(L6_3, L7_3)
          L5_3 = SetCamRot
          L6_3 = L6_2.rouletteCamera
          L7_3 = -58.0
          L8_3 = 0.0
          L9_3 = L2_3 + 90.0
          L10_3 = 2
          L5_3(L6_3, L7_3, L8_3, L9_3, L10_3)
          L5_3 = ShakeCam
          L6_3 = L6_2.rouletteCamera
          L7_3 = "HAND_SHAKE"
          L8_3 = 0.3
          L5_3(L6_3, L7_3, L8_3)
          L5_3 = SetCamFov
          L6_3 = L6_2.rouletteCamera
          L7_3 = 80.0
          L5_3(L6_3, L7_3)
        else
          L4_3 = L6_2.cameraMode
          if 3 == L4_3 then
            L4_3 = GetWorldPositionOfEntityBone
            L5_3 = L6_2.tableObject
            L6_3 = GetEntityBoneIndexByName
            L7_3 = L6_2.tableObject
            L8_3 = "Roulette_Wheel"
            L6_3, L7_3, L8_3, L9_3, L10_3, L11_3 = L6_3(L7_3, L8_3)
            L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
            L5_3 = vector3
            L6_3 = 270.0
            L7_3 = -90.0
            L8_3 = L2_3 + 270.0
            L5_3 = L5_3(L6_3, L7_3, L8_3)
            L6_3 = SetCamCoord
            L7_3 = L6_2.rouletteCamera
            L8_3 = vector3
            L9_3 = 0.0
            L10_3 = 0.0
            L11_3 = 0.5
            L8_3 = L8_3(L9_3, L10_3, L11_3)
            L8_3 = L4_3 + L8_3
            L6_3(L7_3, L8_3)
            L6_3 = SetCamRot
            L7_3 = L6_2.rouletteCamera
            L8_3 = L5_3
            L9_3 = 2
            L6_3(L7_3, L8_3, L9_3)
            L6_3 = StopCamShaking
            L7_3 = L6_2.rouletteCamera
            L8_3 = false
            L6_3(L7_3, L8_3)
            L6_3 = SetCamFov
            L7_3 = L6_2.rouletteCamera
            L8_3 = 80.0
            L6_3(L7_3, L8_3)
          else
            L4_3 = L6_2.cameraMode
            if 4 == L4_3 then
              L4_3 = vector3
              L5_3 = 270.0
              L6_3 = -90.0
              L7_3 = L2_3 + 270.0
              L4_3 = L4_3(L5_3, L6_3, L7_3)
              L5_3 = SetCamCoord
              L6_3 = L6_2.rouletteCamera
              L7_3 = vector3
              L8_3 = 0.0
              L9_3 = 0.0
              L10_3 = 2.6
              L7_3 = L7_3(L8_3, L9_3, L10_3)
              L7_3 = L3_3 + L7_3
              L5_3(L6_3, L7_3)
              L5_3 = SetCamRot
              L6_3 = L6_2.rouletteCamera
              L7_3 = L4_3
              L8_3 = 2
              L5_3(L6_3, L7_3, L8_3)
              L5_3 = SetCamFov
              L6_3 = L6_2.rouletteCamera
              L7_3 = 50.0
              L5_3(L6_3, L7_3)
              L5_3 = StopCamShaking
              L6_3 = L6_2.rouletteCamera
              L7_3 = false
              L5_3(L6_3, L7_3)
            end
          end
        end
      end
      if A1_3 then
        L4_3 = DoScreenFadeIn
        L5_3 = 200
        L4_3(L5_3)
      end
    end
  end
  L6_2.changeCameraMode = L9_2
  L9_2 = {}
  L6_2.dirtObjects = L9_2
  function L9_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = L6_2.dirtObjects
    if not L0_3 then
      return
    end
    L0_3 = pairs
    L1_3 = L6_2.dirtObjects
    L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
    for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
      L6_3 = Cleaner_RemoveDirt
      L7_3 = L5_3.id
      L6_3(L7_3)
    end
    L0_3 = {}
    L6_2.dirtObjects = L0_3
  end
  L6_2.cleanDirt = L9_2
  function L9_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = Config
    L2_3 = L2_3.Jobs
    if L2_3 then
      L2_3 = Config
      L2_3 = L2_3.Jobs
      L2_3 = L2_3.Cleaner
      L2_3 = L2_3.Enabled
      if L2_3 then
        goto lbl_12
      end
    end
    do return end
    ::lbl_12::
    L2_3 = 0.15
    if A0_3 < L2_3 then
      A0_3 = 0
    end
    if 0 == A0_3 and 0 == A1_3 then
      L2_3 = L6_2.cleanDirt
      L2_3()
      return
    end
    if not A1_3 then
      A1_3 = 0
    end
    L2_3 = CreateThread
    function L3_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4, L15_4, L16_4, L17_4, L18_4, L19_4, L20_4
      L0_4 = L6_2.dirtObjects
      L0_4 = L0_4[1]
      L1_4 = A0_3
      if L1_4 > 0.0 then
        if L0_4 then
          L1_4 = L0_4.destroyed
          if not L1_4 then
            goto lbl_47
          end
        end
        L1_4 = GetObjectOffsetFromCoords
        L2_4 = L6_2.coords
        L3_4 = L6_2.heading
        L4_4 = 0.0
        L5_4 = 0.0987
        L6_4 = 0.89261
        L1_4 = L1_4(L2_4, L3_4, L4_4, L5_4, L6_4)
        L2_4 = Cleaner_AddNearbyDirt
        L3_4 = "rl_"
        L4_4 = GetGameTimer
        L4_4 = L4_4()
        L5_4 = "_0"
        L3_4 = L3_4 .. L4_4 .. L5_4
        L4_4 = "casino_dirt_plane_2"
        L5_4 = L1_4
        L6_4 = vector3
        L7_4 = 0.0
        L8_4 = 0.0
        L9_4 = L6_2.heading
        L9_4 = L9_4 + 180.0
        L6_4 = L6_4(L7_4, L8_4, L9_4)
        L7_4 = 10.0
        L8_4 = 255
        L9_4 = 2
        L2_4 = L2_4(L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4)
        L0_4 = L2_4
        L2_4 = L6_2
        L0_4.forTable = L2_4
        L0_4.tableGame = "roulette"
        L0_4.isPlane = true
        L2_4 = table
        L2_4 = L2_4.insert
        L3_4 = L6_2.dirtObjects
        L4_4 = L0_4
        L2_4(L3_4, L4_4)
        ::lbl_47::
        L1_4 = L0_4.o
        if L1_4 then
          L1_4 = SetEntityAlpha
          L2_4 = L0_4.o
          L3_4 = math
          L3_4 = L3_4.ceil
          L4_4 = A0_3
          L4_4 = L4_4 * 255.0
          L3_4 = L3_4(L4_4)
          L4_4 = false
          L1_4(L2_4, L3_4, L4_4)
        end
        L1_4 = math
        L1_4 = L1_4.ceil
        L2_4 = A0_3
        L2_4 = L2_4 * 255.0
        L1_4 = L1_4(L2_4)
        L0_4.alpha = L1_4
      elseif L0_4 then
        L1_4 = L0_4.destroyed
        if not L1_4 then
          L1_4 = Cleaner_RemoveDirt
          L2_4 = L0_4.id
          L1_4(L2_4)
          L1_4 = L6_2.dirtObjects
          L1_4[0] = nil
        end
      end
      L1_4 = L6_2.dirtObjects
      L1_4 = #L1_4
      L1_4 = L1_4 - 1
      L2_4 = A1_3
      if L2_4 > 0 then
        L2_4 = A1_3
        if L1_4 < L2_4 then
          L2_4 = {}
          L3_4 = 1
          L4_4 = Config
          L4_4 = L4_4.JobConsts
          L4_4 = L4_4.MissionRouletteDirtyOffsets
          L4_4 = #L4_4
          L5_4 = 1
          for L6_4 = L3_4, L4_4, L5_4 do
            L7_4 = 1
            L8_4 = Config
            L8_4 = L8_4.JobConsts
            L8_4 = L8_4.MissionRouletteDirtyOffsets
            L8_4 = L8_4[L6_4]
            L8_4 = L8_4.offsets
            L8_4 = #L8_4
            L9_4 = 1
            for L10_4 = L7_4, L8_4, L9_4 do
              L11_4 = table
              L11_4 = L11_4.insert
              L12_4 = L2_4
              L13_4 = {}
              L14_4 = Config
              L14_4 = L14_4.JobConsts
              L14_4 = L14_4.MissionRouletteDirtyOffsets
              L14_4 = L14_4[L6_4]
              L14_4 = L14_4.model
              L13_4.model = L14_4
              L14_4 = Config
              L14_4 = L14_4.JobConsts
              L14_4 = L14_4.MissionRouletteDirtyOffsets
              L14_4 = L14_4[L6_4]
              L14_4 = L14_4.offsets
              L14_4 = L14_4[L10_4]
              L13_4.offset = L14_4
              L11_4(L12_4, L13_4)
            end
          end
          L3_4 = ShuffleList
          L4_4 = L2_4
          L5_4 = L6_2.magicNumber
          L3_4(L4_4, L5_4)
          L3_4 = L1_4
          L4_4 = 1
          L5_4 = #L2_4
          L6_4 = 1
          for L7_4 = L4_4, L5_4, L6_4 do
            L8_4 = L2_4[L7_4]
            L9_4 = GetObjectOffsetFromCoords
            L10_4 = L6_2.coords
            L11_4 = L6_2.heading
            L12_4 = L8_4.offset
            L12_4 = L12_4.x
            L13_4 = L8_4.offset
            L13_4 = L13_4.y
            L14_4 = L8_4.offset
            L14_4 = L14_4.z
            L9_4 = L9_4(L10_4, L11_4, L12_4, L13_4, L14_4)
            L10_4 = false
            L11_4 = L6_2.dirtObjects
            L11_4 = #L11_4
            if L11_4 > 1 then
              L11_4 = 2
              L12_4 = L6_2.dirtObjects
              L12_4 = #L12_4
              L13_4 = 1
              for L14_4 = L11_4, L12_4, L13_4 do
                L15_4 = L6_2.dirtObjects
                L15_4 = L15_4[L14_4]
                L15_4 = L15_4.destroyed
                if not L15_4 then
                  L15_4 = L6_2.dirtObjects
                  L15_4 = L15_4[L14_4]
                  L15_4 = L15_4.coords
                  L15_4 = L9_4 - L15_4
                  L15_4 = #L15_4
                  L16_4 = 0.1
                  if L15_4 < L16_4 then
                    L10_4 = true
                  end
                end
              end
            end
            if not L10_4 then
              L11_4 = RequestModelAndWait
              L12_4 = L8_4.model
              L11_4(L12_4)
              L11_4 = IN_CASINO
              if not L11_4 then
                return
              end
              L11_4 = GetObjectOffsetFromCoords
              L12_4 = L6_2.coords
              L13_4 = L6_2.heading
              L14_4 = L8_4.offset
              L14_4 = L14_4.x
              L15_4 = L8_4.offset
              L15_4 = L15_4.y
              L16_4 = L8_4.offset
              L16_4 = L16_4.z
              L11_4 = L11_4(L12_4, L13_4, L14_4, L15_4, L16_4)
              L12_4 = "rl_"
              L13_4 = GetGameTimer
              L13_4 = L13_4()
              L14_4 = "_"
              L15_4 = L7_4
              L12_4 = L12_4 .. L13_4 .. L14_4 .. L15_4
              L13_4 = Cleaner_AddNearbyDirt
              L14_4 = L12_4
              L15_4 = L8_4.model
              L16_4 = L11_4
              L17_4 = nil
              L18_4 = 10.0
              L19_4 = 255
              L20_4 = 2
              L13_4 = L13_4(L14_4, L15_4, L16_4, L17_4, L18_4, L19_4, L20_4)
              L14_4 = L6_2
              L13_4.forTable = L14_4
              L13_4.tableGame = "roulette"
              L14_4 = table
              L14_4 = L14_4.insert
              L15_4 = L6_2.dirtObjects
              L16_4 = L13_4
              L14_4(L15_4, L16_4)
              L3_4 = L3_4 + 1
              L14_4 = A1_3
              if L3_4 >= L14_4 then
                break
              end
            end
          end
      end
      else
        L2_4 = A1_3
        if L1_4 > L2_4 then
          L2_4 = L6_2.dirtObjects
          L2_4 = #L2_4
          L3_4 = 2
          L4_4 = -1
          for L5_4 = L2_4, L3_4, L4_4 do
            L6_4 = L6_2.dirtObjects
            L6_4 = L6_4[L5_4]
            L6_4 = L6_4.destroyed
            if not L6_4 then
              L6_4 = Cleaner_RemoveDirt
              L7_4 = L6_2.dirtObjects
              L7_4 = L7_4[L5_4]
              L7_4 = L7_4.id
              L6_4(L7_4)
              L6_4 = table
              L6_4 = L6_4.remove
              L7_4 = L6_2.dirtObjects
              L8_4 = L5_4
              L6_4(L7_4, L8_4)
            end
            L6_4 = L6_2.dirtObjects
            L6_4 = #L6_4
            L6_4 = L6_4 - 1
            L7_4 = A1_3
            if L6_4 <= L7_4 then
              break
            end
          end
        end
      end
    end
    L4_3 = "dirty level roulette"
    L2_3(L3_3, L4_3)
  end
  L6_2.changeDirtLevel = L9_2
  function L9_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L0_3 = L6_2.chairPositions
    L0_3 = #L0_3
    if L0_3 > 0 then
      return
    end
    L0_3 = {}
    L1_3 = 9
    L2_3 = 3
    L3_3 = 5
    L4_3 = 7
    L0_3[1] = L1_3
    L0_3[2] = L2_3
    L0_3[3] = L3_3
    L0_3[4] = L4_3
    L1_3 = pairs
    L2_3 = L0_3
    L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
    for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
      L7_3 = {}
      L8_3 = GetWorldPositionOfEntityBone
      L9_3 = L6_2.tableObject
      L10_3 = L6_3
      L8_3 = L8_3(L9_3, L10_3)
      L9_3 = vector3
      L10_3 = 0.0
      L11_3 = 0.0
      L12_3 = 0.57
      L9_3 = L9_3(L10_3, L11_3, L12_3)
      L8_3 = L8_3 - L9_3
      L7_3.coords = L8_3
      L8_3 = GetWorldRotationOfEntityBone
      L9_3 = L6_2.tableObject
      L10_3 = L6_3
      L8_3 = L8_3(L9_3, L10_3)
      L7_3.rotation = L8_3
      L8_3 = table
      L8_3 = L8_3.insert
      L9_3 = L6_2.chairPositions
      L10_3 = L7_3
      L8_3(L9_3, L10_3)
    end
  end
  L6_2.loadChairData = L9_2
  function L9_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L0_3 = ""
    L1_3 = pairs
    L2_3 = L6_2.syncedState
    L2_3 = L2_3.history
    L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
    for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
      L7_3 = -1
      if L6_3 <= 36 then
        L7_3 = 685 + L6_3
      elseif 37 == L6_3 then
        L7_3 = 723
      elseif 38 == L6_3 then
        L7_3 = 722
      end
      L8_3 = L0_3
      L9_3 = "~BLIP_"
      L10_3 = L7_3
      L11_3 = "~ "
      L8_3 = L8_3 .. L9_3 .. L10_3 .. L11_3
      L0_3 = L8_3
    end
    return L0_3
  end
  L6_2.getHistoryString = L9_2
  function L9_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L1_3 = 9.0
    L2_3 = 1
    L3_3 = nil
    L4_3 = pairs
    L5_3 = L6_2.chairPositions
    L4_3, L5_3, L6_3, L7_3 = L4_3(L5_3)
    for L8_3, L9_3 in L4_3, L5_3, L6_3, L7_3 do
      L10_3 = L9_3.coords
      L10_3 = A0_3 - L10_3
      L10_3 = #L10_3
      if L1_3 > L10_3 then
        L10_3 = L9_3.coords
        L10_3 = A0_3 - L10_3
        L1_3 = #L10_3
        L2_3 = L8_3
        L3_3 = L9_3
      end
    end
    L4_3 = L2_3
    L5_3 = L3_3
    return L4_3, L5_3
  end
  L6_2.getClosestChair = L9_2
  function L9_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = SetCamActive
    L1_3 = L6_2.rouletteCamera
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = RenderScriptCams
    L1_3 = true
    L2_3 = 900
    L3_3 = 900
    L4_3 = true
    L5_3 = false
    L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
  end
  L6_2.usePlayingCamera = L9_2
  function L9_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = SetCamActive
    L1_3 = L6_2.rouletteCamera
    L2_3 = false
    L0_3(L1_3, L2_3)
    L0_3 = RenderScriptCams
    L1_3 = false
    L2_3 = 900
    L3_3 = 900
    L4_3 = true
    L5_3 = false
    L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
  end
  L6_2.disableCameras = L9_2
  function L9_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L1_3 = PlayPedAmbientSpeechWithVoiceNative
    L2_3 = L6_2.ped
    L3_3 = A0_3
    L4_3 = L6_2.pedVoice
    L5_3 = "SPEECH_PARAMS_FORCE_NORMAL"
    L6_3 = 0
    L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
  end
  L6_2.rlPedSay = L9_2
  function L9_2()
    local L0_3, L1_3, L2_3
    L0_3 = CreateThread
    function L1_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4
      L0_4 = IN_CASINO
      if L0_4 then
        L0_4 = L6_2.pedStartSpin
        if L0_4 then
          goto lbl_8
        end
      end
      do return end
      ::lbl_8::
      L0_4 = L6_2.pedEnsureDictionary
      L0_4()
      L0_4 = TaskPlayAnim
      L1_4 = L6_2.ped
      L2_4 = L6_2.pedAnim
      L3_4 = "no_more_bets"
      L4_4 = 3.0
      L5_4 = 3.0
      L6_4 = -1
      L7_4 = 2
      L8_4 = 0
      L9_4 = true
      L10_4 = true
      L11_4 = true
      L0_4(L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4)
      L0_4 = L6_2.rlPedSay
      L1_4 = "MINIGAME_DEALER_CLOSED_BETS"
      L0_4(L1_4)
      L0_4 = GetAnimDuration
      L1_4 = L6_2.pedAnim
      L2_4 = "no_more_bets"
      L0_4 = L0_4(L1_4, L2_4)
      L0_4 = L0_4 * 1000
      L1_4 = Wait
      L2_4 = L0_4
      L1_4(L2_4)
      L1_4 = IN_CASINO
      if L1_4 then
        L1_4 = L6_2.pedStartSpin
        if L1_4 then
          goto lbl_42
        end
      end
      do return end
      ::lbl_42::
      L1_4 = TaskPlayAnim
      L2_4 = L6_2.ped
      L3_4 = L6_2.pedAnim
      L4_4 = "idle"
      L5_4 = 3.0
      L6_4 = 3.0
      L7_4 = -1
      L8_4 = 1
      L9_4 = 0
      L10_4 = true
      L11_4 = true
      L12_4 = true
      L1_4(L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4)
    end
    L2_3 = "ped reaction thread"
    L0_3(L1_3, L2_3)
  end
  L6_2.pedNoMoreBets = L9_2
  function L9_2()
    local L0_3, L1_3, L2_3
    L0_3 = CreateThread
    function L1_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4
      L0_4 = IN_CASINO
      if L0_4 then
        L0_4 = L6_2.pedStartSpin
        if L0_4 then
          goto lbl_8
        end
      end
      do return end
      ::lbl_8::
      L0_4 = L6_2.pedEnsureDictionary
      L0_4()
      L0_4 = GetWorldPositionOfEntityBone
      L1_4 = L6_2.tableObject
      L2_4 = 1
      L0_4 = L0_4(L1_4, L2_4)
      L6_2.ballOffset = L0_4
      L0_4 = GetEntityHeading
      L1_4 = L6_2.tableObject
      L0_4 = L0_4(L1_4)
      L0_4 = L0_4 + 0.0
      L6_2.ballHeading = L0_4
      L0_4 = TaskPlayAnim
      L1_4 = L6_2.ped
      L2_4 = L6_2.pedAnim
      L3_4 = "spin_wheel"
      L4_4 = 2.0
      L5_4 = 2.0
      L6_4 = -1
      L7_4 = 2
      L8_4 = 0.0
      L9_4 = true
      L10_4 = true
      L11_4 = true
      L0_4(L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4)
      L0_4 = GetAnimDuration
      L1_4 = L6_2.pedAnim
      L2_4 = "spin_wheel"
      L0_4 = L0_4(L1_4, L2_4)
      L0_4 = L0_4 * 1000
      L1_4 = CreateThread
      function L2_4()
        local L0_5, L1_5, L2_5, L3_5, L4_5, L5_5, L6_5, L7_5, L8_5, L9_5, L10_5, L11_5
        L0_5 = Wait
        L1_5 = L0_4
        L0_5(L1_5)
        L0_5 = IN_CASINO
        if L0_5 then
          L0_5 = L6_2.pedStartSpin
          if L0_5 then
            goto lbl_11
          end
        end
        do return end
        ::lbl_11::
        L0_5 = TaskPlayAnim
        L1_5 = L6_2.ped
        L2_5 = L6_2.pedAnim
        L3_5 = "idle"
        L4_5 = 3.0
        L5_5 = 3.0
        L6_5 = -1
        L7_5 = 1
        L8_5 = 0
        L9_5 = true
        L10_5 = true
        L11_5 = true
        L0_5(L1_5, L2_5, L3_5, L4_5, L5_5, L6_5, L7_5, L8_5, L9_5, L10_5, L11_5)
      end
      L3_4 = "task play anim for roulette"
      L1_4(L2_4, L3_4)
      L1_4 = Wait
      L2_4 = 300
      L1_4(L2_4)
      L1_4 = IN_CASINO
      if L1_4 then
        L1_4 = L6_2.pedStartSpin
        if L1_4 then
          goto lbl_54
        end
      end
      do return end
      ::lbl_54::
      L1_4 = WaitForEntityAnimToFinish
      L2_4 = L6_2.ped
      L3_4 = L6_2.pedAnim
      L4_4 = "spin_wheel"
      L5_4 = 0.17
      L1_4(L2_4, L3_4, L4_4, L5_4)
      L1_4 = RequestAnimDictAndWait
      L2_4 = L24_1
      L1_4(L2_4)
      L1_4 = PlayEntityAnim
      L2_4 = L6_2.tableObject
      L3_4 = "loop_wheel"
      L4_4 = L24_1
      L5_4 = 1.0
      L6_4 = 1
      L7_4 = 0
      L8_4 = 0
      L9_4 = 0
      L10_4 = 136704
      L1_4(L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4)
      L1_4 = SetEntityVisible
      L2_4 = L6_2.ballObject
      L3_4 = false
      L1_4(L2_4, L3_4)
      L1_4 = SetEntityHeading
      L2_4 = L6_2.ballObject
      L3_4 = L6_2.ballHeading
      L1_4(L2_4, L3_4)
      L1_4 = SetEntityCoordsNoOffset
      L2_4 = L6_2.ballObject
      L3_4 = L6_2.ballOffset
      L4_4 = false
      L5_4 = false
      L6_4 = false
      L1_4(L2_4, L3_4, L4_4, L5_4, L6_4)
      L1_4 = SetEntityRotation
      L2_4 = L6_2.ballObject
      L3_4 = GetEntityRotation
      L4_4 = L6_2.ballObject
      L3_4 = L3_4(L4_4)
      L4_4 = vector3
      L5_4 = 0.0
      L6_4 = 0.0
      L7_4 = 90.0
      L4_4 = L4_4(L5_4, L6_4, L7_4)
      L3_4 = L3_4 + L4_4
      L4_4 = 2
      L5_4 = false
      L1_4(L2_4, L3_4, L4_4, L5_4)
      L1_4 = PlayEntityAnim
      L2_4 = L6_2.ballObject
      L3_4 = "loop_ball"
      L4_4 = L24_1
      L5_4 = 1.0
      L6_4 = 1
      L7_4 = 0
      L8_4 = 0
      L9_4 = 0
      L10_4 = 136704
      L1_4(L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4)
      L1_4 = WaitForEntityAnimToFinish
      L2_4 = L6_2.ped
      L3_4 = L6_2.pedAnim
      L4_4 = "spin_wheel"
      L5_4 = 0.38
      L1_4(L2_4, L3_4, L4_4, L5_4)
      L1_4 = GetSoundId
      L1_4 = L1_4()
      L6_2.loopSoundIndex = L1_4
      L1_4 = PlaySoundFromEntity
      L2_4 = L6_2.loopSoundIndex
      L3_4 = "DLC_VW_ROULETTE_BALL_LOOP"
      L4_4 = L6_2.tableObject
      L5_4 = "dlc_vw_table_games_sounds"
      L6_4 = false
      L7_4 = 0
      L1_4(L2_4, L3_4, L4_4, L5_4, L6_4, L7_4)
      L1_4 = WaitForEntityAnimToFinish
      L2_4 = L6_2.ped
      L3_4 = L6_2.pedAnim
      L4_4 = "spin_wheel"
      L5_4 = 0.42
      L1_4(L2_4, L3_4, L4_4, L5_4)
      L1_4 = SetEntityVisible
      L2_4 = L6_2.ballObject
      L3_4 = true
      L1_4(L2_4, L3_4)
    end
    L2_3 = "spinning animation thread"
    L0_3(L1_3, L2_3)
  end
  L6_2.pedStartSpin = L9_2
  function L9_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = CreateThread
    function L2_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4
      L0_4 = IN_CASINO
      if L0_4 then
        L0_4 = L6_2.pedStartSpin
        if L0_4 then
          goto lbl_8
        end
      end
      do return end
      ::lbl_8::
      L0_4 = GetWorldPositionOfEntityBone
      L1_4 = L6_2.tableObject
      L2_4 = 1
      L0_4 = L0_4(L1_4, L2_4)
      L6_2.ballOffset = L0_4
      L0_4 = GetEntityHeading
      L1_4 = L6_2.tableObject
      L0_4 = L0_4(L1_4)
      L0_4 = L0_4 + 0.0
      L6_2.ballHeading = L0_4
      L0_4 = A0_3
      L1_4 = RouletteAnimationNumbers
      L2_4 = A0_3
      L1_4 = L1_4[L2_4]
      A0_3 = L1_4
      L1_4 = RequestAnimDictAndWait
      L2_4 = L24_1
      L1_4(L2_4)
      L1_4 = WaitForEntityAnimToFinish
      L2_4 = L6_2.ballObject
      L3_4 = L24_1
      L4_4 = "loop_ball"
      L5_4 = 0.98
      L1_4(L2_4, L3_4, L4_4, L5_4)
      L1_4 = SetEntityVisible
      L2_4 = L6_2.ballObject
      L3_4 = true
      L1_4(L2_4, L3_4)
      L1_4 = SetEntityHeading
      L2_4 = L6_2.ballObject
      L3_4 = L6_2.ballHeading
      L1_4(L2_4, L3_4)
      L1_4 = SetEntityCoordsNoOffset
      L2_4 = L6_2.ballObject
      L3_4 = L6_2.ballOffset
      L4_4 = false
      L5_4 = false
      L6_4 = false
      L1_4(L2_4, L3_4, L4_4, L5_4, L6_4)
      L1_4 = SetEntityRotation
      L2_4 = L6_2.ballObject
      L3_4 = GetEntityRotation
      L4_4 = L6_2.ballObject
      L3_4 = L3_4(L4_4)
      L4_4 = vector3
      L5_4 = 0.0
      L6_4 = 0.0
      L7_4 = 90.0
      L4_4 = L4_4(L5_4, L6_4, L7_4)
      L3_4 = L3_4 + L4_4
      L4_4 = 2
      L5_4 = false
      L1_4(L2_4, L3_4, L4_4, L5_4)
      L1_4 = PlayEntityAnim
      L2_4 = L6_2.ballObject
      L3_4 = "exit_"
      L4_4 = A0_3
      L5_4 = "_ball"
      L3_4 = L3_4 .. L4_4 .. L5_4
      L4_4 = L24_1
      L5_4 = 1.0
      L6_4 = 0
      L7_4 = 1
      L8_4 = 0
      L9_4 = 0
      L10_4 = 136704
      L1_4(L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4)
      L1_4 = StopSound
      L2_4 = L6_2.loopSoundIndex
      L1_4(L2_4)
      L1_4 = PlaySound
      L2_4 = "dlc_vw_roulette_exit_"
      L3_4 = A0_3
      L2_4 = L2_4 .. L3_4
      L3_4 = "dlc_vw_table_games_roulette_exit_sounds"
      L4_4 = L6_2.tableObject
      L5_4 = false
      L1_4(L2_4, L3_4, L4_4, L5_4)
      L1_4 = PlayEntityAnim
      L2_4 = L6_2.tableObject
      L3_4 = "exit_"
      L4_4 = A0_3
      L5_4 = "_wheel"
      L3_4 = L3_4 .. L4_4 .. L5_4
      L4_4 = L24_1
      L5_4 = 1.0
      L6_4 = 0
      L7_4 = 1
      L8_4 = 0
      L9_4 = 0
      L10_4 = 136704
      L1_4(L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4)
      L1_4 = Wait
      L2_4 = 300
      L1_4(L2_4)
      L1_4 = IN_CASINO
      if L1_4 then
        L1_4 = L6_2.pedStartSpin
        if L1_4 then
          goto lbl_112
        end
      end
      do return end
      ::lbl_112::
      L1_4 = WaitForEntityAnimToFinish
      L2_4 = L6_2.ballObject
      L3_4 = L24_1
      L4_4 = "exit_"
      L5_4 = A0_3
      L6_4 = "_ball"
      L4_4 = L4_4 .. L5_4 .. L6_4
      L5_4 = 0.7
      L1_4(L2_4, L3_4, L4_4, L5_4)
      L1_4 = L0_4
      if 37 == L1_4 then
        L1_4 = "00"
      elseif 38 == L1_4 then
        L1_4 = "0"
      end
      L2_4 = L6_2.rlPedSay
      if L2_4 then
        L2_4 = L6_2.rlPedSay
        L3_4 = "MINIGAME_ROULETTE_BALL_"
        L4_4 = L1_4
        L3_4 = L3_4 .. L4_4
        L2_4(L3_4)
        L2_4 = L6_1
        L3_4 = L6_2
        if L2_4 == L3_4 then
          L2_4 = L1_1
          if L2_4 then
            L2_4 = L2_1
            if L2_4 then
              L2_4 = L37_1
              L3_4 = L0_4
              L2_4(L3_4)
            end
          end
        end
      end
    end
    L3_3 = "stop spinning thread"
    L1_3(L2_3, L3_3)
  end
  L6_2.pedStopSpin = L9_2
  function L9_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3
    L1_3 = IN_CASINO
    if L1_3 then
      L1_3 = L6_2.pedStartSpin
      if L1_3 then
        goto lbl_8
      end
    end
    do return end
    ::lbl_8::
    L1_3 = {}
    if 1 == A0_3 then
      L2_3 = {}
      L3_3 = 37
      L4_3 = 38
      L5_3 = 1
      L6_3 = 2
      L7_3 = 3
      L8_3 = 4
      L9_3 = 5
      L10_3 = 6
      L11_3 = 7
      L12_3 = 8
      L13_3 = 9
      L14_3 = 10
      L15_3 = 11
      L16_3 = 12
      L17_3 = 41
      L18_3 = 43
      L19_3 = 45
      L20_3 = 51
      L21_3 = 52
      L22_3 = 53
      L23_3 = 54
      L24_3 = 62
      L25_3 = 63
      L26_3 = 64
      L2_3[1] = L3_3
      L2_3[2] = L4_3
      L2_3[3] = L5_3
      L2_3[4] = L6_3
      L2_3[5] = L7_3
      L2_3[6] = L8_3
      L2_3[7] = L9_3
      L2_3[8] = L10_3
      L2_3[9] = L11_3
      L2_3[10] = L12_3
      L2_3[11] = L13_3
      L2_3[12] = L14_3
      L2_3[13] = L15_3
      L2_3[14] = L16_3
      L2_3[15] = L17_3
      L2_3[16] = L18_3
      L2_3[17] = L19_3
      L2_3[18] = L20_3
      L2_3[19] = L21_3
      L2_3[20] = L22_3
      L2_3[21] = L23_3
      L2_3[22] = L24_3
      L2_3[23] = L25_3
      L2_3[24] = L26_3
      L1_3 = L2_3
    elseif 2 == A0_3 then
      L2_3 = {}
      L3_3 = 13
      L4_3 = 14
      L5_3 = 15
      L6_3 = 16
      L7_3 = 17
      L8_3 = 18
      L9_3 = 19
      L10_3 = 20
      L11_3 = 21
      L12_3 = 22
      L13_3 = 23
      L14_3 = 24
      L15_3 = 39
      L16_3 = 40
      L17_3 = 46
      L18_3 = 55
      L19_3 = 56
      L20_3 = 57
      L21_3 = 58
      L22_3 = 65
      L23_3 = 66
      L24_3 = 67
      L25_3 = 68
      L2_3[1] = L3_3
      L2_3[2] = L4_3
      L2_3[3] = L5_3
      L2_3[4] = L6_3
      L2_3[5] = L7_3
      L2_3[6] = L8_3
      L2_3[7] = L9_3
      L2_3[8] = L10_3
      L2_3[9] = L11_3
      L2_3[10] = L12_3
      L2_3[11] = L13_3
      L2_3[12] = L14_3
      L2_3[13] = L15_3
      L2_3[14] = L16_3
      L2_3[15] = L17_3
      L2_3[16] = L18_3
      L2_3[17] = L19_3
      L2_3[18] = L20_3
      L2_3[19] = L21_3
      L2_3[20] = L22_3
      L2_3[21] = L23_3
      L2_3[22] = L24_3
      L2_3[23] = L25_3
      L1_3 = L2_3
    elseif 3 == A0_3 then
      L2_3 = {}
      L3_3 = 25
      L4_3 = 26
      L5_3 = 27
      L6_3 = 28
      L7_3 = 29
      L8_3 = 30
      L9_3 = 31
      L10_3 = 32
      L11_3 = 33
      L12_3 = 34
      L13_3 = 35
      L14_3 = 36
      L15_3 = 42
      L16_3 = 50
      L17_3 = 44
      L18_3 = 47
      L19_3 = 48
      L20_3 = 49
      L21_3 = 59
      L22_3 = 60
      L23_3 = 61
      L24_3 = 69
      L25_3 = 70
      L26_3 = 71
      L27_3 = 72
      L2_3[1] = L3_3
      L2_3[2] = L4_3
      L2_3[3] = L5_3
      L2_3[4] = L6_3
      L2_3[5] = L7_3
      L2_3[6] = L8_3
      L2_3[7] = L9_3
      L2_3[8] = L10_3
      L2_3[9] = L11_3
      L2_3[10] = L12_3
      L2_3[11] = L13_3
      L2_3[12] = L14_3
      L2_3[13] = L15_3
      L2_3[14] = L16_3
      L2_3[15] = L17_3
      L2_3[16] = L18_3
      L2_3[17] = L19_3
      L2_3[18] = L20_3
      L2_3[19] = L21_3
      L2_3[20] = L22_3
      L2_3[21] = L23_3
      L2_3[22] = L24_3
      L2_3[23] = L25_3
      L2_3[24] = L26_3
      L2_3[25] = L27_3
      L1_3 = L2_3
    end
    L2_3 = false
    L3_3 = pairs
    L4_3 = L1_3
    L3_3, L4_3, L5_3, L6_3 = L3_3(L4_3)
    for L7_3, L8_3 in L3_3, L4_3, L5_3, L6_3 do
      L9_3 = L6_2.getChipsCountOnIndex
      L10_3 = L8_3
      L9_3 = L9_3(L10_3)
      if L9_3 > 0 then
        L2_3 = true
        break
      end
    end
    if L2_3 then
      L3_3 = TaskPlayAnim
      L4_3 = L6_2.ped
      L5_3 = L6_2.pedAnim
      L6_3 = "clear_chips_zone"
      L7_3 = A0_3
      L6_3 = L6_3 .. L7_3
      L7_3 = 3.0
      L8_3 = 3.0
      L9_3 = -1
      L10_3 = 0
      L11_3 = 0
      L12_3 = true
      L13_3 = true
      L14_3 = true
      L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
      L3_3 = GetAnimDuration
      L4_3 = L6_2.pedAnim
      L5_3 = "clear_chips_zone"
      L3_3 = L3_3(L4_3, L5_3)
      L3_3 = L3_3 * 1000
      L4_3 = Wait
      L5_3 = L3_3
      L4_3(L5_3)
      L4_3 = IN_CASINO
      if L4_3 then
        L4_3 = L6_2.pedStartSpin
        if L4_3 then
          goto lbl_150
        end
      end
      do return end
      ::lbl_150::
      L4_3 = L6_2.fadeOutChipsOnIndexes
      L5_3 = L1_3
      L4_3(L5_3)
      L4_3 = WaitForEntityAnimToFinish
      L5_3 = L6_2.ped
      L6_3 = L6_2.pedAnim
      L7_3 = "clear_chips_zone"
      L8_3 = A0_3
      L7_3 = L7_3 .. L8_3
      L8_3 = 0.7
      L4_3(L5_3, L6_3, L7_3, L8_3)
    end
    return L2_3
  end
  L6_2.pedCleanTablePart = L9_2
  function L9_2()
    local L0_3, L1_3, L2_3
    L0_3 = CreateThread
    function L1_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4
      L0_4 = IN_CASINO
      if L0_4 then
        L0_4 = L6_2.pedStartSpin
        if L0_4 then
          goto lbl_8
        end
      end
      do return end
      ::lbl_8::
      L0_4 = L6_2.pedEnsureDictionary
      L0_4()
      L0_4 = L6_2.pedCleanTablePart
      if not L0_4 then
        return
      end
      L0_4 = false
      L1_4 = 1
      L2_4 = 3
      L3_4 = 1
      for L4_4 = L1_4, L2_4, L3_4 do
        L5_4 = L6_2.pedCleanTablePart
        L6_4 = L4_4
        L5_4 = L5_4(L6_4)
        if L5_4 then
          L0_4 = true
        end
      end
      if L0_4 then
        L1_4 = TaskPlayAnim
        L2_4 = L6_2.ped
        L3_4 = L6_2.pedAnim
        L4_4 = "idle"
        L5_4 = 3.0
        L6_4 = 3.0
        L7_4 = -1
        L8_4 = 1
        L9_4 = 0
        L10_4 = true
        L11_4 = true
        L12_4 = true
        L1_4(L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4)
      end
      L1_4 = L6_2.rlPedSay
      if not L1_4 then
        return
      end
      L1_4 = L6_2.rlPedSay
      L2_4 = "MINIGAME_DEALER_ANOTHER_GO"
      L1_4(L2_4)
    end
    L2_3 = "ped starts cleaning the table"
    L0_3(L1_3, L2_3)
  end
  L6_2.pedCleanTable = L9_2
  L9_2 = 1
  L10_2 = 0
  L11_2 = 11
  L12_2 = 1
  for L13_2 = L10_2, L11_2, L12_2 do
    L14_2 = 0
    L15_2 = 2
    L16_2 = 1
    for L17_2 = L14_2, L15_2, L16_2 do
      L18_2 = table
      L18_2 = L18_2.insert
      L19_2 = L6_2.hoverPositions
      L20_2 = {}
      L20_2.name = L9_2
      L21_2 = GetOffsetFromEntityInWorldCoords
      L22_2 = L6_2.tableObject
      L23_2 = 0.081 * L13_2
      L23_2 = L23_2 - 0.057
      L24_2 = 0.167 * L17_2
      L24_2 = L24_2 - 0.192
      L25_2 = 0.9448
      L21_2 = L21_2(L22_2, L23_2, L24_2, L25_2)
      L20_2.hoverPos = L21_2
      L20_2.hoverObject = "vw_prop_vw_marker_02a"
      L20_2.hoverNumbers = nil
      L18_2(L19_2, L20_2)
      L9_2 = L9_2 + 1
    end
  end
  L10_2 = table
  L10_2 = L10_2.insert
  L11_2 = L6_2.hoverPositions
  L12_2 = {}
  L12_2.name = "double zero"
  L13_2 = GetOffsetFromEntityInWorldCoords
  L14_2 = L6_2.tableObject
  L15_2 = -0.133
  L16_2 = 0.107
  L17_2 = 0.9448
  L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
  L12_2.hoverPos = L13_2
  L12_2.hoverObject = "vw_prop_vw_marker_01a"
  L12_2.hoverNumbers = nil
  L10_2(L11_2, L12_2)
  L10_2 = table
  L10_2 = L10_2.insert
  L11_2 = L6_2.hoverPositions
  L12_2 = {}
  L12_2.name = "zero"
  L13_2 = GetOffsetFromEntityInWorldCoords
  L14_2 = L6_2.tableObject
  L15_2 = -0.137
  L16_2 = -0.148
  L17_2 = 0.9448
  L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
  L12_2.hoverPos = L13_2
  L12_2.hoverObject = "vw_prop_vw_marker_01a"
  L12_2.hoverNumbers = nil
  L10_2(L11_2, L12_2)
  L10_2 = table
  L10_2 = L10_2.insert
  L11_2 = L6_2.hoverPositions
  L12_2 = {}
  L12_2.name = "red"
  L13_2 = GetOffsetFromEntityInWorldCoords
  L14_2 = L6_2.tableObject
  L15_2 = 0.3
  L16_2 = -0.4
  L17_2 = 0.9448
  L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
  L12_2.hoverPos = L13_2
  L12_2.hoverObject = "vw_prop_vw_marker_02a"
  L13_2 = {}
  L14_2 = 1
  L15_2 = 3
  L16_2 = 5
  L17_2 = 7
  L18_2 = 9
  L19_2 = 12
  L20_2 = 14
  L21_2 = 16
  L22_2 = 18
  L23_2 = 19
  L24_2 = 21
  L25_2 = 23
  L26_2 = 25
  L27_2 = 27
  L28_2 = 30
  L29_2 = 32
  L30_2 = 34
  L31_2 = 36
  L13_2[1] = L14_2
  L13_2[2] = L15_2
  L13_2[3] = L16_2
  L13_2[4] = L17_2
  L13_2[5] = L18_2
  L13_2[6] = L19_2
  L13_2[7] = L20_2
  L13_2[8] = L21_2
  L13_2[9] = L22_2
  L13_2[10] = L23_2
  L13_2[11] = L24_2
  L13_2[12] = L25_2
  L13_2[13] = L26_2
  L13_2[14] = L27_2
  L13_2[15] = L28_2
  L13_2[16] = L29_2
  L13_2[17] = L30_2
  L13_2[18] = L31_2
  L12_2.hoverNumbers = L13_2
  L10_2(L11_2, L12_2)
  L10_2 = table
  L10_2 = L10_2.insert
  L11_2 = L6_2.hoverPositions
  L12_2 = {}
  L12_2.name = "black"
  L13_2 = GetOffsetFromEntityInWorldCoords
  L14_2 = L6_2.tableObject
  L15_2 = 0.5
  L16_2 = -0.4
  L17_2 = 0.9448
  L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
  L12_2.hoverPos = L13_2
  L12_2.hoverObject = "vw_prop_vw_marker_02a"
  L13_2 = {}
  L14_2 = 2
  L15_2 = 4
  L16_2 = 6
  L17_2 = 8
  L18_2 = 10
  L19_2 = 11
  L20_2 = 13
  L21_2 = 15
  L22_2 = 17
  L23_2 = 20
  L24_2 = 22
  L25_2 = 24
  L26_2 = 26
  L27_2 = 28
  L28_2 = 29
  L29_2 = 31
  L30_2 = 33
  L31_2 = 35
  L13_2[1] = L14_2
  L13_2[2] = L15_2
  L13_2[3] = L16_2
  L13_2[4] = L17_2
  L13_2[5] = L18_2
  L13_2[6] = L19_2
  L13_2[7] = L20_2
  L13_2[8] = L21_2
  L13_2[9] = L22_2
  L13_2[10] = L23_2
  L13_2[11] = L24_2
  L13_2[12] = L25_2
  L13_2[13] = L26_2
  L13_2[14] = L27_2
  L13_2[15] = L28_2
  L13_2[16] = L29_2
  L13_2[17] = L30_2
  L13_2[18] = L31_2
  L12_2.hoverNumbers = L13_2
  L10_2(L11_2, L12_2)
  L10_2 = table
  L10_2 = L10_2.insert
  L11_2 = L6_2.hoverPositions
  L12_2 = {}
  L12_2.name = "even"
  L13_2 = GetOffsetFromEntityInWorldCoords
  L14_2 = L6_2.tableObject
  L15_2 = 0.15
  L16_2 = -0.4
  L17_2 = 0.9448
  L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
  L12_2.hoverPos = L13_2
  L13_2 = {}
  L14_2 = 2
  L15_2 = 4
  L16_2 = 6
  L17_2 = 8
  L18_2 = 10
  L19_2 = 12
  L20_2 = 14
  L21_2 = 16
  L22_2 = 18
  L23_2 = 20
  L24_2 = 22
  L25_2 = 24
  L26_2 = 26
  L27_2 = 28
  L28_2 = 30
  L29_2 = 32
  L30_2 = 34
  L31_2 = 36
  L13_2[1] = L14_2
  L13_2[2] = L15_2
  L13_2[3] = L16_2
  L13_2[4] = L17_2
  L13_2[5] = L18_2
  L13_2[6] = L19_2
  L13_2[7] = L20_2
  L13_2[8] = L21_2
  L13_2[9] = L22_2
  L13_2[10] = L23_2
  L13_2[11] = L24_2
  L13_2[12] = L25_2
  L13_2[13] = L26_2
  L13_2[14] = L27_2
  L13_2[15] = L28_2
  L13_2[16] = L29_2
  L13_2[17] = L30_2
  L13_2[18] = L31_2
  L12_2.hoverNumbers = L13_2
  L10_2(L11_2, L12_2)
  L10_2 = table
  L10_2 = L10_2.insert
  L11_2 = L6_2.hoverPositions
  L12_2 = {}
  L12_2.name = "odd"
  L13_2 = GetOffsetFromEntityInWorldCoords
  L14_2 = L6_2.tableObject
  L15_2 = 0.65
  L16_2 = -0.4
  L17_2 = 0.9448
  L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
  L12_2.hoverPos = L13_2
  L13_2 = {}
  L14_2 = 1
  L15_2 = 3
  L16_2 = 5
  L17_2 = 7
  L18_2 = 9
  L19_2 = 11
  L20_2 = 13
  L21_2 = 15
  L22_2 = 17
  L23_2 = 19
  L24_2 = 21
  L25_2 = 23
  L26_2 = 25
  L27_2 = 27
  L28_2 = 29
  L29_2 = 31
  L30_2 = 33
  L31_2 = 35
  L13_2[1] = L14_2
  L13_2[2] = L15_2
  L13_2[3] = L16_2
  L13_2[4] = L17_2
  L13_2[5] = L18_2
  L13_2[6] = L19_2
  L13_2[7] = L20_2
  L13_2[8] = L21_2
  L13_2[9] = L22_2
  L13_2[10] = L23_2
  L13_2[11] = L24_2
  L13_2[12] = L25_2
  L13_2[13] = L26_2
  L13_2[14] = L27_2
  L13_2[15] = L28_2
  L13_2[16] = L29_2
  L13_2[17] = L30_2
  L13_2[18] = L31_2
  L12_2.hoverNumbers = L13_2
  L10_2(L11_2, L12_2)
  L10_2 = table
  L10_2 = L10_2.insert
  L11_2 = L6_2.hoverPositions
  L12_2 = {}
  L12_2.name = "1to18"
  L13_2 = GetOffsetFromEntityInWorldCoords
  L14_2 = L6_2.tableObject
  L15_2 = -0.02
  L16_2 = -0.4
  L17_2 = 0.9448
  L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
  L12_2.hoverPos = L13_2
  L13_2 = {}
  L14_2 = 1
  L15_2 = 2
  L16_2 = 3
  L17_2 = 4
  L18_2 = 5
  L19_2 = 6
  L20_2 = 7
  L21_2 = 8
  L22_2 = 9
  L23_2 = 10
  L24_2 = 11
  L25_2 = 12
  L26_2 = 13
  L27_2 = 14
  L28_2 = 15
  L29_2 = 16
  L30_2 = 17
  L31_2 = 18
  L13_2[1] = L14_2
  L13_2[2] = L15_2
  L13_2[3] = L16_2
  L13_2[4] = L17_2
  L13_2[5] = L18_2
  L13_2[6] = L19_2
  L13_2[7] = L20_2
  L13_2[8] = L21_2
  L13_2[9] = L22_2
  L13_2[10] = L23_2
  L13_2[11] = L24_2
  L13_2[12] = L25_2
  L13_2[13] = L26_2
  L13_2[14] = L27_2
  L13_2[15] = L28_2
  L13_2[16] = L29_2
  L13_2[17] = L30_2
  L13_2[18] = L31_2
  L12_2.hoverNumbers = L13_2
  L10_2(L11_2, L12_2)
  L10_2 = table
  L10_2 = L10_2.insert
  L11_2 = L6_2.hoverPositions
  L12_2 = {}
  L12_2.name = "19to36"
  L13_2 = GetOffsetFromEntityInWorldCoords
  L14_2 = L6_2.tableObject
  L15_2 = 0.78
  L16_2 = -0.4
  L17_2 = 0.9448
  L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
  L12_2.hoverPos = L13_2
  L13_2 = {}
  L14_2 = 19
  L15_2 = 20
  L16_2 = 21
  L17_2 = 22
  L18_2 = 23
  L19_2 = 24
  L20_2 = 25
  L21_2 = 26
  L22_2 = 27
  L23_2 = 28
  L24_2 = 29
  L25_2 = 30
  L26_2 = 31
  L27_2 = 32
  L28_2 = 33
  L29_2 = 34
  L30_2 = 35
  L31_2 = 36
  L13_2[1] = L14_2
  L13_2[2] = L15_2
  L13_2[3] = L16_2
  L13_2[4] = L17_2
  L13_2[5] = L18_2
  L13_2[6] = L19_2
  L13_2[7] = L20_2
  L13_2[8] = L21_2
  L13_2[9] = L22_2
  L13_2[10] = L23_2
  L13_2[11] = L24_2
  L13_2[12] = L25_2
  L13_2[13] = L26_2
  L13_2[14] = L27_2
  L13_2[15] = L28_2
  L13_2[16] = L29_2
  L13_2[17] = L30_2
  L13_2[18] = L31_2
  L12_2.hoverNumbers = L13_2
  L10_2(L11_2, L12_2)
  L10_2 = table
  L10_2 = L10_2.insert
  L11_2 = L6_2.hoverPositions
  L12_2 = {}
  L12_2.name = "1/3"
  L13_2 = GetOffsetFromEntityInWorldCoords
  L14_2 = L6_2.tableObject
  L15_2 = 0.05
  L16_2 = -0.3
  L17_2 = 0.9448
  L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
  L12_2.hoverPos = L13_2
  L13_2 = {}
  L14_2 = 1
  L15_2 = 2
  L16_2 = 3
  L17_2 = 4
  L18_2 = 5
  L19_2 = 6
  L20_2 = 7
  L21_2 = 8
  L22_2 = 9
  L23_2 = 10
  L24_2 = 11
  L25_2 = 12
  L13_2[1] = L14_2
  L13_2[2] = L15_2
  L13_2[3] = L16_2
  L13_2[4] = L17_2
  L13_2[5] = L18_2
  L13_2[6] = L19_2
  L13_2[7] = L20_2
  L13_2[8] = L21_2
  L13_2[9] = L22_2
  L13_2[10] = L23_2
  L13_2[11] = L24_2
  L13_2[12] = L25_2
  L12_2.hoverNumbers = L13_2
  L10_2(L11_2, L12_2)
  L10_2 = table
  L10_2 = L10_2.insert
  L11_2 = L6_2.hoverPositions
  L12_2 = {}
  L12_2.name = "2/3"
  L13_2 = GetOffsetFromEntityInWorldCoords
  L14_2 = L6_2.tableObject
  L15_2 = 0.4
  L16_2 = -0.3
  L17_2 = 0.9448
  L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
  L12_2.hoverPos = L13_2
  L13_2 = {}
  L14_2 = 13
  L15_2 = 14
  L16_2 = 15
  L17_2 = 16
  L18_2 = 17
  L19_2 = 18
  L20_2 = 19
  L21_2 = 20
  L22_2 = 21
  L23_2 = 22
  L24_2 = 23
  L25_2 = 24
  L13_2[1] = L14_2
  L13_2[2] = L15_2
  L13_2[3] = L16_2
  L13_2[4] = L17_2
  L13_2[5] = L18_2
  L13_2[6] = L19_2
  L13_2[7] = L20_2
  L13_2[8] = L21_2
  L13_2[9] = L22_2
  L13_2[10] = L23_2
  L13_2[11] = L24_2
  L13_2[12] = L25_2
  L12_2.hoverNumbers = L13_2
  L10_2(L11_2, L12_2)
  L10_2 = table
  L10_2 = L10_2.insert
  L11_2 = L6_2.hoverPositions
  L12_2 = {}
  L12_2.name = "3/3"
  L13_2 = GetOffsetFromEntityInWorldCoords
  L14_2 = L6_2.tableObject
  L15_2 = 0.75
  L16_2 = -0.3
  L17_2 = 0.9448
  L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
  L12_2.hoverPos = L13_2
  L13_2 = {}
  L14_2 = 25
  L15_2 = 26
  L16_2 = 27
  L17_2 = 28
  L18_2 = 29
  L19_2 = 30
  L20_2 = 31
  L21_2 = 32
  L22_2 = 33
  L23_2 = 34
  L24_2 = 35
  L25_2 = 36
  L13_2[1] = L14_2
  L13_2[2] = L15_2
  L13_2[3] = L16_2
  L13_2[4] = L17_2
  L13_2[5] = L18_2
  L13_2[6] = L19_2
  L13_2[7] = L20_2
  L13_2[8] = L21_2
  L13_2[9] = L22_2
  L13_2[10] = L23_2
  L13_2[11] = L24_2
  L13_2[12] = L25_2
  L12_2.hoverNumbers = L13_2
  L10_2(L11_2, L12_2)
  L10_2 = table
  L10_2 = L10_2.insert
  L11_2 = L6_2.hoverPositions
  L12_2 = {}
  L12_2.name = "2to1 #1"
  L13_2 = GetOffsetFromEntityInWorldCoords
  L14_2 = L6_2.tableObject
  L15_2 = 0.91
  L16_2 = -0.15
  L17_2 = 0.9448
  L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
  L12_2.hoverPos = L13_2
  L13_2 = {}
  L14_2 = 1
  L15_2 = 4
  L16_2 = 7
  L17_2 = 10
  L18_2 = 13
  L19_2 = 16
  L20_2 = 19
  L21_2 = 22
  L22_2 = 25
  L23_2 = 28
  L24_2 = 31
  L25_2 = 34
  L13_2[1] = L14_2
  L13_2[2] = L15_2
  L13_2[3] = L16_2
  L13_2[4] = L17_2
  L13_2[5] = L18_2
  L13_2[6] = L19_2
  L13_2[7] = L20_2
  L13_2[8] = L21_2
  L13_2[9] = L22_2
  L13_2[10] = L23_2
  L13_2[11] = L24_2
  L13_2[12] = L25_2
  L12_2.hoverNumbers = L13_2
  L10_2(L11_2, L12_2)
  L10_2 = table
  L10_2 = L10_2.insert
  L11_2 = L6_2.hoverPositions
  L12_2 = {}
  L12_2.name = "2to1 #2"
  L13_2 = GetOffsetFromEntityInWorldCoords
  L14_2 = L6_2.tableObject
  L15_2 = 0.91
  L16_2 = 0.0
  L17_2 = 0.9448
  L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
  L12_2.hoverPos = L13_2
  L13_2 = {}
  L14_2 = 2
  L15_2 = 5
  L16_2 = 8
  L17_2 = 11
  L18_2 = 14
  L19_2 = 17
  L20_2 = 20
  L21_2 = 23
  L22_2 = 26
  L23_2 = 29
  L24_2 = 32
  L25_2 = 35
  L13_2[1] = L14_2
  L13_2[2] = L15_2
  L13_2[3] = L16_2
  L13_2[4] = L17_2
  L13_2[5] = L18_2
  L13_2[6] = L19_2
  L13_2[7] = L20_2
  L13_2[8] = L21_2
  L13_2[9] = L22_2
  L13_2[10] = L23_2
  L13_2[11] = L24_2
  L13_2[12] = L25_2
  L12_2.hoverNumbers = L13_2
  L10_2(L11_2, L12_2)
  L10_2 = table
  L10_2 = L10_2.insert
  L11_2 = L6_2.hoverPositions
  L12_2 = {}
  L12_2.name = "2to1 #3"
  L13_2 = GetOffsetFromEntityInWorldCoords
  L14_2 = L6_2.tableObject
  L15_2 = 0.91
  L16_2 = 0.15
  L17_2 = 0.9448
  L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
  L12_2.hoverPos = L13_2
  L13_2 = {}
  L14_2 = 3
  L15_2 = 6
  L16_2 = 9
  L17_2 = 12
  L18_2 = 15
  L19_2 = 18
  L20_2 = 21
  L21_2 = 24
  L22_2 = 27
  L23_2 = 30
  L24_2 = 33
  L25_2 = 36
  L13_2[1] = L14_2
  L13_2[2] = L15_2
  L13_2[3] = L16_2
  L13_2[4] = L17_2
  L13_2[5] = L18_2
  L13_2[6] = L19_2
  L13_2[7] = L20_2
  L13_2[8] = L21_2
  L13_2[9] = L22_2
  L13_2[10] = L23_2
  L13_2[11] = L24_2
  L13_2[12] = L25_2
  L12_2.hoverNumbers = L13_2
  L10_2(L11_2, L12_2)
  L10_2 = {}
  L11_2 = 2
  L12_2 = 3
  L13_2 = 5
  L14_2 = 6
  L15_2 = 5
  L16_2 = 6
  L17_2 = 9
  L18_2 = 8
  L19_2 = 8
  L20_2 = 9
  L21_2 = 11
  L22_2 = 12
  L23_2 = 11
  L24_2 = 12
  L25_2 = 14
  L26_2 = 15
  L27_2 = 14
  L28_2 = 15
  L29_2 = 18
  L30_2 = 17
  L31_2 = 18
  L32_2 = 17
  L33_2 = 20
  L34_2 = 21
  L35_2 = 20
  L36_2 = 21
  L37_2 = 23
  L38_2 = 24
  L39_2 = 23
  L40_2 = 24
  L41_2 = 26
  L42_2 = 27
  L43_2 = 26
  L44_2 = 27
  L45_2 = 29
  L46_2 = 30
  L47_2 = 29
  L48_2 = 30
  L49_2 = 32
  L50_2 = 33
  L51_2 = 32
  L52_2 = 33
  L53_2 = 35
  L54_2 = 36
  L55_2 = 1
  L56_2 = 2
  L57_2 = 4
  L58_2 = 5
  L59_2 = 4
  L60_2 = 5
  L10_2[1] = L11_2
  L10_2[2] = L12_2
  L10_2[3] = L13_2
  L10_2[4] = L14_2
  L10_2[5] = L15_2
  L10_2[6] = L16_2
  L10_2[7] = L17_2
  L10_2[8] = L18_2
  L10_2[9] = L19_2
  L10_2[10] = L20_2
  L10_2[11] = L21_2
  L10_2[12] = L22_2
  L10_2[13] = L23_2
  L10_2[14] = L24_2
  L10_2[15] = L25_2
  L10_2[16] = L26_2
  L10_2[17] = L27_2
  L10_2[18] = L28_2
  L10_2[19] = L29_2
  L10_2[20] = L30_2
  L10_2[21] = L31_2
  L10_2[22] = L32_2
  L10_2[23] = L33_2
  L10_2[24] = L34_2
  L10_2[25] = L35_2
  L10_2[26] = L36_2
  L10_2[27] = L37_2
  L10_2[28] = L38_2
  L10_2[29] = L39_2
  L10_2[30] = L40_2
  L10_2[31] = L41_2
  L10_2[32] = L42_2
  L10_2[33] = L43_2
  L10_2[34] = L44_2
  L10_2[35] = L45_2
  L10_2[36] = L46_2
  L10_2[37] = L47_2
  L10_2[38] = L48_2
  L10_2[39] = L49_2
  L10_2[40] = L50_2
  L10_2[41] = L51_2
  L10_2[42] = L52_2
  L10_2[43] = L53_2
  L10_2[44] = L54_2
  L10_2[45] = L55_2
  L10_2[46] = L56_2
  L10_2[47] = L57_2
  L10_2[48] = L58_2
  L10_2[49] = L59_2
  L10_2[50] = L60_2
  L11_2 = 8
  L12_2 = 7
  L13_2 = 8
  L14_2 = 7
  L15_2 = 10
  L16_2 = 11
  L17_2 = 10
  L18_2 = 11
  L19_2 = 14
  L20_2 = 13
  L21_2 = 14
  L22_2 = 13
  L23_2 = 17
  L24_2 = 16
  L25_2 = 17
  L26_2 = 16
  L27_2 = 19
  L28_2 = 20
  L29_2 = 19
  L30_2 = 20
  L31_2 = 23
  L32_2 = 22
  L33_2 = 23
  L34_2 = 22
  L35_2 = 25
  L36_2 = 26
  L37_2 = 25
  L38_2 = 26
  L39_2 = 29
  L40_2 = 28
  L41_2 = 29
  L42_2 = 28
  L43_2 = 32
  L44_2 = 31
  L45_2 = 32
  L46_2 = 31
  L47_2 = 34
  L48_2 = 35
  L10_2[51] = L11_2
  L10_2[52] = L12_2
  L10_2[53] = L13_2
  L10_2[54] = L14_2
  L10_2[55] = L15_2
  L10_2[56] = L16_2
  L10_2[57] = L17_2
  L10_2[58] = L18_2
  L10_2[59] = L19_2
  L10_2[60] = L20_2
  L10_2[61] = L21_2
  L10_2[62] = L22_2
  L10_2[63] = L23_2
  L10_2[64] = L24_2
  L10_2[65] = L25_2
  L10_2[66] = L26_2
  L10_2[67] = L27_2
  L10_2[68] = L28_2
  L10_2[69] = L29_2
  L10_2[70] = L30_2
  L10_2[71] = L31_2
  L10_2[72] = L32_2
  L10_2[73] = L33_2
  L10_2[74] = L34_2
  L10_2[75] = L35_2
  L10_2[76] = L36_2
  L10_2[77] = L37_2
  L10_2[78] = L38_2
  L10_2[79] = L39_2
  L10_2[80] = L40_2
  L10_2[81] = L41_2
  L10_2[82] = L42_2
  L10_2[83] = L43_2
  L10_2[84] = L44_2
  L10_2[85] = L45_2
  L10_2[86] = L46_2
  L10_2[87] = L47_2
  L10_2[88] = L48_2
  L11_2 = 0
  L12_2 = 21
  L13_2 = 1
  for L14_2 = L11_2, L12_2, L13_2 do
    if L14_2 <= 10 then
      L15_2 = 0
      if L15_2 then
        goto lbl_823
      end
    end
    L15_2 = 1
    ::lbl_823::
    L16_2 = L14_2
    if L16_2 > 10 then
      L16_2 = L16_2 - 11
    end
    L17_2 = {}
    L18_2 = L14_2 * 4
    L18_2 = L18_2 + 1
    L19_2 = L18_2
    L20_2 = L18_2 + 3
    L21_2 = 1
    for L22_2 = L19_2, L20_2, L21_2 do
      L23_2 = table
      L23_2 = L23_2.insert
      L24_2 = L17_2
      L25_2 = L10_2[L22_2]
      L23_2(L24_2, L25_2)
    end
    L19_2 = table
    L19_2 = L19_2.insert
    L20_2 = L6_2.hoverPositions
    L21_2 = {}
    L22_2 = "4in1 #"
    L23_2 = L14_2
    L22_2 = L22_2 .. L23_2
    L21_2.name = L22_2
    L22_2 = GetOffsetFromEntityInWorldCoords
    L23_2 = L6_2.tableObject
    L24_2 = 0.0825 * L16_2
    L24_2 = -0.015 + L24_2
    L25_2 = -0.18 * L15_2
    L25_2 = 0.065 + L25_2
    L26_2 = 0.9448
    L22_2 = L22_2(L23_2, L24_2, L25_2, L26_2)
    L21_2.hoverPos = L22_2
    L21_2.hoverNumbers = L17_2
    L19_2(L20_2, L21_2)
  end
  function L11_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L1_3 = CreateObject
    L2_3 = GetHashKey
    L3_3 = L6_2.hoverPositions
    L3_3 = L3_3[A0_3]
    L3_3 = L3_3.hoverObject
    L2_3 = L2_3(L3_3)
    L3_3 = L6_2.hoverPositions
    L3_3 = L3_3[A0_3]
    L3_3 = L3_3.hoverPos
    L4_3 = false
    L5_3 = false
    L6_3 = false
    L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
    L2_3 = SetEntityRotation
    L3_3 = L1_3
    L4_3 = GetEntityRotation
    L5_3 = L6_2.tableObject
    L4_3, L5_3, L6_3 = L4_3(L5_3)
    L2_3(L3_3, L4_3, L5_3, L6_3)
    L2_3 = FreezeEntityPosition
    L3_3 = L1_3
    L4_3 = true
    L2_3(L3_3, L4_3)
    return L1_3
  end
  L6_2.createHover = L11_2
  function L11_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = pairs
    L1_3 = L6_2.hoverObjects
    L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
    for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
      L6_3 = ForceDeleteEntity
      L7_3 = L5_3
      L6_3(L7_3)
    end
    L0_3 = {}
    L6_2.hoverObjects = L0_3
  end
  L6_2.clearHoveredObjects = L11_2
  function L11_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L1_3 = L6_2.lastHoverIndex
    if A0_3 == L1_3 then
      return
    end
    L1_3 = PlaySound
    L2_3 = "DLC_VW_BET_HIGHLIGHT"
    L3_3 = "dlc_vw_table_games_frontend_sounds"
    L1_3(L2_3, L3_3)
    L1_3 = L6_2.hoverPositions
    L1_3 = L1_3[A0_3]
    L6_2.lastHoverIndex = A0_3
    L2_3 = L6_2.clearHoveredObjects
    L2_3()
    if nil == L1_3 then
      return
    end
    L2_3 = L1_3.hoverNumbers
    if nil == L2_3 then
      L2_3 = table
      L2_3 = L2_3.insert
      L3_3 = L6_2.hoverObjects
      L4_3 = L6_2.createHover
      L5_3 = A0_3
      L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3 = L4_3(L5_3)
      L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
    else
      L2_3 = pairs
      L3_3 = L1_3.hoverNumbers
      L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
      for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
        L8_3 = table
        L8_3 = L8_3.insert
        L9_3 = L6_2.hoverObjects
        L10_3 = L6_2.createHover
        L11_3 = L7_3
        L10_3, L11_3 = L10_3(L11_3)
        L8_3(L9_3, L10_3, L11_3)
      end
    end
  end
  L6_2.hoverAt = L11_2
  function L11_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3
    L1_3 = IN_CASINO
    if L1_3 then
      L1_3 = L6_2.pedStartSpin
      if L1_3 then
        goto lbl_8
      end
    end
    do return end
    ::lbl_8::
    L1_3 = {}
    L2_3 = pairs
    L3_3 = A0_3
    L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
    for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
      L8_3 = L6_2.chipsObjects
      L8_3 = L8_3[L7_3]
      if nil ~= L8_3 then
        L8_3 = pairs
        L9_3 = L6_2.chipsObjects
        L9_3 = L9_3[L7_3]
        L8_3, L9_3, L10_3, L11_3 = L8_3(L9_3)
        for L12_3, L13_3 in L8_3, L9_3, L10_3, L11_3 do
          L14_3 = table
          L14_3 = L14_3.insert
          L15_3 = L1_3
          L16_3 = L13_3
          L14_3(L15_3, L16_3)
        end
      end
    end
    L2_3 = #L1_3
    if L2_3 > 0 then
      L2_3 = CreateThread
      function L3_3()
        local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4
        L0_4 = 255
        while L0_4 > 0 do
          L1_4 = L1_3
          if L1_4 then
            L1_4 = pairs
            L2_4 = L1_3
            L1_4, L2_4, L3_4, L4_4 = L1_4(L2_4)
            for L5_4, L6_4 in L1_4, L2_4, L3_4, L4_4 do
              L7_4 = SetEntityAlpha
              L8_4 = L6_4
              L9_4 = L0_4
              L7_4(L8_4, L9_4)
            end
          end
          L0_4 = L0_4 - 10
          L1_4 = Wait
          L2_4 = 33
          L1_4(L2_4)
        end
        L1_4 = IN_CASINO
        if L1_4 then
          L1_4 = L6_2.pedStartSpin
          if L1_4 then
            goto lbl_31
          end
        end
        do return end
        ::lbl_31::
        L1_4 = pairs
        L2_4 = A0_3
        L1_4, L2_4, L3_4, L4_4 = L1_4(L2_4)
        for L5_4, L6_4 in L1_4, L2_4, L3_4, L4_4 do
          L7_4 = L6_2.clearChipsOnIndex
          L8_4 = L6_4
          L7_4(L8_4)
        end
      end
      L4_3 = "set entity alpha for chips"
      L2_3(L3_3, L4_3)
    end
  end
  L6_2.fadeOutChipsOnIndexes = L11_2
  function L11_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L1_3 = L6_2.chipsObjects
    if not L1_3 then
      return
    end
    L1_3 = L6_2.chipsObjects
    L1_3 = L1_3[A0_3]
    if nil == L1_3 then
      return
    end
    L1_3 = pairs
    L2_3 = L6_2.chipsObjects
    L2_3 = L2_3[A0_3]
    L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
    for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
      L7_3 = ForceDeleteEntity
      L8_3 = L6_3
      L7_3(L8_3)
    end
    L1_3 = L6_2.chipsObjects
    L1_3[A0_3] = nil
  end
  L6_2.clearChipsOnIndex = L11_2
  function L11_2(A0_3)
    local L1_3
    L1_3 = L6_2.chipsObjects
    L1_3 = L1_3[A0_3]
    if nil == L1_3 then
      L1_3 = 0
      return L1_3
    end
    L1_3 = L6_2.chipsObjects
    L1_3 = L1_3[A0_3]
    L1_3 = #L1_3
    return L1_3
  end
  L6_2.getChipsCountOnIndex = L11_2
  function L11_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3
    L2_3 = L6_2.clearChipsOnIndex
    L3_3 = A0_3
    L2_3(L3_3)
    L2_3 = L38_1
    L3_3 = A1_3
    L2_3 = L2_3(L3_3)
    L3_3 = #L2_3
    if 0 == L3_3 then
      return
    end
    L3_3 = "DLC_VW_CHIP_BET_SML_SMALL"
    L4_3 = 10000
    if A1_3 >= L4_3 then
      L3_3 = "DLC_VW_CHIP_BET_SML_LARGE"
    else
      L4_3 = 5000
      if A1_3 >= L4_3 then
        L3_3 = "DLC_VW_CHIP_BET_SML_MEDIUM"
      end
    end
    L4_3 = PlaySound
    L5_3 = L3_3
    L6_3 = "dlc_vw_table_games_sounds"
    L7_3 = L6_2.ped
    L8_3 = false
    L4_3(L5_3, L6_3, L7_3, L8_3)
    L4_3 = L6_2.chipsObjects
    L5_3 = {}
    L4_3[A0_3] = L5_3
    L4_3 = L6_2.hoverPositions
    L4_3 = L4_3[A0_3]
    L4_3 = L4_3.hoverPos
    L5_3 = RequestModelsAndWait
    L6_3 = L2_3
    L5_3(L6_3)
    L5_3 = IN_CASINO
    if L5_3 then
      L5_3 = L6_2.pedStartSpin
      if L5_3 then
        goto lbl_44
      end
    end
    do return end
    ::lbl_44::
    L5_3 = false
    L6_3 = pairs
    L7_3 = L2_3
    L6_3, L7_3, L8_3, L9_3 = L6_3(L7_3)
    for L10_3, L11_3 in L6_3, L7_3, L8_3, L9_3 do
      L12_3 = CreateObject
      L13_3 = GetHashKey
      L14_3 = L11_3
      L13_3 = L13_3(L14_3)
      L14_3 = L4_3
      L15_3 = false
      L16_3 = false
      L17_3 = false
      L12_3 = L12_3(L13_3, L14_3, L15_3, L16_3, L17_3)
      L13_3 = FreezeEntityPosition
      L14_3 = L12_3
      L15_3 = true
      L13_3(L14_3, L15_3)
      L13_3 = L6_2.chipsObjects
      L13_3 = L13_3[A0_3]
      L13_3 = #L13_3
      if "vw_prop_vw_coin_01a" == L11_3 then
        if L13_3 > 0 and not L5_3 then
          L14_3 = vector3
          L15_3 = 0.0
          L16_3 = 0.0
          L17_3 = 0.01
          L14_3 = L14_3(L15_3, L16_3, L17_3)
          L4_3 = L4_3 - L14_3
          L5_3 = true
        end
        L14_3 = vector3
        L15_3 = 0.001
        L16_3 = 0.0
        L17_3 = 0.003
        L14_3 = L14_3(L15_3, L16_3, L17_3)
        L4_3 = L4_3 + L14_3
      else
        L14_3 = vector3
        L15_3 = 0.001
        L16_3 = 0.0
        L17_3 = 0.0055
        L14_3 = L14_3(L15_3, L16_3, L17_3)
        L4_3 = L4_3 + L14_3
      end
      L14_3 = table
      L14_3 = L14_3.insert
      L15_3 = L6_2.chipsObjects
      L15_3 = L15_3[A0_3]
      L16_3 = L12_3
      L14_3(L15_3, L16_3)
    end
  end
  L6_2.createChipsOnIndex = L11_2
  function L11_2(A0_3, A1_3, A2_3, A3_3, A4_3, A5_3)
    local L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3
    L6_3 = L6_2.pedEnsureDictionary
    L6_3()
    L6_3 = tonumber
    L7_3 = A0_3
    L6_3 = L6_3(L7_3)
    if L6_3 and A0_3 <= 4 then
      L6_3 = L6_2.ambientPeds
      L6_3 = L6_3[A0_3]
      if L6_3 then
        goto lbl_15
      end
    end
    L6_3 = A0_3
    ::lbl_15::
    L7_3 = GetInitialAnimOffsets
    L8_3 = A3_3
    L9_3 = A4_3
    L10_3 = A1_3
    L11_3 = A2_3
    L7_3, L8_3 = L7_3(L8_3, L9_3, L10_3, L11_3)
    L9_3 = IsPedMale
    L10_3 = L6_3
    L9_3 = L9_3(L10_3)
    if L9_3 then
      L9_3 = 0.0
      if L9_3 then
        goto lbl_30
      end
    end
    L9_3 = 0.07
    ::lbl_30::
    L10_3 = vector3
    L11_3 = L7_3.x
    L12_3 = L7_3.y
    L13_3 = L7_3.z
    L13_3 = L13_3 + L9_3
    L10_3 = L10_3(L11_3, L12_3, L13_3)
    L7_3 = L10_3
    L10_3 = RequestAnimDictAndWait
    L11_3 = A3_3
    L10_3(L11_3)
    L10_3 = GetAnimDuration
    L11_3 = A3_3
    L12_3 = A4_3
    L10_3 = L10_3(L11_3, L12_3)
    L10_3 = L10_3 * 1000
    L11_3 = SetEntityCoordsNoOffset
    L12_3 = L6_3
    L13_3 = L7_3
    L14_3 = false
    L15_3 = false
    L16_3 = false
    L11_3(L12_3, L13_3, L14_3, L15_3, L16_3)
    L11_3 = SetEntityRotation
    L12_3 = L6_3
    L13_3 = L8_3
    L11_3(L12_3, L13_3)
    L11_3 = TaskPlayAnim
    L12_3 = L6_3
    L13_3 = A3_3
    L14_3 = A4_3
    L15_3 = 2.0
    L16_3 = -1.5
    L17_3 = L10_3
    if A5_3 then
      L18_3 = 1
      if L18_3 then
        goto lbl_71
      end
    end
    L18_3 = 0
    ::lbl_71::
    L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
  end
  L6_2.automatePedAnimation = L11_2
  function L11_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L1_3 = L6_2.ambientPeds
    L1_3 = L1_3[A0_3]
    L2_3 = "idle_var_01"
    L3_3 = IsPedMale
    L4_3 = L1_3
    L3_3 = L3_3(L4_3)
    if L3_3 then
      L3_3 = "idle_var_"
      L4_3 = string
      L4_3 = L4_3.format
      L5_3 = "%02d"
      L6_3 = RandomNumber
      L7_3 = 1
      L8_3 = 13
      L6_3, L7_3, L8_3, L9_3 = L6_3(L7_3, L8_3)
      L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3, L9_3)
      L3_3 = L3_3 .. L4_3
      L2_3 = L3_3
    else
      L3_3 = "female_idle_var_"
      L4_3 = string
      L4_3 = L4_3.format
      L5_3 = "%02d"
      L6_3 = RandomNumber
      L7_3 = 1
      L8_3 = 8
      L6_3, L7_3, L8_3, L9_3 = L6_3(L7_3, L8_3)
      L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3, L9_3)
      L3_3 = L3_3 .. L4_3
      L2_3 = L3_3
    end
    L3_3 = L6_2.automatePedAnimation
    L4_3 = A0_3
    L5_3 = L6_2.chairPositions
    L5_3 = L5_3[A0_3]
    L5_3 = L5_3.coords
    L6_3 = L6_2.chairPositions
    L6_3 = L6_3[A0_3]
    L6_3 = L6_3.rotation
    L7_3 = L25_1
    L8_3 = L2_3
    L9_3 = true
    L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
  end
  L6_2.automateMakeIdle = L11_2
  function L11_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = L6_2.automateMakeIdle
    if not L0_3 then
      return
    end
    L0_3 = 1
    L1_3 = 4
    L2_3 = 1
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = L6_2.automateMakeIdle
      L5_3 = L3_3
      L4_3(L5_3)
    end
  end
  L6_2.automateEveryoneIdle = L11_2
  function L11_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L0_3 = L6_2.pedEnsureDictionary
    L0_3()
    L0_3 = Wait
    L1_3 = RandomNumber
    L2_3 = 300
    L3_3 = 3000
    L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3 = L1_3(L2_3, L3_3)
    L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
    L0_3 = 0
    L1_3 = {}
    L2_3 = "anim_casino_b@amb@casino@games@roulette@ped_male@seat_1@regular@01a@play@v01"
    L3_3 = "anim_casino_b@amb@casino@games@roulette@ped_male@seat_2@regular@02a@play@v02"
    L4_3 = "anim_casino_b@amb@casino@games@roulette@ped_male@seat_3@engaged@03a@play@v02"
    L5_3 = "anim_casino_b@amb@casino@games@roulette@ped_male@seat_4@regular@04a@play@v01"
    L1_3[1] = L2_3
    L1_3[2] = L3_3
    L1_3[3] = L4_3
    L1_3[4] = L5_3
    L2_3 = {}
    L3_3 = -90
    L4_3 = -90
    L5_3 = -180
    L6_3 = 90
    L2_3[1] = L3_3
    L2_3[2] = L4_3
    L2_3[3] = L5_3
    L2_3[4] = L6_3
    L3_3 = 1
    L4_3 = 4
    L5_3 = 1
    for L6_3 = L3_3, L4_3, L5_3 do
      L7_3 = CreateThread
      function L8_3()
        local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4
        L0_4 = Wait
        L1_4 = RandomNumber
        L2_4 = 200
        L3_4 = 3000
        L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4 = L1_4(L2_4, L3_4)
        L0_4(L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4)
        L0_4 = IN_CASINO
        if L0_4 then
          L0_4 = L6_2.chairPositions
          if L0_4 then
            goto lbl_14
          end
        end
        do return end
        ::lbl_14::
        L0_4 = L6_2.automateMakeIdle
        if not L0_4 then
          return
        end
        L1_4 = L6_3
        L0_4 = L1_3
        L0_4 = L0_4[L1_4]
        L2_4 = L6_3
        L1_4 = L2_3
        L1_4 = L1_4[L2_4]
        L2_4 = vector3
        L3_4 = L6_2.chairPositions
        L4_4 = L6_3
        L3_4 = L3_4[L4_4]
        L3_4 = L3_4.rotation
        L3_4 = L3_4.x
        L4_4 = L6_2.chairPositions
        L5_4 = L6_3
        L4_4 = L4_4[L5_4]
        L4_4 = L4_4.rotation
        L4_4 = L4_4.y
        L5_4 = L6_2.chairPositions
        L6_4 = L6_3
        L5_4 = L5_4[L6_4]
        L5_4 = L5_4.rotation
        L5_4 = L5_4.z
        L5_4 = L5_4 + L1_4
        L2_4 = L2_4(L3_4, L4_4, L5_4)
        L3_4 = RequestAnimDictAndWait
        L4_4 = L0_4
        L3_4(L4_4)
        L3_4 = RandomNumber
        L4_4 = 1
        L5_4 = 3
        L3_4 = L3_4(L4_4, L5_4)
        L4_4 = "place_bet_zone"
        L5_4 = L3_4
        L4_4 = L4_4 .. L5_4
        L5_4 = L6_2.automatePedAnimation
        L6_4 = L6_3
        L7_4 = L6_2.chairPositions
        L8_4 = L6_3
        L7_4 = L7_4[L8_4]
        L7_4 = L7_4.coords
        L8_4 = L2_4
        L9_4 = L0_4
        L10_4 = L4_4
        L11_4 = true
        L5_4(L6_4, L7_4, L8_4, L9_4, L10_4, L11_4)
        L5_4 = Wait
        L6_4 = 3000
        L5_4(L6_4)
        L5_4 = IN_CASINO
        if L5_4 then
          L5_4 = L6_2.chairPositions
          if L5_4 then
            goto lbl_74
          end
        end
        do return end
        ::lbl_74::
        L5_4 = L6_2.automateMakeIdle
        if not L5_4 then
          return
        end
        L5_4 = L6_2.automateMakeIdle
        L6_4 = L6_3
        L5_4(L6_4)
        if 1 == L3_4 then
          L5_4 = L6_2.createChipsOnIndex
          L6_4 = RandomNumber
          L7_4 = 1
          L8_4 = 12
          L6_4 = L6_4(L7_4, L8_4)
          L7_4 = 50
          L5_4(L6_4, L7_4)
        elseif 2 == L3_4 then
          L5_4 = L6_2.createChipsOnIndex
          L6_4 = RandomNumber
          L7_4 = 13
          L8_4 = 24
          L6_4 = L6_4(L7_4, L8_4)
          L7_4 = 50
          L5_4(L6_4, L7_4)
        elseif 3 == L3_4 then
          L5_4 = L6_2.createChipsOnIndex
          L6_4 = RandomNumber
          L7_4 = 25
          L8_4 = 36
          L6_4 = L6_4(L7_4, L8_4)
          L7_4 = 50
          L5_4(L6_4, L7_4)
        end
        L5_4 = L0_3
        L5_4 = L5_4 + 1
        L0_3 = L5_4
      end
      L9_3 = "roulette bet animation automate"
      L7_3(L8_3, L9_3)
    end
    while true do
      L3_3 = IN_CASINO
      if not (L3_3 and L0_3 < 4) then
        break
      end
      L3_3 = Wait
      L4_3 = 100
      L3_3(L4_3)
    end
    L3_3 = IN_CASINO
    if L3_3 then
      L3_3 = L6_2.rlPedSay
      if L3_3 then
        goto lbl_50
      end
    end
    do return end
    ::lbl_50::
    L3_3 = L6_2.rlPedSay
    L4_3 = "MINIGAME_DEALER_CLOSED_BETS"
    L3_3(L4_3)
    L3_3 = L6_2.pedStartSpin
    L3_3()
    L3_3 = Wait
    L4_3 = 25000
    L3_3(L4_3)
    L3_3 = IN_CASINO
    if L3_3 then
      L3_3 = L6_2.pedStopSpin
      if L3_3 then
        goto lbl_65
      end
    end
    do return end
    ::lbl_65::
    L3_3 = L6_2.pedStopSpin
    L4_3 = RandomNumber
    L5_3 = 1
    L6_3 = 36
    L4_3, L5_3, L6_3, L7_3, L8_3, L9_3 = L4_3(L5_3, L6_3)
    L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
    L3_3 = Wait
    L4_3 = 10000
    L3_3(L4_3)
    L3_3 = L6_2.pedCleanTable
    L3_3()
    L3_3 = Wait
    L4_3 = 2000
    L3_3(L4_3)
  end
  L6_2.automateRound = L11_2
  function L11_2()
    local L0_3, L1_3, L2_3
    L0_3 = L6_2.automated
    if L0_3 then
      return
    end
    L6_2.automated = true
    L0_3 = CreateThread
    function L1_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4
      while true do
        L0_4 = IN_CASINO
        if not L0_4 then
          break
        end
        L0_4 = L6_2.coords
        if not L0_4 then
          return
        end
        L0_4 = GetPlayerPosition
        L0_4 = L0_4()
        L1_4 = L6_2.coords
        L0_4 = L0_4 - L1_4
        L0_4 = #L0_4
        if L0_4 < 15.0 then
          break
        end
        L0_4 = Wait
        L1_4 = 1000
        L0_4(L1_4)
      end
      L0_4 = IN_CASINO
      if L0_4 then
        L0_4 = L6_2.automateEveryoneIdle
        if L0_4 then
          goto lbl_27
        end
      end
      do return end
      ::lbl_27::
      L0_4 = {}
      L6_2.ambientPeds = L0_4
      L0_4 = 1
      L1_4 = 4
      L2_4 = 1
      for L3_4 = L0_4, L1_4, L2_4 do
        L4_4 = Repeat
        L5_4 = L6_2.magicNumber
        L6_4 = AMBIENT_TABLES_PED_SKINS
        L6_4 = #L6_4
        L4_4 = L4_4(L5_4, L6_4)
        L4_4 = L4_4 + 1
        L4_4 = L4_4 + L3_4
        L5_4 = GetHashKey
        L6_4 = AMBIENT_TABLES_PED_SKINS
        L6_4 = L6_4[L4_4]
        L5_4 = L5_4(L6_4)
        L6_4 = RequestModelAndWait
        L7_4 = L5_4
        L6_4(L7_4)
        L6_4 = CreatePed
        L7_4 = 2
        L8_4 = L5_4
        L9_4 = L6_2.coords
        L10_4 = A3_2
        L10_4 = L10_4 + 180.0
        L11_4 = false
        L12_4 = false
        L6_4 = L6_4(L7_4, L8_4, L9_4, L10_4, L11_4, L12_4)
        L7_4 = SetModelAsNoLongerNeeded
        L8_4 = L5_4
        L7_4(L8_4)
        L7_4 = SetPedBrave
        L8_4 = L6_4
        L7_4(L8_4)
        L7_4 = SetEntityCollision
        L8_4 = L6_4
        L9_4 = false
        L10_4 = false
        L7_4(L8_4, L9_4, L10_4)
        L7_4 = FreezeEntityPosition
        L8_4 = L6_4
        L9_4 = true
        L7_4(L8_4, L9_4)
        L7_4 = table
        L7_4 = L7_4.insert
        L8_4 = L6_2.ambientPeds
        L9_4 = L6_4
        L7_4(L8_4, L9_4)
      end
      L0_4 = L6_2.automateEveryoneIdle
      L0_4()
      while true do
        L0_4 = L6_2.automated
        if not L0_4 then
          break
        end
        L0_4 = IN_CASINO
        if not L0_4 then
          break
        end
        L0_4 = GetPlayerPosition
        L0_4 = L0_4()
        L1_4 = L6_2.coords
        L0_4 = L0_4 - L1_4
        L0_4 = #L0_4
        if L0_4 < 5.0 then
          L0_4 = pcall
          L1_4 = L6_2.automateRound
          L0_4(L1_4)
        end
        L0_4 = Wait
        L1_4 = 5000
        L0_4(L1_4)
      end
    end
    L2_3 = "Creating object and stuff around roulette"
    L0_3(L1_3, L2_3)
  end
  L6_2.automate = L11_2
  function L11_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = L6_2.cleanDirt
    L0_3()
    L0_3 = StopSound
    L1_3 = L6_2.loopSoundIndex
    L0_3(L1_3)
    L0_3 = ReleaseSoundId
    L1_3 = L6_2.loopSoundIndex
    L0_3(L1_3)
    L0_3 = DeletePed
    L1_3 = L6_2.ped
    L0_3(L1_3)
    L0_3 = L6_2.rouletteCamera
    if L0_3 then
      L0_3 = SetCamActive
      L1_3 = L6_2.rouletteCamera
      L2_3 = false
      L0_3(L1_3, L2_3)
      L0_3 = DestroyCam
      L1_3 = L6_2.rouletteCamera
      L2_3 = false
      L0_3(L1_3, L2_3)
    end
    L0_3 = L6_2.keepTableObject
    if not L0_3 then
      L0_3 = ForceDeleteEntity
      L1_3 = L6_2.tableObject
      L0_3(L1_3)
    end
    L0_3 = ForceDeleteEntity
    L1_3 = L6_2.ballObject
    L0_3(L1_3)
    L0_3 = L6_2.clearHoveredObjects
    L0_3()
    L0_3 = 1
    L1_3 = 72
    L2_3 = 1
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = L6_2.clearChipsOnIndex
      L5_3 = L3_3
      L4_3(L5_3)
    end
    L0_3 = L6_2.ambientPeds
    if L0_3 then
      L0_3 = pairs
      L1_3 = L6_2.ambientPeds
      L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
      for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
        L6_3 = ForceDeleteEntity
        L7_3 = L5_3
        L6_3(L7_3)
      end
    end
    L0_3 = {}
    L6_2 = L0_3
  end
  L6_2.destroy = L11_2
  L11_2 = L6_2.loadChairData
  L11_2()
  return L6_2
end
function L45_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = DebugStart
  L2_2 = "GetRouletteInstanceFromCoords"
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
function L46_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = Config
  L2_2 = L2_2.UseTarget
  if L2_2 then
    return
  end
  L2_2 = DebugStart
  L3_2 = "Roulette_ShowNotifyUI"
  L2_2(L3_2)
  L2_2 = L1_1
  if L2_2 then
    return
  end
  L2_2 = nil
  L5_1 = L2_2
  L2_2 = pairs
  L3_2 = L0_1
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.tableObject
    if L8_2 == A0_2 then
      L5_1 = L7_2
    end
  end
  L2_2 = L5_1
  if not L2_2 then
    L2_2 = L45_1
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    L5_1 = L2_2
    L2_2 = L5_1
    if L2_2 then
      L2_2 = DoesEntityExist
      L3_2 = L5_1.tableObject
      L2_2 = L2_2(L3_2)
      if not L2_2 then
        L5_1.tableObject = A0_2
      end
    end
  end
  L2_2 = L5_1
  if L2_2 then
    L2_2 = L5_1.chairPositions
    if not L2_2 then
      L2_2 = nil
      L5_1 = L2_2
      return
    end
  end
  L2_2 = L5_1
  if nil == L2_2 then
    L2_2 = InfoPanel_Update
    L3_2 = nil
    L4_2 = nil
    L5_2 = nil
    L6_2 = nil
    L7_2 = nil
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    L2_2 = InfoPanel_UpdateNotification
    L3_2 = nil
    L2_2(L3_2)
    return
  end
  L2_2 = L5_1.loadChairData
  L2_2()
  L2_2 = L5_1.getClosestChair
  L3_2 = GetPlayerPosition
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L3_2()
  L2_2, L3_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L4_2 = L5_1.syncedState
  L4_2 = L4_2.chairs
  L4_2 = L4_2[L2_2]
  L5_2 = RouletteTableDatas
  L6_2 = L5_1.color
  L5_2 = L5_2[L6_2]
  L7_1 = L5_2
  L5_2 = L7_1.VIP
  if L5_2 then
    L5_2 = PLAYER_IS_VIP
    if not L5_2 then
      L5_2 = InfoPanel_UpdateNotification
      L6_2 = Translation
      L6_2 = L6_2.Get
      L7_2 = "TABLE_GAMES_VIP_RESTRICTION"
      L6_2, L7_2, L8_2 = L6_2(L7_2)
      L5_2(L6_2, L7_2, L8_2)
      return
    end
  end
  L5_2 = L7_1.MinBetValue
  L6_2 = PLAYER_CHIPS
  if L5_2 > L6_2 then
    L5_2 = InfoPanel_UpdateNotification
    L6_2 = string
    L6_2 = L6_2.format
    L7_2 = Translation
    L7_2 = L7_2.Get
    L8_2 = "TABLE_CANT_AFFORD_PLAYING"
    L7_2 = L7_2(L8_2)
    L8_2 = L7_1.MinBetValue
    L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2)
    L5_2(L6_2, L7_2, L8_2)
    return
  end
  if nil ~= L4_2 and -1 == L4_2 then
    L5_2 = L5_1.automated
    if not L5_2 then
      L5_2 = Translation
      L5_2 = L5_2.Get
      L6_2 = "UI_PRESS_TO_PLAY"
      L5_2 = L5_2(L6_2)
      L6_2 = " "
      L7_2 = L7_1.Title
      L8_2 = "."
      L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2
      L6_2 = L5_1.syncedState
      L6_2 = L6_2.history
      L6_2 = #L6_2
      if L6_2 > 0 then
        L6_2 = L5_2
        L7_2 = "\n"
        L8_2 = L5_1.getHistoryString
        L8_2 = L8_2()
        L6_2 = L6_2 .. L7_2 .. L8_2
        L5_2 = L6_2
      end
      L6_2 = InfoPanel_UpdateNotification
      L7_2 = L5_2
      L6_2(L7_2)
  end
  else
    L5_2 = InfoPanel_UpdateNotification
    L6_2 = Translation
    L6_2 = L6_2.Get
    L7_2 = "UI_CHAIR_USED"
    L6_2, L7_2, L8_2 = L6_2(L7_2)
    L5_2(L6_2, L7_2, L8_2)
  end
end
Roulette_ShowNotifyUI = L46_1
function L46_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = DebugStart
  L1_2 = "SendSitRequest"
  L0_2(L1_2)
  L0_2 = InfoPanel_Update
  L1_2 = nil
  L2_2 = nil
  L3_2 = nil
  L4_2 = nil
  L5_2 = nil
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
  L0_2 = InfoPanel_UpdateNotification
  L1_2 = nil
  L0_2(L1_2)
  L0_2 = L5_1
  if nil == L0_2 then
    return
  end
  L0_2 = L5_1.getClosestChair
  L1_2 = GetPlayerPosition
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L1_2()
  L0_2, L1_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L2_2 = L5_1.chairPositions
  L2_2 = L2_2[L0_2]
  if nil == L2_2 then
    return
  end
  L3_2 = false
  L2_1 = L3_2
  L3_2 = BlockPlayerInteraction
  L4_2 = 2000
  L3_2(L4_2)
  LAST_STARTED_GAME_TYPE = "roulette"
  L3_2 = TriggerServerEvent
  L4_2 = "Roulette:Sit"
  L5_2 = L5_1.coords
  L6_2 = L0_2
  L7_2 = L5_1.color
  L8_2 = PLAYER_DRUNK_LEVEL
  L9_2 = 0.5
  L8_2 = L8_2 > L9_2
  L9_2 = IsPedMale
  L10_2 = PlayerPedId
  L10_2 = L10_2()
  L9_2, L10_2 = L9_2(L10_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end
function L47_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = DebugStart
  L1_2 = "CreateTimerBars"
  L0_2(L1_2)
  L0_2 = L14_1
  if nil ~= L0_2 then
    return
  end
  L0_2 = TimerBar
  L0_2 = L0_2.Create
  L1_2 = TimerBar
  L1_2 = L1_2.Text
  L2_2 = Translation
  L2_2 = L2_2.Get
  L3_2 = "ROULETTE_TIMERBAR_BET"
  L2_2 = L2_2(L3_2)
  L3_2 = tostring
  L4_2 = L23_1
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
  L17_1 = L0_2
  L0_2 = L17_1.setTextColor
  L1_2 = {}
  L2_2 = 255
  L3_2 = 255
  L4_2 = 255
  L5_2 = 255
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L0_2(L1_2)
  L0_2 = TimerBar
  L0_2 = L0_2.Create
  L1_2 = TimerBar
  L1_2 = L1_2.Text
  L2_2 = Translation
  L2_2 = L2_2.Get
  L3_2 = "ROULETTE_TIMERBAR_ACTUAL_BET"
  L2_2 = L2_2(L3_2)
  L3_2 = "0"
  L0_2 = L0_2(L1_2, L2_2, L3_2)
  L16_1 = L0_2
  L0_2 = L16_1.setTextColor
  L1_2 = {}
  L2_2 = 255
  L3_2 = 255
  L4_2 = 255
  L5_2 = 255
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L0_2(L1_2)
  L0_2 = TimerBar
  L0_2 = L0_2.Create
  L1_2 = TimerBar
  L1_2 = L1_2.Text
  L2_2 = Translation
  L2_2 = L2_2.Get
  L3_2 = "ROULETTE_TIMERBAR_BETS_REMAINING"
  L2_2 = L2_2(L3_2)
  L3_2 = tostring
  L4_2 = L7_1.MaxBets
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
  L15_1 = L0_2
  L0_2 = L15_1.setTextColor
  L1_2 = {}
  L2_2 = 255
  L3_2 = 255
  L4_2 = 255
  L5_2 = 255
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L0_2(L1_2)
  L0_2 = TimerBar
  L0_2 = L0_2.Create
  L1_2 = TimerBar
  L1_2 = L1_2.Text
  L2_2 = Translation
  L2_2 = L2_2.Get
  L3_2 = "ROULETTE_TIMERBAR_TIME"
  L2_2 = L2_2(L3_2)
  L3_2 = "0"
  L0_2 = L0_2(L1_2, L2_2, L3_2)
  L14_1 = L0_2
  L0_2 = L14_1.setTextColor
  L1_2 = {}
  L2_2 = 255
  L3_2 = 20
  L4_2 = 20
  L5_2 = 255
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L0_2(L1_2)
  L0_2 = L14_1.setHighlightColor
  L1_2 = {}
  L2_2 = 255
  L3_2 = 20
  L4_2 = 20
  L5_2 = 255
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L0_2(L1_2)
end
function L48_1()
  local L0_2, L1_2
  L0_2 = DebugStart
  L1_2 = "DestroyTimerBars"
  L0_2(L1_2)
  L0_2 = L14_1
  if nil == L0_2 then
    return
  end
  L0_2 = TimerBar
  L0_2 = L0_2.Destroy
  L1_2 = L17_1
  L0_2(L1_2)
  L0_2 = TimerBar
  L0_2 = L0_2.Destroy
  L1_2 = L16_1
  L0_2(L1_2)
  L0_2 = TimerBar
  L0_2 = L0_2.Destroy
  L1_2 = L15_1
  L0_2(L1_2)
  L0_2 = TimerBar
  L0_2 = L0_2.Destroy
  L1_2 = L14_1
  L0_2(L1_2)
  L0_2 = nil
  L17_1 = L0_2
  L0_2 = nil
  L16_1 = L0_2
  L0_2 = nil
  L15_1 = L0_2
  L0_2 = nil
  L14_1 = L0_2
end
function L49_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = DebugStart
  L2_2 = "StepChanged"
  L1_2(L2_2)
  if 1 == A0_2 then
    L1_2 = IsActivityEnabled
    L2_2 = "roulette"
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = Roulette_OnQuit
      L1_2()
      return
    end
  end
  if 2 == A0_2 then
    L1_2 = BlockQuittingFor
    L2_2 = 60000
    L1_2(L2_2)
  end
  if 1 == A0_2 then
    L1_2 = 0
    L9_1 = L1_2
    L1_2 = Stats_Increase
    L2_2 = "rcore_casino_roulette_games_played"
    L3_2 = 1
    L1_2(L2_2, L3_2)
    L1_2 = L7_1.MinBetValue
    L2_2 = PLAYER_CHIPS
    if L1_2 > L2_2 then
      L1_2 = Roulette_OnQuit
      L1_2()
      return
    end
    L1_2 = {}
    L30_1 = L1_2
    L1_2 = CAN_INTERACT
    if L1_2 then
      L1_2 = L6_1.usePlayingCamera
      L1_2()
      L1_2 = L6_1.cameraMode
      if 4 ~= L1_2 then
        L6_1.cameraMode = 3
        L1_2 = L6_1.changeCameraMode
        L2_2 = true
        L3_2 = false
        L1_2(L2_2, L3_2)
      end
    end
    L1_2 = L43_1
    L2_2 = L6_1
    L1_2(L2_2)
    L1_2 = PLAYER_CHIPS
    s_creditRemaining = L1_2
  else
    L1_2 = L48_1
    L1_2()
  end
  L1_2 = L28_1
  L1_2()
end
function L50_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = DebugStart
  L1_2 = "OneSecondTick"
  L0_2(L1_2)
  L0_2 = L1_1
  if L0_2 then
    L0_2 = L6_1
    if nil ~= L0_2 then
      L0_2 = L2_1
      if L0_2 then
        goto lbl_14
      end
    end
  end
  do return end
  ::lbl_14::
  L0_2 = L18_1
  L1_2 = L6_1.syncedState
  L1_2 = L1_2.step
  if L0_2 ~= L1_2 then
    L0_2 = L6_1.syncedState
    L0_2 = L0_2.step
    L18_1 = L0_2
    L0_2 = L49_1
    L1_2 = L18_1
    L0_2(L1_2)
  end
  L0_2 = L6_1
  if L0_2 then
    L0_2 = L6_1.syncedState
    L0_2 = L0_2.step
    if 1 == L0_2 then
      L0_2 = L2_1
      if L0_2 then
        L0_2 = L47_1
        L0_2()
      end
      L0_2 = L6_1.syncedState
      L0_2 = L0_2.timeleft
      if L0_2 > 0 then
        L0_2 = L6_1.syncedState
        L1_2 = L6_1.syncedState
        L1_2 = L1_2.timeleft
        L1_2 = L1_2 - 1
        L0_2.timeleft = L1_2
        L0_2 = L14_1
        if nil ~= L0_2 then
          L0_2 = L14_1.setText
          L1_2 = "00:"
          L2_2 = string
          L2_2 = L2_2.format
          L3_2 = "%02d"
          L4_2 = L6_1.syncedState
          L4_2 = L4_2.timeleft
          L2_2 = L2_2(L3_2, L4_2)
          L1_2 = L1_2 .. L2_2
          L0_2(L1_2)
        end
      end
    end
  end
end
function L51_1()
  local L0_2, L1_2, L2_2
  L0_2 = DebugStart
  L1_2 = "StartOneSecondTimer"
  L0_2(L1_2)
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3
    while true do
      L0_3 = IN_CASINO
      if not L0_3 then
        break
      end
      L0_3 = L1_1
      if not L0_3 then
        break
      end
      L0_3 = L50_1
      L0_3()
      L0_3 = Wait
      L1_3 = 1000
      L0_3(L1_3)
    end
  end
  L2_2 = "Tick timer"
  L0_2(L1_2, L2_2)
end
function L52_1()
  local L0_2, L1_2
  L0_2 = DebugStart
  L1_2 = "OnPlayerSatDown"
  L0_2(L1_2)
  L0_2 = L42_1
  L0_2()
  L0_2 = RequestPlayerChips
  L0_2()
  L0_2 = L18_1
  if 1 == L0_2 then
    L0_2 = L6_1.usePlayingCamera
    L0_2()
    L0_2 = L43_1
    L1_2 = L6_1
    L0_2(L1_2)
  end
  L0_2 = L35_1
  L0_2()
  L0_2 = true
  L2_1 = L0_2
end
function L53_1()
  local L0_2, L1_2
  L0_2 = DebugStart
  L1_2 = "OnPlayerStandUp"
  L0_2(L1_2)
  L0_2 = ClearPedTasks
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L0_2(L1_2)
  L0_2 = ClearPedSecondaryTask
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L0_2(L1_2)
  L0_2 = ScenePed_AnnounceEnd
  L0_2()
  L0_2 = PushNUIInstructionalButtons
  L1_2 = nil
  L0_2(L1_2)
  L0_2 = SetInventoryBusy
  L1_2 = false
  L0_2(L1_2)
end
function L54_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = RouletteTableDatas
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    return
  end
  L1_2 = RouletteTableDatas
  L1_2 = L1_2[A0_2]
  L2_2 = InfoPanel_UpdateNotification
  L3_2 = nil
  L2_2(L3_2)
  L2_2 = InfoPanel_Update
  L3_2 = L1_2.Banner
  L4_2 = L1_2.Banner
  L5_2 = L1_2.Title
  L6_2 = Translation
  L6_2 = L6_2.Get
  L7_2 = "ROULETTE_WELCOME_PART1"
  L6_2 = L6_2(L7_2)
  L7_2 = Translation
  L7_2 = L7_2.Get
  L8_2 = "ROULETTE_WELCOME_PART2"
  L7_2 = L7_2(L8_2)
  L8_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end
Roulette_ShowWelcome = L54_1
function L54_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = DebugStart
  L2_2 = "Roulette_OnInteraction"
  L1_2(L2_2)
  L1_2 = L1_1
  if L1_2 then
    return
  end
  L1_2 = PLAYER_DRUNK_LEVEL
  if L1_2 >= 1.0 then
    return
  end
  if A0_2 then
    L1_2 = L45_1
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    L5_1 = L1_2
  end
  L1_2 = L5_1
  if nil ~= L1_2 then
    L1_2 = L5_1.chairPositions
    if L1_2 then
      L1_2 = L5_1.chairPositions
      L1_2 = #L1_2
      if not (L1_2 < 4) then
        goto lbl_29
      end
    end
    do return end
    ::lbl_29::
    L1_2 = L5_1.getClosestChair
    L2_2 = GetPlayerPosition
    L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L2_2()
    L1_2, L2_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    L3_2 = L5_1.syncedState
    L3_2 = L3_2.chairs
    L3_2 = L3_2[L1_2]
    L4_2 = RouletteTableDatas
    L5_2 = L5_1.color
    L4_2 = L4_2[L5_2]
    L7_1 = L4_2
    L4_2 = L7_1.VIP
    if L4_2 then
      L4_2 = PLAYER_IS_VIP
      if not L4_2 then
        L4_2 = InfoPanel_UpdateNotification
        L5_2 = Translation
        L5_2 = L5_2.Get
        L6_2 = "TABLE_GAMES_VIP_RESTRICTION"
        L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2)
        L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
        return
      end
    end
    L4_2 = L7_1.MinBetValue
    L5_2 = PLAYER_CHIPS
    if L4_2 > L5_2 then
      L4_2 = InfoPanel_UpdateNotification
      L5_2 = string
      L5_2 = L5_2.format
      L6_2 = Translation
      L6_2 = L6_2.Get
      L7_2 = "TABLE_CANT_AFFORD_PLAYING"
      L6_2 = L6_2(L7_2)
      L7_2 = L7_1.MinBetValue
      L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2, L7_2)
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
      return
    end
    if nil ~= L3_2 and -1 == L3_2 then
      L4_2 = L5_1.automated
      if not L4_2 then
        L4_2 = GAME_INFO_PANEL
        if nil == L4_2 then
          L4_2 = ShouldShowHowToPlay
          L5_2 = "roulette"
          L4_2 = L4_2(L5_2)
          if L4_2 then
            L4_2 = Roulette_ShowWelcome
            L5_2 = L5_1.color
            L4_2(L5_2)
        end
        else
          L4_2 = L46_1
          L4_2()
        end
    end
    else
      L4_2 = InfoPanel_Update
      L5_2 = nil
      L6_2 = nil
      L7_2 = nil
      L8_2 = nil
      L9_2 = nil
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
      L4_2 = InfoPanel_UpdateNotification
      L5_2 = Translation
      L5_2 = L5_2.Get
      L6_2 = "UI_CHAIR_USED"
      L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2)
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
    end
  end
end
Roulette_OnInteraction = L54_1
function L54_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = Repeat
  L3_2 = A0_2
  L4_2 = AMBIENT_RL_COORDS
  L4_2 = #L4_2
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L2_2(L3_2, L4_2)
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L1_2[5] = L6_2
  L1_2[6] = L7_2
  L1_2[7] = L8_2
  L1_2[8] = L9_2
  L1_2[9] = L10_2
  L2_2 = pairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L45_1
    L9_2 = AMBIENT_RL_COORDS
    L10_2 = L7_2 + 1
    L9_2 = L9_2[L10_2]
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L9_2 = L8_2.automate
      L9_2()
    end
  end
end
function L55_1()
  local L0_2, L1_2
  L0_2 = DebugStart
  L1_2 = "ResetSession"
  L0_2(L1_2)
  L0_2 = L48_1
  L0_2()
  L0_2 = false
  L1_1 = L0_2
  L0_2 = false
  L3_1 = L0_2
  L0_2 = nil
  L4_1 = L0_2
  L0_2 = nil
  L5_1 = L0_2
  L0_2 = nil
  L6_1 = L0_2
  L0_2 = nil
  L14_1 = L0_2
  L0_2 = nil
  L15_1 = L0_2
  L0_2 = nil
  L16_1 = L0_2
  L0_2 = nil
  L17_1 = L0_2
  L0_2 = -1
  L18_1 = L0_2
  L0_2 = 0
  L22_1 = L0_2
  L0_2 = 0
  L23_1 = L0_2
  L0_2 = {}
  L30_1 = L0_2
end
function L56_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = DebugStart
  L1_2 = "Roulette_OnQuit"
  L0_2(L1_2)
  L0_2 = L1_1
  if L0_2 then
    L0_2 = L6_1
    if nil ~= L0_2 then
      L0_2 = L6_1.disableCameras
      L0_2()
    end
    L0_2 = L55_1
    L0_2()
    L0_2 = Stats_EndActivity
    L0_2()
    L0_2 = CloseAllMenus
    L0_2()
    L0_2 = ClearMugshotCache
    L0_2()
    L0_2 = PushNUIInstructionalButtons
    L1_2 = nil
    L0_2(L1_2)
    L0_2 = BlockPlayerInteraction
    L1_2 = 2000
    L0_2(L1_2)
    L0_2 = PlaySynchronizedScene
    L1_2 = L8_1.coords
    L2_2 = L8_1.rotation
    L3_2 = L25_1
    L4_2 = "sit_exit_left"
    L5_2 = false
    L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
    L1_2 = nil
    L8_1 = L1_2
    L1_2 = nil
    L5_1 = L1_2
    L1_2 = TriggerServerEvent
    L2_2 = "Roulette:Quit"
    L1_2(L2_2)
    L1_2 = CreateNewSceneEndEvent
    L2_2 = L0_2
    L3_2 = 0.7
    L4_2 = L53_1
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = ForgotLastStartedGameType
    L2_2 = "roulette"
    L1_2(L2_2)
    return
  end
end
Roulette_OnQuit = L56_1
L56_1 = RegisterNetEvent
L57_1 = "Roulette:TicketPaidInTotal"
L56_1(L57_1)
L56_1 = AddEventHandler
L57_1 = "Roulette:TicketPaidInTotal"
function L58_1(A0_2)
  local L1_2
  L9_1 = A0_2
end
L56_1(L57_1, L58_1)
L56_1 = RegisterNetEvent
L57_1 = "Roulette:TicketWinInTotal"
L56_1(L57_1)
L56_1 = AddEventHandler
L57_1 = "Roulette:TicketWinInTotal"
function L58_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L9_1
  L1_2 = A0_2 - L1_2
  L2_2 = L9_1
  if A0_2 > L2_2 then
    L2_2 = Stats_Increase
    L3_2 = "rcore_casino_roulette_wins"
    L4_2 = 1
    L2_2(L3_2, L4_2)
  else
    L2_2 = Stats_Increase
    L3_2 = "rcore_casino_roulette_loss"
    L4_2 = 1
    L2_2(L3_2, L4_2)
  end
  if A0_2 > 0 then
    L2_2 = Stats_Increase
    L3_2 = "rcore_casino_roulette_profit"
    L4_2 = A0_2
    L2_2(L3_2, L4_2)
  end
  if L1_2 > 0 then
    L2_2 = Stats_Increase
    L3_2 = "rcore_casino_roulette_profitreal"
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  elseif L1_2 < 0 then
    L2_2 = Stats_Decrease
    L3_2 = "rcore_casino_roulette_profitreal"
    L4_2 = math
    L4_2 = L4_2.abs
    L5_2 = L1_2
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = 0
  L9_1 = L2_2
end
L56_1(L57_1, L58_1)
L56_1 = RegisterNetEvent
L57_1 = "Roulette:Kicked"
L56_1(L57_1)
L56_1 = AddEventHandler
L57_1 = "Roulette:Kicked"
function L58_1()
  local L0_2, L1_2
  L0_2 = IN_CASINO
  if not L0_2 then
    return
  end
  L0_2 = StopFromPlaying
  L0_2()
end
L56_1(L57_1, L58_1)
L56_1 = RegisterNetEvent
L57_1 = "Roulette:Sit"
L56_1(L57_1)
L56_1 = AddEventHandler
L57_1 = "Roulette:Sit"
function L58_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L5_2 = IN_CASINO
  if not L5_2 then
    return
  end
  L5_2 = L45_1
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  if nil == L5_2 then
    return
  end
  L5_2.syncedState = A3_2
  L6_2 = GetMyPlayerId
  L6_2 = L6_2()
  if A0_2 == L6_2 then
    L6_1 = L5_2
    L6_2 = PlaySound
    L7_2 = "DLC_VW_CONTINUE"
    L8_2 = "dlc_vw_table_games_frontend_sounds"
    L6_2(L7_2, L8_2)
    L6_2 = L6_1.rlPedSay
    L7_2 = A4_2
    L6_2(L7_2)
    L6_2 = TaskLookAtEntity
    L7_2 = L6_1.ped
    L8_2 = PlayerPedId
    L8_2 = L8_2()
    L9_2 = 3500
    L10_2 = 2048
    L11_2 = 3
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
    L6_2 = L6_1.chairPositions
    L6_2 = L6_2[A2_2]
    L8_1 = L6_2
    L6_2 = L8_1
    if nil == L6_2 then
      return
    end
    L6_2 = RouletteTableDatas
    L7_2 = L6_1.color
    L6_2 = L6_2[L7_2]
    L7_1 = L6_2
    L6_2 = L7_1.MinBetValue
    L23_1 = L6_2
    L6_2 = L23_1
    L7_2 = PLAYER_CHIPS
    if L6_2 > L7_2 then
      L6_2 = PLAYER_CHIPS
      L23_1 = L6_2
    end
    L6_2 = Stats_StartActivity
    L7_2 = "roulette"
    L6_2(L7_2)
    L6_2 = SetInventoryBusy
    L7_2 = true
    L6_2(L7_2)
    L6_2 = {}
    L30_1 = L6_2
    L6_2 = RequestAnimDictAndWait
    L7_2 = L25_1
    L6_2(L7_2)
    L6_2 = PlaySynchronizedScene
    L7_2 = L8_1.coords
    L8_2 = L8_1.rotation
    L9_2 = L25_1
    L10_2 = "sit_enter_left"
    L11_2 = false
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
    L7_2 = true
    L1_1 = L7_2
    L7_2 = L51_1
    L7_2()
    L7_2 = CreateNewSceneEndEvent
    L8_2 = L6_2
    L9_2 = 0.7
    L10_2 = L52_1
    L7_2(L8_2, L9_2, L10_2)
    L7_2 = SetCurrentPedWeapon
    L8_2 = PlayerPedId
    L8_2 = L8_2()
    L9_2 = GetHashKey
    L10_2 = "weapon_unarmed"
    L9_2 = L9_2(L10_2)
    L10_2 = true
    L7_2(L8_2, L9_2, L10_2)
  end
end
L56_1(L57_1, L58_1)
L56_1 = RegisterNetEvent
L57_1 = "Roulette:Quit"
L56_1(L57_1)
L56_1 = AddEventHandler
L57_1 = "Roulette:Quit"
function L58_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2
  L5_2 = IN_CASINO
  if not L5_2 then
    return
  end
  L5_2 = L45_1
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  if nil == L5_2 then
    return
  end
  L6_2 = L5_2.rlPedSay
  L7_2 = A4_2
  L6_2(L7_2)
  L6_2 = L5_2.syncedState
  L6_2.chairs = A3_2
end
L56_1(L57_1, L58_1)
L56_1 = RegisterNetEvent
L57_1 = "Roulette:Sessions"
L56_1(L57_1)
L56_1 = AddEventHandler
L57_1 = "Roulette:Sessions"
function L58_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = IN_CASINO
  if not L2_2 then
    return
  end
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L45_1
    L9_2 = L7_2.coords
    L8_2 = L8_2(L9_2)
    if nil ~= L8_2 then
      L8_2.syncedState = L7_2
      L9_2 = L8_2.changeDirtLevel
      L10_2 = L7_2.dirtLevel
      L11_2 = L7_2.dirtProps
      L9_2(L10_2, L11_2)
    end
  end
  L2_2 = Config
  L2_2 = L2_2.CASINO_ENABLE_AMBIENT_PEDS_ROULETTE
  if L2_2 then
    L2_2 = L54_1
    L3_2 = A1_2
    L2_2(L3_2)
  end
end
L56_1(L57_1, L58_1)
L56_1 = RegisterNetEvent
L57_1 = "Roulette:StateChanged"
L56_1(L57_1)
L56_1 = AddEventHandler
L57_1 = "Roulette:StateChanged"
function L58_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = IN_CASINO
  if not L1_2 then
    return
  end
  L1_2 = L45_1
  L2_2 = A0_2.coords
  L1_2 = L1_2(L2_2)
  if nil == L1_2 then
    return
  end
  L1_2.syncedState = A0_2
  L2_2 = L1_2.syncedState
  L2_2 = L2_2.step
  if 1 == L2_2 then
    L2_2 = L1_2.rlPedSay
    L3_2 = "MINIGAME_DEALER_PLACE_BET"
    L2_2(L3_2)
    L2_2 = L6_1
    if L1_2 == L2_2 then
      L2_2 = L19_1
      if 0 == L2_2 then
        L2_2 = CloseAllMenus
        L2_2()
      end
    end
  end
end
L56_1(L57_1, L58_1)
L56_1 = RegisterNetEvent
L57_1 = "Roulette:TotalChanged"
L56_1(L57_1)
L56_1 = AddEventHandler
L57_1 = "Roulette:TotalChanged"
function L58_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = IN_CASINO
  if not L3_2 then
    return
  end
  L3_2 = L45_1
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if nil == L3_2 then
    return
  end
  L4_2 = L3_2.createChipsOnIndex
  L5_2 = A1_2
  L6_2 = A2_2
  L4_2(L5_2, L6_2)
end
L56_1(L57_1, L58_1)
L56_1 = RegisterNetEvent
L57_1 = "Roulette:StartSpin"
L56_1(L57_1)
L56_1 = AddEventHandler
L57_1 = "Roulette:StartSpin"
function L58_1(A0_2)
  local L1_2, L2_2
  L1_2 = IN_CASINO
  if not L1_2 then
    return
  end
  L1_2 = L45_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if nil == L1_2 then
    return
  end
  L2_2 = L1_2.pedStartSpin
  L2_2()
end
L56_1(L57_1, L58_1)
L56_1 = RegisterNetEvent
L57_1 = "Roulette:EndSpin"
L56_1(L57_1)
L56_1 = AddEventHandler
L57_1 = "Roulette:EndSpin"
function L58_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = IN_CASINO
  if not L2_2 then
    return
  end
  L2_2 = L45_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if nil == L2_2 then
    return
  end
  L2_2.syncedState = A1_2
  L3_2 = L2_2.pedStopSpin
  L4_2 = A1_2.winnerNumber
  L3_2(L4_2)
end
L56_1(L57_1, L58_1)
L56_1 = RegisterNetEvent
L57_1 = "Roulette:CleanUp"
L56_1(L57_1)
L56_1 = AddEventHandler
L57_1 = "Roulette:CleanUp"
function L58_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = IN_CASINO
  if not L2_2 then
    return
  end
  L2_2 = L45_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if nil == L2_2 then
    return
  end
  L3_2 = L2_2.pedCleanTable
  L3_2()
end
L56_1(L57_1, L58_1)
L56_1 = RegisterNetEvent
L57_1 = "Roulette:LastRoundScores"
L56_1(L57_1)
L56_1 = AddEventHandler
L57_1 = "Roulette:LastRoundScores"
function L58_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = IN_CASINO
  if not L3_2 then
    return
  end
  PLAYER_CHIPS = A2_2
  L3_2 = Casino_AnimateBalance
  L3_2()
  L3_2 = BlockQuittingFor
  L4_2 = 0
  L3_2(L4_2)
  L3_2 = L2_1
  if not L3_2 then
    return
  end
  L3_2 = L19_1
  if 0 ~= L3_2 then
    return
  end
  L3_2 = CreateThread
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3
    L0_3 = GetMugshotCacheSize
    L0_3 = L0_3()
    if L0_3 > 1 then
      L0_3 = ClearMugshotCache
      L0_3()
    end
    L0_3 = {}
    L1_3 = {}
    L2_3 = 1
    L3_3 = 2
    L4_3 = 1
    for L5_3 = L2_3, L3_3, L4_3 do
      if 1 == L5_3 then
        L6_3 = A0_2
        if L6_3 then
          goto lbl_21
        end
      end
      L6_3 = A1_2
      ::lbl_21::
      L7_3 = pairs
      L8_3 = L6_3
      L7_3, L8_3, L9_3, L10_3 = L7_3(L8_3)
      for L11_3, L12_3 in L7_3, L8_3, L9_3, L10_3 do
        L13_3 = {}
        L14_3 = GetPlayerFromServerId
        L15_3 = L11_3
        L14_3 = L14_3(L15_3)
        if -1 ~= L14_3 then
          L15_3 = GetPlayerPed
          L16_3 = L14_3
          L15_3 = L15_3(L16_3)
          L16_3 = L12_3.realName
          L13_3.name = L16_3
          L16_3 = L12_3.winnings
          L13_3.score = L16_3
          L16_3 = GetPlayerMugshotTexture
          L17_3 = L15_3
          L16_3 = L16_3(L17_3)
          L13_3.txd = L16_3
          L16_3 = L12_3.winnings
          if L16_3 > 0 then
            L16_3 = table
            L16_3 = L16_3.insert
            L17_3 = L0_3
            L18_3 = L13_3
            L16_3(L17_3, L18_3)
          else
            L16_3 = L12_3.winnings
            if L16_3 < 0 then
              L16_3 = table
              L16_3 = L16_3.insert
              L17_3 = L1_3
              L18_3 = L13_3
              L16_3(L17_3, L18_3)
            end
          end
        end
      end
    end
    L2_3 = #L0_3
    L3_3 = #L1_3
    L2_3 = L2_3 + L3_3
    if L2_3 > 0 then
      L2_3 = L27_1
      L3_3 = L0_3
      L4_3 = L1_3
      L2_3(L3_3, L4_3)
      L2_3 = PlaySound
      L3_3 = "DLC_VW_WIN_CHIPS"
      L4_3 = "dlc_vw_table_games_frontend_sounds"
      L2_3(L3_3, L4_3)
    end
  end
  L5_2 = "Loading mugshot of winner/losser"
  L3_2(L4_2, L5_2)
end
L56_1(L57_1, L58_1)
L56_1 = RegisterNetEvent
L57_1 = "Roulette:NoMoreBets"
L56_1(L57_1)
L56_1 = AddEventHandler
L57_1 = "Roulette:NoMoreBets"
function L58_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = IN_CASINO
  if not L2_2 then
    return
  end
  L2_2 = L45_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if nil == L2_2 then
    return
  end
  L2_2.syncedState = A1_2
  L3_2 = L2_2.pedNoMoreBets
  L3_2()
  L3_2 = L6_1
  if L3_2 == L2_2 then
  end
end
L56_1(L57_1, L58_1)
function L56_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = L45_1
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  L4_2 = L3_2.changeDirtLevel
  L5_2 = A1_2
  L6_2 = A2_2
  L4_2(L5_2, L6_2)
end
Roulette_DirtChangedAtCoords = L56_1
function L56_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2
  L0_2 = DebugStart
  L1_2 = "Roulette_RescanTables"
  L0_2(L1_2)
  L0_2 = {}
  L1_2 = Casino_GetObjectsOfTypes
  L2_2 = {}
  L3_2 = GetHashKey
  L4_2 = "vw_prop_casino_roulette_01"
  L3_2 = L3_2(L4_2)
  L4_2 = GetHashKey
  L5_2 = "vw_prop_casino_roulette_01b"
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2 = L4_2(L5_2)
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L2_2[3] = L5_2
  L2_2[4] = L6_2
  L2_2[5] = L7_2
  L2_2[6] = L8_2
  L2_2[7] = L9_2
  L2_2[8] = L10_2
  L2_2[9] = L11_2
  L2_2[10] = L12_2
  L2_2[11] = L13_2
  L2_2[12] = L14_2
  L2_2[13] = L15_2
  L2_2[14] = L16_2
  L2_2[15] = L17_2
  L2_2[16] = L18_2
  L2_2[17] = L19_2
  L2_2[18] = L20_2
  L2_2[19] = L21_2
  L2_2[20] = L22_2
  L2_2[21] = L23_2
  L2_2[22] = L24_2
  L2_2[23] = L25_2
  L2_2[24] = L26_2
  L2_2[25] = L27_2
  L2_2[26] = L28_2
  L1_2 = L1_2(L2_2)
  L2_2 = SortByDistance
  L3_2 = L1_2
  L4_2 = CASINO_SECOND_ROOM_COORDS
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = 0
  L4_2 = pairs
  L5_2 = L2_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = GetEntityCoords
    L11_2 = L9_2
    L10_2 = L10_2(L11_2)
    L11_2 = GetEntityHeading
    L12_2 = L9_2
    L11_2 = L11_2(L12_2)
    L12_2 = IsEntityVisible
    L13_2 = L9_2
    L12_2 = L12_2(L13_2)
    if L12_2 then
      L12_2 = DoesEntityHaveDrawable
      L13_2 = L9_2
      L12_2 = L12_2(L13_2)
      if L12_2 then
        L12_2 = L45_1
        L13_2 = L10_2
        L12_2 = L12_2(L13_2)
        if nil == L12_2 then
          L12_2 = GetEntityModel
          L13_2 = L9_2
          L12_2 = L12_2(L13_2)
          L13_2 = GetHashKey
          L14_2 = "vw_prop_casino_roulette_01"
          L13_2 = L13_2(L14_2)
          if L12_2 == L13_2 then
            L12_2 = 0
            if L12_2 then
              goto lbl_59
            end
          end
          L12_2 = 3
          ::lbl_59::
          L13_2 = Config
          L13_2 = L13_2.ROULETTE_JUNIOR_ENABLED
          if L13_2 then
            L13_2 = GetEntityCoords
            L14_2 = L9_2
            L13_2 = L13_2(L14_2)
            L14_2 = vector3
            L15_2 = Config
            L15_2 = L15_2.ROULETTE_JUNIOR_COORDS
            L15_2 = L15_2[1]
            L16_2 = Config
            L16_2 = L16_2.ROULETTE_JUNIOR_COORDS
            L16_2 = L16_2[2]
            L17_2 = Config
            L17_2 = L17_2.ROULETTE_JUNIOR_COORDS
            L17_2 = L17_2[3]
            L14_2 = L14_2(L15_2, L16_2, L17_2)
            L13_2 = L13_2 - L14_2
            L13_2 = #L13_2
            L14_2 = 0.1
            if L13_2 < L14_2 then
              L12_2 = 2
            end
          end
          L13_2 = L44_1
          L14_2 = L9_2
          L15_2 = nil
          L16_2 = nil
          L17_2 = L11_2
          L18_2 = L12_2
          L19_2 = L3_2
          L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
          L14_2 = table
          L14_2 = L14_2.insert
          L15_2 = L0_1
          L16_2 = L13_2
          L14_2(L15_2, L16_2)
          if L3_2 < 13 then
            L3_2 = L3_2 + 1
          else
            L3_2 = 0
          end
          L14_2 = RouletteTableDatas
          L14_2 = L14_2[L12_2]
          L15_2 = GetObjectOffsetFromCoords
          L16_2 = L10_2
          L17_2 = L11_2
          L18_2 = 0.0
          L19_2 = -0.05
          L20_2 = 1.5
          L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2)
          L16_2 = CreateTargetZone
          L17_2 = vector3
          L18_2 = L15_2.x
          L19_2 = L15_2.y
          L20_2 = L15_2.z
          L17_2 = L17_2(L18_2, L19_2, L20_2)
          L18_2 = 1.5
          L19_2 = 3.0
          L20_2 = L11_2
          L21_2 = {}
          L22_2 = {}
          L22_2.num = 1
          L22_2.type = "client"
          L22_2.event = "Casino:Target"
          L22_2.icon = "fas fa-chair"
          L23_2 = removePlaceholderText
          L24_2 = Translation
          L24_2 = L24_2.Get
          L25_2 = "UI_PRESS_TO_PLAY"
          L24_2 = L24_2(L25_2)
          L25_2 = " "
          L26_2 = L14_2.Title
          L27_2 = "."
          L24_2 = L24_2 .. L25_2 .. L26_2 .. L27_2
          L23_2 = L23_2(L24_2)
          L22_2.label = L23_2
          L22_2.targeticon = "fas fa-chair"
          function L23_2(A0_3, A1_3, A2_3)
            local L3_3
            L3_3 = CAN_INTERACT
            return L3_3
          end
          L22_2.canInteract = L23_2
          L23_2 = {}
          L24_2 = 255
          L25_2 = 255
          L26_2 = 255
          L27_2 = 255
          L23_2[1] = L24_2
          L23_2[2] = L25_2
          L23_2[3] = L26_2
          L23_2[4] = L27_2
          L22_2.drawColor = L23_2
          L23_2 = {}
          L24_2 = 30
          L25_2 = 144
          L26_2 = 255
          L27_2 = 255
          L23_2[1] = L24_2
          L23_2[2] = L25_2
          L23_2[3] = L26_2
          L23_2[4] = L27_2
          L22_2.successDrawColor = L23_2
          L22_2.eventAction = "rl_enter"
          L22_2.entity = L9_2
          L22_2.color = L12_2
          L23_2 = {}
          L23_2.num = 2
          L23_2.type = "client"
          L23_2.event = "Casino:Target"
          L23_2.icon = "fas fa-circle-info"
          L24_2 = Translation
          L24_2 = L24_2.Get
          L25_2 = "ABOUT"
          L24_2 = L24_2(L25_2)
          L23_2.label = L24_2
          L23_2.targeticon = "fas fa-chair"
          function L24_2(A0_3, A1_3, A2_3)
            local L3_3
            L3_3 = CAN_INTERACT
            return L3_3
          end
          L23_2.canInteract = L24_2
          L24_2 = {}
          L25_2 = 255
          L26_2 = 255
          L27_2 = 255
          L28_2 = 255
          L24_2[1] = L25_2
          L24_2[2] = L26_2
          L24_2[3] = L27_2
          L24_2[4] = L28_2
          L23_2.drawColor = L24_2
          L24_2 = {}
          L25_2 = 30
          L26_2 = 144
          L27_2 = 255
          L28_2 = 255
          L24_2[1] = L25_2
          L24_2[2] = L26_2
          L24_2[3] = L27_2
          L24_2[4] = L28_2
          L23_2.successDrawColor = L24_2
          L23_2.eventAction = "rl_info"
          L23_2.entity = L9_2
          L23_2.color = L12_2
          L21_2[1] = L22_2
          L21_2[2] = L23_2
          L16_2(L17_2, L18_2, L19_2, L20_2, L21_2)
          L16_2 = table
          L16_2 = L16_2.insert
          L17_2 = L0_2
          L18_2 = L13_2
          L16_2(L17_2, L18_2)
        end
      end
    end
  end
  L4_2 = {}
  L5_2 = pairs
  L6_2 = L0_2
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = table
    L11_2 = L11_2.insert
    L12_2 = L4_2
    L13_2 = L10_2.coords
    L11_2(L12_2, L13_2)
  end
  L5_2 = #L4_2
  if L5_2 > 0 then
    L5_2 = TriggerServerEvent
    L6_2 = "Roulette:GetSessions"
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
  end
  return L0_2
end
Roulette_RescanTables = L56_1
function L56_1()
  local L0_2, L1_2
  L0_2 = DebugStart
  L1_2 = "Roulette_Load"
  L0_2(L1_2)
  L0_2 = Roulette_RescanTables
  L0_2()
end
Roulette_Load = L56_1
function L56_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = DebugStart
  L1_2 = "Roulette_Destroy"
  L0_2(L1_2)
  L0_2 = pairs
  L1_2 = L0_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = L5_2.destroy
    L6_2()
  end
  L0_2 = L26_1
  L0_2()
end
Roulette_Destroy = L56_1
