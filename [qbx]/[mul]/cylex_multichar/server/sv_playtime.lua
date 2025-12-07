local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = {}
L1_1 = {}
L2_1 = CreateThread
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = json
  L0_2 = L0_2.decode
  L1_2 = LoadResourceFile
  L2_2 = GetCurrentResourceName
  L2_2 = L2_2()
  L3_2 = "database.json"
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2 = L1_2(L2_2, L3_2)
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  if L0_2 then
    L1_2 = pairs
    L2_2 = L0_2
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = L0_1
      L7_2[L5_2] = L6_2
    end
  end
end
L2_1(L3_1)
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = SaveResourceFile
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  L2_2 = "database.json"
  L3_2 = json
  L3_2 = L3_2.encode
  L4_2 = L0_1
  L5_2 = {}
  L5_2.indent = true
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = -1
  L0_2(L1_2, L2_2, L3_2, L4_2)
end
saveJson = L2_1
L2_1 = AddEventHandler
L3_1 = "playerDropped"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = source
  L2_2 = tostring
  L3_2 = Core
  L3_2 = L3_2.getPlayerId
  L4_2 = L1_2
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  if not L2_2 then
    L3_2 = identiferQBOX
    L3_2 = L3_2[L1_2]
    if L3_2 then
      L3_2 = identiferQBOX
      L2_2 = L3_2[L1_2]
    end
  end
  L3_2 = L1_1
  L3_2 = L3_2[L2_2]
  if not L3_2 then
    return
  end
  L3_2 = os
  L3_2 = L3_2.time
  L3_2 = L3_2()
  L4_2 = L1_1
  L4_2 = L4_2[L2_2]
  L4_2 = L3_2 - L4_2
  L5_2 = math
  L5_2 = L5_2.floor
  L6_2 = L4_2 / 60
  L5_2 = L5_2(L6_2)
  L6_2 = L0_1
  L6_2 = L6_2[L2_2]
  if not L6_2 then
    L6_2 = L0_1
    L7_2 = {}
    L7_2.playtime = 0
    L6_2[L2_2] = L7_2
  end
  if L5_2 > 0 then
    L6_2 = L0_1
    L6_2 = L6_2[L2_2]
    L7_2 = math
    L7_2 = L7_2.floor
    L8_2 = L0_1
    L8_2 = L8_2[L2_2]
    L8_2 = L8_2.playtime
    L8_2 = L8_2 + L5_2
    L7_2 = L7_2(L8_2)
    L6_2.playtime = L7_2
    L6_2 = saveJson
    L6_2()
  end
  L6_2 = L1_1
  L6_2[L2_2] = nil
  L6_2 = identiferQBOX
  if L6_2 then
    L6_2 = identiferQBOX
    L6_2 = L6_2[L1_2]
    if L6_2 then
      L6_2 = identiferQBOX
      L6_2[L1_2] = nil
    end
  end
end
L2_1(L3_1, L4_1)
L2_1 = AddEventHandler
L3_1 = "onResourceStop"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 ~= L1_2 then
    return
  end
  L1_2 = pairs
  L2_2 = GetPlayers
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L2_2()
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = tostring
    L8_2 = Core
    L8_2 = L8_2.getPlayerId
    L9_2 = L6_2
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L8_2(L9_2)
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    L8_2 = L1_1
    L8_2 = L8_2[L7_2]
    if L8_2 then
      L8_2 = os
      L8_2 = L8_2.time
      L8_2 = L8_2()
      L9_2 = L1_1
      L9_2 = L9_2[L7_2]
      L9_2 = L8_2 - L9_2
      L10_2 = math
      L10_2 = L10_2.floor
      L11_2 = L9_2 / 60
      L10_2 = L10_2(L11_2)
      L11_2 = L0_1
      L11_2 = L11_2[L7_2]
      if not L11_2 then
        L11_2 = L0_1
        L12_2 = {}
        L12_2.playtime = 0
        L11_2[L7_2] = L12_2
      end
      if L10_2 > 0 then
        L11_2 = L0_1
        L11_2 = L11_2[L7_2]
        L12_2 = math
        L12_2 = L12_2.floor
        L13_2 = L0_1
        L13_2 = L13_2[L7_2]
        L13_2 = L13_2.playtime
        L13_2 = L13_2 + L10_2
        L12_2 = L12_2(L13_2)
        L11_2.playtime = L12_2
      end
    end
  end
  L1_2 = saveJson
  L1_2()
end
L2_1(L3_1, L4_1)
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if not A0_2 then
    return
  end
  L2_2 = tostring
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = Config
  L3_2 = L3_2.core
  if "esx" == L3_2 then
    L3_2 = "char"
    L4_2 = A0_2
    L5_2 = ":"
    L6_2 = GetIdentifier
    L7_2 = A1_2
    L6_2 = L6_2(L7_2)
    L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2
    L2_2 = L3_2
  end
  L3_2 = L0_1
  L3_2 = L3_2[L2_2]
  if L3_2 then
    L3_2 = L3_2.playtime
  end
  if not L3_2 then
    L3_2 = 0
  end
  return L3_2
end
GetPlayerPlayTime = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if not A0_2 then
    return
  end
  L2_2 = tostring
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = Config
  L3_2 = L3_2.core
  if "esx" == L3_2 then
    L3_2 = "char"
    L4_2 = A0_2
    L5_2 = ":"
    L6_2 = GetIdentifier
    L7_2 = A1_2
    L6_2 = L6_2(L7_2)
    L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2
    L2_2 = L3_2
  end
  L3_2 = L1_1
  L4_2 = os
  L4_2 = L4_2.time
  L4_2 = L4_2()
  L3_2[L2_2] = L4_2
end
startPlaytime = L2_1
