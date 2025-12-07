local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1, L41_1, L42_1, L43_1, L44_1, L45_1, L46_1, L47_1, L48_1, L49_1, L50_1, L51_1, L52_1, L53_1, L54_1, L55_1, L56_1, L57_1, L58_1, L59_1, L60_1, L61_1, L62_1, L63_1, L64_1, L65_1, L66_1, L67_1, L68_1, L69_1, L70_1, L71_1, L72_1, L73_1, L74_1, L75_1, L76_1, L77_1, L78_1, L79_1, L80_1, L81_1, L82_1, L83_1, L84_1, L85_1, L86_1, L87_1, L88_1, L89_1, L90_1, L91_1, L92_1, L93_1, L94_1, L95_1, L96_1, L97_1, L98_1, L99_1
L0_1 = {}
BettingMachine = L0_1
L0_1 = BettingMachine
L1_1 = BettingMachine
L0_1.__index = L1_1
L0_1 = BettingMachine
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = {}
  L3_2 = setmetatable
  L4_2 = L2_2
  L5_2 = BettingMachine
  L3_2(L4_2, L5_2)
  L2_2.screen = "BETTING_GENERIC_ORANGE"
  L2_2.id = A1_2
  L2_2.playerId = -1
  L2_2.handle = nil
  L2_2.fakeDisplay = nil
  function L3_2()
    local L0_3, L1_3
    L0_3 = L2_2.handle
    if L0_3 then
      L0_3 = L2_2.handle
      return L0_3
    end
    L0_3 = CreateScaleformHandleForLittleScreen
    L1_3 = L2_2.id
    L0_3 = L0_3(L1_3)
    L2_2.handle = L0_3
    L0_3 = L2_2.handle
    return L0_3
  end
  L2_2.createScaleformHandle = L3_2
  function L3_2()
    local L0_3, L1_3
    L0_3 = L2_2.handle
    if not L0_3 then
      return
    end
    L0_3 = DestroyScaleformHandleForLittleScreen
    L1_3 = L2_2.id
    L0_3(L1_3)
    L2_2.handle = nil
  end
  L2_2.destroyScaleformHandle = L3_2
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    if not A0_3 then
      L1_3 = DoesEntityExist
      L2_3 = L2_2.fakeDisplay
      L1_3 = L1_3(L2_3)
      if L1_3 then
        L1_3 = ForceDeleteEntity
        L2_3 = L2_2.fakeDisplay
        L1_3(L2_3)
        L2_2.fakeDisplay = nil
    end
    elseif A0_3 then
      L1_3 = DoesEntityExist
      L2_3 = L2_2.fakeDisplay
      L1_3 = L1_3(L2_3)
      if not L1_3 then
        L1_3 = vector3
        L2_3 = table
        L2_3 = L2_3.unpack
        L3_3 = horseChairs
        L4_3 = L2_2.id
        L3_3 = L3_3[L4_3]
        L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3 = L2_3(L3_3)
        L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
        L2_3 = GetHashKey
        L3_3 = L2_2.id
        L3_3 = L3_3 % 2
        if 0 == L3_3 then
          L3_3 = "rcore_it_little_screen2"
          if L3_3 then
            goto lbl_38
          end
        end
        L3_3 = "rcore_it_little_screen"
        ::lbl_38::
        L2_3 = L2_3(L3_3)
        L3_3 = HasModelLoaded
        L4_3 = L2_3
        L3_3 = L3_3(L4_3)
        if not L3_3 then
          L3_3 = RequestModelAndWait
          L4_3 = L2_3
          L3_3(L4_3)
        end
        L3_3 = A1_2
        if 1 == L3_3 then
          L3_3 = HasModelLoaded
          L4_3 = L2_3
          L3_3 = L3_3(L4_3)
          if not L3_3 then
            L3_3 = print
            L4_3 = "^1[Casino] Please install dependency `rcore_casino_assets`!^7"
            L3_3(L4_3)
          end
        end
        L3_3 = CreateObject
        L4_3 = L2_3
        L5_3 = 0
        L6_3 = 0
        L7_3 = 0
        L8_3 = false
        L9_3 = false
        L10_3 = false
        L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
        L2_2.fakeDisplay = L3_3
        L3_3 = SetEntityHeading
        L4_3 = L2_2.fakeDisplay
        L5_3 = horseDisplayCoords
        L6_3 = L2_2.id
        L5_3 = L5_3[L6_3]
        L5_3 = L5_3.heading
        L3_3(L4_3, L5_3)
        L3_3 = SetEntityCoordsNoOffset
        L4_3 = L2_2.fakeDisplay
        L5_3 = horseDisplayCoords
        L6_3 = L2_2.id
        L5_3 = L5_3[L6_3]
        L5_3 = L5_3.coords
        L3_3(L4_3, L5_3)
      end
    end
  end
  L2_2.toggleFakeDisplay = L3_2
  return L2_2
end
L0_1.create = L1_1
L0_1 = {}
L1_1 = {}
L2_1 = {}
L3_1 = false
L4_1 = -1
L5_1 = nil
L6_1 = nil
L7_1 = 0
L8_1 = {}
L9_1 = nil
L10_1 = "anim_casino_a@amb@casino@games@insidetrack@male"
L11_1 = nil
L12_1 = nil
L13_1 = -1
L14_1 = nil
L15_1 = nil
L16_1 = 0
L17_1 = nil
L18_1 = false
L19_1 = -1
L20_1 = -1
L21_1 = {}
L22_1 = -1
L23_1 = -1
L21_1[1] = L22_1
L21_1[2] = L23_1
L22_1 = nil
L23_1 = {}
L24_1 = 0.5
L25_1 = 0.5
L26_1 = 0.0
L27_1 = 0
L28_1 = 1
function L29_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = "vw_vwint01_betting_sreen_"
  L2_2 = Config
  L2_2 = L2_2.MapType
  if 5 == L2_2 then
    L1_2 = "rcore_vw_vwint01_betting_sreen_"
  else
    L2_2 = Config
    L2_2 = L2_2.MapType
    if 4 == L2_2 then
      L1_2 = "k4mb1_betting_screen_"
    end
  end
  L2_2 = string
  L2_2 = L2_2.format
  L3_2 = "%02d"
  L4_2 = A0_2 + 2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = string
  L3_2 = L3_2.format
  L4_2 = "%02d"
  L5_2 = A0_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L5_2 = L1_2
  L6_2 = L3_2
  return L4_2, L5_2, L6_2
end
function L30_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L29_1
  L2_2 = A0_2
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  L4_2 = CreateScaleformHandle
  L5_2 = "casinoscreen_"
  L6_2 = L1_2
  L5_2 = L5_2 .. L6_2
  L6_2 = L2_2
  L7_2 = L3_2
  L6_2 = L6_2 .. L7_2
  return L4_2(L5_2, L6_2)
end
CreateScaleformHandleForLittleScreen = L30_1
function L30_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L29_1
  L2_2 = A0_2
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  L4_2 = IsNamedRendertargetRegistered
  L5_2 = "casinoscreen_"
  L6_2 = L1_2
  L5_2 = L5_2 .. L6_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = ReleaseNamedRendertarget
    L5_2 = "casinoscreen_"
    L6_2 = L1_2
    L5_2 = L5_2 .. L6_2
    L4_2(L5_2)
  end
end
DestroyScaleformHandleForLittleScreen = L30_1
function L30_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = DebugStart
  L1_2 = "DeleteMainEventTimerBars"
  L0_2(L1_2)
  L0_2 = 1
  L1_2 = 3
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = TimerBar
    L4_2 = L4_2.Destroy
    L5_2 = L23_1
    L5_2 = L5_2[L3_2]
    L4_2(L5_2)
  end
  L0_2 = {}
  L23_1 = L0_2
end
function L31_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = DebugStart
  L4_2 = "CreateMainEventTimerBars"
  L3_2(L4_2)
  L3_2 = L30_1
  L3_2()
  L3_2 = L23_1
  L4_2 = TimerBar
  L4_2 = L4_2.Create
  L5_2 = TimerBar
  L5_2 = L5_2.Text
  L6_2 = Translation
  L6_2 = L6_2.Get
  L7_2 = "IT_TIMERBAR_BET"
  L6_2 = L6_2(L7_2)
  L7_2 = Config
  L7_2 = L7_2.PRICES_CURRENCY
  L8_2 = A2_2
  L7_2 = L7_2 .. L8_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2[1] = L4_2
  L3_2 = L23_1
  L4_2 = TimerBar
  L4_2 = L4_2.Create
  L5_2 = TimerBar
  L5_2 = L5_2.Text
  L6_2 = Translation
  L6_2 = L6_2.Get
  L7_2 = "IT_TIMERBAR_ODDS"
  L6_2 = L6_2(L7_2)
  L7_2 = A1_2
  L8_2 = "/1"
  L7_2 = L7_2 .. L8_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2[2] = L4_2
  L3_2 = L23_1
  L4_2 = TimerBar
  L4_2 = L4_2.Create
  L5_2 = TimerBar
  L5_2 = L5_2.Text
  L6_2 = Translation
  L6_2 = L6_2.Get
  L7_2 = "IT_TIMERBAR_HORSE"
  L6_2 = L6_2(L7_2)
  L7_2 = A0_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2[3] = L4_2
  L3_2 = 1
  L4_2 = 3
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L23_1
    L7_2 = L7_2[L6_2]
    L7_2 = L7_2.setTextColor
    L8_2 = {}
    L9_2 = 255
    L10_2 = 255
    L11_2 = 255
    L12_2 = 255
    L8_2[1] = L9_2
    L8_2[2] = L10_2
    L8_2[3] = L11_2
    L8_2[4] = L12_2
    L7_2(L8_2)
  end
end
function L32_1(A0_2)
  local L1_2, L2_2
  L1_2 = DebugStart
  L2_2 = "GetHorses"
  L1_2(L2_2)
  if 0 == A0_2 then
    L1_2 = L1_1.horses
    return L1_2
  else
    L1_2 = L2_1.horses
    return L1_2
  end
end
function L33_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = DebugStart
  L2_2 = "GetClosestChair"
  L1_2(L2_2)
  if A0_2 then
    return A0_2
  end
  L1_2 = -1
  L2_2 = 10
  L3_2 = Config
  L3_2 = L3_2.UseTarget
  if L3_2 then
    L3_2 = 5.01
    if L3_2 then
      goto lbl_17
    end
  end
  L3_2 = 1.45
  ::lbl_17::
  L4_2 = 1
  L5_2 = 16
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = horseChairs
    L8_2 = L8_2[L7_2]
    L9_2 = GetPlayerPosition
    L9_2 = L9_2()
    L10_2 = vector3
    L11_2 = L8_2[1]
    L12_2 = L8_2[2]
    L13_2 = L8_2[3]
    L10_2 = L10_2(L11_2, L12_2, L13_2)
    L9_2 = L9_2 - L10_2
    L9_2 = #L9_2
    if L3_2 > L9_2 and L2_2 > L9_2 then
      L1_2 = L7_2
      L2_2 = L9_2
    end
  end
  return L1_2
end
function L34_1(A0_2)
  local L1_2, L2_2
  L1_2 = DebugStart
  L2_2 = "IsClosestChairFree"
  L1_2(L2_2)
  L1_2 = L33_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = -1 == L1_2
  return L2_2
end
function L35_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = DebugStart
  L3_2 = "MakeAnimationTimeout"
  L2_2(L3_2)
  L2_2 = GetAnimDuration
  L3_2 = L10_1
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  L2_2 = L2_2 * 1000
  if L2_2 < 1 then
    L3_2 = print
    L4_2 = "[Casino] The animation "
    L5_2 = A0_2
    L6_2 = " is too short: "
    L7_2 = tostring
    L8_2 = L10_1
    L7_2 = L7_2(L8_2)
    L8_2 = "^7"
    L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2
    L3_2(L4_2)
  end
  L3_2 = GAME_TIMER
  L3_2 = L3_2 + L2_2
  L16_1 = L3_2
  L3_2 = A1_2 or L3_2
  if nil == A1_2 or not A1_2 then
    L3_2 = A0_2
  end
  L15_1 = L3_2
end
function L36_1(A0_2)
  local L1_2, L2_2
  L1_2 = DebugStart
  L2_2 = "StartMachineAnimationScene"
  L1_2(L2_2)
  L17_1 = A0_2
  L1_2 = L35_1
  L2_2 = A0_2
  L1_2(L2_2)
end
function L37_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L15_1
  L1_2 = L15_1
  L2_2 = L1_2
  L1_2 = L1_2.startswith
  L3_2 = A0_2
  L1_2 = nil ~= L1_2 and L1_2
  return L1_2
end
function L38_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = DebugStart
  L1_2 = "Animation_StartPlaying"
  L0_2(L1_2)
  L0_2 = L37_1
  L1_2 = "readyidle_to_playidle"
  L0_2 = L0_2(L1_2)
  if not L0_2 then
    L0_2 = L37_1
    L1_2 = "playidle_var"
    L0_2 = L0_2(L1_2)
    if not L0_2 then
      goto lbl_15
    end
  end
  do return end
  ::lbl_15::
  L0_2 = "readyidle_to_playidle_var_0"
  L1_2 = RandomNumber
  L2_2 = 1
  L3_2 = 3
  L1_2 = L1_2(L2_2, L3_2)
  L0_2 = L0_2 .. L1_2
  L1_2 = L36_1
  L2_2 = L0_2
  L1_2(L2_2)
end
function L39_1()
  local L0_2, L1_2
  L0_2 = DebugStart
  L1_2 = "Animation_StopPlaying"
  L0_2(L1_2)
  L0_2 = L37_1
  L1_2 = "playidle"
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = L36_1
    L1_2 = "playidle_to_readyidle"
    L0_2(L1_2)
  else
    L0_2 = L36_1
    L1_2 = "readyidle"
    L0_2(L1_2)
  end
end
function L40_1()
  local L0_2, L1_2
  L0_2 = DebugStart
  L1_2 = "Animation_StartPlayWatching"
  L0_2(L1_2)
  L0_2 = L36_1
  L1_2 = "playidle_to_playwatchidle"
  L0_2(L1_2)
end
function L41_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = DebugStart
  L1_2 = "Animation_StartWatching"
  L0_2(L1_2)
  L0_2 = nil
  L1_2 = L37_1
  L2_2 = "playidle"
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = GetRandomItem
    L2_2 = {}
    L3_2 = "playidle_to_watchidle"
    L4_2 = "playidle_to_watchidle_a"
    L5_2 = "playidle_to_watchidle_b"
    L2_2[1] = L3_2
    L2_2[2] = L4_2
    L2_2[3] = L5_2
    L1_2 = L1_2(L2_2)
    L0_2 = L1_2
  else
    L1_2 = GetRandomItem
    L2_2 = {}
    L3_2 = "readyidle_to_watchidle_a"
    L4_2 = "readyidle_to_watchidle_b"
    L2_2[1] = L3_2
    L2_2[2] = L4_2
    L1_2 = L1_2(L2_2)
    L0_2 = L1_2
  end
  L1_2 = L36_1
  L2_2 = L0_2
  L1_2(L2_2)
end
function L42_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = DebugStart
  L1_2 = "Animation_StartWatchingCrazy"
  L0_2(L1_2)
  L0_2 = L37_1
  L1_2 = "watchidle_a_to_watch"
  L0_2 = L0_2(L1_2)
  if not L0_2 then
    L0_2 = L37_1
    L1_2 = "watch_loop"
    L0_2 = L0_2(L1_2)
    if not L0_2 then
      L0_2 = L37_1
      L1_2 = "watch_win_"
      L0_2 = L0_2(L1_2)
      if not L0_2 then
        L0_2 = L37_1
        L1_2 = "watch_lose_"
        L0_2 = L0_2(L1_2)
        if not L0_2 then
          L0_2 = GetRandomItem
          L1_2 = {}
          L2_2 = "watchidle_a_to_watch_loop_a"
          L3_2 = "watchidle_b_to_watch_loop_b"
          L1_2[1] = L2_2
          L1_2[2] = L3_2
          L0_2 = L0_2(L1_2)
          L1_2 = L36_1
          L2_2 = L0_2
          L1_2(L2_2)
        end
      end
    end
  end
end
function L43_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = DebugStart
  L2_2 = "Animation_PlayWatchingReaction"
  L1_2(L2_2)
  L1_2 = nil
  if A0_2 then
    L2_2 = GetRandomItem
    L3_2 = {}
    L4_2 = "playwatch_win_a"
    L5_2 = "playwatch_win_b"
    L6_2 = "playwatch_win_c"
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L3_2[3] = L6_2
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2
  else
    L2_2 = GetRandomItem
    L3_2 = {}
    L4_2 = "playwatch_lose_a"
    L5_2 = "playwatch_lose_b"
    L6_2 = "playwatch_lose_c"
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L3_2[3] = L6_2
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2
  end
  L2_2 = L36_1
  L3_2 = L1_2
  L2_2(L3_2)
end
function L44_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = DebugStart
  L2_2 = "Animation_WatchingReaction"
  L1_2(L2_2)
  L1_2 = nil
  if A0_2 then
    L2_2 = GetRandomItem
    L3_2 = {}
    L4_2 = "watch_win_a"
    L5_2 = "watch_win_b"
    L6_2 = "watch_win_c"
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L3_2[3] = L6_2
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2
  else
    L2_2 = GetRandomItem
    L3_2 = {}
    L4_2 = "watch_lose_a"
    L5_2 = "watch_lose_b"
    L6_2 = "watch_lose_c"
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L3_2[3] = L6_2
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2
  end
  L2_2 = L36_1
  L3_2 = L1_2
  L2_2(L3_2)
end
function L45_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = DebugStart
  L2_2 = "Animation_Reaction"
  L1_2(L2_2)
  if A0_2 then
    L1_2 = "positive_react"
    if L1_2 then
      goto lbl_10
    end
  end
  L1_2 = "negative_react"
  ::lbl_10::
  L2_2 = L36_1
  L3_2 = L1_2
  L2_2(L3_2)
end
function L46_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = DebugStart
  L1_2 = "UpdateAnimationSteps"
  L0_2(L1_2)
  L0_2 = IsAnimationInProgress
  L0_2 = L0_2()
  if L0_2 then
    return
  end
  L0_2 = L15_1
  L1_2 = L37_1
  L2_2 = "enter_"
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = L15_1
    if "readyidle" ~= L1_2 then
      L1_2 = L15_1
      if "playidle_to_readyidle" ~= L1_2 then
        L1_2 = L15_1
        if "positive_react" ~= L1_2 then
          L1_2 = L15_1
          if "negative_react" ~= L1_2 then
            L1_2 = L37_1
            L2_2 = "readyidle_v"
            L1_2 = L1_2(L2_2)
            if not L1_2 then
              L1_2 = L37_1
              L2_2 = "watch_win_"
              L1_2 = L1_2(L2_2)
              if not L1_2 then
                L1_2 = L37_1
                L2_2 = "watch_lose_"
                L1_2 = L1_2(L2_2)
                if not L1_2 then
                  goto lbl_52
                end
              end
            end
          end
        end
      end
    end
  end
  L1_2 = GetRandomItem
  L2_2 = {}
  L3_2 = "readyidle"
  L4_2 = "readyidle_var_01"
  L5_2 = "readyidle_var_02"
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L2_2[3] = L5_2
  L1_2 = L1_2(L2_2)
  L0_2 = L1_2
  goto lbl_210
  ::lbl_52::
  L1_2 = L37_1
  L2_2 = "readyidle_to_playidle_var_0"
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = "playidle_var_0"
    L2_2 = RandomNumber
    L3_2 = 1
    L4_2 = 2
    L2_2 = L2_2(L3_2, L4_2)
    L1_2 = L1_2 .. L2_2
    L0_2 = L1_2
  else
    L1_2 = L37_1
    L2_2 = "playidle_var_0"
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = "playidle_var_0"
      L2_2 = RandomNumber
      L3_2 = 1
      L4_2 = 2
      L2_2 = L2_2(L3_2, L4_2)
      L1_2 = L1_2 .. L2_2
      L0_2 = L1_2
    else
      L1_2 = L37_1
      L2_2 = "playidle_to_playwatchidle"
      L1_2 = L1_2(L2_2)
      if not L1_2 then
        L1_2 = L37_1
        L2_2 = "playwatch_loop"
        L1_2 = L1_2(L2_2)
        if not L1_2 then
          goto lbl_98
        end
      end
      L1_2 = GetRandomItem
      L2_2 = {}
      L3_2 = "playwatch_loop"
      L4_2 = "playwatch_loop_var_01"
      L5_2 = "playwatch_loop_var_02"
      L2_2[1] = L3_2
      L2_2[2] = L4_2
      L2_2[3] = L5_2
      L1_2 = L1_2(L2_2)
      L0_2 = L1_2
      goto lbl_210
      ::lbl_98::
      L1_2 = L37_1
      L2_2 = "playwatch_lose_"
      L1_2 = L1_2(L2_2)
      if not L1_2 then
        L1_2 = L37_1
        L2_2 = "playwatch_win_"
        L1_2 = L1_2(L2_2)
        if not L1_2 then
          goto lbl_110
        end
      end
      L0_2 = "readyidle"
      goto lbl_210
      ::lbl_110::
      L1_2 = L15_1
      if "playidle_to_watchidle_a" ~= L1_2 then
        L1_2 = L15_1
        if "readyidle_to_watchidle_a" ~= L1_2 then
          L1_2 = L37_1
          L2_2 = "watchidle_a_var"
          L1_2 = L1_2(L2_2)
          if not L1_2 then
            goto lbl_131
          end
        end
      end
      L1_2 = GetRandomItem
      L2_2 = {}
      L3_2 = "watchidle_a_var_01"
      L4_2 = "watchidle_a_var_02"
      L5_2 = "watchidle_a_var_03"
      L2_2[1] = L3_2
      L2_2[2] = L4_2
      L2_2[3] = L5_2
      L1_2 = L1_2(L2_2)
      L0_2 = L1_2
      goto lbl_210
      ::lbl_131::
      L1_2 = L15_1
      if "playidle_to_watchidle_b" ~= L1_2 then
        L1_2 = L15_1
        if "readyidle_to_watchidle_b" ~= L1_2 then
          L1_2 = L37_1
          L2_2 = "watchidle_b_var"
          L1_2 = L1_2(L2_2)
          if not L1_2 then
            goto lbl_152
          end
        end
      end
      L1_2 = GetRandomItem
      L2_2 = {}
      L3_2 = "watchidle_b_var_01"
      L4_2 = "watchidle_b_var_02"
      L5_2 = "watchidle_b_var_03"
      L2_2[1] = L3_2
      L2_2[2] = L4_2
      L2_2[3] = L5_2
      L1_2 = L1_2(L2_2)
      L0_2 = L1_2
      goto lbl_210
      ::lbl_152::
      L1_2 = L37_1
      L2_2 = "playidle_to_watchidle"
      L1_2 = L1_2(L2_2)
      if not L1_2 then
        L1_2 = L37_1
        L2_2 = "readyidle_to_watchidle"
        L1_2 = L1_2(L2_2)
        if not L1_2 then
          goto lbl_175
        end
      end
      L1_2 = GetRandomItem
      L2_2 = {}
      L3_2 = "watchidle_a_var_01"
      L4_2 = "watchidle_a_var_02"
      L5_2 = "watchidle_a_var_03"
      L6_2 = "watchidle_b_var_01"
      L7_2 = "watchidle_b_var_02"
      L8_2 = "watchidle_b_var_03"
      L2_2[1] = L3_2
      L2_2[2] = L4_2
      L2_2[3] = L5_2
      L2_2[4] = L6_2
      L2_2[5] = L7_2
      L2_2[6] = L8_2
      L1_2 = L1_2(L2_2)
      L0_2 = L1_2
      goto lbl_210
      ::lbl_175::
      L1_2 = L15_1
      if "watchidle_a_to_watch_loop_a" ~= L1_2 then
        L1_2 = L37_1
        L2_2 = "watch_loop_a"
        L1_2 = L1_2(L2_2)
        if not L1_2 then
          goto lbl_193
        end
      end
      L1_2 = GetRandomItem
      L2_2 = {}
      L3_2 = "watch_loop_a"
      L4_2 = "watch_loop_a_var_01"
      L5_2 = "watch_loop_a_var_02"
      L2_2[1] = L3_2
      L2_2[2] = L4_2
      L2_2[3] = L5_2
      L1_2 = L1_2(L2_2)
      L0_2 = L1_2
      goto lbl_210
      ::lbl_193::
      L1_2 = L15_1
      if "watchidle_b_to_watch_loop_b" ~= L1_2 then
        L1_2 = L37_1
        L2_2 = "watch_loop_b"
        L1_2 = L1_2(L2_2)
        if not L1_2 then
          goto lbl_210
        end
      end
      L1_2 = GetRandomItem
      L2_2 = {}
      L3_2 = "watch_loop_b"
      L4_2 = "watch_loop_b_var_01"
      L5_2 = "watch_loop_b_var_02"
      L2_2[1] = L3_2
      L2_2[2] = L4_2
      L2_2[3] = L5_2
      L1_2 = L1_2(L2_2)
      L0_2 = L1_2
    end
  end
  ::lbl_210::
  L1_2 = L36_1
  L2_2 = L0_2
  L1_2(L2_2)
end
function L47_1()
  local L0_2, L1_2
  L0_2 = DebugStart
  L1_2 = "ResetSession"
  L0_2(L1_2)
  L0_2 = -1
  L13_1 = L0_2
  L0_2 = nil
  L14_1 = L0_2
  L0_2 = nil
  L15_1 = L0_2
  L0_2 = 0
  L16_1 = L0_2
end
function L48_1(A0_2)
  local L1_2, L2_2
  L1_2 = DebugStart
  L2_2 = "DestroySound"
  L1_2(L2_2)
  if -1 ~= A0_2 then
    L1_2 = StopSound
    L2_2 = A0_2
    L1_2(L2_2)
    L1_2 = ReleaseSoundId
    L2_2 = A0_2
    L1_2(L2_2)
  end
end
function L49_1()
  local L0_2, L1_2
  L0_2 = DebugStart
  L1_2 = "BlockedFromEntering"
  L0_2(L1_2)
  L0_2 = L14_1
  if nil ~= L0_2 then
    L0_2 = NetworkStopSynchronisedScene
    L1_2 = L14_1
    L0_2(L1_2)
    L0_2 = DisposeSynchronizedScene
    L1_2 = L14_1
    L0_2(L1_2)
    L0_2 = nil
    L14_1 = L0_2
  end
  L0_2 = ClearPedTasks
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L0_2(L1_2)
  L0_2 = ClearPedSecondaryTask
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L0_2(L1_2)
  L0_2 = L47_1
  L0_2()
end
function L50_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = DebugStart
  L1_2 = "RedrawInstructionalButtons"
  L0_2(L1_2)
  L0_2 = L13_1
  if -1 ~= L0_2 then
    L0_2 = CAN_INTERACT
    if L0_2 then
      goto lbl_14
    end
  end
  L0_2 = PushNUIInstructionalButtons
  L1_2 = nil
  L0_2(L1_2)
  do return end
  ::lbl_14::
  L0_2 = L6_1
  if nil ~= L0_2 then
    L0_2 = L19_1
    if 3 ~= L0_2 then
      L0_2 = L19_1
      if 4 ~= L0_2 then
        L0_2 = PushNUIInstructionalButtons
        L1_2 = nil
        L0_2(L1_2)
        return
      end
    end
  end
  L0_2 = nil
  L1_2 = L19_1
  if 3 ~= L1_2 then
    L1_2 = L19_1
    if 4 ~= L1_2 then
      goto lbl_57
    end
  end
  L1_2 = {}
  L2_2 = {}
  L2_2.key = 177
  L3_2 = Translation
  L3_2 = L3_2.Get
  L4_2 = "IT_BTN_LEAVE"
  L3_2 = L3_2(L4_2)
  L2_2.title = L3_2
  L3_2 = {}
  L4_2 = GameplayKeys
  L4_2 = L4_2.TableGamesMaxBet
  L3_2.key = L4_2
  L4_2 = Translation
  L4_2 = L4_2.Get
  L5_2 = "ROULETTE_BTN_MAX_BET"
  L4_2 = L4_2(L5_2)
  L3_2.title = L4_2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L0_2 = L1_2
  goto lbl_94
  ::lbl_57::
  L1_2 = {}
  L2_2 = {}
  L2_2.key = 177
  L3_2 = Translation
  L3_2 = L3_2.Get
  L4_2 = "IT_BTN_LEAVE"
  L3_2 = L3_2(L4_2)
  L2_2.title = L3_2
  L3_2 = {}
  L3_2.key = 176
  L4_2 = L6_1
  if nil == L4_2 then
    L4_2 = Translation
    L4_2 = L4_2.Get
    L5_2 = "IT_BTN_OPEN_CONSOLE"
    L4_2 = L4_2(L5_2)
    if L4_2 then
      goto lbl_83
    end
  end
  L4_2 = Translation
  L4_2 = L4_2.Get
  L5_2 = "IT_BTN_CLOSE_CONSOLE"
  L4_2 = L4_2(L5_2)
  ::lbl_83::
  L3_2.title = L4_2
  L4_2 = {}
  L4_2.key = 193
  L5_2 = Translation
  L5_2 = L5_2.Get
  L6_2 = "IT_BTN_TOGGLE_MAIN_CAM"
  L5_2 = L5_2(L6_2)
  L4_2.title = L5_2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L0_2 = L1_2
  ::lbl_94::
  L1_2 = PushNUIInstructionalButtons
  L2_2 = L0_2
  L1_2(L2_2)
end
function L51_1()
  local L0_2, L1_2, L2_2
  L0_2 = DebugStart
  L1_2 = "TempHideInstructionalButtons"
  L0_2(L1_2)
  L0_2 = PushNUIInstructionalButtons
  L1_2 = nil
  L0_2(L1_2)
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3
    L0_3 = Wait
    L1_3 = 500
    L0_3(L1_3)
    while true do
      L0_3 = CAN_INTERACT
      if L0_3 then
        break
      end
      L0_3 = IN_CASINO
      if not L0_3 then
        break
      end
      L0_3 = INSIDE_TRACK
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 33
      L0_3(L1_3)
    end
    L0_3 = L50_1
    L0_3()
  end
  L2_2 = "Redraw Instructional Buttons"
  L0_2(L1_2, L2_2)
end
function L52_1()
  local L0_2, L1_2, L2_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3
    while true do
      L0_3 = IN_CASINO
      if not L0_3 then
        break
      end
      L0_3 = INSIDE_TRACK
      if not L0_3 then
        break
      end
      L0_3 = L13_1
      if -1 == L0_3 then
        break
      end
      L0_3 = DisableESCThisFrame
      L0_3()
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
    end
  end
  L2_2 = "Disabling ESC this frame"
  L0_2(L1_2, L2_2)
end
function L53_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = DebugStart
  L2_2 = "EnterMachine"
  L1_2(L2_2)
  L1_2 = L0_1
  L1_2 = L1_2[A0_2]
  if nil == L1_2 then
    return
  end
  L1_2 = L13_1
  if -1 ~= L1_2 then
    return
  end
  L1_2 = L0_1
  L1_2 = L1_2[A0_2]
  L1_2 = L1_2.playerId
  if -1 ~= L1_2 then
    return
  end
  L1_2 = BlockPlayerInteraction
  L2_2 = 3000
  L1_2(L2_2)
  L1_2 = L51_1
  L1_2()
  L1_2 = SetInventoryBusy
  L2_2 = true
  L1_2(L2_2)
  L1_2 = vector3
  L2_2 = horseChairs
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2[1]
  L3_2 = horseChairs
  L3_2 = L3_2[A0_2]
  L3_2 = L3_2[2]
  L4_2 = horseChairs
  L4_2 = L4_2[A0_2]
  L4_2 = L4_2[3]
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L11_1 = L1_2
  L1_2 = vector3
  L2_2 = 0
  L3_2 = 0
  L4_2 = horseChairsHeading
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L12_1 = L1_2
  L13_1 = A0_2
  L1_2 = "anim_casino_a@amb@casino@games@insidetrack@"
  L2_2 = IsPedMale
  L3_2 = PlayerPedId
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L3_2()
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  if L2_2 then
    L2_2 = "male"
    if L2_2 then
      goto lbl_57
    end
  end
  L2_2 = "female"
  ::lbl_57::
  L1_2 = L1_2 .. L2_2
  L10_1 = L1_2
  L1_2 = RequestAnimDictAndWait
  L2_2 = L10_1
  L1_2(L2_2)
  L1_2 = GetPlayerPosition
  L1_2 = L1_2()
  L2_2 = getClosestAnimation
  L3_2 = L1_2
  L4_2 = L11_1
  L5_2 = L12_1
  L6_2 = L10_1
  L7_2 = {}
  L8_2 = "enter_left_readyidle"
  L9_2 = "enter_left_readyidle_short"
  L10_2 = "enter_right_readyidle"
  L11_2 = "enter_right_readyidle_short"
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L7_2[3] = L10_2
  L7_2[4] = L11_2
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = L36_1
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L14_1 = L3_2
  L3_2 = L52_1
  L3_2()
  L3_2 = SetCurrentPedWeapon
  L4_2 = PlayerPedId
  L4_2 = L4_2()
  L5_2 = GetHashKey
  L6_2 = "weapon_unarmed"
  L5_2 = L5_2(L6_2)
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = TriggerServerEvent
  L4_2 = "InsideTrack:EnterMachine"
  L5_2 = L13_1
  L3_2(L4_2, L5_2)
  L3_2 = Stats_StartActivity
  L4_2 = "track"
  L3_2(L4_2)
end
function L54_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = DebugStart
  L1_2 = "LeaveMachine"
  L0_2(L1_2)
  L0_2 = L13_1
  if -1 == L0_2 then
    return
  end
  L0_2 = ForgotLastInteractionEntity
  L0_2()
  L0_2 = ForgotLastStartedGameType
  L1_2 = "insidetrack"
  L0_2(L1_2)
  L0_2 = L22_1
  if nil ~= L0_2 then
    L0_2 = DestroyCam
    L1_2 = L22_1
    L0_2(L1_2)
    L0_2 = RenderScriptCams
    L1_2 = false
    L2_2 = 900
    L3_2 = 900
    L4_2 = true
    L5_2 = false
    L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
  end
  L0_2 = BlockPlayerInteraction
  L1_2 = 3000
  L0_2(L1_2)
  L0_2 = L36_1
  L1_2 = GetRandomItem
  L2_2 = {}
  L3_2 = "exit_left"
  L4_2 = "exit_right"
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L1_2, L2_2, L3_2, L4_2, L5_2 = L1_2(L2_2)
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
  L1_2 = L47_1
  L1_2()
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = Wait
    L1_3 = 2700
    L0_3(L1_3)
    L0_3 = Stats_EndActivity
    L0_3()
    L0_3 = InfoPanel_UpdateNotification
    L1_3 = nil
    L0_3(L1_3)
    L0_3 = PushNUIInstructionalButtons
    L1_3 = nil
    L0_3(L1_3)
    L0_3 = NetworkStopSynchronisedScene
    L1_3 = L0_2
    L0_3(L1_3)
    L0_3 = DisposeSynchronizedScene
    L1_3 = L0_2
    L0_3(L1_3)
    L0_3 = DestroyActualAnimationScene
    L0_3()
    L0_3 = SetEntityCollision
    L1_3 = PlayerPedId
    L1_3 = L1_3()
    L2_3 = true
    L3_3 = true
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = FreezeEntityPosition
    L1_3 = PlayerPedId
    L1_3 = L1_3()
    L2_3 = false
    L0_3(L1_3, L2_3)
    L0_3 = ClearPedTasks
    L1_3 = PlayerPedId
    L1_3, L2_3, L3_3 = L1_3()
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = ClearPedSecondaryTask
    L1_3 = PlayerPedId
    L1_3, L2_3, L3_3 = L1_3()
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = ScenePed_AnnounceEnd
    L0_3()
    L0_3 = SetInventoryBusy
    L1_3 = false
    L0_3(L1_3)
  end
  L3_2 = "stop the leaving animation"
  L1_2(L2_2, L3_2)
  L1_2 = TriggerServerEvent
  L2_2 = "InsideTrack:LeaveMachine"
  L1_2(L2_2)
end
function L55_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = DebugStart
  L1_2 = "CreateMachineInstances"
  L0_2(L1_2)
  L0_2 = L0_1
  L0_2 = #L0_2
  if 0 == L0_2 then
    L0_2 = 1
    L1_2 = 16
    L2_2 = 1
    for L3_2 = L0_2, L1_2, L2_2 do
      L4_2 = L0_1
      L5_2 = BettingMachine
      L6_2 = L5_2
      L5_2 = L5_2.create
      L7_2 = L3_2
      L5_2 = L5_2(L6_2, L7_2)
      L4_2[L3_2] = L5_2
    end
  end
  L0_2 = 1
  L1_2 = 16
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = L0_1
    L4_2 = L4_2[L3_2]
    L4_2 = L4_2.toggleFakeDisplay
    L5_2 = true
    L4_2(L5_2)
  end
end
function L56_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = DebugStart
  L1_2 = "InsideTrack_GetClosestChairState"
  L0_2(L1_2)
  L0_2 = nil
  L1_2 = false
  L2_2 = L13_1
  if -1 == L2_2 then
    L2_2 = L33_1
    L2_2 = L2_2()
    if -1 ~= L2_2 then
      L3_2 = L0_1
      L3_2 = L3_2[L2_2]
      if nil ~= L3_2 then
        L3_2 = vector3
        L4_2 = horseChairs
        L4_2 = L4_2[L2_2]
        L4_2 = L4_2[1]
        L5_2 = horseChairs
        L5_2 = L5_2[L2_2]
        L5_2 = L5_2[2]
        L6_2 = horseChairs
        L6_2 = L6_2[L2_2]
        L6_2 = L6_2[3]
        L3_2 = L3_2(L4_2, L5_2, L6_2)
        L0_2 = L3_2
        L3_2 = L0_1
        L3_2 = L3_2[L2_2]
        L3_2 = L3_2.playerId
        if -1 ~= L3_2 then
          L1_2 = true
        end
      end
    end
  end
  L2_2 = L0_2
  L3_2 = L1_2
  return L2_2, L3_2
end
InsideTrack_GetClosestChairState = L56_1
function L56_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = DebugStart
  L2_2 = "StartEntering"
  L1_2(L2_2)
  L1_2 = CAN_INTERACT
  if not L1_2 then
    return
  end
  L1_2 = L13_1
  if -1 == L1_2 then
    L1_2 = L33_1
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if -1 ~= L1_2 then
      L2_2 = L0_1
      L2_2 = L2_2[L1_2]
      if nil ~= L2_2 then
        L2_2 = L0_1
        L2_2 = L2_2[L1_2]
        L2_2 = L2_2.playerId
        if -1 == L2_2 then
          L2_2 = L53_1
          L3_2 = L1_2
          L2_2(L3_2)
          L2_2 = RequestPlayerChips
          L2_2()
        end
      end
    end
  end
end
function L57_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L0_2 = DebugStart
  L1_2 = "DrawDisplays"
  L0_2(L1_2)
  L0_2 = L0_1
  L0_2 = #L0_2
  if 0 == L0_2 then
    return
  end
  L0_2 = SetScriptGfxAlign
  L1_2 = 73
  L2_2 = 73
  L0_2(L1_2, L2_2)
  L0_2 = SetScriptGfxDrawOrder
  L1_2 = 4
  L0_2(L1_2)
  L0_2 = 1
  L1_2 = 16
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = L0_1
    L4_2 = L4_2[L3_2]
    if L4_2 then
      L4_2 = L0_1
      L4_2 = L4_2[L3_2]
      L4_2 = L4_2.handle
      if L4_2 then
        L4_2 = SetTextRenderId
        L5_2 = L0_1
        L5_2 = L5_2[L3_2]
        L5_2 = L5_2.handle
        L4_2(L5_2)
        L4_2 = SetScriptGfxDrawBehindPausemenu
        L5_2 = true
        L4_2(L5_2)
        L4_2 = DrawInteractiveSprite
        L5_2 = "Prop_Screen_VW_InsideTrack"
        L6_2 = L0_1
        L6_2 = L6_2[L3_2]
        L6_2 = L6_2.screen
        L7_2 = 0.5
        L8_2 = 0.5
        L9_2 = 1.0
        L10_2 = 1.0
        L11_2 = 0.0
        L12_2 = 255
        L13_2 = 255
        L14_2 = 255
        L15_2 = 255
        L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
      end
    end
  end
  L0_2 = SetTextRenderId
  L1_2 = GetDefaultScriptRendertargetRenderId
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L1_2()
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L0_2 = ResetScriptGfxAlign
  L0_2()
end
function L58_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = DebugStart
  L3_2 = "EditActualBetting"
  L2_2(L3_2)
  L2_2 = Config
  L2_2 = L2_2.IT_LOCAL_RACE_MAX_BET
  L3_2 = Config
  L3_2 = L3_2.IT_LOCAL_RACE_MIN_BET
  if 1 == A1_2 then
    L4_2 = Config
    L2_2 = L4_2.IT_MAIN_EVENT_RACE_MAX_BET
    L4_2 = Config
    L3_2 = L4_2.IT_MAIN_EVENT_RACE_MIN_BET
  end
  L4_2 = L8_1.bet
  if A0_2 > 0 then
    L5_2 = GetHigherBetStepOf
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    L4_2 = L5_2
  else
    L5_2 = GetLowerBetStepOf
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    L4_2 = L5_2
  end
  L5_2 = Clamp
  L6_2 = L4_2
  L7_2 = L3_2
  L8_2 = L2_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L5_2 = Clamp
  L6_2 = L4_2
  L7_2 = L3_2
  L8_2 = PLAYER_CHIPS
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L8_1.bet = L4_2
end
function L59_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = DebugStart
  L1_2 = "UpdateBetValues"
  L0_2(L1_2)
  L0_2 = L8_1.bet
  L1_2 = GetGainFromBet
  L2_2 = L8_1.horseId
  L3_2 = L0_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = BeginScaleformMovieMethod
  L3_2 = L6_1
  L4_2 = "SET_BETTING_VALUES"
  L2_2(L3_2, L4_2)
  L2_2 = ScaleformMovieMethodAddParamInt
  L3_2 = L8_1.horse
  L2_2(L3_2)
  L2_2 = PushScaleformMovieMethodParameterString
  L3_2 = CommaValue
  L4_2 = L0_2
  L3_2, L4_2 = L3_2(L4_2)
  L2_2(L3_2, L4_2)
  L2_2 = PushScaleformMovieMethodParameterString
  L3_2 = CommaValue
  L4_2 = PLAYER_CHIPS
  L3_2, L4_2 = L3_2(L4_2)
  L2_2(L3_2, L4_2)
  L2_2 = PushScaleformMovieMethodParameterString
  L3_2 = CommaValue
  L4_2 = L1_2
  L3_2, L4_2 = L3_2(L4_2)
  L2_2(L3_2, L4_2)
  L2_2 = EndScaleformMovieMethod
  L2_2()
end
function L60_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = DebugStart
  L2_2 = "ResetBettingValues"
  L1_2(L2_2)
  L1_2 = 0
  L2_2 = Config
  L2_2 = L2_2.IT_LOCAL_RACE_MIN_BET
  L3_2 = 0
  if 1 == A0_2 then
    L4_2 = Config
    L2_2 = L4_2.IT_MAIN_EVENT_RACE_MIN_BET
  end
  if 1 == A0_2 then
    L4_2 = L9_1
    if nil ~= L4_2 then
      L4_2 = L2_1.roundId
      L5_2 = L9_1.roundid
      if L4_2 == L5_2 then
        L1_2 = L9_1.horse
        L2_2 = L9_1.bet
        L3_2 = L9_1.potentialwinnings
        L4_2 = PushScaleformBool
        L5_2 = L6_1
        L6_2 = "SET_BETTING_ENABLED"
        L7_2 = false
        L4_2(L5_2, L6_2, L7_2)
      end
    end
  end
  L4_2 = BeginScaleformMovieMethod
  L5_2 = L6_1
  L6_2 = "SET_BETTING_VALUES"
  L4_2(L5_2, L6_2)
  L4_2 = ScaleformMovieMethodAddParamInt
  L5_2 = L1_2
  L4_2(L5_2)
  L4_2 = ScaleformMovieMethodAddParamInt
  L5_2 = L2_2
  L4_2(L5_2)
  L4_2 = ScaleformMovieMethodAddParamInt
  L5_2 = PLAYER_CHIPS
  L4_2(L5_2)
  L4_2 = ScaleformMovieMethodAddParamInt
  L5_2 = L3_2
  L4_2(L5_2)
  L4_2 = EndScaleformMovieMethod
  L4_2()
end
function L61_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = DebugStart
  L3_2 = "AddPlayerToLeaderboard"
  L2_2(L3_2)
  L2_2 = BeginScaleformMovieMethod
  L3_2 = L5_1
  L4_2 = "ADD_PLAYER"
  L2_2(L3_2, L4_2)
  L2_2 = _ENV
  L3_2 = "ScaleformMovieMethodAddParamPlayerNameString"
  L2_2 = L2_2[L3_2]
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = EndScaleformMovieMethod
  L2_2()
  L2_2 = BeginScaleformMovieMethod
  L3_2 = L5_1
  L4_2 = "SET_PLAYER_RESULT"
  L2_2(L3_2, L4_2)
  L2_2 = _ENV
  L3_2 = "ScaleformMovieMethodAddParamPlayerNameString"
  L2_2 = L2_2[L3_2]
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = PushScaleformMovieMethodParameterString
  L3_2 = A1_2
  L2_2(L3_2)
  L2_2 = EndScaleformMovieMethod
  L2_2()
end
function L62_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = DebugStart
  L3_2 = "AddHorses"
  L2_2(L3_2)
  L2_2 = #A1_2
  if 0 == L2_2 then
    return
  end
  L2_2 = 1
  L3_2 = 6
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A1_2[L5_2]
    if L6_2 <= 38 then
      L7_2 = L6_2 - 1
      if L7_2 then
        goto lbl_20
      end
    end
    L7_2 = L6_2
    ::lbl_20::
    L8_2 = "ITH_NAME_"
    L9_2 = string
    L9_2 = L9_2.format
    L10_2 = "%03d"
    L11_2 = L7_2
    L9_2 = L9_2(L10_2, L11_2)
    L8_2 = L8_2 .. L9_2
    L9_2 = horsePresets
    L9_2 = L9_2[L6_2]
    L9_2 = L9_2.odds
    L10_2 = BeginScaleformMovieMethod
    L11_2 = A0_2
    L12_2 = "SET_HORSE"
    L10_2(L11_2, L12_2)
    L10_2 = ScaleformMovieMethodAddParamInt
    L11_2 = L5_2
    L10_2(L11_2)
    L10_2 = BeginTextCommandScaleformString
    L11_2 = L8_2
    L10_2(L11_2)
    L10_2 = EndTextCommandScaleformString
    L10_2()
    L10_2 = _ENV
    L11_2 = "ScaleformMovieMethodAddParamPlayerNameString"
    L10_2 = L10_2[L11_2]
    L11_2 = L9_2
    L12_2 = "/1"
    L11_2 = L11_2 .. L12_2
    L10_2(L11_2)
    L10_2 = ScaleformMovieMethodAddParamInt
    L11_2 = horsePresets
    L11_2 = L11_2[L6_2]
    L11_2 = L11_2.colors
    L11_2 = L11_2[1]
    L10_2(L11_2)
    L10_2 = ScaleformMovieMethodAddParamInt
    L11_2 = horsePresets
    L11_2 = L11_2[L6_2]
    L11_2 = L11_2.colors
    L11_2 = L11_2[2]
    L10_2(L11_2)
    L10_2 = ScaleformMovieMethodAddParamInt
    L11_2 = horsePresets
    L11_2 = L11_2[L6_2]
    L11_2 = L11_2.colors
    L11_2 = L11_2[3]
    L10_2(L11_2)
    L10_2 = ScaleformMovieMethodAddParamInt
    L11_2 = horsePresets
    L11_2 = L11_2[L6_2]
    L11_2 = L11_2.colors
    L11_2 = L11_2[4]
    L10_2(L11_2)
    L10_2 = EndScaleformMovieMethod
    L10_2()
  end
end
function L63_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = DebugStart
  L1_2 = "GetMainMenuButton"
  L0_2(L1_2)
  L0_2 = -1
  L1_2 = CallScaleformMovieMethodWithNumber
  L2_2 = L6_1
  L3_2 = "SET_INPUT_EVENT"
  L4_2 = 237.0
  L5_2 = -1082130432
  L6_2 = -1082130432
  L7_2 = -1082130432
  L8_2 = -1082130432
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L1_2 = BeginScaleformMovieMethod
  L2_2 = L6_1
  L3_2 = "GET_CURRENT_SELECTION"
  L1_2(L2_2, L3_2)
  L1_2 = EndScaleformMovieMethodReturnValue
  L1_2 = L1_2()
  L0_2 = L1_2
  while true do
    L1_2 = IsScaleformMovieMethodReturnValueReady
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      break
    end
    L1_2 = INSIDE_TRACK
    if not L1_2 then
      break
    end
    L1_2 = IN_CASINO
    if not L1_2 then
      break
    end
    L1_2 = Wait
    L2_2 = 0
    L1_2(L2_2)
  end
  L1_2 = GetScaleformMovieMethodReturnValueInt
  L2_2 = L0_2
  return L1_2(L2_2)
end
function L64_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = DebugStart
  L3_2 = "PlayRaceFinalAnnounce"
  L2_2(L3_2)
  L2_2 = horsePresets
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2.nameId
  if 0 == A1_2 then
    L3_2 = GetPlayerPosition
    L3_2 = L3_2()
    if L3_2 then
      goto lbl_18
    end
  end
  L3_2 = vector3
  L4_2 = 952.17804
  L5_2 = 85.37027
  L6_2 = 70.032761
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  ::lbl_18::
  L4_2 = RandomNumber
  L5_2 = 0
  L6_2 = 2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = "MINIGAME_TRACK_FIRST_PLACE_"
  if 1 == L4_2 then
    L5_2 = "MINIGAME_TRACK_CLOSE_FINISH_"
  elseif 2 == L4_2 then
    L5_2 = "MINIGAME_TRACK_LEAD_"
  end
  L6_2 = L5_2
  L7_2 = L2_2
  L6_2 = L6_2 .. L7_2
  L5_2 = L6_2
  L6_2 = PlayAmbientSpeechFromPositionNative
  L7_2 = L5_2
  L8_2 = "CAS_HORSE_ANNOUNCER"
  L9_2 = L3_2
  L10_2 = "SPEECH_PARAMS_FORCE"
  L6_2(L7_2, L8_2, L9_2, L10_2)
end
function L65_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L4_2 = DebugStart
  L5_2 = "PlayRacePlaceAnnounce"
  L4_2(L5_2)
  if nil == A0_2 then
    return
  end
  if 0 == A1_2 then
    L4_2 = GetPlayerPosition
    L4_2 = L4_2()
    if L4_2 then
      goto lbl_15
    end
  end
  L4_2 = INSIDE_TRACK_WALL
  L4_2 = L4_2.coords
  ::lbl_15::
  L5_2 = {}
  L6_2 = "ONE"
  L7_2 = "TWO"
  L8_2 = "THREE"
  L9_2 = "FOUR"
  L10_2 = "FIVE"
  L11_2 = "SIX"
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L5_2[3] = L8_2
  L5_2[4] = L9_2
  L5_2[5] = L10_2
  L5_2[6] = L11_2
  L6_2 = {}
  L7_2 = "FIRST"
  L8_2 = "SECOND"
  L9_2 = "THIRD"
  L10_2 = "FOURTH"
  L11_2 = "FIFTH"
  L12_2 = "LAST"
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L6_2[3] = L9_2
  L6_2[4] = L10_2
  L6_2[5] = L11_2
  L6_2[6] = L12_2
  if A3_2 then
    L7_2 = "MINIGAME_TRACK_FINISH_"
    if L7_2 then
      goto lbl_39
    end
  end
  L7_2 = "MINIGAME_TRACK_"
  ::lbl_39::
  L8_2 = L7_2
  L9_2 = L6_2[A2_2]
  L10_2 = "_PLACE_"
  L11_2 = L5_2[A0_2]
  L8_2 = L8_2 .. L9_2 .. L10_2 .. L11_2
  L7_2 = L8_2
  L8_2 = PlayAmbientSpeechFromPositionNative
  L9_2 = L7_2
  L10_2 = "CAS_HORSE_ANNOUNCER"
  L11_2 = L4_2
  L12_2 = "SPEECH_PARAMS_FORCE"
  L8_2(L9_2, L10_2, L11_2, L12_2)
end
function L66_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = DebugStart
  L3_2 = "PlayRaceCustomAnnounce"
  L2_2(L3_2)
  if 0 == A0_2 then
    L2_2 = GetPlayerPosition
    L2_2 = L2_2()
    if L2_2 then
      goto lbl_12
    end
  end
  L2_2 = INSIDE_TRACK_WALL
  L2_2 = L2_2.coords
  ::lbl_12::
  L3_2 = PlayAmbientSpeechFromPositionNative
  L4_2 = A1_2
  L5_2 = "CAS_HORSE_ANNOUNCER"
  L6_2 = L2_2
  L7_2 = "SPEECH_PARAMS_FORCE"
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
function L67_1()
  local L0_2, L1_2
  L0_2 = DebugStart
  L1_2 = "PlayPedScreenAnimation"
  L0_2(L1_2)
  L0_2 = L7_1
  if 0 == L0_2 then
    L0_2 = L39_1
    L0_2()
  else
    L0_2 = L7_1
    if L0_2 >= 1 then
      L0_2 = L7_1
      if L0_2 <= 4 then
        L0_2 = L38_1
        L0_2()
      end
    end
  end
end
function L68_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = DebugStart
  L2_2 = "CleanUp"
  L1_2(L2_2)
  L1_2 = nil
  if 0 == A0_2 then
    L1_2 = L6_1
  elseif 1 == A0_2 then
    L1_2 = L5_1
  end
  if nil ~= L1_2 then
    L2_2 = PushScaleformVoid
    L3_2 = L1_2
    L4_2 = "CLEAR_ALL_PLAYERS"
    L2_2(L3_2, L4_2)
    L2_2 = PushScaleformVoid
    L3_2 = L1_2
    L4_2 = "CLEAR_ALL"
    L2_2(L3_2, L4_2)
  end
end
function L69_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = DebugStart
  L3_2 = "SwitchScene"
  L2_2(L3_2)
  L2_2 = nil
  L3_2 = L19_1
  L19_1 = A1_2
  if 3 ~= L3_2 and 4 ~= L3_2 and (3 == A1_2 or 4 == A1_2) then
    L4_2 = L50_1
    L4_2()
  elseif 3 == L3_2 or 4 == L3_2 and 3 ~= A1_2 and 4 ~= A1_2 then
    L4_2 = L50_1
    L4_2()
  end
  if 0 == A0_2 then
    L2_2 = L6_1
  elseif 1 == A0_2 then
    L2_2 = L5_1
  end
  if nil ~= L2_2 then
    if 0 == A0_2 then
      L4_2 = L7_1
      if A1_2 == L4_2 then
        L4_2 = PushScaleformInt
        L5_2 = L2_2
        L6_2 = "SHOW_SCREEN"
        L7_2 = 5
        L4_2(L5_2, L6_2, L7_2)
      end
      L7_1 = A1_2
      if 0 == A1_2 then
        L4_2 = L60_1
        L5_2 = 1
        L4_2(L5_2)
        L4_2 = L66_1
        L5_2 = A0_2
        L6_2 = "MINIGAME_TRACK_SELECTION"
        L4_2(L5_2, L6_2)
      elseif 1 == A1_2 then
        L4_2 = L66_1
        L5_2 = A0_2
        L6_2 = "MINIGAME_TRACK_PLACE_BETS"
        L4_2(L5_2, L6_2)
      end
      L4_2 = L67_1
      L4_2()
    end
    L4_2 = PushScaleformInt
    L5_2 = L2_2
    L6_2 = "SHOW_SCREEN"
    L7_2 = A1_2
    L4_2(L5_2, L6_2, L7_2)
  end
end
function L70_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = DebugStart
  L2_2 = "LockMainEvent"
  L1_2(L2_2)
  L1_2 = L6_1
  if nil ~= L1_2 then
    L1_2 = PushScaleformBool
    L2_2 = L6_1
    L3_2 = "SET_MAIN_EVENT_IN_PROGRESS"
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = L5_1
  if nil ~= L1_2 then
    L1_2 = PushScaleformBool
    L2_2 = L5_1
    L3_2 = "SET_MAIN_EVENT_IN_PROGRESS"
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
  end
end
function L71_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = DebugStart
  L2_2 = "ToggleBetting"
  L1_2(L2_2)
  L1_2 = L2_1.state
  if 2 == L1_2 then
    L1_2 = L9_1
    if nil ~= L1_2 then
      L1_2 = L9_1.roundid
      L2_2 = L2_1.roundId
      if L1_2 == L2_2 then
        goto lbl_18
      end
    end
    A0_2 = false
    L1_2 = L70_1
    L2_2 = true
    L1_2(L2_2)
  end
  ::lbl_18::
  L1_2 = L6_1
  if nil ~= L1_2 then
    L1_2 = PushScaleformBool
    L2_2 = L6_1
    L3_2 = "SET_BETTING_ENABLED"
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = L5_1
  if nil ~= L1_2 then
    L1_2 = PushScaleformBool
    L2_2 = L5_1
    L3_2 = "SET_BETTING_ENABLED"
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
  end
end
function L72_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = DebugStart
  L2_2 = "SetMainEventCountdown"
  L1_2(L2_2)
  L1_2 = L2_1
  if nil ~= L1_2 then
    L1_2 = L2_1.state
    if L1_2 then
      L1_2 = L2_1.state
      if L1_2 > 1 then
        A0_2 = 0
      end
    end
  end
  L1_2 = L6_1
  if nil ~= L1_2 then
    L1_2 = PushScaleformInt
    L2_2 = L6_1
    L3_2 = "SET_COUNTDOWN"
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = L5_1
  if nil ~= L1_2 then
    L1_2 = PushScaleformInt
    L2_2 = L5_1
    L3_2 = "SET_COUNTDOWN"
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
  end
end
function L73_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = PLAYER_CACHE
  L1_2 = L1_2.insideTrackMainCooldownUntil
  L2_2 = PLAYER_CACHE
  L2_2 = L2_2.insideTrackCooldownUntil
  if L1_2 and (2 == A0_2 or 4 == A0_2) then
    L3_2 = SERVER_TIMER
    if L1_2 > L3_2 then
      L3_2 = true
      return L3_2
    end
  end
  if L2_2 and (1 == A0_2 or 3 == A0_2) then
    L3_2 = SERVER_TIMER
    if L2_2 > L3_2 then
      L3_2 = true
      return L3_2
    end
  end
  L3_2 = false
  return L3_2
end
function L74_1(A0_2)
  local L1_2
  L1_2 = 2 == A0_2 or 4 == A0_2
  return L1_2
end
function L75_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L74_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = PLAYER_CACHE
    L1_2 = L1_2.insideTrackMainCooldownUntil
    if L1_2 then
      goto lbl_12
    end
  end
  L1_2 = PLAYER_CACHE
  L1_2 = L1_2.insideTrackCooldownUntil
  ::lbl_12::
  if not L1_2 then
    return
  end
  L2_2 = nil
  L6_1 = L2_2
  L2_2 = L39_1
  L2_2()
  L2_2 = L50_1
  L2_2()
  L2_2 = FormatTimestamp
  L3_2 = SERVER_TIMER
  L3_2 = L1_2 - L3_2
  L2_2 = L2_2(L3_2)
  L3_2 = InfoPanel_UpdateNotification
  L4_2 = string
  L4_2 = L4_2.format
  L5_2 = Translation
  L5_2 = L5_2.Get
  L6_2 = "INSIDETRACK_COOLDOWN"
  L5_2 = L5_2(L6_2)
  L6_2 = L2_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2)
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = FullscreenPrompt
  L4_2 = Translation
  L4_2 = L4_2.Get
  L5_2 = "CAPT_ERROR"
  L4_2 = L4_2(L5_2)
  L5_2 = string
  L5_2 = L5_2.format
  L6_2 = Translation
  L6_2 = L6_2.Get
  L7_2 = "INSIDETRACK_COOLDOWN"
  L6_2 = L6_2(L7_2)
  L7_2 = L2_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = nil
  L7_2 = nil
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
function L76_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = PLAYER_CACHE
  L0_2 = L0_2.insideTrackCooldownUntil
  if L0_2 then
    L1_2 = SERVER_TIMER
    if L0_2 > L1_2 then
      L1_2 = FormatTimestamp
      L2_2 = SERVER_TIMER
      L2_2 = L0_2 - L2_2
      L1_2 = L1_2(L2_2)
      L2_2 = InfoPanel_UpdateNotification
      L3_2 = string
      L3_2 = L3_2.format
      L4_2 = Translation
      L4_2 = L4_2.Get
      L5_2 = "INSIDETRACK_COOLDOWN"
      L4_2 = L4_2(L5_2)
      L5_2 = L1_2
      L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
      L2_2(L3_2, L4_2, L5_2)
      L2_2 = nil
      L6_1 = L2_2
      L2_2 = L39_1
      L2_2()
      L2_2 = L50_1
      L2_2()
      L2_2 = true
      return L2_2
    end
  end
  L1_2 = false
  return L1_2
end
function L77_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = DebugStart
  L2_2 = "ShowBetScreen"
  L1_2(L2_2)
  L1_2 = L69_1
  L2_2 = 0
  L3_2 = 3 + A0_2
  L1_2(L2_2, L3_2)
  L1_2 = L59_1
  L1_2()
  L1_2 = L71_1
  L2_2 = L2_1.bettingEnabled
  L1_2(L2_2)
end
function L78_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = DebugStart
  L2_2 = "SendBettingTicket"
  L1_2(L2_2)
  L1_2 = IsActivityEnabled
  L2_2 = "insidetrack"
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = nil
    L6_1 = L1_2
    L1_2 = InfoPanel_UpdateNotification
    L2_2 = Translation
    L2_2 = L2_2.Get
    L3_2 = "GAME_STATE_DISABLED"
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    L1_2(L2_2, L3_2, L4_2)
    return
  end
  L1_2 = Stats_Increase
  L2_2 = "rcore_casino_track_games_played"
  L3_2 = 1
  L1_2(L2_2, L3_2)
  L1_2 = TriggerServerEvent
  L2_2 = "InsideTrack:SendTicket"
  L3_2 = L8_1
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
function L79_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = DebugStart
  L2_2 = "IsRaceFinished"
  L1_2(L2_2)
  if nil == A0_2 then
    L1_2 = true
    return L1_2
  end
  L1_2 = BeginScaleformMovieMethod
  L2_2 = A0_2
  L3_2 = "GET_RACE_IS_COMPLETE"
  L1_2(L2_2, L3_2)
  L1_2 = EndScaleformMovieMethodReturnValue
  L1_2 = L1_2()
  while true do
    L2_2 = IsScaleformMovieMethodReturnValueReady
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      break
    end
    L2_2 = INSIDE_TRACK
    if not L2_2 then
      break
    end
    L2_2 = IN_CASINO
    if not L2_2 then
      break
    end
    L2_2 = Wait
    L3_2 = 0
    L2_2(L3_2)
  end
  L2_2 = GetScaleformMovieMethodReturnValueBool
  L3_2 = L1_2
  return L2_2(L3_2)
end
function L80_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = DebugStart
  L2_2 = "GetHorsePositions"
  L1_2(L2_2)
  L1_2 = {}
  if nil ~= A0_2 then
    L2_2 = BeginScaleformMovieMethod
    L3_2 = A0_2
    L4_2 = "GET_HORSE_POSITIONS"
    L2_2(L3_2, L4_2)
    L2_2 = EndScaleformMovieMethodReturnValue
    L2_2 = L2_2()
    while true do
      L3_2 = IsScaleformMovieMethodReturnValueReady
      L4_2 = L2_2
      L3_2 = L3_2(L4_2)
      if L3_2 then
        break
      end
      L3_2 = INSIDE_TRACK
      if not L3_2 then
        break
      end
      L3_2 = IN_CASINO
      if not L3_2 then
        break
      end
      L3_2 = Wait
      L4_2 = 0
      L3_2(L4_2)
    end
    L3_2 = GetScaleformMovieMethodReturnValueInt
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if -1 ~= L3_2 then
      L4_2 = 6
      L5_2 = 1
      L6_2 = -1
      for L7_2 = L4_2, L5_2, L6_2 do
        L8_2 = table
        L8_2 = L8_2.insert
        L9_2 = L1_2
        L10_2 = tonumber
        L11_2 = string
        L11_2 = L11_2.sub
        L12_2 = L3_2
        L13_2 = L7_2
        L14_2 = L7_2
        L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2, L13_2, L14_2)
        L10_2, L11_2, L12_2, L13_2, L14_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
        L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
      end
    end
  end
  return L1_2
end
function L81_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = DebugStart
  L4_2 = "StartRacing"
  L3_2(L4_2)
  L3_2 = CreateThread
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3
    L0_3 = A1_2
    if 0 == L0_3 then
      L0_3 = BlockPlayerInteraction
      L1_3 = A2_2
      L1_3 = L1_3 * 1000
      L1_3 = L1_3 + 6500
      L0_3(L1_3)
      L0_3 = PushNUIInstructionalButtons
      L1_3 = nil
      L0_3(L1_3)
      L0_3 = L40_1
      L0_3()
    else
      L0_3 = A1_2
      if 1 == L0_3 then
        L0_3 = L13_1
        if -1 ~= L0_3 then
          L0_3 = L42_1
          L0_3()
        end
      end
    end
    L0_3 = nil
    L1_3 = A1_2
    if 0 == L1_3 then
      L0_3 = L6_1
    else
      L1_3 = A1_2
      if 1 == L1_3 then
        L0_3 = L5_1
      end
    end
    L1_3 = L48_1
    L3_3 = A1_2
    L2_3 = L21_1
    L2_3 = L2_3[L3_3]
    L1_3(L2_3)
    L2_3 = A1_2
    L1_3 = L21_1
    L3_3 = GetSoundId
    L3_3 = L3_3()
    L1_3[L2_3] = L3_3
    L1_3 = A1_2
    if 0 == L1_3 then
      L1_3 = PlaySoundFrontend
      L3_3 = A1_2
      L2_3 = L21_1
      L2_3 = L2_3[L3_3]
      L3_3 = "race_loop"
      L4_3 = "dlc_vw_casino_inside_track_betting_single_event_sounds"
      L1_3(L2_3, L3_3, L4_3)
    else
      L1_3 = A1_2
      if 1 == L1_3 then
        L1_3 = PlaySoundFromCoord
        L3_3 = A1_2
        L2_3 = L21_1
        L2_3 = L2_3[L3_3]
        L3_3 = "race_loop"
        L4_3 = vector3
        L5_3 = 952.17804
        L6_3 = 85.37027
        L7_3 = 70.032761
        L4_3 = L4_3(L5_3, L6_3, L7_3)
        L5_3 = "dlc_vw_casino_inside_track_betting_main_event_sounds"
        L6_3 = false
        L7_3 = 13
        L8_3 = 0
        L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
      end
    end
    L1_3 = BeginScaleformMovieMethod
    L2_3 = L0_3
    L3_3 = "START_RACE"
    L1_3(L2_3, L3_3)
    L1_3 = ScaleformMovieMethodAddParamFloat
    L2_3 = A2_2
    L2_3 = L2_3 * 1000.0
    L1_3(L2_3)
    L1_3 = ScaleformMovieMethodAddParamInt
    L2_3 = 1
    L1_3(L2_3)
    L1_3 = 1
    L2_3 = 6
    L3_3 = 1
    for L4_3 = L1_3, L2_3, L3_3 do
      L5_3 = ScaleformMovieMethodAddParamInt
      L6_3 = A0_2
      L6_3 = L6_3[L4_3]
      L5_3(L6_3)
    end
    L1_3 = ScaleformMovieMethodAddParamFloat
    L2_3 = 0
    L1_3(L2_3)
    L1_3 = ScaleformMovieMethodAddParamBool
    L2_3 = false
    L1_3(L2_3)
    L1_3 = EndScaleformMovieMethod
    L1_3()
    L1_3 = 0
    L2_3 = 0
    L3_3 = {}
    L4_3 = -1
    L5_3 = -1
    L6_3 = -1
    L7_3 = -1
    L8_3 = -1
    L9_3 = -1
    L3_3[1] = L4_3
    L3_3[2] = L5_3
    L3_3[3] = L6_3
    L3_3[4] = L7_3
    L3_3[5] = L8_3
    L3_3[6] = L9_3
    L4_3 = false
    L5_3 = L66_1
    L6_3 = A1_2
    L7_3 = "MINIGAME_TRACK_RACE_START"
    L5_3(L6_3, L7_3)
    while true do
      L5_3 = INSIDE_TRACK
      if not L5_3 then
        break
      end
      L5_3 = IN_CASINO
      if not L5_3 or nil == L0_3 then
        break
      end
      L5_3 = L79_1
      L6_3 = L0_3
      L5_3 = L5_3(L6_3)
      if L5_3 then
        break
      end
      L5_3 = A1_2
      if 0 ~= L5_3 then
        L5_3 = L2_1.state
        if 2 ~= L5_3 then
          break
        end
      end
      L5_3 = Wait
      L6_3 = 1000
      L5_3(L6_3)
      L2_3 = L2_3 + 1
      if 3 == L2_3 or 6 == L2_3 or 9 == L2_3 or 20 == L2_3 then
        L5_3 = L80_1
        L6_3 = L0_3
        L5_3 = L5_3(L6_3)
        L6_3 = #L5_3
        if 0 ~= L6_3 then
          L6_3 = 1
          L7_3 = RandomNumber
          L8_3 = 0
          L9_3 = 2
          L7_3 = L7_3(L8_3, L9_3)
          if 1 == L7_3 and not L4_3 then
            L6_3 = 6
            L4_3 = true
          end
          L7_3 = L6_3
          L8_3 = 6
          L9_3 = 1
          for L10_3 = L7_3, L8_3, L9_3 do
            L11_3 = L3_3[L10_3]
            L12_3 = L5_3[L10_3]
            if L11_3 ~= L12_3 then
              L11_3 = L5_3[L10_3]
              L3_3[L10_3] = L11_3
              L11_3 = L65_1
              L12_3 = L5_3[L10_3]
              L13_3 = A1_2
              L14_3 = L10_3
              L15_3 = false
              L11_3(L12_3, L13_3, L14_3, L15_3)
            else
            end
          end
        end
      else
        L5_3 = math
        L5_3 = L5_3.floor
        L6_3 = A2_2
        L6_3 = L6_3 / 2
        L5_3 = L5_3(L6_3)
        if L2_3 == L5_3 then
          L5_3 = L66_1
          L6_3 = A1_2
          L7_3 = "MINIGAME_TRACK_HALFWAY"
          L5_3(L6_3, L7_3)
        else
          L5_3 = A2_2
          L5_3 = L5_3 - 5
          if L2_3 == L5_3 then
            L5_3 = L66_1
            L6_3 = A1_2
            L7_3 = "MINIGAME_TRACK_FINISH_NEAR"
            L5_3(L6_3, L7_3)
          end
        end
      end
    end
    L5_3 = L48_1
    L7_3 = A1_2
    L6_3 = L21_1
    L6_3 = L6_3[L7_3]
    L5_3(L6_3)
    L5_3 = L13_1
    if -1 ~= L5_3 then
      L5_3 = A1_2
      if 0 == L5_3 then
        L5_3 = L43_1
        L6_3 = L8_1.horse
        L7_3 = A0_2
        L7_3 = L7_3[1]
        L6_3 = L6_3 == L7_3
        L5_3(L6_3)
      else
        L5_3 = A1_2
        if 1 == L5_3 then
          L5_3 = L9_1
          if nil ~= L5_3 then
            L5_3 = L44_1
            L6_3 = L9_1.horse
            L7_3 = A0_2
            L7_3 = L7_3[1]
            L6_3 = L6_3 == L7_3
            L5_3(L6_3)
          else
            L5_3 = L44_1
            L6_3 = RandomNumber
            L7_3 = 0
            L8_3 = 2
            L6_3 = L6_3(L7_3, L8_3)
            L6_3 = 1 == L6_3
            L5_3(L6_3)
          end
        end
      end
    end
    L5_3 = A1_2
    if 0 == L5_3 then
      L5_3 = L64_1
      L6_3 = L32_1
      L7_3 = A1_2
      L6_3 = L6_3(L7_3)
      L7_3 = A0_2
      L7_3 = L7_3[1]
      L6_3 = L6_3[L7_3]
      L7_3 = A1_2
      L5_3(L6_3, L7_3)
      L5_3 = Wait
      L6_3 = 3000
      L5_3(L6_3)
      L5_3 = L69_1
      L6_3 = A1_2
      L7_3 = 7
      L5_3(L6_3, L7_3)
      L5_3 = TriggerServerEvent
      L6_3 = "InsideTrack:CollectWinnings"
      L7_3 = A1_2
      L5_3(L6_3, L7_3)
    end
  end
  L5_2 = "Start racing scene"
  L3_2(L4_2, L5_2)
end
function L82_1()
  local L0_2, L1_2, L2_2
  L0_2 = DebugStart
  L1_2 = "HandleControls"
  L0_2(L1_2)
  L0_2 = 0
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    while true do
      L0_3 = L6_1
      if nil == L0_3 then
        break
      end
      L0_3 = INSIDE_TRACK
      if not L0_3 then
        break
      end
      L0_3 = IN_CASINO
      if not L0_3 then
        break
      end
      L0_3 = IsGamepadControl
      L0_3 = L0_3()
      if L0_3 then
        L0_3 = L7_1
        if 1 ~= L0_3 then
          L0_3 = L7_1
          if 2 ~= L0_3 then
            L0_3 = L7_1
            if 3 ~= L0_3 then
              L0_3 = L7_1
              if 4 ~= L0_3 then
                goto lbl_102
              end
            end
          end
        end
        L0_3 = IsDisabledControlJustPressed
        L1_3 = 0
        L2_3 = 188
        L0_3 = L0_3(L1_3, L2_3)
        if L0_3 then
          L0_3 = L28_1
          if L0_3 > 1 then
            L0_3 = L28_1
            L0_3 = L0_3 - 1
            L28_1 = L0_3
            L0_3 = L28_1
            L8_1.horse = L0_3
            L0_3 = L32_1
            L1_3 = L0_2
            L0_3 = L0_3(L1_3)
            L1_3 = L28_1
            L0_3 = L0_3[L1_3]
            L8_1.horseId = L0_3
            L0_3 = L77_1
            L1_3 = L0_2
            L0_3(L1_3)
            L0_3 = 0
            L24_1 = L0_3
          end
        end
        L0_3 = IsDisabledControlJustPressed
        L1_3 = 0
        L2_3 = 187
        L0_3 = L0_3(L1_3, L2_3)
        if L0_3 then
          L0_3 = L28_1
          if L0_3 < 6 then
            L0_3 = L28_1
            L0_3 = L0_3 + 1
            L28_1 = L0_3
            L0_3 = L28_1
            L8_1.horse = L0_3
            L0_3 = L32_1
            L1_3 = L0_2
            L0_3 = L0_3(L1_3)
            L1_3 = L28_1
            L0_3 = L0_3[L1_3]
            L8_1.horseId = L0_3
            L0_3 = L77_1
            L1_3 = L0_2
            L0_3(L1_3)
            L0_3 = 0
            L24_1 = L0_3
          end
        end
        L0_3 = IsDisabledControlJustPressed
        L1_3 = 0
        L2_3 = 189
        L0_3 = L0_3(L1_3, L2_3)
        if L0_3 then
          L0_3 = L58_1
          L1_3 = -100
          L2_3 = L0_2
          L0_3(L1_3, L2_3)
          L0_3 = L59_1
          L0_3()
        end
        L0_3 = IsDisabledControlJustPressed
        L1_3 = 0
        L2_3 = 190
        L0_3 = L0_3(L1_3, L2_3)
        if L0_3 then
          L0_3 = L58_1
          L1_3 = 100
          L2_3 = L0_2
          L0_3(L1_3, L2_3)
          L0_3 = L59_1
          L0_3()
        end
        ::lbl_102::
        L0_3 = GAME_TIMER
        L1_3 = L27_1
        L0_3 = L0_3 - L1_3
        L0_3 = L0_3 / 15
        L26_1 = L0_3
        L0_3 = GetSmartControlNormal
        L1_3 = 30
        L0_3 = L0_3(L1_3)
        L1_3 = GetSmartControlNormal
        L2_3 = 31
        L1_3 = L1_3(L2_3)
        L2_3 = L24_1
        L3_3 = L0_3 * 0.0075
        L4_3 = L26_1
        L3_3 = L3_3 * L4_3
        L2_3 = L2_3 + L3_3
        L24_1 = L2_3
        L2_3 = L25_1
        L3_3 = L1_3 * 0.0075
        L4_3 = L26_1
        L3_3 = L3_3 * L4_3
        L2_3 = L2_3 + L3_3
        L25_1 = L2_3
        L2_3 = Clamp
        L3_3 = L24_1
        L4_3 = 0.0
        L5_3 = 1.0
        L2_3 = L2_3(L3_3, L4_3, L5_3)
        L24_1 = L2_3
        L2_3 = Clamp
        L3_3 = L25_1
        L4_3 = 0.0
        L5_3 = 1.0
        L2_3 = L2_3(L3_3, L4_3, L5_3)
        L25_1 = L2_3
        L2_3 = SetCursorLocation
        L3_3 = L24_1
        L4_3 = L25_1
        L2_3(L3_3, L4_3)
        L2_3 = GAME_TIMER
        L27_1 = L2_3
      end
      L0_3 = CAN_INTERACT
      if L0_3 then
        L0_3 = L19_1
        if 3 ~= L0_3 then
          L0_3 = L19_1
          if 4 ~= L0_3 then
            goto lbl_204
          end
        end
        L0_3 = IsControlJustPressed
        L1_3 = 0
        L2_3 = GameplayKeys
        L2_3 = L2_3.TableGamesMaxBet
        L0_3 = L0_3(L1_3, L2_3)
        if not L0_3 then
          L0_3 = IsDisabledControlJustPressed
          L1_3 = 0
          L2_3 = GameplayKeys
          L2_3 = L2_3.TableGamesMaxBet
          L0_3 = L0_3(L1_3, L2_3)
          if not L0_3 then
            goto lbl_204
          end
        end
        L0_3 = L0_2
        if 0 == L0_3 then
          L0_3 = Config
          L0_3 = L0_3.IT_LOCAL_RACE_MAX_BET
          if L0_3 then
            goto lbl_183
          end
        end
        L0_3 = Config
        L0_3 = L0_3.IT_MAIN_EVENT_RACE_MAX_BET
        ::lbl_183::
        L1_3 = L0_2
        if 0 == L1_3 then
          L1_3 = Config
          L1_3 = L1_3.IT_LOCAL_RACE_MIN_BET
          if L1_3 then
            goto lbl_192
          end
        end
        L1_3 = Config
        L1_3 = L1_3.IT_MAIN_EVENT_RACE_MIN_BET
        ::lbl_192::
        L2_3 = L8_1.bet
        if not L2_3 then
          L2_3 = 0
        end
        if L0_3 > L2_3 then
          L8_1.bet = L0_3
        else
          L8_1.bet = L1_3
        end
        L3_3 = L77_1
        L4_3 = L0_2
        L3_3(L4_3)
      end
      ::lbl_204::
      L0_3 = IsControlJustPressed
      L1_3 = 2
      L2_3 = 237
      L0_3 = L0_3(L1_3, L2_3)
      if not L0_3 then
        L0_3 = IsControlJustPressed
        L1_3 = 2
        L2_3 = 201
        L0_3 = L0_3(L1_3, L2_3)
        if not L0_3 then
          goto lbl_421
        end
      end
      L0_3 = L63_1
      L0_3 = L0_3()
      L1_3 = L7_1
      if 1 ~= L1_3 then
        L1_3 = L7_1
        if 2 ~= L1_3 then
          L1_3 = L7_1
          if 3 ~= L1_3 then
            L1_3 = L7_1
          end
        end
      end
      if 4 == L1_3 and L0_3 <= 7 and L0_3 >= 2 then
        L1_3 = L0_3 - 1
        L8_1.horse = L1_3
        L2_3 = L32_1
        L3_3 = L0_2
        L2_3 = L2_3(L3_3)
        L2_3 = L2_3[L1_3]
        L8_1.horseId = L2_3
        L28_1 = L1_3
        L2_3 = L77_1
        L3_3 = L0_2
        L2_3(L3_3)
      end
      if 15 == L0_3 then
        L1_3 = L69_1
        L2_3 = 0
        L3_3 = 9
        L1_3(L2_3, L3_3)
      end
      if 12 == L0_3 then
        L1_3 = L7_1
        if 9 == L1_3 then
          L1_3 = L69_1
          L2_3 = 0
          L3_3 = 0
          L1_3(L2_3, L3_3)
        else
          L1_3 = L7_1
          if 1 == L1_3 then
            L1_3 = L69_1
            L2_3 = 0
            L3_3 = 0
            L1_3(L2_3, L3_3)
          else
            L1_3 = L7_1
            if 2 == L1_3 then
              L1_3 = L69_1
              L2_3 = 0
              L3_3 = 0
              L1_3(L2_3, L3_3)
            else
              L1_3 = L7_1
              if 3 == L1_3 then
                L1_3 = L69_1
                L2_3 = 0
                L3_3 = 1
                L1_3(L2_3, L3_3)
              else
                L1_3 = L7_1
                if 4 == L1_3 then
                  L1_3 = L69_1
                  L2_3 = 0
                  L3_3 = 0
                  L1_3(L2_3, L3_3)
                end
              end
            end
          end
        end
      end
      L1_3 = L7_1
      if 0 == L1_3 and 1 == L0_3 then
        L1_3 = 0
        L0_2 = L1_3
        L1_3 = Config
        L1_3 = L1_3.IT_LOCAL_RACE_MIN_BET
        L8_1.bet = L1_3
        L1_3 = L62_1
        L2_3 = L6_1
        L3_3 = L32_1
        L4_3 = 0
        L3_3, L4_3, L5_3 = L3_3(L4_3)
        L1_3(L2_3, L3_3, L4_3, L5_3)
        L1_3 = L69_1
        L2_3 = 0
        L3_3 = 1
        L1_3(L2_3, L3_3)
      end
      L1_3 = L7_1
      if 0 == L1_3 and (0 == L0_3 or 14 == L0_3) then
        L1_3 = L2_1.locked
        if not L1_3 then
          L1_3 = L2_1.bettingEnabled
          if L1_3 then
            L1_3 = 1
            L0_2 = L1_3
            L1_3 = Config
            L1_3 = L1_3.IT_MAIN_EVENT_RACE_MIN_BET
            L8_1.bet = L1_3
            L1_3 = L62_1
            L2_3 = L6_1
            L3_3 = L32_1
            L4_3 = 1
            L3_3, L4_3, L5_3 = L3_3(L4_3)
            L1_3(L2_3, L3_3, L4_3, L5_3)
            L1_3 = L69_1
            L2_3 = 0
            L3_3 = L9_1
            if nil ~= L3_3 then
              L3_3 = L9_1.roundid
              L4_3 = L2_1.roundId
              if L3_3 == L4_3 then
                L3_3 = 4
                if L3_3 then
                  goto lbl_350
                end
              end
            end
            L3_3 = 2
            ::lbl_350::
            L1_3(L2_3, L3_3)
          else
            L1_3 = L2_1.state
            if 2 == L1_3 then
              L1_3 = L9_1
              if nil ~= L1_3 then
                L1_3 = L9_1.roundid
                L2_3 = L2_1.roundId
                if L1_3 == L2_3 then
                  L1_3 = L69_1
                  L2_3 = 0
                  L3_3 = 4
                  L1_3(L2_3, L3_3)
                end
              end
            end
          end
        end
      end
      if 8 == L0_3 then
        L1_3 = L58_1
        L2_3 = 100
        L3_3 = L0_2
        L1_3(L2_3, L3_3)
        L1_3 = L59_1
        L1_3()
      end
      if 9 == L0_3 then
        L1_3 = L58_1
        L2_3 = -100
        L3_3 = L0_2
        L1_3(L2_3, L3_3)
        L1_3 = L59_1
        L1_3()
      end
      if 10 == L0_3 then
        L1_3 = L0_2
        if 0 == L1_3 then
          L1_3 = L73_1
          L2_3 = 1
          L1_3 = L1_3(L2_3)
          if L1_3 then
            L1_3 = L75_1
            L2_3 = 1
            L1_3(L2_3)
        end
        else
          L1_3 = L0_2
          if 1 == L1_3 then
            L1_3 = L73_1
            L2_3 = 2
            L1_3 = L1_3(L2_3)
            if L1_3 then
              L1_3 = L75_1
              L2_3 = 2
              L1_3(L2_3)
          end
          else
            L1_3 = L8_1.bet
            if L1_3 > 0 then
              L1_3 = L78_1
              L2_3 = L0_2
              L1_3(L2_3)
            end
          end
        end
      end
      if 13 == L0_3 then
        L1_3 = true
        L18_1 = L1_3
        L1_3 = TriggerServerEvent
        L2_3 = "InsideTrack:ResetLocalHorses"
        L1_3(L2_3)
      end
      ::lbl_421::
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
    end
  end
  L1_2(L2_2)
end
function L83_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = DebugStart
  L1_2 = "ShowMainMenu"
  L0_2(L1_2)
  L0_2 = Config
  L0_2 = L0_2.IT_LOCAL_RACE_MIN_BET
  L8_1.bet = L0_2
  L0_2 = 0
  L1_2 = "BETTING"
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = RequestScaleformMovie
    L1_3 = "HORSE_RACING_CONSOLE"
    L0_3 = L0_3(L1_3)
    L6_1 = L0_3
    while true do
      L0_3 = HasScaleformMovieLoaded
      L1_3 = L6_1
      L0_3 = L0_3(L1_3)
      if L0_3 then
        break
      end
      L0_3 = INSIDE_TRACK
      if not L0_3 then
        break
      end
      L0_3 = IN_CASINO
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 33
      L0_3(L1_3)
    end
    L0_3 = L70_1
    L1_3 = L2_1.locked
    L0_3(L1_3)
    L0_3 = PushScaleformVoid
    L1_3 = L6_1
    L2_3 = "CLEAR_ALL"
    L0_3(L1_3, L2_3)
    L0_3 = L71_1
    L1_3 = L2_1.bettingEnabled
    L0_3(L1_3)
    L0_3 = L82_1
    L0_3()
    L0_3 = L72_1
    L1_3 = L2_1.timeLeft
    L0_3(L1_3)
    L0_3 = L69_1
    L1_3 = 0
    L2_3 = 0
    L0_3(L1_3, L2_3)
    while true do
      L0_3 = L6_1
      if nil == L0_3 then
        break
      end
      L0_3 = INSIDE_TRACK
      if not L0_3 then
        break
      end
      L0_3 = IN_CASINO
      if not L0_3 then
        break
      end
      L0_3 = GetDisabledControlNormal
      L1_3 = 2
      L2_3 = 239
      L0_3 = L0_3(L1_3, L2_3)
      L1_3 = GetDisabledControlNormal
      L2_3 = 2
      L3_3 = 240
      L1_3 = L1_3(L2_3, L3_3)
      L2_3 = ELECTRICITY_BROKEN
      if not L2_3 then
        L2_3 = BeginScaleformMovieMethod
        L3_3 = L6_1
        L4_3 = "SET_MOUSE_INPUT"
        L2_3(L3_3, L4_3)
        L2_3 = ScaleformMovieMethodAddParamFloat
        L3_3 = L0_3
        L2_3(L3_3)
        L2_3 = ScaleformMovieMethodAddParamFloat
        L3_3 = L1_3
        L2_3(L3_3)
        L2_3 = EndScaleformMovieMethod
        L2_3()
        L2_3 = DrawScaleformMovieFullscreen
        L3_3 = L6_1
        L4_3 = 255
        L5_3 = 255
        L6_3 = 255
        L7_3 = 255
        L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
      end
      L2_3 = Wait
      L3_3 = 0
      L2_3(L3_3)
      L2_3 = GAME_TIMER
      L3_3 = L0_2
      if L2_3 > L3_3 then
        L2_3 = GAME_TIMER
        L2_3 = L2_3 + 1000
        L0_2 = L2_3
        L2_3 = nil
        L3_3 = L7_1
        if 0 == L3_3 then
          L2_3 = "BETTING"
        else
          L3_3 = L7_1
          if 1 ~= L3_3 then
            L3_3 = L7_1
            if 3 ~= L3_3 then
              goto lbl_103
            end
          end
          L2_3 = "BETTING_SINGLE"
          goto lbl_110
          ::lbl_103::
          L3_3 = L7_1
          if 2 ~= L3_3 then
            L3_3 = L7_1
            if 4 ~= L3_3 then
              goto lbl_110
            end
          end
          L2_3 = "BETTING_MAIN"
        end
        ::lbl_110::
        if nil ~= L2_3 then
          L3_3 = L1_2
          if L2_3 ~= L3_3 then
            L1_2 = L2_3
            L3_3 = TriggerServerEvent
            L4_3 = "InsideTrack:UpdateScreen"
            L5_3 = L2_3
            L3_3(L4_3, L5_3)
          end
        end
      end
    end
    L0_3 = L1_2
    if "BETTING" ~= L0_3 then
      L0_3 = TriggerServerEvent
      L1_3 = "InsideTrack:UpdateScreen"
      L2_3 = "BETTING"
      L0_3(L1_3, L2_3)
    end
    L0_3 = SetScaleformMovieAsNoLongerNeeded
    L1_3 = L6_1
    L0_3(L1_3)
  end
  L2_2(L3_2)
end
function L84_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = DebugStart
  L2_2 = "ToggleMainMenu"
  L1_2(L2_2)
  L1_2 = CAN_INTERACT
  if L1_2 then
    L1_2 = L13_1
    if -1 ~= L1_2 then
      goto lbl_11
    end
  end
  do return end
  ::lbl_11::
  L1_2 = IsActivityEnabled
  L2_2 = "insidetrack"
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = nil
    L6_1 = L1_2
    L1_2 = InfoPanel_UpdateNotification
    L2_2 = Translation
    L2_2 = L2_2.Get
    L3_2 = "GAME_STATE_DISABLED"
    L2_2, L3_2 = L2_2(L3_2)
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = L6_1
  if nil == L1_2 then
    L1_2 = L83_1
    L1_2()
    L1_2 = PushNUIInstructionalButtons
    L2_2 = nil
    L1_2(L2_2)
  elseif A0_2 then
    L1_2 = nil
    L6_1 = L1_2
    L1_2 = L50_1
    L1_2()
  end
  L1_2 = BlockPlayerInteraction
  L2_2 = 1000
  L1_2(L2_2)
end
function L85_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = DebugStart
  L2_2 = "ShowBigScreenTitleScreen"
  L1_2(L2_2)
  L1_2 = L69_1
  L2_2 = 1
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L1_2 = PushScaleformVoid
  L2_2 = L5_1
  L3_2 = "CLEAR_ALL"
  L1_2(L2_2, L3_2)
  L1_2 = BeginScaleformMovieMethod
  L2_2 = L5_1
  L3_2 = "SHOW_ERROR"
  L1_2(L2_2, L3_2)
  L1_2 = _ENV
  L2_2 = "ScaleformMovieMethodAddParamPlayerNameString"
  L1_2 = L1_2[L2_2]
  L2_2 = "&nbsp;"
  L3_2 = A0_2
  L4_2 = "&nbsp;"
  L2_2 = L2_2 .. L3_2 .. L4_2
  L1_2(L2_2)
  L1_2 = EndScaleformMovieMethod
  L1_2()
end
function L86_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = DebugStart
  L1_2 = "RefreshBigScreenState"
  L0_2(L1_2)
  L0_2 = L5_1
  if nil == L0_2 then
    return
  end
  L0_2 = L72_1
  L1_2 = L2_1.timeLeft
  L0_2(L1_2)
  L0_2 = L71_1
  L1_2 = L2_1.bettingEnabled
  L0_2(L1_2)
  L0_2 = L70_1
  L1_2 = L2_1.locked
  L0_2(L1_2)
  L0_2 = L2_1.state
  if -2 == L0_2 then
    L0_2 = L85_1
    L1_2 = "Inside Track"
    L0_2(L1_2)
  else
    L0_2 = L2_1.state
    if -1 == L0_2 then
      L0_2 = L85_1
      L1_2 = "Inside Track"
      L0_2(L1_2)
    else
      L0_2 = L2_1.state
      if 0 == L0_2 then
        L0_2 = L85_1
        L1_2 = "Inside Track"
        L0_2(L1_2)
      else
        L0_2 = L2_1.state
        if 1 == L0_2 then
          L0_2 = L62_1
          L1_2 = L5_1
          L2_2 = L2_1.horses
          L0_2(L1_2, L2_2)
          L0_2 = L69_1
          L1_2 = 1
          L2_2 = 0
          L0_2(L1_2, L2_2)
        else
          L0_2 = L2_1.state
          if 2 == L0_2 then
            L0_2 = L62_1
            L1_2 = L5_1
            L2_2 = L2_1.horses
            L0_2(L1_2, L2_2)
            L0_2 = L81_1
            L1_2 = L2_1.winners
            L2_2 = 1
            L3_2 = L2_1.timeLeft
            L0_2(L1_2, L2_2, L3_2)
          else
            L0_2 = L2_1.state
            if 4 == L0_2 then
              L0_2 = L5_1
              if nil ~= L0_2 then
                L0_2 = PushScaleformVoid
                L1_2 = L5_1
                L2_2 = "CLEAR_ALL_PLAYERS"
                L0_2(L1_2, L2_2)
              end
              L0_2 = L2_1.leaderboards
              L0_2 = #L0_2
              if 0 ~= L0_2 then
                L0_2 = pairs
                L1_2 = L2_1.leaderboards
                L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
                for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
                  L6_2 = L61_1
                  L7_2 = L5_2.name
                  L8_2 = L5_2.winnings
                  L6_2(L7_2, L8_2)
                end
              end
              L0_2 = L69_1
              L1_2 = 1
              L2_2 = 4
              L0_2(L1_2, L2_2)
            end
          end
        end
      end
    end
  end
end
function L87_1()
  local L0_2, L1_2
  L0_2 = DebugStart
  L1_2 = "TurnOnBigScreen"
  L0_2(L1_2)
  L0_2 = L5_1
  if nil ~= L0_2 then
    return
  end
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
    L0_3 = screenTargetGlobal
    if 0 == L0_3 then
      L0_3 = Config
      L0_3 = L0_3.IT_DISABLE_SCREEN
      if not L0_3 then
        L0_3 = FullscreenPrompt
        L1_3 = "Inside Track"
        L2_3 = "In order to make Inside Track work, please remove file dlc_bikers/gang.lua from your bob74_ipl resource, and restart your server."
        L0_3(L1_3, L2_3)
      end
    end
    L0_3 = RequestScaleformMovie
    L1_3 = "HORSE_RACING_WALL"
    L0_3 = L0_3(L1_3)
    L5_1 = L0_3
    while true do
      L0_3 = HasScaleformMovieLoaded
      L1_3 = L5_1
      L0_3 = L0_3(L1_3)
      if L0_3 then
        break
      end
      L0_3 = INSIDE_TRACK
      if not L0_3 then
        break
      end
      L0_3 = IN_CASINO
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 33
      L0_3(L1_3)
    end
    L0_3 = SetScaleformFitRendertarget
    L1_3 = L5_1
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = L2_1.state
    if 3 == L0_3 then
      L2_1.timeLeft = 15
      L2_1.state = 2
      L0_3 = L69_1
      L1_3 = 1
      L2_3 = 0
      L0_3(L1_3, L2_3)
    end
    L0_3 = L86_1
    L0_3()
    L0_3 = 0.5
    L1_3 = 0.5
    L2_3 = 0.999
    L3_3 = 0.999
    while true do
      L4_3 = L5_1
      if nil == L4_3 then
        break
      end
      L4_3 = INSIDE_TRACK
      if not L4_3 then
        break
      end
      L4_3 = IN_CASINO
      if not L4_3 then
        break
      end
      L4_3 = ELECTRICITY_BROKEN
      if not L4_3 then
        L4_3 = SetTextRenderId
        L5_3 = screenTargetGlobal
        L4_3(L5_3)
        L4_3 = SetScriptGfxDrawOrder
        L5_3 = 4
        L4_3(L5_3)
        L4_3 = SetScriptGfxDrawBehindPausemenu
        L5_3 = true
        L4_3(L5_3)
        L4_3 = DrawScaleformMovie
        L5_3 = L5_1
        L6_3 = L0_3
        L7_3 = L1_3
        L8_3 = L2_3
        L9_3 = L3_3
        L10_3 = 255
        L11_3 = 255
        L12_3 = 255
        L13_3 = 255
        L14_3 = 0
        L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
        L4_3 = SetTextRenderId
        L5_3 = GetDefaultScriptRendertargetRenderId
        L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3 = L5_3()
        L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
      end
      L4_3 = Wait
      L5_3 = 0
      L4_3(L5_3)
    end
    L4_3 = Wait
    L5_3 = 500
    L4_3(L5_3)
    L4_3 = SetScaleformMovieAsNoLongerNeeded
    L5_3 = L5_1
    L4_3(L5_3)
    L4_3 = nil
    L5_1 = L4_3
  end
  L0_2(L1_2)
end
function L88_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = DebugStart
  L2_2 = "MainEventChanged"
  L1_2(L2_2)
  L1_2 = IsActivityEnabled
  L2_2 = "insidetrack"
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = L9_1
  if nil ~= L1_2 then
    L1_2 = L9_1.roundid
    L2_2 = L2_1.roundId
    if L1_2 ~= L2_2 then
      L1_2 = nil
      L9_1 = L1_2
    end
  end
  L1_2 = L2_1.state
  if 0 == L1_2 then
    L1_2 = L48_1
    L2_2 = L21_1
    L2_2 = L2_2[1]
    L1_2(L2_2)
    if A0_2 then
      L1_2 = L66_1
      L2_2 = 1
      L3_2 = "MINIGAME_TRACK_COUNTDOWN"
      L1_2(L2_2, L3_2)
    end
  else
    L1_2 = L2_1.state
    if 1 == L1_2 then
      if A0_2 then
        L1_2 = L66_1
        L2_2 = 1
        L3_2 = "MINIGAME_TRACK_EVENT_STARTING"
        L1_2(L2_2, L3_2)
      end
    else
      L1_2 = L2_1.state
      if 2 == L1_2 then
        L1_2 = L6_1
        if nil ~= L1_2 then
          L1_2 = L7_1
          if 2 ~= L1_2 then
            L1_2 = L7_1
            if 4 ~= L1_2 then
              goto lbl_57
            end
          end
          L1_2 = nil
          L6_1 = L1_2
        end
        ::lbl_57::
        L1_2 = L13_1
        if -1 ~= L1_2 then
          L1_2 = L42_1
          L1_2()
        end
      else
        L1_2 = L2_1.state
        if 3 == L1_2 then
          L1_2 = L30_1
          L1_2()
          L1_2 = L48_1
          L2_2 = L21_1
          L2_2 = L2_2[1]
          L1_2(L2_2)
          L1_2 = L2_1.winners
          L1_2 = L1_2[1]
          if nil ~= L1_2 then
            L2_2 = L64_1
            L3_2 = L32_1
            L4_2 = 1
            L3_2 = L3_2(L4_2)
            L3_2 = L3_2[L1_2]
            L4_2 = 1
            L2_2(L3_2, L4_2)
          end
        else
          L1_2 = L2_1.state
          if 4 == L1_2 then
            L1_2 = L30_1
            L1_2()
            L1_2 = L2_1.winners
            L1_2 = #L1_2
            if 0 ~= L1_2 then
              L1_2 = CreateThread
              function L2_2()
                local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
                L0_3 = 1
                L1_3 = 3
                L2_3 = 1
                for L3_3 = L0_3, L1_3, L2_3 do
                  L4_3 = INSIDE_TRACK
                  if not L4_3 then
                    break
                  end
                  L4_3 = L65_1
                  L5_3 = L2_1.winners
                  L5_3 = L5_3[L3_3]
                  L6_3 = 1
                  L7_3 = L3_3
                  L8_3 = true
                  L4_3(L5_3, L6_3, L7_3, L8_3)
                  L4_3 = Wait
                  L5_3 = 4000
                  L4_3(L5_3)
                end
              end
              L1_2(L2_2)
            end
          end
        end
      end
    end
  end
  L1_2 = L5_1
  if nil == L1_2 then
    L1_2 = L87_1
    L1_2()
  else
    L1_2 = L86_1
    L1_2()
  end
end
function L89_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = DebugStart
  L1_2 = "ToggleMainEventCamera"
  L0_2(L1_2)
  L0_2 = L6_1
  if nil == L0_2 then
    L0_2 = L13_1
    if -1 ~= L0_2 then
      L0_2 = CAN_INTERACT
      if L0_2 then
        goto lbl_14
      end
    end
  end
  do return end
  ::lbl_14::
  L0_2 = L22_1
  if nil == L0_2 then
    L0_2 = L22_1
    if nil == L0_2 then
      L0_2 = CreateCamWithParams
      L1_2 = "DEFAULT_SCRIPTED_CAMERA"
      L2_2 = INSIDE_TRACK_CAM_POS
      L3_2 = INSIDE_TRACK_CAM_ROT
      L4_2 = 50.0
      L5_2 = false
      L6_2 = 0
      L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2)
      L22_1 = L0_2
    end
    L0_2 = SetCamActive
    L1_2 = L22_1
    L2_2 = true
    L0_2(L1_2, L2_2)
    L0_2 = RenderScriptCams
    L1_2 = true
    L2_2 = 900
    L3_2 = 900
    L4_2 = true
    L5_2 = false
    L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
    L0_2 = L2_1.state
    if 2 ~= L0_2 then
      L0_2 = L41_1
      L0_2()
    else
      L0_2 = L42_1
      L0_2()
    end
  else
    L0_2 = DestroyCam
    L1_2 = L22_1
    L0_2(L1_2)
    L0_2 = RenderScriptCams
    L1_2 = false
    L2_2 = 900
    L3_2 = 900
    L4_2 = true
    L5_2 = false
    L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
    L0_2 = nil
    L22_1 = L0_2
    L0_2 = L2_1.state
    if 2 ~= L0_2 then
      L0_2 = L37_1
      L1_2 = "watch_win_"
      L0_2 = L0_2(L1_2)
      if not L0_2 then
        L0_2 = L37_1
        L1_2 = "watch_lose_"
        L0_2 = L0_2(L1_2)
        if not L0_2 then
          L0_2 = L36_1
          L1_2 = "readyidle"
          L0_2(L1_2)
        end
      end
    end
  end
end
function L90_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = L22_1
  if nil ~= L0_2 then
    L0_2 = DestroyCam
    L1_2 = L22_1
    L0_2(L1_2)
    L0_2 = RenderScriptCams
    L1_2 = false
    L2_2 = 900
    L3_2 = 900
    L4_2 = true
    L5_2 = false
    L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
  end
  L0_2 = 1
  L1_2 = 16
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = L0_1
    L4_2 = L4_2[L3_2]
    if L4_2 then
      L4_2 = L0_1
      L4_2 = L4_2[L3_2]
      L4_2 = L4_2.fakeDisplay
      if L4_2 then
        L4_2 = ForceDeleteEntity
        L5_2 = L0_1
        L5_2 = L5_2[L3_2]
        L5_2 = L5_2.fakeDisplay
        L4_2(L5_2)
        L4_2 = L0_1
        L4_2 = L4_2[L3_2]
        L4_2.fakeDisplay = nil
      end
      L4_2 = L0_1
      L4_2 = L4_2[L3_2]
      L4_2 = L4_2.destroyScaleformHandle
      L4_2()
    end
  end
end
InsideTrackDestroy = L90_1
function L90_1()
  local L0_2, L1_2, L2_2
  L0_2 = DebugStart
  L1_2 = "InsideTrackStop"
  L0_2(L1_2)
  L0_2 = TriggerServerEvent
  L1_2 = "InsideTrack:PlayingStateChanged"
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = {}
  L0_1 = L0_2
  L0_2 = {}
  L1_1 = L0_2
  L0_2 = {}
  L2_1 = L0_2
  L0_2 = -1
  L4_1 = L0_2
  L0_2 = nil
  L5_1 = L0_2
  L0_2 = nil
  L6_1 = L0_2
  L0_2 = 0
  L7_1 = L0_2
  L0_2 = {}
  L8_1 = L0_2
  L0_2 = L47_1
  L0_2()
  L0_2 = L30_1
  L0_2()
  L0_2 = InsideTrackDestroy
  L0_2()
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3
    L0_3 = Wait
    L1_3 = 500
    L0_3(L1_3)
    L0_3 = L48_1
    L1_3 = L20_1
    L0_3(L1_3)
    L0_3 = L48_1
    L1_3 = L21_1
    L1_3 = L1_3[1]
    L0_3(L1_3)
    L0_3 = L48_1
    L1_3 = L21_1
    L1_3 = L1_3[2]
    L0_3(L1_3)
  end
  L0_2(L1_2)
end
InsideTrackStop = L90_1
function L90_1()
  local L0_2, L1_2, L2_2
  L0_2 = DebugStart
  L1_2 = "HandleInteractionButtons"
  L0_2(L1_2)
  L0_2 = CAN_INTERACT
  if not L0_2 then
    return
  end
  L0_2 = IsControlJustPressed
  L1_2 = -1
  L2_2 = 191
  L0_2 = L0_2(L1_2, L2_2)
  if not L0_2 then
    L0_2 = IsDisabledControlJustPressed
    L1_2 = -1
    L2_2 = 191
    L0_2 = L0_2(L1_2, L2_2)
    if not L0_2 then
      goto lbl_23
    end
  end
  L0_2 = L84_1
  L1_2 = false
  L0_2(L1_2)
  ::lbl_23::
  L0_2 = IsControlJustPressed
  L1_2 = -1
  L2_2 = 193
  L0_2 = L0_2(L1_2, L2_2)
  if not L0_2 then
    L0_2 = IsDisabledControlJustPressed
    L1_2 = -1
    L2_2 = 193
    L0_2 = L0_2(L1_2, L2_2)
    if not L0_2 then
      goto lbl_37
    end
  end
  L0_2 = L89_1
  L0_2()
  ::lbl_37::
end
function L91_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = Config
  L0_2 = L0_2.MapType
  if 6 == L0_2 then
    return
  end
  L0_2 = DebugStart
  L1_2 = "InsideTrackStart"
  L0_2(L1_2)
  L0_2 = L3_1
  if not L0_2 then
    L0_2 = true
    L3_1 = L0_2
    L0_2 = CreateTargetModel
    L1_2 = -1005355458
    L2_2 = {}
    L3_2 = {}
    L3_2.num = 1
    L3_2.type = "client"
    L3_2.event = "Casino:Target"
    L3_2.icon = "fas fa-horse-head"
    L4_2 = removePlaceholderText
    L5_2 = Translation
    L5_2 = L5_2.Get
    L6_2 = "IT_PRESS_TO_PLAY"
    L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2)
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
    L3_2.label = L4_2
    L3_2.targeticon = "fas fa-horse-head"
    function L4_2(A0_3, A1_3, A2_3)
      local L3_3
      L3_3 = CAN_INTERACT
      return L3_3
    end
    L3_2.canInteract = L4_2
    L4_2 = {}
    L5_2 = 255
    L6_2 = 255
    L7_2 = 255
    L8_2 = 255
    L4_2[1] = L5_2
    L4_2[2] = L6_2
    L4_2[3] = L7_2
    L4_2[4] = L8_2
    L3_2.drawColor = L4_2
    L4_2 = {}
    L5_2 = 30
    L6_2 = 144
    L7_2 = 255
    L8_2 = 255
    L4_2[1] = L5_2
    L4_2[2] = L6_2
    L4_2[3] = L7_2
    L4_2[4] = L8_2
    L3_2.successDrawColor = L4_2
    L3_2.eventAction = "it_start"
    L3_2.chairId = -1
    L4_2 = {}
    L4_2.num = 2
    L4_2.type = "client"
    L4_2.event = "Casino:Target"
    L4_2.icon = "fas fa-circle-info"
    L5_2 = Translation
    L5_2 = L5_2.Get
    L6_2 = "ABOUT"
    L5_2 = L5_2(L6_2)
    L4_2.label = L5_2
    L4_2.targeticon = "fas fa-horse-head"
    function L5_2(A0_3, A1_3, A2_3)
      local L3_3
      L3_3 = CAN_INTERACT
      return L3_3
    end
    L4_2.canInteract = L5_2
    L5_2 = {}
    L6_2 = 255
    L7_2 = 255
    L8_2 = 255
    L9_2 = 255
    L5_2[1] = L6_2
    L5_2[2] = L7_2
    L5_2[3] = L8_2
    L5_2[4] = L9_2
    L4_2.drawColor = L5_2
    L5_2 = {}
    L6_2 = 30
    L7_2 = 144
    L8_2 = 255
    L9_2 = 255
    L5_2[1] = L6_2
    L5_2[2] = L7_2
    L5_2[3] = L8_2
    L5_2[4] = L9_2
    L4_2.successDrawColor = L5_2
    L4_2.eventAction = "it_info"
    L2_2[1] = L3_2
    L2_2[2] = L4_2
    L0_2(L1_2, L2_2)
  end
  L0_2 = TriggerServerEvent
  L1_2 = "InsideTrack:PlayingStateChanged"
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = TriggerServerEvent
  L1_2 = "InsideTrack:GetStates"
  L0_2(L1_2)
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L0_3 = RequestStreamedTextureDict
    L1_3 = "Prop_Screen_VW_InsideTrack"
    L2_3 = false
    L0_3(L1_3, L2_3)
    L0_3 = -1
    L1_3 = false
    L2_3 = GAME_TIMER
    L2_3 = L2_3 + 1000
    L3_3 = GAME_TIMER
    L3_3 = L3_3 + 100
    L4_3 = nil
    L5_3 = true
    L6_3 = L48_1
    L7_3 = L20_1
    L6_3(L7_3)
    L6_3 = GetSoundId
    L6_3 = L6_3()
    L20_1 = L6_3
    while true do
      L6_3 = INSIDE_TRACK
      if not L6_3 then
        break
      end
      L6_3 = IN_CASINO
      if not L6_3 then
        break
      end
      L6_3 = GAME_TIMER
      if L2_3 <= L6_3 then
        L6_3 = GAME_TIMER
        L2_3 = L6_3 + 1000
        L6_3 = IsActivityEnabled
        L7_3 = "insidetrack"
        L6_3 = L6_3(L7_3)
        if L6_3 then
          L6_3 = L5_1
          if nil == L6_3 then
            L6_3 = L88_1
            L7_3 = false
            L6_3(L7_3)
          end
          L5_3 = true
        else
          L6_3 = n
          L5_1 = L6_3
          L5_3 = false
        end
        if L5_3 then
          L6_3 = L2_1.timeLeft
          if nil ~= L6_3 then
            L6_3 = L2_1.timeLeft
            if L6_3 > 0 then
              L6_3 = math
              L6_3 = L6_3.floor
              L7_3 = L2_1.timeLeft
              L7_3 = L7_3 / 60
              L6_3 = L6_3(L7_3)
              L6_3 = L6_3 + 1
              if L6_3 <= 5 and L0_3 ~= L6_3 then
                L0_3 = L6_3
                L7_3 = L66_1
                L8_3 = 1
                L9_3 = "MINIGAME_TRACK_"
                L10_3 = L6_3
                L11_3 = "MIN"
                L9_3 = L9_3 .. L10_3 .. L11_3
                L7_3(L8_3, L9_3)
              else
                L7_3 = L2_1.timeLeft
                if 10 == L7_3 then
                  L7_3 = L2_1.state
                  if -1 == L7_3 then
                    L7_3 = L66_1
                    L8_3 = 1
                    L9_3 = "MINIGAME_TRACK_COUNTDOWN"
                    L7_3(L8_3, L9_3)
                  end
                end
              end
              L7_3 = L2_1.timeLeft
              L7_3 = L7_3 - 1
              L2_1.timeLeft = L7_3
              L7_3 = L72_1
              L8_3 = L2_1.timeLeft
              L7_3(L8_3)
            end
            L6_3 = L2_1.state
            if 0 == L6_3 then
              L6_3 = L85_1
              L7_3 = "Inside Track"
              L6_3(L7_3)
            end
          end
        end
      end
      L6_3 = GAME_TIMER
      if L3_3 <= L6_3 then
        L6_3 = GAME_TIMER
        L3_3 = L6_3 + 100
        L6_3 = L33_1
        L6_3 = L6_3()
        if -1 ~= L6_3 and not L1_3 then
          L7_3 = L13_1
          if -1 == L7_3 then
            L1_3 = true
        end
        else
          if -1 ~= L6_3 then
            L7_3 = L13_1
          end
          if -1 ~= L7_3 and L1_3 then
            L1_3 = false
          end
        end
        L7_3 = L17_1
        if nil ~= L7_3 then
          L7_3 = IsAnimationInProgress
          L7_3 = L7_3()
          if not L7_3 then
            L7_3 = PlaySynchronizedScene
            L8_3 = L11_1
            L9_3 = L12_1
            L10_3 = L10_1
            L11_3 = L17_1
            L7_3(L8_3, L9_3, L10_3, L11_3)
            L7_3 = nil
            L17_1 = L7_3
          end
        end
        L7_3 = L13_1
        if -1 ~= L7_3 then
          L7_3 = L15_1
          if nil ~= L7_3 then
            L7_3 = GAME_TIMER
            L8_3 = L16_1
            if L7_3 > L8_3 then
              L7_3 = L46_1
              L7_3()
            end
          end
        end
      end
      L6_3 = IsGamepadControl
      L6_3 = L6_3()
      if L6_3 ~= L4_3 then
        L6_3 = L50_1
        L6_3()
        L6_3 = IsGamepadControl
        L6_3 = L6_3()
        L4_3 = L6_3
      end
      if L5_3 then
        L6_3 = L57_1
        L6_3()
        L6_3 = L90_1
        L6_3()
      end
      L6_3 = Wait
      L7_3 = 0
      L6_3(L7_3)
    end
    L6_3 = SetStreamedTextureDictAsNoLongerNeeded
    L7_3 = "Prop_Screen_VW_InsideTrack"
    L6_3(L7_3)
  end
  L0_2(L1_2)
  L0_2 = L9_1
  if nil ~= L0_2 then
    L0_2 = L9_1.horse
    if nil ~= L0_2 then
      L0_2 = L31_1
      L1_2 = L9_1.horse
      L2_2 = L9_1.odds
      L3_2 = L9_1.bet
      L0_2(L1_2, L2_2, L3_2)
    end
  end
  L0_2 = SetCasinoBlip
  L1_2 = BLIP_POS_INSIDETRACK
  L2_2 = 684
  L3_2 = Translation
  L3_2 = L3_2.Get
  L4_2 = "BLIP_IT"
  L3_2 = L3_2(L4_2)
  L4_2 = false
  L0_2(L1_2, L2_2, L3_2, L4_2)
end
InsideTrackStart = L91_1
function L91_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Config
  L0_2 = L0_2.UseTarget
  if L0_2 then
    return
  end
  L0_2 = DebugStart
  L1_2 = "InsideTrack_ShowNotifyUI"
  L0_2(L1_2)
  L0_2 = ELECTRICITY_BROKEN
  if L0_2 then
    L0_2 = IsAtJob
    L1_2 = Config
    L1_2 = L1_2.Jobs
    L1_2 = L1_2.Electrician
    L1_2 = L1_2.JobName
    L2_2 = nil
    L3_2 = Config
    L3_2 = L3_2.Jobs
    L3_2 = L3_2.Electrician
    L3_2 = L3_2.MinGrade
    L4_2 = Config
    L4_2 = L4_2.Jobs
    L4_2 = L4_2.Electrician
    L4_2 = L4_2.MaxGrade
    L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2)
    if L0_2 then
      L0_2 = ShowHelpNotification
      L1_2 = Translation
      L1_2 = L1_2.Get
      L2_2 = "DIAMOND_WALL_BROKE_5"
      L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
      L0_2(L1_2, L2_2, L3_2, L4_2)
    else
      L0_2 = ShowHelpNotification
      L1_2 = Translation
      L1_2 = L1_2.Get
      L2_2 = "DIAMOND_WALL_BROKE_4"
      L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
      L0_2(L1_2, L2_2, L3_2, L4_2)
    end
    return
  end
  L0_2 = L34_1
  L0_2 = L0_2()
  if not L0_2 then
    L0_2 = InfoPanel_UpdateNotification
    L1_2 = Translation
    L1_2 = L1_2.Get
    L2_2 = "IT_MACHINE_USED"
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    L0_2(L1_2, L2_2, L3_2, L4_2)
    return
  end
  L0_2 = InfoPanel_UpdateNotification
  L1_2 = Translation
  L1_2 = L1_2.Get
  L2_2 = "IT_PRESS_TO_PLAY"
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  L0_2(L1_2, L2_2, L3_2, L4_2)
end
InsideTrack_ShowNotifyUI = L91_1
function L91_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = InfoPanel_Update
  L1_2 = "casinoui_insidetrack"
  L2_2 = "casinoui_insidetrack"
  L3_2 = "Inside Track"
  L4_2 = Translation
  L4_2 = L4_2.Get
  L5_2 = "IT_WELCOME_1"
  L4_2 = L4_2(L5_2)
  L5_2 = Translation
  L5_2 = L5_2.Get
  L6_2 = "IT_WELCOME_2"
  L5_2, L6_2 = L5_2(L6_2)
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2)
end
InsideTrack_ShowWelcome = L91_1
function L91_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = DebugStart
  L2_2 = "InsideTrack_OnInteraction"
  L1_2(L2_2)
  L1_2 = L13_1
  if -1 ~= L1_2 then
    return
  end
  L1_2 = PLAYER_DRUNK_LEVEL
  if L1_2 >= 1.0 then
    return
  end
  L1_2 = ELECTRICITY_BROKEN
  if L1_2 then
    L1_2 = IsAtJob
    L2_2 = Config
    L2_2 = L2_2.Jobs
    L2_2 = L2_2.Electrician
    L2_2 = L2_2.JobName
    L3_2 = nil
    L4_2 = Config
    L4_2 = L4_2.Jobs
    L4_2 = L4_2.Electrician
    L4_2 = L4_2.MinGrade
    L5_2 = Config
    L5_2 = L5_2.Jobs
    L5_2 = L5_2.Electrician
    L5_2 = L5_2.MaxGrade
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
    if L1_2 then
      L1_2 = ShowHelpNotification
      L2_2 = Translation
      L2_2 = L2_2.Get
      L3_2 = "DIAMOND_WALL_BROKE_5"
      L2_2, L3_2, L4_2, L5_2, L6_2 = L2_2(L3_2)
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    else
      L1_2 = ShowHelpNotification
      L2_2 = Translation
      L2_2 = L2_2.Get
      L3_2 = "DIAMOND_WALL_BROKE_4"
      L2_2, L3_2, L4_2, L5_2, L6_2 = L2_2(L3_2)
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    end
    return
  end
  L1_2 = L34_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = InfoPanel_Update
    L2_2 = nil
    L3_2 = nil
    L4_2 = nil
    L5_2 = nil
    L6_2 = nil
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = InfoPanel_UpdateNotification
    L2_2 = Translation
    L2_2 = L2_2.Get
    L3_2 = "IT_MACHINE_USED"
    L2_2, L3_2, L4_2, L5_2, L6_2 = L2_2(L3_2)
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    return
  end
  L1_2 = InfoPanel_UpdateNotification
  L2_2 = nil
  L1_2(L2_2)
  L1_2 = GAME_INFO_PANEL
  if nil == L1_2 then
    L1_2 = ShouldShowHowToPlay
    L2_2 = "insidetrack"
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = InsideTrack_ShowWelcome
      L1_2()
      return
    end
  end
  L1_2 = L56_1
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = InfoPanel_Update
  L2_2 = nil
  L3_2 = nil
  L4_2 = nil
  L5_2 = nil
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
InsideTrack_OnInteraction = L91_1
function L91_1()
  local L0_2, L1_2, L2_2
  L0_2 = DebugStart
  L1_2 = "InsideTrack_OnInteractionQuit"
  L0_2(L1_2)
  L0_2 = CAN_INTERACT
  if not L0_2 then
    return
  end
  L0_2 = PushNUIInstructionalButtons
  L1_2 = nil
  L0_2(L1_2)
  L0_2 = L6_1
  if nil == L0_2 then
    L0_2 = L54_1
    L0_2()
  else
    L0_2 = L7_1
    if 0 ~= L0_2 then
      L0_2 = L69_1
      L1_2 = 0
      L2_2 = 0
      L0_2(L1_2, L2_2)
      L0_2 = L18_1
      if not L0_2 then
        L0_2 = TriggerServerEvent
        L1_2 = "InsideTrack:ResetLocalHorses"
        L0_2(L1_2)
        L0_2 = true
        L18_1 = L0_2
      end
    else
      L0_2 = nil
      L6_1 = L0_2
      L0_2 = L50_1
      L0_2()
    end
  end
end
InsideTrack_OnInteractionQuit = L91_1
L91_1 = RegisterNetEvent
L92_1 = "InsideTrack:WinningsInTotal"
L91_1(L92_1)
L91_1 = AddEventHandler
L92_1 = "InsideTrack:WinningsInTotal"
function L93_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2 - A1_2
  if A0_2 > 0 then
    L3_2 = Stats_Increase
    L4_2 = "rcore_casino_track_wins"
    L5_2 = 1
    L3_2(L4_2, L5_2)
    L3_2 = Stats_Increase
    L4_2 = "rcore_casino_track_profit"
    L5_2 = A0_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = Stats_Increase
    L4_2 = "rcore_casino_track_loss"
    L5_2 = 1
    L3_2(L4_2, L5_2)
  end
  if L2_2 > 0 then
    L3_2 = Stats_Increase
    L4_2 = "rcore_casino_track_profitreal"
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  elseif L2_2 < 0 then
    L3_2 = Stats_Decrease
    L4_2 = "rcore_casino_track_profitreal"
    L5_2 = math
    L5_2 = L5_2.abs
    L6_2 = L2_2
    L5_2, L6_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2)
  end
end
L91_1(L92_1, L93_1)
L91_1 = RegisterNetEvent
L92_1 = "InsideTrack:GetStates"
L91_1(L92_1)
L91_1 = AddEventHandler
L92_1 = "InsideTrack:GetStates"
function L93_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = INSIDE_TRACK
  if not L2_2 then
    return
  end
  L2_2 = L55_1
  L2_2()
  L2_2 = 1
  L3_2 = 16
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L0_1
    L6_2 = L6_2[L5_2]
    if L6_2 then
      L6_2 = L0_1
      L6_2 = L6_2[L5_2]
      L7_2 = A0_2[L5_2]
      L7_2 = L7_2.screen
      L6_2.screen = L7_2
      L6_2 = L0_1
      L6_2 = L6_2[L5_2]
      L7_2 = A0_2[L5_2]
      L7_2 = L7_2.playerId
      L6_2.playerId = L7_2
    end
  end
  L2_2 = A1_2.timeLeft
  if nil ~= L2_2 then
    L2_1 = A1_2
    L2_2 = L88_1
    L3_2 = false
    L2_2(L3_2)
  else
    L2_2 = nil
    L5_1 = L2_2
  end
end
L91_1(L92_1, L93_1)
L91_1 = RegisterNetEvent
L92_1 = "InsideTrack:PlayerEnteredMachine"
L91_1(L92_1)
L91_1 = AddEventHandler
L92_1 = "InsideTrack:PlayerEnteredMachine"
function L93_1(A0_2)
  local L1_2, L2_2
  L1_2 = INSIDE_TRACK
  if not L1_2 then
    return
  end
  L1_2 = L0_1
  L1_2 = #L1_2
  if 0 == L1_2 then
    return
  end
  L2_2 = A0_2.id
  L1_2 = L0_1
  L1_2 = L1_2[L2_2]
  if nil ~= L1_2 then
    L2_2 = A0_2.id
    L1_2 = L0_1
    L1_2 = L1_2[L2_2]
    L2_2 = A0_2.screen
    L1_2.screen = L2_2
    L2_2 = A0_2.id
    L1_2 = L0_1
    L1_2 = L1_2[L2_2]
    L2_2 = A0_2.playerId
    L1_2.playerId = L2_2
    L1_2 = Config
    L1_2 = L1_2.MapType
    if 2 ~= L1_2 then
      L1_2 = Config
      L1_2 = L1_2.MapType
      if 3 ~= L1_2 then
        L2_2 = A0_2.id
        L1_2 = L0_1
        L1_2 = L1_2[L2_2]
        L1_2 = L1_2.toggleFakeDisplay
        L2_2 = false
        L1_2(L2_2)
      end
    end
    L2_2 = A0_2.id
    L1_2 = L0_1
    L1_2 = L1_2[L2_2]
    L1_2 = L1_2.createScaleformHandle
    L1_2()
  end
end
L91_1(L92_1, L93_1)
L91_1 = RegisterNetEvent
L92_1 = "InsideTrack:PlayerLeftMachine"
L91_1(L92_1)
L91_1 = AddEventHandler
L92_1 = "InsideTrack:PlayerLeftMachine"
function L93_1(A0_2)
  local L1_2, L2_2
  L1_2 = INSIDE_TRACK
  if not L1_2 then
    return
  end
  L1_2 = L0_1
  L1_2 = #L1_2
  if 0 == L1_2 then
    return
  end
  L2_2 = A0_2.id
  L1_2 = L0_1
  L1_2 = L1_2[L2_2]
  if nil ~= L1_2 then
    L2_2 = A0_2.id
    L1_2 = L0_1
    L1_2 = L1_2[L2_2]
    L2_2 = A0_2.screen
    L1_2.screen = L2_2
    L2_2 = A0_2.id
    L1_2 = L0_1
    L1_2 = L1_2[L2_2]
    L1_2.playerId = -1
    L2_2 = A0_2.id
    L1_2 = L0_1
    L1_2 = L1_2[L2_2]
    L1_2 = L1_2.toggleFakeDisplay
    L2_2 = true
    L1_2(L2_2)
    L2_2 = A0_2.id
    L1_2 = L0_1
    L1_2 = L1_2[L2_2]
    L1_2 = L1_2.destroyScaleformHandle
    L1_2()
  end
end
L91_1(L92_1, L93_1)
L91_1 = RegisterNetEvent
L92_1 = "InsideTrack:ResetLocalHorses"
L91_1(L92_1)
L91_1 = AddEventHandler
L92_1 = "InsideTrack:ResetLocalHorses"
function L93_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L1_1
  if nil == L2_2 then
    return
  end
  L1_1.horses = A0_2
  L2_2 = L62_1
  L3_2 = L6_1
  L4_2 = L1_1.horses
  L2_2(L3_2, L4_2)
  L2_2 = L69_1
  L3_2 = 0
  L4_2 = 1
  L2_2(L3_2, L4_2)
  L2_2 = PLAYER_CACHE
  L2_2.insideTrackCooldownUntil = A1_2
  L2_2 = L76_1
  L2_2()
end
L91_1(L92_1, L93_1)
L91_1 = RegisterNetEvent
L92_1 = "InsideTrack:MainEvent"
L91_1(L92_1)
L91_1 = AddEventHandler
L92_1 = "InsideTrack:MainEvent"
function L93_1(A0_2)
  local L1_2, L2_2
  L2_1 = A0_2
  L1_2 = L9_1
  if nil ~= L1_2 then
    L1_2 = L9_1.roundid
    L2_2 = L2_1.roundId
    if L1_2 ~= L2_2 then
      L1_2 = nil
      L9_1 = L1_2
    end
  end
  L1_2 = INSIDE_TRACK
  if not L1_2 then
    return
  end
  L1_2 = L88_1
  L2_2 = true
  L1_2(L2_2)
end
L91_1(L92_1, L93_1)
L91_1 = RegisterNetEvent
L92_1 = "InsideTrack:MainEventTicketAccepted"
L91_1(L92_1)
L91_1 = AddEventHandler
L92_1 = "InsideTrack:MainEventTicketAccepted"
function L93_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L9_1 = A0_2
  L2_2 = L31_1
  L3_2 = L9_1.horse
  L4_2 = L9_1.odds
  L5_2 = L9_1.bet
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = nil
  L6_1 = L2_2
  L2_2 = 0
  L19_1 = L2_2
  L2_2 = L41_1
  L2_2()
  L2_2 = L50_1
  L2_2()
  L2_2 = PlaySound
  L3_2 = "DLC_VW_RULES"
  L4_2 = "dlc_vw_table_games_frontend_sounds"
  L2_2(L3_2, L4_2)
  if A1_2 then
    L2_2 = PLAYER_CACHE
    L2_2.insideTrackMainCooldownUntil = A1_2
  end
end
L91_1(L92_1, L93_1)
L91_1 = RegisterNetEvent
L92_1 = "InsideTrack:MainEventTicketDeclined"
L91_1(L92_1)
L91_1 = AddEventHandler
L92_1 = "InsideTrack:MainEventTicketDeclined"
function L93_1()
  local L0_2, L1_2
  L0_2 = L30_1
  L0_2()
end
L91_1(L92_1, L93_1)
L91_1 = RegisterNetEvent
L92_1 = "InsideTrack:ScreenUpdated"
L91_1(L92_1)
L91_1 = AddEventHandler
L92_1 = "InsideTrack:ScreenUpdated"
function L93_1(A0_2, A1_2)
  local L2_2
  L2_2 = L0_1
  L2_2 = L2_2[A0_2]
  if nil == L2_2 then
    return
  end
  L2_2 = L0_1
  L2_2 = L2_2[A0_2]
  L2_2.screen = A1_2
end
L91_1(L92_1, L93_1)
L91_1 = RegisterNetEvent
L92_1 = "InsideTrack:ReturnTicket"
L91_1(L92_1)
L91_1 = AddEventHandler
L92_1 = "InsideTrack:ReturnTicket"
function L93_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if 0 == A0_2 then
    L2_2 = L81_1
    L3_2 = A1_2
    L4_2 = 0
    L5_2 = Config
    L5_2 = L5_2.IT_LOCAL_RACE_DURATION
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = false
    L18_1 = L2_2
  end
end
L91_1(L92_1, L93_1)
L91_1 = RegisterNetEvent
L92_1 = "InsideTrack:EnterMachine"
L91_1(L92_1)
L91_1 = AddEventHandler
L92_1 = "InsideTrack:EnterMachine"
function L93_1(A0_2)
  local L1_2, L2_2
  L1_1 = A0_2
  if nil == A0_2 then
    L1_2 = L49_1
    L1_2()
    L1_2 = ForgotLastInteractionEntity
    L1_2()
    L1_2 = ForgotLastStartedGameType
    L2_2 = "insidetrack"
    L1_2(L2_2)
    return
  end
  LAST_STARTED_GAME_TYPE = "insidetrack"
end
L91_1(L92_1, L93_1)
L91_1 = Translation
L92_1 = Config
L92_1 = L92_1.Locale
L91_1 = L91_1[L92_1]
if L91_1 then
  L91_1 = pairs
  L92_1 = Translation
  L93_1 = Config
  L93_1 = L93_1.Locale
  L92_1 = L92_1[L93_1]
  L91_1, L92_1, L93_1, L94_1 = L91_1(L92_1)
  for L95_1, L96_1 in L91_1, L92_1, L93_1, L94_1 do
    L98_1 = L95_1
    L97_1 = L95_1.startswith
    L99_1 = "ITH_NAME_"
    L97_1 = L97_1(L98_1, L99_1)
    if not L97_1 then
      L98_1 = L95_1
      L97_1 = L95_1.startswith
      L99_1 = "HORSEGAME_"
      L97_1 = L97_1(L98_1, L99_1)
      if not L97_1 then
        goto lbl_232
      end
    end
    L97_1 = AddTextEntry
    L98_1 = L95_1
    L99_1 = L96_1
    L97_1(L98_1, L99_1)
    ::lbl_232::
  end
end
