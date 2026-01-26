local L0_1, L1_1
L0_1 = {}
Locale = L0_1
L0_1 = CreateThread
function L1_1()
  local L0_2, L1_2
  L0_2 = Wait
  L1_2 = 1000
  L0_2(L1_2)
  L0_2 = Locale
  L1_2 = Config
  L1_2 = L1_2.Lang
  L0_2 = L0_2[L1_2]
  if nil == L0_2 then
    while true do
      L0_2 = Functions
      L0_2 = L0_2.Print
      L1_2 = "You set Config.Lang to %s, but there is no such language in the locale directory!"
      L0_2(L1_2)
      L0_2 = Wait
      L1_2 = 1000
      L0_2(L1_2)
    end
  end
end
L0_1(L1_1)
function L0_1(A0_2, ...)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = "Unkown"
  L2_2 = Locale
  L3_2 = Config
  L3_2 = L3_2.Lang
  L2_2 = L2_2[L3_2]
  if L2_2 then
    L2_2 = Locale
    L3_2 = Config
    L3_2 = L3_2.Lang
    L2_2 = L2_2[L3_2]
    L2_2 = L2_2[A0_2]
    if L2_2 then
      L2_2 = Locale
      L3_2 = Config
      L3_2 = L3_2.Lang
      L2_2 = L2_2[L3_2]
      L1_2 = L2_2[A0_2]
    else
      L2_2 = Locale
      L2_2 = L2_2.en
      if L2_2 then
        L2_2 = Locale
        L2_2 = L2_2.en
        L1_2 = L2_2[A0_2]
      end
    end
  end
  L2_2 = table
  L2_2 = L2_2.pack
  L3_2, L4_2 = ...
  L2_2 = L2_2(L3_2, L4_2)
  L2_2 = #L2_2
  if L2_2 > 0 then
    L2_2 = string
    L2_2 = L2_2.format
    L3_2 = L1_2
    L4_2 = ...
    L2_2 = L2_2(L3_2, L4_2)
    L1_2 = L2_2
  end
  if not L1_2 then
    L1_2 = "Missing Translation"
  end
  return L1_2
end
_L = L0_1
L0_1 = IsDuplicityVersion
L0_1 = L0_1()
if not L0_1 then
  L0_1 = CreateThread
  function L1_1()
    local L0_2, L1_2, L2_2, L3_2, L4_2
    while true do
      L0_2 = Functions
      L0_2 = L0_2.NuiLoaded
      if L0_2 then
        break
      end
      L0_2 = Wait
      L1_2 = 10
      L0_2(L1_2)
    end
    L0_2 = Functions
    L0_2 = L0_2.SendNuiMessage
    L1_2 = "SetupLocale"
    L2_2 = {}
    L3_2 = Locale
    L4_2 = Config
    L4_2 = L4_2.Lang
    L3_2 = L3_2[L4_2]
    L3_2 = L3_2.Nui
    L2_2.locale = L3_2
    L0_2(L1_2, L2_2)
  end
  L0_1(L1_1)
end
