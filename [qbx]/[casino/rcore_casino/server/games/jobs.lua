local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1
L0_1 = {}
L1_1 = {}
L2_1 = {}
L3_1 = 0
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = pairs
  L2_2 = L2_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.id
    if L7_2 == A0_2 then
      return L6_2
    end
  end
  L1_2 = nil
  return L1_2
end
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = pairs
  L2_2 = L2_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.attachedToPlayerId
    if L7_2 == A0_2 then
      return L6_2
    end
  end
  L1_2 = nil
  return L1_2
end
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = pairs
  L2_2 = L0_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.coords
    L7_2 = L7_2 - A0_2
    L7_2 = #L7_2
    if L7_2 < 5.0 then
      return L6_2
    end
  end
  L1_2 = nil
  return L1_2
end
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = pairs
  L2_2 = L0_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.id
    if L7_2 == A0_2 then
      L7_2 = L5_2
      L8_2 = L6_2
      return L7_2, L8_2
    end
  end
  L1_2 = nil
  return L1_2
end
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L1_1
  L2_2 = L2_2[A0_2]
  if L2_2 then
    L3_2 = GetGameTimer
    L3_2 = L3_2()
    L3_2 = L3_2 - L2_2
    L4_2 = 500
    if L3_2 < L4_2 then
      return
    end
  end
  L3_2 = L1_1
  L4_2 = GetGameTimer
  L4_2 = L4_2()
  L3_2[A0_2] = L4_2
  L3_2 = L6_1
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L4_2 = L3_1
    L4_2 = L4_2 + 1
    L3_1 = L4_2
    L4_2 = {}
    L5_2 = L3_1
    L4_2.id = L5_2
    L4_2.coords = A1_2
    L4_2.stepCount = 0
    L4_2.active = false
    L3_2 = L4_2
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = L0_1
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
  L4_2 = L3_2.stepCount
  L4_2 = L4_2 + 1
  L3_2.stepCount = L4_2
  L4_2 = L3_2.stepCount
  if 2 == L4_2 then
    L3_2.active = true
    L4_2 = BroadcastCasino
    L5_2 = "Casino:Jobs:DirtyStepSpawned"
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
end
function L9_1()
  local L0_2, L1_2
  L0_2 = L0_1
  return L0_2
end
Cleaner_GetDirtySteps = L9_1
L9_1 = RegisterNetEvent
L10_1 = "Casino:Jobs:DirtyStep"
L9_1(L10_1)
L9_1 = AddEventHandler
L10_1 = "Casino:Jobs:DirtyStep"
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = source
  L2_2 = L8_1
  L3_2 = L1_2
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "Casino:Jobs:DirtyStepClean"
L9_1(L10_1)
L9_1 = AddEventHandler
L10_1 = "Casino:Jobs:DirtyStepClean"
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = source
  L2_2 = IsPlayerAtJob
  L3_2 = L1_2
  L4_2 = Config
  L4_2 = L4_2.Jobs
  L4_2 = L4_2.Cleaner
  L4_2 = L4_2.JobName
  L5_2 = nil
  L6_2 = Config
  L6_2 = L6_2.Jobs
  L6_2 = L6_2.Cleaner
  L6_2 = L6_2.MinGrade
  L7_2 = Config
  L7_2 = L7_2.Jobs
  L7_2 = L7_2.Cleaner
  L7_2 = L7_2.MaxGrade
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  if not L2_2 then
    return
  end
  L2_2 = L7_1
  L3_2 = A0_2
  L2_2, L3_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L4_2 = L3_2.active
  if not L4_2 then
    return
  end
  L4_2 = table
  L4_2 = L4_2.remove
  L5_2 = L0_1
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  L4_2 = BroadcastCasino
  L5_2 = "Casino:Jobs:DirtyStepCleaned"
  L6_2 = A0_2
  L7_2 = L1_2
  L4_2(L5_2, L6_2, L7_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "Casino:Jobs:GameTableClean"
L9_1(L10_1)
L9_1 = AddEventHandler
L10_1 = "Casino:Jobs:GameTableClean"
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = source
  L3_2 = IsPlayerAtJob
  L4_2 = L2_2
  L5_2 = Config
  L5_2 = L5_2.Jobs
  L5_2 = L5_2.Cleaner
  L5_2 = L5_2.JobName
  L6_2 = nil
  L7_2 = Config
  L7_2 = L7_2.Jobs
  L7_2 = L7_2.Cleaner
  L7_2 = L7_2.MinGrade
  L8_2 = Config
  L8_2 = L8_2.Jobs
  L8_2 = L8_2.Cleaner
  L8_2 = L8_2.MaxGrade
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  if not L3_2 then
    return
  end
  if "blackjack" == A0_2 then
    L3_2 = Blackjack_CleanUpTableAtCoords
    L4_2 = A1_2
    L3_2(L4_2)
  end
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "Casino:Jobs:CreateTrolly"
L9_1(L10_1)
L9_1 = AddEventHandler
L10_1 = "Casino:Jobs:CreateTrolly"
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = source
  L2_2 = IsPlayerAtJob
  L3_2 = L1_2
  L4_2 = Config
  L4_2 = L4_2.Jobs
  L4_2 = L4_2.Cleaner
  L4_2 = L4_2.JobName
  L5_2 = nil
  L6_2 = Config
  L6_2 = L6_2.Jobs
  L6_2 = L6_2.Cleaner
  L6_2 = L6_2.MinGrade
  L7_2 = Config
  L7_2 = L7_2.Jobs
  L7_2 = L7_2.Cleaner
  L7_2 = L7_2.MaxGrade
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  if not L2_2 then
    return
  end
  L2_2 = L2_1
  L2_2 = L2_2[L1_2]
  if L2_2 then
    return
  end
  L2_2 = GetPlayerIdentifier
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = Cache
  L4_2 = L3_2
  L3_2 = L3_2.Get
  L5_2 = L2_2
  function L6_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    if not A0_3 then
      return
    end
    L1_3 = A0_3.trollyCoords
    if not L1_3 then
      L1_3 = A0_2
    end
    L2_3 = A0_3.trollyHeading
    if not L2_3 then
      L2_3 = 0.0
    end
    L3_3 = L3_1
    L3_3 = L3_3 + 1
    L3_1 = L3_3
    L3_3 = {}
    L4_3 = L3_1
    L3_3.id = L4_3
    L3_3.position = L1_3
    L3_3.heading = L2_3
    L3_3.attachedToPlayerId = false
    L4_3 = L1_2
    L3_3.creator = L4_3
    L5_3 = L1_2
    L4_3 = L2_1
    L4_3[L5_3] = L3_3
    L4_3 = BroadcastCasino
    L5_3 = "Casino:Jobs:CreateTrolly"
    L6_3 = L3_3
    L4_3(L5_3, L6_3)
  end
  L3_2 = L3_2(L4_2, L5_2, L6_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "Casino:Jobs:AttachTrolly"
L9_1(L10_1)
L9_1 = AddEventHandler
L10_1 = "Casino:Jobs:AttachTrolly"
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = source
  L2_2 = IsPlayerAtJob
  L3_2 = L1_2
  L4_2 = Config
  L4_2 = L4_2.Jobs
  L4_2 = L4_2.Cleaner
  L4_2 = L4_2.JobName
  L5_2 = nil
  L6_2 = Config
  L6_2 = L6_2.Jobs
  L6_2 = L6_2.Cleaner
  L6_2 = L6_2.MinGrade
  L7_2 = Config
  L7_2 = L7_2.Jobs
  L7_2 = L7_2.Cleaner
  L7_2 = L7_2.MaxGrade
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  if not L2_2 then
    return
  end
  L2_2 = L4_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L3_2 = L2_2.attachedToPlayerId
  if L3_2 then
    return
  end
  L2_2.attachedToPlayerId = L1_2
  L3_2 = BroadcastCasino
  L4_2 = "Casino:Jobs:AttachTrolly"
  L5_2 = L2_2.id
  L6_2 = L1_2
  L3_2(L4_2, L5_2, L6_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "Casino:Jobs:DetachTrolly"
L9_1(L10_1)
L9_1 = AddEventHandler
L10_1 = "Casino:Jobs:DetachTrolly"
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = source
  L3_2 = IsPlayerAtJob
  L4_2 = L2_2
  L5_2 = Config
  L5_2 = L5_2.Jobs
  L5_2 = L5_2.Cleaner
  L5_2 = L5_2.JobName
  L6_2 = nil
  L7_2 = Config
  L7_2 = L7_2.Jobs
  L7_2 = L7_2.Cleaner
  L7_2 = L7_2.MinGrade
  L8_2 = Config
  L8_2 = L8_2.Jobs
  L8_2 = L8_2.Cleaner
  L8_2 = L8_2.MaxGrade
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  if not L3_2 then
    return
  end
  L3_2 = L5_1
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  L4_2 = L3_2.attachedToPlayerId
  if L4_2 ~= L2_2 then
    return
  end
  L3_2.attachedToPlayerId = false
  L3_2.lastPos = A0_2
  L3_2.lastHead = A1_2
  L4_2 = BroadcastCasino
  L5_2 = "Casino:Jobs:DetachTrolly"
  L6_2 = L3_2.id
  L7_2 = A0_2
  L8_2 = A1_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = GetPlayerIdentifier
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L5_2 = Cache
  L6_2 = L5_2
  L5_2 = L5_2.Get
  L7_2 = L4_2
  function L8_2(A0_3)
    local L1_3
    if not A0_3 then
      return
    end
    L1_3 = A0_2
    A0_3.trollyCoords = L1_3
    L1_3 = A1_2
    A0_3.trollyHeading = L1_3
  end
  L5_2 = L5_2(L6_2, L7_2, L8_2)
end
L9_1(L10_1, L11_1)
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L2_1
  L1_2 = L1_2[A0_2]
  if L1_2 then
    L2_2 = BroadcastCasino
    L3_2 = "Casino:Jobs:DestroyTrolly"
    L4_2 = L1_2.id
    L2_2(L3_2, L4_2)
    L2_2 = L2_1
    L2_2[A0_2] = nil
  end
end
Cleaner_PlayerDropped = L9_1
