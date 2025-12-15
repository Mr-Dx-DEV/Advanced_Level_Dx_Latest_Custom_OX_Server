local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = {}
L1_1 = 0
L2_1 = GetGameTimer
L2_1 = L2_1()
L3_1 = ServerConfig
L3_1 = L3_1.DiscordInterval
L2_1 = L2_1 + L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = ServerConfig
  L4_2 = L4_2.Discord
  if not L4_2 then
    return
  end
  L4_2 = CasinoPlayers
  L4_2 = L4_2[A0_2]
  if not L4_2 then
    return
  end
  L4_2 = L0_1
  L4_2 = L4_2[A0_2]
  if not L4_2 then
    L4_2 = L0_1
    L5_2 = {}
    L4_2[A0_2] = L5_2
  end
  L4_2 = {}
  L4_2.caption = A1_2
  L4_2.amount = A2_2
  L5_2 = CasinoPlayers
  L5_2 = L5_2[A0_2]
  L5_2 = L5_2.name
  L4_2.nickname = L5_2
  L5_2 = CasinoPlayers
  L5_2 = L5_2[A0_2]
  L5_2 = L5_2.identifier
  L4_2.identifier = L5_2
  L4_2.logProfit = A3_2
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = L0_1
  L6_2 = L6_2[A0_2]
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = L1_1
  L5_2 = L5_2 + 1
  L1_1 = L5_2
end
AddLogEvent = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L0_1
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    L1_2 = 0
    return L1_2
  end
  L1_2 = 0
  L2_2 = pairs
  L3_2 = L0_1
  L3_2 = L3_2[A0_2]
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.amount
    if L8_2 then
      L8_2 = L7_2.logProfit
      if L8_2 then
        L8_2 = L7_2.amount
        L1_2 = L1_2 + L8_2
      end
    end
  end
  return L1_2
end
CalculateLogProfit = L3_1
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L0_2 = L1_1
  if 0 == L0_2 then
    return
  end
  L0_2 = {}
  L0_2.content = ""
  L1_2 = {}
  L2_2 = {}
  L2_2.color = nil
  L3_2 = {}
  L2_2.fields = L3_2
  L1_2[1] = L2_2
  L0_2.embeds = L1_2
  L1_2 = {}
  L0_2.attachments = L1_2
  L1_2 = pairs
  L2_2 = L0_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    if L6_2 then
      L7_2 = {}
      L8_2 = L6_2[1]
      L8_2 = L8_2.nickname
      L9_2 = L6_2[1]
      L9_2 = L9_2.identifier
      if L9_2 then
        L9_2 = "( "
        L10_2 = L6_2[1]
        L10_2 = L10_2.identifier
        L11_2 = " )"
        L9_2 = L9_2 .. L10_2 .. L11_2
        if L9_2 then
          goto lbl_43
        end
      end
      L9_2 = ""
      ::lbl_43::
      L8_2 = L8_2 .. L9_2
      L7_2.name = L8_2
      L7_2.value = ""
      L8_2 = pairs
      L9_2 = L6_2
      L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
      for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
        L14_2 = L13_2.amount
        if L14_2 then
          L14_2 = L7_2.value
          L15_2 = "\226\128\162 "
          L16_2 = L13_2.caption
          L17_2 = ": "
          L18_2 = tostring
          L19_2 = L13_2.amount
          L18_2 = L18_2(L19_2)
          L19_2 = "\n"
          L14_2 = L14_2 .. L15_2 .. L16_2 .. L17_2 .. L18_2 .. L19_2
          L7_2.value = L14_2
        else
          L14_2 = L7_2.value
          L15_2 = "\226\128\162 "
          L16_2 = L13_2.caption
          L17_2 = "\n"
          L14_2 = L14_2 .. L15_2 .. L16_2 .. L17_2
          L7_2.value = L14_2
        end
      end
      L8_2 = CalculateLogProfit
      L9_2 = L5_2
      L8_2 = L8_2(L9_2)
      if 0 ~= L8_2 then
        L9_2 = L7_2.value
        L10_2 = "Profit: "
        L11_2 = L8_2
        L9_2 = L9_2 .. L10_2 .. L11_2
        L7_2.value = L9_2
      end
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = L0_2.embeds
      L10_2 = L10_2[1]
      L10_2 = L10_2.fields
      L11_2 = L7_2
      L9_2(L10_2, L11_2)
    end
  end
  L1_2 = json
  L1_2 = L1_2.encode
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = GetGameTimer
  L2_2 = L2_2()
  L3_2 = L2_1
  if L2_2 < L3_2 then
    L2_2 = #L1_2
    L3_2 = 1500
    if L2_2 < L3_2 then
      return
    end
  end
  L2_2 = GetGameTimer
  L2_2 = L2_2()
  L3_2 = ServerConfig
  L3_2 = L3_2.DiscordInterval
  L2_2 = L2_2 + L3_2
  L2_1 = L2_2
  L2_2 = PerformHttpRequest
  L3_2 = ServerConfig
  L3_2 = L3_2.HookUrl
  function L4_2(A0_3, A1_3, A2_3)
  end
  L5_2 = "POST"
  L6_2 = json
  L6_2 = L6_2.encode
  L7_2 = L0_2
  L6_2 = L6_2(L7_2)
  L7_2 = {}
  L7_2["Content-Type"] = "application/json"
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = {}
  L0_1 = L2_2
  L2_2 = 0
  L1_1 = L2_2
end
SendDiscordHook = L3_1
L3_1 = CreateThread
function L4_1()
  local L0_2, L1_2
  L0_2 = ServerConfig
  L0_2 = L0_2.Discord
  if L0_2 then
    while true do
      L0_2 = Wait
      L1_2 = 10000
      L0_2(L1_2)
      L0_2 = SendDiscordHook
      L0_2()
    end
  end
end
L5_1 = true
L3_1(L4_1, L5_1)
