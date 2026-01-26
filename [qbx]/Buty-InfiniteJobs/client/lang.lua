local L0_1, L1_1
L0_1 = {}
Locales = L0_1
function L0_1(A0_2, ...)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = Locales
  L2_2 = Configuration
  L2_2 = L2_2.Language
  L1_2 = L1_2[L2_2]
  if nil ~= L1_2 then
    L1_2 = Locales
    L2_2 = Configuration
    L2_2 = L2_2.Language
    L1_2 = L1_2[L2_2]
    L1_2 = L1_2[A0_2]
    if nil ~= L1_2 then
      L1_2 = string
      L1_2 = L1_2.format
      L2_2 = Locales
      L3_2 = Configuration
      L3_2 = L3_2.Language
      L2_2 = L2_2[L3_2]
      L2_2 = L2_2[A0_2]
      L3_2, L4_2, L5_2 = ...
      return L1_2(L2_2, L3_2, L4_2, L5_2)
    else
      L1_2 = "Translation ["
      L2_2 = Configuration
      L2_2 = L2_2.Language
      L3_2 = "]["
      L4_2 = A0_2
      L5_2 = "] does not exist"
      L1_2 = L1_2 .. L2_2 .. L3_2 .. L4_2 .. L5_2
      return L1_2
    end
  else
    L1_2 = "Locale ["
    L2_2 = Configuration
    L2_2 = L2_2.Language
    L3_2 = "] does not exist"
    L1_2 = L1_2 .. L2_2 .. L3_2
    return L1_2
  end
end
_ = L0_1
function L0_1(A0_2, ...)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = tostring
  L2_2 = _
  L3_2 = A0_2
  L4_2, L5_2 = ...
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = L2_2
  L2_2 = L2_2.gsub
  L4_2 = "^%l"
  L5_2 = string
  L5_2 = L5_2.upper
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2, L4_2, L5_2)
  return L1_2(L2_2, L3_2, L4_2, L5_2)
end
_U = L0_1
