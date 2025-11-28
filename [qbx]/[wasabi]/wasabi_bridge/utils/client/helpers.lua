local L0_1, L1_1, L2_1, L3_1
L0_1 = {}
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = {}
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = TriggerEvent
    L1_3 = "wasabi_bridge:initialize"
    L2_3 = A1_2
    L0_3(L1_3, L2_3)
  end
  L2_2.start = L3_2
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = TriggerEvent
    L1_3 = "wasabi_bridge:setPlayerData"
    L2_3 = A1_2
    L0_3(L1_3, L2_3)
  end
  L2_2["esx:setPlayerData"] = L3_2
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = TriggerEvent
    L1_3 = "wasabi_bridge:setPlayerData"
    L2_3 = A1_2
    L0_3(L1_3, L2_3)
  end
  L2_2["QBCore:Player:SetPlayerData"] = L3_2
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = TriggerEvent
    L1_3 = "wasabi_bridge:playerLoaded"
    L2_3 = A1_2
    L0_3(L1_3, L2_3)
  end
  L2_2.isLoggedIn = L3_2
  function L3_2()
    local L0_3, L1_3
    L0_3 = TriggerEvent
    L1_3 = "wasabi_bridge:onPlayerLogout"
    L0_3(L1_3)
  end
  L2_2.isLoggedOut = L3_2
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = TriggerEvent
    L1_3 = "wasabi_bridge:setJob"
    L2_3 = A1_2
    L0_3(L1_3, L2_3)
  end
  L2_2.setJob = L3_2
  function L3_2()
    local L0_3, L1_3
  end
  L2_2.default = L3_2
  L3_2 = L2_2[A0_2]
  if L3_2 then
    L3_2 = L2_2[A0_2]
    L3_2()
  else
    L3_2 = L2_2.default
    L3_2()
  end
end
SwitchHandler = L1_1
L1_1 = exports
L2_1 = "GetBridgeObject"
function L3_1()
  local L0_2, L1_2
  L0_2 = WSB
  return L0_2
end
L1_1(L2_1, L3_1)
L1_1 = exports
L2_1 = "getBridgeObject"
function L3_1()
  local L0_2, L1_2
  L0_2 = WSB
  return L0_2
end
L1_1(L2_1, L3_1)
L1_1 = WSB
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L0_1
  L2_2 = #L2_2
  L3_2 = L2_2 + 1
  L2_2 = L0_1
  L4_2 = {}
  L5_2 = GetGameTimer
  L5_2 = L5_2()
  L5_2 = L5_2 + A0_2
  L4_2.time = L5_2
  L4_2.cb = A1_2
  L2_2[L3_2] = L4_2
  L2_2 = L0_1
  L2_2 = #L2_2
  return L2_2
end
L1_1.setTimeout = L2_1
L1_1 = WSB
function L2_1(A0_2)
  local L1_2
  L1_2 = L0_1
  L1_2[A0_2] = nil
end
L1_1.clearTimeout = L2_1
L1_1 = WSB
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if A0_2 then
    L1_2 = string
    L1_2 = L1_2.gsub
    L2_2 = A0_2
    L3_2 = "^%s*(.-)%s*$"
    L4_2 = "%1"
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    return L1_2
  else
    L1_2 = nil
    return L1_2
  end
end
L1_1.trim = L2_1
L1_1 = WSB
function L2_1()
  local L0_2, L1_2, L2_2
  L0_2 = WSB
  L0_2 = L0_2.serverCallback
  L1_2 = "wasabi_bridge:getVersion"
  function L2_2(A0_3)
    local L1_3
    return A0_3
  end
  L0_2(L1_2, L2_2)
end
L1_1.getVersion = L2_1
L1_1 = WSB
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = WSB
  L1_2 = L1_2.awaitServerCallback
  L2_2 = "wasabi_bridge:getIdentifier"
  L3_2 = A0_2 or L3_2
  if not A0_2 then
    L3_2 = false
  end
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2 or L2_2
  if not L1_2 then
    L2_2 = false
  end
  return L2_2
end
L1_1.getIdentifier = L2_1
L1_1 = WSB
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  if nil == A1_2 then
    A1_2 = 0
  end
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "table" == L2_2 then
    L2_2 = ""
    L3_2 = 1
    L4_2 = A1_2 + 1
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = L2_2
      L8_2 = "    "
      L7_2 = L7_2 .. L8_2
      L2_2 = L7_2
    end
    L2_2 = "{\n"
    L3_2 = pairs
    L4_2 = A0_2
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = type
      L10_2 = L7_2
      L9_2 = L9_2(L10_2)
      if "number" ~= L9_2 then
        L9_2 = "\""
        L10_2 = L7_2
        L11_2 = "\""
        L9_2 = L9_2 .. L10_2 .. L11_2
        L7_2 = L9_2
      end
      L9_2 = 1
      L10_2 = A1_2
      L11_2 = 1
      for L12_2 = L9_2, L10_2, L11_2 do
        L13_2 = L2_2
        L14_2 = "    "
        L13_2 = L13_2 .. L14_2
        L2_2 = L13_2
      end
      L9_2 = L2_2
      L10_2 = "["
      L11_2 = L7_2
      L12_2 = "] = "
      L13_2 = WSB
      L13_2 = L13_2.dumpTable
      L14_2 = L8_2
      L15_2 = A1_2 + 1
      L13_2 = L13_2(L14_2, L15_2)
      L14_2 = ",\n"
      L9_2 = L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2
      L2_2 = L9_2
    end
    L3_2 = 1
    L4_2 = A1_2
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = L2_2
      L8_2 = "    "
      L7_2 = L7_2 .. L8_2
      L2_2 = L7_2
    end
    L3_2 = L2_2
    L4_2 = "}"
    L3_2 = L3_2 .. L4_2
    return L3_2
  else
    L2_2 = tostring
    L3_2 = A0_2
    return L2_2(L3_2)
  end
end
L1_1.dumpTable = L2_1
L1_1 = IsDuplicityVersion
L1_1 = L1_1()
if not L1_1 then
  L1_1 = AddEventHandler
  L2_1 = "wasabi_bridge:initialize"
  function L3_1()
    local L0_2, L1_2
    L0_2 = GetInvokingResource
    L0_2 = L0_2()
    if "wasabi_bridge" ~= L0_2 then
      return
    end
    L0_2 = WSB
    L0_2 = L0_2.framework
    if "esx" == L0_2 then
      L0_2 = WSB
      L1_2 = ESX
      L1_2 = L1_2.GetPlayerData
      L1_2 = L1_2()
      L0_2.playerData = L1_2
      L0_2 = WSB
      L0_2.playerLoaded = true
    end
    L0_2 = WSB
    L0_2 = L0_2.framework
    if "qb" == L0_2 then
      L0_2 = WSB
      L1_2 = QBCore
      L1_2 = L1_2.Functions
      L1_2 = L1_2.GetPlayerData
      L1_2 = L1_2()
      L0_2.playerData = L1_2
      L0_2 = WSB
      L0_2.playerLoaded = true
    end
  end
  L1_1(L2_1, L3_1)
  L1_1 = AddEventHandler
  L2_1 = "wasabi_bridge:setPlayerData"
  function L3_1(A0_2)
    local L1_2, L2_2, L3_2
    L1_2 = GetInvokingResource
    L1_2 = L1_2()
    if "wasabi_bridge" ~= L1_2 then
      return
    end
    L1_2 = WSB
    L1_2 = L1_2.framework
    if "qb" == L1_2 then
      L1_2 = WSB
      L1_2.playerData = A0_2
      return
    end
    L1_2 = WSB
    L1_2 = L1_2.framework
    if "esx" == L1_2 then
      L1_2 = WSB
      L1_2 = L1_2.playerData
      L2_2 = A0_2.key
      L3_2 = A0_2.value
      L1_2[L2_2] = L3_2
    end
  end
  L1_1(L2_1, L3_1)
  L1_1 = RegisterNetEvent
  L2_1 = "wasabi_bridge:playerLoaded"
  function L3_1(A0_2)
    local L1_2, L2_2
    L1_2 = WSB
    L1_2.playerData = A0_2
    L1_2 = WSB
    L1_2.playerLoaded = true
    L1_2 = WSB
    L1_2 = L1_2.framework
    if "qb" == L1_2 then
      L1_2 = WSB
      L2_2 = QBCore
      L2_2 = L2_2.Functions
      L2_2 = L2_2.GetPlayerData
      L2_2 = L2_2()
      L1_2.playerData = L2_2
    end
  end
  L1_1(L2_1, L3_1)
  L1_1 = RegisterNetEvent
  L2_1 = "wasabi_bridge:onPlayerLogout"
  function L3_1()
    local L0_2, L1_2
    L0_2 = table
    L0_2 = L0_2.wipe
    L1_2 = WSB
    L1_2 = L1_2.playerData
    L0_2(L1_2)
    L0_2 = WSB
    L0_2.playerLoaded = false
  end
  L1_1(L2_1, L3_1)
  L1_1 = RegisterNetEvent
  L2_1 = "wasabi_bridge:setJob"
  function L3_1(A0_2)
    local L1_2, L2_2
    L1_2 = WSB
    L1_2 = L1_2.playerData
    L1_2.job = A0_2
    L1_2 = WSB
    L1_2 = L1_2.framework
    if "qb" == L1_2 then
      L1_2 = WSB
      L2_2 = QBCore
      L2_2 = L2_2.Functions
      L2_2 = L2_2.GetPlayerData
      L2_2 = L2_2()
      L1_2.playerData = L2_2
    end
  end
  L1_1(L2_1, L3_1)
end
L1_1 = WSB
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = TriggerServerEvent
  L2_2 = "wasabi_bridge:debugPrint"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L1_1.debugPrint = L2_1
L1_1 = {}
function L2_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if not A1_2 then
    A1_2 = 0
  end
  L2_2 = type
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if "number" ~= L2_2 then
    L2_2 = error
    L3_2 = "Interval must be a number. Received %s"
    L4_2 = L3_2
    L3_2 = L3_2.format
    L5_2 = json
    L5_2 = L5_2.encode
    L6_2 = A1_2
    L5_2, L6_2 = L5_2(L6_2)
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2)
    return L2_2(L3_2, L4_2, L5_2, L6_2)
  end
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "number" == L2_2 then
    L3_2 = L1_1
    L3_2 = L3_2[A0_2]
    if L3_2 then
      L3_2 = L1_1
      L4_2 = A1_2 or L4_2
      if not A1_2 then
        L4_2 = 0
      end
      L3_2[A0_2] = L4_2
      return
    end
  end
  if "function" ~= L2_2 then
    L3_2 = error
    L4_2 = "Callback must be a function. Received %s"
    L5_2 = L4_2
    L4_2 = L4_2.format
    L6_2 = L2_2
    L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
    return L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = {}
  L4_2, L5_2, L6_2 = ...
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L4_2 = nil
  L5_2 = Citizen
  L5_2 = L5_2.CreateThreadNow
  function L6_2(A0_3)
    local L1_3, L2_3, L3_3
    L4_2 = A0_3
    L2_3 = L4_2
    L1_3 = L1_1
    L3_3 = A1_2
    if not L3_3 then
      L3_3 = 0
    end
    L1_3[L2_3] = L3_3
    repeat
      L2_3 = L4_2
      L1_3 = L1_1
      L1_3 = L1_3[L2_3]
      A1_2 = L1_3
      L1_3 = Wait
      L2_3 = A1_2
      L1_3(L2_3)
      L1_3 = A0_2
      L2_3 = table
      L2_3 = L2_3.unpack
      L3_3 = L3_2
      L2_3, L3_3 = L2_3(L3_3)
      L1_3(L2_3, L3_3)
      L1_3 = A1_2
    until L1_3 < 0
    L2_3 = L4_2
    L1_3 = L1_1
    L1_3[L2_3] = nil
  end
  L5_2(L6_2)
  return L4_2
end
SetInterval = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "number" ~= L1_2 then
    L1_2 = error
    L2_2 = "Interval id must be a number. Received %s"
    L3_2 = L2_2
    L2_2 = L2_2.format
    L4_2 = json
    L4_2 = L4_2.encode
    L5_2 = A0_2
    L4_2, L5_2 = L4_2(L5_2)
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2, L4_2, L5_2)
    return L1_2(L2_2, L3_2, L4_2, L5_2)
  end
  L1_2 = L1_1
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    L1_2 = error
    L2_2 = "No interval exists with id %s"
    L3_2 = L2_2
    L2_2 = L2_2.format
    L4_2 = A0_2
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2, L4_2)
    return L1_2(L2_2, L3_2, L4_2, L5_2)
  end
  L1_2 = L1_1
  L1_2[A0_2] = -1
end
ClearInterval = L2_1
L2_1 = WSB
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = type
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  if "number" ~= L3_2 or not A2_2 then
    A2_2 = 1000
  end
  L3_2 = GetGameTimer
  L3_2 = L3_2()
  L4_2 = A0_2
  L4_2 = L4_2()
  while not L4_2 do
    L5_2 = Wait
    L6_2 = 0
    L5_2(L6_2)
    L5_2 = GetGameTimer
    L5_2 = L5_2()
    L5_2 = L5_2 - L3_2
    if A2_2 < L5_2 then
      L6_2 = error
      L7_2 = "%s (waited %.1fms)"
      L8_2 = L7_2
      L7_2 = L7_2.format
      L9_2 = A1_2 or L9_2
      if not A1_2 then
        L9_2 = "failed to resolve callback"
      end
      L10_2 = L5_2
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L8_2 = 2
      return L6_2(L7_2, L8_2)
    end
    L6_2 = A0_2
    L6_2 = L6_2()
    L4_2 = L6_2
  end
  return L4_2
end
L2_1.waitFor = L3_1
