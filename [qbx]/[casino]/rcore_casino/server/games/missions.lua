local L0_1, L1_1, L2_1, L3_1, L4_1
do return end
L0_1 = {}
MoneyLoad = L0_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = Config
  L0_2 = L0_2.Jobs
  if not L0_2 then
    return
  end
  L0_2 = DoesEntityExist
  L1_2 = MoneyLoad
  L1_2 = L1_2.serverTruck
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = DeleteEntity
    L1_2 = MoneyLoad
    L1_2 = L1_2.serverTruck
    L0_2(L1_2)
  end
  L0_2 = MoneyLoad
  L0_2 = L0_2.bags
  if L0_2 then
    L0_2 = pairs
    L1_2 = MoneyLoad
    L1_2 = L1_2.bags
    L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
    for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
      L6_2 = NetworkGetEntityFromNetworkId
      L7_2 = L5_2
      L6_2 = L6_2(L7_2)
      L7_2 = DeleteEntity
      L8_2 = L6_2
      L7_2(L8_2)
    end
  end
  L0_2 = MoneyLoad
  L0_2 = L0_2.loaderBag
  if L0_2 then
    L0_2 = NetworkGetEntityFromNetworkId
    L1_2 = MoneyLoad
    L1_2 = L1_2.loaderBag
    L0_2 = L0_2(L1_2)
    L1_2 = DeleteEntity
    L2_2 = L0_2
    L1_2(L2_2)
    L1_2 = MoneyLoad
    L1_2.loaderBag = nil
  end
  L0_2 = {}
  L0_2.missionid = 0
  L0_2.step = 0
  L0_2.host = 0
  L0_2.truck = 0
  L0_2.serverTruck = 0
  L0_2.truckId = 0
  L0_2.insideTruck = false
  L0_2.active = false
  L1_2 = Config
  L1_2 = L1_2.Jobs
  L1_2 = L1_2.MONEYLOAD_WORKERJOBNAME
  L0_2.jobName = L1_2
  L1_2 = Config
  L1_2 = L1_2.Jobs
  L1_2 = L1_2.MONEYLOAD_WORKERJOBGRADE
  L0_2.jobMinGrade = L1_2
  L1_2 = Config
  L1_2 = L1_2.Jobs
  L1_2 = L1_2.MONEYLOAD_WORKERJOBGRADE
  L0_2.jobMaxGrade = L1_2
  L1_2 = Config
  L1_2 = L1_2.Jobs
  L1_2 = L1_2.MONEYLOAD_TIME
  L0_2.timeleft = L1_2
  L0_2.loaderBag = nil
  MoneyLoad = L0_2
end
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L3_2 = {}
  L4_2 = ipairs
  L5_2 = GetPlayers
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L5_2()
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = IsPlayerAtJob
    L11_2 = L9_2
    L12_2 = A0_2
    L13_2 = nil
    L14_2 = A1_2
    L15_2 = A2_2
    L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
    if L10_2 then
      L10_2 = table
      L10_2 = L10_2.insert
      L11_2 = L3_2
      L12_2 = L9_2
      L10_2(L11_2, L12_2)
    end
  end
  return L3_2
end
GetJobMembers = L1_1
function L1_1(A0_2, A1_2, A2_2, ...)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = ipairs
  L4_2 = A0_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = math
    L9_2 = L9_2.ceil
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    if L9_2 ~= A1_2 then
      L9_2 = TriggerClientEvent
      L10_2 = A2_2
      L11_2 = L8_2
      L12_2 = ...
      L9_2(L10_2, L11_2, L12_2)
    end
  end
end
Broadcast = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, ...)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L5_2 = ipairs
  L6_2 = GetJobMembers
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = A2_2
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L6_2(L7_2, L8_2, L9_2)
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = math
    L11_2 = L11_2.ceil
    L12_2 = L10_2
    L11_2 = L11_2(L12_2)
    if L11_2 ~= A3_2 then
      L11_2 = TriggerClientEvent
      L12_2 = A4_2
      L13_2 = L10_2
      L14_2 = ...
      L11_2(L12_2, L13_2, L14_2)
    end
  end
end
BroadcastJobMembers = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = MoneyLoad
  L0_2 = L0_2.active
  if L0_2 then
    return
  end
  L0_2 = MoneyLoad
  L1_2 = MoneyLoad
  L1_2 = L1_2.timeleft
  L1_2 = L1_2 + 3
  L0_2.timeleft = L1_2
  L0_2 = MoneyLoad
  L0_2.active = true
  L0_2 = MoneyLoad
  L0_2.truckHealth = 1000.0
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L0_3 = false
    L1_3 = false
    L2_3 = Wait
    L3_3 = 1000
    L2_3(L3_3)
    while true do
      L2_3 = MoneyLoad
      L2_3 = L2_3.active
      if not L2_3 then
        break
      end
      L2_3 = MoneyLoad
      L3_3 = MoneyLoad
      L3_3 = L3_3.timeleft
      L3_3 = L3_3 - 1
      L2_3.timeleft = L3_3
      L2_3 = MoneyLoad
      L2_3 = L2_3.timeleft
      if 0 == L2_3 then
        L2_3 = Broadcast
        L3_3 = MoneyLoad
        L3_3 = L3_3.members
        L4_3 = -1
        L5_3 = "CasinoMission:MoneyLoad:Ended"
        L6_3 = false
        L7_3 = "MONEYLOAD_SCREEN_MAIN_DESC_4"
        L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
        L2_3 = L0_1
        L2_3()
      end
      L2_3 = GetEntityHealth
      L3_3 = MoneyLoad
      L3_3 = L3_3.serverTruck
      L2_3 = L2_3(L3_3)
      if 0.0 ~= L2_3 then
        L0_3 = true
      end
      if not L0_3 then
        L2_3 = 1000.0
      end
      L3_3 = DoesEntityExist
      L4_3 = MoneyLoad
      L4_3 = L4_3.serverTruck
      L3_3 = L3_3(L4_3)
      if not L3_3 then
        L1_3 = true
        L2_3 = 0
      end
      L3_3 = MoneyLoad
      L3_3 = L3_3.truckHealth
      if L2_3 < L3_3 then
        L3_3 = MoneyLoad
        L3_3.truckHealth = L2_3
      end
      L3_3 = MoneyLoad
      L3_3 = L3_3.truckHealth
      if L3_3 > 0 then
        L1_3 = true
      end
      L3_3 = MoneyLoad
      L3_3 = L3_3.truckHealth
      L4_3 = 950
      if L3_3 < L4_3 then
        L3_3 = MoneyLoad
        L3_3.truckHealth = 950
      end
      L3_3 = MoneyLoad
      L3_3 = L3_3.step
      if 1 == L3_3 then
        L3_3 = GetEntityCoords
        L4_3 = MoneyLoad
        L4_3 = L4_3.serverTruck
        L3_3 = L3_3(L4_3)
        L4_3 = vector3
        L5_3 = 917.92981
        L6_3 = 51.74008
        L7_3 = L3_3.z
        L4_3 = L4_3(L5_3, L6_3, L7_3)
        L4_3 = L3_3 - L4_3
        L4_3 = #L4_3
        if L4_3 < 10.0 then
          L4_3 = MoneyLoad
          L4_3.step = 2
          L4_3 = Broadcast
          L5_3 = MoneyLoad
          L5_3 = L5_3.members
          L6_3 = -1
          L7_3 = "CasinoMission:MoneyLoad:StepChanged"
          L8_3 = MoneyLoad
          L8_3 = L8_3.step
          L4_3(L5_3, L6_3, L7_3, L8_3)
        end
        L4_3 = MoneyLoad
        L4_3 = L4_3.truckHealth
        L4_3 = L4_3 - 950.0
        L4_3 = L4_3 / 50.0
        L4_3 = L4_3 * 1.0
        L5_3 = math
        L5_3 = L5_3.ceil
        L6_3 = MoneyLoad
        L6_3 = L6_3.take
        L6_3 = L6_3 * L4_3
        L5_3 = L5_3(L6_3)
        L6_3 = Broadcast
        L7_3 = MoneyLoad
        L7_3 = L7_3.members
        L8_3 = -1
        L9_3 = "CasinoMission:MoneyLoad:TruckDataRefresh"
        L10_3 = L3_3
        L11_3 = L5_3
        L6_3(L7_3, L8_3, L9_3, L10_3, L11_3)
      end
      if L1_3 then
        L3_3 = MoneyLoad
        L3_3 = L3_3.truckHealth
        L4_3 = 950
        if L3_3 <= L4_3 then
          L3_3 = Broadcast
          L4_3 = MoneyLoad
          L4_3 = L4_3.members
          L5_3 = -1
          L6_3 = "CasinoMission:MoneyLoad:Ended"
          L7_3 = false
          L8_3 = "MONEYLOAD_SCREEN_MAIN_DESC_3"
          L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
          L3_3 = L0_1
          L3_3()
        end
      end
      L3_3 = Wait
      L4_3 = 1000
      L3_3(L4_3)
    end
  end
  L0_2(L1_2)
end
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = MoneyLoad
  L2_2 = L2_2.active
  if L2_2 then
    return
  end
  L2_2 = GetJobMembers
  L3_2 = Config
  L3_2 = L3_2.Jobs
  L3_2 = L3_2.MONEYLOAD_WORKERJOBNAME
  L4_2 = Config
  L4_2 = L4_2.Jobs
  L4_2 = L4_2.MONEYLOAD_WORKERJOBGRADE
  L2_2 = L2_2(L3_2, L4_2)
  L2_2 = #L2_2
  if 0 == L2_2 then
    return
  end
  L2_2 = L0_1
  L2_2()
  L2_2 = MoneyLoad
  L2_2.host = A0_2
  L2_2 = MoneyLoad
  L2_2.take = A1_2
  L2_2 = Config
  L2_2 = L2_2.Jobs
  L2_2 = L2_2.MoneyLoadStartLocations
  L3_2 = RandomNumber
  L4_2 = 1
  L5_2 = Config
  L5_2 = L5_2.Jobs
  L5_2 = L5_2.MoneyLoadStartLocations
  L5_2 = #L5_2
  L3_2 = L3_2(L4_2, L5_2)
  L2_2 = L2_2[L3_2]
  L3_2 = MoneyLoad
  L4_2 = L2_2.Coords
  L3_2.truckPos = L4_2
  L3_2 = MoneyLoad
  L4_2 = L2_2.Heading
  L3_2.truckHead = L4_2
  L3_2 = GetHashKey
  L4_2 = "Stockade"
  L3_2 = L3_2(L4_2)
  L4_2 = CreateVehicle
  L5_2 = L3_2
  L6_2 = 0
  L7_2 = 0
  L8_2 = 0
  L9_2 = 0
  L10_2 = true
  L11_2 = true
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  while true do
    L5_2 = DoesEntityExist
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      break
    end
    L5_2 = Wait
    L6_2 = 0
    L5_2(L6_2)
  end
  L5_2 = GetVehicleType
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L6_2 = DeleteEntity
  L7_2 = L4_2
  L6_2(L7_2)
  L6_2 = MoneyLoad
  L7_2 = CreateVehicleServerSetter
  L8_2 = L3_2
  L9_2 = L5_2
  L10_2 = MoneyLoad
  L10_2 = L10_2.truckPos
  L11_2 = MoneyLoad
  L11_2 = L11_2.truckHead
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
  L6_2.serverTruck = L7_2
  L6_2 = SetVehicleDoorsLocked
  L7_2 = MoneyLoad
  L7_2 = L7_2.serverTruck
  L8_2 = 2
  L6_2(L7_2, L8_2)
  L6_2 = MoneyLoad
  L7_2 = GetJobMembers
  L8_2 = MoneyLoad
  L8_2 = L8_2.jobName
  L9_2 = MoneyLoad
  L9_2 = L9_2.jobMinGrade
  L10_2 = MoneyLoad
  L10_2 = L10_2.jobMaxGrade
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L6_2.members = L7_2
  while true do
    L6_2 = DoesEntityExist
    L7_2 = MoneyLoad
    L7_2 = L7_2.serverTruck
    L6_2 = L6_2(L7_2)
    if L6_2 then
      break
    end
    L6_2 = Wait
    L7_2 = 0
    L6_2(L7_2)
  end
  L6_2 = NetworkGetNetworkIdFromEntity
  L7_2 = MoneyLoad
  L7_2 = L7_2.serverTruck
  L6_2 = L6_2(L7_2)
  L7_2 = MoneyLoad
  L7_2.truckId = L6_2
  L7_2 = Broadcast
  L8_2 = MoneyLoad
  L8_2 = L8_2.members
  L9_2 = -1
  L10_2 = "CasinoMission:MoneyLoad:BeginMission"
  L11_2 = MoneyLoad
  L7_2(L8_2, L9_2, L10_2, L11_2)
  L7_2 = L1_1
  L7_2()
end
MoneyLoad_BeginMission = L2_1
L2_1 = RegisterNetEvent
L3_1 = "CasinoMission:MoneyLoad:MoneyBagPlayer"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "CasinoMission:MoneyLoad:MoneyBagPlayer"
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = source
  L2_2 = MoneyLoad
  L2_2 = L2_2.loadedPlayer
  if L2_2 ~= L1_2 then
    return
  end
  L2_2 = MoneyLoad
  L2_2.loaderBag = A0_2
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "CasinoMission:MoneyLoad:MoneyBags"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "CasinoMission:MoneyLoad:MoneyBags"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = source
  L2_2 = {}
  L3_2 = MoneyLoad
  L3_2.bags = A0_2
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "CasinoMission:MoneyLoad:DeleteBag"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "CasinoMission:MoneyLoad:DeleteBag"
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = source
  L1_2 = {}
  L2_2 = MoneyLoad
  L2_2 = L2_2.loadedPlayer
  if L2_2 ~= L0_2 then
    return
  end
  L2_2 = MoneyLoad
  L2_2 = L2_2.bags
  if L2_2 then
    L2_2 = NetworkGetEntityFromNetworkId
    L3_2 = MoneyLoad
    L3_2 = L3_2.bags
    L3_2 = L3_2[1]
    L2_2 = L2_2(L3_2)
    L3_2 = table
    L3_2 = L3_2.remove
    L4_2 = MoneyLoad
    L4_2 = L4_2.bags
    L5_2 = 1
    L3_2(L4_2, L5_2)
    L3_2 = DeleteEntity
    L4_2 = L2_2
    L3_2(L4_2)
  end
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "CasinoMission:MoneyLoad:Order"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "CasinoMission:MoneyLoad:Order"
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = source
  L1_2 = MoneyLoad
  L1_2 = L1_2.active
  if L1_2 then
    return
  end
  L1_2 = IsPlayerAtJob
  L2_2 = L0_2
  L3_2 = Config
  L3_2 = L3_2.Jobs
  L3_2 = L3_2.MONEYLOAD_STARTJOBNAME
  L4_2 = nil
  L5_2 = Config
  L5_2 = L5_2.Jobs
  L5_2 = L5_2.MONEYLOAD_STARTJOBGRADE
  L6_2 = Config
  L6_2 = L6_2.Jobs
  L6_2 = L6_2.MONEYLOAD_STARTJOBGRADE
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  if not L1_2 then
    return
  end
  L1_2 = MoneyLoad_BeginMission
  L2_2 = L0_2
  L3_2 = Config
  L3_2 = L3_2.Jobs
  L3_2 = L3_2.MONEYLOAD_TAKE
  L1_2(L2_2, L3_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "CasinoMission:MoneyLoad:PlayerLoaded"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "CasinoMission:MoneyLoad:PlayerLoaded"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = source
  L2_2 = {}
  L3_2 = MoneyLoad
  L3_2 = L3_2.step
  if 3 ~= L3_2 then
    return
  end
  L3_2 = MoneyLoad
  L3_2.step = 4
  L3_2 = MoneyLoad
  L3_2 = L3_2.truckHealth
  L3_2 = L3_2 - 950.0
  L3_2 = L3_2 / 50.0
  L3_2 = L3_2 * 1.0
  L4_2 = math
  L4_2 = L4_2.ceil
  L5_2 = MoneyLoad
  L5_2 = L5_2.take
  L5_2 = L5_2 * L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = TriggerClientEvent
  L6_2 = "CasinoMission:MoneyLoad:RealTake"
  L7_2 = MoneyLoad
  L7_2 = L7_2.loadedPlayer
  L8_2 = L4_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = Broadcast
  L6_2 = MoneyLoad
  L6_2 = L6_2.members
  L7_2 = -1
  L8_2 = "CasinoMission:MoneyLoad:StepChanged"
  L9_2 = MoneyLoad
  L9_2 = L9_2.step
  L5_2(L6_2, L7_2, L8_2, L9_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "CasinoMission:MoneyLoad:TruckBeginLoad"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "CasinoMission:MoneyLoad:TruckBeginLoad"
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = source
  L1_2 = MoneyLoad
  L1_2 = L1_2.step
  if 2 ~= L1_2 then
    return
  end
  L1_2 = MoneyLoad
  L1_2.step = 3
  L1_2 = MoneyLoad
  L1_2.loadedPlayer = L0_2
  L1_2 = Broadcast
  L2_2 = MoneyLoad
  L2_2 = L2_2.members
  L3_2 = -1
  L4_2 = "CasinoMission:MoneyLoad:StepChanged"
  L5_2 = MoneyLoad
  L5_2 = L5_2.step
  L6_2 = MoneyLoad
  L6_2 = L6_2.loadedPlayer
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "CasinoMission:MoneyLoad:DeliverMoney"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "CasinoMission:MoneyLoad:DeliverMoney"
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = source
  L1_2 = MoneyLoad
  L1_2 = L1_2.step
  if 4 ~= L1_2 then
    return
  end
  L1_2 = MoneyLoad
  L1_2 = L1_2.loadedPlayer
  if L1_2 ~= L0_2 then
    return
  end
  L1_2 = GetMoneyFromSociety
  L1_2 = L1_2()
  L2_2 = MoneyLoad
  L2_2 = L2_2.truckHealth
  L2_2 = L2_2 - 950.0
  L2_2 = L2_2 / 50.0
  L2_2 = L2_2 * 1.0
  L3_2 = math
  L3_2 = L3_2.ceil
  L4_2 = MoneyLoad
  L4_2 = L4_2.take
  L4_2 = L4_2 * L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = GiveMoneyToSociety
  L5_2 = L3_2
  L4_2(L5_2)
  L4_2 = Broadcast
  L5_2 = MoneyLoad
  L5_2 = L5_2.members
  L6_2 = -1
  L7_2 = "CasinoMission:MoneyLoad:Ended"
  L8_2 = true
  L9_2 = {}
  L10_2 = L1_2
  L11_2 = L1_2 + L3_2
  L9_2[1] = L10_2
  L9_2[2] = L11_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = L0_1
  L4_2()
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "CasinoMission:MoneyLoad:InTruckState"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "CasinoMission:MoneyLoad:InTruckState"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = source
  L2_2 = MoneyLoad
  L2_2.insideTruck = A0_2
  if A0_2 then
    L2_2 = MoneyLoad
    L2_2 = L2_2.step
    if 0 == L2_2 then
      L2_2 = MoneyLoad
      L2_2.step = 1
      L2_2 = Broadcast
      L3_2 = MoneyLoad
      L3_2 = L3_2.members
      L4_2 = -1
      L5_2 = "CasinoMission:MoneyLoad:StepChanged"
      L6_2 = MoneyLoad
      L6_2 = L6_2.step
      L2_2(L3_2, L4_2, L5_2, L6_2)
    end
  end
  L2_2 = Broadcast
  L3_2 = MoneyLoad
  L3_2 = L3_2.members
  L4_2 = -1
  L5_2 = "CasinoMission:MoneyLoad:InTruckState"
  L6_2 = MoneyLoad
  L6_2 = L6_2.insideTruck
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L2_1(L3_1, L4_1)
L2_1 = AddEventHandler
L3_1 = "onResourceStop"
function L4_1(A0_2)
  local L1_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if L1_2 ~= A0_2 then
    return
  end
  L1_2 = L0_1
  L1_2()
end
L2_1(L3_1, L4_1)
L2_1 = AddEventHandler
L3_1 = "playerDropped"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = source
  L2_2 = MoneyLoad
  if L2_2 then
    L2_2 = MoneyLoad
    L2_2 = L2_2.loadedPlayer
    if L2_2 == L1_2 then
      L2_2 = Broadcast
      L3_2 = MoneyLoad
      L3_2 = L3_2.members
      L4_2 = -1
      L5_2 = "CasinoMission:MoneyLoad:Ended"
      L6_2 = false
      L7_2 = "MONEYLOAD_SCREEN_MAIN_DESC_2"
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
      L2_2 = L0_1
      L2_2()
    end
  end
end
L2_1(L3_1, L4_1)
