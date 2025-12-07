local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = print
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if "success" == A0_2 then
    L2_2 = "^2"
    if L2_2 then
      goto lbl_7
    end
  end
  L2_2 = "^1"
  ::lbl_7::
  L3_2 = L0_1
  L4_2 = "^5[cylex_multichar]%s %s^7"
  L5_2 = L4_2
  L4_2 = L4_2.format
  L6_2 = L2_2
  L7_2 = A1_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L2_1 = print
function L3_1(...)
  local L0_2, L1_2, L2_2
  L0_2 = Config
  L0_2 = L0_2.debug
  if not L0_2 then
    return
  end
  L0_2 = L2_1
  L1_2 = "^5[cylex_multichar]^7 "
  L2_2 = ...
  return L0_2(L1_2, L2_2)
end
print = L3_1
function L3_1()
  local L0_2, L1_2, L2_2
  L0_2 = PerformHttpRequest
  L1_2 = "https://raw.githubusercontent.com/CylexVII/cylex_multichar_version/master/version.txt"
  function L2_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L3_3 = GetResourceMetadata
    L4_3 = GetCurrentResourceName
    L4_3 = L4_3()
    L5_3 = "version"
    L3_3 = L3_3(L4_3, L5_3)
    if not A1_3 then
      L4_3 = L1_1
      L5_3 = "error"
      L6_3 = "Github servers are not accessible right now."
      L4_3(L5_3, L6_3)
      return
    end
    L4_3 = L1_1
    L5_3 = "success"
    L6_3 = "Latest Version: %s"
    L7_3 = L6_3
    L6_3 = L6_3.format
    L8_3 = A1_3
    L6_3, L7_3, L8_3 = L6_3(L7_3, L8_3)
    L4_3(L5_3, L6_3, L7_3, L8_3)
    L4_3 = L1_1
    L5_3 = "success"
    L6_3 = "Current Version: %s"
    L7_3 = L6_3
    L6_3 = L6_3.format
    L8_3 = L3_3
    L6_3, L7_3, L8_3 = L6_3(L7_3, L8_3)
    L4_3(L5_3, L6_3, L7_3, L8_3)
    L5_3 = A1_3
    L4_3 = A1_3.gsub
    L6_3 = "%s+"
    L7_3 = ""
    L4_3 = L4_3(L5_3, L6_3, L7_3)
    L6_3 = L3_3
    L5_3 = L3_3.gsub
    L7_3 = "%s+"
    L8_3 = ""
    L5_3 = L5_3(L6_3, L7_3, L8_3)
    if L4_3 == L5_3 then
      L4_3 = L1_1
      L5_3 = "success"
      L6_3 = "Congratulations, you are using the latest version of cylex_multichar!"
      L4_3(L5_3, L6_3)
      L4_3 = L1_1
      L5_3 = "success"
      L6_3 = "You can contact us on discord.gg/cylexstore"
      L4_3(L5_3, L6_3)
    else
      L4_3 = L1_1
      L5_3 = "error"
      L6_3 = "You are using an old version of the cylex_multichar. New version: %s"
      L7_3 = L6_3
      L6_3 = L6_3.format
      L8_3 = A1_3
      L6_3, L7_3, L8_3 = L6_3(L7_3, L8_3)
      L4_3(L5_3, L6_3, L7_3, L8_3)
      L4_3 = L1_1
      L5_3 = "error"
      L6_3 = "Please update via keymaster.fivem.net! You can find the update notes on discord.gg/cylexstore"
      L4_3(L5_3, L6_3)
    end
  end
  L0_2(L1_2, L2_2)
end
L4_1 = L3_1
L4_1()
