local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = {}
L0_1.playerId = -1
L0_1.spinTime = 0
L0_1.strength = 1
L0_1.item = "Nothing"
L0_1.actualRotation = 0.0
L0_1.finalRotation = 0.0
L0_1.broken = false
L0_1.usedCount = 0
L1_1 = {}
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = DebugStart
  L3_2 = "AddWinnings"
  L2_2(L3_2)
  L1_1.playerId = A0_2
  L1_1.winningItem = A1_2
  L2_2 = GetGameTimer
  L2_2 = L2_2()
  L1_1.startSpinTime = L2_2
end
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = 0
  L1_2 = ipairs
  L2_2 = LuckyWheelRandomItems
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.possibility
    if not L7_2 then
      L6_2.possibility = 1
    end
    L7_2 = L6_2.possibility
    L0_2 = L0_2 + L7_2
  end
  L1_2 = math
  L1_2 = L1_2.randomseed
  L2_2 = os
  L2_2 = L2_2.time
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L2_2()
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L1_2 = math
  L1_2 = L1_2.random
  L2_2 = 1
  L3_2 = L0_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = ipairs
  L3_2 = LuckyWheelRandomItems
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.possibility
    L1_2 = L1_2 - L8_2
    if L1_2 <= 0 then
      return L7_2
    end
  end
end
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = DebugStart
  L3_2 = "CollectWinnings"
  L2_2(L3_2)
  L2_2 = L1_1.playerId
  if L2_2 == A0_2 then
    L2_2 = GetGameTimer
    L2_2 = L2_2()
    L3_2 = L1_1.startSpinTime
    L3_2 = L3_2 + 5000
    if L2_2 > L3_2 then
      L2_2 = -1
      L3_2 = L1_1.winningItem
      if "Drinks" == L3_2 then
        L4_2 = GetPlayerIdentifier
        L5_2 = A0_2
        L4_2 = L4_2(L5_2)
        L5_2 = Cache
        L6_2 = L5_2
        L5_2 = L5_2.Get
        L7_2 = L4_2
        function L8_2(A0_3)
          local L1_3, L2_3
          if not A0_3 then
            return
          end
          L1_3 = os
          L1_3 = L1_3.time
          L1_3 = L1_3()
          L2_3 = Config
          L2_3 = L2_3.LUCKY_WHEEL_FREE_DRINKS_FOR
          L1_3 = L1_3 + L2_3
          A0_3.freeDrinksUntil = L1_3
          L1_3 = Casino_ResendPlayerProgress
          L2_3 = A0_2
          L1_3(L2_3)
        end
        L5_2(L6_2, L7_2, L8_2)
      elseif "Random" == L3_2 then
        L4_2 = L3_1
        L4_2 = L4_2()
        L5_2 = type
        L6_2 = L4_2.amount
        L5_2 = L5_2(L6_2)
        if "table" == L5_2 then
          L5_2 = RandomNumber
          L6_2 = L4_2.amount
          L6_2 = L6_2[1]
          L7_2 = L4_2.amount
          L7_2 = L7_2[2]
          L5_2 = L5_2(L6_2, L7_2)
          if L5_2 then
            goto lbl_45
          end
        end
        L5_2 = L4_2.amount
        ::lbl_45::
        L1_1.randomItem = L4_2
        L1_1.randomAmount = L5_2
        L6_2 = AddCasinoItem
        L7_2 = A0_2
        L8_2 = L4_2.inventoryName
        L9_2 = L5_2
        L6_2(L7_2, L8_2, L9_2)
      else
        L4_2 = string
        L4_2 = L4_2.match
        L5_2 = L3_2
        L6_2 = "Money"
        L4_2 = L4_2(L5_2, L6_2)
        if L4_2 then
          L4_2 = LuckyWheelItems
          L4_2 = L4_2[L3_2]
          L4_2 = L4_2.moneyReward
          L5_2 = AddPlayerMoney
          L6_2 = A0_2
          L7_2 = L4_2
          L8_2 = true
          L5_2(L6_2, L7_2, L8_2)
          L1_1.chipsMoney = L4_2
        else
          L4_2 = string
          L4_2 = L4_2.match
          L5_2 = L3_2
          L6_2 = "Chips"
          L4_2 = L4_2(L5_2, L6_2)
          if L4_2 then
            L4_2 = LuckyWheelItems
            L4_2 = L4_2[L3_2]
            L4_2 = L4_2.chipsReward
            L5_2 = Win
            L6_2 = A0_2
            L7_2 = "Chips"
            L8_2 = L4_2
            L9_2 = "Lucky Wheel"
            L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
            L2_2 = L5_2
            L1_1.chipsMoney = L4_2
          elseif "Vehicle" == L3_2 then
            L4_2 = Cache
            L4_2 = L4_2.Settings
            L4_2 = L4_2.PodiumPriceProps
            L5_2 = type
            L6_2 = L4_2
            L5_2 = L5_2(L6_2)
            if "table" ~= L5_2 then
              L5_2 = json
              L5_2 = L5_2.decode
              L6_2 = L4_2
              L5_2 = L5_2(L6_2)
              L4_2 = L5_2
            end
            if L4_2 then
              L5_2 = L4_2.fuelLevel
              if L5_2 then
                L5_2 = L4_2.model
                L1_1.podiumModel = L5_2
                L5_2 = Cache
                L6_2 = L5_2
                L5_2 = L5_2.GiveVehicle
                L7_2 = A0_2
                L8_2 = L4_2
                L5_2(L6_2, L7_2, L8_2)
                L5_2 = Config
                L5_2 = L5_2.LUCKY_WHEEL_CAR_ONE_WINNER
                if L5_2 then
                  L5_2 = Cache
                  L6_2 = L5_2
                  L5_2 = L5_2.UpdateSetting
                  L7_2 = "PodiumPriceProps"
                  L8_2 = ""
                  L5_2(L6_2, L7_2, L8_2)
                end
              end
            end
          end
        end
      end
      L4_2 = BroadcastCasino
      L5_2 = "LuckyWheel:CollectWinnings"
      L6_2 = A0_2
      L7_2 = L1_1
      L8_2 = L2_2
      L4_2(L5_2, L6_2, L7_2, L8_2)
      L1_1.playerId = -1
      L1_1.winningItem = "Nothing"
      L4_2 = GetGameTimer
      L4_2 = L4_2()
      L4_2 = L4_2 * 2
      L1_1.startSpinTime = L4_2
      L1_1.randomItem = nil
      L1_1.randomAmount = nil
      L4_2 = L3_2
      L6_2 = L4_2
      L5_2 = L4_2.startswith
      L7_2 = "Chips"
      L5_2 = L5_2(L6_2, L7_2)
      if not L5_2 then
        L6_2 = L4_2
        L5_2 = L4_2.startswith
        L7_2 = "Money"
        L5_2 = L5_2(L6_2, L7_2)
        if L5_2 then
          L5_2 = "Money ( "
          L6_2 = FormatPrice
          L7_2 = LuckyWheelItems
          L7_2 = L7_2[L3_2]
          L7_2 = L7_2.moneyReward
          L6_2 = L6_2(L7_2)
          L7_2 = " )"
          L5_2 = L5_2 .. L6_2 .. L7_2
          L4_2 = L5_2
        end
        L5_2 = AddLogEvent
        L6_2 = A0_2
        L7_2 = "Won Lucky Wheel "
        L8_2 = L4_2
        L7_2 = L7_2 .. L8_2
        L8_2 = nil
        L9_2 = false
        L5_2(L6_2, L7_2, L8_2, L9_2)
      end
    end
  end
end
L5_1 = RegisterNetEvent
L6_1 = "LuckyWheel:Quit"
L5_1(L6_1)
L5_1 = AddEventHandler
L6_1 = "LuckyWheel:Quit"
function L7_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = source
  L1_2 = L0_1.playerId
  if L1_2 ~= L0_2 then
    return
  end
  L0_1.playerId = -1
  L1_2 = BroadcastCasino
  L2_2 = "LuckyWheel:Quit"
  L3_2 = L0_1
  L1_2(L2_2, L3_2)
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNetEvent
L6_1 = "LuckyWheel:TakeControl"
L5_1(L6_1)
L5_1 = AddEventHandler
L6_1 = "LuckyWheel:TakeControl"
function L7_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = source
  L1_2 = GetPlayerIdentifier
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L0_1.playerId
  if -1 ~= L2_2 then
    return
  end
  L2_2 = Config
  L2_2 = L2_2.Jobs
  if L2_2 then
    L2_2 = Config
    L2_2 = L2_2.Jobs
    L2_2 = L2_2.Electrician
    L2_2 = L2_2.Enabled
    if L2_2 then
      L2_2 = L0_1.broken
      if L2_2 then
        return
      end
    end
  end
  L2_2 = GetGameTimer
  L2_2 = L2_2()
  L3_2 = L0_1.spinTime
  L2_2 = L2_2 - L3_2
  L3_2 = 15000
  if L2_2 < L3_2 then
    L2_2 = GetGameTimer
    L2_2 = L2_2()
    L3_2 = L0_1.spinTime
    L2_2 = L2_2 - L3_2
    L3_2 = 15000
    L2_2 = L3_2 - L2_2
    L3_2 = TriggerClientEvent
    L4_2 = "LuckyWheel:Busy"
    L5_2 = L0_2
    L6_2 = L2_2
    L7_2 = L0_1
    L3_2(L4_2, L5_2, L6_2, L7_2)
    return
  end
  L2_2 = Config
  L2_2 = L2_2.LUCKY_WHEEL_PAY_TO_SPIN
  if L2_2 then
    L3_2 = tonumber
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      L3_2 = GetPlayerCasinoItemCount
      L4_2 = L0_2
      L5_2 = L2_2
      L3_2 = L3_2(L4_2, L5_2)
      if L3_2 < 1 then
        return
      end
    end
  end
  L3_2 = Config
  L3_2 = L3_2.Jobs
  if L3_2 then
    L3_2 = Config
    L3_2 = L3_2.Jobs
    L3_2 = L3_2.Electrician
    L3_2 = L3_2.Enabled
    if L3_2 then
      L3_2 = L0_1.broken
      if not L3_2 then
        L3_2 = Config
        L3_2 = L3_2.Jobs
        L3_2 = L3_2.Electrician
        L3_2 = L3_2.Difficulty
        L3_2 = L3_2.LuckyWheel
        L3_2 = L3_2.Durability
        L4_2 = L0_1.usedCount
        L4_2 = L4_2 + 1
        L0_1.usedCount = L4_2
        L4_2 = L0_1.usedCount
        if L3_2 <= L4_2 then
          L0_1.broken = true
          L0_1.usedCount = 0
          L4_2 = TriggerClientEvent
          L5_2 = "LuckyWheel:State"
          L6_2 = L0_2
          L7_2 = L0_1
          L4_2(L5_2, L6_2, L7_2)
          return
        end
      end
    end
  end
  L3_2 = Cache
  L4_2 = L3_2
  L3_2 = L3_2.Get
  L5_2 = L1_2
  function L6_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    if not A0_3 then
      return
    end
    L1_3 = A0_3.luckyWheelCooldownUntil
    if L1_3 then
      L1_3 = os
      L1_3 = L1_3.time
      L1_3 = L1_3()
      L2_3 = A0_3.luckyWheelCooldownUntil
      if L1_3 < L2_3 then
        return
      end
    end
    L1_3 = L0_2
    L0_1.playerId = L1_3
    L1_3 = Repeat
    L2_3 = L0_1.finalRotation
    L3_3 = 360
    L1_3 = L1_3(L2_3, L3_3)
    L0_1.actualRotation = L1_3
    L1_3 = BroadcastCasino
    L2_3 = "LuckyWheel:TakeControl"
    L3_3 = L0_1
    L1_3(L2_3, L3_3)
    L1_3 = Cache
    L2_3 = L1_3
    L1_3 = L1_3.SetPlayerState
    L3_3 = L0_2
    L4_3 = "Game"
    L5_3 = {}
    L5_3.type = "Lucky Wheel"
    L1_3(L2_3, L3_3, L4_3, L5_3)
    L1_3 = Cache
    L2_3 = L1_3
    L1_3 = L1_3.Save
    L3_3 = L1_2
    L1_3(L2_3, L3_3)
  end
  L3_2(L4_2, L5_2, L6_2)
end
L5_1(L6_1, L7_1)
function L5_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L4_2 = DebugStart
  L5_2 = "StartSpin"
  L4_2(L5_2)
  L4_2 = {}
  L5_2 = pairs
  L6_2 = LuckyWheelItems
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2 in L5_2, L6_2, L7_2, L8_2 do
    L10_2 = Clamp
    L11_2 = LuckyWheelItems
    L11_2 = L11_2[L9_2]
    L11_2 = L11_2.posibility
    L12_2 = 1
    L13_2 = 1000000
    L10_2 = L10_2(L11_2, L12_2, L13_2)
    L11_2 = 1
    L12_2 = L10_2
    L13_2 = 1
    for L14_2 = L11_2, L12_2, L13_2 do
      L15_2 = table
      L15_2 = L15_2.insert
      L16_2 = L4_2
      L17_2 = L9_2
      L15_2(L16_2, L17_2)
    end
  end
  L5_2 = RandomNumber
  L6_2 = #L4_2
  L5_2 = L5_2(L6_2)
  L5_2 = L4_2[L5_2]
  L6_2 = GetGameTimer
  L6_2 = L6_2()
  L0_1.spinTime = L6_2
  L0_1.playerId = -1
  L0_1.item = L5_2
  L0_1.strength = A3_2
  if "Vehicle" == L5_2 then
    L6_2 = Cache
    L6_2 = L6_2.Settings
    L6_2 = L6_2.PodiumPriceProps
    L7_2 = type
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if "table" ~= L7_2 then
      L7_2 = json
      L7_2 = L7_2.decode
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      L6_2 = L7_2
    end
    if L6_2 and "" ~= L6_2 then
      L7_2 = L6_2.fuelLevel
      if L7_2 then
        L7_2 = Config
        L7_2 = L7_2.LUCKY_WHEEL_CAR_WINABLE
        if false ~= L7_2 then
          goto lbl_68
        end
      end
    end
    L7_2 = Config
    L5_2 = L7_2.LUCKY_WHEEL_VEHICLE_ALTERNATIVE
  end
  ::lbl_68::
  L6_2 = LuckyWheelItems
  L6_2 = L6_2[L5_2]
  L7_2 = 0
  L8_2 = type
  L9_2 = L6_2.rotation
  L8_2 = L8_2(L9_2)
  if "table" == L8_2 then
    L8_2 = L6_2.rotation
    L7_2 = L8_2[1]
  else
    L7_2 = L6_2.rotation
  end
  L8_2 = 360 * A3_2
  L8_2 = L7_2 - L8_2
  L0_1.finalRotation = L8_2
  L8_2 = math
  L8_2 = L8_2.abs
  L9_2 = L0_1.actualRotation
  L10_2 = L0_1.finalRotation
  L9_2 = L9_2 - L10_2
  L8_2 = L8_2(L9_2)
  L9_2 = 180
  if L8_2 < L9_2 then
    L8_2 = L0_1.finalRotation
    L8_2 = L8_2 - 360
    L0_1.finalRotation = L8_2
  end
  L8_2 = L2_1
  L9_2 = A0_2
  L10_2 = L5_2
  L8_2(L9_2, L10_2)
  L8_2 = os
  L8_2 = L8_2.time
  L8_2 = L8_2()
  L9_2 = Config
  L9_2 = L9_2.LUCKY_WHEEL_COOLDOWN
  L8_2 = L8_2 + L9_2
  L9_2 = BroadcastCasino
  L10_2 = "LuckyWheel:Spin"
  L11_2 = A0_2
  L12_2 = L0_1
  L13_2 = L8_2
  L9_2(L10_2, L11_2, L12_2, L13_2)
  L9_2 = Cache
  L10_2 = L9_2
  L9_2 = L9_2.SetPlayerState
  L11_2 = A0_2
  L12_2 = "Game"
  L13_2 = nil
  L9_2(L10_2, L11_2, L12_2, L13_2)
  A2_2.luckyWheelCooldownUntil = L8_2
end
L6_1 = RegisterNetEvent
L7_1 = "LuckyWheel:Spin"
L6_1(L7_1)
L6_1 = AddEventHandler
L7_1 = "LuckyWheel:Spin"
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = source
  L2_2 = GetPlayerIdentifier
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = L0_1.playerId
  if L3_2 ~= L1_2 then
    return
  end
  L3_2 = GetGameTimer
  L3_2 = L3_2()
  L4_2 = L0_1.spinTime
  L3_2 = L3_2 - L4_2
  L4_2 = 20000
  if L3_2 < L4_2 then
    return
  end
  L3_2 = true
  L4_2 = Config
  L4_2 = L4_2.LUCKY_WHEEL_PAY_TO_SPIN
  if L4_2 then
    L5_2 = tonumber
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    if L5_2 and 0 ~= L4_2 then
      L5_2 = Pay
      L6_2 = L1_2
      L7_2 = "Spin"
      L8_2 = L4_2
      L9_2 = "Lucky Wheel"
      L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
      L3_2 = L5_2
  end
  elseif L4_2 then
    L5_2 = tonumber
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    if not L5_2 then
      L5_2 = GetPlayerCasinoItemCount
      L6_2 = L1_2
      L7_2 = L4_2
      L5_2 = L5_2(L6_2, L7_2)
      if L5_2 < 1 then
        return
      end
      L6_2 = RemoveCasinoItem
      L7_2 = L1_2
      L8_2 = L4_2
      L9_2 = 1
      L6_2(L7_2, L8_2, L9_2)
    end
  end
  if L3_2 and -1 ~= L3_2 then
    L5_2 = Cache
    L6_2 = L5_2
    L5_2 = L5_2.Get
    L7_2 = L2_2
    function L8_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3
      if not A0_3 then
        L0_1.playerId = -1
        return
      end
      L1_3 = A0_3.luckyWheelCooldownUntil
      if L1_3 then
        L1_3 = os
        L1_3 = L1_3.time
        L1_3 = L1_3()
        L2_3 = A0_3.luckyWheelCooldownUntil
        if L1_3 < L2_3 then
          L0_1.playerId = -1
          return
        end
      end
      L1_3 = L5_1
      L2_3 = L1_2
      L3_3 = L2_2
      L4_3 = A0_3
      L5_3 = A0_2
      L1_3(L2_3, L3_3, L4_3, L5_3)
    end
    L5_2(L6_2, L7_2, L8_2)
    if true ~= L3_2 then
      L5_2 = TriggerClientEvent
      L6_2 = "LuckyWheel:Paid"
      L7_2 = L1_2
      L8_2 = L3_2
      L9_2 = L4_2
      L5_2(L6_2, L7_2, L8_2, L9_2)
    end
  end
end
L6_1(L7_1, L8_1)
L6_1 = RegisterNetEvent
L7_1 = "LuckyWheel:CollectWinnings"
L6_1(L7_1)
L6_1 = AddEventHandler
L7_1 = "LuckyWheel:CollectWinnings"
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = source
  L2_2 = L4_1
  L3_2 = L1_2
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
end
L6_1(L7_1, L8_1)
L6_1 = RegisterNetEvent
L7_1 = "LuckyWheel:GetState"
L6_1(L7_1)
L6_1 = AddEventHandler
L7_1 = "LuckyWheel:GetState"
function L8_1()
  local L0_2, L1_2, L2_2
  L0_2 = source
  L1_2 = LuckyWheel_SendState
  L2_2 = L0_2
  L1_2(L2_2)
end
L6_1(L7_1, L8_1)
L6_1 = RegisterNetEvent
L7_1 = "LuckyWheel:BeginFix"
L6_1(L7_1)
L6_1 = AddEventHandler
L7_1 = "LuckyWheel:BeginFix"
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = source
  L1_2 = Config
  L1_2 = L1_2.Jobs
  if L1_2 then
    L1_2 = Config
    L1_2 = L1_2.Jobs
    L1_2 = L1_2.Electrician
    L1_2 = L1_2.Enabled
    if L1_2 then
      goto lbl_13
    end
  end
  do return end
  ::lbl_13::
  L1_2 = IsPlayerAtJob
  L2_2 = L0_2
  L3_2 = Config
  L3_2 = L3_2.Jobs
  L3_2 = L3_2.Electrician
  L3_2 = L3_2.JobName
  L4_2 = nil
  L5_2 = Config
  L5_2 = L5_2.Jobs
  L5_2 = L5_2.Electrician
  L5_2 = L5_2.MinGrade
  L6_2 = Config
  L6_2 = L6_2.Jobs
  L6_2 = L6_2.Electrician
  L6_2 = L6_2.MaxGrade
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  if not L1_2 then
    return
  end
  L1_2 = L0_1.broken
  if not L1_2 then
    return
  end
  L1_2 = Config
  L1_2 = L1_2.Jobs
  L1_2 = L1_2.Electrician
  L1_2 = L1_2.CircuitBoardNeedsPurchase
  if L1_2 then
    L1_2 = GetPlayerCasinoItemCount
    L2_2 = L0_2
    L3_2 = Config
    L3_2 = L3_2.Jobs
    L3_2 = L3_2.Electrician
    L3_2 = L3_2.CircuitBoardItemName
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 < 1 then
      L2_2 = TriggerClientEvent
      L3_2 = "LuckyWheel:BeginFix"
      L4_2 = L0_2
      L5_2 = 0
      L2_2(L3_2, L4_2, L5_2)
      return
    end
    L2_2 = RemoveCasinoItem
    L3_2 = L0_2
    L4_2 = Config
    L4_2 = L4_2.Jobs
    L4_2 = L4_2.Electrician
    L4_2 = L4_2.CircuitBoardItemName
    L5_2 = 1
    L2_2(L3_2, L4_2, L5_2)
  end
  L1_2 = TriggerClientEvent
  L2_2 = "LuckyWheel:BeginFix"
  L3_2 = L0_2
  L4_2 = 1
  L1_2(L2_2, L3_2, L4_2)
end
L6_1(L7_1, L8_1)
L6_1 = RegisterNetEvent
L7_1 = "LuckyWheel:GotFixed"
L6_1(L7_1)
L6_1 = AddEventHandler
L7_1 = "LuckyWheel:GotFixed"
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = source
  L1_2 = Config
  L1_2 = L1_2.Jobs
  if L1_2 then
    L1_2 = Config
    L1_2 = L1_2.Jobs
    L1_2 = L1_2.Electrician
    L1_2 = L1_2.Enabled
    if L1_2 then
      goto lbl_13
    end
  end
  do return end
  ::lbl_13::
  L1_2 = IsPlayerAtJob
  L2_2 = L0_2
  L3_2 = Config
  L3_2 = L3_2.Jobs
  L3_2 = L3_2.Electrician
  L3_2 = L3_2.JobName
  L4_2 = nil
  L5_2 = Config
  L5_2 = L5_2.Jobs
  L5_2 = L5_2.Electrician
  L5_2 = L5_2.MinGrade
  L6_2 = Config
  L6_2 = L6_2.Jobs
  L6_2 = L6_2.Electrician
  L6_2 = L6_2.MaxGrade
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  if not L1_2 then
    return
  end
  L1_2 = L0_1.broken
  if not L1_2 then
    return
  end
  L0_1.broken = false
  L1_2 = BroadcastCasino
  L2_2 = "LuckyWheel:GotFixed"
  L1_2(L2_2)
end
L6_1(L7_1, L8_1)
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = DebugStart
  L2_2 = "LuckyWheel_SendState"
  L1_2(L2_2)
  L1_2 = TriggerClientEvent
  L2_2 = "LuckyWheel:State"
  L3_2 = A0_2
  L4_2 = L0_1
  L1_2(L2_2, L3_2, L4_2)
end
LuckyWheel_SendState = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = DebugStart
  L2_2 = "LuckyWheel_PlayerDropped"
  L1_2(L2_2)
  L1_2 = L0_1.playerId
  if L1_2 == A0_2 then
    L0_1.playerId = -1
    L1_2 = BroadcastCasino
    L2_2 = "LuckyWheel:PlayerLeft"
    L3_2 = L0_1
    L1_2(L2_2, L3_2)
    L1_2 = Cache
    L2_2 = L1_2
    L1_2 = L1_2.SetPlayerState
    L3_2 = A0_2
    L4_2 = "Game"
    L5_2 = nil
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end
LuckyWheel_PlayerDropped = L6_1
