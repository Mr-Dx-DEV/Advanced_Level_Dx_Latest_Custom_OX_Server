local L0_1, L1_1, L2_1, L3_1
L0_1 = Framework
L0_1 = L0_1.Active
if 5 == L0_1 then
  L0_1 = GetResourceState
  L1_1 = Framework
  L1_1 = L1_1.ES_EXTENDED_RESOURCE_NAME
  L0_1 = L0_1(L1_1)
  L1_1 = GetResourceState
  L2_1 = Framework
  L2_1 = L2_1.QB_CORE_RESOURCE_NAME
  L1_1 = L1_1(L2_1)
  if "starting" == L0_1 or "started" == L0_1 then
    L2_1 = print
    L3_1 = "^3[Casino] Framework ^2ESX^3 detected.^7"
    L2_1(L3_1)
    L2_1 = Framework
    L2_1.Active = 1
  elseif "starting" == L1_1 or "started" == L1_1 then
    L2_1 = print
    L3_1 = "^3[Casino] Framework ^2QBCore^3 detected.^7"
    L2_1(L3_1)
    L2_1 = Framework
    L2_1.Active = 2
  else
    L2_1 = Framework
    L2_1.Active = 3
  end
end
L0_1 = Config
L0_1 = L0_1.DrunkSystem
if 1 == L0_1 then
  L0_1 = GetResourceState
  L1_1 = "rcore_drunk"
  L0_1 = L0_1(L1_1)
  L1_1 = GetResourceState
  L2_1 = "esx_status"
  L1_1 = L1_1(L2_1)
  if "starting" == L0_1 or "started" == L0_1 then
    L2_1 = Config
    L2_1.DrunkSystem = 4
    L2_1 = print
    L3_1 = "^3[Casino] ^2rcore_drunk^3 detected.^7"
    L2_1(L3_1)
  elseif "starting" == L1_1 or "started" == L1_1 then
    L2_1 = Config
    L2_1.DrunkSystem = 2
    L2_1 = print
    L3_1 = "^3[Casino] ^2esx_status^3 detected.^7"
    L2_1(L3_1)
  else
    L2_1 = Framework
    L2_1 = L2_1.Active
    if 2 == L2_1 then
      L2_1 = Config
      L2_1.DrunkSystem = 3
      L2_1 = print
      L3_1 = "^3[Casino] drunk system set to ^2evidence:^3.^7"
      L2_1(L3_1)
    end
  end
end
L0_1 = {}
Translation = L0_1
L0_1 = Translation
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = Translation
  L2_2 = Config
  L2_2 = L2_2.Locale
  L1_2 = L1_2[L2_2]
  if not L1_2 then
    L1_2 = print
    L2_2 = string
    L2_2 = L2_2.format
    L3_2 = "[%s] The language does not exists: %s"
    L4_2 = GetCurrentResourceName
    L4_2 = L4_2()
    L5_2 = Config
    L5_2 = L5_2.Locale
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2, L4_2, L5_2)
    L1_2(L2_2, L3_2, L4_2, L5_2)
    L1_2 = DefaultLocales
    L1_2 = L1_2[A0_2]
    return L1_2
  end
  L1_2 = Translation
  L2_2 = Config
  L2_2 = L2_2.Locale
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    L1_2 = print
    L2_2 = string
    L2_2 = L2_2.format
    L3_2 = "[%s] The translation does not exists: %s"
    L4_2 = GetCurrentResourceName
    L4_2 = L4_2()
    L5_2 = A0_2
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2, L4_2, L5_2)
    L1_2(L2_2, L3_2, L4_2, L5_2)
    L1_2 = DefaultLocales
    L1_2 = L1_2[A0_2]
    return L1_2
  end
  L1_2 = Config
  L1_2 = L1_2.ForceNormalKeyLabels
  if L1_2 then
    L1_2 = ReplaceKeyString
    if L1_2 then
      L1_2 = ReplaceKeyString
      L2_2 = Translation
      L3_2 = Config
      L3_2 = L3_2.Locale
      L2_2 = L2_2[L3_2]
      L2_2 = L2_2[A0_2]
      return L1_2(L2_2)
    end
  end
  L1_2 = Translation
  L2_2 = Config
  L2_2 = L2_2.Locale
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2[A0_2]
  return L1_2
end
L0_1.Get = L1_1
L0_1 = GetResourceState
L1_1 = "rcore_casino_jobs"
L0_1 = L0_1(L1_1)
L1_1 = Config
L2_1 = "starting" == L0_1 or "started" == L0_1
L1_1.JobsEnabled = L2_1
L1_1 = Config
L1_1 = L1_1.JobsEnabled
if L1_1 then
  L1_1 = CreateThread
  function L2_1()
    local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
    L0_2 = Wait
    L1_2 = 33
    L0_2(L1_2)
    L0_2 = exports
    L0_2 = L0_2.rcore_casino_jobs
    L1_2 = L0_2
    L0_2 = L0_2.GetData
    L0_2, L1_2, L2_2 = L0_2(L1_2)
    L3_2 = Config
    L3_2.Jobs = L0_2
    L3_2 = Config
    L3_2.JobConsts = L2_2
    L3_2 = pairs
    L4_2 = L1_2
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = Translation
      L10_2 = Config
      L10_2 = L10_2.Locale
      L9_2 = L9_2[L10_2]
      L9_2 = L9_2[L7_2]
      if not L9_2 then
        L9_2 = Translation
        L10_2 = Config
        L10_2 = L10_2.Locale
        L9_2 = L9_2[L10_2]
        L9_2[L7_2] = L8_2
      end
    end
  end
  L3_1 = "Translation for mission"
  L1_1(L2_1, L3_1)
end
L1_1 = type
L2_1 = Config
L2_1 = L2_1.SocietyFramework
L1_1 = L1_1(L2_1)
if "number" ~= L1_1 then
  L1_1 = print
  L2_1 = "^1Config.SocietyFramework was set incorrectly. Please check your config.lua. Society was disabled.^7"
  L1_1(L2_1)
  L1_1 = Config
  L1_1.EnableSociety = false
end
