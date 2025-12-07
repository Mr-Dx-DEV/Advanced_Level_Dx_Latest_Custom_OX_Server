local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = "https://discord.com/api/v9"
L1_1 = {}
L1_1["Content-Type"] = "application/json"
L2_1 = "Bot "
L3_1 = Config
L3_1 = L3_1.BotToken
L2_1 = L2_1 .. L3_1
L1_1.Authorization = L2_1
L2_1 = {}
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L0_1
  L2_2 = "/guilds/"
  L3_2 = Config
  L3_2 = L3_2.GuildId
  L4_2 = "/members/"
  L5_2 = A0_2
  L1_2 = L1_2 .. L2_2 .. L3_2 .. L4_2 .. L5_2
  L2_2 = promise
  L2_2 = L2_2.new
  L2_2 = L2_2()
  L3_2 = PerformHttpRequest
  L4_2 = L1_2
  function L5_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3
    L3_3 = L2_2
    L4_3 = L3_3
    L3_3 = L3_3.resolve
    L5_3 = json
    L5_3 = L5_3.decode
    L6_3 = A1_3
    L5_3, L6_3 = L5_3(L6_3)
    L3_3(L4_3, L5_3, L6_3)
  end
  L6_2 = "GET"
  L7_2 = ""
  L8_2 = L1_1
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L4_2 = Citizen
  L4_2 = L4_2.Await
  L5_2 = L2_2
  return L4_2(L5_2)
end
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = L0_1
  L1_2 = "/guilds/"
  L2_2 = Config
  L2_2 = L2_2.GuildId
  L3_2 = "/roles"
  L0_2 = L0_2 .. L1_2 .. L2_2 .. L3_2
  L1_2 = promise
  L1_2 = L1_2.new
  L1_2 = L1_2()
  L2_2 = PerformHttpRequest
  L3_2 = L0_2
  function L4_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3
    L3_3 = L1_2
    L4_3 = L3_3
    L3_3 = L3_3.resolve
    L5_3 = json
    L5_3 = L5_3.decode
    L6_3 = A1_3
    L5_3, L6_3 = L5_3(L6_3)
    L3_3(L4_3, L5_3, L6_3)
  end
  L5_2 = "GET"
  L6_2 = ""
  L7_2 = L1_1
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = Citizen
  L3_2 = L3_2.Await
  L4_2 = L1_2
  return L3_2(L4_2)
end
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = ipairs
  L2_2 = L2_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.id
    if L7_2 == A0_2 then
      return L6_2
    end
  end
end
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L1_2 = Config
  L1_2 = L1_2.DefaultMaxSlot
  if A0_2 then
    L3_2 = A0_2
    L2_2 = A0_2.gsub
    L4_2 = "discord:"
    L5_2 = ""
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L3_2 = L3_1
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L4_2 = Config
      L4_2 = L4_2.RoleSlots
      L5_2 = pairs
      L6_2 = L4_2
      L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
      for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
        if L9_2 and L10_2 then
          L11_2 = ipairs
          L12_2 = L3_2.roles
          L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2)
          for L15_2, L16_2 in L11_2, L12_2, L13_2, L14_2 do
            if L16_2 then
              L17_2 = L5_1
              L18_2 = L16_2
              L17_2 = L17_2(L18_2)
              if L17_2 then
                L18_2 = L17_2.name
                if (L18_2 == L9_2 or L16_2 == L9_2) and L10_2 > L1_2 then
                  L1_2 = L10_2
                end
              end
            end
          end
        end
      end
    end
  end
  return L1_2
end
getDiscordRoleSlot = L6_1
L6_1 = CreateThread
function L7_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2 = L0_2()
  L2_1 = L0_2
  while true do
    L0_2 = Wait
    L1_2 = Config
    L1_2 = L1_2.ServerRolesUpdateInterval
    L0_2(L1_2)
    L0_2 = GetPlayers
    L0_2 = L0_2()
    L1_2 = #L0_2
    if L1_2 > 0 then
      L1_2 = L4_1
      L1_2 = L1_2()
      L2_1 = L1_2
    end
  end
end
L6_1(L7_1)
