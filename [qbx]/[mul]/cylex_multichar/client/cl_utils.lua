local L0_1, L1_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = HasModelLoaded
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = print
    L2_2 = "Model already loaded: "
    L3_2 = A0_2
    L1_2(L2_2, L3_2)
    L1_2 = true
    return L1_2
  end
  L1_2 = IsModelValid
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = IsModelInCdimage
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_28
    end
  end
  L1_2 = print
  L2_2 = "Invalid model: "
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = false
  do return L1_2 end
  ::lbl_28::
  L1_2 = GetGameTimer
  L1_2 = L1_2()
  L2_2 = RequestModel
  L3_2 = A0_2
  L2_2(L3_2)
  while true do
    L2_2 = HasModelLoaded
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      break
    end
    L2_2 = GetGameTimer
    L2_2 = L2_2()
    L2_2 = L2_2 - L1_2
    L3_2 = 60000
    if not (L2_2 < L3_2) then
      break
    end
    L2_2 = print
    L3_2 = "Requesting model: "
    L4_2 = A0_2
    L5_2 = L1_2
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = Wait
    L3_2 = 250
    L2_2(L3_2)
  end
  L2_2 = GetGameTimer
  L2_2 = L2_2()
  L2_2 = L2_2 - L1_2
  L3_2 = 60000
  if L2_2 >= L3_2 then
    L2_2 = print
    L3_2 = "Failed to load model, TIMED OUT: "
    L4_2 = A0_2
    L2_2(L3_2, L4_2)
    L2_2 = false
    return L2_2
  end
  L2_2 = HasModelLoaded
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = print
    L3_2 = "Failed to load model: "
    L4_2 = A0_2
    L2_2(L3_2, L4_2)
    L2_2 = false
    return L2_2
  end
  L2_2 = true
  return L2_2
end
LoadModel = L0_1
function L0_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2, A9_2, A10_2)
  local L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L11_2 = RequestAnimDict
  L12_2 = A1_2
  L11_2(L12_2)
  while true do
    L11_2 = HasAnimDictLoaded
    L12_2 = A1_2
    L11_2 = L11_2(L12_2)
    if L11_2 then
      break
    end
    L11_2 = Wait
    L12_2 = 0
    L11_2(L12_2)
  end
  L11_2 = TaskPlayAnim
  L12_2 = A0_2
  L13_2 = A1_2
  L14_2 = A2_2
  L15_2 = A3_2
  L16_2 = A4_2
  L17_2 = A5_2
  L18_2 = A6_2
  L19_2 = A7_2
  L20_2 = A8_2
  L21_2 = A9_2
  L22_2 = A10_2
  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
end
PlayAnim = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = HasStreamedTextureDictLoaded
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = true
    return L1_2
  end
  L1_2 = RequestStreamedTextureDict
  L2_2 = A0_2
  L3_2 = true
  L1_2(L2_2, L3_2)
  while true do
    L1_2 = HasStreamedTextureDictLoaded
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      break
    end
    L1_2 = Wait
    L2_2 = 0
    L1_2(L2_2)
  end
  L1_2 = false
  return L1_2
end
loadTexture = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = nil
  L2_2 = nil
  L3_2 = 500
  L4_2 = 0
  while true do
    L5_2 = HasPedHeadBlendFinished
    L6_2 = A0_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      L5_2 = GetIsLoadingScreenActive
      L5_2 = L5_2()
      if not (L5_2 or L3_2 < L4_2) then
        break
      end
    end
    L5_2 = Wait
    L6_2 = 0
    L5_2(L6_2)
    L4_2 = L4_2 + 1
  end
  L4_2 = 0
  L5_2 = RegisterPedheadshot_3
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L6_2 = IsPedheadshotValid
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L6_2 = nil
    return L6_2
  end
  while true do
    L6_2 = IsPedheadshotReady
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = IsPedheadshotValid
      L7_2 = L5_2
      L6_2 = L6_2(L7_2)
      if not (not L6_2 or L3_2 < L4_2) then
        break
      end
    end
    L6_2 = Wait
    L7_2 = 0
    L6_2(L7_2)
    L4_2 = L4_2 + 1
  end
  L6_2 = GetPedheadshotTxdString
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  L7_2 = loadTexture
  L8_2 = L6_2
  L7_2(L8_2)
  L7_2 = L6_2
  L8_2 = L5_2
  return L7_2, L8_2
end
GetPedheadshot = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A1_2.x
  L3_2 = A0_2.x
  L2_2 = L2_2 - L3_2
  L3_2 = A1_2.y
  L4_2 = A0_2.y
  L3_2 = L3_2 - L4_2
  L4_2 = A1_2.z
  L5_2 = A0_2.z
  L4_2 = L4_2 - L5_2
  L5_2 = math
  L5_2 = L5_2.sqrt
  L6_2 = L2_2 * L2_2
  L7_2 = L3_2 * L3_2
  L6_2 = L6_2 + L7_2
  L7_2 = L4_2 * L4_2
  L6_2 = L6_2 + L7_2
  L5_2 = L5_2(L6_2)
  L6_2 = {}
  L7_2 = L2_2 / L5_2
  L6_2.x = L7_2
  L7_2 = L3_2 / L5_2
  L6_2.y = L7_2
  L7_2 = L4_2 / L5_2
  L6_2.z = L7_2
  L7_2 = vector3
  L8_2 = L6_2.x
  L9_2 = L6_2.y
  L10_2 = L6_2.z
  return L7_2(L8_2, L9_2, L10_2)
end
getDirectionVector = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = GetStreetNameAtCoord
  L2_2 = A0_2.x
  L3_2 = A0_2.y
  L4_2 = A0_2.z
  L1_2, L2_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = GetStreetNameFromHashKey
  L4_2 = L1_2
  return L3_2(L4_2)
end
getStreetNameFromCoords = L0_1
