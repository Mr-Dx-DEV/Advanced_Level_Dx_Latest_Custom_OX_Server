local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1
L0_1 = {}
L1_1 = {}
L2_1 = {}
SlotSession = L2_1
L2_1 = SlotSession
L3_1 = SlotSession
L2_1.__index = L3_1
L2_1 = SlotSession
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2
  L5_2 = DebugStart
  L6_2 = "SlotSession:create"
  L5_2(L6_2)
  L5_2 = {}
  L6_2 = setmetatable
  L7_2 = L5_2
  L8_2 = SlotSession
  L6_2(L7_2, L8_2)
  L5_2.coords = A2_2
  L5_2.heading = A3_2
  L5_2.rotation = A4_2
  L5_2.hash = A1_2
  L5_2.lastSpinTime = 0
  L5_2.lastWithdrawTime = 0
  L5_2.broken = false
  L6_2 = Config
  L6_2 = L6_2.Jobs
  if L6_2 then
    L6_2 = Config
    L6_2 = L6_2.Jobs
    L6_2 = L6_2.Electrician
    L6_2 = L6_2.Enabled
    if L6_2 then
      L6_2 = Config
      L6_2 = L6_2.Jobs
      L6_2 = L6_2.Electrician
      L6_2 = L6_2.Difficulty
      L7_2 = L5_2.hash
      L6_2 = L6_2[L7_2]
      L6_2 = L6_2.Durability
      L5_2.durability = L6_2
    end
  end
  L5_2.savedWinnings = 0
  L5_2.wasJackpot = false
  function L6_2()
    local L0_3, L1_3
    L5_2.savedWinnings = 0
    L5_2.wasJackpot = false
  end
  L5_2.cleanUp = L6_2
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = GetGameTimer
    L0_3 = L0_3()
    L1_3 = L5_2.lastSpinTime
    L0_3 = L0_3 - L1_3
    L1_3 = 3000
    if not (L0_3 < L1_3) then
      L0_3 = GetGameTimer
      L0_3 = L0_3()
      L1_3 = L5_2.lastWithdrawTime
      L0_3 = L0_3 - L1_3
      L1_3 = 3000
      if not (L0_3 < L1_3) then
        goto lbl_18
      end
    end
    do return end
    ::lbl_18::
    L0_3 = GetGameTimer
    L0_3 = L0_3()
    L5_2.lastWithdrawTime = L0_3
    L0_3 = TriggerClientEvent
    L1_3 = "Slots:Winnings"
    L2_3 = L5_2.playerId
    L3_3 = L5_2.savedWinnings
    L4_3 = L5_2.wasJackpot
    L5_3 = L5_2.lastBet
    L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
    L0_3 = L5_2.savedWinnings
    if L0_3 > 0 then
      L0_3 = Win
      L1_3 = L5_2.playerId
      L2_3 = "Spin"
      L3_3 = L5_2.savedWinnings
      L4_3 = "slots"
      L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
      L1_3 = SendPlayerChipsBalance
      L2_3 = L5_2.playerId
      L3_3 = L0_3
      L1_3(L2_3, L3_3)
    end
    L0_3 = L5_2.wasJackpot
    if L0_3 then
      L0_3 = BroadcastCasino
      L1_3 = "Casino:Jackpot"
      L2_3 = "slots"
      L3_3 = machineModels
      L4_3 = L5_2.hash
      L3_3 = L3_3[L4_3]
      L3_3 = L3_3.announcer
      L0_3(L1_3, L2_3, L3_3)
    end
    L0_3 = L5_2.cleanUp
    L0_3()
  end
  L5_2.collectWinnings = L6_2
  function L6_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L1_3 = GetGameTimer
    L1_3 = L1_3()
    L2_3 = L5_2.lastSpinTime
    L1_3 = L1_3 - L2_3
    L2_3 = 2000
    if L1_3 < L2_3 then
      return
    end
    L1_3 = L5_2.cleanUp
    L1_3()
    L1_3 = GetGameTimer
    L1_3 = L1_3()
    L5_2.lastSpinTime = L1_3
    L1_3 = GetSlotSpinResultsForMachine
    L2_3 = machineModels
    L3_3 = L5_2.hash
    L2_3 = L2_3[L3_3]
    L1_3 = L1_3(L2_3)
    L2_3 = CalculateSlotWinningsForMachine
    L3_3 = machineModels
    L4_3 = L5_2.hash
    L3_3 = L3_3[L4_3]
    L4_3 = L1_3
    L5_3 = A0_3
    L2_3 = L2_3(L3_3, L4_3, L5_3)
    L5_2.savedWinnings = L2_3
    L2_3 = L1_3[1]
    L2_3 = 5 == L2_3
    L5_2.wasJackpot = L2_3
    L2_3 = machineModels
    L3_3 = L5_2.hash
    L2_3 = L2_3[L3_3]
    L3_3 = {}
    L4_3 = L2_3.items
    L5_3 = L1_3[1]
    L4_3 = L4_3[L5_3]
    L4_3 = L4_3.name
    L5_3 = L2_3.items
    L6_3 = L1_3[2]
    L5_3 = L5_3[L6_3]
    L5_3 = L5_3.name
    L6_3 = L2_3.items
    L7_3 = L1_3[3]
    L6_3 = L6_3[L7_3]
    L6_3 = L6_3.name
    L3_3[1] = L4_3
    L3_3[2] = L5_3
    L3_3[3] = L6_3
    L4_3 = Debug
    L5_3 = "Slot machine spin results for player "
    L6_3 = L5_2.playerId
    L4_3(L5_3, L6_3)
    L4_3 = Debug
    L5_3 = L3_3[1]
    L6_3 = L3_3[2]
    L7_3 = L3_3[3]
    L4_3(L5_3, L6_3, L7_3)
    L4_3 = Debug
    L5_3 = "Winnings"
    L6_3 = L5_2.savedWinnings
    L7_3 = "Was Jackpot"
    L8_3 = L5_2.wasJackpot
    L4_3(L5_3, L6_3, L7_3, L8_3)
    L4_3 = BroadcastCasino
    L5_3 = "Slots:Results"
    L6_3 = L5_2.hash
    L7_3 = L5_2.coords
    L8_3 = L5_2.heading
    L9_3 = L5_2.rotation
    L10_3 = L1_3
    L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
  end
  L5_2.spinAndCalculate = L6_2
  return L5_2
end
L2_1.create = L3_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = DebugStart
  L2_2 = "PlayerOwnsSlotMachine"
  L1_2(L2_2)
  L1_2 = L1_1
  L1_2 = L1_2[A0_2]
  L1_2 = nil ~= L1_2
  return L1_2
end
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = DebugStart
  L2_2 = "GetSlotSessionFromCoords"
  L1_2(L2_2)
  L1_2 = pairs
  L2_2 = L0_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    if L6_2 then
      L7_2 = L6_2.coords
      L7_2 = L7_2 - A0_2
      L7_2 = #L7_2
      L8_2 = 0.1
      if L7_2 < L8_2 then
        return L6_2
      end
    end
  end
  L1_2 = nil
  return L1_2
end
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = Config
  L1_2 = L1_2.Jobs
  if L1_2 then
    L1_2 = Config
    L1_2 = L1_2.Jobs
    L1_2 = L1_2.Electrician
    L1_2 = L1_2.Enabled
    if L1_2 then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  L1_2 = A0_2.broken
  if L1_2 then
    return
  end
  A0_2.broken = true
  L1_2 = BroadcastCasino
  L2_2 = "Slots:MachineBroke"
  L3_2 = A0_2.hash
  L4_2 = A0_2.coords
  L5_2 = A0_2.heading
  L6_2 = A0_2.rotation
  L7_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
end
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = Config
  L1_2 = L1_2.Jobs
  if L1_2 then
    L1_2 = Config
    L1_2 = L1_2.Jobs
    L1_2 = L1_2.Electrician
    L1_2 = L1_2.Enabled
    if L1_2 then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  L1_2 = A0_2.broken
  if not L1_2 then
    return
  end
  A0_2.broken = false
  L1_2 = Config
  L1_2 = L1_2.Jobs
  L1_2 = L1_2.Electrician
  L1_2 = L1_2.Difficulty
  L2_2 = A0_2.hash
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2.Durability
  A0_2.durability = L1_2
  L1_2 = BroadcastCasino
  L2_2 = "Slots:MachineBroke"
  L3_2 = A0_2.hash
  L4_2 = A0_2.coords
  L5_2 = A0_2.heading
  L6_2 = A0_2.rotation
  L7_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
end
function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = Config
  L0_2 = L0_2.Jobs
  if L0_2 then
    L0_2 = Config
    L0_2 = L0_2.Jobs
    L0_2 = L0_2.Electrician
    L0_2 = L0_2.Enabled
    if L0_2 then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  L0_2 = {}
  L1_2 = pairs
  L2_2 = L0_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.broken
    if not L7_2 then
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = L0_2
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    end
  end
  L1_2 = #L0_2
  if 0 == L1_2 then
    return
  end
  L1_2 = RandomNumber
  L2_2 = 1
  L3_2 = #L0_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L4_1
  L3_2 = L0_2[L1_2]
  L2_2(L3_2)
end
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = DebugStart
  L2_2 = "SlotMachineExists"
  L1_2(L2_2)
  L1_2 = L3_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = nil ~= L1_2
  return L1_2
end
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = DebugStart
  L2_2 = "Slots_SendSessions"
  L1_2(L2_2)
  L1_2 = TriggerClientEvent
  L2_2 = "Slots:Sessions"
  L3_2 = A0_2
  L4_2 = L0_1
  L5_2 = DAY_OF_WEEK
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
Slots_SendSessions = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = DebugStart
  L2_2 = "QuitPlaying"
  L1_2(L2_2)
  L1_2 = Cache
  L2_2 = L1_2
  L1_2 = L1_2.SetPlayerState
  L3_2 = A0_2
  L4_2 = "Game"
  L5_2 = nil
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = L1_1
  L1_2 = L1_2[A0_2]
  if nil ~= L1_2 then
    L1_2.playerId = nil
    L2_2 = BroadcastCasino
    L3_2 = "Slots:PlayerQuit"
    L4_2 = A0_2
    L5_2 = L1_2.hash
    L6_2 = L1_2.coords
    L7_2 = L1_2.heading
    L8_2 = L1_2.rotation
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    L2_2 = L1_1
    L2_2[A0_2] = nil
  end
end
function L9_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L5_2 = DebugStart
  L6_2 = "StartPlaying"
  L5_2(L6_2)
  L5_2 = BroadcastCasino
  L6_2 = "Slots:PlayerStart"
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = A3_2
  L11_2 = A4_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
end
L10_1 = RegisterNetEvent
L11_1 = "Slots:CreateSession"
L10_1(L11_1)
L10_1 = AddEventHandler
L11_1 = "Slots:CreateSession"
function L12_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = source
  L5_2 = L2_1
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  if L5_2 then
    L5_2 = TriggerClientEvent
    L6_2 = "Slots:Blocked"
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
    return
  end
  L5_2 = L3_1
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  if L5_2 then
    L6_2 = L5_2.playerId
    if L6_2 then
      L6_2 = TriggerClientEvent
      L7_2 = "Slots:Blocked"
      L8_2 = L4_2
      L6_2(L7_2, L8_2)
      return
    end
  else
    L6_2 = SlotSession
    L7_2 = L6_2
    L6_2 = L6_2.create
    L8_2 = A0_2
    L9_2 = A1_2
    L10_2 = A2_2
    L11_2 = A3_2
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
    L5_2 = L6_2
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = L0_1
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
  L5_2.playerId = L4_2
  L6_2 = L1_1
  L6_2[L4_2] = L5_2
  L6_2 = L9_1
  L7_2 = L4_2
  L8_2 = A0_2
  L9_2 = A1_2
  L10_2 = A2_2
  L11_2 = A3_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  L6_2 = Cache
  L7_2 = L6_2
  L6_2 = L6_2.SetPlayerState
  L8_2 = L4_2
  L9_2 = "Game"
  L10_2 = {}
  L10_2.type = "Slots"
  L10_2.coords = A1_2
  L10_2.hash = A0_2
  L6_2(L7_2, L8_2, L9_2, L10_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNetEvent
L11_1 = "Slots:SpinMachine"
L10_1(L11_1)
L10_1 = AddEventHandler
L11_1 = "Slots:SpinMachine"
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = source
  L2_2 = tonumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  L2_2 = math
  L2_2 = L2_2.max
  L3_2 = 0
  L4_2 = math
  L4_2 = L4_2.min
  L5_2 = A0_2
  L6_2 = 5
  L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2(L5_2, L6_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  A0_2 = L2_2
  L2_2 = L2_1
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = L1_1
  L2_2 = L2_2[L1_2]
  if not L2_2 then
    return
  end
  L3_2 = L2_2.broken
  if L3_2 then
    return
  end
  L3_2 = Config
  L3_2 = L3_2.Jobs
  if L3_2 then
    L3_2 = Config
    L3_2 = L3_2.Jobs
    L3_2 = L3_2.Electrician
    L3_2 = L3_2.Enabled
    if L3_2 then
      L3_2 = L2_2.durability
      L3_2 = L3_2 - 1
      L2_2.durability = L3_2
      L3_2 = L2_2.durability
      if 0 ~= L3_2 then
        L3_2 = RandomNumber
        L4_2 = 0
        L5_2 = L2_2.durability
        L3_2 = L3_2(L4_2, L5_2)
        if 1 ~= L3_2 then
          goto lbl_58
        end
      end
      L3_2 = L4_1
      L4_2 = L2_2
      L3_2(L4_2)
      return
    end
  end
  ::lbl_58::
  L3_2 = math
  L3_2 = L3_2.floor
  L4_2 = machineModels
  L5_2 = L2_2.hash
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.maxBet
  L4_2 = L4_2 / 5
  L4_2 = L4_2 * A0_2
  L3_2 = L3_2(L4_2)
  L2_2.lastBet = L3_2
  L4_2 = Pay
  L5_2 = L1_2
  L6_2 = "spin"
  L7_2 = L3_2
  L8_2 = "slots"
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if not L4_2 or -1 == L4_2 then
    return
  end
  L5_2 = SendPlayerChipsBalance
  L6_2 = L1_2
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = L2_2.spinAndCalculate
  L6_2 = L3_2
  L5_2(L6_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNetEvent
L11_1 = "Slots:CollectWinnings"
L10_1(L11_1)
L10_1 = AddEventHandler
L11_1 = "Slots:CollectWinnings"
function L12_1()
  local L0_2, L1_2, L2_2
  L0_2 = source
  L1_2 = L2_1
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = L1_1
  L1_2 = L1_2[L0_2]
  if not L1_2 then
    return
  end
  L2_2 = L1_2.collectWinnings
  L2_2()
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNetEvent
L11_1 = "Slots:Quit"
L10_1(L11_1)
L10_1 = AddEventHandler
L11_1 = "Slots:Quit"
function L12_1()
  local L0_2, L1_2, L2_2
  L0_2 = source
  L1_2 = L8_1
  L2_2 = L0_2
  L1_2(L2_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNetEvent
L11_1 = "Slots:BeginFix"
L10_1(L11_1)
L10_1 = AddEventHandler
L11_1 = "Slots:BeginFix"
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = source
  L2_2 = Config
  L2_2 = L2_2.Jobs
  if L2_2 then
    L2_2 = Config
    L2_2 = L2_2.Jobs
    L2_2 = L2_2.Electrician
    L2_2 = L2_2.Enabled
    if L2_2 then
      goto lbl_13
    end
  end
  do return end
  ::lbl_13::
  L2_2 = IsPlayerAtJob
  L3_2 = L1_2
  L4_2 = Config
  L4_2 = L4_2.Jobs
  L4_2 = L4_2.Electrician
  L4_2 = L4_2.JobName
  L5_2 = nil
  L6_2 = Config
  L6_2 = L6_2.Jobs
  L6_2 = L6_2.Electrician
  L6_2 = L6_2.MinGrade
  L7_2 = Config
  L7_2 = L7_2.Jobs
  L7_2 = L7_2.Electrician
  L7_2 = L7_2.MaxGrade
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  if not L2_2 then
    return
  end
  L2_2 = L3_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L3_2 = L2_2.broken
  if not L3_2 then
    return
  end
  L3_2 = Config
  L3_2 = L3_2.Jobs
  L3_2 = L3_2.Electrician
  L3_2 = L3_2.CircuitBoardNeedsPurchase
  if L3_2 then
    L3_2 = GetPlayerCasinoItemCount
    L4_2 = L1_2
    L5_2 = Config
    L5_2 = L5_2.Jobs
    L5_2 = L5_2.Electrician
    L5_2 = L5_2.CircuitBoardItemName
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 < 1 then
      L4_2 = TriggerClientEvent
      L5_2 = "Slots:BeginFix"
      L6_2 = L1_2
      L7_2 = 0
      L4_2(L5_2, L6_2, L7_2)
      return
    end
    L4_2 = RemoveCasinoItem
    L5_2 = L1_2
    L6_2 = Config
    L6_2 = L6_2.Jobs
    L6_2 = L6_2.Electrician
    L6_2 = L6_2.CircuitBoardItemName
    L7_2 = 1
    L4_2(L5_2, L6_2, L7_2)
  end
  L3_2 = TriggerClientEvent
  L4_2 = "Slots:BeginFix"
  L5_2 = L1_2
  L6_2 = 1
  L7_2 = L2_2.coords
  L8_2 = L2_2.hash
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNetEvent
L11_1 = "Slots:Fixed"
L10_1(L11_1)
L10_1 = AddEventHandler
L11_1 = "Slots:Fixed"
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = source
  L2_2 = Config
  L2_2 = L2_2.Jobs
  if L2_2 then
    L2_2 = Config
    L2_2 = L2_2.Jobs
    L2_2 = L2_2.Electrician
    L2_2 = L2_2.Enabled
    if L2_2 then
      goto lbl_13
    end
  end
  do return end
  ::lbl_13::
  L2_2 = IsPlayerAtJob
  L3_2 = L1_2
  L4_2 = Config
  L4_2 = L4_2.Jobs
  L4_2 = L4_2.Electrician
  L4_2 = L4_2.JobName
  L5_2 = nil
  L6_2 = Config
  L6_2 = L6_2.Jobs
  L6_2 = L6_2.Electrician
  L6_2 = L6_2.MinGrade
  L7_2 = Config
  L7_2 = L7_2.Jobs
  L7_2 = L7_2.Electrician
  L7_2 = L7_2.MaxGrade
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  if not L2_2 then
    return
  end
  L2_2 = L3_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L3_2 = L5_1
  L4_2 = L2_2
  L3_2(L4_2)
end
L10_1(L11_1, L12_1)
function L10_1(A0_2)
  local L1_2, L2_2
  L1_2 = DebugStart
  L2_2 = "Slots_PlayerDropped"
  L1_2(L2_2)
  L1_2 = L8_1
  L2_2 = A0_2
  L1_2(L2_2)
end
Slots_PlayerDropped = L10_1
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = math
  L3_2 = L3_2.floor
  L4_2 = A2_2 * 5
  L5_2 = A0_2.maxBet
  L4_2 = L4_2 / L5_2
  L3_2 = L3_2(L4_2)
  L4_2 = 1
  L5_2 = 7
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    if 4 ~= L7_2 then
      L8_2 = A1_2[1]
      if L7_2 == L8_2 then
        L8_2 = A1_2[2]
        if L7_2 == L8_2 then
          L8_2 = A1_2[3]
          if L7_2 == L8_2 then
            L8_2 = math
            L8_2 = L8_2.floor
            L9_2 = A0_2.items
            L9_2 = L9_2[L7_2]
            L9_2 = L9_2.value
            L9_2 = L9_2 * L3_2
            return L8_2(L9_2)
          end
        end
      end
    end
  end
  L4_2 = {}
  L5_2 = 0.4
  L6_2 = 1
  L7_2 = 100
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L4_2[3] = L7_2
  L5_2 = 0
  L6_2 = 1
  L7_2 = 3
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = A1_2[L9_2]
    if 4 == L10_2 then
      L5_2 = L5_2 + 1
    end
  end
  if L5_2 > 0 then
    L6_2 = math
    L6_2 = L6_2.floor
    L7_2 = L4_2[L5_2]
    L8_2 = A0_2.items
    L8_2 = L8_2[4]
    L8_2 = L8_2.value
    L7_2 = L7_2 * L8_2
    L7_2 = L7_2 * L3_2
    return L6_2(L7_2)
  end
  L6_2 = 0
  return L6_2
end
CalculateSlotWinningsForMachine = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L1_2 = {}
  L2_2 = 0
  L3_2 = 0
  L4_2 = 0
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L2_2 = A0_2.jackpotCounter
  L2_2 = L2_2 + 1
  A0_2.jackpotCounter = L2_2
  L2_2 = A0_2.unluckyCounter
  L2_2 = L2_2 + 1
  A0_2.unluckyCounter = L2_2
  L2_2 = {}
  L3_2 = 1
  L4_2 = 3
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = {}
    L8_2 = pairs
    L9_2 = A0_2.items
    L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
    for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
      L14_2 = 100
      if L6_2 > 1 then
        L15_2 = L13_2.ShowUpReducer
        if 0 ~= L15_2 then
          L15_2 = L2_2[L12_2]
          if not L15_2 then
            L15_2 = nil
          end
          if L15_2 then
            L16_2 = 1
            L17_2 = L15_2
            L18_2 = 1
            for L19_2 = L16_2, L17_2, L18_2 do
              L20_2 = ReduceNumberByPercentage
              L21_2 = L14_2
              L22_2 = L13_2.ShowUpReducer
              L20_2 = L20_2(L21_2, L22_2)
              L14_2 = L20_2
            end
          end
        end
      end
      L15_2 = Clamp
      L16_2 = L14_2
      L17_2 = 1
      L18_2 = 100
      L15_2 = L15_2(L16_2, L17_2, L18_2)
      L14_2 = L15_2
      L15_2 = 1
      L16_2 = L14_2
      L17_2 = 1
      for L18_2 = L15_2, L16_2, L17_2 do
        L19_2 = table
        L19_2 = L19_2.insert
        L20_2 = L7_2
        L21_2 = L12_2
        L19_2(L20_2, L21_2)
      end
    end
    L8_2 = Shuffle
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    L8_2 = L8_2[1]
    L1_2[L6_2] = L8_2
    L9_2 = L2_2[L8_2]
    if not L9_2 then
      L2_2[L8_2] = 1
    else
      L2_2[L8_2] = 2
    end
  end
  L3_2 = A0_2.unluckyCounter
  L4_2 = A0_2.unluckyFactor
  if L3_2 >= L4_2 then
    A0_2.unluckyCounter = 0
    L3_2 = 1
    L4_2 = 3
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = L1_2[L6_2]
      if 4 == L7_2 then
        L7_2 = L1_2[L6_2]
        L8_2 = RandomNumber
        L9_2 = 1
        L10_2 = 4
        L8_2 = L8_2(L9_2, L10_2)
        L7_2 = L7_2 + L8_2
        L1_2[L6_2] = L7_2
      end
    end
    L3_2 = RandomNumber
    L4_2 = 1
    L5_2 = 3
    L3_2 = L3_2(L4_2, L5_2)
    L1_2[L3_2] = 8
  else
    L3_2 = L1_2[1]
    if 5 == L3_2 then
      L3_2 = L1_2[2]
      if 5 == L3_2 then
        L3_2 = L1_2[3]
        if 5 == L3_2 then
          L3_2 = A0_2.jackpotCounter
          L4_2 = A0_2.jackpotLimiter
          if L3_2 < L4_2 then
            L3_2 = RandomNumber
            L4_2 = 1
            L5_2 = 3
            L3_2 = L3_2(L4_2, L5_2)
            L1_2[L3_2] = 8
          else
            A0_2.jackpotCounter = 0
          end
        end
      end
    end
  end
  return L1_2
end
GetSlotSpinResultsForMachine = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = 0
  L3_2 = 0
  L4_2 = 0
  L5_2 = 1
  L6_2 = A1_2
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = GetSlotSpinResultsForMachine
    L10_2 = A0_2
    L9_2 = L9_2(L10_2)
    L10_2 = CalculateSlotWinningsForMachine
    L11_2 = A0_2
    L12_2 = L9_2
    L13_2 = 500
    L10_2 = L10_2(L11_2, L12_2, L13_2)
    L2_2 = L2_2 + 500
    L2_2 = L2_2 - L10_2
    L11_2 = L9_2[1]
    if 5 == L11_2 then
      L11_2 = L9_2[2]
      if 5 == L11_2 then
        L11_2 = L9_2[3]
        if 5 == L11_2 then
          L3_2 = L3_2 + 1
        end
      end
    end
    if 0 == L10_2 then
      L4_2 = L4_2 + 1
    end
  end
  L5_2 = {}
  L5_2.profit = L2_2
  L5_2.jackpots = L3_2
  L5_2.noWins = L4_2
  L5_2.iterations = A1_2
  return L5_2
end
MeasureSlotProfit = L10_1
L10_1 = pairs
L11_1 = machineModels
L10_1, L11_1, L12_1, L13_1 = L10_1(L11_1)
for L14_1, L15_1 in L10_1, L11_1, L12_1, L13_1 do
  L15_1.jackpotCounter = 0
  L15_1.unluckyCounter = 0
end
