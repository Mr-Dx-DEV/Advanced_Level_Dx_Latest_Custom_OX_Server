local L0_1, L1_1
function L0_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  L4_2 = A0_2 / A3_2
  A0_2 = L4_2 * 2
  if A0_2 < 1 then
    L4_2 = A2_2 / 2
    L4_2 = L4_2 * A0_2
    L4_2 = L4_2 * A0_2
    L4_2 = L4_2 + A1_2
    return L4_2
  end
  A0_2 = A0_2 - 1
  L4_2 = -A2_2
  L4_2 = L4_2 / 2
  L5_2 = A0_2 - 2
  L5_2 = A0_2 * L5_2
  L5_2 = L5_2 - 1
  L4_2 = L4_2 * L5_2
  L4_2 = L4_2 + A1_2
  return L4_2
end
easeInOut = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = SPAWN
  L1_2 = L1_2.position
  L2_2 = A0_2.from
  L2_2 = L2_2.pos
  L1_2 = L1_2 + L2_2
  L2_2 = SPAWN
  L2_2 = L2_2.position
  L3_2 = A0_2.to
  L3_2 = L3_2.pos
  L2_2 = L2_2 + L3_2
  L3_2 = {}
  L4_2 = CreateCam
  L5_2 = "DEFAULT_SCRIPTED_CAMERA"
  L6_2 = true
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.from = L4_2
  L4_2 = CreateCam
  L5_2 = "DEFAULT_SCRIPTED_CAMERA"
  L6_2 = true
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.to = L4_2
  L4_2 = SetCamCoord
  L5_2 = L3_2.from
  L6_2 = L1_2.x
  L7_2 = L1_2.y
  L8_2 = L1_2.z
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = SetCamCoord
  L5_2 = L3_2.to
  L6_2 = L2_2.x
  L7_2 = L2_2.y
  L8_2 = L2_2.z
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = SetCamRot
  L5_2 = L3_2.from
  L6_2 = A0_2.from
  L6_2 = L6_2.rot
  L6_2 = L6_2.x
  L7_2 = A0_2.from
  L7_2 = L7_2.rot
  L7_2 = L7_2.y
  L8_2 = A0_2.from
  L8_2 = L8_2.rot
  L8_2 = L8_2.z
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = SetCamRot
  L5_2 = L3_2.to
  L6_2 = A0_2.to
  L6_2 = L6_2.rot
  L6_2 = L6_2.x
  L7_2 = A0_2.to
  L7_2 = L7_2.rot
  L7_2 = L7_2.y
  L8_2 = A0_2.to
  L8_2 = L8_2.rot
  L8_2 = L8_2.z
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = IsCamActive
  L5_2 = L3_2.from
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = SetCamActive
    L5_2 = L3_2.from
    L6_2 = true
    L4_2(L5_2, L6_2)
  end
  L4_2 = RenderScriptCams
  L5_2 = true
  L6_2 = false
  L7_2 = 0
  L8_2 = true
  L9_2 = true
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = SetCamActiveWithInterp
  L5_2 = L3_2.to
  L6_2 = L3_2.from
  L7_2 = A0_2.duration
  L8_2 = true
  L9_2 = true
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = Wait
  L5_2 = A0_2.duration
  L5_2 = L5_2 - 100
  L4_2(L5_2)
  L4_2 = DestroyCam
  L5_2 = L3_2.from
  L4_2(L5_2)
  L4_2 = DestroyCam
  L5_2 = L3_2.to
  L4_2(L5_2)
end
PlayCameraStage = L0_1
