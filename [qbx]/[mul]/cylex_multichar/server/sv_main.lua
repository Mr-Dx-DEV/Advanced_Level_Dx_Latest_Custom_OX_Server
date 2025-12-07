local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = {}
CORE_INTEGRATIONS = L0_1
L0_1 = {}
Core = L0_1
L0_1 = setmetatable
L1_1 = Core
L2_1 = {}
function L3_1(A0_2, A1_2)
  local L2_2
  function L2_2(...)
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = CORE_INTEGRATIONS
    L1_3 = Config
    L1_3 = L1_3.core
    L0_3 = L0_3[L1_3]
    L1_3 = A1_2
    L0_3 = L0_3[L1_3]
    if L0_3 then
      L1_3 = L0_3
      L2_3 = CORE_INTEGRATIONS
      L3_3 = Config
      L3_3 = L3_3.core
      L2_3 = L2_3[L3_3]
      L3_3, L4_3 = ...
      return L1_3(L2_3, L3_3, L4_3)
    else
      L1_3 = error
      L2_3 = "Method "
      L3_3 = A1_2
      L4_3 = " not found in core integration"
      L2_3 = L2_3 .. L3_3 .. L4_3
      L1_3(L2_3)
    end
  end
  return L2_2
end
L2_1.__index = L3_1
L0_1(L1_1, L2_1)
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = nil
  L2_2 = GetPlayerIdentifiers
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = string
    L9_2 = L9_2.find
    L10_2 = L8_2
    L11_2 = "discord"
    L9_2 = L9_2(L10_2, L11_2)
    if L9_2 then
      L1_2 = L8_2
      break
    end
  end
  return L1_2
end
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = pairs
  L3_2 = GetPlayerIdentifiers
  L4_2 = A0_2
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L3_2(L4_2)
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L1_2
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  return L1_2
end
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = L1_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = string
    L9_2 = L9_2.find
    L10_2 = L8_2
    L11_2 = A1_2
    L9_2 = L9_2(L10_2, L11_2)
    if L9_2 then
      return L8_2
    end
  end
  L3_2 = nil
  return L3_2
end
L3_1 = RPC
L3_1 = L3_1.register
L4_1 = "cylex_multichar:playerJoined"
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = SetPlayerRoutingBucket
  L2_2 = A0_2
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = Core
  L1_2 = L1_2.logout
  L2_2 = A0_2
  L1_2(L2_2)
end
L3_1(L4_1, L5_1)
L3_1 = RPC
L3_1 = L3_1.register
L4_1 = "cylex_multichar:getPlayerCharacters"
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = Core
  L1_2 = L1_2.getCharacters
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L0_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = Config
  L3_2 = L3_2.Type
  if "config" == L3_2 then
    L3_2 = pairs
    L4_2 = L1_1
    L5_2 = A0_2
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2(L5_2)
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = Config
      L9_2 = L9_2.IdentifierSlots
      L9_2 = L9_2[L8_2]
      if L9_2 then
        L9_2 = L1_2
        L10_2 = Config
        L10_2 = L10_2.IdentifierSlots
        L10_2 = L10_2[L8_2]
        return L9_2, L10_2
      end
    end
  else
    L3_2 = Config
    L3_2 = L3_2.Type
    if "sql" == L3_2 then
      L3_2 = L2_1
      L4_2 = A0_2
      L5_2 = Config
      L5_2 = L5_2.IdentifierType
      L3_2 = L3_2(L4_2, L5_2)
      L4_2 = "SELECT * FROM web_users WHERE user_license = @identifier"
      L5_2 = {}
      L5_2["@identifier"] = L3_2
      L6_2 = selectSQL
      L7_2 = L4_2
      L8_2 = L5_2
      L6_2 = L6_2(L7_2, L8_2)
      if L6_2 then
        L7_2 = L6_2[1]
        if L7_2 then
          L7_2 = L1_2
          L8_2 = L6_2[1]
          L8_2 = L8_2.character_limit
          L9_2 = L6_2[1]
          L9_2 = L9_2.character_perm
          L9_2 = 1 == L9_2
          return L7_2, L8_2, L9_2
        end
      end
    end
  end
  L3_2 = getDiscordRoleSlot
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = L1_2
  L5_2 = L3_2
  return L4_2, L5_2
end
L3_1(L4_1, L5_1)
L3_1 = RPC
L3_1 = L3_1.register
L4_1 = "cylex_multichar:playCharacter"
function L5_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = Core
  L4_2 = L4_2.selectCharacter
  L5_2 = A0_2
  L6_2 = A1_2.charId
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if L4_2 then
    L5_2 = SetPlayerRoutingBucket
    L6_2 = A0_2
    L7_2 = 0
    L5_2(L6_2, L7_2)
    L5_2 = startPlaytime
    L6_2 = A1_2.charId
    L7_2 = A0_2
    L5_2(L6_2, L7_2)
  end
  return L4_2
end
L3_1(L4_1, L5_1)
L3_1 = RPC
L3_1 = L3_1.register
L4_1 = "cylex_multichar:deleteCharacter"
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = Core
  L2_2 = L2_2.deleteCharacter
  L3_2 = A0_2
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L3_1(L4_1, L5_1)
L3_1 = "mysql-async"
L4_1 = pcall
L5_1 = CreateThread
function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L4_1
  function L1_2()
    local L0_3, L1_3, L2_3
    L0_3 = exports
    L0_3 = L0_3.ghmattimysql
    L1_3 = L0_3
    L0_3 = L0_3.execute
    L2_3 = "SELECT NULL LIMIT 0"
    L0_3(L1_3, L2_3)
  end
  L0_2, L1_2 = L0_2(L1_2)
  if L0_2 then
    L2_2 = "ghmattimysql"
    L3_1 = L2_2
  end
  L2_2 = L4_1
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = exports
    L0_3 = L0_3.oxmysql
    L1_3 = L0_3
    L0_3 = L0_3.query_async
    L2_3 = "SELECT NULL LIMIT 0"
    L0_3(L1_3, L2_3)
  end
  L2_2, L3_2 = L2_2(L3_2)
  if L2_2 then
    L4_2 = "oxmysql"
    L3_1 = L4_2
  end
end
L5_1(L6_1)
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = promise
  L3_2 = L2_2
  L2_2 = L2_2.new
  L2_2 = L2_2(L3_2)
  L3_2 = L3_1
  if "oxmysql" == L3_2 then
    L3_2 = exports
    L3_2 = L3_2.oxmysql
    L4_2 = L3_2
    L3_2 = L3_2.query_async
    L5_2 = A0_2
    L6_2 = A1_2
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L5_2 = L2_2
    L4_2 = L2_2.resolve
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
  L3_2 = L3_1
  if "ghmattimysql" == L3_2 then
    L3_2 = exports
    L3_2 = L3_2.ghmattimysql
    L4_2 = L3_2
    L3_2 = L3_2.executeSync
    L5_2 = A0_2
    L6_2 = A1_2
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L5_2 = L2_2
    L4_2 = L2_2.resolve
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
  L3_2 = L3_1
  if "mysql-async" == L3_2 then
    L3_2 = MySQL
    L3_2 = L3_2.Sync
    L3_2 = L3_2.fetchAll
    L4_2 = A0_2
    L5_2 = A1_2
    L3_2 = L3_2(L4_2, L5_2)
    L5_2 = L2_2
    L4_2 = L2_2.resolve
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
  L3_2 = Citizen
  L3_2 = L3_2.Await
  L4_2 = L2_2
  return L3_2(L4_2)
end
selectSQL = L5_1
