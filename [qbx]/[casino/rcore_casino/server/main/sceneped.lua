local L0_1, L1_1, L2_1, L3_1
L0_1 = {}
L1_1 = RegisterNetEvent
L2_1 = "ScenePed:ShowScene"
L1_1(L2_1)
L1_1 = AddEventHandler
L2_1 = "ScenePed:ShowScene"
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L6_2 = source
  L7_2 = ScenePed_UpdateState
  L8_2 = L6_2
  L9_2 = A1_2
  L10_2 = A2_2
  L11_2 = A3_2
  L12_2 = A4_2
  L13_2 = A5_2
  L14_2 = A0_2
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L8_2 = BroadcastCasino
  L9_2 = "ScenePed:SceneStarted"
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "ScenePed:StopScene"
L1_1(L2_1)
L1_1 = AddEventHandler
L2_1 = "ScenePed:StopScene"
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = source
  L5_2 = ScenePed_EndForPlayer
  L6_2 = L4_2
  L5_2(L6_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "ScenePed:GetStates"
L1_1(L2_1)
L1_1 = AddEventHandler
L2_1 = "ScenePed:GetStates"
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = source
  L1_2 = TriggerClientEvent
  L2_2 = "ScenePed:GetStates"
  L3_2 = L0_2
  L4_2 = L0_1
  L5_2 = L0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L1_1(L2_1, L3_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = DebugStart
  L2_2 = "ScenePed_EndForPlayer"
  L1_2(L2_2)
  L1_2 = L0_1
  L1_2[A0_2] = nil
  L1_2 = BroadcastCasino
  L2_2 = "ScenePed:SceneEnded"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
ScenePed_EndForPlayer = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2
  L7_2 = DebugStart
  L8_2 = "ScenePed_UpdateState"
  L7_2(L8_2)
  L7_2 = {}
  L7_2.playerId = A0_2
  L7_2.coords = A1_2
  L7_2.rot = A2_2
  L7_2.animDict = A3_2
  L7_2.animName = A4_2
  L7_2.isLooped = A5_2
  L7_2.netId = A6_2
  L8_2 = L0_1
  L8_2[A0_2] = L7_2
  L8_2 = L0_1
  L8_2 = L8_2[A0_2]
  return L8_2
end
ScenePed_UpdateState = L1_1
