local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1, L41_1, L42_1, L43_1, L44_1, L45_1, L46_1, L47_1, L48_1, L49_1, L50_1, L51_1, L52_1, L53_1, L54_1, L55_1, L56_1, L57_1, L58_1, L59_1, L60_1, L61_1, L62_1, L63_1, L64_1, L65_1, L66_1, L67_1, L68_1, L69_1, L70_1, L71_1, L72_1, L73_1, L74_1
L0_1 = {}
L1_1 = "anim_casino_b@amb@casino@games@blackjack@dealer"
L2_1 = "anim_casino_b@amb@casino@games@shared@dealer@"
L3_1 = "anim_casino_b@amb@casino@games@blackjack@player"
L4_1 = "anim_casino_b@amb@casino@games@shared@player@"
L5_1 = false
L6_1 = false
L7_1 = 1
L8_1 = 1
L9_1 = nil
L10_1 = false
L11_1 = nil
L12_1 = nil
L13_1 = false
L14_1 = -2
L15_1 = 50
L16_1 = 0
L17_1 = 0
L18_1 = 0
L19_1 = false
L20_1 = false
L21_1 = nil
L22_1 = {}
L23_1 = nil
L24_1 = 0
L25_1 = 0
L26_1 = 0
L27_1 = {}
L28_1 = nil
L29_1 = nil
L30_1 = nil
L31_1 = nil
L32_1 = nil
L33_1 = nil
function L34_1()
  local L0_2, L1_2
  L0_2 = DebugStart
  L1_2 = "Reset"
  L0_2(L1_2)
  L0_2 = {}
  L0_1 = L0_2
  L0_2 = false
  L5_1 = L0_2
  L0_2 = false
  L6_1 = L0_2
  L0_2 = 1
  L7_1 = L0_2
  L0_2 = 1
  L8_1 = L0_2
  L0_2 = nil
  L9_1 = L0_2
  L0_2 = false
  L10_1 = L0_2
  L0_2 = nil
  L11_1 = L0_2
  L0_2 = nil
  L12_1 = L0_2
  L0_2 = false
  L13_1 = L0_2
  L0_2 = -2
  L14_1 = L0_2
  L0_2 = 50
  L15_1 = L0_2
  L0_2 = 0
  L16_1 = L0_2
  L0_2 = 0
  L17_1 = L0_2
  L0_2 = 0
  L18_1 = L0_2
  L0_2 = false
  L19_1 = L0_2
  L0_2 = false
  L20_1 = L0_2
  L0_2 = nil
  L21_1 = L0_2
  L0_2 = {}
  L22_1 = L0_2
  L0_2 = nil
  L23_1 = L0_2
  L0_2 = {}
  L27_1 = L0_2
  L0_2 = nil
  L28_1 = L0_2
  L0_2 = nil
  L29_1 = L0_2
  L0_2 = nil
  L30_1 = L0_2
  L0_2 = nil
  L31_1 = L0_2
  L0_2 = nil
  L32_1 = L0_2
  L0_2 = nil
  L33_1 = L0_2
end
function L35_1()
  local L0_2, L1_2, L2_2
  L0_2 = DebugStart
  L1_2 = "AreMyCardsSplittable"
  L0_2(L1_2)
  L0_2 = L27_1
  if nil ~= L0_2 then
    L0_2 = L27_1.cards
    if nil ~= L0_2 then
      L0_2 = L27_1.cards
      L0_2 = L0_2[1]
      if nil ~= L0_2 then
        L0_2 = L27_1.cards
        L0_2 = L0_2[1]
        L0_2 = L0_2[1]
        if nil ~= L0_2 then
          L0_2 = L27_1.cards
          L0_2 = L0_2[1]
          L0_2 = L0_2[2]
          if nil ~= L0_2 then
            goto lbl_26
          end
        end
      end
    end
  end
  L0_2 = false
  do return L0_2 end
  ::lbl_26::
  L0_2 = GetPlayingCardValue
  L1_2 = L27_1.cards
  L1_2 = L1_2[1]
  L1_2 = L1_2[1]
  L1_2 = L1_2.value
  L0_2 = L0_2(L1_2)
  L1_2 = GetPlayingCardValue
  L2_2 = L27_1.cards
  L2_2 = L2_2[1]
  L2_2 = L2_2[2]
  L2_2 = L2_2.value
  L1_2 = L1_2(L2_2)
  L2_2 = L0_2 == L1_2 or L0_2 >= 10 and L1_2 >= 10
  return L2_2
end
function L36_1()
  local L0_2, L1_2, L2_2
  L0_2 = DebugStart
  L1_2 = "IsMyTurn"
  L0_2(L1_2)
  L0_2 = L27_1
  if nil ~= L0_2 then
    L0_2 = L27_1.handsDoneForStep
    if nil ~= L0_2 then
      goto lbl_12
    end
  end
  L0_2 = false
  do return L0_2 end
  ::lbl_12::
  L0_2 = L27_1.chair
  L1_2 = L8_1
  if L1_2 ~= L0_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = L27_1.handsDoneForStep
  L2_2 = L7_1
  L1_2 = L1_2[L2_2]
  if nil == L1_2 or true == L1_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = true
  return L2_2
end
function L37_1()
  local L0_2, L1_2
  L0_2 = DebugStart
  L1_2 = "HideTimeBars"
  L0_2(L1_2)
  L0_2 = L30_1
  if nil ~= L0_2 then
    L30_1.visible = false
  end
  L0_2 = L29_1
  if nil ~= L0_2 then
    L29_1.visible = false
  end
  L0_2 = L28_1
  if nil ~= L0_2 then
    L28_1.visible = false
  end
  L0_2 = L31_1
  if nil ~= L0_2 then
    L31_1.visible = false
  end
  L0_2 = L32_1
  if nil ~= L0_2 then
    L32_1.visible = false
  end
  L0_2 = L33_1
  if nil ~= L0_2 then
    L33_1.visible = false
  end
end
function L38_1()
  local L0_2, L1_2
  L0_2 = DebugStart
  L1_2 = "ResetSession"
  L0_2(L1_2)
  L0_2 = L37_1
  L0_2()
  L0_2 = ClearSceneEvent
  L0_2()
  L0_2 = nil
  L9_1 = L0_2
  L0_2 = false
  L10_1 = L0_2
  L0_2 = nil
  L21_1 = L0_2
  L0_2 = false
  L20_1 = L0_2
  L0_2 = nil
  L12_1 = L0_2
  L0_2 = false
  L13_1 = L0_2
  L0_2 = -2
  L14_1 = L0_2
  L0_2 = 50
  L15_1 = L0_2
  L0_2 = 0
  L16_1 = L0_2
  L0_2 = 0
  L17_1 = L0_2
  L0_2 = 0
  L18_1 = L0_2
  L0_2 = false
  L19_1 = L0_2
  L0_2 = {}
  L22_1 = L0_2
  L0_2 = {}
  L27_1 = L0_2
end
function L39_1()
  local L0_2, L1_2
  L0_2 = DebugStart
  L1_2 = "ResetProgress"
  L0_2(L1_2)
  L0_2 = L37_1
  L0_2()
  L0_2 = false
  L5_1 = L0_2
  L0_2 = false
  L6_1 = L0_2
  L0_2 = 1
  L7_1 = L0_2
  L0_2 = 50
  L15_1 = L0_2
  L0_2 = 0
  L17_1 = L0_2
  L0_2 = false
  L19_1 = L0_2
  L0_2 = nil
  L21_1 = L0_2
  L0_2 = 0
  L18_1 = L0_2
  L0_2 = {}
  L22_1 = L0_2
  L0_2 = {}
  L27_1 = L0_2
end
function L40_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = DebugStart
  L2_2 = "GetBlackjackBetOffset"
  L1_2(L2_2)
  if 1 == A0_2 then
    L1_2 = vector3
    L2_2 = 0.681
    L3_2 = 0.196
    L4_2 = 0.95
    return L1_2(L2_2, L3_2, L4_2)
  elseif 2 == A0_2 then
    L1_2 = vector3
    L2_2 = 0.278
    L3_2 = -0.219
    L4_2 = 0.95
    return L1_2(L2_2, L3_2, L4_2)
  elseif 3 == A0_2 then
    L1_2 = vector3
    L2_2 = -0.282
    L3_2 = -0.221
    L4_2 = 0.95
    return L1_2(L2_2, L3_2, L4_2)
  elseif 4 == A0_2 then
    L1_2 = vector3
    L2_2 = -0.6879
    L3_2 = 0.178
    L4_2 = 0.95
    return L1_2(L2_2, L3_2, L4_2)
  end
end
function L41_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = DebugStart
  L4_2 = "GetBlackjackCardOffsetPosition"
  L3_2(L4_2)
  if 2 ~= A2_2 then
    if 0 == A1_2 then
      if 0 == A0_2 then
        L3_2 = 0.5737
        L4_2 = 0.2376
        L5_2 = 0.948025
        return L3_2, L4_2, L5_2
      elseif 1 == A0_2 then
        L3_2 = 0.562975
        L4_2 = 0.2523
        L5_2 = 0.94875
        return L3_2, L4_2, L5_2
      elseif 2 == A0_2 then
        L3_2 = 0.553875
        L4_2 = 0.266325
        L5_2 = 0.94955
        return L3_2, L4_2, L5_2
      elseif 3 == A0_2 then
        L3_2 = 0.5459
        L4_2 = 0.282075
        L5_2 = 0.9501
        return L3_2, L4_2, L5_2
      elseif 4 == A0_2 then
        L3_2 = 0.536125
        L4_2 = 0.29645
        L5_2 = 0.95085
        return L3_2, L4_2, L5_2
      elseif 5 == A0_2 then
        L3_2 = 0.524975
        L4_2 = 0.30975
        L5_2 = 0.9516
        return L3_2, L4_2, L5_2
      elseif 6 == A0_2 then
        L3_2 = 0.515775
        L4_2 = 0.325325
        L5_2 = 0.95235
        return L3_2, L4_2, L5_2
      end
    elseif 1 == A1_2 then
      if 0 == A0_2 then
        L3_2 = 0.2325
        L4_2 = -0.1082
        L5_2 = 0.94805
        return L3_2, L4_2, L5_2
      elseif 1 == A0_2 then
        L3_2 = 0.23645
        L4_2 = -0.0918
        L5_2 = 0.949
        return L3_2, L4_2, L5_2
      elseif 2 == A0_2 then
        L3_2 = 0.2401
        L4_2 = -0.074475
        L5_2 = 0.950225
        return L3_2, L4_2, L5_2
      elseif 3 == A0_2 then
        L3_2 = 0.244625
        L4_2 = -0.057675
        L5_2 = 0.951125
        return L3_2, L4_2, L5_2
      elseif 4 == A0_2 then
        L3_2 = 0.249675
        L4_2 = -0.041475
        L5_2 = 0.95205
        return L3_2, L4_2, L5_2
      elseif 5 == A0_2 then
        L3_2 = 0.257575
        L4_2 = -0.0256
        L5_2 = 0.9532
        return L3_2, L4_2, L5_2
      elseif 6 == A0_2 then
        L3_2 = 0.2601
        L4_2 = -0.008175
        L5_2 = 0.954375
        return L3_2, L4_2, L5_2
      end
    elseif 2 == A1_2 then
      if 0 == A0_2 then
        L3_2 = -0.2359
        L4_2 = -0.1091
        L5_2 = 0.9483
        return L3_2, L4_2, L5_2
      elseif 1 == A0_2 then
        L3_2 = -0.221025
        L4_2 = -0.100675
        L5_2 = 0.949
        return L3_2, L4_2, L5_2
      elseif 2 == A0_2 then
        L3_2 = -0.20625
        L4_2 = -0.092875
        L5_2 = 0.949725
        return L3_2, L4_2, L5_2
      elseif 3 == A0_2 then
        L3_2 = -0.193225
        L4_2 = -0.07985
        L5_2 = 0.950325
        return L3_2, L4_2, L5_2
      elseif 4 == A0_2 then
        L3_2 = -0.1776
        L4_2 = -0.072
        L5_2 = 0.951025
        return L3_2, L4_2, L5_2
      elseif 5 == A0_2 then
        L3_2 = -0.165
        L4_2 = -0.060025
        L5_2 = 0.951825
        return L3_2, L4_2, L5_2
      elseif 6 == A0_2 then
        L3_2 = -0.14895
        L4_2 = -0.05155
        L5_2 = 0.95255
        return L3_2, L4_2, L5_2
      end
    elseif 3 == A1_2 then
      if 0 == A0_2 then
        L3_2 = -0.5765
        L4_2 = 0.2229
        L5_2 = 0.9482
        return L3_2, L4_2, L5_2
      elseif 1 == A0_2 then
        L3_2 = -0.558925
        L4_2 = 0.2197
        L5_2 = 0.949175
        return L3_2, L4_2, L5_2
      elseif 2 == A0_2 then
        L3_2 = -0.5425
        L4_2 = 0.213025
        L5_2 = 0.9499
        return L3_2, L4_2, L5_2
      elseif 3 == A0_2 then
        L3_2 = -0.525925
        L4_2 = 0.21105
        L5_2 = 0.95095
        return L3_2, L4_2, L5_2
      elseif 4 == A0_2 then
        L3_2 = -0.509475
        L4_2 = 0.20535
        L5_2 = 0.9519
        return L3_2, L4_2, L5_2
      elseif 5 == A0_2 then
        L3_2 = -0.491775
        L4_2 = 0.204075
        L5_2 = 0.952825
        return L3_2, L4_2, L5_2
      elseif 6 == A0_2 then
        L3_2 = -0.4752
        L4_2 = 0.197525
        L5_2 = 0.9543
        return L3_2, L4_2, L5_2
      end
    end
  elseif 0 == A1_2 then
    if 0 == A0_2 then
      L3_2 = 0.6083
      L4_2 = 0.3523
      L5_2 = 0.94795
      return L3_2, L4_2, L5_2
    elseif 1 == A0_2 then
      L3_2 = 0.598475
      L4_2 = 0.366475
      L5_2 = 0.948925
      return L3_2, L4_2, L5_2
    elseif 2 == A0_2 then
      L3_2 = 0.589525
      L4_2 = 0.3807
      L5_2 = 0.94975
      return L3_2, L4_2, L5_2
    elseif 3 == A0_2 then
      L3_2 = 0.58045
      L4_2 = 0.39435
      L5_2 = 0.950375
      return L3_2, L4_2, L5_2
    elseif 4 == A0_2 then
      L3_2 = 0.571975
      L4_2 = 0.4092
      L5_2 = 0.951075
      return L3_2, L4_2, L5_2
    elseif 5 == A0_2 then
      L3_2 = 0.5614
      L4_2 = 0.4237
      L5_2 = 0.951775
      return L3_2, L4_2, L5_2
    elseif 6 == A0_2 then
      L3_2 = 0.554325
      L4_2 = 0.4402
      L5_2 = 0.952525
      return L3_2, L4_2, L5_2
    end
  elseif 1 == A1_2 then
    if 0 == A0_2 then
      L3_2 = 0.3431
      L4_2 = -0.0527
      L5_2 = 0.94855
      return L3_2, L4_2, L5_2
    elseif 1 == A0_2 then
      L3_2 = 0.348575
      L4_2 = -0.0348
      L5_2 = 0.949425
      return L3_2, L4_2, L5_2
    elseif 2 == A0_2 then
      L3_2 = 0.35465
      L4_2 = -0.018825
      L5_2 = 0.9502
      return L3_2, L4_2, L5_2
    elseif 3 == A0_2 then
      L3_2 = 0.3581
      L4_2 = -0.001625
      L5_2 = 0.95115
      return L3_2, L4_2, L5_2
    elseif 4 == A0_2 then
      L3_2 = 0.36515
      L4_2 = 0.015275
      L5_2 = 0.952075
      return L3_2, L4_2, L5_2
    elseif 5 == A0_2 then
      L3_2 = 0.368525
      L4_2 = 0.032475
      L5_2 = 0.95335
      return L3_2, L4_2, L5_2
    elseif 6 == A0_2 then
      L3_2 = 0.373275
      L4_2 = 0.0506
      L5_2 = 0.9543
      return L3_2, L4_2, L5_2
    end
  elseif 2 == A1_2 then
    if 0 == A0_2 then
      L3_2 = -0.116
      L4_2 = -0.1501
      L5_2 = 0.947875
      return L3_2, L4_2, L5_2
    elseif 1 == A0_2 then
      L3_2 = -0.102725
      L4_2 = -0.13795
      L5_2 = 0.948525
      return L3_2, L4_2, L5_2
    elseif 2 == A0_2 then
      L3_2 = -0.08975
      L4_2 = -0.12665
      L5_2 = 0.949175
      return L3_2, L4_2, L5_2
    elseif 3 == A0_2 then
      L3_2 = -0.075025
      L4_2 = -0.1159
      L5_2 = 0.949875
      return L3_2, L4_2, L5_2
    elseif 4 == A0_2 then
      L3_2 = -0.0614
      L4_2 = -0.104775
      L5_2 = 0.9507
      return L3_2, L4_2, L5_2
    elseif 5 == A0_2 then
      L3_2 = -0.046275
      L4_2 = -0.095025
      L5_2 = 0.9516
      return L3_2, L4_2, L5_2
    elseif 6 == A0_2 then
      L3_2 = -0.031425
      L4_2 = -0.0846
      L5_2 = 0.952675
      return L3_2, L4_2, L5_2
    end
  elseif 3 == A1_2 then
    if 0 == A0_2 then
      L3_2 = -0.5205
      L4_2 = 0.1122
      L5_2 = 0.9478
      return L3_2, L4_2, L5_2
    elseif 1 == A0_2 then
      L3_2 = -0.503175
      L4_2 = 0.108525
      L5_2 = 0.94865
      return L3_2, L4_2, L5_2
    elseif 2 == A0_2 then
      L3_2 = -0.485125
      L4_2 = 0.10475
      L5_2 = 0.949175
      return L3_2, L4_2, L5_2
    elseif 3 == A0_2 then
      L3_2 = -0.468275
      L4_2 = 0.099175
      L5_2 = 0.94995
      return L3_2, L4_2, L5_2
    elseif 4 == A0_2 then
      L3_2 = -0.45155
      L4_2 = 0.09435
      L5_2 = 0.95085
      return L3_2, L4_2, L5_2
    elseif 5 == A0_2 then
      L3_2 = -0.434475
      L4_2 = 0.089725
      L5_2 = 0.95145
      return L3_2, L4_2, L5_2
    elseif 6 == A0_2 then
      L3_2 = -0.415875
      L4_2 = 0.0846
      L5_2 = 0.9523
      return L3_2, L4_2, L5_2
    end
  elseif 4 == A1_2 then
    L3_2 = 0.075 * A0_2
    L4_2 = 0.11
    L3_2 = L4_2 - L3_2
    L4_2 = 0.203
    L5_2 = 0.950025
    if A0_2 > 2 then
      L6_2 = A0_2 - 2
      L6_2 = 0.05 * L6_2
      L3_2 = L3_2 + L6_2
      L6_2 = A0_2 - 2
      L6_2 = 5.0E-4 * L6_2
      L5_2 = L5_2 + L6_2
    end
    L6_2 = L3_2
    L7_2 = L4_2
    L8_2 = L5_2
    return L6_2, L7_2, L8_2
  end
  L3_2 = 0.0
  L4_2 = 0.0
  L5_2 = 0.947875
  return L3_2, L4_2, L5_2
end
function L42_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = DebugStart
  L4_2 = "GetBlackjackCardOffsetRotation"
  L3_2(L4_2)
  L3_2 = not A2_2
  if 1 == L3_2 then
    if 0 == A1_2 then
      if 0 == A0_2 then
        L3_2 = vector3
        L4_2 = 0.0
        L5_2 = 0.0
        L6_2 = 69.12
        return L3_2(L4_2, L5_2, L6_2)
      elseif 1 == A0_2 then
        L3_2 = vector3
        L4_2 = 0.0
        L5_2 = 0.0
        L6_2 = 67.8
        return L3_2(L4_2, L5_2, L6_2)
      elseif 2 == A0_2 then
        L3_2 = vector3
        L4_2 = 0.0
        L5_2 = 0.0
        L6_2 = 66.6
        return L3_2(L4_2, L5_2, L6_2)
      elseif 3 == A0_2 then
        L3_2 = vector3
        L4_2 = 0.0
        L5_2 = 0.0
        L6_2 = 70.44
        return L3_2(L4_2, L5_2, L6_2)
      elseif 4 == A0_2 then
        L3_2 = vector3
        L4_2 = 0.0
        L5_2 = 0.0
        L6_2 = 70.84
        return L3_2(L4_2, L5_2, L6_2)
      elseif 5 == A0_2 then
        L3_2 = vector3
        L4_2 = 0.0
        L5_2 = 0.0
        L6_2 = 67.88
        return L3_2(L4_2, L5_2, L6_2)
      elseif 6 == A0_2 then
        L3_2 = vector3
        L4_2 = 0.0
        L5_2 = 0.0
        L6_2 = 69.56
        return L3_2(L4_2, L5_2, L6_2)
      end
    elseif 1 == A0_2 then
      if 0 == A0_2 then
        L3_2 = vector3
        L4_2 = 0.0
        L5_2 = 0.0
        L6_2 = 22.11
        return L3_2(L4_2, L5_2, L6_2)
      elseif 1 == A0_2 then
        L3_2 = vector3
        L4_2 = 0.0
        L5_2 = 0.0
        L6_2 = 22.32
        return L3_2(L4_2, L5_2, L6_2)
      elseif 2 == A0_2 then
        L3_2 = vector3
        L4_2 = 0.0
        L5_2 = 0.0
        L6_2 = 20.8
        return L3_2(L4_2, L5_2, L6_2)
      elseif 3 == A0_2 then
        L3_2 = vector3
        L4_2 = 0.0
        L5_2 = 0.0
        L6_2 = 19.8
        return L3_2(L4_2, L5_2, L6_2)
      elseif 4 == A0_2 then
        L3_2 = vector3
        L4_2 = 0.0
        L5_2 = 0.0
        L6_2 = 19.44
        return L3_2(L4_2, L5_2, L6_2)
      elseif 5 == A0_2 then
        L3_2 = vector3
        L4_2 = 0.0
        L5_2 = 0.0
        L6_2 = 26.28
        return L3_2(L4_2, L5_2, L6_2)
      elseif 6 == A0_2 then
        L3_2 = vector3
        L4_2 = 0.0
        L5_2 = 0.0
        L6_2 = 22.68
        return L3_2(L4_2, L5_2, L6_2)
      end
    elseif 2 == A0_2 then
      if 0 == A0_2 then
        L3_2 = vector3
        L4_2 = 0.0
        L5_2 = 0.0
        L6_2 = -21.43
        return L3_2(L4_2, L5_2, L6_2)
      elseif 1 == A0_2 then
        L3_2 = vector3
        L4_2 = 0.0
        L5_2 = 0.0
        L6_2 = -20.16
        return L3_2(L4_2, L5_2, L6_2)
      elseif 2 == A0_2 then
        L3_2 = vector3
        L4_2 = 0.0
        L5_2 = 0.0
        L6_2 = -16.92
        return L3_2(L4_2, L5_2, L6_2)
      elseif 3 == A0_2 then
        L3_2 = vector3
        L4_2 = 0.0
        L5_2 = 0.0
        L6_2 = -23.4
        return L3_2(L4_2, L5_2, L6_2)
      elseif 4 == A0_2 then
        L3_2 = vector3
        L4_2 = 0.0
        L5_2 = 0.0
        L6_2 = -21.24
        return L3_2(L4_2, L5_2, L6_2)
      elseif 5 == A0_2 then
        L3_2 = vector3
        L4_2 = 0.0
        L5_2 = 0.0
        L6_2 = -23.76
        return L3_2(L4_2, L5_2, L6_2)
      elseif 6 == A0_2 then
        L3_2 = vector3
        L4_2 = 0.0
        L5_2 = 0.0
        L6_2 = -19.44
        return L3_2(L4_2, L5_2, L6_2)
      end
    elseif 3 == A0_2 then
      if 0 == A0_2 then
        L3_2 = vector3
        L4_2 = 0.0
        L5_2 = 0.0
        L6_2 = -67.03
        return L3_2(L4_2, L5_2, L6_2)
      elseif 1 == A0_2 then
        L3_2 = vector3
        L4_2 = 0.0
        L5_2 = 0.0
        L6_2 = -69.12
        return L3_2(L4_2, L5_2, L6_2)
      elseif 2 == A0_2 then
        L3_2 = vector3
        L4_2 = 0.0
        L5_2 = 0.0
        L6_2 = -64.44
        return L3_2(L4_2, L5_2, L6_2)
      elseif 3 == A0_2 then
        L3_2 = vector3
        L4_2 = 0.0
        L5_2 = 0.0
        L6_2 = -67.68
        return L3_2(L4_2, L5_2, L6_2)
      elseif 4 == A0_2 then
        L3_2 = vector3
        L4_2 = 0.0
        L5_2 = 0.0
        L6_2 = -63.72
        return L3_2(L4_2, L5_2, L6_2)
      elseif 5 == A0_2 then
        L3_2 = vector3
        L4_2 = 0.0
        L5_2 = 0.0
        L6_2 = -68.4
        return L3_2(L4_2, L5_2, L6_2)
      elseif 6 == A0_2 then
        L3_2 = vector3
        L4_2 = 0.0
        L5_2 = 0.0
        L6_2 = -64.44
        return L3_2(L4_2, L5_2, L6_2)
      end
    end
  elseif 0 == A1_2 then
    if 0 == A0_2 then
      L3_2 = vector3
      L4_2 = 0.0
      L5_2 = 0.0
      L6_2 = 68.57
      return L3_2(L4_2, L5_2, L6_2)
    elseif 1 == A0_2 then
      L3_2 = vector3
      L4_2 = 0.0
      L5_2 = 0.0
      L6_2 = 67.52
      return L3_2(L4_2, L5_2, L6_2)
    elseif 2 == A0_2 then
      L3_2 = vector3
      L4_2 = 0.0
      L5_2 = 0.0
      L6_2 = 67.76
      return L3_2(L4_2, L5_2, L6_2)
    elseif 3 == A0_2 then
      L3_2 = vector3
      L4_2 = 0.0
      L5_2 = 0.0
      L6_2 = 67.04
      return L3_2(L4_2, L5_2, L6_2)
    elseif 4 == A0_2 then
      L3_2 = vector3
      L4_2 = 0.0
      L5_2 = 0.0
      L6_2 = 68.84
      return L3_2(L4_2, L5_2, L6_2)
    elseif 5 == A0_2 then
      L3_2 = vector3
      L4_2 = 0.0
      L5_2 = 0.0
      L6_2 = 65.96
      return L3_2(L4_2, L5_2, L6_2)
    elseif 6 == A0_2 then
      L3_2 = vector3
      L4_2 = 0.0
      L5_2 = 0.0
      L6_2 = 67.76
      return L3_2(L4_2, L5_2, L6_2)
    end
  elseif 1 == A1_2 then
    if 0 == A0_2 then
      L3_2 = vector3
      L4_2 = 0.0
      L5_2 = 0.0
      L6_2 = 22.11
      return L3_2(L4_2, L5_2, L6_2)
    elseif 1 == A0_2 then
      L3_2 = vector3
      L4_2 = 0.0
      L5_2 = 0.0
      L6_2 = 22
      return L3_2(L4_2, L5_2, L6_2)
    elseif 2 == A0_2 then
      L3_2 = vector3
      L4_2 = 0.0
      L5_2 = 0.0
      L6_2 = 24.44
      return L3_2(L4_2, L5_2, L6_2)
    elseif 3 == A0_2 then
      L3_2 = vector3
      L4_2 = 0.0
      L5_2 = 0.0
      L6_2 = 21.08
      return L3_2(L4_2, L5_2, L6_2)
    elseif 4 == A0_2 then
      L3_2 = vector3
      L4_2 = 0.0
      L5_2 = 0.0
      L6_2 = 25.96
      return L3_2(L4_2, L5_2, L6_2)
    elseif 5 == A0_2 then
      L3_2 = vector3
      L4_2 = 0.0
      L5_2 = 0.0
      L6_2 = 26.16
      return L3_2(L4_2, L5_2, L6_2)
    elseif 6 == A0_2 then
      L3_2 = vector3
      L4_2 = 0.0
      L5_2 = 0.0
      L6_2 = 28.76
      return L3_2(L4_2, L5_2, L6_2)
    end
  elseif 2 == A1_2 then
    if 0 == A0_2 then
      L3_2 = vector3
      L4_2 = 0.0
      L5_2 = 0.0
      L6_2 = -14.04
      return L3_2(L4_2, L5_2, L6_2)
    elseif 1 == A0_2 then
      L3_2 = vector3
      L4_2 = 0.0
      L5_2 = 0.0
      L6_2 = -15.48
      return L3_2(L4_2, L5_2, L6_2)
    elseif 2 == A0_2 then
      L3_2 = vector3
      L4_2 = 0.0
      L5_2 = 0.0
      L6_2 = -16.56
      return L3_2(L4_2, L5_2, L6_2)
    elseif 3 == A0_2 then
      L3_2 = vector3
      L4_2 = 0.0
      L5_2 = 0.0
      L6_2 = -15.84
      return L3_2(L4_2, L5_2, L6_2)
    elseif 4 == A0_2 then
      L3_2 = vector3
      L4_2 = 0.0
      L5_2 = 0.0
      L6_2 = -16.92
      return L3_2(L4_2, L5_2, L6_2)
    elseif 5 == A0_2 then
      L3_2 = vector3
      L4_2 = 0.0
      L5_2 = 0.0
      L6_2 = -14.4
      return L3_2(L4_2, L5_2, L6_2)
    elseif 6 == A0_2 then
      L3_2 = vector3
      L4_2 = 0.0
      L5_2 = 0.0
      L6_2 = -14.28
      return L3_2(L4_2, L5_2, L6_2)
    end
  elseif 3 == A1_2 then
    if 0 == A0_2 then
      L3_2 = vector3
      L4_2 = 0.0
      L5_2 = 0.0
      L6_2 = -67.03
      return L3_2(L4_2, L5_2, L6_2)
    elseif 1 == A0_2 then
      L3_2 = vector3
      L4_2 = 0.0
      L5_2 = 0.0
      L6_2 = -67.6
      return L3_2(L4_2, L5_2, L6_2)
    elseif 2 == A0_2 then
      L3_2 = vector3
      L4_2 = 0.0
      L5_2 = 0.0
      L6_2 = -69.4
      return L3_2(L4_2, L5_2, L6_2)
    elseif 3 == A0_2 then
      L3_2 = vector3
      L4_2 = 0.0
      L5_2 = 0.0
      L6_2 = -69.04
      return L3_2(L4_2, L5_2, L6_2)
    elseif 4 == A0_2 then
      L3_2 = vector3
      L4_2 = 0.0
      L5_2 = 0.0
      L6_2 = -68.68
      return L3_2(L4_2, L5_2, L6_2)
    elseif 5 == A0_2 then
      L3_2 = vector3
      L4_2 = 0.0
      L5_2 = 0.0
      L6_2 = -66.16
      return L3_2(L4_2, L5_2, L6_2)
    elseif 6 == A0_2 then
      L3_2 = vector3
      L4_2 = 0.0
      L5_2 = 0.0
      L6_2 = -63.28
      return L3_2(L4_2, L5_2, L6_2)
    end
  end
  L3_2 = vector3
  L4_2 = 0.0
  L5_2 = 0.0
  L6_2 = 0.0
  return L3_2(L4_2, L5_2, L6_2)
end
function L43_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = DebugStart
  L1_2 = "PlayRandomIdleAnimation"
  L0_2(L1_2)
  L0_2 = L12_1
  if nil == L0_2 then
    return
  end
  L0_2 = nil
  L1_2 = IsPedMale
  L2_2 = PlayerPedId
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2 = L2_2()
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  if L1_2 then
    L1_2 = "idle_var_"
    L2_2 = string
    L2_2 = L2_2.format
    L3_2 = "%02d"
    L4_2 = RandomNumber
    L5_2 = 1
    L6_2 = 13
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2)
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    L1_2 = L1_2 .. L2_2
    L0_2 = L1_2
  else
    L1_2 = "female_idle_var_"
    L2_2 = string
    L2_2 = L2_2.format
    L3_2 = "%02d"
    L4_2 = RandomNumber
    L5_2 = 1
    L6_2 = 8
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2)
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    L1_2 = L1_2 .. L2_2
    L0_2 = L1_2
  end
  L1_2 = RequestAnimDictAndWait
  L2_2 = L4_1
  L1_2(L2_2)
  L1_2 = PlaySynchronizedScene
  L2_2 = L12_1.coords
  L3_2 = L12_1.rotation
  L4_2 = L4_1
  L5_2 = L0_2
  L6_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = CreateNewSceneEndEvent
  L3_2 = L1_2
  L4_2 = 0.95
  L5_2 = L43_1
  L6_2 = 8000
  L7_2 = 500
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
function L44_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = DebugStart
  L2_2 = "GetBlackjackInstanceFromCoords"
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
function L45_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = DebugStart
  L2_2 = "CreateDealerValuesBar"
  L1_2(L2_2)
  L1_2 = L20_1
  if L1_2 then
    L1_2 = L9_1
    if nil ~= L1_2 then
      L1_2 = L9_1.chairCards
      if nil ~= L1_2 then
        L1_2 = L9_1.chairCards
        L1_2 = L1_2.dealer
        if nil ~= L1_2 then
          L1_2 = L9_1.chairCards
          L1_2 = L1_2.dealer
          L1_2 = L1_2[1]
          if nil ~= L1_2 then
            goto lbl_23
          end
        end
      end
    end
  end
  do return end
  ::lbl_23::
  L1_2 = L9_1.chairCards
  L1_2 = L1_2.dealer
  L1_2 = L1_2[1]
  L2_2 = 0
  L3_2 = #L1_2
  if not A0_2 then
    if 1 == L3_2 then
      L2_2 = "-"
    elseif 2 == L3_2 then
      L4_2 = BlackJackCardScores
      L5_2 = L1_2[2]
      L5_2 = L5_2.value
      L4_2 = L4_2[L5_2]
      L5_2 = "+"
      L4_2 = L4_2 .. L5_2
      L2_2 = L4_2
    elseif L3_2 > 0 then
      L4_2 = BlackjackGetScoreFromCards
      L5_2 = L1_2
      L4_2 = L4_2(L5_2)
      L2_2 = L4_2
    end
  else
    L4_2 = BlackjackGetScoreFromCards
    L5_2 = L1_2
    L4_2 = L4_2(L5_2)
    L2_2 = L4_2
  end
  if "blackjack" == L2_2 then
    L2_2 = 21
  end
  L4_2 = L32_1
  if nil ~= L4_2 then
    L32_1.visible = true
    L4_2 = L32_1.setText
    L5_2 = tostring
    L6_2 = L2_2
    L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  else
    L4_2 = TimerBar
    L4_2 = L4_2.Create
    L5_2 = TimerBar
    L5_2 = L5_2.Text
    L6_2 = Translation
    L6_2 = L6_2.Get
    L7_2 = "BLACKJACK_BAR_DEALERS_HAND"
    L6_2 = L6_2(L7_2)
    L7_2 = tostring
    L8_2 = L2_2
    L7_2, L8_2, L9_2 = L7_2(L8_2)
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
    L32_1 = L4_2
    L4_2 = L32_1.setTextColor
    L5_2 = {}
    L6_2 = 255
    L7_2 = 255
    L8_2 = 255
    L9_2 = 255
    L5_2[1] = L6_2
    L5_2[2] = L7_2
    L5_2[3] = L8_2
    L5_2[4] = L9_2
    L4_2(L5_2)
  end
  L4_2 = tonumber
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  if L4_2 and L2_2 > 21 then
    L4_2 = L32_1.setTextColor
    L5_2 = {}
    L6_2 = 255
    L7_2 = 20
    L8_2 = 20
    L9_2 = 255
    L5_2[1] = L6_2
    L5_2[2] = L7_2
    L5_2[3] = L8_2
    L5_2[4] = L9_2
    L4_2(L5_2)
  else
    L4_2 = L32_1.setTextColor
    L5_2 = {}
    L6_2 = 255
    L7_2 = 255
    L8_2 = 255
    L9_2 = 255
    L5_2[1] = L6_2
    L5_2[2] = L7_2
    L5_2[3] = L8_2
    L5_2[4] = L9_2
    L4_2(L5_2)
  end
end
function L46_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = DebugStart
  L1_2 = "CreateTotalBettingsBar"
  L0_2(L1_2)
  L0_2 = L20_1
  if false ~= L0_2 then
    L0_2 = L27_1
    if nil ~= L0_2 then
      L0_2 = L27_1.bettings
      if nil ~= L0_2 then
        L0_2 = L27_1.bettings
        L0_2 = L0_2[1]
        if nil ~= L0_2 then
          goto lbl_22
        end
      end
    end
  end
  L0_2 = L33_1
  if nil ~= L0_2 then
    L33_1.visible = false
  end
  do return end
  ::lbl_22::
  L0_2 = 0
  L1_2 = 1
  L2_2 = 2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L27_1.bettings
    L5_2 = L5_2[L4_2]
    if nil ~= L5_2 then
      L5_2 = L27_1.bettings
      L5_2 = L5_2[L4_2]
      L0_2 = L0_2 + L5_2
    end
  end
  L1_2 = L33_1
  if nil ~= L1_2 then
    L33_1.visible = true
    L1_2 = L33_1.setText
    L2_2 = CommaValue
    L3_2 = L0_2
    L2_2, L3_2, L4_2, L5_2, L6_2 = L2_2(L3_2)
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  else
    L1_2 = TimerBar
    L1_2 = L1_2.Create
    L2_2 = TimerBar
    L2_2 = L2_2.Text
    L3_2 = Translation
    L3_2 = L3_2.Get
    L4_2 = "ROULETTE_TIMERBAR_BET"
    L3_2 = L3_2(L4_2)
    L4_2 = CommaValue
    L5_2 = L0_2
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L33_1 = L1_2
    L1_2 = L33_1.setTextColor
    L2_2 = {}
    L3_2 = 255
    L4_2 = 255
    L5_2 = 255
    L6_2 = 255
    L2_2[1] = L3_2
    L2_2[2] = L4_2
    L2_2[3] = L5_2
    L2_2[4] = L6_2
    L1_2(L2_2)
  end
  L1_2 = L30_1
  if L1_2 then
    L30_1.visible = false
  end
end
function L47_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = DebugStart
  L2_2 = "CreateHandValuesBar"
  L1_2(L2_2)
  L1_2 = L20_1
  if L1_2 then
    L1_2 = L27_1
    if nil ~= L1_2 then
      goto lbl_11
    end
  end
  do return end
  ::lbl_11::
  if not A0_2 then
    A0_2 = 7
  end
  L1_2 = {}
  L2_2 = 0
  L3_2 = 0
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L2_2 = 1
  L3_2 = 2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L27_1.cards
    L6_2 = L6_2[L5_2]
    if L6_2 then
      L6_2 = {}
      L7_2 = 1
      L8_2 = L27_1.cards
      L8_2 = L8_2[L5_2]
      L8_2 = #L8_2
      L9_2 = 1
      for L10_2 = L7_2, L8_2, L9_2 do
        if L10_2 <= A0_2 then
          L11_2 = table
          L11_2 = L11_2.insert
          L12_2 = L6_2
          L13_2 = L27_1.cards
          L13_2 = L13_2[L5_2]
          L13_2 = L13_2[L10_2]
          L11_2(L12_2, L13_2)
        end
      end
      if nil ~= L6_2 then
        L7_2 = #L6_2
        if L7_2 > 0 then
          L7_2 = BlackjackGetScoreFromCards
          L8_2 = L6_2
          L7_2 = L7_2(L8_2)
          L1_2[L5_2] = L7_2
          L7_2 = L1_2[L5_2]
          if "blackjack" == L7_2 then
            L1_2[L5_2] = 21
          end
        end
      end
    end
  end
  L2_2 = L1_2[2]
  if 0 ~= L2_2 then
    L2_2 = L1_2[1]
    L3_2 = " / "
    L4_2 = L1_2[2]
    L2_2 = L2_2 .. L3_2 .. L4_2
    if L2_2 then
      goto lbl_69
    end
  end
  L2_2 = L1_2[1]
  ::lbl_69::
  L3_2 = L31_1
  if nil ~= L3_2 then
    L31_1.visible = true
    L3_2 = L31_1.setText
    L4_2 = tostring
    L5_2 = L2_2
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L4_2(L5_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  else
    L3_2 = TimerBar
    L3_2 = L3_2.Create
    L4_2 = TimerBar
    L4_2 = L4_2.Text
    L5_2 = Translation
    L5_2 = L5_2.Get
    L6_2 = "BLACKJACK_BAR_MY_HAND"
    L5_2 = L5_2(L6_2)
    L6_2 = tostring
    L7_2 = L2_2
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L6_2(L7_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    L31_1 = L3_2
    L3_2 = L31_1.setTextColor
    L4_2 = {}
    L5_2 = 255
    L6_2 = 255
    L7_2 = 255
    L8_2 = 255
    L4_2[1] = L5_2
    L4_2[2] = L6_2
    L4_2[3] = L7_2
    L4_2[4] = L8_2
    L3_2(L4_2)
  end
  L3_2 = L27_1.isBusted
  if true == L3_2 then
    L3_2 = L31_1.setTextColor
    L4_2 = {}
    L5_2 = 255
    L6_2 = 20
    L7_2 = 20
    L8_2 = 255
    L4_2[1] = L5_2
    L4_2[2] = L6_2
    L4_2[3] = L7_2
    L4_2[4] = L8_2
    L3_2(L4_2)
  else
    L3_2 = L31_1.setTextColor
    L4_2 = {}
    L5_2 = 255
    L6_2 = 255
    L7_2 = 255
    L8_2 = 255
    L4_2[1] = L5_2
    L4_2[2] = L6_2
    L4_2[3] = L7_2
    L4_2[4] = L8_2
    L3_2(L4_2)
  end
end
function L48_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = DebugStart
  L1_2 = "CreateActualBettingBar"
  L0_2(L1_2)
  L0_2 = L20_1
  if not L0_2 then
    return
  end
  L0_2 = L30_1
  if nil ~= L0_2 then
    L30_1.visible = true
    L0_2 = L30_1.setTitle
    L1_2 = Translation
    L1_2 = L1_2.Get
    L2_2 = "ROULETTE_TIMERBAR_BET"
    L1_2, L2_2, L3_2, L4_2, L5_2 = L1_2(L2_2)
    L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
    L0_2 = L30_1.setText
    L1_2 = CommaValue
    L2_2 = L17_1
    L1_2, L2_2, L3_2, L4_2, L5_2 = L1_2(L2_2)
    L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
  else
    L0_2 = TimerBar
    L0_2 = L0_2.Create
    L1_2 = TimerBar
    L1_2 = L1_2.Text
    L2_2 = Translation
    L2_2 = L2_2.Get
    L3_2 = "ROULETTE_TIMERBAR_BET"
    L2_2 = L2_2(L3_2)
    L3_2 = CommaValue
    L4_2 = L17_1
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
    L30_1 = L0_2
    L0_2 = L30_1.setTextColor
    L1_2 = {}
    L2_2 = 238
    L3_2 = 232
    L4_2 = 170
    L5_2 = 255
    L1_2[1] = L2_2
    L1_2[2] = L3_2
    L1_2[3] = L4_2
    L1_2[4] = L5_2
    L0_2(L1_2)
    L0_2 = L30_1.setTitleColor
    L1_2 = {}
    L2_2 = 238
    L3_2 = 232
    L4_2 = 170
    L5_2 = 255
    L1_2[1] = L2_2
    L1_2[2] = L3_2
    L1_2[3] = L4_2
    L1_2[4] = L5_2
    L0_2(L1_2)
  end
end
function L49_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = DebugStart
  L1_2 = "CreateWaitingPlayersBar"
  L0_2(L1_2)
  L0_2 = L20_1
  if not L0_2 then
    return
  end
  L0_2 = L28_1
  if nil ~= L0_2 then
    L28_1.visible = true
  else
    L0_2 = TimerBar
    L0_2 = L0_2.Create
    L1_2 = TimerBar
    L1_2 = L1_2.Checkpoint
    L2_2 = Translation
    L2_2 = L2_2.Get
    L3_2 = "UI_WAITING_FOR_EVERYONE"
    L2_2 = L2_2(L3_2)
    L3_2 = 4
    L0_2 = L0_2(L1_2, L2_2, L3_2)
    L28_1 = L0_2
  end
  L0_2 = L9_1
  if nil ~= L0_2 then
    L0_2 = L9_1.syncedState
    if nil ~= L0_2 then
      L0_2 = 0
      L1_2 = 1
      L2_2 = 4
      L3_2 = 1
      for L4_2 = L1_2, L2_2, L3_2 do
        L5_2 = L9_1.syncedState
        L5_2 = L5_2.chairs
        L5_2 = L5_2[L4_2]
        if nil ~= L5_2 and -1 ~= L5_2 then
          L0_2 = L0_2 + 1
        end
      end
      L1_2 = L28_1.changeNumCheckpoints
      L2_2 = L0_2
      L1_2(L2_2)
    end
  end
end
function L50_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = DebugStart
  L2_2 = "TimerBarChairReady"
  L1_2(L2_2)
  L1_2 = L20_1
  if L1_2 then
    L1_2 = L28_1
    if nil ~= L1_2 then
      L1_2 = L22_1
      if nil ~= L1_2 then
        goto lbl_14
      end
    end
  end
  do return end
  ::lbl_14::
  L1_2 = L22_1
  L1_2 = L1_2[A0_2]
  if nil ~= L1_2 then
    return
  end
  L1_2 = L22_1
  L1_2[A0_2] = true
  L1_2 = 1
  L2_2 = 1
  L3_2 = 4
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L22_1
    L6_2 = L6_2[L5_2]
    if true == L6_2 then
      L6_2 = L28_1.setCheckpointState
      L7_2 = L1_2
      L8_2 = true
      L6_2(L7_2, L8_2)
      L1_2 = L1_2 + 1
    end
  end
end
function L51_1()
  local L0_2, L1_2
  L0_2 = DebugStart
  L1_2 = "TimerBarResetChairsReady"
  L0_2(L1_2)
  L0_2 = {}
  L22_1 = L0_2
  L0_2 = L28_1
  if nil ~= L0_2 then
    L0_2 = L28_1.uncheckAll
    L0_2()
  end
end
function L52_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = DebugStart
  L1_2 = "CreateTimeleftBar"
  L0_2(L1_2)
  L0_2 = L20_1
  if not L0_2 then
    return
  end
  L0_2 = L29_1
  if nil ~= L0_2 then
    L29_1.visible = true
  else
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
    L29_1 = L0_2
    L0_2 = L29_1.setTextColor
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
    L0_2 = L29_1.setHighlightColor
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
  L0_2 = L9_1
  if nil ~= L0_2 then
    L0_2 = L9_1.syncedState
    if nil ~= L0_2 then
      L0_2 = L9_1.syncedState
      L0_2 = L0_2.timeleft
      if nil ~= L0_2 then
        L0_2 = L29_1.setText
        L1_2 = "00:"
        L2_2 = string
        L2_2 = L2_2.format
        L3_2 = "%02d"
        L4_2 = L9_1.syncedState
        L4_2 = L4_2.timeleft
        L2_2 = L2_2(L3_2, L4_2)
        L1_2 = L1_2 .. L2_2
        L0_2(L1_2)
      end
    end
  end
end
function L53_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = DebugStart
  L1_2 = "RedrawInstructionalButtons"
  L0_2(L1_2)
  L0_2 = L13_1
  if L0_2 then
    L0_2 = CAN_INTERACT
    if L0_2 then
      goto lbl_13
    end
  end
  L0_2 = PushNUIInstructionalButtons
  L1_2 = nil
  L0_2(L1_2)
  ::lbl_13::
  L0_2 = {}
  L1_2 = L16_1
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
    L1_2 = L20_1
    if L1_2 then
      L1_2 = L9_1
      if nil ~= L1_2 then
        L1_2 = L9_1.isBusy
        if false == L1_2 then
          L1_2 = L14_1
          if 1 == L1_2 then
            L1_2 = L19_1
            if 1 ~= L1_2 then
              L1_2 = table
              L1_2 = L1_2.insert
              L2_2 = L0_2
              L3_2 = {}
              L3_2.key = 201
              L4_2 = Translation
              L4_2 = L4_2.Get
              L5_2 = "ROULETTE_BTN_PLACE_BET"
              L4_2 = L4_2(L5_2)
              L3_2.title = L4_2
              L1_2(L2_2, L3_2)
              L1_2 = L14_1
              L2_2 = L19_1
              if L1_2 == L2_2 then
                goto lbl_215
              end
              L1_2 = L23_1.MaximumBet
              L2_2 = table
              L2_2 = L2_2.insert
              L3_2 = L0_2
              L4_2 = {}
              L5_2 = GameplayKeys
              L5_2 = L5_2.TableGamesMaxBet
              L4_2.key = L5_2
              L5_2 = L17_1
              if L1_2 <= L5_2 then
                L5_2 = Translation
                L5_2 = L5_2.Get
                L6_2 = "ROULETTE_BTN_MIN_BET"
                L5_2 = L5_2(L6_2)
                if L5_2 then
                  goto lbl_120
                end
              end
              L5_2 = Translation
              L5_2 = L5_2.Get
              L6_2 = "ROULETTE_BTN_MAX_BET"
              L5_2 = L5_2(L6_2)
              ::lbl_120::
              L4_2.title = L5_2
              L2_2(L3_2, L4_2)
              L2_2 = table
              L2_2 = L2_2.insert
              L3_2 = L0_2
              L4_2 = {}
              L4_2.key = 187
              L5_2 = Translation
              L5_2 = L5_2.Get
              L6_2 = "ROULETTE_BTN_ADJUST_BET"
              L5_2 = L5_2(L6_2)
              L4_2.title = L5_2
              L4_2.extraKey = 188
              L2_2(L3_2, L4_2)
          end
          else
            L1_2 = L14_1
            if 3 == L1_2 then
              L1_2 = L36_1
              L1_2 = L1_2()
              if L1_2 then
                L1_2 = table
                L1_2 = L1_2.insert
                L2_2 = L0_2
                L3_2 = {}
                L3_2.key = 201
                L4_2 = Translation
                L4_2 = L4_2.Get
                L5_2 = "BLACKJACK_UI_HIT"
                L4_2 = L4_2(L5_2)
                L3_2.title = L4_2
                L1_2(L2_2, L3_2)
                L1_2 = table
                L1_2 = L1_2.insert
                L2_2 = L0_2
                L3_2 = {}
                L4_2 = GameplayKeys
                L4_2 = L4_2.TableGamesMaxBet
                L3_2.key = L4_2
                L4_2 = Translation
                L4_2 = L4_2.Get
                L5_2 = "BLACKJACK_UI_DOUBLEDOWN"
                L4_2 = L4_2(L5_2)
                L3_2.title = L4_2
                L1_2(L2_2, L3_2)
                L1_2 = table
                L1_2 = L1_2.insert
                L2_2 = L0_2
                L3_2 = {}
                L3_2.key = 203
                L4_2 = Translation
                L4_2 = L4_2.Get
                L5_2 = "BLACKJACK_UI_STAND"
                L4_2 = L4_2(L5_2)
                L3_2.title = L4_2
                L1_2(L2_2, L3_2)
                L1_2 = L5_1
                if false == L1_2 then
                  L1_2 = L6_1
                  if true == L1_2 then
                    L1_2 = table
                    L1_2 = L1_2.insert
                    L2_2 = L0_2
                    L3_2 = {}
                    L3_2.key = 139
                    L4_2 = Translation
                    L4_2 = L4_2.Get
                    L5_2 = "BLACKJACK_UI_SPLIT"
                    L4_2 = L4_2(L5_2)
                    L3_2.title = L4_2
                    L1_2(L2_2, L3_2)
                  end
                end
            end
            else
              L1_2 = L14_1
              if L1_2 >= 3 then
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
                L1_2(L2_2, L3_2)
              end
            end
          end
        end
      end
    end
    ::lbl_215::
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
  end
  L1_2 = PushNUIInstructionalButtons
  L2_2 = L0_2
  L1_2(L2_2)
end
function L54_1()
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
    while true do
      L0_3 = CAN_INTERACT
      if L0_3 then
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
    L0_3 = L53_1
    L0_3()
  end
  L2_2 = "TempHideInstructionalButtons"
  L0_2(L1_2, L2_2)
end
function L55_1(A0_2, A1_2, A2_2)
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
  L8_2 = ""
  L9_2 = ""
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
      L2_4 = A1_2
      L2_4 = #L2_4
      L1_4 = L1_4 + L2_4
      if 0 == L1_4 then
        L2_4 = A0_4
        L1_4 = A0_4.AddEmpty
        L1_4(L2_4)
      end
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
function L56_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
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
  L16_1 = A0_2
  L2_2 = L16_1
  if 1 == L2_2 then
    L2_2 = Translation
    L2_2 = L2_2.Get
    L3_2 = "BLACKJACK_RULES_PART1"
    L2_2 = L2_2(L3_2)
    L1_2[1] = L2_2
    L1_2[2] = ""
  else
    L2_2 = L16_1
    if 2 == L2_2 then
      L2_2 = Translation
      L2_2 = L2_2.Get
      L3_2 = "BLACKJACK_RULES_PART2"
      L2_2 = L2_2(L3_2)
      L1_2[1] = L2_2
      L1_2[2] = ""
    else
      L2_2 = L16_1
      if 3 == L2_2 then
        L2_2 = Translation
        L2_2 = L2_2.Get
        L3_2 = "BLACKJACK_RULES_PART3"
        L2_2 = L2_2(L3_2)
        L1_2[1] = L2_2
        L1_2[2] = ""
      else
        L2_2 = L16_1
        if 4 == L2_2 then
          L2_2 = Translation
          L2_2 = L2_2.Get
          L3_2 = "BLACKJACK_RULES_PART4"
          L2_2 = L2_2(L3_2)
          L1_2[1] = L2_2
          L1_2[2] = ""
        else
          L2_2 = L16_1
          if 5 == L2_2 then
            L2_2 = Translation
            L2_2 = L2_2.Get
            L3_2 = "BLACKJACK_RULES_PART5"
            L2_2 = L2_2(L3_2)
            L1_2[1] = L2_2
            L1_2[2] = ""
          else
            L2_2 = L16_1
            if 6 == L2_2 then
              L2_2 = Translation
              L2_2 = L2_2.Get
              L3_2 = "BLACKJACK_RULES_PART6"
              L2_2 = L2_2(L3_2)
              L1_2[1] = L2_2
              L1_2[2] = ""
            else
              L2_2 = L16_1
              if 7 == L2_2 then
                L2_2 = Translation
                L2_2 = L2_2.Get
                L3_2 = "BLACKJACK_RULES_PART7"
                L2_2 = L2_2(L3_2)
                L1_2[1] = L2_2
                L1_2[2] = ""
              else
                L2_2 = L16_1
                if 8 == L2_2 then
                  L2_2 = Translation
                  L2_2 = L2_2.Get
                  L3_2 = "BLACKJACK_RULES_PART8"
                  L2_2 = L2_2(L3_2)
                  L1_2[1] = L2_2
                  L1_2[2] = ""
                else
                  L2_2 = L16_1
                  if 9 == L2_2 then
                    L2_2 = Translation
                    L2_2 = L2_2.Get
                    L3_2 = "ROULETTE_RULES_BET_LIMITS"
                    L2_2 = L2_2(L3_2)
                    L3_2 = [[


- ]]
                    L4_2 = Translation
                    L4_2 = L4_2.Get
                    L5_2 = "ROULETTE_RULES_MINIMUM"
                    L4_2 = L4_2(L5_2)
                    L5_2 = ": "
                    L6_2 = CommaValue
                    L7_2 = L23_1.MinimumBet
                    L6_2 = L6_2(L7_2)
                    L7_2 = " "
                    L8_2 = Translation
                    L8_2 = L8_2.Get
                    L9_2 = "ROULETTE_RULES_CHIPS"
                    L8_2 = L8_2(L9_2)
                    L9_2 = [[

- ]]
                    L10_2 = Translation
                    L10_2 = L10_2.Get
                    L11_2 = "ROULETTE_NUMBERS_MAXIMUM"
                    L10_2 = L10_2(L11_2)
                    L11_2 = ": "
                    L12_2 = CommaValue
                    L13_2 = L23_1.MaximumBet
                    L12_2 = L12_2(L13_2)
                    L13_2 = " "
                    L14_2 = Translation
                    L14_2 = L14_2.Get
                    L15_2 = "ROULETTE_RULES_CHIPS"
                    L14_2 = L14_2(L15_2)
                    L15_2 = "\n"
                    L2_2 = L2_2 .. L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2
                    L1_2[1] = L2_2
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  L2_2 = InfoPanel_Update
  L3_2 = L23_1.Banner
  L4_2 = L23_1.Banner
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
  L3_2 = L16_1
  L4_2 = " / 9"
  L3_2 = L3_2 .. L4_2
  L2_2.CustomCounter = L3_2
  L3_2 = L53_1
  L3_2()
end
function L57_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = DebugStart
  L1_2 = "HandleUIButtons"
  L0_2(L1_2)
  L0_2 = L9_1
  if nil ~= L0_2 then
    L0_2 = L13_1
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
  L2_2 = 201
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = DisableControlAction
  L1_2 = 0
  L2_2 = 203
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
  L0_2 = DisableESCThisFrame
  L0_2()
  L0_2 = DisableControlAction
  L1_2 = 2
  L2_2 = 139
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = GAME_INFO_PANEL
  if nil ~= L0_2 then
    L0_2 = L16_1
    if 0 ~= L0_2 then
      L0_2 = IsDisabledControlJustPressed
      L1_2 = 0
      L2_2 = 189
      L0_2 = L0_2(L1_2, L2_2)
      if L0_2 then
        L0_2 = L16_1
        if L0_2 > 1 then
          L0_2 = L56_1
          L1_2 = L16_1
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
        L0_2 = L16_1
        if L0_2 < 9 then
          L0_2 = L56_1
          L1_2 = L16_1
          L1_2 = L1_2 + 1
          L0_2(L1_2)
          L0_2 = PlaySound
          L1_2 = "DLC_VW_BET_UP"
          L2_2 = "dlc_vw_table_games_frontend_sounds"
          L0_2(L1_2, L2_2)
        end
      end
    end
    return
  end
  L0_2 = IsDisabledControlJustPressed
  L1_2 = 0
  L2_2 = 188
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 then
    L0_2 = L14_1
    if 1 == L0_2 then
      L0_2 = L19_1
      L1_2 = L14_1
      if L0_2 ~= L1_2 then
        L0_2 = L23_1.MaximumBet
        L1_2 = GetHigherBetStepOf
        L2_2 = L17_1
        L1_2 = L1_2(L2_2)
        L17_1 = L1_2
        L1_2 = math
        L1_2 = L1_2.round
        L2_2 = L17_1
        L2_2 = L2_2 / 5
        L1_2 = L1_2(L2_2)
        L1_2 = L1_2 * 5
        L17_1 = L1_2
        L1_2 = L17_1
        if L0_2 < L1_2 then
          L17_1 = L0_2
        end
        L1_2 = L17_1
        L2_2 = PLAYER_CHIPS
        if L1_2 > L2_2 then
          L1_2 = PLAYER_CHIPS
          L17_1 = L1_2
        end
        L1_2 = L30_1
        if nil ~= L1_2 then
          L1_2 = L30_1.setText
          L2_2 = CommaValue
          L3_2 = L17_1
          L2_2, L3_2, L4_2, L5_2, L6_2, L7_2 = L2_2(L3_2)
          L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
        end
        L1_2 = L17_1
        if L1_2 ~= L0_2 then
          L1_2 = L17_1
          L2_2 = PLAYER_CHIPS
          if L1_2 ~= L2_2 then
            goto lbl_169
          end
        end
        L1_2 = PlaySound
        L2_2 = "DLC_VW_ERROR_MAX"
        L3_2 = "dlc_vw_table_games_frontend_sounds"
        L1_2(L2_2, L3_2)
        goto lbl_173
        ::lbl_169::
        L1_2 = PlaySound
        L2_2 = "DLC_VW_BET_UP"
        L3_2 = "dlc_vw_table_games_frontend_sounds"
        L1_2(L2_2, L3_2)
      end
    end
  end
  ::lbl_173::
  L0_2 = IsDisabledControlJustPressed
  L1_2 = 0
  L2_2 = 187
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 then
    L0_2 = L14_1
    if 1 == L0_2 then
      L0_2 = L19_1
      L1_2 = L14_1
      if L0_2 ~= L1_2 then
        L0_2 = L23_1.MinimumBet
        L1_2 = GetLowerBetStepOf
        L2_2 = L17_1
        L1_2 = L1_2(L2_2)
        L17_1 = L1_2
        L1_2 = math
        L1_2 = L1_2.round
        L2_2 = L17_1
        L2_2 = L2_2 / 5
        L1_2 = L1_2(L2_2)
        L1_2 = L1_2 * 5
        L17_1 = L1_2
        L1_2 = L17_1
        if L0_2 > L1_2 then
          L17_1 = L0_2
        end
        L1_2 = L17_1
        if L1_2 < 0 then
          L17_1 = L0_2
        end
        L1_2 = L30_1
        if nil ~= L1_2 then
          L1_2 = L30_1.setText
          L2_2 = CommaValue
          L3_2 = L17_1
          L2_2, L3_2, L4_2, L5_2, L6_2, L7_2 = L2_2(L3_2)
          L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
        end
        L1_2 = L17_1
        if L1_2 == L0_2 then
          L1_2 = PlaySound
          L2_2 = "DLC_VW_ERROR_MAX"
          L3_2 = "dlc_vw_table_games_frontend_sounds"
          L1_2(L2_2, L3_2)
        else
          L1_2 = PlaySound
          L2_2 = "DLC_VW_BET_UP"
          L3_2 = "dlc_vw_table_games_frontend_sounds"
          L1_2(L2_2, L3_2)
        end
      end
    end
  end
  L0_2 = IsDisabledControlJustPressed
  L1_2 = 0
  L2_2 = 139
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 then
    L0_2 = CAN_INTERACT
    if L0_2 then
      L0_2 = L9_1
      if nil ~= L0_2 then
        L0_2 = L9_1.pedFocusedOnChair
        L1_2 = L27_1.chair
        if L0_2 == L1_2 then
          L0_2 = L14_1
          if 3 == L0_2 then
            L0_2 = L5_1
            if false == L0_2 then
              L0_2 = L6_1
              if true == L0_2 then
                L0_2 = BlockPlayerInteraction
                L1_2 = 500
                L0_2(L1_2)
                L0_2 = TriggerServerEvent
                L1_2 = "Blackjack:Split"
                L0_2(L1_2)
                L0_2 = L54_1
                L0_2()
              end
            end
          end
        end
      end
    end
  end
  L0_2 = IsDisabledControlJustPressed
  L1_2 = 0
  L2_2 = 203
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 then
    L0_2 = CAN_INTERACT
    if L0_2 then
      L0_2 = L9_1
      if nil ~= L0_2 then
        L0_2 = L14_1
        if 3 == L0_2 then
          L0_2 = L9_1.pedFocusedOnChair
          L1_2 = L27_1.chair
          if L0_2 == L1_2 then
            L0_2 = BlockPlayerInteraction
            L1_2 = 500
            L0_2(L1_2)
            L0_2 = TriggerServerEvent
            L1_2 = "Blackjack:Stand"
            L2_2 = L7_1
            L0_2(L1_2, L2_2)
            L0_2 = GetRandomItem
            L1_2 = {}
            L2_2 = "decline_card_001"
            L3_2 = "decline_card_alt1"
            L4_2 = "decline_card_alt2"
            L1_2[1] = L2_2
            L1_2[2] = L3_2
            L1_2[3] = L4_2
            L0_2 = L0_2(L1_2)
            L1_2 = PlaySynchronizedScene
            L2_2 = L12_1.coords
            L3_2 = L12_1.rotation
            L4_2 = L3_1
            L5_2 = L0_2
            L6_2 = false
            L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
            L1_2 = L54_1
            L1_2()
          end
        end
      end
    end
  end
  L0_2 = IsDisabledControlJustPressed
  L1_2 = 0
  L2_2 = 201
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 then
    L0_2 = CAN_INTERACT
    if L0_2 then
      L0_2 = L9_1
      if nil ~= L0_2 then
        L0_2 = L9_1.isBusy
        if false == L0_2 then
          L0_2 = L14_1
          if 1 == L0_2 then
            L0_2 = L19_1
            if 1 ~= L0_2 then
              L0_2 = L23_1.MinimumBet
              L1_2 = L23_1.MaximumBet
              L2_2 = L17_1
              if L0_2 > L2_2 then
                return
              end
              L2_2 = L17_1
              if L1_2 < L2_2 then
                return
              end
              L2_2 = L17_1
              L3_2 = PLAYER_CHIPS
              if L2_2 > L3_2 then
                return
              end
              L2_2 = BlockPlayerInteraction
              L3_2 = 500
              L2_2(L3_2)
              L2_2 = TriggerServerEvent
              L3_2 = "Blackjack:PlaceInitialBet"
              L4_2 = L17_1
              L2_2(L3_2, L4_2)
              L2_2 = L17_1
              L24_1 = L2_2
              L2_2 = L54_1
              L2_2()
          end
          else
            L0_2 = L14_1
            if 3 == L0_2 then
              L0_2 = L9_1.pedFocusedOnChair
              L1_2 = L27_1.chair
              if L0_2 == L1_2 then
                L0_2 = BlockPlayerInteraction
                L1_2 = 500
                L0_2(L1_2)
                L0_2 = TriggerServerEvent
                L1_2 = "Blackjack:AskCard"
                L2_2 = L7_1
                L0_2(L1_2, L2_2)
                L0_2 = GetRandomItem
                L1_2 = {}
                L2_2 = "request_card"
                L3_2 = "request_card_alt1"
                L4_2 = "request_card_alt2"
                L1_2[1] = L2_2
                L1_2[2] = L3_2
                L1_2[3] = L4_2
                L0_2 = L0_2(L1_2)
                L1_2 = RequestAnimDictAndWait
                L2_2 = L3_1
                L1_2(L2_2)
                L1_2 = PlaySynchronizedScene
                L2_2 = L12_1.coords
                L3_2 = L12_1.rotation
                L4_2 = L3_1
                L5_2 = L0_2
                L6_2 = false
                L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
                L2_2 = CreateNewSceneEndEvent
                L3_2 = L1_2
                L4_2 = 0.9
                L5_2 = L43_1
                L6_2 = 3000
                L7_2 = 500
                L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
                L2_2 = L54_1
                L2_2()
              end
            end
          end
        end
      end
    end
  end
  L0_2 = IsDisabledControlJustPressed
  L1_2 = 0
  L2_2 = GameplayKeys
  L2_2 = L2_2.TableGamesMaxBet
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 then
    L0_2 = L16_1
    if 0 == L0_2 then
      L0_2 = L14_1
      if 1 ~= L0_2 then
        L0_2 = L14_1
        if 3 ~= L0_2 then
          goto lbl_459
        end
      end
      L0_2 = L9_1
      if nil ~= L0_2 then
        L0_2 = L14_1
        if 1 == L0_2 then
          L0_2 = L19_1
          if 1 ~= L0_2 then
            L0_2 = L23_1.MinimumBet
            L1_2 = L23_1.MaximumBet
            L2_2 = PLAYER_CHIPS
            if L1_2 > L2_2 then
              L1_2 = PLAYER_CHIPS
            end
            L2_2 = L17_1
            if L2_2 ~= L1_2 then
              L17_1 = L1_2
            else
              L17_1 = L0_2
            end
            L2_2 = L30_1
            if nil ~= L2_2 then
              L2_2 = L30_1.setText
              L3_2 = CommaValue
              L4_2 = L17_1
              L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2(L4_2)
              L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
            end
            L2_2 = PlaySound
            L3_2 = "DLC_VW_BET_MAX"
            L4_2 = "dlc_vw_table_games_frontend_sounds"
            L5_2 = true
            L2_2(L3_2, L4_2, L5_2)
        end
        else
          L0_2 = L14_1
          if 3 == L0_2 then
            L0_2 = L9_1.pedFocusedOnChair
            L1_2 = L27_1.chair
            if L0_2 == L1_2 then
              L0_2 = TriggerServerEvent
              L1_2 = "Blackjack:DoubleDown"
              L2_2 = L7_1
              L0_2(L1_2, L2_2)
              L0_2 = L54_1
              L0_2()
            end
          end
        end
        L0_2 = L53_1
        L0_2()
      end
    end
  end
  ::lbl_459::
  L0_2 = IsDisabledControlJustPressed
  L1_2 = 0
  L2_2 = 207
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 then
    L0_2 = L16_1
    if 0 == L0_2 then
      L0_2 = L14_1
      if L0_2 >= 0 then
        L0_2 = L9_1
        if nil ~= L0_2 then
          L0_2 = L9_1.changeCameraMode
          L1_2 = 1
          L2_2 = L12_1.currentChair
          L0_2(L1_2, L2_2)
        end
      end
    end
  end
  L0_2 = IsDisabledControlJustPressed
  L1_2 = 0
  L2_2 = 208
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 then
    L0_2 = L16_1
    if 0 == L0_2 then
      L0_2 = L14_1
      if L0_2 >= 0 then
        L0_2 = L9_1
        if nil ~= L0_2 then
          L0_2 = L9_1.changeCameraMode
          L1_2 = -1
          L2_2 = L12_1.currentChair
          L0_2(L1_2, L2_2)
        end
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
      goto lbl_528
    end
  end
  L0_2 = L16_1
  if 0 == L0_2 then
    L0_2 = Config
    L0_2 = L0_2.EnableGuidebookIntegration
    if L0_2 then
      L0_2 = TriggerServerEvent
      L1_2 = "GuideBook:ShowItToMe"
      L2_2 = "casinoblackjack"
      L0_2(L1_2, L2_2)
    else
      L0_2 = L56_1
      L1_2 = 1
      L0_2(L1_2)
      L0_2 = PlaySound
      L1_2 = "DLC_VW_RULES"
      L2_2 = "dlc_vw_table_games_frontend_sounds"
      L0_2(L1_2, L2_2)
    end
  end
  ::lbl_528::
end
function L58_1()
  local L0_2, L1_2, L2_2
  L0_2 = DebugStart
  L1_2 = "StartSittingThread"
  L0_2(L1_2)
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = nil
    while true do
      L1_3 = L13_1
      if not L1_3 then
        break
      end
      L1_3 = L9_1
      if nil == L1_3 then
        break
      end
      L1_3 = IsGamepadControl
      L1_3 = L1_3()
      if L1_3 ~= L0_3 then
        L1_3 = L53_1
        L1_3()
        L1_3 = IsGamepadControl
        L1_3 = L1_3()
        L0_3 = L1_3
      end
      L1_3 = L57_1
      L1_3()
      L1_3 = L16_1
      if L1_3 > 0 then
        L1_3 = GAME_INFO_PANEL
        if nil == L1_3 then
          L1_3 = 0
          L16_1 = L1_3
          L1_3 = RageUI
          L1_3.WaitForClose = false
          L1_3 = L53_1
          L1_3()
        end
      end
      L1_3 = L20_1
      if not L1_3 then
        L1_3 = InfoPanel_DrawNotificationThisFrame
        L2_3 = Translation
        L2_3 = L2_3.Get
        L3_3 = "CASINO_NOT_IN_ROUND"
        L2_3, L3_3 = L2_3(L3_3)
        L1_3(L2_3, L3_3)
      end
      L1_3 = Wait
      L2_3 = 0
      L1_3(L2_3)
    end
  end
  L2_2 = "sitting thread"
  L0_2(L1_2, L2_2)
end
function L59_1()
  local L0_2, L1_2
  L0_2 = DebugStart
  L1_2 = "OnPlayerSatDown"
  L0_2(L1_2)
  L0_2 = true
  L10_1 = L0_2
  L0_2 = L43_1
  L0_2()
  L0_2 = L58_1
  L0_2()
  L0_2 = RequestPlayerChips
  L0_2()
end
function L60_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = DebugStart
  L1_2 = "StartSittingDown"
  L0_2(L1_2)
  L0_2 = SetInventoryBusy
  L1_2 = true
  L0_2(L1_2)
  L0_2 = RequestAnimDictAndWait
  L1_2 = L4_1
  L0_2(L1_2)
  L0_2 = RequestAnimDictAndWait
  L1_2 = L3_1
  L0_2(L1_2)
  L0_2 = getClosestAnimation
  L1_2 = GetPlayerPosition
  L1_2 = L1_2()
  L2_2 = L12_1.coords
  L3_2 = L12_1.rotation
  L4_2 = L4_1
  L5_2 = {}
  L6_2 = "sit_enter_left"
  L7_2 = "sit_enter_left_side"
  L8_2 = "sit_enter_right"
  L9_2 = "sit_enter_right_side"
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L5_2[3] = L8_2
  L5_2[4] = L9_2
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
  L1_2 = PlaySynchronizedScene
  L2_2 = L12_1.coords
  L3_2 = L12_1.rotation
  L4_2 = L4_1
  L5_2 = L0_2
  L6_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = CreateNewSceneEndEvent
  L3_2 = L1_2
  L4_2 = 0.5
  L5_2 = L59_1
  L6_2 = 8000
  L7_2 = 500
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = SetCurrentPedWeapon
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L4_2 = GetHashKey
  L5_2 = "weapon_unarmed"
  L4_2 = L4_2(L5_2)
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = Stats_StartActivity
  L3_2 = "bj"
  L2_2(L3_2)
end
function L61_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L7_2 = DebugStart
  L8_2 = "PlayPedBetAnimation"
  L7_2(L8_2)
  L7_2 = nil
  if 1 == A3_2 then
    if A4_2 then
      L7_2 = "place_bet_double_down_player_02"
    else
      L8_2 = 5000
      if A5_2 < L8_2 then
        L8_2 = GetRandomItem
        L9_2 = {}
        L10_2 = "place_bet_small"
        L11_2 = "place_bet_small_alt2"
        L12_2 = "place_bet_small_alt3"
        L9_2[1] = L10_2
        L9_2[2] = L11_2
        L9_2[3] = L12_2
        L8_2 = L8_2(L9_2)
        L7_2 = L8_2 or L7_2
      end
      if not L8_2 then
        L7_2 = "place_bet_large"
      end
    end
  elseif 2 == A3_2 then
    L8_2 = 5000
    if A5_2 < L8_2 then
      L8_2 = "place_bet_small_split"
      if L8_2 then
        goto lbl_35
        L7_2 = L8_2 or L7_2
      end
    end
    L7_2 = "place_bet_large_split"
  end
  ::lbl_35::
  if nil == L7_2 then
    return
  end
  L8_2 = A1_2.chairPositions
  L8_2 = L8_2[A2_2]
  L9_2 = CreateThread
  function L10_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    L0_3 = nil
    L1_3 = A6_2
    if L1_3 then
      L1_3 = GetInitialAnimOffsets
      L2_3 = L3_1
      L3_3 = L7_2
      L4_3 = L8_2.coords
      L5_3 = L8_2.rotation
      L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3, L5_3)
      L3_3 = IsPedMale
      L4_3 = A0_2
      L3_3 = L3_3(L4_3)
      if L3_3 then
        L3_3 = 0.0
        if L3_3 then
          goto lbl_20
        end
      end
      L3_3 = 0.07
      ::lbl_20::
      L4_3 = vector3
      L5_3 = L1_3.x
      L6_3 = L1_3.y
      L7_3 = L1_3.z
      L7_3 = L7_3 + L3_3
      L4_3 = L4_3(L5_3, L6_3, L7_3)
      L1_3 = L4_3
      L4_3 = TaskPlayAnimAdvanced
      L5_3 = A0_2
      L6_3 = L3_1
      L7_3 = L7_2
      L8_3 = L1_3
      L9_3 = L2_3
      L10_3 = 3.0
      L11_3 = 3.0
      L12_3 = -1
      L13_3 = 2
      L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
      L4_3 = WaitTaskAnimToReachTime
      L5_3 = A0_2
      L6_3 = L3_1
      L7_3 = L7_2
      L8_3 = 0.2
      L9_3 = 2000
      L10_3 = 100
      L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
    else
      L1_3 = PlaySynchronizedSceneOnPed
      L2_3 = A0_2
      L3_3 = L8_2.coords
      L4_3 = L8_2.rotation
      L5_3 = L3_1
      L6_3 = L7_2
      L7_3 = false
      L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3)
      L2_3 = WaitSynchronizedSceneToReachTime
      L3_3 = L1_3
      L4_3 = 0.25
      L5_3 = 2000
      L6_3 = 100
      L2_3(L3_3, L4_3, L5_3, L6_3)
    end
    L1_3 = IN_CASINO
    if not L1_3 then
      return
    end
    L1_3 = A1_2.createChipsOnChair
    L2_3 = A2_2
    L3_3 = A3_2
    L4_3 = A4_2
    L5_3 = A5_2
    L1_3(L2_3, L3_3, L4_3, L5_3)
    L1_3 = "DLC_VW_CHIP_BET_SML_SMALL"
    L2_3 = A5_2
    L3_3 = 10000
    if L2_3 >= L3_3 then
      L1_3 = "DLC_VW_CHIP_BET_SML_LARGE"
    else
      L2_3 = A5_2
      L3_3 = 5000
      if L2_3 >= L3_3 then
        L1_3 = "DLC_VW_CHIP_BET_SML_MEDIUM"
      end
    end
    L2_3 = PlaySound
    L3_3 = L1_3
    L4_3 = A1_2.ped
    L5_3 = "dlc_vw_table_games_sounds"
    L6_3 = true
    L2_3(L3_3, L4_3, L5_3, L6_3)
    L2_3 = A0_2
    L3_3 = PlayerPedId
    L3_3 = L3_3()
    if L2_3 == L3_3 then
      if not L0_3 or -1 == L0_3 then
        L2_3 = WaitTaskAnimToReachTime
        L3_3 = A0_2
        L4_3 = L3_1
        L5_3 = L7_2
        L6_3 = 0.8
        L7_3 = 2000
        L8_3 = 100
        L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
      else
        L2_3 = WaitSynchronizedSceneToReachTime
        L3_3 = L0_3
        L4_3 = 0.8
        L5_3 = 2000
        L6_3 = 100
        L2_3(L3_3, L4_3, L5_3, L6_3)
      end
      L2_3 = IN_CASINO
      if not L2_3 then
        return
      end
      L2_3 = L43_1
      L2_3()
    end
  end
  L11_2 = "player bet animation"
  L9_2(L10_2, L11_2)
end
function L62_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L6_2 = {}
  L6_2.automated = false
  L6_2.magicNumber = A5_2
  L7_2 = {}
  L6_2.chairPositions = L7_2
  L6_2.tickSound = -1
  L6_2.keepTableObject = false
  L6_2.blackjackCamera = nil
  L6_2.cameraActive = false
  L6_2.cameraView = 1
  L6_2.lastRotation = nil
  L7_2 = vector3
  L8_2 = 0.0
  L9_2 = 0.0
  L10_2 = 0.0
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L6_2.lerpingPosition = L7_2
  L7_2 = vector3
  L8_2 = 0.0
  L9_2 = 0.0
  L10_2 = 0.0
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L6_2.lerpingRotation = L7_2
  L7_2 = {}
  L6_2.allCards = L7_2
  L7_2 = {}
  L6_2.chairCards = L7_2
  L7_2 = {}
  L6_2.chairChips = L7_2
  L6_2.cardPileObject = nil
  L6_2.ped = nil
  L6_2.pedFocusedOnChair = -1
  L6_2.pedFocusedOnHand = -1
  L6_2.pedWasFocusingBefore = false
  L6_2.isBusy = false
  L6_2.attachedObject = nil
  L6_2.lastActionTime = 0
  L6_2.pedEvent = nil
  L6_2.pedModel = "S_F_Y_Casino_01"
  L7_2 = {}
  L6_2.syncedState = L7_2
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
  L6_2.rotation = A2_2
  L7_2 = SetObjectTextureVariation
  L8_2 = L6_2.tableObject
  L9_2 = A4_2
  L7_2(L8_2, L9_2)
  L7_2 = GetObjectOffsetFromCoords
  L8_2 = L6_2.coords
  L9_2 = L6_2.heading
  L10_2 = 0.0
  L11_2 = -0.04
  L12_2 = 1.35
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  L8_2 = CreateCamWithParams
  L9_2 = "DEFAULT_SCRIPTED_CAMERA"
  L10_2 = L7_2
  L11_2 = -78.0
  L12_2 = 0.0
  L13_2 = L6_2.heading
  L14_2 = 70.0
  L15_2 = true
  L16_2 = 2
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L6_2.blackjackCamera = L8_2
  L8_2 = SetCamActive
  L9_2 = L6_2.blackjackCamera
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
  end
  L8_2 = RequestModelAndWait
  L9_2 = GetHashKey
  L10_2 = L6_2.pedModel
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L9_2(L10_2)
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L8_2 = GetObjectOffsetFromCoords
  L9_2 = A1_2.x
  L10_2 = A1_2.y
  L11_2 = A1_2.z
  L12_2 = A3_2
  L13_2 = 0.0
  L14_2 = 0.7
  L15_2 = 0.0
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L6_2.pedOffset = L8_2
  L8_2 = CreatePed
  L9_2 = 2
  L10_2 = GetHashKey
  L11_2 = L6_2.pedModel
  L10_2 = L10_2(L11_2)
  L11_2 = L6_2.pedOffset
  L12_2 = A3_2 + 180.0
  L13_2 = false
  L14_2 = false
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L6_2.ped = L8_2
  L8_2 = SetEntityNoCollisionEntity
  L9_2 = L6_2.ped
  L10_2 = L6_2.tableObject
  L11_2 = false
  L8_2(L9_2, L10_2, L11_2)
  L8_2 = FreezeEntityPosition
  L9_2 = L6_2.ped
  L10_2 = true
  L8_2(L9_2, L10_2)
  L8_2 = SetCroupierSkin
  L9_2 = L6_2.ped
  L10_2 = L6_2.magicNumber
  L8_2(L9_2, L10_2)
  L8_2 = SetPedBrave
  L9_2 = L6_2.ped
  L8_2(L9_2)
  L8_2 = 1
  L9_2 = 4
  L10_2 = 1
  for L11_2 = L8_2, L9_2, L10_2 do
    L12_2 = L6_2.syncedState
    L12_2 = L12_2.chairs
    L12_2[L11_2] = -1
    L12_2 = L6_2.chairCards
    L13_2 = {}
    L12_2[L11_2] = L13_2
    L12_2 = L6_2.chairCards
    L12_2 = L12_2[L11_2]
    L13_2 = {}
    L12_2[1] = L13_2
    L12_2 = L6_2.chairCards
    L12_2 = L12_2[L11_2]
    L13_2 = {}
    L12_2[2] = L13_2
    L12_2 = L6_2.chairChips
    L13_2 = {}
    L12_2[L11_2] = L13_2
  end
  L8_2 = L6_2.chairCards
  L9_2 = {}
  L8_2.dealer = L9_2
  L8_2 = L6_2.chairCards
  L8_2 = L8_2.dealer
  L9_2 = {}
  L8_2[1] = L9_2
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L0_3 = L6_2.chairPositions
    L0_3 = #L0_3
    if L0_3 > 0 then
      return
    end
    L0_3 = 1
    L1_3 = 4
    L2_3 = 1
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = GetEntityBoneIndexByName
      L5_3 = L6_2.tableObject
      L6_3 = "Chair_Base_0"
      L7_3 = L3_3
      L6_3 = L6_3 .. L7_3
      L4_3 = L4_3(L5_3, L6_3)
      L5_3 = {}
      L6_3 = GetWorldPositionOfEntityBone
      L7_3 = L6_2.tableObject
      L8_3 = L4_3
      L6_3 = L6_3(L7_3, L8_3)
      L5_3.coords = L6_3
      L6_3 = GetWorldRotationOfEntityBone
      L7_3 = L6_2.tableObject
      L8_3 = L4_3
      L6_3 = L6_3(L7_3, L8_3)
      L5_3.rotation = L6_3
      L6_3 = L5_3.rotation
      L6_3 = L6_3.z
      L5_3.heading = L6_3
      L6_3 = table
      L6_3 = L6_3.insert
      L7_3 = L6_2.chairPositions
      L8_3 = 1
      L9_3 = L5_3
      L6_3(L7_3, L8_3, L9_3)
    end
    L0_3 = 1
    L1_3 = 4
    L2_3 = 1
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = L6_2.chairPositions
      L4_3 = L4_3[L3_3]
      L4_3.id = L3_3
    end
  end
  L6_2.loadChairData = L8_2
  function L8_2(A0_3, A1_3, A2_3, A3_3, A4_3)
    local L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L5_3 = L6_2.pedEvent
    if nil ~= L5_3 then
      L5_3 = L6_2.pedEvent
      L5_3 = L5_3.finished
      if not L5_3 then
        L5_3 = L6_2.pedEvent
        L5_3.cancelled = true
      end
    end
    if nil ~= A0_3 then
      L5_3 = CreateSceneEndEvent
      L6_3 = A0_3
      L7_3 = A1_3
      L8_3 = A2_3
      L9_3 = A3_3
      L10_3 = A4_3
      L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3)
      L6_2.pedEvent = L5_3
    else
      L6_2.pedEvent = nil
    end
  end
  L6_2.pedCreateSceneAnimationEvent = L8_2
  function L8_2(A0_3, A1_3, A2_3, A3_3, A4_3, A5_3)
    local L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    L6_3 = L6_2.pedEvent
    if nil ~= L6_3 then
      L6_3 = L6_2.pedEvent
      L6_3 = L6_3.finished
      if not L6_3 then
        L6_3 = L6_2.pedEvent
        L6_3.cancelled = true
      end
    end
    if nil ~= A0_3 then
      L6_3 = CreateTaskAnimEndEvent
      L7_3 = L6_2.ped
      L8_3 = A0_3
      L9_3 = A1_3
      L10_3 = A2_3
      L11_3 = A3_3
      L12_3 = A4_3
      L13_3 = A5_3
      L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
      L6_2.pedEvent = L6_3
    else
      L6_2.pedEvent = nil
    end
  end
  L6_2.pedCreateTaskAnimationEvent = L8_2
  function L8_2(A0_3, A1_3, A2_3, A3_3, A4_3)
    local L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3
    if not A1_3 then
      A1_3 = L1_1
    end
    if not A4_3 then
      A4_3 = 3000
    end
    L5_3 = RequestAnimDictAndWait
    L6_3 = A1_3
    L5_3(L6_3)
    L5_3 = L6_2.automated
    if not L5_3 then
      L5_3 = CreateSynchronizedScene
      L6_3 = L6_2.coords
      L7_3 = 0.0
      L8_3 = 0.0
      L9_3 = L6_2.heading
      L10_3 = 2
      L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3)
      L6_3 = TaskSynchronizedScene
      L7_3 = L6_2.ped
      L8_3 = L5_3
      L9_3 = A1_3
      L10_3 = A0_3
      L11_3 = 2.0
      L12_3 = -1.5
      L13_3 = 13
      L14_3 = 16
      L15_3 = 2.0
      L16_3 = 0
      L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
      if A2_3 then
        L6_3 = SetSynchronizedSceneLooped
        L7_3 = L5_3
        L8_3 = A2_3
        L6_3(L7_3, L8_3)
      end
      if A3_3 then
        L6_3 = L6_2.pedCreateSceneAnimationEvent
        L7_3 = L5_3
        L8_3 = 0.9
        L9_3 = A3_3
        L10_3 = A4_3
        L11_3 = 300
        L6_3(L7_3, L8_3, L9_3, L10_3, L11_3)
      else
        L6_3 = L6_2.pedCreateSceneAnimationEvent
        L7_3 = nil
        L6_3(L7_3)
      end
      return L5_3
    else
      L5_3 = GetInitialAnimOffsets
      L6_3 = A1_3
      L7_3 = A0_3
      L8_3 = L6_2.coords
      L9_3 = vector3
      L10_3 = 0.0
      L11_3 = 0.0
      L12_3 = L6_2.heading
      L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3 = L9_3(L10_3, L11_3, L12_3)
      L5_3, L6_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
      L7_3 = SetEntityCoordsNoOffset
      L8_3 = L6_2.ped
      L9_3 = L5_3
      L10_3 = false
      L11_3 = false
      L12_3 = false
      L7_3(L8_3, L9_3, L10_3, L11_3, L12_3)
      L7_3 = SetEntityRotation
      L8_3 = L6_2.ped
      L9_3 = L6_3
      L7_3(L8_3, L9_3)
      L7_3 = GetAnimDuration
      L8_3 = A1_3
      L9_3 = A0_3
      L7_3 = L7_3(L8_3, L9_3)
      L7_3 = L7_3 * 1000
      L8_3 = TaskPlayAnim
      L9_3 = L6_2.ped
      L10_3 = A1_3
      L11_3 = A0_3
      L12_3 = 2.0
      L13_3 = -1.5
      L14_3 = L7_3
      if A2_3 then
        L15_3 = 1
        if L15_3 then
          goto lbl_93
        end
      end
      L15_3 = 0
      ::lbl_93::
      L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
      if A3_3 then
        L8_3 = L6_2.pedCreateTaskAnimationEvent
        L9_3 = A1_3
        L10_3 = A0_3
        L11_3 = 0.9
        L12_3 = A3_3
        L13_3 = A4_3
        L14_3 = 300
        L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
      else
        L8_3 = L6_2.pedCreateTaskAnimationEvent
        L9_3 = nil
        L8_3(L9_3)
      end
      L8_3 = -2
      return L8_3
    end
    L5_3 = nil
    return L5_3
  end
  L6_2.pedAnimation = L8_2
  function L8_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    if not A1_3 then
      A1_3 = L1_1
    end
    L2_3 = PlayFacialAnim
    L3_3 = L6_2.ped
    L4_3 = A0_3
    L5_3 = A1_3
    L2_3(L3_3, L4_3, L5_3)
  end
  L6_2.pedAnimationFacial = L8_2
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = SetCamActive
    L1_3 = L6_2.blackjackCamera
    L2_3 = false
    L0_3(L1_3, L2_3)
    L0_3 = RenderScriptCams
    L1_3 = false
    L2_3 = 900
    L3_3 = 900
    L4_3 = true
    L5_3 = false
    L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
    L6_2.cameraActive = false
  end
  L6_2.disableCamera = L8_2
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = SetCamActive
    L1_3 = L6_2.blackjackCamera
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = RenderScriptCams
    L1_3 = true
    L2_3 = 900
    L3_3 = 900
    L4_3 = true
    L5_3 = true
    L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
    L0_3 = ShakeCam
    L1_3 = L6_2.blackjackCamera
    L2_3 = "HAND_SHAKE"
    L3_3 = 0.25
    L0_3(L1_3, L2_3, L3_3)
    L6_2.cameraActive = true
  end
  L6_2.enableCamera = L8_2
  L8_2 = {}
  L6_2.dirtObjects = L8_2
  function L8_2()
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
  L6_2.cleanDirt = L8_2
  function L8_2(A0_3, A1_3)
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
        L3_4 = "bj_"
        L4_4 = GetGameTimer
        L4_4 = L4_4()
        L5_4 = "_0"
        L3_4 = L3_4 .. L4_4 .. L5_4
        L4_4 = "casino_dirt_plane"
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
        L0_4.tableGame = "blackjack"
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
          L4_4 = L4_4.MissionPokerDirtyOffsets
          L4_4 = #L4_4
          L5_4 = 1
          for L6_4 = L3_4, L4_4, L5_4 do
            L7_4 = 1
            L8_4 = Config
            L8_4 = L8_4.JobConsts
            L8_4 = L8_4.MissionPokerDirtyOffsets
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
              L14_4 = L14_4.MissionPokerDirtyOffsets
              L14_4 = L14_4[L6_4]
              L14_4 = L14_4.model
              L13_4.model = L14_4
              L14_4 = Config
              L14_4 = L14_4.JobConsts
              L14_4 = L14_4.MissionPokerDirtyOffsets
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
              L12_4 = "bj_"
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
              L13_4.tableGame = "blackjack"
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
    L4_3 = "dirt around casino"
    L2_3(L3_3, L4_3)
  end
  L6_2.changeDirtLevel = L8_2
  function L8_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L1_3 = {}
    L2_3 = vector3
    L3_3 = -0.007
    L4_3 = 0.2
    L5_3 = 0.006
    L2_3 = L2_3(L3_3, L4_3, L5_3)
    L3_3 = vector3
    L4_3 = 0.505997
    L5_3 = 0.302
    L6_3 = 0.006
    L3_3 = L3_3(L4_3, L5_3, L6_3)
    L4_3 = vector3
    L5_3 = 0.209001
    L6_3 = -0.019
    L7_3 = 0.006
    L4_3 = L4_3(L5_3, L6_3, L7_3)
    L5_3 = vector3
    L6_3 = -0.232
    L7_3 = 0.004
    L8_3 = 0.006
    L5_3 = L5_3(L6_3, L7_3, L8_3)
    L6_3 = vector3
    L7_3 = -0.527997
    L8_3 = 0.289
    L9_3 = 0.006
    L6_3 = L6_3(L7_3, L8_3, L9_3)
    L7_3 = vector3
    L8_3 = -0.007
    L9_3 = 0.2
    L10_3 = 0.006
    L7_3, L8_3, L9_3, L10_3 = L7_3(L8_3, L9_3, L10_3)
    L1_3[1] = L2_3
    L1_3[2] = L3_3
    L1_3[3] = L4_3
    L1_3[4] = L5_3
    L1_3[5] = L6_3
    L1_3[6] = L7_3
    L1_3[7] = L8_3
    L1_3[8] = L9_3
    L1_3[9] = L10_3
    L2_3 = {}
    L3_3 = 0.0
    L4_3 = -66.55
    L5_3 = -21.05
    L6_3 = 21.65
    L7_3 = 66.45
    L8_3 = 0.0
    L2_3[1] = L3_3
    L2_3[2] = L4_3
    L2_3[3] = L5_3
    L2_3[4] = L6_3
    L2_3[5] = L7_3
    L2_3[6] = L8_3
    L3_3 = GetObjectOffsetFromCoords
    L4_3 = L6_2.coords
    L5_3 = L6_2.heading
    L6_3 = vector3
    L7_3 = L1_3[A0_3]
    L7_3 = L7_3.x
    L7_3 = 0.0 + L7_3
    L8_3 = L1_3[A0_3]
    L8_3 = L8_3.y
    L8_3 = -0.04 + L8_3
    L9_3 = L1_3[A0_3]
    L9_3 = L9_3.z
    L9_3 = 1.35 + L9_3
    L6_3, L7_3, L8_3, L9_3, L10_3 = L6_3(L7_3, L8_3, L9_3)
    L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
    L4_3 = vector3
    L5_3 = -90
    L6_3 = L2_3[A0_3]
    L6_3 = 0.0 + L6_3
    L7_3 = L6_2.heading
    L4_3 = L4_3(L5_3, L6_3, L7_3)
    L5_3 = L6_2.lastRotation
    if not L5_3 then
      L6_2.lastRotation = L4_3
    end
    L6_2.lerpingPosition = L3_3
    L6_2.lerpingRotation = L4_3
    L5_3 = CreateThread
    function L6_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4
      L0_4 = GAME_TIMER
      L0_4 = L0_4 + 500
      while true do
        L1_4 = IN_CASINO
        if not L1_4 then
          break
        end
        L1_4 = GAME_TIMER
        if not (L0_4 > L1_4) then
          break
        end
        L1_4 = L6_2.cameraActive
        if not L1_4 then
          break
        end
        L1_4 = GetCamCoord
        L2_4 = L6_2.blackjackCamera
        L1_4 = L1_4(L2_4)
        L2_4 = SetCamCoord
        L3_4 = L6_2.blackjackCamera
        L4_4 = LerpVector3
        L5_4 = L1_4
        L6_4 = L6_2.lerpingPosition
        L7_4 = 0.1
        L4_4, L5_4, L6_4, L7_4 = L4_4(L5_4, L6_4, L7_4)
        L2_4(L3_4, L4_4, L5_4, L6_4, L7_4)
        L2_4 = LerpVector3Angle
        L3_4 = L6_2.lastRotation
        L4_4 = L6_2.lerpingRotation
        L5_4 = 0.1
        L2_4 = L2_4(L3_4, L4_4, L5_4)
        L6_2.lastRotation = L2_4
        L2_4 = SetCamRot
        L3_4 = L6_2.blackjackCamera
        L4_4 = L6_2.lastRotation
        L5_4 = 2
        L2_4(L3_4, L4_4, L5_4)
        L2_4 = Wait
        L3_4 = 0
        L2_4(L3_4)
      end
    end
    L7_3 = "Updating camera position and rotation for blackjack"
    L5_3(L6_3, L7_3)
  end
  L6_2.changeCameraView = L8_2
  function L8_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = L6_2.cameraView
    L2_3 = L2_3 + A0_3
    L6_2.cameraView = L2_3
    L2_3 = L6_2.cameraActive
    if not L2_3 then
      L2_3 = A1_3 + 1
      L6_2.cameraView = L2_3
    end
    L2_3 = L6_2.cameraView
    if not (L2_3 >= 7) then
      L2_3 = L6_2.cameraView
      if not (L2_3 <= 0) then
        goto lbl_23
      end
    end
    L2_3 = L6_2.cameraActive
    if L2_3 then
      L2_3 = L6_2.disableCamera
      L2_3()
      goto lbl_31
      ::lbl_23::
      L2_3 = L6_2.cameraActive
      if not L2_3 then
        L2_3 = L6_2.enableCamera
        L2_3()
      end
      L2_3 = L6_2.changeCameraView
      L3_3 = L6_2.cameraView
      L2_3(L3_3)
    end
    ::lbl_31::
  end
  L6_2.changeCameraMode = L8_2
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = GetSoundId
    L0_3 = L0_3()
    L6_2.tickSound = L0_3
    L0_3 = PlaySoundFrontend
    L1_3 = L6_2.tickSound
    L2_3 = "5s"
    L3_3 = "MP_MISSION_COUNTDOWN_SOUNDSET"
    L4_3 = 1
    L0_3(L1_3, L2_3, L3_3, L4_3)
  end
  L6_2.startTicking = L8_2
  function L8_2()
    local L0_3, L1_3
    L0_3 = L6_2.tickSound
    if -1 ~= L0_3 then
      L0_3 = StopSound
      L1_3 = L6_2.tickSound
      L0_3(L1_3)
      L0_3 = ReleaseSoundId
      L1_3 = L6_2.tickSound
      L0_3(L1_3)
    end
    L6_2.tickSound = -1
  end
  L6_2.stopTicking = L8_2
  function L8_2(A0_3)
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
  L6_2.getClosestChair = L8_2
  function L8_2(A0_3, A1_3, A2_3, A3_3, A4_3, A5_3)
    local L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3
    if not A3_3 then
      A3_3 = -1
    end
    if not A4_3 then
      A4_3 = -1
    end
    L6_3 = {}
    L7_3 = GetHashKey
    L8_3 = A1_3
    L7_3 = L7_3(L8_3)
    if A5_3 then
      L8_3 = GetHashKey
      L9_3 = A5_3
      L8_3 = L8_3(L9_3)
      L7_3 = L8_3
    end
    L8_3 = RequestModelAndWait
    L9_3 = L7_3
    L8_3(L9_3)
    L8_3 = CreateObject
    L9_3 = L7_3
    L10_3 = L6_2.coords
    L11_3 = vector3
    L12_3 = 0.0
    L13_3 = 0.0
    L14_3 = -0.045
    L11_3 = L11_3(L12_3, L13_3, L14_3)
    L10_3 = L10_3 + L11_3
    L11_3 = false
    L12_3 = false
    L13_3 = false
    L8_3 = L8_3(L9_3, L10_3, L11_3, L12_3, L13_3)
    L9_3 = GetObjectOffsetFromCoords
    L10_3 = L6_2.coords
    L11_3 = L6_2.heading
    L12_3 = 0.526
    L13_3 = 0.571
    L14_3 = 0.963
    L9_3 = L9_3(L10_3, L11_3, L12_3, L13_3, L14_3)
    L10_3 = L6_2.rotation
    L11_3 = vector3
    L12_3 = 0.0
    L13_3 = 164.52
    L14_3 = 11.5
    L11_3 = L11_3(L12_3, L13_3, L14_3)
    L10_3 = L10_3 + L11_3
    L11_3 = SetEntityCoordsNoOffset
    L12_3 = L8_3
    L13_3 = L9_3
    L14_3 = false
    L15_3 = false
    L16_3 = true
    L11_3(L12_3, L13_3, L14_3, L15_3, L16_3)
    L11_3 = SetEntityRotation
    L12_3 = L8_3
    L13_3 = L10_3
    L14_3 = 2
    L15_3 = 1
    L11_3(L12_3, L13_3, L14_3, L15_3)
    if true == A2_3 then
      L11_3 = FreezeEntityPosition
      L12_3 = L8_3
      L13_3 = true
      L11_3(L12_3, L13_3)
    end
    L6_3.entity = L8_3
    L6_3.hand = A3_3
    L6_3.index = A4_3
    L6_3.value = A0_3
    L6_3.model = A1_3
    L6_3.fakeCoverModel = A5_3
    L11_3 = L6_2.allCards
    L11_3[L8_3] = L6_3
    return L6_3
  end
  L6_2.createCard = L8_2
  function L8_2(A0_3)
    local L1_3, L2_3
    L1_3 = L6_2.allCards
    L1_3 = L1_3[A0_3]
    if nil ~= L1_3 then
      L1_3 = ForceDeleteEntity
      L2_3 = L6_2.allCards
      L2_3 = L2_3[A0_3]
      L2_3 = L2_3.entity
      L1_3(L2_3)
      L1_3 = L6_2.allCards
      L1_3[A0_3] = nil
    end
  end
  L6_2.deleteCard = L8_2
  function L8_2(A0_3, A1_3)
    local L2_3
    L2_3 = L6_2.chairCards
    L2_3 = L2_3[A0_3]
    L2_3 = L2_3[A1_3]
    return L2_3
  end
  L6_2.getChairCards = L8_2
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L6_2.createCard
    L1_3 = 11
    L2_3 = "vw_prop_vw_club_char_a_a"
    L3_3 = true
    L0_3 = L0_3(L1_3, L2_3, L3_3)
    L6_2.cardPileObject = L0_3
  end
  L6_2.createCardPile = L8_2
  function L8_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L6_2.pedFocusedOnChair = A0_3
    L6_2.pedFocusedOnHand = A1_3
    L3_3 = nil
    L4_3 = IsPedMale
    L5_3 = L6_2.ped
    L4_3 = L4_3(L5_3)
    if not L4_3 then
      L4_3 = "female_"
      if L4_3 then
        goto lbl_13
      end
    end
    L4_3 = ""
    ::lbl_13::
    L5_3 = "dealer_focus_player_0"
    L6_3 = A0_3
    if 1 == A1_3 then
      L7_3 = "_idle"
      if L7_3 then
        goto lbl_21
      end
    end
    L7_3 = "_idle_split"
    ::lbl_21::
    L4_3 = L4_3 .. L5_3 .. L6_3 .. L7_3
    L5_3 = IsPedMale
    L6_3 = L6_2.ped
    L5_3 = L5_3(L6_3)
    if not L5_3 then
      L5_3 = "female_"
      if L5_3 then
        goto lbl_31
      end
    end
    L5_3 = ""
    ::lbl_31::
    L6_3 = "dealer_focus_player_0"
    L7_3 = A0_3
    L8_3 = "_idle_intro"
    L5_3 = L5_3 .. L6_3 .. L7_3 .. L8_3
    L6_3 = L6_2.pedWasFocusingBefore
    if false == L6_3 then
      L6_3 = L6_2.pedAnimation
      L7_3 = L5_3
      L8_3 = nil
      L9_3 = false
      function L10_3()
        local L0_4, L1_4, L2_4, L3_4
        L0_4 = L6_2.pedAnimation
        L1_4 = L4_3
        L2_4 = nil
        L3_4 = true
        L0_4(L1_4, L2_4, L3_4)
      end
      L6_3(L7_3, L8_3, L9_3, L10_3)
    else
      L6_3 = L6_2.pedAnimation
      L7_3 = L4_3
      L8_3 = nil
      L9_3 = false
      L6_3(L7_3, L8_3, L9_3)
    end
    L6_2.pedWasFocusingBefore = true
  end
  L6_2.pedFocusPlayer = L8_2
  function L8_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L1_3 = L6_2.pedFocusedOnChair
    if -1 == L1_3 then
      return
    end
    L1_3 = L6_2.pedFocusedOnChair
    L2_3 = 5
    L1_3 = L2_3 - L1_3
    L6_2.pedFocusedOnChair = -1
    L6_2.pedFocusedOnHand = -1
    L2_3 = "dealer_focus_player_0"
    L3_3 = L1_3
    L4_3 = "_idle_outro_split"
    L2_3 = L2_3 .. L3_3 .. L4_3
    L3_3 = L6_2.pedAnimation
    L4_3 = L2_3
    L5_3 = nil
    L6_3 = false
    L3_3 = L3_3(L4_3, L5_3, L6_3)
    if true == A0_3 then
      L4_3 = WaitSynchronizedSceneToReachTime
      L5_3 = L3_3
      L6_3 = 0.85
      L7_3 = 2000
      L8_3 = 300
      L4_3(L5_3, L6_3, L7_3, L8_3)
    end
  end
  L6_2.pedUnfocus = L8_2
  function L8_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3
    L1_3 = L6_2.chairCards
    L1_3 = L1_3[A0_3]
    if nil ~= L1_3 then
      L1_3 = L6_2.chairCards
      L1_3 = L1_3[A0_3]
      L1_3 = L1_3[1]
      if nil ~= L1_3 then
        L1_3 = L6_2.chairCards
        L1_3 = L1_3[A0_3]
        L1_3 = L1_3[1]
        L1_3 = #L1_3
        if 2 == L1_3 then
          goto lbl_17
        end
      end
    end
    do return end
    ::lbl_17::
    L1_3 = A0_3 - 1
    L2_3 = L6_2.chairCards
    L2_3 = L2_3[A0_3]
    L2_3 = L2_3[1]
    L2_3 = L2_3[2]
    L2_3 = L2_3.entity
    L3_3 = L41_1
    L4_3 = 1
    L5_3 = L1_3
    L6_3 = 2
    L3_3, L4_3, L5_3 = L3_3(L4_3, L5_3, L6_3)
    L6_3 = GetObjectOffsetFromCoords
    L7_3 = L6_2.coords
    L8_3 = L6_2.heading
    L9_3 = L3_3
    L10_3 = L4_3
    L11_3 = L5_3
    L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3, L11_3)
    L7_3 = L6_2.pedAnimation
    L8_3 = IsPedMale
    L9_3 = L6_2.ped
    L8_3 = L8_3(L9_3)
    if not L8_3 then
      L8_3 = "female_"
      if L8_3 then
        goto lbl_46
      end
    end
    L8_3 = ""
    ::lbl_46::
    L9_3 = "split_card_player_0"
    L10_3 = A0_3
    L8_3 = L8_3 .. L9_3 .. L10_3
    L7_3 = L7_3(L8_3)
    L6_2.pedFocusedOnChair = A0_3
    L8_3 = L6_2.chairCards
    L8_3 = L8_3[A0_3]
    L8_3 = L8_3[1]
    L8_3 = L8_3[2]
    L9_3 = table
    L9_3 = L9_3.remove
    L10_3 = L6_2.chairCards
    L10_3 = L10_3[A0_3]
    L10_3 = L10_3[1]
    L11_3 = 2
    L9_3(L10_3, L11_3)
    L9_3 = table
    L9_3 = L9_3.insert
    L10_3 = L6_2.chairCards
    L10_3 = L10_3[A0_3]
    L10_3 = L10_3[2]
    L11_3 = L8_3
    L9_3(L10_3, L11_3)
    L9_3 = WaitSynchronizedSceneToReachTime
    L10_3 = L7_3
    L11_3 = 0.2
    L12_3 = 2000
    L13_3 = 500
    L9_3(L10_3, L11_3, L12_3, L13_3)
    L9_3 = IN_CASINO
    if L9_3 then
      L9_3 = L6_2.dealCardToChair
      if L9_3 then
        goto lbl_82
      end
    end
    do return end
    ::lbl_82::
    L9_3 = AttachEntityToEntity
    L10_3 = L2_3
    L11_3 = L6_2.ped
    L12_3 = GetPedBoneIndex
    L13_3 = L6_2.ped
    L14_3 = 60309
    L12_3 = L12_3(L13_3, L14_3)
    L13_3 = 0.0
    L14_3 = 0.0
    L15_3 = 0.0
    L16_3 = 0.0
    L17_3 = 0.0
    L18_3 = 0.0
    L19_3 = 0
    L20_3 = 0
    L21_3 = 0
    L22_3 = 1
    L23_3 = 2
    L24_3 = 1
    L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3)
    L6_2.attachedObject = L2_3
    L9_3 = WaitSynchronizedSceneToReachTime
    L10_3 = L7_3
    L11_3 = 0.27
    L12_3 = 1000
    L13_3 = 0
    L9_3 = L9_3(L10_3, L11_3, L12_3, L13_3)
    L10_3 = IN_CASINO
    if L10_3 then
      L10_3 = L6_2.dealCardToChair
      if L10_3 then
        goto lbl_116
      end
    end
    do return end
    ::lbl_116::
    L10_3 = DetachEntity
    L11_3 = L2_3
    L10_3(L11_3)
    L6_2.attachedObject = nil
    L10_3 = SetEntityCoordsNoOffset
    L11_3 = L2_3
    L12_3 = L6_3
    L10_3(L11_3, L12_3)
    L10_3 = WaitSynchronizedSceneToReachTime
    L11_3 = L7_3
    L12_3 = 0.85
    L13_3 = 1000
    L14_3 = 0
    L10_3(L11_3, L12_3, L13_3, L14_3)
    L10_3 = IN_CASINO
    if L10_3 then
      L10_3 = L6_2.dealCardToChair
      if L10_3 then
        goto lbl_137
      end
    end
    do return end
    ::lbl_137::
    if L9_3 then
      L10_3 = L6_2.pedFocusPlayer
      L11_3 = A0_3
      L12_3 = 2
      L13_3 = 1
      L10_3(L11_3, L12_3, L13_3)
    end
  end
  L6_2.splitCards = L8_2
  function L8_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = L6_2.chairCards
    L2_3 = L2_3[A0_3]
    if nil ~= L2_3 then
      L2_3 = L6_2.chairCards
      L2_3 = L2_3[A0_3]
      L2_3 = L2_3[A1_3]
      if nil ~= L2_3 then
        goto lbl_12
      end
    end
    L2_3 = 0
    do return L2_3 end
    ::lbl_12::
    L2_3 = BlackjackGetScoreFromCards
    L3_3 = L6_2.chairCards
    L3_3 = L3_3[A0_3]
    L3_3 = L3_3[A1_3]
    return L2_3(L3_3)
  end
  L6_2.calculateSum = L8_2
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L0_3 = L6_2.chairCards
    L0_3 = L0_3.dealer
    L0_3 = L0_3[1]
    L0_3 = L0_3[1]
    L0_3 = L0_3.entity
    L1_3 = L6_2.chairCards
    L1_3 = L1_3.dealer
    L1_3 = L1_3[1]
    L1_3 = L1_3[1]
    L1_3 = L1_3.model
    L2_3 = GetEntityCoords
    L3_3 = L0_3
    L2_3 = L2_3(L3_3)
    L3_3 = GetEntityRotation
    L4_3 = L0_3
    L3_3 = L3_3(L4_3)
    L4_3 = ForceDeleteEntity
    L5_3 = L0_3
    L4_3(L5_3)
    L4_3 = Wait
    L5_3 = 0
    L4_3(L5_3)
    L4_3 = CreateObject
    L5_3 = GetHashKey
    L6_3 = L1_3
    L5_3 = L5_3(L6_3)
    L6_3 = L2_3
    L7_3 = false
    L8_3 = false
    L9_3 = false
    L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3, L9_3)
    L5_3 = SetEntityCoordsNoOffset
    L6_3 = L4_3
    L7_3 = L2_3
    L5_3(L6_3, L7_3)
    L5_3 = SetEntityRotation
    L6_3 = L4_3
    L7_3 = L3_3
    L5_3(L6_3, L7_3)
    L5_3 = SetEntityCollision
    L6_3 = L4_3
    L7_3 = false
    L8_3 = false
    L5_3(L6_3, L7_3, L8_3)
    L5_3 = FreezeEntityPosition
    L6_3 = L4_3
    L7_3 = true
    L5_3(L6_3, L7_3)
    L5_3 = L6_2.chairCards
    L5_3 = L5_3.dealer
    L5_3 = L5_3[1]
    L5_3 = L5_3[1]
    L5_3.entity = L4_3
    return L4_3
  end
  L6_2.pedTurnFirstCardIntoRealOne = L8_2
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3
    L0_3 = L6_2.chairCards
    L0_3 = L0_3.dealer
    if nil ~= L0_3 then
      L0_3 = L6_2.chairCards
      L0_3 = L0_3.dealer
      L0_3 = L0_3[1]
      if nil ~= L0_3 then
        L0_3 = L6_2.chairCards
        L0_3 = L0_3.dealer
        L0_3 = L0_3[1]
        L0_3 = #L0_3
        if not (L0_3 < 1) then
          goto lbl_17
        end
      end
    end
    do return end
    ::lbl_17::
    L0_3 = 0.2
    L1_3 = L6_2.chairCards
    L1_3 = L1_3.dealer
    L1_3 = L1_3[1]
    L1_3 = L1_3[1]
    L1_3 = L1_3.entity
    L2_3 = L6_2.chairCards
    L2_3 = L2_3.dealer
    L2_3 = L2_3[1]
    L2_3 = L2_3[1]
    L2_3 = L2_3.fakeCoverModel
    if L2_3 then
      L3_3 = L6_2.pedTurnFirstCardIntoRealOne
      L3_3 = L3_3()
      L1_3 = L3_3
    end
    L3_3 = IsPedMale
    L4_3 = L6_2.ped
    L3_3 = L3_3(L4_3)
    if not L3_3 then
      L3_3 = "female_"
      if L3_3 then
        goto lbl_42
      end
    end
    L3_3 = ""
    ::lbl_42::
    L4_3 = "turn_card"
    L3_3 = L3_3 .. L4_3
    L4_3 = L6_2.pedAnimation
    L5_3 = L3_3
    L4_3 = L4_3(L5_3)
    L5_3 = GetEntityRotation
    L6_3 = L1_3
    L5_3 = L5_3(L6_3)
    L6_3 = vector3
    L7_3 = 0
    L8_3 = 180
    L9_3 = 0
    L6_3 = L6_3(L7_3, L8_3, L9_3)
    L5_3 = L5_3 + L6_3
    if -2 == L4_3 then
      L6_3 = WaitTaskAnimToReachTime
      L7_3 = L6_2.ped
      L8_3 = L1_1
      L9_3 = L3_3
      L10_3 = L0_3
      L11_3 = 3000
      L12_3 = 500
      L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
    else
      L6_3 = WaitSynchronizedSceneToReachTime
      L7_3 = L4_3
      L8_3 = L0_3
      L9_3 = 3000
      L10_3 = 500
      L6_3(L7_3, L8_3, L9_3, L10_3)
    end
    L6_3 = IN_CASINO
    if L6_3 then
      L6_3 = L6_2.dealCardToChair
      if L6_3 then
        goto lbl_81
      end
    end
    do return end
    ::lbl_81::
    L6_3 = AttachEntityToEntity
    L7_3 = L1_3
    L8_3 = L6_2.ped
    L9_3 = GetPedBoneIndex
    L10_3 = L6_2.ped
    L11_3 = 28422
    L9_3 = L9_3(L10_3, L11_3)
    L10_3 = 0.0
    L11_3 = 0.0
    L12_3 = 0.0
    L13_3 = 0.0
    L14_3 = 0.0
    L15_3 = 0.0
    L16_3 = 0
    L17_3 = 0
    L18_3 = 0
    L19_3 = 1
    L20_3 = 2
    L21_3 = 1
    L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3)
    L6_2.attachedObject = L1_3
    if -2 == L4_3 then
      L6_3 = WaitTaskAnimToReachTime
      L7_3 = L6_2.ped
      L8_3 = L1_1
      L9_3 = L3_3
      L10_3 = 0.45
      L11_3 = 3000
      L12_3 = 500
      L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
    else
      L6_3 = WaitSynchronizedSceneToReachTime
      L7_3 = L4_3
      L8_3 = 0.45
      L9_3 = 3000
      L10_3 = 500
      L6_3(L7_3, L8_3, L9_3, L10_3)
    end
    L6_3 = IN_CASINO
    if L6_3 then
      L6_3 = L6_2.dealCardToChair
      if L6_3 then
        goto lbl_126
      end
    end
    do return end
    ::lbl_126::
    L6_3 = L6_2.calculateSum
    L7_3 = "dealer"
    L8_3 = 1
    L6_3 = L6_3(L7_3, L8_3)
    if "blackjack" == L6_3 then
      L7_3 = L6_2.bjPedSay
      L8_3 = "MINIGAME_BJACK_DEALER_BLACKJACK"
      L7_3(L8_3)
    elseif L6_3 > 0 and L6_3 <= 21 then
      L7_3 = L6_2.bjPedSayNumber
      L8_3 = L6_3
      L7_3(L8_3)
    elseif L6_3 > 21 then
      L7_3 = L6_2.bjPedSay
      L8_3 = "MINIGAME_DEALER_BUSTS"
      L7_3(L8_3)
    end
    L7_3 = DetachEntity
    L8_3 = L1_3
    L7_3(L8_3)
    L6_2.attachedObject = nil
    L7_3 = SetEntityRotation
    L8_3 = L1_3
    L9_3 = L5_3
    L7_3(L8_3, L9_3)
    if -2 == L4_3 then
      L7_3 = WaitTaskAnimToReachTime
      L8_3 = L6_2.ped
      L9_3 = L1_1
      L10_3 = L3_3
      L11_3 = 0.55
      L12_3 = 500
      L13_3 = 500
      L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
    else
      L7_3 = WaitSynchronizedSceneToReachTime
      L8_3 = L4_3
      L9_3 = 0.55
      L10_3 = 500
      L11_3 = 500
      L7_3(L8_3, L9_3, L10_3, L11_3)
    end
  end
  L6_2.pedTurnCard = L8_2
  function L8_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = GAME_TIMER
    L1_3 = L1_3 + A0_3
    while true do
      L2_3 = GAME_TIMER
      if not (L1_3 > L2_3) then
        break
      end
      L2_3 = Wait
      L3_3 = 15
      L2_3(L3_3)
    end
    L6_2.isBusy = false
  end
  L6_2.waitIfBusy = L8_2
  function L8_2()
    local L0_3, L1_3, L2_3
    L0_3 = GAME_TIMER
    L0_3 = L0_3 + 10000
    while true do
      L1_3 = GAME_TIMER
      if not (L0_3 > L1_3) then
        break
      end
      L1_3 = L6_2.attachedObject
      if nil == L1_3 then
        break
      end
      L1_3 = Wait
      L2_3 = 15
      L1_3(L2_3)
    end
  end
  L6_2.waitForDetach = L8_2
  function L8_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3
    L6_2.isBusy = true
    L1_3 = L6_2.chairCards
    L1_3 = L1_3.dealer
    if nil ~= L1_3 then
      L1_3 = L6_2.chairCards
      L1_3 = L1_3.dealer
      L1_3 = L1_3[1]
      if nil ~= L1_3 then
        L1_3 = L6_2.chairCards
        L1_3 = L1_3.dealer
        L1_3 = L1_3[1]
        L1_3 = #L1_3
        if not (L1_3 < 1) then
          goto lbl_18
        end
      end
    end
    do return end
    ::lbl_18::
    if A0_3 then
      L1_3 = 0.12
      if L1_3 then
        goto lbl_24
      end
    end
    L1_3 = 0.2
    ::lbl_24::
    L2_3 = L6_2.chairCards
    L2_3 = L2_3.dealer
    L2_3 = L2_3[1]
    L2_3 = L2_3[1]
    L2_3 = L2_3.entity
    if A0_3 then
      L3_3 = L6_2.chairCards
      L3_3 = L3_3.dealer
      L3_3 = L3_3[1]
      L3_3 = L3_3[1]
      L3_3 = L3_3.fakeCoverModel
      if L3_3 then
        L4_3 = L6_2.pedTurnFirstCardIntoRealOne
        L4_3 = L4_3()
        L2_3 = L4_3
      end
    end
    L3_3 = L6_2.pedAnimation
    L4_3 = IsPedMale
    L5_3 = L6_2.ped
    L4_3 = L4_3(L5_3)
    if not L4_3 then
      L4_3 = "female_"
      if L4_3 then
        goto lbl_51
      end
    end
    L4_3 = ""
    ::lbl_51::
    if true == A0_3 then
      L5_3 = "check_and_turn_card"
      if L5_3 then
        goto lbl_57
      end
    end
    L5_3 = "check_card"
    ::lbl_57::
    L4_3 = L4_3 .. L5_3
    L3_3 = L3_3(L4_3)
    L4_3 = GetEntityRotation
    L5_3 = L2_3
    L4_3 = L4_3(L5_3)
    if A0_3 then
      L5_3 = vector3
      L6_3 = L4_3.x
      L7_3 = L4_3.y
      L7_3 = L7_3 + 180
      L8_3 = L4_3.z
      L5_3 = L5_3(L6_3, L7_3, L8_3)
      L4_3 = L5_3
    end
    L5_3 = WaitSynchronizedSceneToReachTime
    L6_3 = L3_3
    L7_3 = L1_3
    L8_3 = 3000
    L9_3 = 500
    L5_3(L6_3, L7_3, L8_3, L9_3)
    L5_3 = IN_CASINO
    if L5_3 then
      L5_3 = L6_2.dealCardToChair
      if L5_3 then
        goto lbl_85
      end
    end
    do return end
    ::lbl_85::
    L5_3 = AttachEntityToEntity
    L6_3 = L2_3
    L7_3 = L6_2.ped
    L8_3 = GetPedBoneIndex
    L9_3 = L6_2.ped
    L10_3 = 28422
    L8_3 = L8_3(L9_3, L10_3)
    L9_3 = 0.0
    L10_3 = 0.0
    L11_3 = 0.0
    L12_3 = 0.0
    L13_3 = 0.0
    L14_3 = 0.0
    L15_3 = 0
    L16_3 = 0
    L17_3 = 0
    L18_3 = 1
    L19_3 = 2
    L20_3 = 1
    L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3)
    L6_2.attachedObject = L2_3
    L5_3 = WaitSynchronizedSceneToReachTime
    L6_3 = L3_3
    L7_3 = 0.45
    L8_3 = 3000
    L9_3 = 500
    L5_3(L6_3, L7_3, L8_3, L9_3)
    L5_3 = IN_CASINO
    if L5_3 then
      L5_3 = L6_2.dealCardToChair
      if L5_3 then
        goto lbl_119
      end
    end
    do return end
    ::lbl_119::
    if A0_3 then
      L5_3 = L6_2.bjPedSay
      L6_3 = "MINIGAME_DEALER_WINS"
      L5_3(L6_3)
    end
    L5_3 = DetachEntity
    L6_3 = L2_3
    L5_3(L6_3)
    L6_2.attachedObject = nil
    L5_3 = SetEntityRotation
    L6_3 = L2_3
    L7_3 = L4_3
    L5_3(L6_3, L7_3)
    L6_2.isBusy = false
  end
  L6_2.pedPeek = L8_2
  function L8_2(A0_3, A1_3, A2_3, A3_3, A4_3)
    local L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3
    L6_2.isBusy = true
    if not A3_3 then
      A3_3 = 0.9
    end
    L5_3 = nil
    L6_3 = L6_2.automated
    if not L6_3 and 1 == A2_3 then
      L5_3 = "vw_prop_vw_lux_card_01a"
      L6_3 = RequestModelAndWait
      L7_3 = L5_3
      L6_3(L7_3)
    else
      L6_3 = RequestModelAndWait
      L7_3 = A1_3
      L6_3(L7_3)
    end
    L6_3 = L6_2.createCard
    L7_3 = A0_3
    L8_3 = A1_3
    L9_3 = true
    L10_3 = 1
    L11_3 = A2_3
    L12_3 = L5_3
    L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
    L7_3 = table
    L7_3 = L7_3.insert
    L8_3 = L6_2.chairCards
    L8_3 = L8_3.dealer
    L8_3 = L8_3[1]
    L9_3 = L6_3
    L7_3(L8_3, L9_3)
    L6_3 = L6_3.entity
    L7_3 = L41_1
    L8_3 = A2_3
    L9_3 = 4
    L10_3 = 2
    L7_3, L8_3, L9_3 = L7_3(L8_3, L9_3, L10_3)
    L10_3 = GetObjectOffsetFromCoords
    L11_3 = L6_2.coords
    L12_3 = L6_2.heading
    L13_3 = L7_3
    L14_3 = L8_3
    L15_3 = L9_3
    L10_3 = L10_3(L11_3, L12_3, L13_3, L14_3, L15_3)
    L11_3 = L42_1
    L12_3 = A2_3
    L13_3 = 4
    L14_3 = 2
    L11_3 = L11_3(L12_3, L13_3, L14_3)
    if 1 == A2_3 then
      L12_3 = vector3
      L13_3 = L11_3.x
      L13_3 = L13_3 + 180
      L14_3 = L11_3.y
      L15_3 = L11_3.z
      L12_3 = L12_3(L13_3, L14_3, L15_3)
      L11_3 = L12_3
    end
    L12_3 = L6_2.rotation
    L12_3 = L12_3 + L11_3
    L13_3 = IsPedMale
    L14_3 = L6_2.ped
    L13_3 = L13_3(L14_3)
    if not L13_3 then
      L13_3 = "female_"
      if L13_3 then
        goto lbl_74
      end
    end
    L13_3 = ""
    ::lbl_74::
    if 1 == A2_3 then
      L14_3 = L13_3
      L15_3 = "deal_card_self"
      L14_3 = L14_3 .. L15_3
      L13_3 = L14_3
    elseif 2 == A2_3 then
      L14_3 = L13_3
      L15_3 = "deal_card_self_second_card"
      L14_3 = L14_3 .. L15_3
      L13_3 = L14_3
    elseif 3 == A2_3 then
      L14_3 = L13_3
      L15_3 = "deal_card_self_second_card"
      L14_3 = L14_3 .. L15_3
      L13_3 = L14_3
    elseif 4 == A2_3 then
      L14_3 = L13_3
      L15_3 = "deal_card_self_second_card"
      L14_3 = L14_3 .. L15_3
      L13_3 = L14_3
    else
      L14_3 = L13_3
      L15_3 = "deal_card_self_card_06"
      L14_3 = L14_3 .. L15_3
      L13_3 = L14_3
    end
    L14_3 = L6_2.pedAnimation
    L15_3 = L13_3
    L14_3 = L14_3(L15_3)
    if -2 == L14_3 then
      L15_3 = WaitTaskAnimToReachTime
      L16_3 = L6_2.ped
      L17_3 = L1_1
      L18_3 = L13_3
      L19_3 = 0.1
      L20_3 = 3000
      L21_3 = 500
      L15_3(L16_3, L17_3, L18_3, L19_3, L20_3, L21_3)
    else
      L15_3 = WaitSynchronizedSceneToReachTime
      L16_3 = L14_3
      L17_3 = 0.1
      L18_3 = 3000
      L19_3 = 500
      L15_3(L16_3, L17_3, L18_3, L19_3)
    end
    L15_3 = IN_CASINO
    if L15_3 then
      L15_3 = L6_2.dealCardToChair
      if L15_3 then
        goto lbl_133
      end
    end
    do return end
    ::lbl_133::
    L15_3 = AttachEntityToEntity
    L16_3 = L6_3
    L17_3 = L6_2.ped
    L18_3 = GetPedBoneIndex
    L19_3 = L6_2.ped
    L20_3 = 28422
    L18_3 = L18_3(L19_3, L20_3)
    L19_3 = 0.0
    L20_3 = 0.0
    L21_3 = 0.0
    L22_3 = 0.0
    L23_3 = 0.0
    L24_3 = 0.0
    L25_3 = 0
    L26_3 = 0
    L27_3 = 0
    L28_3 = 1
    L29_3 = 2
    L30_3 = 1
    L15_3(L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3)
    L6_2.attachedObject = L6_3
    if -2 == L14_3 then
      L15_3 = WaitTaskAnimToReachTime
      L16_3 = L6_2.ped
      L17_3 = L1_1
      L18_3 = L13_3
      L19_3 = 0.35
      L20_3 = 3000
      L21_3 = 500
      L15_3(L16_3, L17_3, L18_3, L19_3, L20_3, L21_3)
    else
      L15_3 = WaitSynchronizedSceneToReachTime
      L16_3 = L14_3
      L17_3 = 0.35
      L18_3 = 3000
      L19_3 = 500
      L15_3(L16_3, L17_3, L18_3, L19_3)
    end
    L15_3 = IN_CASINO
    if L15_3 then
      L15_3 = L6_2.dealCardToChair
      if L15_3 then
        goto lbl_178
      end
    end
    do return end
    ::lbl_178::
    L15_3 = DetachEntity
    L16_3 = L6_3
    L15_3(L16_3)
    L15_3 = IN_CASINO
    if not L15_3 then
      return
    end
    L6_2.attachedObject = nil
    if A4_3 then
      L15_3 = L6_2.calculateSum
      L16_3 = "dealer"
      L17_3 = 1
      L15_3 = L15_3(L16_3, L17_3)
      if "blackjack" == L15_3 then
        L16_3 = L6_2.bjPedSay
        L17_3 = "MINIGAME_BJACK_DEALER_BLACKJACK"
        L16_3(L17_3)
      elseif L15_3 > 0 and L15_3 <= 21 then
        L16_3 = L6_2.bjPedSayNumber
        L17_3 = L15_3
        L16_3(L17_3)
      elseif L15_3 > 21 then
        L16_3 = L6_2.bjPedSay
        L17_3 = "MINIGAME_DEALER_BUSTS"
        L16_3(L17_3)
      end
    end
    L15_3 = SetEntityCoordsNoOffset
    L16_3 = L6_3
    L17_3 = L10_3
    L15_3(L16_3, L17_3)
    L15_3 = FreezeEntityPosition
    L16_3 = L6_3
    L17_3 = true
    L15_3(L16_3, L17_3)
    L15_3 = SetEntityRotation
    L16_3 = L6_3
    L17_3 = L12_3
    L15_3(L16_3, L17_3)
    L6_2.isBusy = false
    if -2 == L14_3 then
      L15_3 = WaitTaskAnimToReachTime
      L16_3 = L6_2.ped
      L17_3 = L1_1
      L18_3 = L13_3
      L19_3 = A3_3
      L20_3 = 3000
      L21_3 = 0
      L15_3(L16_3, L17_3, L18_3, L19_3, L20_3, L21_3)
    else
      L15_3 = WaitSynchronizedSceneToReachTime
      L16_3 = L14_3
      L17_3 = A3_3
      L18_3 = 3000
      L19_3 = 0
      L15_3(L16_3, L17_3, L18_3, L19_3)
    end
  end
  L6_2.dealCardSelf = L8_2
  function L8_2()
    local L0_3, L1_3
    L6_2.pedFocusedOnChair = -1
    L6_2.pedFocusedOnHand = -1
  end
  L6_2.pedForgetFocus = L8_2
  function L8_2(A0_3, A1_3, A2_3, A3_3, A4_3, A5_3, A6_3, A7_3)
    local L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3
    if A4_3 > 6 then
      A4_3 = 6
      A5_3 = true
    end
    L6_2.isBusy = true
    if not A6_3 then
      A6_3 = 0.9
    end
    L8_3 = {}
    L9_3 = L6_2.pedFocusedOnChair
    L10_3 = L6_2.pedFocusedOnHand
    L8_3[1] = L9_3
    L8_3[2] = L10_3
    L9_3 = A0_3 - 1
    L10_3 = RequestModelAndWait
    L11_3 = A2_3
    L10_3(L11_3)
    L10_3 = L6_2.createCard
    L11_3 = A1_3
    L12_3 = A2_3
    L10_3 = L10_3(L11_3, L12_3)
    L11_3 = table
    L11_3 = L11_3.insert
    L12_3 = L6_2.chairCards
    L12_3 = L12_3[A0_3]
    L12_3 = L12_3[A3_3]
    L13_3 = L10_3
    L11_3(L12_3, L13_3)
    L10_3 = L10_3.entity
    L11_3 = "deal_card_player_0"
    L12_3 = A0_3
    L11_3 = L11_3 .. L12_3
    L12_3 = 2 == A3_3 or 1 == A3_3 and A4_3 > 2
    if L12_3 then
      if 1 == A3_3 then
        L13_3 = "hit_card_player_0"
        L14_3 = A0_3
        L13_3 = L13_3 .. L14_3
        L11_3 = L13_3
      else
        L13_3 = "hit_second_card_player_0"
        L14_3 = A0_3
        L13_3 = L13_3 .. L14_3
        L11_3 = L13_3
      end
    end
    L13_3 = IsPedMale
    L14_3 = L6_2.ped
    L13_3 = L13_3(L14_3)
    if not L13_3 then
      L13_3 = "female_"
      if L13_3 then
        goto lbl_64
      end
    end
    L13_3 = ""
    ::lbl_64::
    L14_3 = L11_3
    L13_3 = L13_3 .. L14_3
    L11_3 = L13_3
    L13_3 = L42_1
    L14_3 = A4_3
    L15_3 = L9_3
    L16_3 = A3_3
    L13_3 = L13_3(L14_3, L15_3, L16_3)
    if A5_3 then
      L14_3 = vector3
      L15_3 = L13_3.x
      L16_3 = L13_3.y
      L17_3 = L13_3.z
      L17_3 = L17_3 + 90
      L14_3 = L14_3(L15_3, L16_3, L17_3)
      L13_3 = L14_3
    end
    L14_3 = L41_1
    L15_3 = A4_3
    L16_3 = L9_3
    L17_3 = A3_3
    L14_3, L15_3, L16_3 = L14_3(L15_3, L16_3, L17_3)
    L17_3 = GetObjectOffsetFromCoords
    L18_3 = L6_2.coords
    L19_3 = L6_2.heading
    L20_3 = L14_3
    L21_3 = L15_3
    L22_3 = L16_3
    L17_3 = L17_3(L18_3, L19_3, L20_3, L21_3, L22_3)
    L18_3 = L6_2.pedAnimation
    L19_3 = L11_3
    L18_3 = L18_3(L19_3)
    L19_3 = IsPedMale
    L20_3 = L6_2.ped
    L19_3 = L19_3(L20_3)
    if L19_3 then
      L19_3 = 0.37
      if L19_3 then
        goto lbl_106
      end
    end
    L19_3 = 0.4
    ::lbl_106::
    if 4 == A0_3 then
      L19_3 = 0.41
    elseif 3 == A0_3 then
      L19_3 = 0.37
    elseif 2 == A0_3 then
      L19_3 = 0.35
    elseif 1 == A0_3 then
      L19_3 = 0.33
    end
    if -2 == L18_3 then
      L20_3 = WaitTaskAnimToReachTime
      L21_3 = L6_2.ped
      L22_3 = L1_1
      L23_3 = L11_3
      L24_3 = 0.2
      L25_3 = 2000
      L26_3 = 500
      L20_3(L21_3, L22_3, L23_3, L24_3, L25_3, L26_3)
    else
      L20_3 = WaitSynchronizedSceneToReachTime
      L21_3 = L18_3
      L22_3 = 0.15
      L23_3 = 2000
      L24_3 = 500
      L20_3(L21_3, L22_3, L23_3, L24_3)
    end
    L20_3 = IN_CASINO
    if L20_3 then
      L20_3 = L6_2.dealCardToChair
      if L20_3 then
        goto lbl_145
      end
    end
    do return end
    ::lbl_145::
    L20_3 = AttachEntityToEntity
    L21_3 = L10_3
    L22_3 = L6_2.ped
    L23_3 = GetPedBoneIndex
    L24_3 = L6_2.ped
    L25_3 = 28422
    L23_3 = L23_3(L24_3, L25_3)
    L24_3 = 0.0
    L25_3 = 0.0
    L26_3 = 0.0
    L27_3 = 0.0
    L28_3 = 0.0
    L29_3 = 0.0
    L30_3 = 0
    L31_3 = 0
    L32_3 = 0
    L33_3 = 1
    L34_3 = 2
    L35_3 = 1
    L20_3(L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3)
    L6_2.attachedObject = L10_3
    L20_3 = false
    if -2 == L18_3 then
      L21_3 = WaitTaskAnimToReachTime
      L22_3 = L6_2.ped
      L23_3 = L1_1
      L24_3 = L11_3
      L25_3 = L19_3
      L26_3 = 500
      L27_3 = 500
      L21_3 = L21_3(L22_3, L23_3, L24_3, L25_3, L26_3, L27_3)
      L20_3 = L21_3
    else
      L21_3 = WaitSynchronizedSceneToReachTime
      L22_3 = L18_3
      L23_3 = L19_3
      L24_3 = 500
      L25_3 = 500
      L21_3 = L21_3(L22_3, L23_3, L24_3, L25_3)
      L20_3 = L21_3
    end
    L21_3 = IN_CASINO
    if L21_3 then
      L21_3 = L6_2.dealCardToChair
      if L21_3 then
        goto lbl_193
      end
    end
    do return end
    ::lbl_193::
    L21_3 = DetachEntity
    L22_3 = L10_3
    L21_3(L22_3)
    L6_2.attachedObject = nil
    L21_3 = L6_2.calculateSum
    L22_3 = A0_3
    L23_3 = A3_3
    L21_3 = L21_3(L22_3, L23_3)
    if "blackjack" == L21_3 then
      L22_3 = L6_2.bjPedSay
      L23_3 = "MINIGAME_BJACK_DEALER_BLACKJACK"
      L22_3(L23_3)
    elseif L21_3 > 0 and L21_3 <= 21 then
      L22_3 = L6_2.bjPedSayNumber
      L23_3 = L21_3
      L22_3(L23_3)
    elseif L21_3 > 21 then
      L22_3 = L6_2.bjPedSay
      L23_3 = "MINIGAME_BJACK_DEALER_PLAYER_BUST"
      L22_3(L23_3)
    end
    L22_3 = SetEntityCoordsNoOffset
    L23_3 = L10_3
    L24_3 = L17_3
    L22_3(L23_3, L24_3)
    L22_3 = SetEntityRotation
    L23_3 = L10_3
    L24_3 = L6_2.rotation
    L24_3 = L24_3 + L13_3
    L22_3(L23_3, L24_3)
    if -2 == L18_3 then
      L22_3 = WaitTaskAnimToReachTime
      L23_3 = L6_2.ped
      L24_3 = L1_1
      L25_3 = L11_3
      L26_3 = A6_3
      L27_3 = 3000
      L28_3 = 500
      L22_3(L23_3, L24_3, L25_3, L26_3, L27_3, L28_3)
    else
      L22_3 = WaitSynchronizedSceneToReachTime
      L23_3 = L18_3
      L24_3 = A6_3
      L25_3 = 3000
      L26_3 = 500
      L22_3(L23_3, L24_3, L25_3, L26_3)
    end
    L22_3 = IN_CASINO
    if L22_3 then
      L22_3 = L6_2.dealCardToChair
      if L22_3 then
        goto lbl_254
      end
    end
    do return end
    ::lbl_254::
    if L20_3 and not A5_3 and not A7_3 then
      L22_3 = L8_3[1]
      L23_3 = L6_2.pedFocusedOnChair
      if L22_3 == L23_3 then
        L22_3 = L8_3[2]
        L23_3 = L6_2.pedFocusedOnHand
        if L22_3 == L23_3 then
        end
      end
    end
    L6_2.isBusy = false
    return L12_3
  end
  L6_2.dealCardToChair = L8_2
  function L8_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L2_3 = IN_CASINO
    if L2_3 then
      L2_3 = L6_2.dealCardToChair
      if L2_3 then
        goto lbl_8
      end
    end
    do return end
    ::lbl_8::
    if A0_3 then
      L2_3 = L6_2.bjPedSay
      L3_3 = "MINIGAME_DEALER_WINS"
      L2_3(L3_3)
    end
    L2_3 = IsPedMale
    L3_3 = L6_2.ped
    L2_3 = L2_3(L3_3)
    if L2_3 then
      L2_3 = "reaction_impartial_var_0"
      L3_3 = RandomNumber
      L4_3 = 1
      L5_3 = 4
      L3_3 = L3_3(L4_3, L5_3)
      L2_3 = L2_3 .. L3_3
      if L2_3 then
        goto lbl_32
      end
    end
    L2_3 = "female_dealer_reaction_impartial_var0"
    L3_3 = RandomNumber
    L4_3 = 1
    L5_3 = 3
    L3_3 = L3_3(L4_3, L5_3)
    L2_3 = L2_3 .. L3_3
    ::lbl_32::
    if 0 == A1_3 then
      L3_3 = IsPedMale
      L4_3 = L6_2.ped
      L3_3 = L3_3(L4_3)
      if L3_3 then
        L3_3 = "reaction_bad_var_0"
        L4_3 = RandomNumber
        L5_3 = 1
        L6_3 = 4
        L4_3 = L4_3(L5_3, L6_3)
        L3_3 = L3_3 .. L4_3
        L2_3 = L3_3 or L2_3
      end
      if not L3_3 then
        L3_3 = "female_dealer_reaction_bad_var0"
        L4_3 = RandomNumber
        L5_3 = 1
        L6_3 = 4
        L4_3 = L4_3(L5_3, L6_3)
        L3_3 = L3_3 .. L4_3
        L2_3 = L3_3
      end
    elseif 1 == A1_3 or 2 == A1_3 then
      L3_3 = IsPedMale
      L4_3 = L6_2.ped
      L3_3 = L3_3(L4_3)
      if L3_3 then
        L3_3 = "reaction_good_var_0"
        L4_3 = RandomNumber
        L5_3 = 1
        L6_3 = 3
        L4_3 = L4_3(L5_3, L6_3)
        L3_3 = L3_3 .. L4_3
        if L3_3 then
          goto lbl_79
          L2_3 = L3_3 or L2_3
        end
      end
      L3_3 = "female_dealer_reaction_good_var0"
      L4_3 = RandomNumber
      L5_3 = 1
      L6_3 = 4
      L4_3 = L4_3(L5_3, L6_3)
      L3_3 = L3_3 .. L4_3
      L2_3 = L3_3
    end
    ::lbl_79::
    L3_3 = L6_2.pedAnimation
    L4_3 = L2_3
    L5_3 = L2_1
    L6_3 = false
    function L7_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = L6_2.pedAnimation
      L1_4 = L6_2.pedGetRandomIdleAnimation
      L1_4 = L1_4()
      L2_4 = L2_1
      L3_4 = true
      L0_4(L1_4, L2_4, L3_4)
    end
    L8_3 = 6000
    L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
  end
  L6_2.pedFinalReaction = L8_2
  function L8_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    if "MINIGAME_DEALER_PLACE_BET" == A0_3 then
      L1_3 = IsAnySpeechPlaying
      L2_3 = L6_2.ped
      L1_3 = L1_3(L2_3)
      if L1_3 then
        L1_3 = CreateThread
        function L2_3()
          local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4
          L0_4 = Wait
          L1_4 = 2500
          L0_4(L1_4)
          L0_4 = PlayPedAmbientSpeechWithVoiceNative
          L1_4 = L6_2.ped
          L2_4 = A0_3
          L3_4 = L6_2.pedVoice
          L4_4 = "SPEECH_PARAMS_FORCE_NORMAL"
          L5_4 = 0
          L0_4(L1_4, L2_4, L3_4, L4_4, L5_4)
        end
        L3_3 = "Dealer place bet ambient speech"
        L1_3(L2_3, L3_3)
        return
      end
    end
    L1_3 = StopCurrentPlayingAmbientSpeech
    L2_3 = L6_2.ped
    L1_3(L2_3)
    L1_3 = StopCurrentPlayingSpeech
    L2_3 = L6_2.ped
    L1_3(L2_3)
    L1_3 = PlayPedAmbientSpeechWithVoiceNative
    L2_3 = L6_2.ped
    L3_3 = A0_3
    L4_3 = L6_2.pedVoice
    L5_3 = "SPEECH_PARAMS_FORCE_NORMAL"
    L6_3 = 0
    L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
  end
  L6_2.bjPedSay = L8_2
  function L8_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L1_3 = StopCurrentPlayingSpeech
    L2_3 = L6_2.ped
    L1_3(L2_3)
    L1_3 = StopCurrentPlayingAmbientSpeech
    L2_3 = L6_2.ped
    L1_3(L2_3)
    L1_3 = PlayPedAmbientSpeechWithVoiceNative
    L2_3 = L6_2.ped
    L3_3 = "MINIGAME_BJACK_DEALER_"
    L4_3 = A0_3
    L3_3 = L3_3 .. L4_3
    L4_3 = L6_2.pedVoice
    L5_3 = "SPEECH_PARAMS_FORCE_NORMAL"
    L6_3 = 0
    L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
  end
  L6_2.bjPedSayNumber = L8_2
  function L8_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3
    L6_2.isBusy = true
    L1_3 = IsPedMale
    L2_3 = L6_2.ped
    L1_3 = L1_3(L2_3)
    if L1_3 then
      L1_3 = "retrieve_cards_player_0"
      if L1_3 then
        goto lbl_11
      end
    end
    L1_3 = "female_retrieve_cards_player_0"
    ::lbl_11::
    L2_3 = A0_3
    L1_3 = L1_3 .. L2_3
    if "dealer" == A0_3 then
      L2_3 = IsPedMale
      L3_3 = L6_2.ped
      L2_3 = L2_3(L3_3)
      if L2_3 then
        L2_3 = "retrieve_own_cards_and_remove"
        if L2_3 then
          goto lbl_24
          L1_3 = L2_3 or L1_3
        end
      end
      L1_3 = "female_retrieve_own_cards_and_remove"
    end
    ::lbl_24::
    L2_3 = nil
    L3_3 = {}
    L4_3 = 0.15
    if "dealer" == A0_3 then
      L5_3 = L6_2.pedAnimation
      L6_3 = L1_3
      L7_3 = L1_1
      L8_3 = false
      function L9_3()
        local L0_4, L1_4, L2_4, L3_4
        L0_4 = L6_2.pedAnimation
        L1_4 = L6_2.pedGetRandomIdleAnimation
        L1_4 = L1_4()
        L2_4 = L2_1
        L3_4 = true
        L0_4(L1_4, L2_4, L3_4)
      end
      L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3)
      L2_3 = L5_3
      if -2 ~= L2_3 then
        L5_3 = WaitSynchronizedSceneToReachTime
        L6_3 = L2_3
        L7_3 = L4_3
        L8_3 = 300
        L9_3 = 200
        L5_3(L6_3, L7_3, L8_3, L9_3)
      else
        L5_3 = WaitTaskAnimToReachTime
        L6_3 = L6_2.ped
        L7_3 = L1_1
        L8_3 = L1_3
        L9_3 = L4_3
        L10_3 = 2000
        L11_3 = 100
        L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
      end
      L5_3 = IN_CASINO
      if L5_3 then
        L5_3 = L6_2.dealCardToChair
        if L5_3 then
          goto lbl_61
        end
      end
      do return end
      ::lbl_61::
      L5_3 = L6_2.chairCards
      L5_3 = L5_3.dealer
      L5_3 = L5_3[1]
      if nil == L5_3 then
        goto lbl_225
      end
      L5_3 = L6_2.chairCards
      L5_3 = L5_3.dealer
      L5_3 = L5_3[1]
      L5_3 = #L5_3
      if not (L5_3 > 0) then
        goto lbl_225
      end
      L5_3 = pairs
      L6_3 = L6_2.chairCards
      L6_3 = L6_3.dealer
      L6_3 = L6_3[1]
      L5_3, L6_3, L7_3, L8_3 = L5_3(L6_3)
      for L9_3, L10_3 in L5_3, L6_3, L7_3, L8_3 do
        L4_3 = L4_3 + 0.01
        if -2 ~= L2_3 then
          L11_3 = WaitSynchronizedSceneToReachTime
          L12_3 = L2_3
          L13_3 = L4_3
          L14_3 = 1000
          L11_3(L12_3, L13_3, L14_3)
        else
          L11_3 = WaitTaskAnimToReachTime
          L12_3 = L6_2.ped
          L13_3 = L1_1
          L14_3 = L1_3
          L15_3 = L4_3
          L16_3 = 2000
          L17_3 = 100
          L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
        end
        L11_3 = IN_CASINO
        if L11_3 then
          L11_3 = L6_2.dealCardToChair
          if L11_3 then
            goto lbl_103
          end
        end
        do return end
        ::lbl_103::
        L11_3 = AttachEntityToEntity
        L12_3 = L10_3.entity
        L13_3 = L6_2.ped
        L14_3 = GetPedBoneIndex
        L15_3 = L6_2.ped
        L16_3 = 28422
        L14_3 = L14_3(L15_3, L16_3)
        L15_3 = 0.0
        L16_3 = 0.0
        L17_3 = 0.0
        L18_3 = 0.0
        L19_3 = 0.0
        L20_3 = 0.0
        L21_3 = 0
        L22_3 = 0
        L23_3 = 0
        L24_3 = 1
        L25_3 = 2
        L26_3 = 1
        L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3)
        L11_3 = table
        L11_3 = L11_3.insert
        L12_3 = L3_3
        L13_3 = L10_3
        L11_3(L12_3, L13_3)
      end
    else
      if 1 == A0_3 then
        L4_3 = 0.18
      elseif 2 == A0_3 then
        L4_3 = 0.2
      elseif 3 == A0_3 then
        L4_3 = 0.22
      elseif 4 == A0_3 then
        L4_3 = 0.24
      end
      L5_3 = L6_2.pedAnimation
      L6_3 = L1_3
      L5_3 = L5_3(L6_3)
      L2_3 = L5_3
      if -2 ~= L2_3 then
        L5_3 = WaitSynchronizedSceneToReachTime
        L6_3 = L2_3
        L7_3 = L4_3
        L8_3 = 3000
        L9_3 = 200
        L5_3(L6_3, L7_3, L8_3, L9_3)
      else
        L5_3 = WaitTaskAnimToReachTime
        L6_3 = L6_2.ped
        L7_3 = L1_1
        L8_3 = L1_3
        L9_3 = L4_3
        L10_3 = 3000
        L11_3 = 200
        L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
      end
      L5_3 = IN_CASINO
      if L5_3 then
        L5_3 = L6_2.dealCardToChair
        if L5_3 then
          goto lbl_175
        end
      end
      do return end
      ::lbl_175::
      L5_3 = 2
      L6_3 = 1
      L7_3 = -1
      for L8_3 = L5_3, L6_3, L7_3 do
        L9_3 = L6_2.chairCards
        L9_3 = L9_3[A0_3]
        L9_3 = L9_3[L8_3]
        if nil ~= L9_3 then
          L9_3 = L6_2.chairCards
          L9_3 = L9_3[A0_3]
          L9_3 = L9_3[L8_3]
          L9_3 = #L9_3
          if L9_3 > 0 then
            L9_3 = pairs
            L10_3 = L6_2.chairCards
            L10_3 = L10_3[A0_3]
            L10_3 = L10_3[L8_3]
            L9_3, L10_3, L11_3, L12_3 = L9_3(L10_3)
            for L13_3, L14_3 in L9_3, L10_3, L11_3, L12_3 do
              L15_3 = AttachEntityToEntity
              L16_3 = L14_3.entity
              L17_3 = L6_2.ped
              L18_3 = GetPedBoneIndex
              L19_3 = L6_2.ped
              L20_3 = 28422
              L18_3 = L18_3(L19_3, L20_3)
              L19_3 = 0.0
              L20_3 = 0.0
              L21_3 = 0.0
              L22_3 = 0.0
              L23_3 = 0.0
              L24_3 = 0.0
              L25_3 = 0
              L26_3 = 0
              L27_3 = 0
              L28_3 = 1
              L29_3 = 2
              L30_3 = 1
              L15_3(L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3)
              L15_3 = table
              L15_3 = L15_3.insert
              L16_3 = L3_3
              L17_3 = L14_3
              L15_3(L16_3, L17_3)
            end
          end
        end
      end
    end
    ::lbl_225::
    if -2 ~= L2_3 then
      L5_3 = WaitSynchronizedSceneToReachTime
      L6_3 = L2_3
      L7_3 = 0.53
      L8_3 = 3000
      L9_3 = 200
      L5_3(L6_3, L7_3, L8_3, L9_3)
    else
      L5_3 = WaitTaskAnimToReachTime
      L6_3 = L6_2.ped
      L7_3 = L1_1
      L8_3 = L1_3
      L9_3 = 0.53
      L10_3 = 3000
      L11_3 = 200
      L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
    end
    L5_3 = IN_CASINO
    if L5_3 then
      L5_3 = L6_2.dealCardToChair
      if L5_3 then
        goto lbl_249
      end
    end
    do return end
    ::lbl_249::
    L6_2.isBusy = false
    L5_3 = pairs
    L6_3 = L3_3
    L5_3, L6_3, L7_3, L8_3 = L5_3(L6_3)
    for L9_3, L10_3 in L5_3, L6_3, L7_3, L8_3 do
      L11_3 = ForceDeleteEntity
      L12_3 = L10_3.entity
      L11_3(L12_3)
    end
    if -2 ~= L2_3 then
      L5_3 = WaitSynchronizedSceneToReachTime
      L6_3 = L2_3
      L7_3 = 0.75
      L8_3 = 3000
      L9_3 = 200
      L5_3(L6_3, L7_3, L8_3, L9_3)
    else
      L5_3 = WaitTaskAnimToReachTime
      L6_3 = L6_2.ped
      L7_3 = L1_1
      L8_3 = L1_3
      L9_3 = 0.75
      L10_3 = 3000
      L11_3 = 200
      L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
    end
  end
  L6_2.pedCollectCards = L8_2
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L0_3 = nil
    L1_3 = IsPedMale
    L2_3 = L6_2.ped
    L1_3 = L1_3(L2_3)
    if L1_3 then
      L1_3 = {}
      L2_3 = "idle"
      L3_3 = "idle_var_01"
      L4_3 = "idle_var_02"
      L5_3 = "idle_var_03"
      L6_3 = "idle_var_04"
      L7_3 = "idle_var_05"
      L1_3[1] = L2_3
      L1_3[2] = L3_3
      L1_3[3] = L4_3
      L1_3[4] = L5_3
      L1_3[5] = L6_3
      L1_3[6] = L7_3
      L0_3 = L1_3
    else
      L1_3 = {}
      L2_3 = "female_idle"
      L3_3 = "female_idle_var_01"
      L4_3 = "female_idle_var_02"
      L5_3 = "female_idle_var_03"
      L6_3 = "female_idle_var_04"
      L7_3 = "female_idle_var_05"
      L8_3 = "female_idle_var_06"
      L9_3 = "female_idle_var_07"
      L10_3 = "female_idle_var_08"
      L1_3[1] = L2_3
      L1_3[2] = L3_3
      L1_3[3] = L4_3
      L1_3[4] = L5_3
      L1_3[5] = L6_3
      L1_3[6] = L7_3
      L1_3[7] = L8_3
      L1_3[8] = L9_3
      L1_3[9] = L10_3
      L0_3 = L1_3
    end
    L1_3 = GetRandomItem
    L2_3 = L0_3
    return L1_3(L2_3)
  end
  L6_2.pedGetRandomIdleAnimation = L8_2
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L0_3 = RequestAnimDictAndWait
    L1_3 = L2_1
    L0_3(L1_3)
    L0_3 = L6_2.pedGetRandomIdleAnimation
    L0_3 = L0_3()
    L1_3 = TaskPlayAnim
    L2_3 = L6_2.ped
    L3_3 = L2_1
    L4_3 = L0_3
    L5_3 = 3.0
    L6_3 = 3.0
    L7_3 = -1
    L8_3 = 1
    L9_3 = 0
    L10_3 = true
    L11_3 = true
    L12_3 = true
    L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
    L1_3 = PlayFacialAnim
    L2_3 = L6_2.ped
    L3_3 = L0_3
    L4_3 = "_facial"
    L3_3 = L3_3 .. L4_3
    L4_3 = L2_1
    L1_3(L2_3, L3_3, L4_3)
  end
  L6_2.pedIdle = L8_2
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L0_3 = pairs
    L1_3 = L6_2.allCards
    L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
    for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
      L6_3 = ForceDeleteEntity
      L7_3 = L5_3.entity
      L6_3(L7_3)
    end
    L0_3 = 1
    L1_3 = 4
    L2_3 = 1
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = pairs
      L5_3 = L6_2.chairChips
      L5_3 = L5_3[L3_3]
      L4_3, L5_3, L6_3, L7_3 = L4_3(L5_3)
      for L8_3, L9_3 in L4_3, L5_3, L6_3, L7_3 do
        L10_3 = ForceDeleteEntity
        L11_3 = L9_3
        L10_3(L11_3)
      end
      L4_3 = L6_2.chairChips
      L5_3 = {}
      L4_3[L3_3] = L5_3
    end
    L0_3 = {}
    L6_2.allCards = L0_3
    L0_3 = {}
    L6_2.chairCards = L0_3
    L0_3 = {}
    L6_2.chairChips = L0_3
    L0_3 = 1
    L1_3 = 4
    L2_3 = 1
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = L6_2.chairCards
      L5_3 = {}
      L4_3[L3_3] = L5_3
      L4_3 = L6_2.chairCards
      L4_3 = L4_3[L3_3]
      L5_3 = {}
      L4_3[1] = L5_3
      L4_3 = L6_2.chairCards
      L4_3 = L4_3[L3_3]
      L5_3 = {}
      L4_3[2] = L5_3
      L4_3 = L6_2.chairChips
      L5_3 = {}
      L4_3[L3_3] = L5_3
    end
    L0_3 = L6_2.chairCards
    L1_3 = {}
    L0_3.dealer = L1_3
    L0_3 = L6_2.chairCards
    L0_3 = L0_3.dealer
    L1_3 = {}
    L0_3[1] = L1_3
    L0_3 = L6_2.createCardPile
    L0_3()
  end
  L6_2.deleteRoundObjects = L8_2
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = pairs
    L1_3 = L6_2.allCards
    L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
    for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
      L6_3 = ForceDeleteEntity
      L7_3 = L5_3.entity
      L6_3(L7_3)
    end
    L0_3 = {}
    L6_2.allCards = L0_3
    L0_3 = 1
    L1_3 = 4
    L2_3 = 1
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = L6_2.chairCards
      L5_3 = {}
      L4_3[L3_3] = L5_3
      L4_3 = L6_2.chairCards
      L4_3 = L4_3[L3_3]
      L5_3 = {}
      L4_3[1] = L5_3
      L4_3 = L6_2.chairCards
      L4_3 = L4_3[L3_3]
      L5_3 = {}
      L4_3[2] = L5_3
    end
    L0_3 = L6_2.chairCards
    L1_3 = {}
    L0_3.dealer = L1_3
    L0_3 = L6_2.chairCards
    L0_3 = L0_3.dealer
    L1_3 = {}
    L0_3[1] = L1_3
  end
  L6_2.deleteAllCards = L8_2
  function L8_2(A0_3, A1_3, A2_3, A3_3)
    local L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3
    L4_3 = PokerGetChipModel
    L5_3 = A3_3
    L4_3, L5_3 = L4_3(L5_3)
    L6_3 = RequestModelAndWait
    L7_3 = L4_3
    L6_3(L7_3)
    L6_3 = 0.034
    L7_3 = 0.081
    L8_3 = L6_2.heading
    L8_3 = L8_3 - 23
    if 1 == A1_3 then
      L9_3 = 1
      if L9_3 then
        goto lbl_18
      end
    end
    L9_3 = 3
    ::lbl_18::
    if A2_3 then
      L9_3 = L9_3 + 1
    end
    if 2 == A0_3 then
      L6_3 = 0.071
      L7_3 = 0.044
      L8_3 = L8_3 - 45
    elseif 3 == A0_3 then
      L6_3 = 0.088
      L7_3 = -0.015
      L8_3 = L8_3 - 90
    elseif 4 == A0_3 then
      L6_3 = 0.044
      L7_3 = -0.07
      L8_3 = L8_3 + 45
    end
    L10_3 = vector3
    L11_3 = L9_3 - 1
    L11_3 = L6_3 * L11_3
    L12_3 = L9_3 - 1
    L12_3 = L7_3 * L12_3
    L13_3 = 0.0
    L10_3 = L10_3(L11_3, L12_3, L13_3)
    if L9_3 > 1 then
      L11_3 = L9_3 - 1
      L11_3 = 2 * L11_3
      L8_3 = L8_3 + L11_3
    end
    if L9_3 > 2 then
      L11_3 = vector3
      L12_3 = -L6_3
      L12_3 = L12_3 / 7
      L13_3 = L9_3 - 2
      L12_3 = L12_3 * L13_3
      L13_3 = -L7_3
      L13_3 = L13_3 / 7
      L14_3 = L9_3 - 2
      L13_3 = L13_3 * L14_3
      L14_3 = 0
      L11_3 = L11_3(L12_3, L13_3, L14_3)
      L10_3 = L10_3 + L11_3
    end
    L11_3 = GetObjectOffsetFromCoords
    L12_3 = L6_2.coords
    L12_3 = L12_3.x
    L13_3 = L6_2.coords
    L13_3 = L13_3.y
    L14_3 = L6_2.coords
    L14_3 = L14_3.z
    L15_3 = L6_2.heading
    L16_3 = L40_1
    L17_3 = A0_3
    L16_3 = L16_3(L17_3)
    L16_3 = L16_3 + L10_3
    L17_3 = 0.0
    L11_3 = L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
    if 0 ~= L5_3 then
      L12_3 = math
      L12_3 = L12_3.floor
      L13_3 = A3_3 / L5_3
      L12_3 = L12_3(L13_3)
      L13_3 = 5000
      if A3_3 < L13_3 then
        L13_3 = vector3
        L14_3 = 0.0
        L15_3 = 0.0
        L16_3 = 0.061
        L13_3 = L13_3(L14_3, L15_3, L16_3)
        L11_3 = L11_3 - L13_3
        L13_3 = vector3
        L14_3 = 0.0
        L15_3 = 0.0
        L16_3 = L12_3 * 0.005
        L13_3 = L13_3(L14_3, L15_3, L16_3)
        L11_3 = L11_3 + L13_3
      else
        L13_3 = vector3
        L14_3 = 0.0
        L15_3 = 0.0
        L16_3 = 0.0645
        L13_3 = L13_3(L14_3, L15_3, L16_3)
        L11_3 = L11_3 - L13_3
        L13_3 = L12_3 * 0.0065
        if -1204079456 == L4_3 then
          L14_3 = 0.13
          if L13_3 >= L14_3 then
            L13_3 = 0.058
          end
        end
        L14_3 = vector3
        L15_3 = 0.0
        L16_3 = 0.0
        L17_3 = L13_3
        L14_3 = L14_3(L15_3, L16_3, L17_3)
        L11_3 = L11_3 + L14_3
      end
    end
    L12_3 = CreateObjectNoOffset
    L13_3 = L4_3
    L14_3 = L11_3
    L15_3 = false
    L16_3 = false
    L17_3 = false
    L12_3 = L12_3(L13_3, L14_3, L15_3, L16_3, L17_3)
    L13_3 = SetEntityHeading
    L14_3 = L12_3
    L15_3 = L8_3
    L13_3(L14_3, L15_3)
    L13_3 = table
    L13_3 = L13_3.insert
    L14_3 = L6_2.chairChips
    L14_3 = L14_3[1]
    L15_3 = L12_3
    L13_3(L14_3, L15_3)
  end
  L6_2.createChipsOnChair = L8_2
  function L8_2()
    local L0_3, L1_3
    L0_3 = RequestAnimDictAndWait
    L1_3 = L1_1
    L0_3(L1_3)
    L0_3 = RequestAnimDictAndWait
    L1_3 = L2_1
    L0_3(L1_3)
  end
  L6_2.pedEnsureDictionary = L8_2
  function L8_2(A0_3, A1_3, A2_3, A3_3, A4_3, A5_3)
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
  L6_2.automatePedAnimation = L8_2
  function L8_2(A0_3)
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
    L7_3 = L4_1
    L8_3 = L2_3
    L9_3 = true
    L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
  end
  L6_2.automateMakeIdle = L8_2
  function L8_2()
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
  L6_2.automateEveryoneIdle = L8_2
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = RandomNumber
    L1_3 = 1
    L2_3 = PokerCardModels
    L2_3 = #L2_3
    L0_3 = L0_3(L1_3, L2_3)
    L1_3 = PokerCardModels
    L1_3 = L1_3[L0_3]
    L2_3 = L0_3
    L3_3 = L1_3
    return L2_3, L3_3
  end
  L6_2.automateGetCard = L8_2
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3
    L0_3 = L6_2.pedEnsureDictionary
    L0_3()
    L0_3 = RequestAnimDictAndWait
    L1_3 = L3_1
    L0_3(L1_3)
    L0_3 = Wait
    L1_3 = RandomNumber
    L2_3 = 300
    L3_3 = 3000
    L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3 = L1_3(L2_3, L3_3)
    L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3)
    L0_3 = {}
    L1_3 = 0
    L2_3 = {}
    L3_3 = 0
    L4_3 = 0
    L5_3 = 0
    L6_3 = 0
    L2_3[1] = L3_3
    L2_3[2] = L4_3
    L2_3[3] = L5_3
    L2_3[4] = L6_3
    L3_3 = {}
    L4_3 = 1
    L5_3 = 5
    L6_3 = 1
    for L7_3 = L4_3, L5_3, L6_3 do
      L8_3 = {}
      L9_3 = RandomNumber
      L10_3 = 1
      L11_3 = 52
      L9_3 = L9_3(L10_3, L11_3)
      L10_3 = RandomNumber
      L11_3 = 1
      L12_3 = 52
      L10_3 = L10_3(L11_3, L12_3)
      L11_3 = RandomNumber
      L12_3 = 1
      L13_3 = 52
      L11_3 = L11_3(L12_3, L13_3)
      L12_3 = RandomNumber
      L13_3 = 1
      L14_3 = 52
      L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3 = L12_3(L13_3, L14_3)
      L8_3[1] = L9_3
      L8_3[2] = L10_3
      L8_3[3] = L11_3
      L8_3[4] = L12_3
      L8_3[5] = L13_3
      L8_3[6] = L14_3
      L8_3[7] = L15_3
      L8_3[8] = L16_3
      L8_3[9] = L17_3
      L8_3[10] = L18_3
      L8_3[11] = L19_3
      L8_3[12] = L20_3
      L8_3[13] = L21_3
      L8_3[14] = L22_3
      L8_3[15] = L23_3
      L8_3[16] = L24_3
      L0_3[L7_3] = L8_3
    end
    L4_3 = 1
    L5_3 = 4
    L6_3 = 1
    for L7_3 = L4_3, L5_3, L6_3 do
      L8_3 = CreateThread
      function L9_3()
        local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4
        L0_4 = Wait
        L1_4 = RandomNumber
        L2_4 = 200
        L3_4 = 3000
        L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4 = L1_4(L2_4, L3_4)
        L0_4(L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4)
        L0_4 = L6_2.ambientPeds
        if not L0_4 then
          return
        end
        L1_4 = L7_3
        L0_4 = L2_3
        L2_4 = RandomNumber
        L3_4 = 10
        L4_4 = 500
        L2_4 = L2_4(L3_4, L4_4)
        L0_4[L1_4] = L2_4
        L0_4 = L61_1
        L1_4 = L6_2.ambientPeds
        L2_4 = L7_3
        L1_4 = L1_4[L2_4]
        L2_4 = L6_2
        L3_4 = L7_3
        L4_4 = 1
        L5_4 = false
        L7_4 = L7_3
        L6_4 = L2_3
        L6_4 = L6_4[L7_4]
        L7_4 = true
        L0_4(L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4)
        L0_4 = L1_3
        L0_4 = L0_4 + 1
        L1_3 = L0_4
        L0_4 = Wait
        L1_4 = 2000
        L0_4(L1_4)
        L0_4 = L6_2.automateMakeIdle
        if L0_4 then
          L0_4 = L6_2.automateMakeIdle
          L1_4 = L7_3
          L0_4(L1_4)
        end
      end
      L10_3 = "blackjack play ped bet animation"
      L8_3(L9_3, L10_3)
    end
    while true do
      L4_3 = IN_CASINO
      if not (L4_3 and L1_3 < 4) then
        break
      end
      L4_3 = Wait
      L5_3 = 100
      L4_3(L5_3)
    end
    L4_3 = IN_CASINO
    if L4_3 then
      L4_3 = L6_2.bjPedSay
      if L4_3 then
        goto lbl_75
      end
    end
    do return end
    ::lbl_75::
    L4_3 = L6_2.bjPedSay
    L5_3 = "MINIGAME_DEALER_CLOSED_BETS"
    L4_3(L5_3)
    L4_3 = Wait
    L5_3 = 1500
    L4_3(L5_3)
    L4_3 = 1
    L5_3 = 4
    L6_3 = 1
    for L7_3 = L4_3, L5_3, L6_3 do
      L8_3 = {}
      L3_3[L7_3] = L8_3
      L8_3 = L6_2.automateGetCard
      L8_3, L9_3 = L8_3()
      L10_3 = table
      L10_3 = L10_3.insert
      L11_3 = L3_3[L7_3]
      L12_3 = L8_3
      L10_3(L11_3, L12_3)
      L10_3 = L6_2.dealCardToChair
      L11_3 = L7_3
      L12_3 = L8_3
      L13_3 = L9_3
      L14_3 = 1
      L15_3 = 1
      L16_3 = false
      L17_3 = 0.45
      L18_3 = true
      L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
    end
    L4_3 = L6_2.automateGetCard
    L4_3, L5_3 = L4_3()
    L6_3 = L6_2.dealCardSelf
    L7_3 = L4_3
    L8_3 = L5_3
    L9_3 = 1
    L10_3 = 0.5
    L11_3 = false
    L6_3(L7_3, L8_3, L9_3, L10_3, L11_3)
    L6_3 = 1
    L7_3 = 4
    L8_3 = 1
    for L9_3 = L6_3, L7_3, L8_3 do
      L10_3 = L6_2.automateGetCard
      L10_3, L11_3 = L10_3()
      L12_3 = table
      L12_3 = L12_3.insert
      L13_3 = L3_3[L9_3]
      L14_3 = L10_3
      L12_3(L13_3, L14_3)
      L12_3 = L6_2.dealCardToChair
      L13_3 = L9_3
      L14_3 = L10_3
      L15_3 = L11_3
      L16_3 = 1
      L17_3 = 2
      L18_3 = false
      L19_3 = 0.45
      L20_3 = true
      L12_3(L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3)
    end
    L6_3 = L6_2.dealCardSelf
    L7_3 = L4_3
    L8_3 = L5_3
    L9_3 = 2
    L10_3 = 0.5
    L11_3 = false
    L6_3(L7_3, L8_3, L9_3, L10_3, L11_3)
    L6_3 = L6_2.pedIdle
    L6_3()
    L6_3 = Wait
    L7_3 = 1000
    L6_3(L7_3)
    L6_2.pedWasFocusingBefore = false
    L6_3 = 1
    L7_3 = 4
    L8_3 = 1
    for L9_3 = L6_3, L7_3, L8_3 do
      L10_3 = L6_2.calculateSum
      L11_3 = L9_3
      L12_3 = 1
      L10_3 = L10_3(L11_3, L12_3)
      if "blackjack" ~= L10_3 then
        L11_3 = L6_2.pedFocusPlayer
        L12_3 = L9_3
        L13_3 = 1
        L14_3 = 1
        L11_3(L12_3, L13_3, L14_3)
        L11_3 = Wait
        L12_3 = RandomNumber
        L13_3 = 1000
        L14_3 = 3000
        L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3 = L12_3(L13_3, L14_3)
        L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3)
        L11_3 = GetRandomItem
        L12_3 = {}
        L13_3 = "decline_card_001"
        L14_3 = "decline_card_alt1"
        L15_3 = "decline_card_alt2"
        L12_3[1] = L13_3
        L12_3[2] = L14_3
        L12_3[3] = L15_3
        L11_3 = L11_3(L12_3)
        L12_3 = GetRandomItem
        L13_3 = {}
        L14_3 = "request_card"
        L15_3 = "request_card_alt1"
        L16_3 = "request_card_alt2"
        L13_3[1] = L14_3
        L13_3[2] = L15_3
        L13_3[3] = L16_3
        L12_3 = L12_3(L13_3)
        L13_3 = RandomNumber
        L14_3 = 1
        L15_3 = 3
        L13_3 = L13_3(L14_3, L15_3)
        if 2 == L13_3 then
          L14_3 = L6_2.automatePedAnimation
          L15_3 = L9_3
          L16_3 = L6_2.chairPositions
          L16_3 = L16_3[L9_3]
          L16_3 = L16_3.coords
          L17_3 = L6_2.chairPositions
          L17_3 = L17_3[L9_3]
          L17_3 = L17_3.rotation
          L18_3 = L3_1
          L19_3 = L12_3
          L20_3 = false
          L14_3(L15_3, L16_3, L17_3, L18_3, L19_3, L20_3)
        else
          L14_3 = L6_2.automatePedAnimation
          L15_3 = L9_3
          L16_3 = L6_2.chairPositions
          L16_3 = L16_3[L9_3]
          L16_3 = L16_3.coords
          L17_3 = L6_2.chairPositions
          L17_3 = L17_3[L9_3]
          L17_3 = L17_3.rotation
          L18_3 = L3_1
          L19_3 = L11_3
          L20_3 = false
          L14_3(L15_3, L16_3, L17_3, L18_3, L19_3, L20_3)
        end
        L14_3 = Wait
        L15_3 = 1000
        L14_3(L15_3)
        L14_3 = L6_2.automateMakeIdle
        if not L14_3 then
          return
        end
        L14_3 = L6_2.automateMakeIdle
        L15_3 = L9_3
        L14_3(L15_3)
        if 2 == L13_3 then
          L14_3 = L6_2.automateGetCard
          L14_3, L15_3 = L14_3()
          L16_3 = table
          L16_3 = L16_3.insert
          L17_3 = L3_3[L9_3]
          L18_3 = L14_3
          L16_3(L17_3, L18_3)
          L16_3 = L6_2.dealCardToChair
          L17_3 = L9_3
          L18_3 = L14_3
          L19_3 = L15_3
          L20_3 = 1
          L21_3 = 3
          L22_3 = false
          L23_3 = 0.45
          L24_3 = true
          L16_3(L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3)
          L16_3 = L6_2.pedFocusPlayer
          L17_3 = L9_3
          L18_3 = 1
          L19_3 = 1
          L16_3(L17_3, L18_3, L19_3)
          L16_3 = Wait
          L17_3 = 3000
          L16_3(L17_3)
          L16_3 = L6_2.automatePedAnimation
          L17_3 = L9_3
          L18_3 = L6_2.chairPositions
          L18_3 = L18_3[L9_3]
          L18_3 = L18_3.coords
          L19_3 = L6_2.chairPositions
          L19_3 = L19_3[L9_3]
          L19_3 = L19_3.rotation
          L20_3 = L3_1
          L21_3 = L11_3
          L22_3 = false
          L16_3(L17_3, L18_3, L19_3, L20_3, L21_3, L22_3)
          L16_3 = Wait
          L17_3 = 1000
          L16_3(L17_3)
          L16_3 = L6_2.automateMakeIdle
          if not L16_3 then
            return
          end
          L16_3 = L6_2.automateMakeIdle
          L17_3 = L9_3
          L16_3(L17_3)
        end
      end
    end
    L6_3 = L6_2.pedTurnCard
    L6_3()
    L6_3 = 1
    L7_3 = 5
    L8_3 = 1
    for L9_3 = L6_3, L7_3, L8_3 do
      L10_3 = L6_2.calculateSum
      L11_3 = "dealer"
      L12_3 = 1
      L10_3 = L10_3(L11_3, L12_3)
      if "blackjack" == L10_3 or L10_3 >= 17 then
        break
      end
      L11_3 = L6_2.automateGetCard
      L11_3, L12_3 = L11_3()
      L13_3 = L6_2.dealCardSelf
      L14_3 = L11_3
      L15_3 = L12_3
      L16_3 = L9_3 + 2
      L17_3 = 0.5
      L18_3 = true
      L13_3(L14_3, L15_3, L16_3, L17_3, L18_3)
    end
    L6_3 = L6_2.pedIdle
    L6_3()
    L6_3 = Wait
    L7_3 = 2000
    L6_3(L7_3)
    L6_3 = 1
    L7_3 = 4
    L8_3 = 1
    for L9_3 = L6_3, L7_3, L8_3 do
      L10_3 = L6_2.pedCollectCards
      L11_3 = L9_3
      L10_3(L11_3)
    end
    L6_3 = L6_2.pedCollectCards
    L7_3 = "dealer"
    L6_3(L7_3)
    L6_3 = Wait
    L7_3 = 1000
    L6_3(L7_3)
    L6_3 = L6_2.deleteRoundObjects
    L6_3()
  end
  L6_2.automateRound = L8_2
  function L8_2()
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
    L2_3 = "Creating ped models for blackjack"
    L0_3(L1_3, L2_3)
  end
  L6_2.automate = L8_2
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = L6_2.cleanDirt
    L0_3()
    L0_3 = L6_2.deleteRoundObjects
    L0_3()
    L0_3 = ForceDeleteEntity
    L1_3 = L6_2.cardPileObject
    L1_3 = L1_3.entity
    L0_3(L1_3)
    L0_3 = DeletePed
    L1_3 = L6_2.ped
    L0_3(L1_3)
    L0_3 = L6_2.blackjackCamera
    if L0_3 then
      L0_3 = SetCamActive
      L1_3 = L6_2.blackjackCamera
      L2_3 = false
      L0_3(L1_3, L2_3)
      L0_3 = DestroyCam
      L1_3 = L6_2.blackjackCamera
      L2_3 = false
      L0_3(L1_3, L2_3)
    end
    L0_3 = L6_2.disableCamera
    L0_3()
    L0_3 = L6_2.keepTableObject
    if not L0_3 then
      L0_3 = ForceDeleteEntity
      L1_3 = L6_2.tableObject
      L0_3(L1_3)
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
  L6_2.destroy = L8_2
  L8_2 = L6_2.pedIdle
  L8_2()
  L8_2 = L6_2.createCardPile
  L8_2()
  L8_2 = L6_2.loadChairData
  L8_2()
  return L6_2
end
function L63_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
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
  L0_2 = GetMyPedNetworkId
  L0_2 = L0_2()
  if not L0_2 then
    return
  end
  L1_2 = L38_1
  L1_2()
  L1_2 = L11_1
  if nil == L1_2 then
    return
  end
  L1_2 = L11_1.getClosestChair
  L2_2 = GetPlayerPosition
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L2_2()
  L1_2, L2_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L3_2 = L11_1.chairPositions
  L3_2 = L3_2[L1_2]
  if nil == L3_2 then
    return
  end
  L4_2 = L23_1.MinimumBet
  L24_1 = L4_2
  L4_2 = BlockPlayerInteraction
  L5_2 = 2000
  L4_2(L5_2)
  LAST_STARTED_GAME_TYPE = "blackjack"
  L4_2 = IsPedMale
  L5_2 = PlayerPedId
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L5_2()
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L4_2 = 1 == L4_2
  L5_2 = TriggerServerEvent
  L6_2 = "Blackjack:Sit"
  L7_2 = L11_1.coords
  L8_2 = L1_2
  L9_2 = L11_1.color
  L10_2 = PLAYER_DRUNK_LEVEL
  L11_2 = 0.5
  L10_2 = L10_2 > L11_2
  L11_2 = IsPedMale
  L12_2 = PlayerPedId
  L12_2 = L12_2()
  L11_2 = L11_2(L12_2)
  L12_2 = L0_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end
function L64_1()
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
function L65_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = DebugStart
  L1_2 = "Blackjack_OnQuit"
  L0_2(L1_2)
  L0_2 = L13_1
  if L0_2 then
    L0_2 = Stats_EndActivity
    L0_2()
    L0_2 = CloseAllMenus
    L0_2()
    L0_2 = ClearMugshotCache
    L0_2()
    L0_2 = BlockPlayerInteraction
    L1_2 = 2000
    L0_2(L1_2)
    L0_2 = PushNUIInstructionalButtons
    L1_2 = nil
    L0_2(L1_2)
    L0_2 = RequestAnimDictAndWait
    L1_2 = L4_1
    L0_2(L1_2)
    L0_2 = GetRandomItem
    L1_2 = {}
    L2_2 = "sit_exit_left"
    L3_2 = "sit_exit_right"
    L1_2[1] = L2_2
    L1_2[2] = L3_2
    L0_2 = L0_2(L1_2)
    L1_2 = PlaySynchronizedScene
    L2_2 = L12_1.coords
    L3_2 = L12_1.rotation
    L4_2 = L4_1
    L5_2 = L0_2
    L6_2 = false
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L2_2 = L9_1.disableCamera
    L2_2()
    L2_2 = L38_1
    L2_2()
    L2_2 = L37_1
    L2_2()
    L2_2 = TriggerServerEvent
    L3_2 = "Blackjack:Quit"
    L2_2(L3_2)
    L2_2 = CreateNewSceneEndEvent
    L3_2 = L1_2
    L4_2 = 0.7
    L5_2 = L64_1
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = ForgotLastStartedGameType
    L3_2 = "blackjack"
    L2_2(L3_2)
    L2_2 = nil
    L11_1 = L2_2
    return
  end
end
Blackjack_OnQuit = L65_1
function L65_1(A0_2)
  local L1_2, L2_2
  L1_2 = DebugStart
  L2_2 = "CleanUpAtTable"
  L1_2(L2_2)
  L1_2 = A0_2.deleteRoundObjects
  L1_2()
end
function L66_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = DebugStart
  L2_2 = "StepChanged"
  L1_2(L2_2)
  L1_2 = L37_1
  L1_2()
  if 1 == A0_2 then
    L1_2 = IsActivityEnabled
    L2_2 = "blackjack"
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = Blackjack_OnQuit
      L1_2()
      return
    end
  end
  if 1 == A0_2 then
    L1_2 = L23_1.MinimumBet
    L2_2 = PLAYER_CHIPS
    if L1_2 > L2_2 then
      L1_2 = Blackjack_OnQuit
      L1_2()
      return
    end
  end
  if 1 == A0_2 then
    L1_2 = L39_1
    L1_2()
    L1_2 = true
    L20_1 = L1_2
  end
  if 2 == A0_2 or 3 == A0_2 then
    L1_2 = Stats_Increase
    L2_2 = "rcore_casino_bj_games_played"
    L3_2 = 1
    L1_2(L2_2, L3_2)
    L1_2 = L46_1
    L1_2()
  end
  if 1 == A0_2 or 3 == A0_2 then
    L1_2 = L49_1
    L1_2()
    L1_2 = L51_1
    L1_2()
    L1_2 = L52_1
    L1_2()
  end
  if 3 == A0_2 then
    L1_2 = L45_1
    L1_2()
    L1_2 = L47_1
    L1_2()
    L1_2 = L35_1
    L1_2 = L1_2()
    L6_1 = L1_2
  elseif 4 == A0_2 then
    L1_2 = L45_1
    L2_2 = false
    L1_2(L2_2)
    L1_2 = L47_1
    L1_2()
  end
  L1_2 = false
  L19_1 = L1_2
  L1_2 = 0
  L17_1 = L1_2
  L1_2 = L9_1.stopTicking
  L1_2()
  if 1 == A0_2 then
    L1_2 = {}
    L27_1 = L1_2
    L1_2 = true
    L20_1 = L1_2
    L1_2 = nil
    L21_1 = L1_2
    L1_2 = L16_1
    if 0 == L1_2 then
      L1_2 = CloseAllMenus
      L1_2()
    end
  end
  if 1 == A0_2 then
    L1_2 = L23_1.MinimumBet
    L2_2 = L23_1.MaximumBet
    L3_2 = L24_1
    L17_1 = L3_2
    L3_2 = L23_1.MinimumBet
    L15_1 = L3_2
    L3_2 = L48_1
    L3_2()
  end
  if 2 == A0_2 then
    L1_2 = L27_1.ante
    if nil ~= L1_2 then
      L1_2 = L27_1.ante
      if L1_2 > 0 then
        L1_2 = CreateConfirmedBetBar
        L2_2 = L27_1.ante
        L1_2(L2_2)
      end
    end
  end
  if A0_2 >= 6 then
    L1_2 = BlockQuittingFor
    L2_2 = 0
    L1_2(L2_2)
    L1_2 = L9_1.disableCamera
    L1_2()
  end
  L1_2 = L53_1
  L1_2()
end
function L67_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = DebugStart
  L1_2 = "OneSecondTick"
  L0_2(L1_2)
  L0_2 = L13_1
  if L0_2 then
    L0_2 = L9_1
    if nil ~= L0_2 then
      L0_2 = L10_1
      if L0_2 then
        goto lbl_14
      end
    end
  end
  do return end
  ::lbl_14::
  L0_2 = L14_1
  L1_2 = L9_1.syncedState
  L1_2 = L1_2.step
  if L0_2 ~= L1_2 then
    L0_2 = L9_1.syncedState
    L0_2 = L0_2.step
    L14_1 = L0_2
    L0_2 = L66_1
    L1_2 = L14_1
    L0_2(L1_2)
  end
  L0_2 = L9_1
  if L0_2 then
    L0_2 = L9_1.syncedState
    L0_2 = L0_2.timeleft
    if L0_2 > 0 then
      L0_2 = L9_1.syncedState
      L1_2 = L9_1.syncedState
      L1_2 = L1_2.timeleft
      L1_2 = L1_2 - 1
      L0_2.timeleft = L1_2
      L0_2 = L29_1
      if nil ~= L0_2 then
        L0_2 = L29_1.visible
        if L0_2 then
          L0_2 = L9_1.syncedState
          L0_2 = L0_2.timeleft
          if 4 == L0_2 then
            L0_2 = L9_1.startTicking
            L0_2()
            L0_2 = L14_1
            if 3 == L0_2 then
              L0_2 = L13_1
              if true == L0_2 then
                L0_2 = L9_1.bjPedSay
                L1_2 = "MINIGAME_DEALER_COMMENT_SLOW"
                L0_2(L1_2)
              end
            end
          end
          L0_2 = L29_1.setText
          L1_2 = "00:"
          L2_2 = string
          L2_2 = L2_2.format
          L3_2 = "%02d"
          L4_2 = L9_1.syncedState
          L4_2 = L4_2.timeleft
          L2_2 = L2_2(L3_2, L4_2)
          L1_2 = L1_2 .. L2_2
          L0_2(L1_2)
        end
      end
    end
  end
end
function L68_1()
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
      L0_3 = L13_1
      if not L0_3 then
        break
      end
      L0_3 = L67_1
      L0_3()
      L0_3 = Wait
      L1_3 = 1000
      L0_3(L1_3)
    end
  end
  L2_2 = "on second tick blackjack"
  L0_2(L1_2, L2_2)
end
function L69_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = DebugStart
  L3_2 = "GetPedReactionName"
  L2_2(L3_2)
  L2_2 = "reaction_impartial_var_0"
  L3_2 = RandomNumber
  L4_2 = 1
  L5_2 = 7
  L3_2 = L3_2(L4_2, L5_2)
  L2_2 = L2_2 .. L3_2
  if 0 == A1_2 then
    L3_2 = "reaction_bad_var_0"
    L4_2 = RandomNumber
    L5_2 = 1
    L6_2 = 4
    L4_2 = L4_2(L5_2, L6_2)
    L3_2 = L3_2 .. L4_2
    L2_2 = L3_2
  elseif 1 == A1_2 then
    L3_2 = "reaction_good_var_0"
    L4_2 = RandomNumber
    L5_2 = 1
    L6_2 = 4
    L4_2 = L4_2(L5_2, L6_2)
    L3_2 = L3_2 .. L4_2
    L2_2 = L3_2
  elseif 2 == A1_2 then
    L3_2 = "reaction_great_var_0"
    L4_2 = RandomNumber
    L5_2 = 1
    L6_2 = 4
    L4_2 = L4_2(L5_2, L6_2)
    L3_2 = L3_2 .. L4_2
    L2_2 = L3_2
  end
  if not A0_2 then
    L3_2 = "female_"
    L4_2 = L2_2
    L3_2 = L3_2 .. L4_2
    L2_2 = L3_2
  end
  return L2_2
end
function L70_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L4_2 = DebugStart
  L5_2 = "PlayPlayerPedReaction"
  L4_2(L5_2)
  L4_2 = RequestAnimDictAndWait
  L5_2 = L4_1
  L4_2(L5_2)
  L4_2 = L69_1
  L5_2 = IsPedMale
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L6_2 = A3_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = A1_2.chairPositions
  L5_2 = L5_2[A2_2]
  L6_2 = PlaySynchronizedSceneOnPed
  L7_2 = A0_2
  L8_2 = L5_2.coords
  L9_2 = L5_2.rotation
  L10_2 = L4_1
  L11_2 = L4_2
  L12_2 = false
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L7_2 = PlayerPedId
  L7_2 = L7_2()
  if A0_2 == L7_2 then
    L7_2 = CreateNewSceneEndEvent
    L8_2 = L6_2
    L9_2 = 0.95
    L10_2 = L43_1
    L11_2 = 8000
    L12_2 = 500
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  end
end
function L71_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = Repeat
  L3_2 = A0_2
  L4_2 = AMBIENT_BJ_COORDS
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
    L8_2 = L44_1
    L9_2 = AMBIENT_BJ_COORDS
    L10_2 = L7_2 + 1
    L9_2 = L9_2[L10_2]
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L9_2 = L8_2.automate
      L9_2()
    end
  end
end
L72_1 = RegisterNetEvent
L73_1 = "Blackjack:PaidAmount"
L72_1(L73_1)
L72_1 = AddEventHandler
L73_1 = "Blackjack:PaidAmount"
function L74_1(A0_2)
  local L1_2
  L1_2 = L25_1
  L1_2 = L1_2 + A0_2
  L25_1 = L1_2
end
L72_1(L73_1, L74_1)
L72_1 = RegisterNetEvent
L73_1 = "Blackjack:WonAmount"
L72_1(L73_1)
L72_1 = AddEventHandler
L73_1 = "Blackjack:WonAmount"
function L74_1(A0_2)
  local L1_2
  L1_2 = L26_1
  L1_2 = L1_2 + A0_2
  L26_1 = L1_2
end
L72_1(L73_1, L74_1)
L72_1 = RegisterNetEvent
L73_1 = "Blackjack:Quit"
L72_1(L73_1)
L72_1 = AddEventHandler
L73_1 = "Blackjack:Quit"
function L74_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L5_2 = IN_CASINO
  if not L5_2 then
    return
  end
  L5_2 = L44_1
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  if nil == L5_2 then
    return
  end
  L6_2 = TaskLookAtEntity
  L7_2 = L5_2.ped
  L8_2 = GetPedFromPlayerId
  L9_2 = A0_2
  L8_2 = L8_2(L9_2)
  L9_2 = 3500
  L10_2 = 2048
  L11_2 = 3
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  L6_2 = L5_2.bjPedSay
  L7_2 = A4_2
  L6_2(L7_2)
  L6_2 = L5_2.syncedState
  L6_2.chairs = A3_2
end
L72_1(L73_1, L74_1)
L72_1 = RegisterNetEvent
L73_1 = "Blackjack:Kicked"
L72_1(L73_1)
L72_1 = AddEventHandler
L73_1 = "Blackjack:Kicked"
function L74_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = IN_CASINO
  if not L0_2 then
    return
  end
  L0_2 = Stats_EndActivity
  L0_2()
  L0_2 = GetRandomItem
  L1_2 = {}
  L2_2 = "sit_exit_left"
  L3_2 = "sit_exit_right"
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L0_2 = L0_2(L1_2)
  L1_2 = PlaySynchronizedScene
  L2_2 = L12_1.coords
  L3_2 = L12_1.rotation
  L4_2 = L4_1
  L5_2 = L0_2
  L6_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = L38_1
  L2_2()
  L2_2 = L37_1
  L2_2()
  L2_2 = L9_1
  if L2_2 then
    L2_2 = L9_1.disableCamera
    L2_2()
  end
  L2_2 = ForgotLastStartedGameType
  L3_2 = "blackjack"
  L2_2(L3_2)
  L2_2 = nil
  L11_1 = L2_2
  L2_2 = 0
  L16_1 = L2_2
  L2_2 = CloseAllMenus
  L2_2()
  L2_2 = CreateNewSceneEndEvent
  L3_2 = L1_2
  L4_2 = 0.7
  L5_2 = L64_1
  L2_2(L3_2, L4_2, L5_2)
end
L72_1(L73_1, L74_1)
L72_1 = RegisterNetEvent
L73_1 = "Blackjack:StateChanged"
L72_1(L73_1)
L72_1 = AddEventHandler
L73_1 = "Blackjack:StateChanged"
function L74_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = IN_CASINO
  if not L2_2 then
    return
  end
  L2_2 = L44_1
  L3_2 = A0_2.coords
  L2_2 = L2_2(L3_2)
  if nil == L2_2 then
    return
  end
  L2_2.syncedState = A0_2
  L3_2 = CreateThread
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3
    L0_3 = L2_2.syncedState
    L0_3 = L0_3.step
    if 1 == L0_3 then
      L0_3 = L2_2.bjPedSay
      L1_3 = "MINIGAME_DEALER_PLACE_BET"
      L0_3(L1_3)
    else
      L0_3 = L2_2.syncedState
      L0_3 = L0_3.step
      if 2 == L0_3 then
        L0_3 = 1
        L1_3 = 2
        L2_3 = 1
        for L3_3 = L0_3, L1_3, L2_3 do
          L4_3 = 1
          L5_3 = 4
          L6_3 = 1
          for L7_3 = L4_3, L5_3, L6_3 do
            L8_3 = A1_2
            L8_3 = L8_3[L7_3]
            if nil ~= L8_3 then
              L8_3 = A1_2
              L8_3 = L8_3[L7_3]
              L8_3 = L8_3[L3_3]
              if nil ~= L8_3 then
                L8_3 = IN_CASINO
                if L8_3 then
                  L8_3 = A1_2
                  L8_3 = L8_3[L7_3]
                  L8_3 = L8_3[L3_3]
                  L9_3 = PokerCardModels
                  L10_3 = L8_3.value
                  L9_3 = L9_3[L10_3]
                  L10_3 = RequestModelAndWait
                  L11_3 = L9_3
                  L10_3(L11_3)
                  L10_3 = L2_2.dealCardToChair
                  L11_3 = L7_3
                  L12_3 = L8_3.value
                  L13_3 = L9_3
                  L14_3 = L8_3.hand
                  L15_3 = L8_3.index
                  L16_3 = false
                  L17_3 = 0.45
                  L18_3 = true
                  L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
                  L10_3 = L2_2
                  L11_3 = L9_1
                  if L10_3 == L11_3 then
                    L10_3 = L27_1
                    if nil ~= L10_3 then
                      L10_3 = L20_1
                      if L10_3 then
                        L10_3 = L27_1.chair
                        if L10_3 == L7_3 then
                          L10_3 = L47_1
                          L11_3 = L3_3
                          L10_3(L11_3)
                        end
                      end
                    end
                  end
                end
              end
            end
          end
          L4_3 = A1_2.dealer
          if nil ~= L4_3 then
            L4_3 = A1_2.dealer
            L4_3 = L4_3[L3_3]
            if nil ~= L4_3 then
              L4_3 = IN_CASINO
              if L4_3 then
                L4_3 = A1_2.dealer
                L4_3 = L4_3[L3_3]
                L5_3 = PokerCardModels
                L6_3 = L4_3.value
                L5_3 = L5_3[L6_3]
                L6_3 = RequestModelAndWait
                L7_3 = L5_3
                L6_3(L7_3)
                L6_3 = L2_2.dealCardSelf
                L7_3 = L4_3.value
                L8_3 = L5_3
                L9_3 = L3_3
                if 1 == L3_3 then
                  L10_3 = 0.45
                  if L10_3 then
                    goto lbl_97
                  end
                end
                L10_3 = 0.8
                ::lbl_97::
                L6_3(L7_3, L8_3, L9_3, L10_3)
              end
            end
          end
        end
        L0_3 = L2_2.pedFocusedOnChair
        if -1 == L0_3 then
          L0_3 = IN_CASINO
          if L0_3 then
            L0_3 = L2_2.pedIdle
            L0_3()
          end
        end
      else
        L0_3 = L2_2.syncedState
        L0_3 = L0_3.step
        if 7 == L0_3 then
          L0_3 = L65_1
          L1_3 = L2_2
          L0_3(L1_3)
        else
          L0_3 = L2_2.syncedState
          L0_3 = L0_3.step
          if 9 == L0_3 then
            L0_3 = A1_2
            L1_3 = L2_2.pedPeek
            L2_3 = L0_3
            L1_3(L2_3)
          else
            L0_3 = L2_2.syncedState
            L0_3 = L0_3.step
            if 5 == L0_3 then
              L0_3 = 1
              L1_3 = 4
              L2_3 = 1
              for L3_3 = L0_3, L1_3, L2_3 do
                L4_3 = L2_2.chairCards
                L4_3 = L4_3[L3_3]
                if nil ~= L4_3 then
                  L5_3 = L4_3[1]
                  if nil ~= L5_3 then
                    L5_3 = L4_3[1]
                    L5_3 = #L5_3
                    if L5_3 > 0 then
                      L5_3 = L2_2.pedCollectCards
                      L6_3 = L3_3
                      L5_3(L6_3)
                    end
                  end
                end
              end
              L0_3 = L2_2.pedCollectCards
              L1_3 = "dealer"
              L0_3(L1_3)
            end
          end
        end
      end
    end
  end
  L5_2 = "Collecting cards blackjack"
  L3_2(L4_2, L5_2)
end
L72_1(L73_1, L74_1)
L72_1 = RegisterNetEvent
L73_1 = "Blackjack:PedFinalize"
L72_1(L73_1)
L72_1 = AddEventHandler
L73_1 = "Blackjack:PedFinalize"
function L74_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = IN_CASINO
  if not L4_2 then
    return
  end
  L4_2 = L44_1
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if nil == L4_2 then
    return
  end
  L5_2 = L4_2.syncedState
  if nil ~= L5_2 then
    L5_2 = L4_2.syncedState
    L5_2.timeleft = A3_2
  end
  L5_2 = CreateThread
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L0_3 = L4_2.pedForgetFocus
    L0_3()
    L0_3 = L4_2.waitIfBusy
    L1_3 = 2000
    L0_3(L1_3)
    L0_3 = L4_2.waitForDetach
    L0_3()
    L0_3 = L4_2.pedTurnCard
    L0_3()
    L0_3 = pairs
    L1_3 = A1_2
    L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
    for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
      L6_3 = L4_2.dealCardSelf
      L7_3 = L5_3.value
      L8_3 = PokerCardModels
      L9_3 = L5_3.value
      L8_3 = L8_3[L9_3]
      L9_3 = L5_3.index
      L10_3 = 0.5
      L11_3 = true
      L6_3(L7_3, L8_3, L9_3, L10_3, L11_3)
      L6_3 = L4_2
      L7_3 = L9_1
      if L6_3 == L7_3 then
        L6_3 = L45_1
        L7_3 = true
        L6_3(L7_3)
      end
    end
    L0_3 = L4_2
    L1_3 = L9_1
    if L0_3 == L1_3 then
      L0_3 = L47_1
      L0_3()
      L0_3 = L45_1
      L1_3 = true
      L0_3(L1_3)
    end
  end
  L7_2 = "Blackjack:PedFinalize"
  L5_2(L6_2, L7_2)
end
L72_1(L73_1, L74_1)
L72_1 = RegisterNetEvent
L73_1 = "Blackjack:CardSplitted"
L72_1(L73_1)
L72_1 = AddEventHandler
L73_1 = "Blackjack:CardSplitted"
function L74_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L7_2 = IN_CASINO
  if not L7_2 then
    return
  end
  L7_2 = L44_1
  L8_2 = A1_2
  L7_2 = L7_2(L8_2)
  if nil == L7_2 then
    return
  end
  L8_2 = L7_2.syncedState
  if nil ~= L8_2 then
    L8_2 = L7_2.syncedState
    L8_2.timeleft = A4_2
  end
  L8_2 = nil
  L9_2 = GetMyPlayerId
  L9_2 = L9_2()
  if A0_2 == L9_2 then
    L9_2 = PlayerPedId
    L9_2 = L9_2()
    L8_2 = L9_2
  else
    L9_2 = ScenePed_ForceUseForPlayer
    L10_2 = A0_2
    L11_2 = A6_2
    L9_2 = L9_2(L10_2, L11_2)
    L8_2 = L9_2
  end
  if L8_2 then
    L9_2 = L61_1
    L10_2 = L8_2
    L11_2 = L7_2
    L12_2 = A2_2
    L13_2 = 2
    L14_2 = false
    L15_2 = A5_2
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  end
  L9_2 = CreateThread
  function L10_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    L0_3 = L7_2.splitCards
    L1_3 = A2_2
    L0_3(L1_3)
    L0_3 = pairs
    L1_3 = A3_2
    L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
    for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
      L6_3 = L7_2.waitIfBusy
      L7_3 = 1500
      L6_3(L7_3)
      L6_3 = L7_2.dealCardToChair
      L7_3 = A2_2
      L8_3 = L5_3.value
      L9_3 = PokerCardModels
      L10_3 = L5_3.value
      L9_3 = L9_3[L10_3]
      L10_3 = L5_3.hand
      L11_3 = L5_3.index
      L12_3 = false
      L13_3 = 0.5
      L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
    end
    L0_3 = A0_2
    L1_3 = GetMyPlayerId
    L1_3 = L1_3()
    if L0_3 == L1_3 then
      L0_3 = L14_1
      if 3 == L0_3 then
        L0_3 = L47_1
        L0_3()
      end
    end
    L0_3 = L7_2.pedFocusPlayer
    L1_3 = A2_2
    L2_3 = 2
    L3_3 = 3
    L0_3(L1_3, L2_3, L3_3)
  end
  L11_2 = "Blackjack:CardSplitted"
  L9_2(L10_2, L11_2)
end
L72_1(L73_1, L74_1)
L72_1 = RegisterNetEvent
L73_1 = "Blackjack:ResyncTicket"
L72_1(L73_1)
L72_1 = AddEventHandler
L73_1 = "Blackjack:ResyncTicket"
function L74_1(A0_2, A1_2)
  local L2_2
  L2_2 = IN_CASINO
  if not L2_2 then
    return
  end
  L27_1 = A0_2
  L2_2 = L14_1
  if 3 == L2_2 then
    L2_2 = L46_1
    L2_2()
  end
  if true == A1_2 then
    L2_2 = L14_1
    if 3 == L2_2 then
      L2_2 = L47_1
      L2_2()
    end
  end
end
L72_1(L73_1, L74_1)
L72_1 = RegisterNetEvent
L73_1 = "Blackjack:CardGiven"
L72_1(L73_1)
L72_1 = AddEventHandler
L73_1 = "Blackjack:CardGiven"
function L74_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2)
  local L9_2, L10_2, L11_2, L12_2
  L9_2 = IN_CASINO
  if not L9_2 then
    return
  end
  L9_2 = L44_1
  L10_2 = A1_2
  L9_2 = L9_2(L10_2)
  if nil == L9_2 then
    return
  end
  L10_2 = L9_2.syncedState
  if nil ~= L10_2 then
    L10_2 = L9_2.syncedState
    L10_2.timeleft = A4_2
  end
  L10_2 = GetMyPlayerId
  L10_2 = L10_2()
  if A0_2 == L10_2 then
    L10_2 = BlockPlayerInteraction
    L11_2 = 2000
    L10_2(L11_2)
    L10_2 = false
    L6_1 = L10_2
  end
  L10_2 = CreateThread
  function L11_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L0_3 = nil
    L1_3 = A5_2
    if not L1_3 then
      L1_3 = A7_2
      if not L1_3 then
        goto lbl_22
      end
    end
    L1_3 = A0_2
    L2_3 = GetMyPlayerId
    L2_3 = L2_3()
    if L1_3 == L2_3 then
      L1_3 = PlayerPedId
      L1_3 = L1_3()
      L0_3 = L1_3
    else
      L1_3 = ScenePed_ForceUseForPlayer
      L2_3 = A0_2
      L3_3 = A8_2
      L1_3 = L1_3(L2_3, L3_3)
      L0_3 = L1_3
    end
    ::lbl_22::
    L1_3 = A5_2
    if true == L1_3 and L0_3 then
      L1_3 = L61_1
      L2_3 = L0_3
      L3_3 = L9_2
      L4_3 = A2_2
      L5_3 = A3_2.hand
      L6_3 = true
      L7_3 = A6_2
      L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3)
      L1_3 = Wait
      L2_3 = 500
      L1_3(L2_3)
    end
    L1_3 = L9_2.waitIfBusy
    L2_3 = 1500
    L1_3(L2_3)
    L1_3 = L9_2.dealCardToChair
    L2_3 = A2_2
    L3_3 = A3_2.value
    L4_3 = PokerCardModels
    L5_3 = A3_2.value
    L4_3 = L4_3[L5_3]
    L5_3 = A3_2.hand
    L6_3 = A3_2.index
    L7_3 = A3_2.isFinal
    L7_3 = true == L7_3
    L8_3 = 0.8
    L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
    L1_3 = A7_2
    if L1_3 and L0_3 then
      L1_3 = L70_1
      L2_3 = L0_3
      L3_3 = L9_2
      L4_3 = A2_2
      L5_3 = 0
      L1_3(L2_3, L3_3, L4_3, L5_3)
    end
    L1_3 = L14_1
    if 3 == L1_3 then
      L1_3 = L53_1
      L1_3()
      L1_3 = L47_1
      L1_3()
    end
  end
  L12_2 = "Blackjack:CardGiven"
  L10_2(L11_2, L12_2)
end
L72_1(L73_1, L74_1)
L72_1 = RegisterNetEvent
L73_1 = "Blackjack:InitialBetPlaced"
L72_1(L73_1)
L72_1 = AddEventHandler
L73_1 = "Blackjack:InitialBetPlaced"
function L74_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L5_2 = IN_CASINO
  if not L5_2 then
    return
  end
  L5_2 = L44_1
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  if nil == L5_2 then
    return
  end
  L6_2 = nil
  L7_2 = GetMyPlayerId
  L7_2 = L7_2()
  if A0_2 == L7_2 then
    L7_2 = PlayerPedId
    L7_2 = L7_2()
    L6_2 = L7_2
    L7_2 = BlockQuittingFor
    L8_2 = 60000
    L7_2(L8_2)
  else
    L7_2 = ScenePed_ForceUseForPlayer
    L8_2 = A0_2
    L9_2 = A4_2
    L7_2 = L7_2(L8_2, L9_2)
    L6_2 = L7_2
  end
  if L6_2 then
    L7_2 = TaskLookAtEntity
    L8_2 = L5_2.ped
    L9_2 = L6_2
    L10_2 = 3500
    L11_2 = 2048
    L12_2 = 1
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
    L7_2 = L61_1
    L8_2 = L6_2
    L9_2 = L5_2
    L10_2 = A2_2
    L11_2 = 1
    L12_2 = false
    L13_2 = A3_2
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  end
  L7_2 = L9_1
  if L5_2 == L7_2 then
    L7_2 = L14_1
    if 1 == L7_2 then
      L7_2 = L50_1
      L8_2 = A2_2
      L7_2(L8_2)
    end
  end
end
L72_1(L73_1, L74_1)
L72_1 = RegisterNetEvent
L73_1 = "Blackjack:ChairReady"
L72_1(L73_1)
L72_1 = AddEventHandler
L73_1 = "Blackjack:ChairReady"
function L74_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = IN_CASINO
  if not L2_2 then
    return
  end
  L2_2 = L44_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if nil == L2_2 then
    return
  end
  L3_2 = L9_1
  if L2_2 == L3_2 then
    L3_2 = L50_1
    L4_2 = A1_2
    L3_2(L4_2)
  end
end
L72_1(L73_1, L74_1)
L72_1 = RegisterNetEvent
L73_1 = "Blackjack:PedFocusChanged"
L72_1(L73_1)
L72_1 = AddEventHandler
L73_1 = "Blackjack:PedFocusChanged"
function L74_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = IN_CASINO
  if not L4_2 then
    return
  end
  L4_2 = L44_1
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if nil == L4_2 then
    return
  end
  L5_2 = L4_2.pedFocusPlayer
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = 4
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = L4_2.syncedState
  if nil ~= L5_2 then
    L5_2 = L4_2.syncedState
    L5_2.timeleft = A3_2
  end
  L5_2 = L4_2.bjPedSay
  L6_2 = "MINIGAME_BJACK_DEALER_ANOTHER_CARD"
  L5_2(L6_2)
  L5_2 = L9_1
  if L5_2 == L4_2 then
    L7_1 = A2_2
    L8_1 = A1_2
    L5_2 = L53_1
    L5_2()
  end
end
L72_1(L73_1, L74_1)
L72_1 = RegisterNetEvent
L73_1 = "Blackjack:ConfirmInitialBet"
L72_1(L73_1)
L72_1 = AddEventHandler
L73_1 = "Blackjack:ConfirmInitialBet"
function L74_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = IN_CASINO
  if not L2_2 then
    return
  end
  L27_1 = A1_2
  L2_2 = L46_1
  L2_2()
  if A0_2 then
    L2_2 = 1
    L19_1 = L2_2
    L2_2 = PlaySound
    L3_2 = "DLC_VW_CONTINUE"
    L4_2 = "dlc_vw_table_games_frontend_sounds"
    L2_2(L3_2, L4_2)
    PLAYER_CHIPS = A0_2
    L2_2 = Casino_AnimateBalance
    L2_2()
  else
    L2_2 = PlaySound
    L3_2 = "OTHER_TEXT"
    L4_2 = "HUD_AWARDS"
    L2_2(L3_2, L4_2)
  end
end
L72_1(L73_1, L74_1)
L72_1 = RegisterNetEvent
L73_1 = "Blackjack:ConfirmDoubleDown"
L72_1(L73_1)
L72_1 = AddEventHandler
L73_1 = "Blackjack:ConfirmDoubleDown"
function L74_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = IN_CASINO
  if not L2_2 then
    return
  end
  L27_1 = A1_2
  if A0_2 and -1 ~= A0_2 then
    L2_2 = PlaySound
    L3_2 = "DLC_VW_CONTINUE"
    L4_2 = "dlc_vw_table_games_frontend_sounds"
    L2_2(L3_2, L4_2)
    PLAYER_CHIPS = A0_2
    L2_2 = Casino_AnimateBalance
    L2_2()
  else
    L2_2 = PlaySound
    L3_2 = "OTHER_TEXT"
    L4_2 = "HUD_AWARDS"
    L2_2(L3_2, L4_2)
  end
end
L72_1(L73_1, L74_1)
L72_1 = RegisterNetEvent
L73_1 = "Blackjack:ConfirmSplit"
L72_1(L73_1)
L72_1 = AddEventHandler
L73_1 = "Blackjack:ConfirmSplit"
function L74_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = IN_CASINO
  if not L2_2 then
    return
  end
  L27_1 = A1_2
  if A0_2 and -1 ~= A0_2 then
    L2_2 = true
    L5_1 = L2_2
    L2_2 = 2
    L7_1 = L2_2
  else
    L2_2 = PlaySound
    L3_2 = "OTHER_TEXT"
    L4_2 = "HUD_AWARDS"
    L2_2(L3_2, L4_2)
  end
  L2_2 = L46_1
  L2_2()
end
L72_1(L73_1, L74_1)
L72_1 = RegisterNetEvent
L73_1 = "Blackjack:LastRoundScores"
L72_1(L73_1)
L72_1 = AddEventHandler
L73_1 = "Blackjack:LastRoundScores"
function L74_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = IN_CASINO
  if not L3_2 then
    return
  end
  L3_2 = L26_1
  L4_2 = L25_1
  L3_2 = L3_2 - L4_2
  L4_2 = L26_1
  L5_2 = L25_1
  if L4_2 > L5_2 then
    L4_2 = Stats_Increase
    L5_2 = "rcore_casino_bj_wins"
    L6_2 = 1
    L4_2(L5_2, L6_2)
  else
    L4_2 = Stats_Increase
    L5_2 = "rcore_casino_bj_loss"
    L6_2 = 1
    L4_2(L5_2, L6_2)
  end
  L4_2 = L26_1
  if L4_2 > 0 then
    L4_2 = Stats_Increase
    L5_2 = "rcore_casino_bj_profit"
    L6_2 = L26_1
    L4_2(L5_2, L6_2)
  end
  if L3_2 > 0 then
    L4_2 = Stats_Increase
    L5_2 = "rcore_casino_bj_profitreal"
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  elseif L3_2 < 0 then
    L4_2 = Stats_Decrease
    L5_2 = "rcore_casino_bj_profitreal"
    L6_2 = math
    L6_2 = L6_2.abs
    L7_2 = L3_2
    L6_2, L7_2 = L6_2(L7_2)
    L4_2(L5_2, L6_2, L7_2)
  end
  L27_1 = A1_2
  L4_2 = L10_1
  if not L4_2 then
    return
  end
  L4_2 = L16_1
  if 0 ~= L4_2 then
    return
  end
  L4_2 = L27_1.accountBalance
  if nil ~= L4_2 then
    L4_2 = L27_1.accountBalance
    PLAYER_CHIPS = L4_2
    L4_2 = Casino_AnimateBalance
    L4_2()
  end
  L4_2 = CreateThread
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3
    L0_3 = GetMugshotCacheSize
    L0_3 = L0_3()
    if L0_3 > 1 then
      L0_3 = ClearMugshotCache
      L0_3()
    end
    L0_3 = nil
    L1_3 = {}
    L2_3 = {}
    L3_3 = -1
    L4_3 = pairs
    L5_3 = A0_2
    L4_3, L5_3, L6_3, L7_3 = L4_3(L5_3)
    for L8_3, L9_3 in L4_3, L5_3, L6_3, L7_3 do
      L10_3 = {}
      L11_3 = GetPlayerFromServerId
      L12_3 = L9_3.playerId
      L11_3 = L11_3(L12_3)
      if -1 ~= L11_3 then
        L12_3 = GetPlayerPed
        L13_3 = L11_3
        L12_3 = L12_3(L13_3)
        L13_3 = L9_3.realName
        L10_3.name = L13_3
        L13_3 = CommaValue
        L14_3 = L9_3.score
        L13_3 = L13_3(L14_3)
        L10_3.score = L13_3
        L13_3 = GetPlayerMugshotTexture
        L14_3 = L12_3
        L13_3 = L13_3(L14_3)
        L10_3.txd = L13_3
        L13_3 = L9_3.score
        if L13_3 > 0 then
          L13_3 = table
          L13_3 = L13_3.insert
          L14_3 = L1_3
          L15_3 = L10_3
          L13_3(L14_3, L15_3)
        else
          L13_3 = L9_3.score
          if L13_3 < 0 then
            L13_3 = table
            L13_3 = L13_3.insert
            L14_3 = L2_3
            L15_3 = L10_3
            L13_3(L14_3, L15_3)
          end
        end
        L13_3 = L9_3.playerId
        L14_3 = GetMyPlayerId
        L14_3 = L14_3()
        if L13_3 == L14_3 then
          L13_3 = L9_3.score
          if L13_3 > 0 then
            L0_3 = L10_3.score
          end
          L3_3 = L9_3.reaction
        end
      end
    end
    L4_3 = L9_1.pedFinalReaction
    L5_3 = false
    L6_3 = L3_3
    L4_3(L5_3, L6_3)
    L4_3 = L12_1
    if nil ~= L4_3 then
      L4_3 = L13_1
      if L4_3 then
        L4_3 = L69_1
        L5_3 = IsPedMale
        L6_3 = PlayerPedId
        L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3 = L6_3()
        L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
        L6_3 = L3_3
        L4_3 = L4_3(L5_3, L6_3)
        L5_3 = PlaySynchronizedScene
        L6_3 = L12_1.coords
        L7_3 = L12_1.rotation
        L8_3 = L4_1
        L9_3 = L4_3
        L10_3 = false
        L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3)
        L6_3 = CreateNewSceneEndEvent
        L7_3 = L5_3
        L8_3 = 0.95
        L9_3 = L43_1
        L10_3 = 8000
        L11_3 = 500
        L6_3(L7_3, L8_3, L9_3, L10_3, L11_3)
      end
    end
    L4_3 = {}
    L5_3 = 0
    L6_3 = 0
    L4_3[1] = L5_3
    L4_3[2] = L6_3
    L5_3 = 1
    L6_3 = 2
    L7_3 = 1
    for L8_3 = L5_3, L6_3, L7_3 do
      L9_3 = L27_1.cards
      L9_3 = L9_3[L8_3]
      if nil ~= L9_3 then
        L10_3 = #L9_3
        if L10_3 > 0 then
          L10_3 = BlackjackGetScoreFromCards
          L11_3 = L9_3
          L10_3 = L10_3(L11_3)
          L4_3[L8_3] = L10_3
        end
      end
    end
    L5_3 = L4_3[2]
    if L5_3 > 0 then
      L5_3 = string
      L5_3 = L5_3.format
      L6_3 = Translation
      L6_3 = L6_3.Get
      L7_3 = "BLACKJACK_YOU_HAVE_LEFT_HAND"
      L6_3 = L6_3(L7_3)
      L7_3 = Translation
      L7_3 = L7_3.Get
      L8_3 = "BLACKJACK_YOU_HAVE_RIGHT_HAND"
      L7_3 = L7_3(L8_3)
      L6_3 = L6_3 .. L7_3
      L7_3 = L4_3[1]
      L8_3 = L4_3[2]
      L5_3 = L5_3(L6_3, L7_3, L8_3)
      if L5_3 then
        goto lbl_146
      end
    end
    L5_3 = string
    L5_3 = L5_3.format
    L6_3 = Translation
    L6_3 = L6_3.Get
    L7_3 = "BLACKJACK_YOU_HAVE_LEFT_HAND"
    L6_3 = L6_3(L7_3)
    L7_3 = L4_3[1]
    L5_3 = L5_3(L6_3, L7_3)
    ::lbl_146::
    L6_3 = L5_3
    L7_3 = ". "
    L6_3 = L6_3 .. L7_3
    L5_3 = L6_3
    L6_3 = A2_2
    if "blackjack" ~= L6_3 then
      L6_3 = tonumber
      L7_3 = A2_2
      L6_3 = L6_3(L7_3)
      if L6_3 then
        L6_3 = A2_2
        if L6_3 > 21 then
          L6_3 = L5_3
          L7_3 = " "
          L8_3 = Translation
          L8_3 = L8_3.Get
          L9_3 = "BLACKJACK_DEALER_HAS_GONE_BUST"
          L8_3 = L8_3(L9_3)
          L9_3 = ". "
          L6_3 = L6_3 .. L7_3 .. L8_3 .. L9_3
          L5_3 = L6_3
      end
    end
    else
      L6_3 = L5_3
      L7_3 = " "
      L8_3 = string
      L8_3 = L8_3.format
      L9_3 = Translation
      L9_3 = L9_3.Get
      L10_3 = "BLACKJACK_DEALER_HAS_X"
      L9_3 = L9_3(L10_3)
      L10_3 = A2_2
      L8_3 = L8_3(L9_3, L10_3)
      L9_3 = ". "
      L6_3 = L6_3 .. L7_3 .. L8_3 .. L9_3
      L5_3 = L6_3
    end
    if nil ~= L0_3 then
      L6_3 = L5_3
      L7_3 = Translation
      L7_3 = L7_3.Get
      L8_3 = "CASINO_RESULTS_YOU_WIN_X_COINS"
      L7_3 = L7_3(L8_3)
      L8_3 = " "
      L9_3 = L0_3
      L10_3 = " "
      L11_3 = Translation
      L11_3 = L11_3.Get
      L12_3 = "ROULETTE_RULES_CHIPS"
      L11_3 = L11_3(L12_3)
      L12_3 = "."
      L6_3 = L6_3 .. L7_3 .. L8_3 .. L9_3 .. L10_3 .. L11_3 .. L12_3
      L5_3 = L6_3
    else
      L6_3 = L5_3
      L7_3 = Translation
      L7_3 = L7_3.Get
      L8_3 = "CASINO_RESULTS_YOU_LOSE"
      L7_3 = L7_3(L8_3)
      L8_3 = "."
      L6_3 = L6_3 .. L7_3 .. L8_3
      L5_3 = L6_3
    end
    L6_3 = L55_1
    L7_3 = L1_3
    L8_3 = L2_3
    L9_3 = L5_3
    L6_3(L7_3, L8_3, L9_3)
    L6_3 = PlaySound
    L7_3 = "DLC_VW_WIN_CHIPS"
    L8_3 = "dlc_vw_table_games_frontend_sounds"
    L6_3(L7_3, L8_3)
  end
  L6_2 = "Blackjack:LastRoundScores"
  L4_2(L5_2, L6_2)
end
L72_1(L73_1, L74_1)
L72_1 = RegisterNetEvent
L73_1 = "Blackjack:Sit"
L72_1(L73_1)
L72_1 = AddEventHandler
L73_1 = "Blackjack:Sit"
function L74_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L6_2 = IN_CASINO
  if not L6_2 then
    return
  end
  L6_2 = L44_1
  L7_2 = A1_2
  L6_2 = L6_2(L7_2)
  if nil == L6_2 then
    return
  end
  L6_2.syncedState = A3_2
  L7_2 = TaskLookAtEntity
  L8_2 = L6_2.ped
  L9_2 = GetPedFromPlayerId
  L10_2 = A0_2
  L9_2 = L9_2(L10_2)
  L10_2 = 3500
  L11_2 = 2048
  L12_2 = 3
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  L7_2 = GetMyPlayerId
  L7_2 = L7_2()
  if A0_2 == L7_2 then
    L9_1 = L6_2
    L7_2 = BlackjackTableDatas
    L8_2 = L9_1.color
    L7_2 = L7_2[L8_2]
    L23_1 = L7_2
    L7_2 = PlaySound
    L8_2 = "DLC_VW_CONTINUE"
    L9_2 = "dlc_vw_table_games_frontend_sounds"
    L7_2(L8_2, L9_2)
    L7_2 = L9_1.bjPedSay
    L8_2 = A4_2
    L7_2(L8_2)
    L7_2 = L9_1.chairPositions
    L7_2 = L7_2[A2_2]
    L12_1 = L7_2
    L7_2 = L12_1
    if nil == L7_2 then
      return
    end
    L12_1.currentChair = A2_2
    L7_2 = {}
    L27_1 = L7_2
    L7_2 = L23_1.MinimumBet
    L15_1 = L7_2
    L7_2 = true
    L13_1 = L7_2
    L20_1 = A5_2
    L7_2 = L60_1
    L7_2()
    L7_2 = L68_1
    L7_2()
  end
end
L72_1(L73_1, L74_1)
L72_1 = RegisterNetEvent
L73_1 = "Blackjack:Sessions"
L72_1(L73_1)
L72_1 = AddEventHandler
L73_1 = "Blackjack:Sessions"
function L74_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = IN_CASINO
  if not L2_2 then
    return
  end
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L44_1
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
  L2_2 = L2_2.CASINO_ENABLE_AMBIENT_PEDS_BLACKJACK
  if L2_2 then
    L2_2 = L71_1
    L3_2 = A1_2
    L2_2(L3_2)
  end
end
L72_1(L73_1, L74_1)
function L72_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = Config
  L2_2 = L2_2.UseTarget
  if L2_2 then
    return
  end
  L2_2 = DebugStart
  L3_2 = "Blackjack_ShowNotifyUI"
  L2_2(L3_2)
  L2_2 = L13_1
  if L2_2 then
    return
  end
  L2_2 = nil
  L11_1 = L2_2
  L2_2 = pairs
  L3_2 = L0_1
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.tableObject
    if L8_2 == A0_2 then
      L11_1 = L7_2
    end
  end
  L2_2 = L11_1
  if not L2_2 then
    L2_2 = L44_1
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    L11_1 = L2_2
    L2_2 = L11_1
    if L2_2 then
      L2_2 = DoesEntityExist
      L3_2 = L11_1.tableObject
      L2_2 = L2_2(L3_2)
      if not L2_2 then
        L11_1.tableObject = A0_2
      end
    end
  end
  L2_2 = L11_1
  if L2_2 then
    L2_2 = L11_1.chairPositions
    if not L2_2 then
      L2_2 = nil
      L11_1 = L2_2
      return
    end
  end
  L2_2 = L11_1
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
  L2_2 = L11_1.loadChairData
  L2_2()
  L2_2 = L11_1.getClosestChair
  L3_2 = GetPlayerPosition
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L3_2()
  L2_2, L3_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L4_2 = L11_1.syncedState
  L4_2 = L4_2.chairs
  L4_2 = L4_2[L2_2]
  L5_2 = BlackjackTableDatas
  L6_2 = L11_1.color
  L5_2 = L5_2[L6_2]
  L23_1 = L5_2
  L5_2 = L23_1.VIP
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
  L5_2 = L23_1.MinimumBet
  L6_2 = PLAYER_CHIPS
  if L5_2 > L6_2 then
    L5_2 = InfoPanel_UpdateNotification
    L6_2 = string
    L6_2 = L6_2.format
    L7_2 = Translation
    L7_2 = L7_2.Get
    L8_2 = "TABLE_CANT_AFFORD_PLAYING"
    L7_2 = L7_2(L8_2)
    L8_2 = L23_1.MinimumBet
    L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2)
    L5_2(L6_2, L7_2, L8_2)
    return
  end
  if nil ~= L4_2 and -1 == L4_2 then
    L5_2 = L11_1.automated
    if not L5_2 then
      L5_2 = Translation
      L5_2 = L5_2.Get
      L6_2 = "UI_PRESS_TO_PLAY"
      L5_2 = L5_2(L6_2)
      L6_2 = " "
      L7_2 = L23_1.Title
      L8_2 = "."
      L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2
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
Blackjack_ShowNotifyUI = L72_1
function L72_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = InfoPanel_UpdateNotification
  L2_2 = nil
  L1_2(L2_2)
  L1_2 = BlackjackTableDatas
  L1_2 = L1_2[A0_2]
  L2_2 = InfoPanel_Update
  L3_2 = L1_2.Banner
  L4_2 = L1_2.Banner
  L5_2 = L1_2.Title
  L6_2 = Translation
  L6_2 = L6_2.Get
  L7_2 = "BLACKJACK_WELCOME_PART1"
  L6_2 = L6_2(L7_2)
  L7_2 = Translation
  L7_2 = L7_2.Get
  L8_2 = "BLACKJACK_WELCOME_PART2"
  L7_2 = L7_2(L8_2)
  L8_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end
Blackjack_ShowWelcome = L72_1
function L72_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = DebugStart
  L2_2 = "Blackjack_OnInteraction"
  L1_2(L2_2)
  L1_2 = L13_1
  if L1_2 then
    return
  end
  L1_2 = PLAYER_DRUNK_LEVEL
  if L1_2 >= 1.0 then
    return
  end
  if A0_2 then
    L1_2 = L44_1
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    L11_1 = L1_2
  end
  L1_2 = L11_1
  if nil ~= L1_2 then
    L1_2 = L11_1.chairPositions
    if L1_2 then
      L1_2 = L11_1.chairPositions
      L1_2 = #L1_2
      if not (L1_2 < 4) then
        goto lbl_29
      end
    end
    do return end
    ::lbl_29::
    L1_2 = L11_1.getClosestChair
    L2_2 = GetPlayerPosition
    L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L2_2()
    L1_2, L2_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    L3_2 = L11_1.syncedState
    L3_2 = L3_2.chairs
    L3_2 = L3_2[L1_2]
    L4_2 = BlackjackTableDatas
    L5_2 = L11_1.color
    L4_2 = L4_2[L5_2]
    L23_1 = L4_2
    L4_2 = L23_1.VIP
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
    L4_2 = L23_1.MinimumBet
    L5_2 = PLAYER_CHIPS
    if L4_2 > L5_2 then
      L4_2 = InfoPanel_UpdateNotification
      L5_2 = string
      L5_2 = L5_2.format
      L6_2 = Translation
      L6_2 = L6_2.Get
      L7_2 = "TABLE_CANT_AFFORD_PLAYING"
      L6_2 = L6_2(L7_2)
      L7_2 = L23_1.MinimumBet
      L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2, L7_2)
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
      return
    end
    if nil ~= L3_2 and -1 == L3_2 then
      L4_2 = L11_1.automated
      if not L4_2 then
        L4_2 = GAME_INFO_PANEL
        if nil == L4_2 then
          L4_2 = ShouldShowHowToPlay
          L5_2 = "blackjack"
          L4_2 = L4_2(L5_2)
          if L4_2 then
            L4_2 = Blackjack_ShowWelcome
            L5_2 = L11_1.color
            L4_2(L5_2)
        end
        else
          L4_2 = L63_1
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
Blackjack_OnInteraction = L72_1
function L72_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = L44_1
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
Blackjack_DirtChangedAtCoords = L72_1
function L72_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2
  L0_2 = DebugStart
  L1_2 = "Blackjack_RescanTables"
  L0_2(L1_2)
  L0_2 = {}
  L1_2 = Casino_GetObjectsOfTypes
  L2_2 = {}
  L3_2 = GetHashKey
  L4_2 = "vw_prop_casino_blckjack_01"
  L3_2 = L3_2(L4_2)
  L4_2 = GetHashKey
  L5_2 = "vw_prop_casino_blckjack_01b"
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
        L12_2 = L44_1
        L13_2 = L10_2
        L12_2 = L12_2(L13_2)
        if nil == L12_2 then
          L12_2 = GetEntityModel
          L13_2 = L9_2
          L12_2 = L12_2(L13_2)
          L13_2 = GetHashKey
          L14_2 = "vw_prop_casino_blckjack_01"
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
          L13_2 = L13_2.BLACKJACK_JUNIOR_ENABLED
          if L13_2 then
            L13_2 = GetEntityCoords
            L14_2 = L9_2
            L13_2 = L13_2(L14_2)
            L14_2 = vector3
            L15_2 = Config
            L15_2 = L15_2.BLACKJACK_JUNIOR_COORDS
            L15_2 = L15_2[1]
            L16_2 = Config
            L16_2 = L16_2.BLACKJACK_JUNIOR_COORDS
            L16_2 = L16_2[2]
            L17_2 = Config
            L17_2 = L17_2.BLACKJACK_JUNIOR_COORDS
            L17_2 = L17_2[3]
            L14_2 = L14_2(L15_2, L16_2, L17_2)
            L13_2 = L13_2 - L14_2
            L13_2 = #L13_2
            L14_2 = 0.1
            if L13_2 < L14_2 then
              L12_2 = 2
            end
          end
          L13_2 = L62_1
          L14_2 = L9_2
          L15_2 = nil
          L16_2 = nil
          L17_2 = nil
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
          L14_2 = BlackjackTableDatas
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
          L22_2.eventAction = "bj_enter"
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
          L23_2.eventAction = "bj_info"
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
    L6_2 = "Blackjack:GetSessions"
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
  end
  return L0_2
end
Blackjack_RescanTables = L72_1
function L72_1()
  local L0_2, L1_2
  L0_2 = DebugStart
  L1_2 = "Blackjack_Load"
  L0_2(L1_2)
  L0_2 = Blackjack_RescanTables
  L0_2()
end
Blackjack_Load = L72_1
function L72_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = DebugStart
  L1_2 = "Blackjack_Destroy"
  L0_2(L1_2)
  L0_2 = pairs
  L1_2 = L0_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = L5_2.destroy
    L6_2()
  end
  L0_2 = L34_1
  L0_2()
end
Blackjack_Destroy = L72_1
