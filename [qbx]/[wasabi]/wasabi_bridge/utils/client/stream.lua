local L0_1, L1_1
L0_1 = WSB
L1_1 = {}
L0_1.stream = L1_1
L0_1 = WSB
L0_1 = L0_1.stream
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if not A1_2 then
    A1_2 = 5000
  end
  L2_2 = RequestAnimDict
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = GetGameTimer
  L2_2 = L2_2()
  while true do
    L3_2 = HasAnimDictLoaded
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      break
    end
    L3_2 = Wait
    L4_2 = 0
    L3_2(L4_2)
    L3_2 = GetGameTimer
    L3_2 = L3_2()
    L3_2 = L3_2 - L2_2
    if A1_2 < L3_2 then
      L4_2 = print
      L5_2 = "^0[^3WARNING^0] failed to load animation dictionary ^1"
      L6_2 = A0_2
      L7_2 = "^0 after ^1"
      L8_2 = string
      L8_2 = L8_2.format
      L9_2 = "%.2f"
      L10_2 = L3_2
      L8_2 = L8_2(L9_2, L10_2)
      L9_2 = " MS^0"
      L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2
      L4_2(L5_2)
      L4_2 = false
      return L4_2
    end
  end
  L3_2 = true
  return L3_2
end
L0_1.animDict = L1_1
L0_1 = WSB
L0_1 = L0_1.stream
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if not A1_2 then
    A1_2 = 5000
  end
  L2_2 = RequestAnimSet
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = GetGameTimer
  L2_2 = L2_2()
  while true do
    L3_2 = HasAnimSetLoaded
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      break
    end
    L3_2 = Wait
    L4_2 = 0
    L3_2(L4_2)
    L3_2 = GetGameTimer
    L3_2 = L3_2()
    L3_2 = L3_2 - L2_2
    if A1_2 < L3_2 then
      L4_2 = print
      L5_2 = "^0[^3WARNING^0] failed to load animation set ^1"
      L6_2 = A0_2
      L7_2 = "^0 after ^1"
      L8_2 = string
      L8_2 = L8_2.format
      L9_2 = "%.2f"
      L10_2 = L3_2
      L8_2 = L8_2(L9_2, L10_2)
      L9_2 = " MS^0"
      L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2
      L4_2(L5_2)
      L4_2 = false
      return L4_2
    end
  end
  L3_2 = true
  return L3_2
end
L0_1.animSet = L1_1
L0_1 = WSB
L0_1 = L0_1.stream
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if not A1_2 then
    A1_2 = 5000
  end
  L2_2 = RequestModel
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = GetGameTimer
  L2_2 = L2_2()
  while true do
    L3_2 = HasModelLoaded
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      break
    end
    L3_2 = Wait
    L4_2 = 0
    L3_2(L4_2)
    L3_2 = GetGameTimer
    L3_2 = L3_2()
    L3_2 = L3_2 - L2_2
    if A1_2 < L3_2 then
      L4_2 = print
      L5_2 = "^0[^3WARNING^0] failed to load model ^1"
      L6_2 = A0_2
      L7_2 = "^0 after ^1"
      L8_2 = string
      L8_2 = L8_2.format
      L9_2 = "%.2f"
      L10_2 = L3_2
      L8_2 = L8_2(L9_2, L10_2)
      L9_2 = " MS^0"
      L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2
      L4_2(L5_2)
      L4_2 = false
      return L4_2
    end
  end
  L3_2 = true
  return L3_2
end
L0_1.model = L1_1
L0_1 = WSB
L0_1 = L0_1.stream
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if not A1_2 then
    A1_2 = 5000
  end
  L2_2 = RequestWeaponAsset
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = GetGameTimer
  L2_2 = L2_2()
  while true do
    L3_2 = HasWeaponAssetLoaded
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      break
    end
    L3_2 = Wait
    L4_2 = 0
    L3_2(L4_2)
    L3_2 = GetGameTimer
    L3_2 = L3_2()
    L3_2 = L3_2 - L2_2
    if A1_2 < L3_2 then
      L4_2 = print
      L5_2 = "^0[^3WARNING^0] failed to load weaponType ^1"
      L6_2 = A0_2
      L7_2 = "^0 after ^1"
      L8_2 = string
      L8_2 = L8_2.format
      L9_2 = "%.2f"
      L10_2 = L3_2
      L8_2 = L8_2(L9_2, L10_2)
      L9_2 = " MS^0"
      L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2
      L4_2(L5_2)
      L4_2 = false
      return L4_2
    end
  end
  L3_2 = true
  return L3_2
end
L0_1.weapon = L1_1
L0_1 = WSB
L0_1 = L0_1.stream
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if not A1_2 then
    A1_2 = 5000
  end
  L2_2 = RequestNamedPtfxAsset
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = GetGameTimer
  L2_2 = L2_2()
  while true do
    L3_2 = HasNamedPtfxAssetLoaded
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      break
    end
    L3_2 = Wait
    L4_2 = 0
    L3_2(L4_2)
    L3_2 = GetGameTimer
    L3_2 = L3_2()
    L3_2 = L3_2 - L2_2
    if A1_2 < L3_2 then
      L4_2 = print
      L5_2 = "^0[^3WARNING^0] failed to load PtfxAsset ^1"
      L6_2 = A0_2
      L7_2 = "^0 after ^1"
      L8_2 = string
      L8_2 = L8_2.format
      L9_2 = "%.2f"
      L10_2 = L3_2
      L8_2 = L8_2(L9_2, L10_2)
      L9_2 = " MS^0"
      L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2
      L4_2(L5_2)
      L4_2 = false
      return L4_2
    end
  end
  L3_2 = true
  return L3_2
end
L0_1.ptfx = L1_1
L0_1 = WSB
L0_1 = L0_1.stream
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if not A1_2 then
    A1_2 = 5000
  end
  L2_2 = RequestScaleformMovie
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = GetGameTimer
  L3_2 = L3_2()
  while true do
    L4_2 = HasScaleformMovieLoaded
    L5_2 = L2_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      break
    end
    L4_2 = Wait
    L5_2 = 0
    L4_2(L5_2)
    L4_2 = GetGameTimer
    L4_2 = L4_2()
    L4_2 = L4_2 - L3_2
    if A1_2 < L4_2 then
      L5_2 = print
      L6_2 = "^0[^3WARNING^0] failed to load ScaleForm ^1"
      L7_2 = A0_2
      L8_2 = "^0 after ^1"
      L9_2 = string
      L9_2 = L9_2.format
      L10_2 = "%.2f"
      L11_2 = L4_2
      L9_2 = L9_2(L10_2, L11_2)
      L10_2 = " MS^0"
      L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2
      L5_2(L6_2)
      L5_2 = false
      return L5_2
    end
  end
  L4_2 = true
  return L4_2
end
L0_1.scaleform = L1_1
