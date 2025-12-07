local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1, L41_1, L42_1, L43_1, L44_1, L45_1, L46_1, L47_1, L48_1, L49_1, L50_1, L51_1, L52_1, L53_1, L54_1, L55_1, L56_1, L57_1
L0_1 = {}
L1_1 = {}
L2_1 = {}
L3_1 = GAME_TIMER
L4_1 = -1
L5_1 = -1
L6_1 = -1
L7_1 = {}
L8_1 = {}
L9_1 = 2
L10_1 = 2
L8_1[1] = L9_1
L8_1[2] = L10_1
L9_1 = false
L10_1 = 0
L11_1 = 0
L12_1 = nil
L13_1 = nil
L14_1 = false
L15_1 = nil
L16_1 = 0.0
L17_1 = false
L18_1 = 0.5
L19_1 = false
L20_1 = "anim_casino_a@amb@casino@games@slots@male"
function L21_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = {}
  L0_1 = L0_2
  L0_2 = {}
  L1_1 = L0_2
  L0_2 = {}
  L2_1 = L0_2
  L0_2 = GAME_TIMER
  L3_1 = L0_2
  L0_2 = -1
  L4_1 = L0_2
  L0_2 = -1
  L5_1 = L0_2
  L0_2 = -1
  L6_1 = L0_2
  L0_2 = {}
  L7_1 = L0_2
  L0_2 = {}
  L1_2 = 2
  L2_2 = 2
  L0_2[1] = L1_2
  L0_2[2] = L2_2
  L8_1 = L0_2
  L0_2 = false
  L9_1 = L0_2
  L0_2 = 0
  L10_1 = L0_2
  L0_2 = 0
  L11_1 = L0_2
  L0_2 = nil
  L12_1 = L0_2
  L0_2 = nil
  L13_1 = L0_2
  L0_2 = false
  L14_1 = L0_2
  L0_2 = nil
  L15_1 = L0_2
  L0_2 = 0.0
  L16_1 = L0_2
  L0_2 = false
  L17_1 = L0_2
  L0_2 = 0.5
  L18_1 = L0_2
  L0_2 = false
  L19_1 = L0_2
  L0_2 = 1
  L1_2 = DrinkingBar_Bartenders
  L1_2 = #L1_2
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = DrinkingBar_Bartenders
    L4_2 = L4_2[L3_2]
    L4_2.beingUsed = false
  end
end
function L22_1()
  local L0_2, L1_2, L2_2
  L0_2 = DebugStart
  L1_2 = "ResetDrinkingBarSession"
  L0_2(L1_2)
  L0_2 = GAME_TIMER
  L3_1 = L0_2
  L0_2 = -1
  L4_1 = L0_2
  L0_2 = -1
  L5_1 = L0_2
  L0_2 = -1
  L6_1 = L0_2
  L0_2 = {}
  L7_1 = L0_2
  L0_2 = {}
  L1_2 = 2
  L2_2 = 2
  L0_2[1] = L1_2
  L0_2[2] = L2_2
  L8_1 = L0_2
  L0_2 = false
  L9_1 = L0_2
  L0_2 = 0
  L10_1 = L0_2
  L0_2 = 0
  L11_1 = L0_2
  L0_2 = false
  L14_1 = L0_2
  L0_2 = nil
  L15_1 = L0_2
  L0_2 = 0.0
  L16_1 = L0_2
  L0_2 = false
  L17_1 = L0_2
  L0_2 = 0.5
  L18_1 = L0_2
  L0_2 = false
  L19_1 = L0_2
end
function L23_1()
  local L0_2, L1_2
  L0_2 = RequestAnimDictAndWait
  L1_2 = "anim@amb@nightclub@mini@drinking@bar@drink_v2@idle_a"
  L0_2(L1_2)
  L0_2 = RequestAnimDictAndWait
  L1_2 = "anim@amb@nightclub@mini@drinking@bar@drink@beer"
  L0_2(L1_2)
  L0_2 = RequestAnimDictAndWait
  L1_2 = "anim@amb@nightclub@mini@drinking@champagne_drinking@base@"
  L0_2(L1_2)
  L0_2 = RequestAnimDictAndWait
  L1_2 = "anim@amb@nightclub@mini@drinking@bar@drink@base"
  L0_2(L1_2)
  L0_2 = RequestAnimDictAndWait
  L1_2 = "anim@amb@nightclub@mini@drinking@bar@drink@idle_a"
  L0_2(L1_2)
  L0_2 = RequestAnimDictAndWait
  L1_2 = "anim@amb@nightclub@mini@drinking@bar@drink@one"
  L0_2(L1_2)
end
function L24_1()
  local L0_2, L1_2
  L0_2 = DebugStart
  L1_2 = "IsBartenderInteractionBusy"
  L0_2(L1_2)
  L0_2 = GAME_TIMER
  L1_2 = L3_1
  L0_2 = L0_2 < L1_2
  return L0_2
end
function L25_1(A0_2)
  local L1_2, L2_2
  L1_2 = DebugStart
  L2_2 = "MakeBartenderInteractionBusy"
  L1_2(L2_2)
  L1_2 = GAME_TIMER
  L1_2 = L1_2 + A0_2
  L2_2 = L3_1
  if L1_2 > L2_2 then
    L3_1 = L1_2
  end
end
function L26_1()
  local L0_2, L1_2
  L0_2 = DebugStart
  L1_2 = "MakeBartenderInteractionFree"
  L0_2(L1_2)
  L0_2 = GAME_TIMER
  L3_1 = L0_2
end
function L27_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = DebugStart
  L2_2 = "DrinksMenu_DrinkSelected"
  L1_2(L2_2)
  L1_2 = L5_1
  if 1 ~= L1_2 then
    return
  end
  L1_2 = CAN_INTERACT
  if not L1_2 then
    return
  end
  L1_2 = nil
  L2_2 = pairs
  L3_2 = CasinoInventoryItems
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.key
    if L8_2 == A0_2 then
      L1_2 = A0_2
      break
    end
  end
  if nil == L1_2 then
    return
  end
  L2_2 = BlockPlayerInteraction
  L3_2 = 300
  L2_2(L3_2)
  L2_2 = TriggerServerEvent
  L3_2 = "DrinkingBar:BuyDrink"
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
DrinksMenu_DrinkSelected = L27_1
function L27_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = DebugStart
  L1_2 = "GetSnackCount"
  L0_2(L1_2)
  L0_2 = 0
  L1_2 = pairs
  L2_2 = CasinoInventoryItems
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.itemType
    if 1 == L7_2 then
      L7_2 = L6_2.key
      L8_2 = PLAYER_ITEMS
      L8_2 = L8_2[L7_2]
      if L8_2 then
        L8_2 = PLAYER_ITEMS
        L8_2 = L8_2[L7_2]
        if L8_2 > 0 then
          L0_2 = L0_2 + 1
        end
      end
    end
  end
  return L0_2
end
function L28_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = DebugStart
  L2_2 = "SittingMenu_SnackSelected"
  L1_2(L2_2)
  L1_2 = L10_1
  if 1 ~= L1_2 then
    return
  end
  L1_2 = CAN_INTERACT
  if not L1_2 then
    return
  end
  L1_2 = TriggerServerEvent
  L2_2 = "DrinkingBar:UseCasinoSnack"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = BlockPlayerInteraction
  L2_2 = 1000
  L1_2(L2_2)
  L1_2 = 0
  L10_1 = L1_2
  L1_2 = CloseAllMenus
  L1_2()
end
SittingMenu_SnackSelected = L28_1
L28_1 = "anim@amb@nightclub@mini@drinking@champagne_drinking@base@"
function L29_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = DebugStart
  L3_2 = "CreateTempProp"
  L2_2(L3_2)
  L2_2 = CreateObject
  L3_2 = GetHashKey
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = GetPlayerPosition
  L4_2 = L4_2()
  L5_2 = false
  L6_2 = false
  L7_2 = 0
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = L1_1
  L3_2 = L3_2[A0_2]
  if nil == L3_2 then
    L3_2 = L1_1
    L4_2 = {}
    L3_2[A0_2] = L4_2
  end
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = L1_1
  L4_2 = L4_2[A0_2]
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  return L2_2
end
function L30_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = DebugStart
  L3_2 = "GetTempPropOfPed"
  L2_2(L3_2)
  L2_2 = L1_1
  L2_2 = L2_2[A0_2]
  if nil == L2_2 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = GetHashKey
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = pairs
  L4_2 = L1_1
  L4_2 = L4_2[A0_2]
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = GetEntityModel
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    if L9_2 == L2_2 then
      return L8_2
    end
  end
  L3_2 = nil
  return L3_2
end
function L31_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = DebugStart
  L3_2 = "DestroyTempProp"
  L2_2(L3_2)
  L2_2 = L1_1
  L2_2 = L2_2[A0_2]
  if nil == L2_2 then
    return
  end
  L2_2 = pairs
  L3_2 = L1_1
  L3_2 = L3_2[A0_2]
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    if L7_2 == A1_2 then
      L8_2 = DeleteEntity
      L9_2 = L7_2
      L8_2(L9_2)
      L8_2 = table
      L8_2 = L8_2.remove
      L9_2 = L1_1
      L9_2 = L9_2[A0_2]
      L10_2 = L6_2
      L8_2(L9_2, L10_2)
    end
  end
end
function L32_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = DebugStart
  L2_2 = "DestroyTempPropsOfPed"
  L1_2(L2_2)
  L1_2 = L1_1
  L1_2 = L1_2[A0_2]
  if nil == L1_2 then
    return
  end
  L1_2 = pairs
  L2_2 = L1_1
  L2_2 = L2_2[A0_2]
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = DeleteEntity
    L8_2 = L6_2
    L7_2(L8_2)
  end
  L1_2 = L1_1
  L1_2[A0_2] = nil
end
function L33_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = DebugStart
  L1_2 = "DestroyTempProps"
  L0_2(L1_2)
  L0_2 = pairs
  L1_2 = L1_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = L32_1
    L7_2 = L4_2
    L6_2(L7_2)
  end
  L0_2 = {}
  L1_1 = L0_2
end
L34_1 = nil
function L35_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2
  L8_2 = DebugStart
  L9_2 = "DrinkEatInteraction"
  L8_2(L9_2)
  L8_2 = CreateThread
  function L9_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3
    L0_3 = A7_2
    if not L0_3 then
      L0_3 = 18905
      A7_2 = L0_3
    end
    L0_3 = A0_2
    L1_3 = PlayerPedId
    L1_3 = L1_3()
    if L0_3 == L1_3 then
      L0_3 = BlockPlayerInteraction
      L1_3 = 10000
      L0_3(L1_3)
    end
    L0_3 = RequestAnimDictAndWait
    L1_3 = A1_2
    L0_3(L1_3)
    L0_3 = L29_1
    L1_3 = A0_2
    L2_3 = A4_2
    L0_3 = L0_3(L1_3, L2_3)
    L1_3 = GetEntityCoords
    L2_3 = A0_2
    L1_3 = L1_3(L2_3)
    L2_3 = GetEntityRotation
    L3_3 = A0_2
    L2_3 = L2_3(L3_3)
    L3_3 = GetPedBoneIndex
    L4_3 = A0_2
    L5_3 = A7_2
    L3_3 = L3_3(L4_3, L5_3)
    L4_3 = AttachEntityToEntity
    L5_3 = L0_3
    L6_3 = A0_2
    L7_3 = L3_3
    L8_3 = A5_2.x
    L9_3 = A5_2.y
    L10_3 = A5_2.z
    L11_3 = A6_2.x
    L12_3 = A6_2.y
    L13_3 = A6_2.z
    L14_3 = true
    L15_3 = true
    L16_3 = false
    L17_3 = true
    L18_3 = 1
    L19_3 = true
    L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
    L4_3 = 1
    L5_3 = A2_2
    L5_3 = #L5_3
    L6_3 = 1
    for L7_3 = L4_3, L5_3, L6_3 do
      L8_3 = A2_2
      L8_3 = L8_3[L7_3]
      L9_3 = 2.0
      if "outro_bottle" == L8_3 or "mp_player_int_eat_exit_burger" == L8_3 then
        L9_3 = 0.5
      end
      L10_3 = TaskPlayAnim
      L11_3 = A0_2
      L12_3 = A1_2
      L13_3 = L8_3
      L14_3 = L9_3
      L15_3 = -1.5
      L16_3 = -1
      L17_3 = 50
      L18_3 = 0
      L19_3 = false
      L20_3 = false
      L21_3 = false
      L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3)
      L10_3 = Wait
      L11_3 = 300
      L10_3(L11_3)
      L10_3 = WaitForEntityAnimToFinish
      L11_3 = A0_2
      L12_3 = A1_2
      L13_3 = L8_3
      L14_3 = A3_2
      L14_3 = L14_3[L7_3]
      L10_3(L11_3, L12_3, L13_3, L14_3)
    end
    L4_3 = ClearPedSecondaryTask
    L5_3 = A0_2
    L4_3(L5_3)
    L4_3 = L32_1
    L5_3 = A0_2
    L4_3(L5_3)
    L4_3 = A0_2
    L5_3 = PlayerPedId
    L5_3 = L5_3()
    if L4_3 == L5_3 then
      L4_3 = UnblockPlayerInteraction
      L4_3()
      L4_3 = InfoPanel_UpdateNotification
      L5_3 = L27_1
      L5_3 = L5_3()
      if L5_3 > 0 then
        L5_3 = Translation
        L5_3 = L5_3.Get
        L6_3 = "BAR_SIT_FUNCTIONS"
        L5_3 = L5_3(L6_3)
        if L5_3 then
          goto lbl_113
        end
      end
      L5_3 = Translation
      L5_3 = L5_3.Get
      L6_3 = "BAR_SIT_NOSNACKS"
      L5_3 = L5_3(L6_3)
      ::lbl_113::
      L4_3(L5_3)
    end
  end
  L10_2 = "DrinkEatInteraction drinkingbar"
  L8_2(L9_2, L10_2)
end
function L36_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L3_2 = DebugStart
  L4_2 = "SetChampaigneShakeLevel"
  L3_2(L4_2)
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  if A0_2 == L3_2 then
    L3_2 = TriggerServerEvent
    L4_2 = "DrinkingBar:ChampagneSceneStrength"
    L5_2 = A1_2
    L6_2 = A2_2
    L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = DrinkingBar_Bartenders
  L3_2 = L3_2[A1_2]
  L3_2 = L3_2.animCoords
  L4_2 = DrinkingBar_Bartenders
  L4_2 = L4_2[A1_2]
  L4_2 = L4_2.animRot
  L5_2 = CreateSynchronizedScene
  L6_2 = L3_2.x
  L7_2 = L3_2.y
  L8_2 = L3_2.z
  L9_2 = L4_2.x
  L10_2 = L4_2.y
  L11_2 = L4_2.z
  L12_2 = 0
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L6_2 = TaskSynchronizedScene
  L7_2 = A0_2
  L8_2 = L5_2
  L9_2 = L28_1
  L10_2 = A2_2
  L11_2 = 2.0
  L12_2 = -1.5
  L13_2 = 13
  L14_2 = 16
  L15_2 = 2.0
  L16_2 = 0
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L6_2 = SetSynchronizedSceneLooped
  L7_2 = L5_2
  L8_2 = 1
  L6_2(L7_2, L8_2)
end
function L37_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = DebugStart
  L3_2 = "AnimateChampagneSprayEvolution"
  L2_2(L3_2)
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  if A0_2 == L2_2 then
    L2_2 = true
    L17_1 = L2_2
  end
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3
    while true do
      L0_3 = L17_1
      if not L0_3 then
        break
      end
      L0_3 = IN_CASINO
      if not L0_3 then
        break
      end
      L0_3 = SetPadShake
      L1_3 = 0
      L2_3 = 10
      L3_3 = 255
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = Wait
      L1_3 = 100
      L0_3(L1_3)
    end
  end
  L4_2 = "pad shake function"
  L2_2(L3_2, L4_2)
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = 0.0
    L1_3 = GAME_TIMER
    while L0_3 < 1 do
      L2_3 = IN_CASINO
      if not L2_3 then
        break
      end
      L2_3 = GAME_TIMER
      L2_3 = L2_3 - L1_3
      L2_3 = L2_3 / 100
      L3_3 = 0.01 * L2_3
      L0_3 = L0_3 + L3_3
      L3_3 = SetParticleFxLoopedEvolution
      L4_3 = A1_2
      L5_3 = "fade"
      L6_3 = L0_3
      L7_3 = true
      L3_3(L4_3, L5_3, L6_3, L7_3)
      L1_3 = GAME_TIMER
      L3_3 = Wait
      L4_3 = 33
      L3_3(L4_3)
    end
    L2_3 = StopParticleFxLooped
    L3_3 = A1_2
    L4_3 = 0
    L2_3(L3_3, L4_3)
    L2_3 = A0_2
    L3_3 = PlayerPedId
    L3_3 = L3_3()
    if L2_3 == L3_3 then
      L2_3 = false
      L17_1 = L2_3
    end
  end
  L4_2 = "champage fx effect"
  L2_2(L3_2, L4_2)
end
function L38_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L3_2 = DebugStart
  L4_2 = "ChampagneAnimationOutro"
  L3_2(L4_2)
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  if A0_2 == L3_2 then
    L3_2 = TriggerServerEvent
    L4_2 = "DrinkingBar:ChampagneSceneOutro"
    L5_2 = A1_2
    L6_2 = A2_2
    L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = DrinkingBar_Bartenders
  L3_2 = L3_2[A1_2]
  L3_2 = L3_2.ped
  L4_2 = DrinkingBar_Bartenders
  L4_2 = L4_2[A1_2]
  L4_2 = L4_2.animCoords
  L5_2 = DrinkingBar_Bartenders
  L5_2 = L5_2[A1_2]
  L5_2 = L5_2.animRot
  L6_2 = L30_1
  L7_2 = A1_2
  L8_2 = A2_2[2]
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = CreateSynchronizedScene
  L8_2 = L4_2.x
  L9_2 = L4_2.y
  L10_2 = L4_2.z
  L11_2 = L5_2.x
  L12_2 = L5_2.y
  L13_2 = L5_2.z
  L14_2 = 0
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L8_2 = DoesEntityExist
  L9_2 = A0_2
  L8_2 = L8_2(L9_2)
  if L8_2 then
    L8_2 = TaskSynchronizedScene
    L9_2 = A0_2
    L10_2 = L7_2
    L11_2 = L28_1
    L12_2 = "outro"
    L13_2 = 2.0
    L14_2 = -1.5
    L15_2 = 13
    L16_2 = 16
    L17_2 = 2.0
    L18_2 = 0
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    L8_2 = SetSynchronizedSceneLooped
    L9_2 = L7_2
    L10_2 = 0
    L8_2(L9_2, L10_2)
  end
  L8_2 = Wait
  L9_2 = 1000
  L8_2(L9_2)
  while true do
    L8_2 = GetSynchronizedScenePhase
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    L9_2 = 0.65
    if not (L8_2 < L9_2) then
      break
    end
    L8_2 = DoesEntityExist
    L9_2 = A0_2
    L8_2 = L8_2(L9_2)
    if not L8_2 then
      break
    end
    L8_2 = Wait
    L9_2 = 33
    L8_2(L9_2)
  end
  if nil ~= L6_2 then
    L8_2 = DetachEntity
    L9_2 = L6_2
    L8_2(L9_2)
  end
  while true do
    L8_2 = GetSynchronizedScenePhase
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    L9_2 = 0.99
    if not (L8_2 < L9_2) then
      break
    end
    L8_2 = DoesEntityExist
    L9_2 = A0_2
    L8_2 = L8_2(L9_2)
    if not L8_2 then
      break
    end
    L8_2 = Wait
    L9_2 = 33
    L8_2(L9_2)
  end
  L8_2 = PlayerPedId
  L8_2 = L8_2()
  if A0_2 == L8_2 then
    L8_2 = ClearPedTasks
    L9_2 = PlayerPedId
    L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L9_2()
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
    L8_2 = ClearPedSecondaryTask
    L9_2 = PlayerPedId
    L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L9_2()
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
    L8_2 = ScenePed_AnnounceEnd
    L8_2()
    L8_2 = SetCasinoDrunkLevel
    L9_2 = PLAYER_DRUNK_LEVEL
    L9_2 = L9_2 + 0.7
    L8_2(L9_2)
  end
  L8_2 = CreateSynchronizedScene
  L9_2 = L4_2.x
  L10_2 = L4_2.y
  L11_2 = L4_2.z
  L12_2 = L5_2.x
  L13_2 = L5_2.y
  L14_2 = L5_2.z
  L15_2 = 0
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L9_2 = TaskSynchronizedScene
  L10_2 = L3_2
  L11_2 = L8_2
  L12_2 = L28_1
  L13_2 = "bartender_outro"
  L14_2 = 2.0
  L15_2 = -1.5
  L16_2 = 13
  L17_2 = 16
  L18_2 = 2.0
  L19_2 = 0
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  if nil ~= L6_2 then
    L9_2 = PlaySynchronizedEntityAnim
    L10_2 = L6_2
    L11_2 = L8_2
    L12_2 = "bartender_outro_bottle"
    L13_2 = L28_1
    L14_2 = 1000
    L15_2 = -2
    L16_2 = 0
    L17_2 = 1148846080
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  end
  L9_2 = Wait
  L10_2 = GetAnimDuration
  L11_2 = L28_1
  L12_2 = "bartender_outro"
  L10_2 = L10_2(L11_2, L12_2)
  L10_2 = L10_2 * 1000
  L9_2(L10_2)
  L9_2 = L31_1
  L10_2 = A1_2
  L11_2 = L6_2
  L9_2(L10_2, L11_2)
  L9_2 = CreateSynchronizedScene
  L10_2 = L4_2.x
  L11_2 = L4_2.y
  L12_2 = L4_2.z
  L13_2 = L5_2.x
  L14_2 = L5_2.y
  L15_2 = L5_2.z
  L16_2 = 0
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L8_2 = L9_2
  L9_2 = TaskSynchronizedScene
  L10_2 = L3_2
  L11_2 = L8_2
  L12_2 = "anim@amb@nightclub@mini@drinking@bar@drink_v2@idle_a"
  L13_2 = "idle_a_bartender"
  L14_2 = 2.0
  L15_2 = -1.5
  L16_2 = 13
  L17_2 = 16
  L18_2 = 2.0
  L19_2 = 0
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L9_2 = SetSynchronizedSceneLooped
  L10_2 = L8_2
  L11_2 = 1
  L9_2(L10_2, L11_2)
  L9_2 = PlayPedAmbientSpeechWithVoiceNative
  L10_2 = L3_2
  L11_2 = "ANYTHING_ELSE"
  L12_2 = "CAS_JOSEPHINE"
  L13_2 = "SPEECH_PARAMS_FORCE_NORMAL"
  L14_2 = 0
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
  L9_2 = PlayerPedId
  L9_2 = L9_2()
  if A0_2 == L9_2 then
    L9_2 = PLAYER_DRUNK_LEVEL
    if L9_2 < 1 then
      L9_2 = L4_1
      if -1 ~= L9_2 then
        L9_2 = DrinkingBar_ShowMenu
        L9_2()
      end
    else
      L9_2 = DrinkingBar_ForcedLeave
      L9_2()
    end
    L9_2 = L26_1
    L9_2()
  end
end
function L39_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L3_2 = DebugStart
  L4_2 = "ChampagneAnimationMiddle"
  L3_2(L4_2)
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  if A0_2 == L3_2 then
    L3_2 = TriggerServerEvent
    L4_2 = "DrinkingBar:ChampagneSceneMiddle"
    L5_2 = A1_2
    L6_2 = A2_2
    L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = DrinkingBar_Bartenders
  L3_2 = L3_2[A1_2]
  L3_2 = L3_2.ped
  L4_2 = DrinkingBar_Bartenders
  L4_2 = L4_2[A1_2]
  L4_2 = L4_2.animCoords
  L5_2 = DrinkingBar_Bartenders
  L5_2 = L5_2[A1_2]
  L5_2 = L5_2.animRot
  L6_2 = RequestNamedPtfxAsset
  L7_2 = "scr_ba_club"
  L6_2(L7_2)
  L6_2 = HasNamedPtfxAssetLoaded
  L7_2 = "scr_ba_club"
  L6_2(L7_2)
  L6_2 = L36_1
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = "high"
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = Wait
  L7_2 = GetAnimDuration
  L8_2 = L28_1
  L9_2 = "high"
  L7_2 = L7_2(L8_2, L9_2)
  L7_2 = L7_2 * 1000
  L6_2(L7_2)
  L6_2 = CreateSynchronizedScene
  L7_2 = L4_2.x
  L8_2 = L4_2.y
  L9_2 = L4_2.z
  L10_2 = L5_2.x
  L11_2 = L5_2.y
  L12_2 = L5_2.z
  L13_2 = 0
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L7_2 = TaskSynchronizedScene
  L8_2 = A0_2
  L9_2 = L6_2
  L10_2 = L28_1
  L11_2 = "cork_burst"
  L12_2 = 2.0
  L13_2 = -1.5
  L14_2 = 13
  L15_2 = 16
  L16_2 = 2.0
  L17_2 = 0
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L7_2 = SetSynchronizedSceneLooped
  L8_2 = L6_2
  L9_2 = 0
  L7_2(L8_2, L9_2)
  L7_2 = L32_1
  L8_2 = A1_2
  L7_2(L8_2)
  L7_2 = L29_1
  L8_2 = A1_2
  L9_2 = A2_2[2]
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = AttachEntityToEntity
  L9_2 = L7_2
  L10_2 = A0_2
  L11_2 = GetPedBoneIndex
  L12_2 = A0_2
  L13_2 = 28422
  L11_2 = L11_2(L12_2, L13_2)
  L12_2 = -0.005
  L13_2 = 0.0
  L14_2 = 0.0
  L15_2 = 360.0
  L16_2 = 360.0
  L17_2 = 0.0
  L18_2 = 1
  L19_2 = 1
  L20_2 = 0
  L21_2 = 1
  L22_2 = 0
  L23_2 = 1
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
  L8_2 = GetEntityPickup
  L9_2 = A0_2
  L10_2 = GetHashKey
  L11_2 = A2_2[2]
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2 = L10_2(L11_2)
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
  L9_2 = UseParticleFxAsset
  L10_2 = "scr_ba_club"
  L9_2(L10_2)
  L9_2 = StartParticleFxLoopedOnEntityBone
  L10_2 = "scr_ba_club_champagne_spray"
  L11_2 = L8_2
  L12_2 = 0.0
  L13_2 = 0.0
  L14_2 = 0.0
  L15_2 = 0.0
  L16_2 = 0.0
  L17_2 = 0.0
  L18_2 = GetEntityBoneIndexByName
  L19_2 = L8_2
  L20_2 = "VFX"
  L18_2 = L18_2(L19_2, L20_2)
  L19_2 = 1065353216
  L20_2 = 0
  L21_2 = 0
  L22_2 = 0
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  L10_2 = L37_1
  L11_2 = A0_2
  L12_2 = L9_2
  L10_2(L11_2, L12_2)
  L10_2 = Wait
  L11_2 = GetAnimDuration
  L12_2 = L28_1
  L13_2 = "cork_burst"
  L11_2 = L11_2(L12_2, L13_2)
  L11_2 = L11_2 * 1000
  L10_2(L11_2)
  L10_2 = CreateSynchronizedScene
  L11_2 = L4_2.x
  L12_2 = L4_2.y
  L13_2 = L4_2.z
  L14_2 = L5_2.x
  L15_2 = L5_2.y
  L16_2 = L5_2.z
  L17_2 = 0
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L6_2 = L10_2
  L10_2 = TaskSynchronizedScene
  L11_2 = A0_2
  L12_2 = L6_2
  L13_2 = L28_1
  L14_2 = "spray_centre_mid"
  L15_2 = 2.0
  L16_2 = -1.5
  L17_2 = 13
  L18_2 = 16
  L19_2 = 2.0
  L20_2 = 0
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L10_2 = SetSynchronizedSceneLooped
  L11_2 = L6_2
  L12_2 = 1
  L10_2(L11_2, L12_2)
end
function L40_1()
  local L0_2, L1_2, L2_2
  L0_2 = DebugStart
  L1_2 = "AnimateStrengthStep"
  L0_2(L1_2)
  L0_2 = L19_1
  if L0_2 then
    return
  end
  L0_2 = true
  L19_1 = L0_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L0_3 = 1
    L1_3 = 0
    L2_3 = -0.05
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = L15_1
      if nil ~= L4_3 then
        L4_3 = L15_1.setForegroundColor
        L5_3 = {}
        L6_3 = 0
        L7_3 = 0
        L8_3 = 0
        L9_3 = 255
        L5_3[1] = L6_3
        L5_3[2] = L7_3
        L5_3[3] = L8_3
        L5_3[4] = L9_3
        L4_3(L5_3)
      end
      L4_3 = Wait
      L5_3 = 0
      L4_3(L5_3)
    end
    L0_3 = L15_1
    if nil ~= L0_3 then
      L0_3 = L15_1.setForegroundColor
      L1_3 = {}
      L2_3 = 240
      L3_3 = 240
      L4_3 = 240
      L5_3 = 255
      L1_3[1] = L2_3
      L1_3[2] = L3_3
      L1_3[3] = L4_3
      L1_3[4] = L5_3
      L0_3(L1_3)
    end
    L0_3 = false
    L19_1 = L0_3
  end
  L2_2 = "AnimateStrengthStep drinkingbar"
  L0_2(L1_2, L2_2)
end
function L41_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = DebugStart
  L4_2 = "StartChanmaigneStrengthController"
  L3_2(L4_2)
  L3_2 = 0.0
  L16_1 = L3_2
  L3_2 = CreateThread
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L0_3 = 50
    L1_3 = 100
    L2_3 = 500
    while true do
      L3_3 = L16_1
      if not (L3_3 < 1) then
        break
      end
      L3_3 = IN_CASINO
      if not L3_3 then
        break
      end
      L3_3 = L4_1
      if -1 == L3_3 then
        break
      end
      L3_3 = Lerp
      L4_3 = L0_3
      L5_3 = 100
      L6_3 = L16_1
      L3_3 = L3_3(L4_3, L5_3, L6_3)
      L4_3 = Lerp
      L5_3 = L1_3
      L6_3 = 255
      L7_3 = L16_1
      L4_3 = L4_3(L5_3, L6_3, L7_3)
      L5_3 = Lerp
      L6_3 = L2_3
      L7_3 = 200
      L8_3 = L16_1
      L5_3 = L5_3(L6_3, L7_3, L8_3)
      L6_3 = SetPadShake
      L7_3 = 0
      L8_3 = math
      L8_3 = L8_3.ceil
      L9_3 = L3_3
      L8_3 = L8_3(L9_3)
      L9_3 = math
      L9_3 = L9_3.ceil
      L10_3 = L4_3
      L9_3, L10_3 = L9_3(L10_3)
      L6_3(L7_3, L8_3, L9_3, L10_3)
      L6_3 = Wait
      L7_3 = L5_3
      L6_3(L7_3)
    end
  end
  L5_2 = "champage Strength shake"
  L3_2(L4_2, L5_2)
  L3_2 = CreateThread
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3
    L0_3 = TimerBar
    L0_3 = L0_3.DestroyAll
    L0_3()
    L0_3 = TimerBar
    L0_3 = L0_3.Create
    L1_3 = TimerBar
    L1_3 = L1_3.Progress
    L2_3 = Translation
    L2_3 = L2_3.Get
    L3_3 = "BAR_CHAMPAGNE_TIMERBAR_STRENGTH"
    L2_3 = L2_3(L3_3)
    L3_3 = 0.0
    L0_3 = L0_3(L1_3, L2_3, L3_3)
    L15_1 = L0_3
    L0_3 = GAME_TIMER
    L0_3 = L0_3 + 66
    L1_3 = 0
    L2_3 = "low"
    L3_3 = GAME_TIMER
    L4_3 = {}
    L5_3 = 240
    L6_3 = 240
    L7_3 = 240
    L8_3 = 255
    L4_3[1] = L5_3
    L4_3[2] = L6_3
    L4_3[3] = L7_3
    L4_3[4] = L8_3
    L5_3 = 0.5
    L18_1 = L5_3
    L5_3 = InfoPanel_UpdateNotification
    L6_3 = Translation
    L6_3 = L6_3.Get
    L7_3 = "BAR_SHAKE_NOTIFY"
    L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3 = L6_3(L7_3)
    L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
    L5_3 = L15_1.setForegroundColor
    L6_3 = L4_3
    L5_3(L6_3)
    while true do
      L5_3 = L16_1
      if not (L5_3 < 1) then
        break
      end
      L5_3 = IN_CASINO
      if not L5_3 then
        break
      end
      L5_3 = L4_1
      if -1 == L5_3 then
        break
      end
      L5_3 = GAME_TIMER
      L5_3 = L5_3 - L3_3
      L5_3 = L5_3 / 100
      L6_3 = L16_1
      L7_3 = 0.001 * L5_3
      L6_3 = L6_3 + L7_3
      L16_1 = L6_3
      L6_3 = Clamp
      L7_3 = L18_1
      L7_3 = L7_3 - 0.001
      L8_3 = 0.0
      L9_3 = 1.0
      L6_3 = L6_3(L7_3, L8_3, L9_3)
      L18_1 = L6_3
      L6_3 = L15_1
      if nil ~= L6_3 then
        L6_3 = L15_1.setProgress
        L7_3 = L16_1
        L6_3(L7_3)
      end
      L6_3 = "low"
      L7_3 = L18_1
      L8_3 = 0.85
      if L7_3 > L8_3 then
        L6_3 = "high"
      else
        L7_3 = L18_1
        L8_3 = 0.5
        if L7_3 > L8_3 then
          L6_3 = "medium"
        end
      end
      if L6_3 ~= L2_3 then
        L2_3 = L6_3
        L7_3 = L36_1
        L8_3 = PlayerPedId
        L8_3 = L8_3()
        L9_3 = A1_2
        L10_3 = L6_3
        L7_3(L8_3, L9_3, L10_3)
      end
      L1_3 = L16_1
      L7_3 = 1
      L8_3 = 3
      L9_3 = 1
      for L10_3 = L7_3, L8_3, L9_3 do
        L11_3 = Lerp
        L12_3 = L4_3[L10_3]
        L13_3 = 240
        L14_3 = 0.25 * L5_3
        L11_3 = L11_3(L12_3, L13_3, L14_3)
        L4_3[L10_3] = L11_3
      end
      L7_3 = L15_1.setForegroundColor
      L8_3 = {}
      L9_3 = math
      L9_3 = L9_3.floor
      L10_3 = L4_3[1]
      L9_3 = L9_3(L10_3)
      L10_3 = math
      L10_3 = L10_3.floor
      L11_3 = L4_3[2]
      L10_3 = L10_3(L11_3)
      L11_3 = math
      L11_3 = L11_3.floor
      L12_3 = L4_3[3]
      L11_3 = L11_3(L12_3)
      L12_3 = 255
      L8_3[1] = L9_3
      L8_3[2] = L10_3
      L8_3[3] = L11_3
      L8_3[4] = L12_3
      L7_3(L8_3)
      L7_3 = IsControlJustPressed
      L8_3 = 2
      L9_3 = 255
      L7_3 = L7_3(L8_3, L9_3)
      if L7_3 then
        L7_3 = Clamp
        L8_3 = L18_1
        L8_3 = L8_3 + 0.08
        L9_3 = 0.0
        L10_3 = 1.0
        L7_3 = L7_3(L8_3, L9_3, L10_3)
        L18_1 = L7_3
        L7_3 = PlaySound
        L8_3 = "NAV_UP_DOWN"
        L9_3 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
        L7_3(L8_3, L9_3)
        L7_3 = {}
        L8_3 = 0
        L9_3 = 0
        L10_3 = 0
        L11_3 = 255
        L7_3[1] = L8_3
        L7_3[2] = L9_3
        L7_3[3] = L10_3
        L7_3[4] = L11_3
        L4_3 = L7_3
        L7_3 = L16_1
        L7_3 = L7_3 + 0.015
        L16_1 = L7_3
        L7_3 = L40_1
        L7_3()
      end
      L3_3 = GAME_TIMER
      L7_3 = Wait
      L8_3 = 0
      L7_3(L8_3)
    end
    L5_3 = InfoPanel_UpdateNotification
    L6_3 = nil
    L5_3(L6_3)
    L5_3 = TimerBar
    L5_3 = L5_3.DestroyAll
    L5_3()
    L5_3 = nil
    L15_1 = L5_3
    L5_3 = IN_CASINO
    if not L5_3 then
      return
    end
    L5_3 = L39_1
    L6_3 = A0_2
    L7_3 = A1_2
    L8_3 = A2_2
    L5_3(L6_3, L7_3, L8_3)
    L5_3 = InfoPanel_UpdateNotification
    L6_3 = Translation
    L6_3 = L6_3.Get
    L7_3 = "BAR_USE_TO_SPRAY"
    L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3 = L6_3(L7_3)
    L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
    L5_3 = {}
    L6_3 = "left"
    L7_3 = "centre"
    L8_3 = "right"
    L5_3[1] = L6_3
    L5_3[2] = L7_3
    L5_3[3] = L8_3
    L6_3 = {}
    L7_3 = "down"
    L8_3 = "mid"
    L9_3 = "up"
    L6_3[1] = L7_3
    L6_3[2] = L8_3
    L6_3[3] = L9_3
    L7_3 = "spray_centre_mid"
    L8_3 = DrinkingBar_Bartenders
    L9_3 = A1_2
    L8_3 = L8_3[L9_3]
    L8_3 = L8_3.animCoords
    L9_3 = DrinkingBar_Bartenders
    L10_3 = A1_2
    L9_3 = L9_3[L10_3]
    L9_3 = L9_3.animRot
    while true do
      L10_3 = L17_1
      if not L10_3 then
        break
      end
      L10_3 = IN_CASINO
      if not L10_3 then
        break
      end
      L10_3 = IsControlJustPressed
      L11_3 = 2
      L12_3 = 232
      L10_3 = L10_3(L11_3, L12_3)
      if L10_3 then
        L10_3 = L8_1
        L11_3 = L8_1
        L11_3 = L11_3[2]
        L11_3 = L11_3 + 1
        L10_3[2] = L11_3
      else
        L10_3 = IsControlJustPressed
        L11_3 = 2
        L12_3 = 233
        L10_3 = L10_3(L11_3, L12_3)
        if L10_3 then
          L10_3 = L8_1
          L11_3 = L8_1
          L11_3 = L11_3[2]
          L11_3 = L11_3 - 1
          L10_3[2] = L11_3
        else
          L10_3 = IsControlJustPressed
          L11_3 = 2
          L12_3 = 234
          L10_3 = L10_3(L11_3, L12_3)
          if L10_3 then
            L10_3 = L8_1
            L11_3 = L8_1
            L11_3 = L11_3[1]
            L11_3 = L11_3 - 1
            L10_3[1] = L11_3
          else
            L10_3 = IsControlJustPressed
            L11_3 = 2
            L12_3 = 235
            L10_3 = L10_3(L11_3, L12_3)
            if L10_3 then
              L10_3 = L8_1
              L11_3 = L8_1
              L11_3 = L11_3[1]
              L11_3 = L11_3 + 1
              L10_3[1] = L11_3
            end
          end
        end
      end
      L10_3 = L8_1
      L11_3 = Clamp
      L12_3 = L8_1
      L12_3 = L12_3[1]
      L13_3 = 1
      L14_3 = 3
      L11_3 = L11_3(L12_3, L13_3, L14_3)
      L10_3[1] = L11_3
      L10_3 = L8_1
      L11_3 = Clamp
      L12_3 = L8_1
      L12_3 = L12_3[2]
      L13_3 = 1
      L14_3 = 3
      L11_3 = L11_3(L12_3, L13_3, L14_3)
      L10_3[2] = L11_3
      L10_3 = "spray_"
      L11_3 = L8_1
      L11_3 = L11_3[1]
      L11_3 = L5_3[L11_3]
      L12_3 = "_"
      L13_3 = L8_1
      L13_3 = L13_3[2]
      L13_3 = L6_3[L13_3]
      L10_3 = L10_3 .. L11_3 .. L12_3 .. L13_3
      if L10_3 ~= L7_3 then
        L7_3 = L10_3
        L11_3 = PlaySynchronizedScene
        L12_3 = vector3
        L13_3 = L8_3.x
        L14_3 = L8_3.y
        L15_3 = L8_3.z
        L12_3 = L12_3(L13_3, L14_3, L15_3)
        L13_3 = vector3
        L14_3 = L9_3.x
        L15_3 = L9_3.y
        L16_3 = L9_3.z
        L13_3 = L13_3(L14_3, L15_3, L16_3)
        L14_3 = L28_1
        L15_3 = L7_3
        L16_3 = true
        L11_3(L12_3, L13_3, L14_3, L15_3, L16_3)
      end
      L11_3 = Wait
      L12_3 = 0
      L11_3(L12_3)
    end
    L10_3 = InfoPanel_UpdateNotification
    L11_3 = nil
    L10_3(L11_3)
    L10_3 = L38_1
    L11_3 = A0_2
    L12_3 = A1_2
    L13_3 = A2_2
    L10_3(L11_3, L12_3, L13_3)
  end
  L5_2 = "strength progressbar drinkingbar 506"
  L3_2(L4_2, L5_2)
end
function L42_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L3_2 = DebugStart
  L4_2 = "OnChampaigneIntroFinish"
  L3_2(L4_2)
  L3_2 = DrinkingBar_Bartenders
  L3_2 = L3_2[A1_2]
  L3_2 = L3_2.ped
  L4_2 = DrinkingBar_Bartenders
  L4_2 = L4_2[A1_2]
  L4_2 = L4_2.animCoords
  L5_2 = DrinkingBar_Bartenders
  L5_2 = L5_2[A1_2]
  L5_2 = L5_2.animRot
  L6_2 = CreateSynchronizedScene
  L7_2 = L4_2.x
  L8_2 = L4_2.y
  L9_2 = L4_2.z
  L10_2 = L5_2.x
  L11_2 = L5_2.y
  L12_2 = L5_2.z
  L13_2 = 0
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L7_2 = TaskSynchronizedScene
  L8_2 = A0_2
  L9_2 = L6_2
  L10_2 = L28_1
  L11_2 = "bottle_hold_idle"
  L12_2 = 2.0
  L13_2 = -1.5
  L14_2 = 13
  L15_2 = 16
  L16_2 = 2.0
  L17_2 = 0
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L7_2 = SetSynchronizedSceneLooped
  L8_2 = L6_2
  L9_2 = 1
  L7_2(L8_2, L9_2)
  L7_2 = PlayerPedId
  L7_2 = L7_2()
  if L7_2 ~= A0_2 then
    return
  end
  L7_2 = Wait
  L8_2 = 1000
  L7_2(L8_2)
  L7_2 = L36_1
  L8_2 = A0_2
  L9_2 = A1_2
  L10_2 = "low"
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = L41_1
  L8_2 = A0_2
  L9_2 = A1_2
  L10_2 = A2_2
  L7_2(L8_2, L9_2, L10_2)
end
function L43_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = DebugStart
  L4_2 = "ChampaigneAnimation"
  L3_2(L4_2)
  L3_2 = CreateThread
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3
    L0_3 = A0_2
    L1_3 = PlayerPedId
    L1_3 = L1_3()
    if L0_3 == L1_3 then
      L0_3 = TriggerServerEvent
      L1_3 = "DrinkingBar:ChampagneSceneStart"
      L2_3 = A1_2
      L3_3 = A2_2
      L0_3(L1_3, L2_3, L3_3)
    end
    L0_3 = L23_1
    L0_3()
    L0_3 = RequestModelsAndWait
    L1_3 = A2_2
    L0_3(L1_3)
    L0_3 = L29_1
    L1_3 = A1_2
    L2_3 = A2_2
    L2_3 = L2_3[1]
    L0_3 = L0_3(L1_3, L2_3)
    L1_3 = DrinkingBar_Bartenders
    L2_3 = A1_2
    L1_3 = L1_3[L2_3]
    L1_3 = L1_3.ped
    L2_3 = DrinkingBar_Bartenders
    L3_3 = A1_2
    L2_3 = L2_3[L3_3]
    L2_3 = L2_3.animCoords
    L3_3 = DrinkingBar_Bartenders
    L4_3 = A1_2
    L3_3 = L3_3[L4_3]
    L3_3 = L3_3.animRot
    L4_3 = PlayPedAmbientSpeechWithVoiceNative
    L5_3 = L1_3
    L6_3 = "CHOOSE_CHAMP"
    L7_3 = "BTL_CONNIE"
    L8_3 = "SPEECH_PARAMS_FORCE_NORMAL"
    L9_3 = 0
    L4_3(L5_3, L6_3, L7_3, L8_3, L9_3)
    L4_3 = A0_2
    L5_3 = PlayerPedId
    L5_3 = L5_3()
    if L4_3 == L5_3 then
      L4_3 = InvalidateIdleCam
      L4_3()
      L4_3 = CreateCam
      L5_3 = "DEFAULT_ANIMATED_CAMERA"
      L6_3 = true
      L4_3 = L4_3(L5_3, L6_3)
      L5_3 = SetCamCoord
      L6_3 = L4_3
      L7_3 = L2_3.x
      L8_3 = L2_3.y
      L9_3 = L2_3.z
      L5_3(L6_3, L7_3, L8_3, L9_3)
      L5_3 = SetCamActive
      L6_3 = L4_3
      L7_3 = true
      L5_3(L6_3, L7_3)
      L5_3 = PlayCamAnim
      L6_3 = L4_3
      L7_3 = "bartender_intro_cam"
      L8_3 = L28_1
      L9_3 = L2_3.x
      L10_3 = L2_3.y
      L11_3 = L2_3.z
      L12_3 = L3_3.x
      L13_3 = L3_3.y
      L14_3 = L3_3.z
      L15_3 = 0
      L16_3 = 0
      L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
      L5_3 = RenderScriptCams
      L6_3 = true
      L7_3 = true
      L8_3 = 1
      L9_3 = true
      L10_3 = true
      L5_3(L6_3, L7_3, L8_3, L9_3, L10_3)
    end
    L4_3 = CreateSynchronizedScene
    L5_3 = L2_3.x
    L6_3 = L2_3.y
    L7_3 = L2_3.z
    L8_3 = L3_3.x
    L9_3 = L3_3.y
    L10_3 = L3_3.z
    L11_3 = 0
    L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
    L5_3 = TaskSynchronizedScene
    L6_3 = L1_3
    L7_3 = L4_3
    L8_3 = L28_1
    L9_3 = "bartender_intro"
    L10_3 = 2.0
    L11_3 = -1.5
    L12_3 = 13
    L13_3 = 16
    L14_3 = 2.0
    L15_3 = 0
    L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
    L5_3 = PlaySynchronizedEntityAnim
    L6_3 = L0_3
    L7_3 = L4_3
    L8_3 = "bartender_intro_bottle"
    L9_3 = L28_1
    L10_3 = 1000
    L11_3 = -2
    L12_3 = 0
    L13_3 = 1148846080
    L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
    L5_3 = Wait
    L6_3 = GetAnimDuration
    L7_3 = L28_1
    L8_3 = "bartender_intro"
    L6_3 = L6_3(L7_3, L8_3)
    L6_3 = L6_3 * 1000
    L5_3(L6_3)
    L5_3 = A0_2
    L6_3 = PlayerPedId
    L6_3 = L6_3()
    if L5_3 == L6_3 then
      L5_3 = DestroyCam
      L6_3 = cam
      L7_3 = false
      L5_3(L6_3, L7_3)
      L5_3 = RenderScriptCams
      L6_3 = false
      L7_3 = true
      L8_3 = 1
      L9_3 = true
      L10_3 = true
      L5_3(L6_3, L7_3, L8_3, L9_3, L10_3)
    end
    L5_3 = CasinoAnnouncer
    L6_3 = L5_3
    L5_3 = L5_3.ChampagneBought
    L5_3(L6_3)
    L5_3 = CreateSynchronizedScene
    L6_3 = L2_3.x
    L7_3 = L2_3.y
    L8_3 = L2_3.z
    L9_3 = L3_3.x
    L10_3 = L3_3.y
    L11_3 = L3_3.z
    L12_3 = 0
    L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
    L6_3 = TaskSynchronizedScene
    L7_3 = L1_3
    L8_3 = L5_3
    L9_3 = "anim@amb@nightclub@mini@drinking@bar@drink_v2@idle_a"
    L10_3 = "idle_a_bartender"
    L11_3 = 2.0
    L12_3 = -1.5
    L13_3 = 13
    L14_3 = 16
    L15_3 = 2.0
    L16_3 = 0
    L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
    L6_3 = SetSynchronizedSceneLooped
    L7_3 = L5_3
    L8_3 = 1
    L6_3(L7_3, L8_3)
    L6_3 = CreateSynchronizedScene
    L7_3 = L2_3.x
    L8_3 = L2_3.y
    L9_3 = L2_3.z
    L10_3 = L3_3.x
    L11_3 = L3_3.y
    L12_3 = L3_3.z
    L13_3 = 0
    L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
    L4_3 = L6_3
    L6_3 = TaskSynchronizedScene
    L7_3 = A0_2
    L8_3 = L4_3
    L9_3 = L28_1
    L10_3 = "intro"
    L11_3 = 2.0
    L12_3 = -1.5
    L13_3 = 13
    L14_3 = 16
    L15_3 = 2.0
    L16_3 = 0
    L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
    L6_3 = Wait
    L7_3 = 1000
    L6_3(L7_3)
    L6_3 = AttachEntityToEntity
    L7_3 = L0_3
    L8_3 = A0_2
    L9_3 = GetPedBoneIndex
    L10_3 = A0_2
    L11_3 = 28422
    L9_3 = L9_3(L10_3, L11_3)
    L10_3 = -0.005
    L11_3 = 0.0
    L12_3 = 0.0
    L13_3 = 360.0
    L14_3 = 360.0
    L15_3 = 0.0
    L16_3 = 1
    L17_3 = 1
    L18_3 = 0
    L19_3 = 1
    L20_3 = 0
    L21_3 = 1
    L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3)
    L6_3 = Wait
    L7_3 = GetAnimDuration
    L8_3 = L28_1
    L9_3 = "intro"
    L7_3 = L7_3(L8_3, L9_3)
    L7_3 = L7_3 * 1000
    L7_3 = L7_3 - 1000
    L6_3(L7_3)
    L6_3 = L42_1
    L7_3 = A0_2
    L8_3 = A1_2
    L9_3 = A2_2
    L6_3(L7_3, L8_3, L9_3)
  end
  L3_2(L4_2)
end
L44_1 = RegisterNetEvent
L45_1 = "DrinkingBar:ChampagneSceneStart"
L44_1(L45_1)
L44_1 = AddEventHandler
L45_1 = "DrinkingBar:ChampagneSceneStart"
function L46_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = IN_CASINO
  if not L4_2 then
    return
  end
  L4_2 = GetMyPlayerId
  L4_2 = L4_2()
  if A0_2 == L4_2 then
    return
  end
  L4_2 = L23_1
  L4_2()
  L4_2 = ScenePed_ForceUseForPlayer
  L5_2 = A0_2
  L6_2 = A3_2
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    L5_2 = L43_1
    L6_2 = L4_2
    L7_2 = A1_2
    L8_2 = A2_2
    L5_2(L6_2, L7_2, L8_2)
  end
end
L44_1(L45_1, L46_1)
L44_1 = RegisterNetEvent
L45_1 = "DrinkingBar:ChampagneSceneStrength"
L44_1(L45_1)
L44_1 = AddEventHandler
L45_1 = "DrinkingBar:ChampagneSceneStrength"
function L46_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = IN_CASINO
  if not L4_2 then
    return
  end
  L4_2 = GetMyPlayerId
  L4_2 = L4_2()
  if A0_2 == L4_2 then
    return
  end
  L4_2 = ScenePed_ForceUseForPlayer
  L5_2 = A0_2
  L6_2 = A3_2
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    L5_2 = L36_1
    L6_2 = L4_2
    L7_2 = A1_2
    L8_2 = A2_2
    L5_2(L6_2, L7_2, L8_2)
  end
end
L44_1(L45_1, L46_1)
L44_1 = RegisterNetEvent
L45_1 = "DrinkingBar:ChampagneSceneMiddle"
L44_1(L45_1)
L44_1 = AddEventHandler
L45_1 = "DrinkingBar:ChampagneSceneMiddle"
function L46_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = IN_CASINO
  if not L4_2 then
    return
  end
  L4_2 = GetMyPlayerId
  L4_2 = L4_2()
  if A0_2 == L4_2 then
    return
  end
  L4_2 = L23_1
  L4_2()
  L4_2 = ScenePed_ForceUseForPlayer
  L5_2 = A0_2
  L6_2 = A3_2
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    L5_2 = CreateThread
    function L6_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = L39_1
      L1_3 = L4_2
      L2_3 = A1_2
      L3_3 = A2_2
      L0_3(L1_3, L2_3, L3_3)
    end
    L5_2(L6_2)
  end
end
L44_1(L45_1, L46_1)
L44_1 = RegisterNetEvent
L45_1 = "DrinkingBar:ChampagneSceneOutro"
L44_1(L45_1)
L44_1 = AddEventHandler
L45_1 = "DrinkingBar:ChampagneSceneOutro"
function L46_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = IN_CASINO
  if not L4_2 then
    return
  end
  L4_2 = GetMyPlayerId
  L4_2 = L4_2()
  if A0_2 == L4_2 then
    return
  end
  L4_2 = L23_1
  L4_2()
  L4_2 = ScenePed_ForceUseForPlayer
  L5_2 = A0_2
  L6_2 = A3_2
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    L5_2 = CreateThread
    function L6_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = L38_1
      L1_3 = L4_2
      L2_3 = A1_2
      L3_3 = A2_2
      L0_3(L1_3, L2_3, L3_3)
    end
    L5_2(L6_2)
  end
end
L44_1(L45_1, L46_1)
function L44_1()
  local L0_2, L1_2
  L0_2 = DebugStart
  L1_2 = "DrinkingBar_Initialize"
  L0_2(L1_2)
  L0_2 = Debug
  L1_2 = "Loading Drinking Bar"
  L0_2(L1_2)
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3
    L0_3 = pairs
    L1_3 = DrinkingBar_Bartenders
    L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
    for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
      L6_3 = L5_3.ped
      if L6_3 then
        L6_3 = DeleteEntity
        L7_3 = L5_3.ped
        L6_3(L7_3)
      end
      L6_3 = RequestModelAndWait
      L7_3 = L5_3.model
      L6_3(L7_3)
      L6_3 = IN_CASINO
      if L6_3 then
        L6_3 = CreatePed
        L7_3 = 26
        L8_3 = GetHashKey
        L9_3 = L5_3.model
        L8_3 = L8_3(L9_3)
        L9_3 = L5_3.pedCoords
        L10_3 = L5_3.heading
        L11_3 = false
        L12_3 = false
        L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
        L5_3.ped = L6_3
        L6_3 = SetPedBrave
        L7_3 = L5_3.ped
        L6_3(L7_3)
        L6_3 = GetObjectOffsetFromCoords
        L7_3 = L5_3.pedCoords
        L8_3 = L5_3.heading
        L9_3 = 0.0
        L10_3 = 0.2
        L11_3 = 0.5
        L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3, L11_3)
        L7_3 = {}
        L8_3 = {}
        L8_3.num = 1
        L8_3.type = "client"
        L8_3.event = "Casino:Target"
        L8_3.icon = "fas fa-champagne-glasses"
        L9_3 = removePlaceholderText
        L10_3 = Translation
        L10_3 = L10_3.Get
        L11_3 = "BAR_PRESS_TO_ORDER"
        L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3 = L10_3(L11_3)
        L9_3 = L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
        L8_3.label = L9_3
        L8_3.targeticon = "fas fa-champagne-glasses"
        function L9_3(A0_4, A1_4, A2_4)
          local L3_4
          L3_4 = CAN_INTERACT
          return L3_4
        end
        L8_3.canInteract = L9_3
        L9_3 = {}
        L10_3 = 255
        L11_3 = 255
        L12_3 = 255
        L13_3 = 255
        L9_3[1] = L10_3
        L9_3[2] = L11_3
        L9_3[3] = L12_3
        L9_3[4] = L13_3
        L8_3.drawColor = L9_3
        L9_3 = {}
        L10_3 = 30
        L11_3 = 144
        L12_3 = 255
        L13_3 = 255
        L9_3[1] = L10_3
        L9_3[2] = L11_3
        L9_3[3] = L12_3
        L9_3[4] = L13_3
        L8_3.successDrawColor = L9_3
        L8_3.eventAction = "drinkingbar_ped"
        L9_3 = L5_3.initialPos
        L8_3.bartenderCoords = L9_3
        L7_3[1] = L8_3
        L8_3 = Config
        L8_3 = L8_3.TargetUsePeds
        if L8_3 then
          L8_3 = CreateTargetEntity
          L9_3 = L5_3.ped
          L10_3 = L7_3
          L8_3(L9_3, L10_3)
        else
          L8_3 = CreateTargetZone
          L9_3 = vector3
          L10_3 = L6_3.x
          L11_3 = L6_3.y
          L12_3 = L6_3.z
          L9_3 = L9_3(L10_3, L11_3, L12_3)
          L10_3 = 3.0
          L11_3 = 3.0
          L12_3 = L5_3.heading
          L13_3 = L7_3
          L8_3(L9_3, L10_3, L11_3, L12_3, L13_3)
        end
      end
    end
    L0_3 = pairs
    L1_3 = DrinkingBarChairs
    L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
    for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
      L6_3 = vector3
      L7_3 = L5_3.coords
      L7_3 = L7_3[1]
      L8_3 = L5_3.coords
      L8_3 = L8_3[2]
      L9_3 = L5_3.coords
      L9_3 = L9_3[3]
      L6_3 = L6_3(L7_3, L8_3, L9_3)
      L7_3 = GetObjectOffsetFromCoords
      L8_3 = L6_3
      L9_3 = L5_3.heading
      L10_3 = 0.0
      L11_3 = 0.2
      L12_3 = 0.5
      L7_3 = L7_3(L8_3, L9_3, L10_3, L11_3, L12_3)
      L8_3 = CreateTargetZone
      L9_3 = vector3
      L10_3 = L7_3.x
      L11_3 = L7_3.y
      L12_3 = L7_3.z
      L9_3 = L9_3(L10_3, L11_3, L12_3)
      L10_3 = 1.0
      L11_3 = 1.0
      L12_3 = -0.5
      L13_3 = {}
      L14_3 = {}
      L14_3.num = 1
      L14_3.type = "client"
      L14_3.event = "Casino:Target"
      L14_3.icon = "fas fa-chair"
      L15_3 = removePlaceholderText
      L16_3 = Translation
      L16_3 = L16_3.Get
      L17_3 = "BAR_PRESS_TO_SIT_DOWN"
      L16_3, L17_3, L18_3, L19_3 = L16_3(L17_3)
      L15_3 = L15_3(L16_3, L17_3, L18_3, L19_3)
      L14_3.label = L15_3
      L14_3.targeticon = "fas fa-chair"
      function L15_3(A0_4, A1_4, A2_4)
        local L3_4
        L3_4 = CAN_INTERACT
        return L3_4
      end
      L14_3.canInteract = L15_3
      L15_3 = {}
      L16_3 = 255
      L17_3 = 255
      L18_3 = 255
      L19_3 = 255
      L15_3[1] = L16_3
      L15_3[2] = L17_3
      L15_3[3] = L18_3
      L15_3[4] = L19_3
      L14_3.drawColor = L15_3
      L15_3 = {}
      L16_3 = 30
      L17_3 = 144
      L18_3 = 255
      L19_3 = 255
      L15_3[1] = L16_3
      L15_3[2] = L17_3
      L15_3[3] = L18_3
      L15_3[4] = L19_3
      L14_3.successDrawColor = L15_3
      L14_3.eventAction = "drinkingbar_chair"
      L14_3.chairCoords = L6_3
      L13_3[1] = L14_3
      L8_3(L9_3, L10_3, L11_3, L12_3, L13_3)
    end
  end
  L0_2(L1_2)
end
DrinkingBar_Initialize = L44_1
function L44_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = DebugStart
  L4_2 = "DrinkingBar_AnimatePrice"
  L3_2(L4_2)
  L3_2 = CreateThread
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L0_3 = DoScreenFadeOut
    L1_3 = 1000
    L0_3(L1_3)
    L0_3 = Wait
    L1_3 = 1000
    L0_3(L1_3)
    L0_3 = false
    L1_3 = BAR_CAMERA_POS_BEFORE
    L2_3 = vector3
    L3_3 = -9.77173
    L4_3 = 0.056137
    L5_3 = -154.127884
    L2_3 = L2_3(L3_3, L4_3, L5_3)
    L3_3 = GAME_TIMER
    L3_3 = L3_3 + 4500
    L4_3 = CreateCamWithParams
    L5_3 = "DEFAULT_SCRIPTED_CAMERA"
    L6_3 = L1_3
    L7_3 = L2_3
    L8_3 = 50.0
    L9_3 = false
    L10_3 = 0
    L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
    L5_3 = SetCamActive
    L6_3 = L4_3
    L7_3 = true
    L5_3(L6_3, L7_3)
    L5_3 = RenderScriptCams
    L6_3 = true
    L7_3 = 900
    L8_3 = 900
    L9_3 = true
    L10_3 = false
    L5_3(L6_3, L7_3, L8_3, L9_3, L10_3)
    L5_3 = DoScreenFadeIn
    L6_3 = 500
    L5_3(L6_3)
    while true do
      L5_3 = GAME_TIMER
      if not (L3_3 > L5_3) then
        break
      end
      L5_3 = IN_CASINO
      if not L5_3 then
        break
      end
      L5_3 = LerpVector3
      L6_3 = L1_3
      L7_3 = BAR_CAMERA_POS
      L8_3 = 0.005
      L5_3 = L5_3(L6_3, L7_3, L8_3)
      L1_3 = L5_3
      L5_3 = LerpVector3
      L6_3 = L2_3
      L7_3 = vector3
      L8_3 = -16.505133
      L9_3 = 0.05794
      L10_3 = -153.39267
      L7_3 = L7_3(L8_3, L9_3, L10_3)
      L8_3 = 0.005
      L5_3 = L5_3(L6_3, L7_3, L8_3)
      L2_3 = L5_3
      L5_3 = SetCamCoord
      L6_3 = L4_3
      L7_3 = L1_3
      L5_3(L6_3, L7_3)
      L5_3 = SetCamRot
      L6_3 = L4_3
      L7_3 = L2_3
      L8_3 = 2
      L5_3(L6_3, L7_3, L8_3)
      if not L0_3 then
        L5_3 = GAME_TIMER
        L6_3 = L3_3 - 4000
        if L5_3 > L6_3 then
          L0_3 = true
          L5_3 = InfoPanel_UpdateNotification
          L6_3 = Translation
          L6_3 = L6_3.Get
          L7_3 = "BAR_DRINKS_UNLOCKED"
          L6_3, L7_3, L8_3, L9_3, L10_3 = L6_3(L7_3)
          L5_3(L6_3, L7_3, L8_3, L9_3, L10_3)
        end
      end
      L5_3 = Wait
      L6_3 = 0
      L5_3(L6_3)
    end
    L5_3 = IN_CASINO
    if L5_3 then
      L5_3 = DoScreenFadeOut
      L6_3 = 1000
      L5_3(L6_3)
      L5_3 = Wait
      L6_3 = 1000
      L5_3(L6_3)
      L5_3 = DoScreenFadeIn
      L6_3 = 200
      L5_3(L6_3)
      L5_3 = DestroyCam
      L6_3 = L4_3
      L5_3(L6_3)
      L5_3 = RenderScriptCams
      L6_3 = false
      L7_3 = true
      L8_3 = 1
      L9_3 = true
      L10_3 = true
      L5_3(L6_3, L7_3, L8_3, L9_3, L10_3)
      L5_3 = InfoPanel_UpdateNotification
      L6_3 = nil
      L5_3(L6_3)
    else
      L5_3 = DestroyCam
      L6_3 = L4_3
      L5_3(L6_3)
      L5_3 = RenderScriptCams
      L6_3 = false
      L7_3 = true
      L8_3 = 1
      L9_3 = true
      L10_3 = true
      L5_3(L6_3, L7_3, L8_3, L9_3, L10_3)
    end
  end
  L3_2(L4_2)
end
DrinkingBar_AnimatePrice = L44_1
function L44_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = DebugStart
  L2_2 = "StartUsingBartender"
  L1_2(L2_2)
  L1_2 = A0_2.id
  L4_1 = L1_2
  L1_2 = 1
  L5_1 = L1_2
  L1_2 = 0
  L16_1 = L1_2
  L1_2 = false
  L17_1 = L1_2
  LAST_STARTED_GAME_TYPE = "drinkingbar"
  L1_2 = InfoPanel_UpdateNotification
  L2_2 = nil
  L1_2(L2_2)
  L1_2 = InfoPanel_Update
  L2_2 = nil
  L3_2 = nil
  L4_2 = nil
  L5_2 = nil
  L6_2 = nil
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
    L0_3 = BlockPlayerInteraction
    L1_3 = 2000
    L0_3(L1_3)
    L0_3 = L23_1
    L0_3()
    L0_3 = A0_2.initialPos
    L1_3 = A0_2.animCoords
    L2_3 = A0_2.animRot
    L3_3 = TaskGoStraightToCoord
    L4_3 = PlayerPedId
    L4_3 = L4_3()
    L5_3 = L0_3.x
    L6_3 = L0_3.y
    L7_3 = L0_3.z
    L8_3 = 1.0
    L9_3 = 3.0
    L10_3 = A0_2.initialHeading
    L11_3 = 0.0
    L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
    L3_3 = WaitForPlayerOnCoords
    L4_3 = L0_3
    L5_3 = 3000
    L3_3(L4_3, L5_3)
    L3_3 = DrinkingBar_ShowMenu
    L3_3()
    CAN_MOVE = false
    L3_3 = PlayPedAmbientSpeechWithVoiceNative
    L4_3 = A0_2.ped
    L5_3 = "MENU_BROWSING"
    L6_3 = "CAS_JOSEPHINE"
    L7_3 = "SPEECH_PARAMS_FORCE_NORMAL"
    L8_3 = 0
    L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
    L3_3 = TriggerServerEvent
    L4_3 = "DrinkingBar:VoiceBartender"
    L5_3 = "MENU_BROWSING"
    L6_3 = "CAS_JOSEPHINE"
    L3_3(L4_3, L5_3, L6_3)
    L3_3 = CreateSynchronizedScene
    L4_3 = L1_3.x
    L5_3 = L1_3.y
    L6_3 = L1_3.z
    L7_3 = L2_3.x
    L8_3 = L2_3.y
    L9_3 = L2_3.z
    L10_3 = 0
    L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
    L4_3 = TaskSynchronizedScene
    L5_3 = A0_2.ped
    L6_3 = L3_3
    L7_3 = "anim@amb@nightclub@mini@drinking@bar@drink@idle_a"
    L8_3 = "idle_a_bartender"
    L9_3 = 2.0
    L10_3 = -1.5
    L11_3 = 13
    L12_3 = 16
    L13_3 = 2.0
    L14_3 = 0
    L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
    L4_3 = SetSynchronizedSceneLooped
    L5_3 = L3_3
    L6_3 = 1
    L4_3(L5_3, L6_3)
  end
  L1_2(L2_2)
end
L45_1 = RegisterNetEvent
L46_1 = "DrinkingBar:UseCasinoSnack"
L45_1(L46_1)
L45_1 = AddEventHandler
L46_1 = "DrinkingBar:UseCasinoSnack"
function L47_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = IN_CASINO
  if not L3_2 then
    return
  end
  L3_2 = GetMyPlayerId
  L3_2 = L3_2()
  if A0_2 == L3_2 then
    L3_2 = PlayerPedId
    L3_2 = L3_2()
    if L3_2 then
      goto lbl_17
    end
  end
  L3_2 = ScenePed_ForceUseForPlayer
  L4_2 = A0_2
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  ::lbl_17::
  if not L3_2 then
    return
  end
  if "casino_beer" == A1_2 then
    L4_2 = L35_1
    L5_2 = L3_2
    L6_2 = "mp_player_intdrink"
    L7_2 = {}
    L8_2 = "loop_bottle"
    L9_2 = "outro_bottle"
    L7_2[1] = L8_2
    L7_2[2] = L9_2
    L8_2 = {}
    L9_2 = 0.89
    L10_2 = 0.99
    L8_2[1] = L9_2
    L8_2[2] = L10_2
    L9_2 = "prop_amb_beer_bottle"
    L10_2 = vector3
    L11_2 = 0.12
    L12_2 = 0.008
    L13_2 = 0.03
    L10_2 = L10_2(L11_2, L12_2, L13_2)
    L11_2 = vector3
    L12_2 = 240.0
    L13_2 = -60.0
    L14_2 = 0.0
    L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2, L13_2, L14_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L4_2 = PlayerPedId
    L4_2 = L4_2()
    if L3_2 == L4_2 then
      L4_2 = SetCasinoDrunkLevel
      L5_2 = PLAYER_DRUNK_LEVEL
      L5_2 = L5_2 + 0.05
      L4_2(L5_2)
    end
  elseif "casino_burger" == A1_2 then
    L4_2 = L35_1
    L5_2 = L3_2
    L6_2 = "mp_player_inteat@burger"
    L7_2 = {}
    L8_2 = "mp_player_int_eat_burger"
    L9_2 = "mp_player_int_eat_exit_burger"
    L7_2[1] = L8_2
    L7_2[2] = L9_2
    L8_2 = {}
    L9_2 = 0.89
    L10_2 = 0.89
    L11_2 = 0.99
    L8_2[1] = L9_2
    L8_2[2] = L10_2
    L8_2[3] = L11_2
    L9_2 = "prop_cs_burger_01"
    L10_2 = vector3
    L11_2 = 0.12
    L12_2 = 0.048
    L13_2 = 0.03
    L10_2 = L10_2(L11_2, L12_2, L13_2)
    L11_2 = vector3
    L12_2 = 510.0
    L13_2 = -60.0
    L14_2 = 0.0
    L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2, L13_2, L14_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  elseif "casino_coffee" == A1_2 then
    L4_2 = L35_1
    L5_2 = L3_2
    L6_2 = "mp_player_intdrink"
    L7_2 = {}
    L8_2 = "loop_bottle"
    L9_2 = "outro_bottle"
    L7_2[1] = L8_2
    L7_2[2] = L9_2
    L8_2 = {}
    L9_2 = 0.89
    L10_2 = 0.5
    L8_2[1] = L9_2
    L8_2[2] = L10_2
    L9_2 = "p_amb_coffeecup_01"
    L10_2 = vector3
    L11_2 = 0.12
    L12_2 = 0.028
    L13_2 = 0.03
    L10_2 = L10_2(L11_2, L12_2, L13_2)
    L11_2 = vector3
    L12_2 = 240.0
    L13_2 = -60.0
    L14_2 = 0.0
    L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2, L13_2, L14_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  elseif "casino_coke" == A1_2 then
    L4_2 = L35_1
    L5_2 = L3_2
    L6_2 = "mp_player_intdrink"
    L7_2 = {}
    L8_2 = "loop_bottle"
    L9_2 = "outro_bottle"
    L7_2[1] = L8_2
    L7_2[2] = L9_2
    L8_2 = {}
    L9_2 = 0.89
    L10_2 = 0.99
    L8_2[1] = L9_2
    L8_2[2] = L10_2
    L9_2 = "prop_ecola_can"
    L10_2 = vector3
    L11_2 = 0.12
    L12_2 = 0.028
    L13_2 = 0.03
    L10_2 = L10_2(L11_2, L12_2, L13_2)
    L11_2 = vector3
    L12_2 = 240.0
    L13_2 = -60.0
    L14_2 = 0.0
    L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2, L13_2, L14_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  elseif "casino_donut" == A1_2 then
    L4_2 = L35_1
    L5_2 = L3_2
    L6_2 = "mp_player_inteat@burger"
    L7_2 = {}
    L8_2 = "mp_player_int_eat_burger"
    L9_2 = "mp_player_int_eat_exit_burger"
    L7_2[1] = L8_2
    L7_2[2] = L9_2
    L8_2 = {}
    L9_2 = 0.89
    L10_2 = 0.5
    L8_2[1] = L9_2
    L8_2[2] = L10_2
    L9_2 = "prop_amb_donut"
    L10_2 = vector3
    L11_2 = 0.13
    L12_2 = 0.05
    L13_2 = 0.02
    L10_2 = L10_2(L11_2, L12_2, L13_2)
    L11_2 = vector3
    L12_2 = -50.0
    L13_2 = 16.0
    L14_2 = 60.0
    L11_2 = L11_2(L12_2, L13_2, L14_2)
    L12_2 = 18905
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  elseif "casino_ego_chaser" == A1_2 then
    L4_2 = L35_1
    L5_2 = L3_2
    L6_2 = "mp_player_inteat@burger"
    L7_2 = {}
    L8_2 = "mp_player_int_eat_burger"
    L9_2 = "mp_player_int_eat_exit_burger"
    L7_2[1] = L8_2
    L7_2[2] = L9_2
    L8_2 = {}
    L9_2 = 0.89
    L10_2 = 0.5
    L8_2[1] = L9_2
    L8_2[2] = L10_2
    L9_2 = "prop_choc_ego"
    L10_2 = vector3
    L11_2 = 0
    L12_2 = 0
    L13_2 = 0
    L10_2 = L10_2(L11_2, L12_2, L13_2)
    L11_2 = vector3
    L12_2 = 0
    L13_2 = 0
    L14_2 = 0
    L11_2 = L11_2(L12_2, L13_2, L14_2)
    L12_2 = 60309
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  elseif "casino_luckypotion" == A1_2 then
    L4_2 = L35_1
    L5_2 = L3_2
    L6_2 = "mp_player_intdrink"
    L7_2 = {}
    L8_2 = "loop_bottle"
    L9_2 = "outro_bottle"
    L7_2[1] = L8_2
    L7_2[2] = L9_2
    L8_2 = {}
    L9_2 = 0.89
    L10_2 = 0.99
    L8_2[1] = L9_2
    L8_2[2] = L10_2
    L9_2 = "prop_weed_bottle"
    L10_2 = vector3
    L11_2 = 0.12
    L12_2 = 0.028
    L13_2 = 0.03
    L10_2 = L10_2(L11_2, L12_2, L13_2)
    L11_2 = vector3
    L12_2 = 240.0
    L13_2 = -60.0
    L14_2 = 0.0
    L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2, L13_2, L14_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  elseif "casino_psqs" == A1_2 then
    L4_2 = L35_1
    L5_2 = L3_2
    L6_2 = "mp_player_intdrink"
    L7_2 = {}
    L8_2 = "loop_bottle"
    L9_2 = "outro_bottle"
    L7_2[1] = L8_2
    L7_2[2] = L9_2
    L8_2 = {}
    L9_2 = 0.89
    L10_2 = 0.99
    L8_2[1] = L9_2
    L8_2[2] = L10_2
    L9_2 = "prop_candy_pqs"
    L10_2 = vector3
    L11_2 = 0.12
    L12_2 = 0.028
    L13_2 = 0.03
    L10_2 = L10_2(L11_2, L12_2, L13_2)
    L11_2 = vector3
    L12_2 = -30.0
    L13_2 = -60.0
    L14_2 = 0.0
    L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2, L13_2, L14_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  elseif "casino_sandwitch" == A1_2 then
    L4_2 = L35_1
    L5_2 = L3_2
    L6_2 = "mp_player_inteat@burger"
    L7_2 = {}
    L8_2 = "mp_player_int_eat_burger"
    L9_2 = "mp_player_int_eat_exit_burger"
    L7_2[1] = L8_2
    L7_2[2] = L9_2
    L8_2 = {}
    L9_2 = 0.89
    L10_2 = 0.5
    L8_2[1] = L9_2
    L8_2[2] = L10_2
    L9_2 = "prop_sandwich_01"
    L10_2 = vector3
    L11_2 = 0.13
    L12_2 = 0.05
    L13_2 = 0.02
    L10_2 = L10_2(L11_2, L12_2, L13_2)
    L11_2 = vector3
    L12_2 = -50.0
    L13_2 = 16.0
    L14_2 = 60.0
    L11_2 = L11_2(L12_2, L13_2, L14_2)
    L12_2 = 18905
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  elseif "casino_sprite" == A1_2 then
    L4_2 = L35_1
    L5_2 = L3_2
    L6_2 = "mp_player_intdrink"
    L7_2 = {}
    L8_2 = "loop_bottle"
    L9_2 = "outro_bottle"
    L7_2[1] = L8_2
    L7_2[2] = L9_2
    L8_2 = {}
    L9_2 = 0.89
    L10_2 = 0.99
    L8_2[1] = L9_2
    L8_2[2] = L10_2
    L9_2 = "prop_ld_can_01"
    L10_2 = vector3
    L11_2 = 0.12
    L12_2 = 0.028
    L13_2 = 0.03
    L10_2 = L10_2(L11_2, L12_2, L13_2)
    L11_2 = vector3
    L12_2 = 240.0
    L13_2 = -60.0
    L14_2 = 0.0
    L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2, L13_2, L14_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  end
  L4_2 = PlayerPedId
  L4_2 = L4_2()
  if L3_2 == L4_2 then
    L4_2 = PLAYER_ITEMS
    L5_2 = PLAYER_ITEMS
    L5_2 = L5_2[A1_2]
    L5_2 = L5_2 - 1
    L4_2[A1_2] = L5_2
    L4_2 = pairs
    L5_2 = CasinoInventoryItems
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
      L10_2 = L9_2.key
      if L10_2 == A1_2 then
        L10_2 = L9_2.consumable
        if L10_2 then
          L10_2 = L9_2.consumable
          if 1 == L10_2 then
            L10_2 = RemovePlayerThirst
            L11_2 = A1_2
            L10_2(L11_2)
            break
          end
          L10_2 = RemovePlayerHunger
          L11_2 = A1_2
          L10_2(L11_2)
          break
        end
      end
    end
  end
end
L45_1(L46_1, L47_1)
function L45_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = DebugStart
  L4_2 = "WhiskeyAnimationAskGlass"
  L3_2(L4_2)
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  if A0_2 == L3_2 then
    L3_2 = TriggerServerEvent
    L4_2 = "DrinkingBar:StartWhiskeyAnimation"
    L5_2 = A2_2
    L6_2 = 2
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = InfoPanel_UpdateNotification
    L4_2 = nil
    L3_2(L4_2)
  end
  L3_2 = CreateThread
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3
    L0_3 = RequestModelAndWait
    L1_3 = A2_2
    L1_3 = L1_3[1]
    L0_3(L1_3)
    L0_3 = RequestModelAndWait
    L1_3 = A2_2
    L1_3 = L1_3[2]
    L0_3(L1_3)
    L0_3 = RequestModelAndWait
    L1_3 = A2_2
    L1_3 = L1_3[3]
    L0_3(L1_3)
    L0_3 = DrinkingBar_Bartenders
    L1_3 = A1_2
    L0_3 = L0_3[L1_3]
    L0_3 = L0_3.animCoords
    L1_3 = DrinkingBar_Bartenders
    L2_3 = A1_2
    L1_3 = L1_3[L2_3]
    L1_3 = L1_3.animRot
    L2_3 = DrinkingBar_Bartenders
    L3_3 = A1_2
    L2_3 = L2_3[L3_3]
    L2_3 = L2_3.ped
    L3_3 = L30_1
    L4_3 = A1_2
    L5_3 = A2_2
    L5_3 = L5_3[1]
    L3_3 = L3_3(L4_3, L5_3)
    L4_3 = L30_1
    L5_3 = A1_2
    L6_3 = A2_2
    L6_3 = L6_3[2]
    L4_3 = L4_3(L5_3, L6_3)
    L5_3 = L29_1
    L6_3 = A1_2
    L7_3 = A2_2
    L7_3 = L7_3[3]
    L5_3 = L5_3(L6_3, L7_3)
    L6_3 = SetEntityVisible
    L7_3 = L5_3
    L8_3 = false
    L6_3(L7_3, L8_3)
    L6_3 = CreateSynchronizedScene
    L7_3 = L0_3.x
    L8_3 = L0_3.y
    L9_3 = L0_3.z
    L10_3 = L1_3.x
    L11_3 = L1_3.y
    L12_3 = L1_3.z
    L13_3 = 0
    L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
    L7_3 = TaskSynchronizedScene
    L8_3 = A0_2
    L9_3 = L6_3
    L10_3 = "anim@amb@nightclub@mini@drinking@bar@drink@one"
    L11_3 = "one_player"
    L12_3 = 2.0
    L13_3 = -1.5
    L14_3 = 13
    L15_3 = 16
    L16_3 = 2.0
    L17_3 = 0
    L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
    L7_3 = TaskSynchronizedScene
    L8_3 = L2_3
    L9_3 = L6_3
    L10_3 = "anim@amb@nightclub@mini@drinking@bar@drink@one"
    L11_3 = "one_bartender"
    L12_3 = 2.0
    L13_3 = -1.5
    L14_3 = 13
    L15_3 = 16
    L16_3 = 2.0
    L17_3 = 0
    L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
    L7_3 = PlaySynchronizedEntityAnim
    L8_3 = L3_3
    L9_3 = L6_3
    L10_3 = "one_whiskey"
    L11_3 = "anim@amb@nightclub@mini@drinking@bar@drink@one"
    L12_3 = 1000
    L13_3 = -2
    L14_3 = 0
    L15_3 = 1148846080
    L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
    L7_3 = PlaySynchronizedEntityAnim
    L8_3 = L4_3
    L9_3 = L6_3
    L10_3 = "one_shot_glass"
    L11_3 = "anim@amb@nightclub@mini@drinking@bar@drink@one"
    L12_3 = 1000
    L13_3 = -2
    L14_3 = 0
    L15_3 = 1148846080
    L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
    L7_3 = PlaySynchronizedEntityAnim
    L8_3 = L5_3
    L9_3 = L6_3
    L10_3 = "one_shot_glass"
    L11_3 = "anim@amb@nightclub@mini@drinking@bar@drink@one"
    L12_3 = 1000
    L13_3 = -2
    L14_3 = 0
    L15_3 = 1148846080
    L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
    L7_3 = SetSynchronizedSceneLooped
    L8_3 = L6_3
    L9_3 = 0
    L7_3(L8_3, L9_3)
    while true do
      L7_3 = GetSynchronizedScenePhase
      L8_3 = L6_3
      L7_3 = L7_3(L8_3)
      L8_3 = 0.25
      if not (L7_3 < L8_3) then
        break
      end
      L7_3 = DoesEntityExist
      L8_3 = L2_3
      L7_3 = L7_3(L8_3)
      if not L7_3 then
        break
      end
      L7_3 = IN_CASINO
      if not L7_3 then
        break
      end
      L7_3 = Wait
      L8_3 = 33
      L7_3(L8_3)
    end
    L7_3 = SetEntityVisible
    L8_3 = L4_3
    L9_3 = false
    L7_3(L8_3, L9_3)
    L7_3 = SetEntityVisible
    L8_3 = L5_3
    L9_3 = true
    L7_3(L8_3, L9_3)
    L7_3 = "HAND_OVER_WHISKEY"
    L8_3 = A2_2
    L8_3 = L8_3[1]
    if "ba_prop_battle_decanter_02_s" == L8_3 then
      L7_3 = "HAND_OVER_SHOT"
    end
    L8_3 = PlayPedAmbientSpeechWithVoiceNative
    L9_3 = L2_3
    L10_3 = L7_3
    L11_3 = "CAS_JOSEPHINE"
    L12_3 = "SPEECH_PARAMS_FORCE_NORMAL"
    L13_3 = 0
    L8_3(L9_3, L10_3, L11_3, L12_3, L13_3)
    while true do
      L8_3 = GetSynchronizedScenePhase
      L9_3 = L6_3
      L8_3 = L8_3(L9_3)
      L9_3 = 0.6
      if not (L8_3 < L9_3) then
        break
      end
      L8_3 = DoesEntityExist
      L9_3 = L2_3
      L8_3 = L8_3(L9_3)
      if not L8_3 then
        break
      end
      L8_3 = IN_CASINO
      if not L8_3 then
        break
      end
      L8_3 = Wait
      L9_3 = 33
      L8_3(L9_3)
    end
    L8_3 = SetEntityVisible
    L9_3 = L4_3
    L10_3 = true
    L8_3(L9_3, L10_3)
    L8_3 = SetEntityVisible
    L9_3 = L5_3
    L10_3 = false
    L8_3(L9_3, L10_3)
    L8_3 = A0_2
    L9_3 = PlayerPedId
    L9_3 = L9_3()
    if L8_3 == L9_3 then
      L8_3 = SetCasinoDrunkLevel
      L9_3 = PLAYER_DRUNK_LEVEL
      L9_3 = L9_3 + 0.2
      L8_3(L9_3)
    end
    while true do
      L8_3 = GetSynchronizedScenePhase
      L9_3 = L6_3
      L8_3 = L8_3(L9_3)
      L9_3 = 0.99
      if not (L8_3 < L9_3) then
        break
      end
      L8_3 = DoesEntityExist
      L9_3 = L2_3
      L8_3 = L8_3(L9_3)
      if not L8_3 then
        break
      end
      L8_3 = IN_CASINO
      if not L8_3 then
        break
      end
      L8_3 = Wait
      L9_3 = 33
      L8_3(L9_3)
    end
    L8_3 = CreateSynchronizedScene
    L9_3 = L0_3.x
    L10_3 = L0_3.y
    L11_3 = L0_3.z
    L12_3 = L1_3.x
    L13_3 = L1_3.y
    L14_3 = L1_3.z
    L15_3 = 0
    L8_3 = L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
    L9_3 = TaskSynchronizedScene
    L10_3 = L2_3
    L11_3 = L8_3
    L12_3 = "anim@amb@nightclub@mini@drinking@bar@drink@idle_a"
    L13_3 = "idle_a_bartender"
    L14_3 = 2.0
    L15_3 = -1.5
    L16_3 = 13
    L17_3 = 16
    L18_3 = 2.0
    L19_3 = 0
    L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
    L9_3 = SetSynchronizedSceneLooped
    L10_3 = L8_3
    L11_3 = 1
    L9_3(L10_3, L11_3)
    L9_3 = A0_2
    L10_3 = PlayerPedId
    L10_3 = L10_3()
    if L9_3 == L10_3 then
      L9_3 = L26_1
      L9_3()
      L9_3 = A2_2
      L9_3 = L9_3[1]
      if "ba_prop_battle_decanter_02_s" ~= L9_3 then
        L9_3 = PLAYER_DRUNK_LEVEL
        if L9_3 < 1 then
          L9_3 = InfoPanel_UpdateNotification
          L10_3 = Translation
          L10_3 = L10_3.Get
          L11_3 = "BAR_ASK_SHOT"
          L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3 = L10_3(L11_3)
          L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
      end
      else
        L9_3 = DrinkingBar_OnQuit
        L9_3()
      end
    end
  end
  L3_2(L4_2)
end
function L46_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = DebugStart
  L2_2 = "OnWhiskeyIntroFinish"
  L1_2(L2_2)
  L1_2 = L45_1
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = A0_2
  L4_2 = L7_1
  L1_2(L2_2, L3_2, L4_2)
end
function L47_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = DebugStart
  L4_2 = "WhiskeyAnimationIntro"
  L3_2(L4_2)
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  if A0_2 == L3_2 then
    L3_2 = TriggerServerEvent
    L4_2 = "DrinkingBar:StartWhiskeyAnimation"
    L5_2 = A2_2
    L6_2 = 1
    L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  if A0_2 == L3_2 then
    L4_1 = A1_2
    L3_2 = 2
    L5_1 = L3_2
  end
  L3_2 = CreateThread
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3
    L0_3 = RequestModelAndWait
    L1_3 = A2_2
    L1_3 = L1_3[1]
    L0_3(L1_3)
    L0_3 = RequestModelAndWait
    L1_3 = A2_2
    L1_3 = L1_3[2]
    L0_3(L1_3)
    L0_3 = RequestModelAndWait
    L1_3 = A2_2
    L1_3 = L1_3[3]
    L0_3(L1_3)
    L0_3 = L23_1
    L0_3()
    L0_3 = L29_1
    L1_3 = A1_2
    L2_3 = A2_2
    L2_3 = L2_3[1]
    L0_3 = L0_3(L1_3, L2_3)
    L1_3 = L29_1
    L2_3 = A1_2
    L3_3 = A2_2
    L3_3 = L3_3[2]
    L1_3 = L1_3(L2_3, L3_3)
    L2_3 = DrinkingBar_Bartenders
    L3_3 = A1_2
    L2_3 = L2_3[L3_3]
    L2_3 = L2_3.animCoords
    L3_3 = DrinkingBar_Bartenders
    L4_3 = A1_2
    L3_3 = L3_3[L4_3]
    L3_3 = L3_3.animRot
    L4_3 = DrinkingBar_Bartenders
    L5_3 = A1_2
    L4_3 = L4_3[L5_3]
    L4_3 = L4_3.ped
    L5_3 = A2_2
    L5_3 = L5_3[1]
    if "ba_prop_battle_decanter_02_s" ~= L5_3 then
      L5_3 = PlayPedAmbientSpeechWithVoiceNative
      L6_3 = L4_3
      L7_3 = "CONFIRM_WHISKEY"
      L8_3 = "CAS_JOSEPHINE"
      L9_3 = "SPEECH_PARAMS_FORCE_NORMAL"
      L10_3 = 0
      L5_3(L6_3, L7_3, L8_3, L9_3, L10_3)
    else
      L5_3 = PlayPedAmbientSpeechWithVoiceNative
      L6_3 = L4_3
      L7_3 = "GENERIC_BUY_RESPONSE"
      L8_3 = "CAS_JOSEPHINE"
      L9_3 = "SPEECH_PARAMS_FORCE_NORMAL"
      L10_3 = 0
      L5_3(L6_3, L7_3, L8_3, L9_3, L10_3)
    end
    L5_3 = CreateSynchronizedScene
    L6_3 = L2_3.x
    L7_3 = L2_3.y
    L8_3 = L2_3.z
    L9_3 = L3_3.x
    L10_3 = L3_3.y
    L11_3 = L3_3.z
    L12_3 = 0
    L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
    L6_3 = TaskSynchronizedScene
    L7_3 = L4_3
    L8_3 = L5_3
    L9_3 = "anim@amb@nightclub@mini@drinking@bar@drink@base"
    L10_3 = "intro_bartender"
    L11_3 = 2.0
    L12_3 = -1.5
    L13_3 = 13
    L14_3 = 16
    L15_3 = 2.0
    L16_3 = 0
    L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
    L6_3 = PlaySynchronizedEntityAnim
    L7_3 = L0_3
    L8_3 = L5_3
    L9_3 = "intro_whiskey"
    L10_3 = "anim@amb@nightclub@mini@drinking@bar@drink@base"
    L11_3 = 1000
    L12_3 = -2
    L13_3 = 0
    L14_3 = 1148846080
    L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
    L6_3 = PlaySynchronizedEntityAnim
    L7_3 = L1_3
    L8_3 = L5_3
    L9_3 = "intro_shot_glass"
    L10_3 = "anim@amb@nightclub@mini@drinking@bar@drink@base"
    L11_3 = 1000
    L12_3 = -2
    L13_3 = 0
    L14_3 = 1148846080
    L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
    L6_3 = SetSynchronizedSceneLooped
    L7_3 = L5_3
    L8_3 = 0
    L6_3(L7_3, L8_3)
    while true do
      L6_3 = GetSynchronizedScenePhase
      L7_3 = L5_3
      L6_3 = L6_3(L7_3)
      L7_3 = 0.99
      if not (L6_3 < L7_3) then
        break
      end
      L6_3 = DoesEntityExist
      L7_3 = L4_3
      L6_3 = L6_3(L7_3)
      if not L6_3 then
        break
      end
      L6_3 = IN_CASINO
      if not L6_3 then
        break
      end
      L6_3 = Wait
      L7_3 = 33
      L6_3(L7_3)
    end
    L6_3 = CreateSynchronizedScene
    L7_3 = L2_3.x
    L8_3 = L2_3.y
    L9_3 = L2_3.z
    L10_3 = L3_3.x
    L11_3 = L3_3.y
    L12_3 = L3_3.z
    L13_3 = 0
    L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
    L5_3 = L6_3
    L6_3 = TaskSynchronizedScene
    L7_3 = L4_3
    L8_3 = L5_3
    L9_3 = "anim@amb@nightclub@mini@drinking@bar@drink@idle_a"
    L10_3 = "idle_a_bartender"
    L11_3 = 2.0
    L12_3 = -1.5
    L13_3 = 13
    L14_3 = 16
    L15_3 = 2.0
    L16_3 = 0
    L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
    L6_3 = SetSynchronizedSceneLooped
    L7_3 = L5_3
    L8_3 = 1
    L6_3(L7_3, L8_3)
    L6_3 = A0_2
    L7_3 = PlayerPedId
    L7_3 = L7_3()
    if L6_3 == L7_3 then
      L6_3 = L46_1
      L7_3 = A1_2
      L6_3(L7_3)
    end
  end
  L3_2(L4_2)
end
function L48_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = DebugStart
  L4_2 = "WhiskeyAnimationOutro"
  L3_2(L4_2)
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  if A0_2 == L3_2 then
    L3_2 = TriggerServerEvent
    L4_2 = "DrinkingBar:StartWhiskeyAnimation"
    L5_2 = A2_2
    L6_2 = 4
    L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = CreateThread
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3
    L0_3 = DrinkingBar_Bartenders
    L1_3 = A1_2
    L0_3 = L0_3[L1_3]
    L0_3 = L0_3.animCoords
    L1_3 = DrinkingBar_Bartenders
    L2_3 = A1_2
    L1_3 = L1_3[L2_3]
    L1_3 = L1_3.animRot
    L2_3 = DrinkingBar_Bartenders
    L3_3 = A1_2
    L2_3 = L2_3[L3_3]
    L2_3 = L2_3.ped
    L3_3 = L30_1
    L4_3 = A1_2
    L5_3 = A2_2
    L5_3 = L5_3[1]
    L3_3 = L3_3(L4_3, L5_3)
    L4_3 = L30_1
    L5_3 = A1_2
    L6_3 = A2_2
    L6_3 = L6_3[2]
    L4_3 = L4_3(L5_3, L6_3)
    L5_3 = CreateSynchronizedScene
    L6_3 = L0_3.x
    L7_3 = L0_3.y
    L8_3 = L0_3.z
    L9_3 = L1_3.x
    L10_3 = L1_3.y
    L11_3 = L1_3.z
    L12_3 = 0
    L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
    L6_3 = TaskSynchronizedScene
    L7_3 = L2_3
    L8_3 = L5_3
    L9_3 = "anim@amb@nightclub@mini@drinking@bar@drink@base"
    L10_3 = "outro_bartender"
    L11_3 = 2.0
    L12_3 = -1.5
    L13_3 = 13
    L14_3 = 16
    L15_3 = 2.0
    L16_3 = 0
    L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
    L6_3 = PlaySynchronizedEntityAnim
    L7_3 = L3_3
    L8_3 = L5_3
    L9_3 = "outro_whiskey"
    L10_3 = "anim@amb@nightclub@mini@drinking@bar@drink@base"
    L11_3 = 1000
    L12_3 = -2
    L13_3 = 0
    L14_3 = 1148846080
    L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
    L6_3 = PlaySynchronizedEntityAnim
    L7_3 = L4_3
    L8_3 = L5_3
    L9_3 = "outro_shot_glass"
    L10_3 = "anim@amb@nightclub@mini@drinking@bar@drink@base"
    L11_3 = 1000
    L12_3 = -2
    L13_3 = 0
    L14_3 = 1148846080
    L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
    L6_3 = SetSynchronizedSceneLooped
    L7_3 = L5_3
    L8_3 = 0
    L6_3(L7_3, L8_3)
    while true do
      L6_3 = GetSynchronizedScenePhase
      L7_3 = L5_3
      L6_3 = L6_3(L7_3)
      L7_3 = 0.99
      if not (L6_3 < L7_3) then
        break
      end
      L6_3 = DoesEntityExist
      L7_3 = L2_3
      L6_3 = L6_3(L7_3)
      if not L6_3 then
        break
      end
      L6_3 = IN_CASINO
      if not L6_3 then
        break
      end
      L6_3 = Wait
      L7_3 = 33
      L6_3(L7_3)
    end
    L6_3 = L32_1
    L7_3 = A1_2
    L6_3(L7_3)
    L6_3 = PlayPedAmbientSpeechWithVoiceNative
    L7_3 = L2_3
    L8_3 = "ANYTHING_ELSE"
    L9_3 = "CAS_JOSEPHINE"
    L10_3 = "SPEECH_PARAMS_FORCE_NORMAL"
    L11_3 = 0
    L6_3(L7_3, L8_3, L9_3, L10_3, L11_3)
    L6_3 = CreateSynchronizedScene
    L7_3 = L0_3.x
    L8_3 = L0_3.y
    L9_3 = L0_3.z
    L10_3 = L1_3.x
    L11_3 = L1_3.y
    L12_3 = L1_3.z
    L13_3 = 0
    L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
    L5_3 = L6_3
    L6_3 = TaskSynchronizedScene
    L7_3 = L2_3
    L8_3 = L5_3
    L9_3 = "anim@amb@nightclub@mini@drinking@bar@drink_v2@idle_a"
    L10_3 = "idle_a_bartender"
    L11_3 = 2.0
    L12_3 = -1.5
    L13_3 = 13
    L14_3 = 16
    L15_3 = 2.0
    L16_3 = 0
    L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
    L6_3 = SetSynchronizedSceneLooped
    L7_3 = L5_3
    L8_3 = 1
    L6_3(L7_3, L8_3)
    L6_3 = A0_2
    L7_3 = PlayerPedId
    L7_3 = L7_3()
    if L6_3 == L7_3 then
      L6_3 = ScenePed_AnnounceEnd
      L6_3()
      L6_3 = PLAYER_DRUNK_LEVEL
      if L6_3 < 1 then
        L6_3 = L4_1
        if -1 ~= L6_3 then
          L6_3 = DrinkingBar_ShowMenu
          L6_3()
        end
      else
        L6_3 = DrinkingBar_ForcedLeave
        L6_3()
      end
      L6_3 = L26_1
      L6_3()
    end
  end
  L3_2(L4_2)
end
function L49_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = DebugStart
  L4_2 = "BeerAnimation"
  L3_2(L4_2)
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  if A0_2 == L3_2 then
    L3_2 = TriggerServerEvent
    L4_2 = "DrinkingBar:StartBeerAnimation"
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = CreateThread
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3
    L0_3 = RequestModelAndWait
    L1_3 = A2_2
    L1_3 = L1_3[1]
    L0_3(L1_3)
    L0_3 = L23_1
    L0_3()
    L0_3 = L29_1
    L1_3 = A1_2
    L2_3 = A2_2
    L2_3 = L2_3[1]
    L0_3 = L0_3(L1_3, L2_3)
    L1_3 = DrinkingBar_Bartenders
    L2_3 = A1_2
    L1_3 = L1_3[L2_3]
    L1_3 = L1_3.animCoords
    L2_3 = DrinkingBar_Bartenders
    L3_3 = A1_2
    L2_3 = L2_3[L3_3]
    L2_3 = L2_3.animRot
    L3_3 = DrinkingBar_Bartenders
    L4_3 = A1_2
    L3_3 = L3_3[L4_3]
    L3_3 = L3_3.ped
    L4_3 = PlayPedAmbientSpeechWithVoiceNative
    L5_3 = L3_3
    L6_3 = "CHOOSE_DRINK"
    L7_3 = "BTL_CONNIE"
    L8_3 = "SPEECH_PARAMS_FORCE_NORMAL"
    L9_3 = 0
    L4_3(L5_3, L6_3, L7_3, L8_3, L9_3)
    L4_3 = CreateSynchronizedScene
    L5_3 = L1_3.x
    L6_3 = L1_3.y
    L7_3 = L1_3.z
    L8_3 = L2_3.x
    L9_3 = L2_3.y
    L10_3 = L2_3.z
    L11_3 = 0
    L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
    L5_3 = TaskSynchronizedScene
    L6_3 = L3_3
    L7_3 = L4_3
    L8_3 = "anim@amb@nightclub@mini@drinking@bar@drink@beer"
    L9_3 = "intro_bartender"
    L10_3 = 2.0
    L11_3 = -1.5
    L12_3 = 13
    L13_3 = 16
    L14_3 = 2.0
    L15_3 = 0
    L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
    L5_3 = PlaySynchronizedEntityAnim
    L6_3 = L0_3
    L7_3 = L4_3
    L8_3 = "intro_bottle"
    L9_3 = "anim@amb@nightclub@mini@drinking@bar@drink@beer"
    L10_3 = 1000
    L11_3 = -2
    L12_3 = 0
    L13_3 = 1148846080
    L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
    L5_3 = SetSynchronizedSceneLooped
    L6_3 = L4_3
    L7_3 = 0
    L5_3(L6_3, L7_3)
    while true do
      L5_3 = GetSynchronizedScenePhase
      L6_3 = L4_3
      L5_3 = L5_3(L6_3)
      L6_3 = 0.5
      if not (L5_3 < L6_3) then
        break
      end
      L5_3 = DoesEntityExist
      L6_3 = L3_3
      L5_3 = L5_3(L6_3)
      if not L5_3 then
        break
      end
      L5_3 = IN_CASINO
      if not L5_3 then
        break
      end
      L5_3 = Wait
      L6_3 = 33
      L5_3(L6_3)
    end
    L5_3 = PlayPedAmbientSpeechWithVoiceNative
    L6_3 = L3_3
    L7_3 = "HAND_OVER_BEER"
    L8_3 = "CAS_JOSEPHINE"
    L9_3 = "SPEECH_PARAMS_FORCE_NORMAL"
    L10_3 = 0
    L5_3(L6_3, L7_3, L8_3, L9_3, L10_3)
    while true do
      L5_3 = GetSynchronizedScenePhase
      L6_3 = L4_3
      L5_3 = L5_3(L6_3)
      L6_3 = 0.8
      if not (L5_3 < L6_3) then
        break
      end
      L5_3 = DoesEntityExist
      L6_3 = L3_3
      L5_3 = L5_3(L6_3)
      if not L5_3 then
        break
      end
      L5_3 = IN_CASINO
      if not L5_3 then
        break
      end
      L5_3 = Wait
      L6_3 = 33
      L5_3(L6_3)
    end
    L5_3 = A0_2
    L6_3 = PlayerPedId
    L6_3 = L6_3()
    if L5_3 == L6_3 then
      L5_3 = PlaySound
      L6_3 = "PICK_UP"
      L7_3 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
      L5_3(L6_3, L7_3)
    end
    L5_3 = L31_1
    L6_3 = A1_2
    L7_3 = L0_3
    L5_3(L6_3, L7_3)
    L5_3 = PlayPedAmbientSpeechWithVoiceNative
    L6_3 = L3_3
    L7_3 = "ANYTHING_ELSE"
    L8_3 = "CAS_JOSEPHINE"
    L9_3 = "SPEECH_PARAMS_FORCE_NORMAL"
    L10_3 = 0
    L5_3(L6_3, L7_3, L8_3, L9_3, L10_3)
    L5_3 = CreateSynchronizedScene
    L6_3 = L1_3.x
    L7_3 = L1_3.y
    L8_3 = L1_3.z
    L9_3 = L2_3.x
    L10_3 = L2_3.y
    L11_3 = L2_3.z
    L12_3 = 0
    L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
    L4_3 = L5_3
    L5_3 = TaskSynchronizedScene
    L6_3 = L3_3
    L7_3 = L4_3
    L8_3 = "anim@amb@nightclub@mini@drinking@bar@drink_v2@idle_a"
    L9_3 = "idle_a_bartender"
    L10_3 = 2.0
    L11_3 = -1.5
    L12_3 = 13
    L13_3 = 16
    L14_3 = 2.0
    L15_3 = 0
    L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
    L5_3 = SetSynchronizedSceneLooped
    L6_3 = L4_3
    L7_3 = 1
    L5_3(L6_3, L7_3)
    L5_3 = A0_2
    L6_3 = PlayerPedId
    L6_3 = L6_3()
    if L5_3 == L6_3 then
      L5_3 = PLAYER_DRUNK_LEVEL
      if L5_3 < 1 then
        L5_3 = L4_1
        if -1 ~= L5_3 then
          L5_3 = DrinkingBar_ShowMenu
          L5_3()
        end
      else
        L5_3 = DrinkingBar_ForcedLeave
        L5_3()
      end
      L5_3 = L26_1
      L5_3()
    end
  end
  L3_2(L4_2)
end
function L50_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = DebugStart
  L5_2 = "PassAnimation"
  L4_2(L5_2)
  L4_2 = PlayerPedId
  L4_2 = L4_2()
  if A0_2 == L4_2 then
    L4_2 = TriggerServerEvent
    L5_2 = "DrinkingBar:StartPassAnimation"
    L6_2 = A2_2
    L7_2 = A3_2
    L4_2(L5_2, L6_2, L7_2)
  end
  L4_2 = CreateThread
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3
    L0_3 = RequestModelAndWait
    L1_3 = A2_2
    L0_3(L1_3)
    L0_3 = L23_1
    L0_3()
    L0_3 = L29_1
    L1_3 = A1_2
    L2_3 = A2_2
    L0_3 = L0_3(L1_3, L2_3)
    L1_3 = DrinkingBar_Bartenders
    L2_3 = A1_2
    L1_3 = L1_3[L2_3]
    L1_3 = L1_3.animCoords
    L2_3 = DrinkingBar_Bartenders
    L3_3 = A1_2
    L2_3 = L2_3[L3_3]
    L2_3 = L2_3.animRot
    L3_3 = DrinkingBar_Bartenders
    L4_3 = A1_2
    L3_3 = L3_3[L4_3]
    L3_3 = L3_3.heading
    L4_3 = DrinkingBar_Bartenders
    L5_3 = A1_2
    L4_3 = L4_3[L5_3]
    L4_3 = L4_3.ped
    L5_3 = PlayPedAmbientSpeechWithVoiceNative
    L6_3 = L4_3
    L7_3 = "CHOOSE_DRINK"
    L8_3 = "BTL_CONNIE"
    L9_3 = "SPEECH_PARAMS_FORCE_NORMAL"
    L10_3 = 0
    L5_3(L6_3, L7_3, L8_3, L9_3, L10_3)
    L5_3 = CreateSynchronizedScene
    L6_3 = L1_3.x
    L7_3 = L1_3.y
    L8_3 = L1_3.z
    L9_3 = L2_3.x
    L10_3 = L2_3.y
    L11_3 = L2_3.z
    L12_3 = 0
    L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
    L6_3 = GetObjectOffsetFromCoords
    L7_3 = L1_3.x
    L8_3 = L1_3.y
    L9_3 = L1_3.z
    L10_3 = L3_3
    L11_3 = A3_2.x
    L12_3 = A3_2.y
    L13_3 = A3_2.z
    L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
    L7_3 = CreateSynchronizedScene
    L8_3 = L6_3.x
    L9_3 = L6_3.y
    L10_3 = L6_3.z
    L11_3 = L2_3.x
    L12_3 = L2_3.y
    L13_3 = L2_3.z
    L14_3 = 0
    L7_3 = L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
    L8_3 = TaskSynchronizedScene
    L9_3 = L4_3
    L10_3 = L5_3
    L11_3 = "anim@amb@nightclub@mini@drinking@bar@drink@beer"
    L12_3 = "intro_bartender"
    L13_3 = 2.0
    L14_3 = -1.5
    L15_3 = 13
    L16_3 = 16
    L17_3 = 2.0
    L18_3 = 0
    L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
    L8_3 = PlaySynchronizedEntityAnim
    L9_3 = L0_3
    L10_3 = L7_3
    L11_3 = "intro_bottle"
    L12_3 = "anim@amb@nightclub@mini@drinking@bar@drink@beer"
    L13_3 = 1000
    L14_3 = -2
    L15_3 = 0
    L16_3 = 1148846080
    L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
    L8_3 = SetSynchronizedSceneLooped
    L9_3 = L5_3
    L10_3 = 0
    L8_3(L9_3, L10_3)
    while true do
      L8_3 = GetSynchronizedScenePhase
      L9_3 = L5_3
      L8_3 = L8_3(L9_3)
      L9_3 = 0.5
      if not (L8_3 < L9_3) then
        break
      end
      L8_3 = DoesEntityExist
      L9_3 = L4_3
      L8_3 = L8_3(L9_3)
      if not L8_3 then
        break
      end
      L8_3 = IN_CASINO
      if not L8_3 then
        break
      end
      L8_3 = Wait
      L9_3 = 33
      L8_3(L9_3)
    end
    L8_3 = PlayPedAmbientSpeechWithVoiceNative
    L9_3 = L4_3
    L10_3 = "HAND_OVER_BEER"
    L11_3 = "CAS_JOSEPHINE"
    L12_3 = "SPEECH_PARAMS_FORCE_NORMAL"
    L13_3 = 0
    L8_3(L9_3, L10_3, L11_3, L12_3, L13_3)
    L8_3 = GAME_TIMER
    L8_3 = L8_3 + 500
    while true do
      L9_3 = GAME_TIMER
      if not (L8_3 > L9_3) then
        break
      end
      L9_3 = SetSynchronizedScenePhase
      L10_3 = L5_3
      L11_3 = 0.5
      L9_3(L10_3, L11_3)
      L9_3 = SetSynchronizedScenePhase
      L10_3 = L7_3
      L11_3 = 0.5
      L9_3(L10_3, L11_3)
      L9_3 = Wait
      L10_3 = 0
      L9_3(L10_3)
    end
    L9_3 = A0_2
    L10_3 = PlayerPedId
    L10_3 = L10_3()
    if L9_3 == L10_3 then
      L9_3 = PlaySound
      L10_3 = "PICK_UP"
      L11_3 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
      L9_3(L10_3, L11_3)
    end
    L9_3 = L31_1
    L10_3 = A1_2
    L11_3 = L0_3
    L9_3(L10_3, L11_3)
    L9_3 = PlayPedAmbientSpeechWithVoiceNative
    L10_3 = L4_3
    L11_3 = "ANYTHING_ELSE"
    L12_3 = "CAS_JOSEPHINE"
    L13_3 = "SPEECH_PARAMS_FORCE_NORMAL"
    L14_3 = 0
    L9_3(L10_3, L11_3, L12_3, L13_3, L14_3)
    L9_3 = CreateSynchronizedScene
    L10_3 = L1_3.x
    L11_3 = L1_3.y
    L12_3 = L1_3.z
    L13_3 = L2_3.x
    L14_3 = L2_3.y
    L15_3 = L2_3.z
    L16_3 = 0
    L9_3 = L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
    L5_3 = L9_3
    L9_3 = TaskSynchronizedScene
    L10_3 = L4_3
    L11_3 = L5_3
    L12_3 = "anim@amb@nightclub@mini@drinking@bar@drink_v2@idle_a"
    L13_3 = "idle_a_bartender"
    L14_3 = 2.0
    L15_3 = -1.5
    L16_3 = 13
    L17_3 = 16
    L18_3 = 2.0
    L19_3 = 0
    L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
    L9_3 = SetSynchronizedSceneLooped
    L10_3 = L5_3
    L11_3 = 1
    L9_3(L10_3, L11_3)
    L9_3 = A0_2
    L10_3 = PlayerPedId
    L10_3 = L10_3()
    if L9_3 == L10_3 then
      L9_3 = PLAYER_DRUNK_LEVEL
      if L9_3 < 1 then
        L9_3 = L4_1
        if -1 ~= L9_3 then
          L9_3 = DrinkingBar_ShowMenu
          L9_3()
        end
      else
        L9_3 = DrinkingBar_ForcedLeave
        L9_3()
      end
      L9_3 = L26_1
      L9_3()
    end
  end
  L4_2(L5_2)
end
function L51_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = DebugStart
  L2_2 = "IsChairUsed"
  L1_2(L2_2)
  L1_2 = pairs
  L2_2 = L2_1
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
function L52_1()
  local L0_2, L1_2
  L0_2 = DebugStart
  L1_2 = "StartSittingIdleAnimationController"
  L0_2(L1_2)
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = {}
    L1_3 = "a"
    L2_3 = "b"
    L3_3 = "c"
    L4_3 = "d"
    L5_3 = "e"
    L6_3 = "f"
    L0_3[1] = L1_3
    L0_3[2] = L2_3
    L0_3[3] = L3_3
    L0_3[4] = L4_3
    L0_3[5] = L5_3
    L0_3[6] = L6_3
    while true do
      L1_3 = IN_CASINO
      if not L1_3 then
        break
      end
      L1_3 = L9_1
      if not L1_3 then
        break
      end
      L1_3 = GAME_TIMER
      L2_3 = L11_1
      if L1_3 >= L2_3 then
        L1_3 = "base_idle_"
        L2_3 = GetRandomItem
        L3_3 = L0_3
        L2_3 = L2_3(L3_3)
        L1_3 = L1_3 .. L2_3
        L2_3 = L14_1
        if L2_3 then
          L2_3 = BlockPlayerInteraction
          L3_3 = 2000
          L2_3(L3_3)
          L2_3 = {}
          L3_3 = "exit_left"
          L4_3 = "exit_right"
          L2_3[1] = L3_3
          L2_3[2] = L4_3
          L0_3 = L2_3
          L2_3 = GetRandomItem
          L3_3 = L0_3
          L2_3 = L2_3(L3_3)
          L1_3 = L2_3
          L2_3 = false
          L9_1 = L2_3
        end
        L2_3 = GAME_TIMER
        L3_3 = GetAnimDuration
        L4_3 = L20_1
        L5_3 = L1_3
        L3_3 = L3_3(L4_3, L5_3)
        L3_3 = L3_3 * 1000
        L2_3 = L2_3 + L3_3
        L11_1 = L2_3
        L2_3 = PlaySynchronizedScene
        L3_3 = L12_1
        L4_3 = L13_1
        L5_3 = L20_1
        L6_3 = L1_3
        L7_3 = false
        L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
      end
      L1_3 = Wait
      L2_3 = 33
      L1_3(L2_3)
    end
    L1_3 = InfoPanel_UpdateNotification
    L2_3 = nil
    L1_3(L2_3)
    L1_3 = L22_1
    L1_3()
    L1_3 = IN_CASINO
    if L1_3 then
      L1_3 = Wait
      L2_3 = 2700
      L1_3(L2_3)
    end
    L1_3 = TriggerServerEvent
    L2_3 = "DrinkingBar:LeaveChair"
    L1_3(L2_3)
    L1_3 = CloseAllMenus
    L1_3()
    L1_3 = ClearPedTasks
    L2_3 = PlayerPedId
    L2_3, L3_3, L4_3, L5_3, L6_3, L7_3 = L2_3()
    L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3)
    L1_3 = ClearPedSecondaryTask
    L2_3 = PlayerPedId
    L2_3, L3_3, L4_3, L5_3, L6_3, L7_3 = L2_3()
    L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3)
    L1_3 = ScenePed_AnnounceEnd
    L1_3()
  end
  L0_2(L1_2)
end
function L53_1()
  local L0_2, L1_2
  L0_2 = DebugStart
  L1_2 = "OnSittingDownFinished"
  L0_2(L1_2)
  L0_2 = UnblockPlayerInteraction
  L0_2()
  L0_2 = RequestPlayerItems
  function L1_2()
    local L0_3, L1_3, L2_3
    L0_3 = InfoPanel_UpdateNotification
    L1_3 = L27_1
    L1_3 = L1_3()
    if L1_3 > 0 then
      L1_3 = Translation
      L1_3 = L1_3.Get
      L2_3 = "BAR_SIT_FUNCTIONS"
      L1_3 = L1_3(L2_3)
      if L1_3 then
        goto lbl_16
      end
    end
    L1_3 = Translation
    L1_3 = L1_3.Get
    L2_3 = "BAR_SIT_NOSNACKS"
    L1_3 = L1_3(L2_3)
    ::lbl_16::
    L0_3(L1_3)
  end
  L0_2(L1_2)
end
function L54_1()
  local L0_2, L1_2
  L0_2 = DebugStart
  L1_2 = "OnSittingInteraction"
  L0_2(L1_2)
  L0_2 = L9_1
  if not L0_2 then
    return
  end
  L0_2 = L10_1
  if 0 == L0_2 then
    L0_2 = RageUI
    L0_2 = L0_2.CurrentMenu
    if nil == L0_2 then
      L0_2 = L27_1
      L0_2 = L0_2()
      if L0_2 > 0 then
        L0_2 = BlockPlayerInteraction
        L1_2 = 500
        L0_2(L1_2)
        L0_2 = DrinkingBar_ShowSittingMenu
        L0_2()
        L0_2 = 1
        L10_1 = L0_2
      end
    end
  end
end
L55_1 = RegisterNetEvent
L56_1 = "DrinkingBar:StartBeerAnimation"
L55_1(L56_1)
L55_1 = AddEventHandler
L56_1 = "DrinkingBar:StartBeerAnimation"
function L57_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = IN_CASINO
  if not L3_2 then
    return
  end
  L3_2 = GetMyPlayerId
  L3_2 = L3_2()
  if A0_2 ~= L3_2 then
    L3_2 = L23_1
    L3_2()
    L3_2 = L49_1
    L4_2 = nil
    L5_2 = A1_2
    L6_2 = A2_2
    L3_2(L4_2, L5_2, L6_2)
  end
end
L55_1(L56_1, L57_1)
L55_1 = RegisterNetEvent
L56_1 = "DrinkingBar:DrinkBought"
L55_1(L56_1)
L55_1 = AddEventHandler
L56_1 = "DrinkingBar:DrinkBought"
function L57_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = IN_CASINO
  if not L1_2 then
    return
  end
  L1_2 = L23_1
  L1_2()
  L1_2 = InfoPanel_UpdateNotification
  L2_2 = nil
  L1_2(L2_2)
  L1_2 = Casino_AnimateBalance
  L1_2()
  L1_2 = CloseAllMenus
  L1_2()
  L6_1 = A0_2
  if "casino_beer" == A0_2 then
    L1_2 = L25_1
    L2_2 = 4000
    L1_2(L2_2)
    L1_2 = L49_1
    L2_2 = PlayerPedId
    L2_2 = L2_2()
    L3_2 = L4_1
    L4_2 = {}
    L5_2 = "prop_cs_beer_bot_01"
    L4_2[1] = L5_2
    L1_2(L2_2, L3_2, L4_2)
  elseif "casino_vodka" == A0_2 then
    L1_2 = L25_1
    L2_2 = 18000
    L1_2(L2_2)
    L1_2 = {}
    L2_2 = "ba_prop_battle_decanter_02_s"
    L3_2 = "ex_p_ex_tumbler_02_empty"
    L4_2 = "ex_p_ex_tumbler_02_s"
    L1_2[1] = L2_2
    L1_2[2] = L3_2
    L1_2[3] = L4_2
    L7_1 = L1_2
    L1_2 = L47_1
    L2_2 = PlayerPedId
    L2_2 = L2_2()
    L3_2 = L4_1
    L4_2 = L7_1
    L1_2(L2_2, L3_2, L4_2)
  elseif "casino_mountshot" == A0_2 then
    L1_2 = L25_1
    L2_2 = 18000
    L1_2(L2_2)
    L1_2 = {}
    L2_2 = "p_whiskey_bottle_s"
    L3_2 = "ex_p_ex_tumbler_01_empty"
    L4_2 = "ex_p_ex_tumbler_01_s"
    L1_2[1] = L2_2
    L1_2[2] = L3_2
    L1_2[3] = L4_2
    L7_1 = L1_2
    L1_2 = L47_1
    L2_2 = PlayerPedId
    L2_2 = L2_2()
    L3_2 = L4_1
    L4_2 = L7_1
    L1_2(L2_2, L3_2, L4_2)
  elseif "casino_richardshot" == A0_2 then
    L1_2 = L25_1
    L2_2 = 18000
    L1_2(L2_2)
    L1_2 = {}
    L2_2 = "ba_prop_battle_whiskey_bottle_s"
    L3_2 = "ex_p_ex_tumbler_01_empty"
    L4_2 = "ex_p_ex_tumbler_01_s"
    L1_2[1] = L2_2
    L1_2[2] = L3_2
    L1_2[3] = L4_2
    L7_1 = L1_2
    L1_2 = L47_1
    L2_2 = PlayerPedId
    L2_2 = L2_2()
    L3_2 = L4_1
    L4_2 = L7_1
    L1_2(L2_2, L3_2, L4_2)
  elseif "casino_macbethshot" == A0_2 then
    L1_2 = L25_1
    L2_2 = 18000
    L1_2(L2_2)
    L1_2 = {}
    L2_2 = "ba_prop_battle_whiskey_bottle_2_s"
    L3_2 = "ex_p_ex_tumbler_03_empty"
    L4_2 = "ex_p_ex_tumbler_03_s"
    L1_2[1] = L2_2
    L1_2[2] = L3_2
    L1_2[3] = L4_2
    L7_1 = L1_2
    L1_2 = L47_1
    L2_2 = PlayerPedId
    L2_2 = L2_2()
    L3_2 = L4_1
    L4_2 = L7_1
    L1_2(L2_2, L3_2, L4_2)
  elseif "casino_silverchamp" == A0_2 then
    L1_2 = L25_1
    L2_2 = 60000
    L1_2(L2_2)
    L1_2 = {}
    L2_2 = "Ba_Prop_Battle_Champ_Closed"
    L3_2 = "Ba_Prop_Battle_Champ_Open"
    L1_2[1] = L2_2
    L1_2[2] = L3_2
    L7_1 = L1_2
    L1_2 = L43_1
    L2_2 = PlayerPedId
    L2_2 = L2_2()
    L3_2 = L4_1
    L4_2 = L7_1
    L1_2(L2_2, L3_2, L4_2)
  elseif "casino_goldchamp" == A0_2 then
    L1_2 = L25_1
    L2_2 = 60000
    L1_2(L2_2)
    L1_2 = {}
    L2_2 = "ba_prop_battle_champ_closed_02"
    L3_2 = "ba_prop_battle_champ_open_02"
    L1_2[1] = L2_2
    L1_2[2] = L3_2
    L7_1 = L1_2
    L1_2 = L43_1
    L2_2 = PlayerPedId
    L2_2 = L2_2()
    L3_2 = L4_1
    L4_2 = L7_1
    L1_2(L2_2, L3_2, L4_2)
  elseif "casino_diamondchamp" == A0_2 then
    L1_2 = L25_1
    L2_2 = 60000
    L1_2(L2_2)
    L1_2 = {}
    L2_2 = "ba_prop_battle_champ_closed_03"
    L3_2 = "ba_prop_battle_champ_open_03"
    L1_2[1] = L2_2
    L1_2[2] = L3_2
    L7_1 = L1_2
    L1_2 = L43_1
    L2_2 = PlayerPedId
    L2_2 = L2_2()
    L3_2 = L4_1
    L4_2 = L7_1
    L1_2(L2_2, L3_2, L4_2)
  elseif "casino_burger" == A0_2 then
    L1_2 = L25_1
    L2_2 = 4000
    L1_2(L2_2)
    L1_2 = L50_1
    L2_2 = PlayerPedId
    L2_2 = L2_2()
    L3_2 = L4_1
    L4_2 = "prop_cs_burger_01"
    L5_2 = vector3
    L6_2 = 0.0
    L7_2 = 0.0
    L8_2 = 0.1
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2)
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  elseif "casino_coke" == A0_2 then
    L1_2 = L25_1
    L2_2 = 4000
    L1_2(L2_2)
    L1_2 = L50_1
    L2_2 = PlayerPedId
    L2_2 = L2_2()
    L3_2 = L4_1
    L4_2 = "prop_ecola_can"
    L5_2 = vector3
    L6_2 = -0.05
    L7_2 = 0.05
    L8_2 = 0.1
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2)
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  elseif "casino_sprite" == A0_2 then
    L1_2 = L25_1
    L2_2 = 4000
    L1_2(L2_2)
    L1_2 = L50_1
    L2_2 = PlayerPedId
    L2_2 = L2_2()
    L3_2 = L4_1
    L4_2 = "prop_ld_can_01"
    L5_2 = vector3
    L6_2 = -0.05
    L7_2 = 0.05
    L8_2 = 0.1
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2)
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  elseif "casino_luckypotion" == A0_2 then
    L1_2 = L25_1
    L2_2 = 4000
    L1_2(L2_2)
    L1_2 = L50_1
    L2_2 = PlayerPedId
    L2_2 = L2_2()
    L3_2 = L4_1
    L4_2 = "prop_weed_bottle"
    L5_2 = vector3
    L6_2 = -0.05
    L7_2 = -0.01
    L8_2 = 0.1
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2)
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  elseif "casino_psqs" == A0_2 then
    L1_2 = L25_1
    L2_2 = 4000
    L1_2(L2_2)
    L1_2 = L50_1
    L2_2 = PlayerPedId
    L2_2 = L2_2()
    L3_2 = L4_1
    L4_2 = "prop_candy_pqs"
    L5_2 = vector3
    L6_2 = -0.03
    L7_2 = 0.05
    L8_2 = 0.12
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2)
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  elseif "casino_ego_chaser" == A0_2 then
    L1_2 = L25_1
    L2_2 = 4000
    L1_2(L2_2)
    L1_2 = L50_1
    L2_2 = PlayerPedId
    L2_2 = L2_2()
    L3_2 = L4_1
    L4_2 = "prop_choc_ego"
    L5_2 = vector3
    L6_2 = 0.0
    L6_2 = -L6_2
    L7_2 = 0.0
    L8_2 = 0.1
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2)
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  elseif "casino_sandwitch" == A0_2 then
    L1_2 = L25_1
    L2_2 = 4000
    L1_2(L2_2)
    L1_2 = L50_1
    L2_2 = PlayerPedId
    L2_2 = L2_2()
    L3_2 = L4_1
    L4_2 = "prop_sandwich_01"
    L5_2 = vector3
    L6_2 = 0.0
    L7_2 = 0.0
    L8_2 = 0.1
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2)
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  elseif "casino_donut" == A0_2 then
    L1_2 = L25_1
    L2_2 = 4000
    L1_2(L2_2)
    L1_2 = L50_1
    L2_2 = PlayerPedId
    L2_2 = L2_2()
    L3_2 = L4_1
    L4_2 = "prop_amb_donut"
    L5_2 = vector3
    L6_2 = 0.0
    L7_2 = 0.0
    L8_2 = 0.1
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2)
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  elseif "casino_coffee" == A0_2 then
    L1_2 = L25_1
    L2_2 = 4000
    L1_2(L2_2)
    L1_2 = L50_1
    L2_2 = PlayerPedId
    L2_2 = L2_2()
    L3_2 = L4_1
    L4_2 = "p_amb_coffeecup_01"
    L5_2 = vector3
    L6_2 = -0.05
    L7_2 = 0.05
    L8_2 = 0.1
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2)
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  end
end
L55_1(L56_1, L57_1)
L55_1 = RegisterNetEvent
L56_1 = "DrinkingBar:StartWhiskeyAnimation"
L55_1(L56_1)
L55_1 = AddEventHandler
L56_1 = "DrinkingBar:StartWhiskeyAnimation"
function L57_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2
  L5_2 = IN_CASINO
  if not L5_2 then
    return
  end
  L5_2 = GetMyPlayerId
  L5_2 = L5_2()
  if A0_2 ~= L5_2 then
    L5_2 = L23_1
    L5_2()
    if 1 == A3_2 then
      L5_2 = L47_1
      L6_2 = nil
      L7_2 = A1_2
      L8_2 = A2_2
      L5_2(L6_2, L7_2, L8_2)
    elseif 2 == A3_2 then
      L5_2 = ScenePed_ForceUseForPlayer
      L6_2 = A0_2
      L7_2 = A4_2
      L5_2 = L5_2(L6_2, L7_2)
      if L5_2 then
        L6_2 = L45_1
        L7_2 = L5_2
        L8_2 = A1_2
        L9_2 = A2_2
        L6_2(L7_2, L8_2, L9_2)
      end
    elseif 4 == A3_2 then
      L5_2 = ScenePed_ForceUseForPlayer
      L6_2 = A0_2
      L7_2 = A4_2
      L5_2 = L5_2(L6_2, L7_2)
      if L5_2 then
        L6_2 = L48_1
        L7_2 = L5_2
        L8_2 = A1_2
        L9_2 = A2_2
        L6_2(L7_2, L8_2, L9_2)
      end
    end
  end
end
L55_1(L56_1, L57_1)
L55_1 = RegisterNetEvent
L56_1 = "DrinkingBar:StartPassAnimation"
L55_1(L56_1)
L55_1 = AddEventHandler
L56_1 = "DrinkingBar:StartPassAnimation"
function L57_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L5_2 = IN_CASINO
  if not L5_2 then
    return
  end
  L5_2 = GetMyPlayerId
  L5_2 = L5_2()
  if A0_2 ~= L5_2 then
    L5_2 = L23_1
    L5_2()
    L5_2 = ScenePed_ForceUseForPlayer
    L6_2 = A0_2
    L7_2 = A4_2
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      L6_2 = L50_1
      L7_2 = L5_2
      L8_2 = A1_2
      L9_2 = A2_2
      L10_2 = A3_2
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
  end
end
L55_1(L56_1, L57_1)
L55_1 = RegisterNetEvent
L56_1 = "DrinkingBar:UseBartender"
L55_1(L56_1)
L55_1 = AddEventHandler
L56_1 = "DrinkingBar:UseBartender"
function L57_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = IN_CASINO
  if not L2_2 then
    return
  end
  L2_2 = DrinkingBar_Bartenders
  L2_2 = L2_2[A1_2]
  if nil == L2_2 then
    return
  end
  L2_2 = DrinkingBar_Bartenders
  L2_2 = L2_2[A1_2]
  L2_2.beingUsed = true
  L2_2 = GetMyPlayerId
  L2_2 = L2_2()
  if A0_2 == L2_2 then
    L2_2 = SetInventoryBusy
    L3_2 = true
    L2_2(L3_2)
    L2_2 = L44_1
    L3_2 = DrinkingBar_Bartenders
    L3_2 = L3_2[A1_2]
    L2_2(L3_2)
  else
    L2_2 = DrinkingBar_Bartenders
    L2_2 = L2_2[A1_2]
    L2_2 = L2_2.animCoords
    L3_2 = DrinkingBar_Bartenders
    L3_2 = L3_2[A1_2]
    L3_2 = L3_2.animRot
    L4_2 = CreateSynchronizedScene
    L5_2 = L2_2.x
    L6_2 = L2_2.y
    L7_2 = L2_2.z
    L8_2 = L3_2.x
    L9_2 = L3_2.y
    L10_2 = L3_2.z
    L11_2 = 0
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L5_2 = TaskSynchronizedScene
    L6_2 = DrinkingBar_Bartenders
    L6_2 = L6_2[A1_2]
    L6_2 = L6_2.ped
    L7_2 = L4_2
    L8_2 = "anim@amb@nightclub@mini@drinking@bar@drink@idle_a"
    L9_2 = "idle_a_bartender"
    L10_2 = 2.0
    L11_2 = -1.5
    L12_2 = 13
    L13_2 = 16
    L14_2 = 2.0
    L15_2 = 0
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
    L5_2 = SetSynchronizedSceneLooped
    L6_2 = L4_2
    L7_2 = 1
    L5_2(L6_2, L7_2)
  end
end
L55_1(L56_1, L57_1)
L55_1 = RegisterNetEvent
L56_1 = "DrinkingBar:UseChair"
L55_1(L56_1)
L55_1 = AddEventHandler
L56_1 = "DrinkingBar:UseChair"
function L57_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = IN_CASINO
  if not L2_2 then
    return
  end
  L2_2 = DrinkingBarChairs
  L2_2 = L2_2[A1_2]
  if nil == L2_2 then
    return
  end
  L2_2 = L2_1
  L2_2[A0_2] = A1_2
  L2_2 = GetMyPlayerId
  L2_2 = L2_2()
  if A0_2 ~= L2_2 then
    return
  end
  L2_2 = "anim_casino_a@amb@casino@games@slots@"
  L3_2 = IsPedMale
  L4_2 = PlayerPedId
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L4_2()
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  if L3_2 then
    L3_2 = "male"
    if L3_2 then
      goto lbl_28
    end
  end
  L3_2 = "female"
  ::lbl_28::
  L2_2 = L2_2 .. L3_2
  L20_1 = L2_2
  L2_2 = RequestAnimDictAndWait
  L3_2 = L20_1
  L2_2(L3_2)
  L2_2 = 0
  L10_1 = L2_2
  L2_2 = true
  L9_1 = L2_2
  LAST_STARTED_GAME_TYPE = "drinkingbar"
  L2_2 = BlockPlayerInteraction
  L3_2 = 10000
  L2_2(L3_2)
  L2_2 = vector3
  L3_2 = DrinkingBarChairs
  L3_2 = L3_2[A1_2]
  L3_2 = L3_2.coords
  L3_2 = L3_2[1]
  L4_2 = DrinkingBarChairs
  L4_2 = L4_2[A1_2]
  L4_2 = L4_2.coords
  L4_2 = L4_2[2]
  L5_2 = DrinkingBarChairs
  L5_2 = L5_2[A1_2]
  L5_2 = L5_2.coords
  L5_2 = L5_2[3]
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = vector3
  L4_2 = DrinkingBarChairs
  L4_2 = L4_2[A1_2]
  L4_2 = L4_2.rotation
  L4_2 = L4_2[1]
  L5_2 = DrinkingBarChairs
  L5_2 = L5_2[A1_2]
  L5_2 = L5_2.rotation
  L5_2 = L5_2[2]
  L6_2 = DrinkingBarChairs
  L6_2 = L6_2[A1_2]
  L6_2 = L6_2.rotation
  L6_2 = L6_2[3]
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L13_1 = L3_2
  L3_2 = DrinkingBarChairs
  L3_2 = L3_2[A1_2]
  L3_2 = L3_2.heading
  L4_2 = vector3
  L5_2 = L2_2.x
  L5_2 = L5_2 - 0.01
  L6_2 = L2_2.y
  L6_2 = L6_2 - 0.01
  L7_2 = L2_2.z
  L7_2 = L7_2 + 0.05
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L12_1 = L4_2
  L4_2 = GetObjectOffsetFromCoords
  L5_2 = L12_1.x
  L6_2 = L12_1.y
  L7_2 = L12_1.z
  L8_2 = L3_2
  L9_2 = 0.0
  L9_2 = -L9_2
  L10_2 = 0.7
  L11_2 = 0.0
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L12_1 = L4_2
  L4_2 = getClosestAnimation
  L5_2 = GetPlayerPosition
  L5_2 = L5_2()
  L6_2 = L12_1
  L7_2 = L13_1
  L8_2 = L20_1
  L9_2 = {}
  L10_2 = "enter_left"
  L11_2 = "enter_left_short"
  L12_2 = "enter_right"
  L13_2 = "enter_right_short"
  L9_2[1] = L10_2
  L9_2[2] = L11_2
  L9_2[3] = L12_2
  L9_2[4] = L13_2
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L5_2 = PlaySynchronizedScene
  L6_2 = L12_1
  L7_2 = L13_1
  L8_2 = L20_1
  L9_2 = L4_2
  L10_2 = 0
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L6_2 = GAME_TIMER
  L7_2 = GetAnimDuration
  L8_2 = L20_1
  L9_2 = L4_2
  L7_2 = L7_2(L8_2, L9_2)
  L7_2 = L7_2 * 1000
  L6_2 = L6_2 + L7_2
  L11_1 = L6_2
  L6_2 = L52_1
  L6_2()
  L6_2 = CreateThread
  function L7_2()
    local L0_3, L1_3, L2_3
    L0_3 = WaitSynchronizedSceneToReachTime
    L1_3 = L5_2
    L2_3 = 0.85
    L0_3(L1_3, L2_3)
    L0_3 = L53_1
    L0_3()
  end
  L6_2(L7_2)
end
L55_1(L56_1, L57_1)
L55_1 = RegisterNetEvent
L56_1 = "DrinkingBar:Sessions"
L55_1(L56_1)
L55_1 = AddEventHandler
L56_1 = "DrinkingBar:Sessions"
function L57_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = DebugStart
  L3_2 = "DrinkingBar:Sessions"
  L2_2(L3_2)
  L2_2 = IN_CASINO
  if not L2_2 then
    return
  end
  if nil == A0_2 then
    L2_2 = {}
    A0_2 = L2_2
  end
  if nil == A1_2 then
    L2_2 = {}
    A1_2 = L2_2
  end
  L2_1 = A0_2
  L2_2 = pairs
  L3_2 = DrinkingBar_Bartenders
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L7_2.beingUsed = false
  end
  L2_2 = pairs
  L3_2 = A1_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = DrinkingBar_Bartenders
    L8_2 = L8_2[L7_2]
    if nil ~= L8_2 then
      L8_2 = DrinkingBar_Bartenders
      L8_2 = L8_2[L7_2]
      L8_2.beingUsed = true
    end
  end
end
L55_1(L56_1, L57_1)
L55_1 = RegisterNetEvent
L56_1 = "DrinkingBar:VoiceBartender"
L55_1(L56_1)
L55_1 = AddEventHandler
L56_1 = "DrinkingBar:VoiceBartender"
function L57_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = IN_CASINO
  if not L4_2 then
    return
  end
  L4_2 = DrinkingBar_Bartenders
  L4_2 = L4_2[A1_2]
  if nil == L4_2 then
    return
  end
  L4_2 = GetMyPlayerId
  L4_2 = L4_2()
  if A0_2 == L4_2 then
    return
  end
  L4_2 = PlayPedAmbientSpeechWithVoiceNative
  L5_2 = DrinkingBar_Bartenders
  L5_2 = L5_2[A1_2]
  L5_2 = L5_2.ped
  L6_2 = A2_2
  L7_2 = A3_2
  L8_2 = "SPEECH_PARAMS_FORCE_NORMAL"
  L9_2 = 0
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end
L55_1(L56_1, L57_1)
L55_1 = RegisterNetEvent
L56_1 = "DrinkingBar:UnlockBartender"
L55_1(L56_1)
L55_1 = AddEventHandler
L56_1 = "DrinkingBar:UnlockBartender"
function L57_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = IN_CASINO
  if not L2_2 then
    return
  end
  L2_2 = DrinkingBar_Bartenders
  L2_2 = L2_2[A1_2]
  if nil == L2_2 then
    return
  end
  L2_2 = DrinkingBar_Bartenders
  L2_2 = L2_2[A1_2]
  L2_2.beingUsed = false
  L2_2 = ResetAndByeBartender
  L3_2 = nil
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L55_1(L56_1, L57_1)
L55_1 = RegisterNetEvent
L56_1 = "DrinkingBar:UnlockChair"
L55_1(L56_1)
L55_1 = AddEventHandler
L56_1 = "DrinkingBar:UnlockChair"
function L57_1(A0_2, A1_2)
  local L2_2
  L2_2 = IN_CASINO
  if not L2_2 then
    return
  end
  L2_2 = L2_1
  L2_2[A0_2] = nil
end
L55_1(L56_1, L57_1)
function L55_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = DebugStart
  L1_2 = "DrinkingBar_Stop"
  L0_2(L1_2)
  L0_2 = pairs
  L1_2 = DrinkingBar_Bartenders
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = DeleteEntity
    L7_2 = L5_2.ped
    L6_2(L7_2)
  end
  L0_2 = L33_1
  L0_2()
  L0_2 = L21_1
  L0_2()
end
DrinkingBar_Stop = L55_1
function L55_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = Config
  L1_2 = L1_2.UseTarget
  if L1_2 then
    return
  end
  L1_2 = DebugStart
  L2_2 = "DrinkingBar_ShowNotifyUI"
  L1_2(L2_2)
  if 1 == A0_2 then
    L1_2 = DrinkingBar_GetClosestBartender
    L1_2 = L1_2()
    if nil == L1_2 then
      return
    end
    L2_2 = L1_2.beingUsed
    if L2_2 then
      L2_2 = InfoPanel_UpdateNotification
      L3_2 = Translation
      L3_2 = L3_2.Get
      L4_2 = "BAR_BARTENDER_BUSY"
      L3_2, L4_2 = L3_2(L4_2)
      L2_2(L3_2, L4_2)
      return
    end
    L2_2 = InfoPanel_UpdateNotification
    L3_2 = Translation
    L3_2 = L3_2.Get
    L4_2 = "BAR_PRESS_TO_ORDER"
    L3_2, L4_2 = L3_2(L4_2)
    L2_2(L3_2, L4_2)
  elseif 2 == A0_2 then
    L1_2 = DrinkingBar_GetClosestChair
    L1_2 = L1_2()
    if -1 ~= L1_2 then
      L2_2 = L51_1
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      if not L2_2 then
        L2_2 = InfoPanel_UpdateNotification
        L3_2 = Translation
        L3_2 = L3_2.Get
        L4_2 = "BAR_PRESS_TO_SIT_DOWN"
        L3_2, L4_2 = L3_2(L4_2)
        L2_2(L3_2, L4_2)
      else
        L2_2 = InfoPanel_UpdateNotification
        L3_2 = Translation
        L3_2 = L3_2.Get
        L4_2 = "BAR_CHAIR_USED"
        L3_2, L4_2 = L3_2(L4_2)
        L2_2(L3_2, L4_2)
      end
    else
      L2_2 = InfoPanel_UpdateNotification
      L3_2 = nil
      L2_2(L3_2)
    end
  end
end
DrinkingBar_ShowNotifyUI = L55_1
function L55_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = DebugStart
  L3_2 = "ResetAndByeBartender"
  L2_2(L3_2)
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  if A0_2 == L2_2 then
    L2_2 = TriggerServerEvent
    L3_2 = "DrinkingBar:LeaveBartender"
    L2_2(L3_2)
  end
  L2_2 = DrinkingBar_Bartenders
  L2_2 = L2_2[A1_2]
  L2_2 = L2_2.ped
  L3_2 = PlayPedAmbientSpeechWithVoiceNative
  L4_2 = L2_2
  L5_2 = "GENERIC_GOODBYE"
  L6_2 = "CAS_JOSEPHINE"
  L7_2 = "SPEECH_PARAMS_FORCE_NORMAL"
  L8_2 = 0
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = ClearPedTasks
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = ClearPedSecondaryTask
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = L32_1
  L4_2 = A1_2
  L3_2(L4_2)
end
ResetAndByeBartender = L55_1
function L55_1()
  local L0_2, L1_2, L2_2
  L0_2 = DebugStart
  L1_2 = "DrinkingBar_OnWalkAway"
  L0_2(L1_2)
  L0_2 = L4_1
  if -1 == L0_2 then
    return
  end
  L0_2 = CloseAllMenus
  L0_2()
  CAN_MOVE = true
  L0_2 = ScenePed_AnnounceEnd
  L0_2()
  L0_2 = ResetAndByeBartender
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = L4_1
  L0_2(L1_2, L2_2)
  L0_2 = L22_1
  L0_2()
  L0_2 = SetInventoryBusy
  L1_2 = false
  L0_2(L1_2)
end
DrinkingBar_OnWalkAway = L55_1
function L55_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = DebugStart
  L1_2 = "DrinkingBar_OnQuit"
  L0_2(L1_2)
  L0_2 = L9_1
  if L0_2 then
    L0_2 = L10_1
    if 1 == L0_2 then
      L0_2 = 0
      L10_1 = L0_2
      L0_2 = CloseAllMenus
      L0_2()
      L0_2 = BlockPlayerInteraction
      L1_2 = 1000
      L0_2(L1_2)
      L0_2 = RequestPlayerItems
      function L1_2()
        local L0_3, L1_3, L2_3
        L0_3 = InfoPanel_UpdateNotification
        L1_3 = L27_1
        L1_3 = L1_3()
        if L1_3 > 0 then
          L1_3 = Translation
          L1_3 = L1_3.Get
          L2_3 = "BAR_SIT_FUNCTIONS"
          L1_3 = L1_3(L2_3)
          if L1_3 then
            goto lbl_16
          end
        end
        L1_3 = Translation
        L1_3 = L1_3.Get
        L2_3 = "BAR_SIT_NOSNACKS"
        L1_3 = L1_3(L2_3)
        ::lbl_16::
        L0_3(L1_3)
      end
      L0_2(L1_2)
    else
      L0_2 = L10_1
      if 0 == L0_2 then
        L0_2 = true
        L14_1 = L0_2
        L0_2 = GAME_TIMER
        L11_1 = L0_2
        L0_2 = BlockPlayerInteraction
        L1_2 = 1000
        L0_2(L1_2)
        L0_2 = ForgotLastStartedGameType
        L1_2 = "drinkingbar"
        L0_2(L1_2)
      end
    end
    return
  end
  L0_2 = L4_1
  if -1 ~= L0_2 then
    L0_2 = L24_1
    L0_2 = L0_2()
    if L0_2 then
      return
    end
    L0_2 = L5_1
    if 2 == L0_2 then
      L0_2 = InfoPanel_UpdateNotification
      L1_2 = nil
      L0_2(L1_2)
      L0_2 = L25_1
      L1_2 = 7000
      L0_2(L1_2)
      L0_2 = L6_1
      if "casino_vodka" ~= L0_2 then
        L0_2 = L6_1
        if "casino_mountshot" ~= L0_2 then
          L0_2 = L6_1
          if "casino_richardshot" ~= L0_2 then
            L0_2 = L6_1
          end
        end
      end
      if "casino_macbethshot" == L0_2 then
        L0_2 = 1
        L5_1 = L0_2
        L0_2 = L48_1
        L1_2 = PlayerPedId
        L1_2 = L1_2()
        L2_2 = L4_1
        L3_2 = L7_1
        L0_2(L1_2, L2_2, L3_2)
      end
    else
      L0_2 = ForgotLastStartedGameType
      L1_2 = "drinkingbar"
      L0_2(L1_2)
      L0_2 = ScenePed_AnnounceEnd
      L0_2()
      L0_2 = CloseAllMenus
      L0_2()
      L0_2 = ResetAndByeBartender
      L1_2 = PlayerPedId
      L1_2 = L1_2()
      L2_2 = L4_1
      L0_2(L1_2, L2_2)
      CAN_MOVE = true
      L0_2 = L22_1
      L0_2()
      L0_2 = SetInventoryBusy
      L1_2 = false
      L0_2(L1_2)
    end
  end
end
DrinkingBar_OnQuit = L55_1
function L55_1()
  local L0_2, L1_2, L2_2
  L0_2 = DebugStart
  L1_2 = "DrinkingBar_ForcedLeave"
  L0_2(L1_2)
  L0_2 = CloseAllMenus
  L0_2()
  L0_2 = L4_1
  if -1 ~= L0_2 then
    L0_2 = ResetAndByeBartender
    L1_2 = PlayerPedId
    L1_2 = L1_2()
    L2_2 = L4_1
    L0_2(L1_2, L2_2)
  else
    L0_2 = TriggerServerEvent
    L1_2 = "DrinkingBar:LeaveBartender"
    L0_2(L1_2)
  end
  L0_2 = ForgotLastStartedGameType
  L1_2 = "drinkingbar"
  L0_2(L1_2)
  CAN_MOVE = true
  L0_2 = L22_1
  L0_2()
  L0_2 = SetInventoryBusy
  L1_2 = false
  L0_2(L1_2)
end
DrinkingBar_ForcedLeave = L55_1
function L55_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = pairs
  L2_2 = DrinkingBarChairs
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = vector3
    L8_2 = L6_2.coords
    L8_2 = L8_2[1]
    L9_2 = L6_2.coords
    L9_2 = L9_2[2]
    L10_2 = L6_2.coords
    L10_2 = L10_2[3]
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L7_2 = A0_2 - L7_2
    L7_2 = #L7_2
    L8_2 = 0.5
    if L7_2 < L8_2 then
      L7_2 = L51_1
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      if not L7_2 then
        L7_2 = Peds_SomeoneNearCoords
        L8_2 = L6_2.coords
        L7_2 = L7_2(L8_2)
        if not L7_2 then
          L7_2 = BlockPlayerInteraction
          L8_2 = 2000
          L7_2(L8_2)
          L7_2 = GetMyPedNetworkId
          L7_2 = L7_2()
          L8_2 = TriggerServerEvent
          L9_2 = "DrinkingBar:UseChair"
          L10_2 = L5_2
          L11_2 = L7_2
          L8_2(L9_2, L10_2, L11_2)
          L8_2 = InfoPanel_UpdateNotification
          L9_2 = nil
          L8_2(L9_2)
          break
        end
      end
      L7_2 = InfoPanel_UpdateNotification
      L8_2 = Translation
      L8_2 = L8_2.Get
      L9_2 = "BAR_CHAIR_USED"
      L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
      L7_2(L8_2, L9_2, L10_2, L11_2)
      break
    end
  end
end
Drinkingbar_UseChair = L55_1
function L55_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = DebugStart
  L2_2 = "DrinkingBar_OnInteraction"
  L1_2(L2_2)
  L1_2 = GetMyPedNetworkId
  L1_2 = L1_2()
  if not L1_2 then
    return
  end
  L2_2 = PLAYER_DRUNK_LEVEL
  L3_2 = 0.9
  if L2_2 >= L3_2 then
    L2_2 = DrinkingBar_GetClosestBartender
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L3_2 = L2_2.beingUsed
      if not L3_2 then
        L3_2 = PlayPedAmbientSpeechWithVoiceNative
        L4_2 = L2_2.ped
        L5_2 = "TOO_DRUNK"
        L6_2 = "btl_connie"
        L7_2 = "SPEECH_PARAMS_FORCE_NORMAL"
        L8_2 = 0
        L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
      end
    end
    return
  end
  L2_2 = L4_1
  if -1 ~= L2_2 then
    L2_2 = L5_1
    if 2 == L2_2 then
      L2_2 = L24_1
      L2_2 = L2_2()
      if not L2_2 then
        L2_2 = L6_1
        if "casino_vodka" ~= L2_2 then
          L2_2 = L6_1
          if "casino_mountshot" ~= L2_2 then
            L2_2 = L6_1
            if "casino_richardshot" ~= L2_2 then
              L2_2 = L6_1
              if "casino_macbethshot" ~= L2_2 then
                goto lbl_60
              end
            end
          end
        end
        L2_2 = L25_1
        L3_2 = 10000
        L2_2(L3_2)
        L2_2 = L45_1
        L3_2 = PlayerPedId
        L3_2 = L3_2()
        L4_2 = L4_1
        L5_2 = L7_1
        L2_2(L3_2, L4_2, L5_2)
      end
    end
    ::lbl_60::
    return
  end
  L2_2 = DrinkingBar_GetClosestBartender
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if nil ~= L2_2 then
    L3_2 = L2_2.beingUsed
    if L3_2 then
      L3_2 = InfoPanel_UpdateNotification
      L4_2 = Translation
      L4_2 = L4_2.Get
      L5_2 = "BAR_BARTENDER_BUSY"
      L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2(L5_2)
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
      return
    end
    L3_2 = BlockPlayerInteraction
    L4_2 = 2000
    L3_2(L4_2)
    L3_2 = TriggerServerEvent
    L4_2 = "DrinkingBar:UseBartender"
    L5_2 = L2_2.id
    L6_2 = L1_2
    L3_2(L4_2, L5_2, L6_2)
    return
  end
  L3_2 = L9_1
  if L3_2 then
    L3_2 = L54_1
    L3_2()
    return
  end
  L3_2 = DrinkingBar_GetClosestChair
  L3_2 = L3_2()
  if -1 ~= L3_2 then
    L4_2 = L51_1
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      L4_2 = Peds_SomeoneNearCoords
      L5_2 = DrinkingBarChairs
      L5_2 = L5_2[L3_2]
      L5_2 = L5_2.coords
      L4_2 = L4_2(L5_2)
      if not L4_2 then
        L4_2 = BlockPlayerInteraction
        L5_2 = 2000
        L4_2(L5_2)
        L4_2 = TriggerServerEvent
        L5_2 = "DrinkingBar:UseChair"
        L6_2 = L3_2
        L7_2 = L1_2
        L4_2(L5_2, L6_2, L7_2)
        L4_2 = InfoPanel_UpdateNotification
        L5_2 = nil
        L4_2(L5_2)
    end
    else
      L4_2 = InfoPanel_UpdateNotification
      L5_2 = Translation
      L5_2 = L5_2.Get
      L6_2 = "BAR_CHAIR_USED"
      L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
      L4_2(L5_2, L6_2, L7_2, L8_2)
    end
  end
end
DrinkingBar_OnInteraction = L55_1
function L55_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = DebugStart
  L2_2 = "DrinkingBar_GetClosestBartender"
  L1_2(L2_2)
  L1_2 = nil
  L2_2 = nil
  L3_2 = A0_2 or L3_2
  if not A0_2 then
    L3_2 = GetPlayerPosition
    L3_2 = L3_2()
  end
  L4_2 = pairs
  L5_2 = DrinkingBar_Bartenders
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L9_2.initialPos
    L10_2 = L3_2 - L10_2
    L10_2 = #L10_2
    if L10_2 < 1.0 then
      return L9_2
    end
  end
  L4_2 = nil
  return L4_2
end
DrinkingBar_GetClosestBartender = L55_1
function L55_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = DebugStart
  L1_2 = "DrinkingBar_GetClosestChair"
  L0_2(L1_2)
  L0_2 = pairs
  L1_2 = DrinkingBarChairs
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = GetPlayerPosition
    L6_2 = L6_2()
    L7_2 = vector3
    L8_2 = L5_2.coords
    L8_2 = L8_2[1]
    L9_2 = L5_2.coords
    L9_2 = L9_2[2]
    L10_2 = L5_2.coords
    L10_2 = L10_2[3]
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L6_2 = L6_2 - L7_2
    L6_2 = #L6_2
    L7_2 = 1.5
    if L6_2 < L7_2 then
      return L4_2
    end
  end
  L0_2 = -1
  return L0_2
end
DrinkingBar_GetClosestChair = L55_1
