local L0_1, L1_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2 or nil
  if not A0_2 then
    L1_2 = ""
  end
  L2_2 = pairs
  L3_2 = Skin
  L3_2 = L3_2.ManPlayerModels
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = GetHashKey
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if L8_2 == A0_2 then
      L1_2 = L7_2
      break
    end
  end
  if L1_2 == A0_2 then
    L2_2 = pairs
    L3_2 = Skin
    L3_2 = L3_2.WomanPlayerModels
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L8_2 = GetHashKey
      L9_2 = L7_2
      L8_2 = L8_2(L9_2)
      if L8_2 == A0_2 then
        L1_2 = L7_2
        break
      end
    end
  end
  return L1_2
end
TranslateHashToString = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "string" == L2_2 then
    L2_2 = json
    L2_2 = L2_2.decode
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    A0_2 = L2_2
  end
  if not A0_2 then
    L2_2 = {}
    return L2_2
  end
  L2_2 = {}
  L2_2.noseWidth = 0
  L2_2.nosePeakHigh = 1
  L2_2.nosePeakSize = 2
  L2_2.noseBoneHigh = 3
  L2_2.nosePeakLowering = 4
  L2_2.noseBoneTwist = 5
  L2_2.eyeBrownHigh = 6
  L2_2.eyeBrownForward = 7
  L2_2.cheeksBoneHigh = 8
  L2_2.cheeksBoneWidth = 9
  L2_2.cheeksWidth = 10
  L2_2.eyesOpening = 11
  L2_2.lipsThickness = 12
  L2_2.jawBoneWidth = 13
  L2_2.jawBoneBackSize = 14
  L2_2.chinBoneLowering = 15
  L2_2.chinBoneLenght = 16
  L2_2.chinBoneSize = 17
  L2_2.chinHole = 18
  L2_2.neckThickness = 19
  L2_2.blemishes = 0
  L2_2.beard = 1
  L2_2.eyebrows = 2
  L2_2.ageing = 3
  L2_2.makeUp = 4
  L2_2.blush = 5
  L2_2.complexion = 6
  L2_2.sunDamage = 7
  L2_2.lipstick = 8
  L2_2.moleAndFreckles = 9
  L2_2.chestHair = 10
  L2_2.bodyBlemishes = 11
  L3_2 = {}
  L4_2 = A1_2 or L4_2
  if not A1_2 then
    L4_2 = A0_2.model
    if not L4_2 then
      L4_2 = 1885233650
    end
  end
  L3_2.model = L4_2
  L4_2 = {}
  L3_2.components = L4_2
  L4_2 = {}
  L3_2.props = L4_2
  L4_2 = {}
  L3_2.faceData = L4_2
  L4_2 = {}
  L3_2.faceFeatures = L4_2
  L3_2.colorMode = 1
  L3_2.gender = "male"
  L3_2.isIllenium = true
  L4_2 = {}
  L3_2.tattoos = L4_2
  if A1_2 then
    L4_2 = pairs
    L5_2 = Skin
    L5_2 = L5_2.WomanPlayerModels
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
      L10_2 = GetHashKey
      L11_2 = L9_2
      L10_2 = L10_2(L11_2)
      if L10_2 ~= A1_2 then
        L10_2 = GetHashKey
        L11_2 = L9_2
        L10_2 = L10_2(L11_2)
        L11_2 = GetHashKey
        L12_2 = A1_2
        L11_2 = L11_2(L12_2)
        if L10_2 ~= L11_2 and L9_2 ~= A1_2 then
          goto lbl_101
        end
      end
      L3_2.gender = "female"
      do break end
      ::lbl_101::
    end
  end
  L4_2 = A0_2.components
  if L4_2 then
    L4_2 = pairs
    L5_2 = A0_2.components
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
      L10_2 = table
      L10_2 = L10_2.insert
      L11_2 = L3_2.components
      L12_2 = {}
      L13_2 = L9_2.component_id
      L12_2.component = L13_2
      L13_2 = L9_2.drawable
      L12_2.drawable = L13_2
      L13_2 = L9_2.texture
      L12_2.variation = L13_2
      L10_2(L11_2, L12_2)
    end
  end
  L4_2 = A0_2.props
  if L4_2 then
    L4_2 = pairs
    L5_2 = A0_2.props
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
      L10_2 = table
      L10_2 = L10_2.insert
      L11_2 = L3_2.props
      L12_2 = {}
      L13_2 = L9_2.prop_id
      L12_2.prop = L13_2
      L13_2 = L9_2.drawable
      L12_2.drawable = L13_2
      L13_2 = L9_2.texture
      L12_2.variation = L13_2
      L10_2(L11_2, L12_2)
    end
  end
  L4_2 = A0_2.faceFeatures
  if L4_2 then
    L4_2 = pairs
    L5_2 = A0_2.faceFeatures
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
      L10_2 = table
      L10_2 = L10_2.insert
      L11_2 = L3_2.faceFeatures
      L12_2 = {}
      L13_2 = L2_2[L8_2]
      L12_2.index = L13_2
      L12_2.value = L9_2
      L10_2(L11_2, L12_2)
    end
  end
  L4_2 = A0_2.headOverlays
  if L4_2 then
    L4_2 = pairs
    L5_2 = A0_2.headOverlays
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
      L10_2 = table
      L10_2 = L10_2.insert
      L11_2 = L3_2.faceData
      L12_2 = {}
      L13_2 = L2_2[L8_2]
      L12_2.overlayId = L13_2
      L13_2 = L9_2.style
      L13_2 = L13_2 - 1
      L12_2.overlayValue = L13_2
      L13_2 = L9_2.style
      if L13_2 > 0 then
        L13_2 = L9_2.opacity
        L13_2 = L13_2 + 0.0
        if L13_2 then
          goto lbl_194
        end
      end
      L13_2 = 0.0
      ::lbl_194::
      L12_2.opacity = L13_2
      L13_2 = L9_2.color
      L12_2.color = L13_2
      L13_2 = L9_2.secondColor
      L12_2.highlight = L13_2
      L10_2(L11_2, L12_2)
    end
  end
  L4_2 = A0_2.eyeColor
  L3_2.eyeColor = L4_2
  L4_2 = A0_2.hair
  if L4_2 then
    L4_2 = {}
    L5_2 = A0_2.hair
    if L5_2 then
      L5_2 = L5_2.color
    end
    L4_2.color = L5_2
    L5_2 = A0_2.hair
    if L5_2 then
      L5_2 = L5_2.highlight
    end
    L4_2.highlight = L5_2
    L3_2.hairColor = L4_2
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = L3_2.components
    L6_2 = {}
    L6_2.component = 2
    L7_2 = A0_2.hair
    L7_2 = L7_2.style
    L6_2.drawable = L7_2
    L6_2.texture = 0
    L4_2(L5_2, L6_2)
  end
  L4_2 = A0_2.headBlend
  if L4_2 then
    L4_2 = A0_2.headBlend
    if L4_2 then
      L4_2 = L4_2.shapeFirst
    end
    L3_2.dadFace = L4_2
    L4_2 = A0_2.headBlend
    if L4_2 then
      L4_2 = L4_2.shapeSecond
    end
    L3_2.momFace = L4_2
    L4_2 = A0_2.headBlend
    if L4_2 then
      L4_2 = L4_2.shapeMix
    end
    L3_2.faceMix = L4_2
    L4_2 = A0_2.headBlend
    if L4_2 then
      L4_2 = L4_2.skinMix
    end
    L3_2.skinMix = L4_2
    L4_2 = L3_2.skinMix
    if L4_2 > 1 then
      L3_2.skinMix = 0.99
    end
    L4_2 = L3_2.faceMix
    if L4_2 > 1 then
      L3_2.faceMix = 0.99
    end
    L4_2 = A0_2.headBlend
    if L4_2 then
      L4_2 = L4_2.skinFirst
    end
    L3_2.skinDad = L4_2
    L4_2 = A0_2.headBlend
    if L4_2 then
      L4_2 = L4_2.skinSecond
    end
    L3_2.skinMom = L4_2
  end
  L4_2 = A0_2.tattoos
  if L4_2 then
    L4_2 = pairs
    L5_2 = A0_2.tattoos
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
      L10_2 = L3_2.tattoos
      L10_2 = L10_2[L8_2]
      if nil == L10_2 then
        L10_2 = L3_2.tattoos
        L11_2 = {}
        L10_2[L8_2] = L11_2
      end
      L10_2 = 1
      L11_2 = A0_2.tattoos
      L11_2 = L11_2[L8_2]
      L11_2 = #L11_2
      L12_2 = 1
      for L13_2 = L10_2, L11_2, L12_2 do
        L14_2 = table
        L14_2 = L14_2.insert
        L15_2 = L3_2.tattoos
        L15_2 = L15_2[L8_2]
        L16_2 = L9_2[L13_2]
        L14_2(L15_2, L16_2)
      end
    end
  end
  return L3_2
end
TranslateSkinFromIllenium = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  if not A0_2 then
    L1_2 = {}
    return L1_2
  end
  L1_2 = {}
  L1_2[0] = "noseWidth"
  L1_2[1] = "nosePeakHigh"
  L1_2[2] = "nosePeakSize"
  L1_2[3] = "noseBoneHigh"
  L1_2[4] = "nosePeakLowering"
  L1_2[5] = "noseBoneTwist"
  L1_2[6] = "eyeBrownHigh"
  L1_2[7] = "eyeBrownForward"
  L1_2[8] = "cheeksBoneHigh"
  L1_2[9] = "cheeksBoneWidth"
  L1_2[10] = "cheeksWidth"
  L1_2[11] = "eyesOpening"
  L1_2[12] = "lipsThickness"
  L1_2[13] = "jawBoneWidth"
  L1_2[14] = "jawBoneBackSize"
  L1_2[15] = "chinBoneLowering"
  L1_2[16] = "chinBoneLenght"
  L1_2[17] = "chinBoneSize"
  L1_2[18] = "chinHole"
  L1_2[19] = "neckThickness"
  L2_2 = {}
  L2_2[0] = "blemishes"
  L2_2[1] = "beard"
  L2_2[2] = "eyebrows"
  L2_2[3] = "ageing"
  L2_2[4] = "makeUp"
  L2_2[5] = "blush"
  L2_2[6] = "complexion"
  L2_2[7] = "sunDamage"
  L2_2[8] = "lipstick"
  L2_2[9] = "moleAndFreckles"
  L2_2[10] = "chestHair"
  L2_2[11] = "bodyBlemishes"
  L3_2 = {}
  L4_2 = TranslateHashToString
  L5_2 = A0_2.model
  L4_2 = L4_2(L5_2)
  L3_2.model = L4_2
  L4_2 = {}
  L3_2.components = L4_2
  L4_2 = {}
  L3_2.props = L4_2
  L4_2 = {}
  L3_2.faceFeatures = L4_2
  L4_2 = {}
  L3_2.headOverlays = L4_2
  L4_2 = A0_2.eyeColor
  L3_2.eyeColor = L4_2
  L4_2 = {}
  L3_2.tattoos = L4_2
  L4_2 = pairs
  L5_2 = A0_2.components
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L9_2.component
    if 2 == L10_2 then
      L10_2 = {}
      L11_2 = L9_2.drawable
      L10_2.style = L11_2
      L11_2 = A0_2
      if L11_2 then
        L11_2 = L11_2.hairColor
      end
      if L11_2 then
        L11_2 = L11_2.color
      end
      L10_2.color = L11_2
      L11_2 = A0_2
      if L11_2 then
        L11_2 = L11_2.hairColor
      end
      if L11_2 then
        L11_2 = L11_2.highlight
      end
      L10_2.highlight = L11_2
      L3_2.hair = L10_2
    else
      L10_2 = table
      L10_2 = L10_2.insert
      L11_2 = L3_2.components
      L12_2 = {}
      L13_2 = L9_2.component
      L12_2.component_id = L13_2
      L13_2 = L9_2.drawable
      L12_2.drawable = L13_2
      L13_2 = L9_2.texture
      if not L13_2 then
        L13_2 = L9_2.variation
      end
      L12_2.texture = L13_2
      L10_2(L11_2, L12_2)
    end
  end
  L4_2 = pairs
  L5_2 = A0_2.props
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = L3_2.props
    L12_2 = {}
    L13_2 = L9_2.prop
    L12_2.prop_id = L13_2
    L13_2 = L9_2.drawable
    L12_2.drawable = L13_2
    L13_2 = L9_2.variation
    L12_2.texture = L13_2
    L10_2(L11_2, L12_2)
  end
  L4_2 = pairs
  L5_2 = A0_2.faceFeatures
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L9_2.index
    L10_2 = L1_2[L10_2]
    if L10_2 then
      L11_2 = L3_2.faceFeatures
      L12_2 = L9_2.value
      L11_2[L10_2] = L12_2
    end
  end
  L4_2 = pairs
  L5_2 = A0_2.faceData
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L9_2.overlayId
    L10_2 = L2_2[L10_2]
    if L10_2 then
      L11_2 = L3_2.headOverlays
      L12_2 = {}
      L13_2 = L9_2.overlayValue
      L13_2 = L13_2 + 1
      L12_2.style = L13_2
      L13_2 = L9_2.opacity
      L12_2.opacity = L13_2
      L13_2 = L9_2.color
      L12_2.color = L13_2
      L13_2 = L9_2.highlight
      L12_2.secondColor = L13_2
      L11_2[L10_2] = L12_2
    end
  end
  L4_2 = A0_2.dadFace
  if L4_2 then
    L4_2 = {}
    L5_2 = A0_2.dadFace
    L4_2.shapeFirst = L5_2
    L5_2 = A0_2.momFace
    L4_2.shapeSecond = L5_2
    L5_2 = A0_2.faceMix
    L4_2.shapeMix = L5_2
    L5_2 = A0_2.skinMix
    L4_2.skinMix = L5_2
    L5_2 = A0_2.skinDad
    L4_2.skinFirst = L5_2
    L5_2 = A0_2.skinMom
    L4_2.skinSecond = L5_2
    L3_2.headBlend = L4_2
  end
  L4_2 = A0_2.tattoos
  if L4_2 then
    L4_2 = pairs
    L5_2 = A0_2.tattoos
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
      L10_2 = L3_2.tattoos
      L10_2 = L10_2[L8_2]
      if nil == L10_2 then
        L10_2 = L3_2.tattoos
        L11_2 = {}
        L10_2[L8_2] = L11_2
      end
      L10_2 = 1
      L11_2 = A0_2.tattoos
      L11_2 = L11_2[L8_2]
      L11_2 = #L11_2
      L12_2 = 1
      for L13_2 = L10_2, L11_2, L12_2 do
        L14_2 = table
        L14_2 = L14_2.insert
        L15_2 = L3_2.tattoos
        L15_2 = L15_2[L8_2]
        L16_2 = {}
        L16_2.zone = L8_2
        L17_2 = L9_2[L13_2]
        L17_2 = L17_2.collection
        L16_2.collection = L17_2
        L17_2 = L9_2[L13_2]
        L17_2 = L17_2.overlay
        L16_2.hashFemale = L17_2
        L17_2 = L9_2[L13_2]
        L17_2 = L17_2.overlay
        L16_2.hashMale = L17_2
        L14_2(L15_2, L16_2)
      end
    end
  end
  return L3_2
end
TranslateSkinToIllenium = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "string" == L2_2 then
    L2_2 = json
    L2_2 = L2_2.decode
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    A0_2 = L2_2
  end
  if not A0_2 then
    L2_2 = {}
    return L2_2
  end
  L2_2 = {}
  L3_2 = A1_2 or L3_2
  if not A1_2 then
    L3_2 = 1885233650
  end
  L2_2.model = L3_2
  L3_2 = {}
  L2_2.components = L3_2
  L3_2 = {}
  L2_2.props = L3_2
  L3_2 = {}
  L2_2.faceData = L3_2
  L3_2 = {}
  L2_2.faceFeatures = L3_2
  L2_2.colorMode = 1
  L2_2.gender = "male"
  L3_2 = {}
  L2_2.tattoos = L3_2
  if A1_2 then
    L3_2 = pairs
    L4_2 = Skin
    L4_2 = L4_2.WomanPlayerModels
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = GetHashKey
      L10_2 = L8_2
      L9_2 = L9_2(L10_2)
      if L9_2 ~= A1_2 then
        L9_2 = GetHashKey
        L10_2 = L8_2
        L9_2 = L9_2(L10_2)
        L10_2 = GetHashKey
        L11_2 = A1_2
        L10_2 = L10_2(L11_2)
        if L9_2 ~= L10_2 and L8_2 ~= A1_2 then
          goto lbl_63
        end
      end
      L2_2.gender = "female"
      do break end
      ::lbl_63::
    end
  end
  L3_2 = {}
  L4_2 = {}
  L4_2.index = 0
  L4_2.type = "components"
  L3_2.head_1 = L4_2
  L4_2 = {}
  L4_2.index = 1
  L4_2.type = "components"
  L3_2.mask = L4_2
  L4_2 = {}
  L4_2.index = 2
  L4_2.type = "components"
  L3_2.hair = L4_2
  L4_2 = {}
  L4_2.index = 3
  L4_2.type = "components"
  L3_2.arms = L4_2
  L4_2 = {}
  L4_2.index = 4
  L4_2.type = "components"
  L3_2.pants = L4_2
  L4_2 = {}
  L4_2.index = 5
  L4_2.type = "components"
  L3_2.bag = L4_2
  L4_2 = {}
  L4_2.index = 6
  L4_2.type = "components"
  L3_2.shoes = L4_2
  L4_2 = {}
  L4_2.index = 7
  L4_2.type = "components"
  L3_2.accessory = L4_2
  L4_2 = {}
  L4_2.index = 8
  L4_2.type = "components"
  L3_2["t-shirt"] = L4_2
  L4_2 = {}
  L4_2.index = 9
  L4_2.type = "components"
  L3_2.vest = L4_2
  L4_2 = {}
  L4_2.index = 10
  L4_2.type = "components"
  L3_2.decals = L4_2
  L4_2 = {}
  L4_2.index = 11
  L4_2.type = "components"
  L3_2.torso2 = L4_2
  L4_2 = {}
  L4_2.index = 1
  L4_2.type = "faceData"
  L3_2.beard = L4_2
  L4_2 = {}
  L4_2.index = 2
  L4_2.type = "faceData"
  L3_2.eyebrows = L4_2
  L4_2 = {}
  L4_2.index = 3
  L4_2.type = "faceData"
  L3_2.ageing = L4_2
  L4_2 = {}
  L4_2.index = 4
  L4_2.type = "faceData"
  L3_2.makeup = L4_2
  L4_2 = {}
  L4_2.index = 5
  L4_2.type = "faceData"
  L3_2.blush = L4_2
  L4_2 = {}
  L4_2.index = 6
  L4_2.type = "faceData"
  L3_2.complexion = L4_2
  L4_2 = {}
  L4_2.index = 7
  L4_2.type = "faceData"
  L3_2.sun_damage = L4_2
  L4_2 = {}
  L4_2.index = 8
  L4_2.type = "faceData"
  L3_2.lipstick = L4_2
  L4_2 = {}
  L4_2.index = 9
  L4_2.type = "faceData"
  L3_2.moles = L4_2
  L4_2 = {}
  L4_2.index = 10
  L4_2.type = "faceData"
  L3_2.chest = L4_2
  L4_2 = {}
  L4_2.index = 11
  L4_2.type = "faceData"
  L3_2.bodyb = L4_2
  L4_2 = {}
  L4_2.index = 0
  L4_2.type = "props"
  L3_2.hat = L4_2
  L4_2 = {}
  L4_2.index = 1
  L4_2.type = "props"
  L3_2.glass = L4_2
  L4_2 = {}
  L4_2.index = 2
  L4_2.type = "props"
  L3_2.ear = L4_2
  L4_2 = {}
  L4_2.index = 6
  L4_2.type = "props"
  L3_2.watch = L4_2
  L4_2 = {}
  L4_2.index = 7
  L4_2.type = "props"
  L3_2.bracelet = L4_2
  L4_2 = {}
  L4_2.index = 0
  L4_2.type = "faceFeatures"
  L3_2.nose_0 = L4_2
  L4_2 = {}
  L4_2.index = 1
  L4_2.type = "faceFeatures"
  L3_2.nose_1 = L4_2
  L4_2 = {}
  L4_2.index = 2
  L4_2.type = "faceFeatures"
  L3_2.nose_2 = L4_2
  L4_2 = {}
  L4_2.index = 3
  L4_2.type = "faceFeatures"
  L3_2.nose_3 = L4_2
  L4_2 = {}
  L4_2.index = 4
  L4_2.type = "faceFeatures"
  L3_2.nose_4 = L4_2
  L4_2 = {}
  L4_2.index = 5
  L4_2.type = "faceFeatures"
  L3_2.nose_5 = L4_2
  L4_2 = {}
  L4_2.index = 6
  L4_2.type = "faceFeatures"
  L3_2.eyebrown_high = L4_2
  L4_2 = {}
  L4_2.index = 7
  L4_2.type = "faceFeatures"
  L3_2.eyebrown_forward = L4_2
  L4_2 = {}
  L4_2.index = 8
  L4_2.type = "faceFeatures"
  L3_2.cheek_1 = L4_2
  L4_2 = {}
  L4_2.index = 9
  L4_2.type = "faceFeatures"
  L3_2.cheek_2 = L4_2
  L4_2 = {}
  L4_2.index = 10
  L4_2.type = "faceFeatures"
  L3_2.cheek_3 = L4_2
  L4_2 = {}
  L4_2.index = 11
  L4_2.type = "faceFeatures"
  L3_2.eye_opening = L4_2
  L4_2 = {}
  L4_2.index = 12
  L4_2.type = "faceFeatures"
  L3_2.lips_thickness = L4_2
  L4_2 = {}
  L4_2.index = 13
  L4_2.type = "faceFeatures"
  L3_2.jaw_bone_width = L4_2
  L4_2 = {}
  L4_2.index = 14
  L4_2.type = "faceFeatures"
  L3_2.jaw_bone_back_lenght = L4_2
  L4_2 = {}
  L4_2.index = 15
  L4_2.type = "faceFeatures"
  L3_2.chimp_bone_lowering = L4_2
  L4_2 = {}
  L4_2.index = 16
  L4_2.type = "faceFeatures"
  L3_2.chimp_bone_lenght = L4_2
  L4_2 = {}
  L4_2.index = 17
  L4_2.type = "faceFeatures"
  L3_2.chimp_bone_width = L4_2
  L4_2 = {}
  L4_2.index = 18
  L4_2.type = "faceFeatures"
  L3_2.chimp_hole = L4_2
  L4_2 = {}
  L4_2.index = 19
  L4_2.type = "faceFeatures"
  L3_2.neck_thikness = L4_2
  L4_2 = pairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L9_2.type
    L10_2 = L2_2[L10_2]
    L11_2 = A0_2[L8_2]
    if L11_2 then
      L11_2 = L9_2.type
      if "components" == L11_2 then
        L11_2 = L9_2.index
        if 2 == L11_2 then
          L11_2 = table
          L11_2 = L11_2.insert
          L12_2 = L10_2
          L13_2 = {}
          L14_2 = L9_2.index
          L13_2.component = L14_2
          L14_2 = A0_2[L8_2]
          L14_2 = L14_2.item
          L13_2.drawable = L14_2
          L14_2 = A0_2[L8_2]
          L14_2 = L14_2.style
          L13_2.variation = L14_2
          L11_2(L12_2, L13_2)
        else
          L11_2 = table
          L11_2 = L11_2.insert
          L12_2 = L10_2
          L13_2 = {}
          L14_2 = L9_2.index
          L13_2.component = L14_2
          L14_2 = A0_2[L8_2]
          L14_2 = L14_2.item
          L13_2.drawable = L14_2
          L14_2 = A0_2[L8_2]
          L14_2 = L14_2.texture
          L13_2.variation = L14_2
          L11_2(L12_2, L13_2)
        end
      else
        L11_2 = L9_2.type
        if "faceData" == L11_2 then
          L11_2 = table
          L11_2 = L11_2.insert
          L12_2 = L10_2
          L13_2 = {}
          L14_2 = L9_2.index
          L13_2.overlayId = L14_2
          L14_2 = A0_2[L8_2]
          L14_2 = L14_2.item
          L13_2.overlayValue = L14_2
          L14_2 = A0_2[L8_2]
          L14_2 = L14_2.opacity
          if not L14_2 then
            L14_2 = 1.0
          end
          L13_2.opacity = L14_2
          L14_2 = A0_2[L8_2]
          L14_2 = L14_2.texture
          L13_2.color = L14_2
          L14_2 = A0_2[L8_2]
          L14_2 = L14_2.highlight
          if not L14_2 then
            L14_2 = A0_2[L8_2]
            L14_2 = L14_2.texture
          end
          L13_2.highlight = L14_2
          L11_2(L12_2, L13_2)
        else
          L11_2 = L9_2.type
          if "props" == L11_2 then
            L11_2 = table
            L11_2 = L11_2.insert
            L12_2 = L10_2
            L13_2 = {}
            L14_2 = L9_2.index
            L13_2.prop = L14_2
            L14_2 = A0_2[L8_2]
            L14_2 = L14_2.item
            L13_2.drawable = L14_2
            L14_2 = A0_2[L8_2]
            L14_2 = L14_2.texture
            L13_2.variation = L14_2
            L11_2(L12_2, L13_2)
          else
            L11_2 = L9_2.type
            if "faceFeatures" == L11_2 then
              L11_2 = table
              L11_2 = L11_2.insert
              L12_2 = L10_2
              L13_2 = {}
              L14_2 = L9_2.index
              L13_2.index = L14_2
              L14_2 = A0_2[L8_2]
              L14_2 = L14_2.item
              L14_2 = L14_2 / 10
              L13_2.value = L14_2
              L11_2(L12_2, L13_2)
            end
          end
        end
      end
    end
  end
  L4_2 = A0_2.eye_color
  if L4_2 then
    L4_2 = L4_2.item
  end
  L2_2.eyeColor = L4_2
  L4_2 = {}
  L5_2 = A0_2.hair
  if L5_2 then
    L5_2 = L5_2.texture
  end
  L4_2.color = L5_2
  L5_2 = A0_2.hair
  if L5_2 then
    L5_2 = L5_2.highlight
  end
  if not L5_2 then
    L5_2 = A0_2.hair
    if L5_2 then
      L5_2 = L5_2.texture
    end
  end
  L4_2.highlight = L5_2
  L2_2.hairColor = L4_2
  L4_2 = A0_2.face
  if L4_2 then
    L4_2 = L4_2.item
  end
  L2_2.dadFace = L4_2
  L4_2 = A0_2.face2
  if L4_2 then
    L4_2 = L4_2.item
  end
  L2_2.momFace = L4_2
  L4_2 = A0_2.skinDad
  L2_2.skinDad = L4_2
  L4_2 = A0_2.skinMom
  L2_2.skinMom = L4_2
  L4_2 = A0_2.facemix
  if L4_2 then
    L4_2 = L4_2.shapeMix
  end
  L2_2.faceMix = L4_2
  L4_2 = A0_2.facemix
  if L4_2 then
    L4_2 = L4_2.skinMix
  end
  L2_2.skinMix = L4_2
  L4_2 = L2_2.faceData
  L4_2 = L4_2.moles
  if L4_2 then
    L4_2 = L2_2.faceData
    L5_2 = L2_2.faceData
    L5_2 = L5_2.moles
    L5_2 = L5_2 / 10
    L4_2.moles = L5_2
  end
  L4_2 = A0_2.tattoos
  if L4_2 then
    L4_2 = pairs
    L5_2 = A0_2.tattoos
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
      L10_2 = L2_2.tattoos
      L10_2[L8_2] = L9_2
    end
  end
  return L2_2
end
TranslateSkinFromQB = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L1_2 = {}
  L2_2 = {}
  L1_2.tattoos = L2_2
  L2_2 = {}
  L3_2 = {}
  L3_2.defaultItem = 0
  L3_2.defaultTexture = 0
  L2_2.head_1 = L3_2
  L3_2 = {}
  L3_2.defaultItem = 0
  L3_2.defaultTexture = 0
  L2_2.head_2 = L3_2
  L3_2 = {}
  L3_2.defaultItem = 0
  L3_2.defaultTexture = 0
  L2_2.face = L3_2
  L3_2 = {}
  L3_2.defaultItem = 0
  L3_2.defaultTexture = 0
  L2_2.face2 = L3_2
  L3_2 = {}
  L3_2.efaultSkinMix = 0.0
  L3_2.defaultShapeMix = 0.0
  L2_2.facemix = L3_2
  L3_2 = {}
  L3_2.defaultItem = 0
  L3_2.defaultTexture = 0
  L2_2.pants = L3_2
  L3_2 = {}
  L3_2.defaultItem = 0
  L3_2.defaultTexture = 0
  L2_2.hair = L3_2
  L3_2 = {}
  L3_2.defaultItem = -1
  L3_2.defaultTexture = 1
  L2_2.eyebrows = L3_2
  L3_2 = {}
  L3_2.defaultItem = -1
  L3_2.defaultTexture = 1
  L2_2.beard = L3_2
  L3_2 = {}
  L3_2.defaultItem = -1
  L3_2.defaultTexture = 1
  L2_2.blush = L3_2
  L3_2 = {}
  L3_2.defaultItem = -1
  L3_2.defaultTexture = 1
  L2_2.lipstick = L3_2
  L3_2 = {}
  L3_2.defaultItem = -1
  L3_2.defaultTexture = 1
  L2_2.makeup = L3_2
  L3_2 = {}
  L3_2.defaultItem = -1
  L3_2.defaultTexture = 0
  L2_2.ageing = L3_2
  L3_2 = {}
  L3_2.defaultItem = 0
  L3_2.defaultTexture = 0
  L2_2.arms = L3_2
  L3_2 = {}
  L3_2.defaultItem = 1
  L3_2.defaultTexture = 0
  L2_2["t-shirt"] = L3_2
  L3_2 = {}
  L3_2.defaultItem = 0
  L3_2.defaultTexture = 0
  L2_2.torso2 = L3_2
  L3_2 = {}
  L3_2.defaultItem = 0
  L3_2.defaultTexture = 0
  L2_2.vest = L3_2
  L3_2 = {}
  L3_2.defaultItem = 0
  L3_2.defaultTexture = 0
  L2_2.bag = L3_2
  L3_2 = {}
  L3_2.defaultItem = 1
  L3_2.defaultTexture = 0
  L2_2.shoes = L3_2
  L3_2 = {}
  L3_2.defaultItem = 0
  L3_2.defaultTexture = 0
  L2_2.mask = L3_2
  L3_2 = {}
  L3_2.defaultItem = -1
  L3_2.defaultTexture = 0
  L2_2.hat = L3_2
  L3_2 = {}
  L3_2.defaultItem = -1
  L3_2.defaultTexture = -1
  L2_2.glass = L3_2
  L3_2 = {}
  L3_2.defaultItem = -1
  L3_2.defaultTexture = 0
  L2_2.ear = L3_2
  L3_2 = {}
  L3_2.defaultItem = -1
  L3_2.defaultTexture = 0
  L2_2.watch = L3_2
  L3_2 = {}
  L3_2.defaultItem = -1
  L3_2.defaultTexture = 0
  L2_2.bracelet = L3_2
  L3_2 = {}
  L3_2.defaultItem = 0
  L3_2.defaultTexture = 0
  L2_2.accessory = L3_2
  L3_2 = {}
  L3_2.defaultItem = 0
  L3_2.defaultTexture = 0
  L2_2.decals = L3_2
  L3_2 = {}
  L3_2.defaultItem = -1
  L3_2.defaultTexture = 0
  L2_2.eye_color = L3_2
  L3_2 = {}
  L3_2.defaultItem = -1
  L3_2.defaultTexture = 0
  L2_2.moles = L3_2
  L3_2 = {}
  L3_2.defaultItem = 0
  L3_2.defaultTexture = 0
  L2_2.nose_0 = L3_2
  L3_2 = {}
  L3_2.defaultItem = 0
  L3_2.defaultTexture = 0
  L2_2.nose_1 = L3_2
  L3_2 = {}
  L3_2.defaultItem = 0
  L3_2.defaultTexture = 0
  L2_2.nose_2 = L3_2
  L3_2 = {}
  L3_2.defaultItem = 0
  L3_2.defaultTexture = 0
  L2_2.nose_3 = L3_2
  L3_2 = {}
  L3_2.defaultItem = 0
  L3_2.defaultTexture = 0
  L2_2.nose_4 = L3_2
  L3_2 = {}
  L3_2.defaultItem = 0
  L3_2.defaultTexture = 0
  L2_2.nose_5 = L3_2
  L3_2 = {}
  L3_2.defaultItem = 0
  L3_2.defaultTexture = 0
  L2_2.cheek_1 = L3_2
  L3_2 = {}
  L3_2.defaultItem = 0
  L3_2.defaultTexture = 0
  L2_2.cheek_2 = L3_2
  L3_2 = {}
  L3_2.defaultItem = 0
  L3_2.defaultTexture = 0
  L2_2.cheek_3 = L3_2
  L3_2 = {}
  L3_2.defaultItem = 0
  L3_2.defaultTexture = 0
  L2_2.eye_opening = L3_2
  L3_2 = {}
  L3_2.defaultItem = 0
  L3_2.defaultTexture = 0
  L2_2.lips_thickness = L3_2
  L3_2 = {}
  L3_2.defaultItem = 0
  L3_2.defaultTexture = 0
  L2_2.jaw_bone_width = L3_2
  L3_2 = {}
  L3_2.defaultItem = 0
  L3_2.defaultTexture = 0
  L2_2.eyebrown_high = L3_2
  L3_2 = {}
  L3_2.defaultItem = 0
  L3_2.defaultTexture = 0
  L2_2.eyebrown_forward = L3_2
  L3_2 = {}
  L3_2.defaultItem = 0
  L3_2.defaultTexture = 0
  L2_2.jaw_bone_back_lenght = L3_2
  L3_2 = {}
  L3_2.defaultItem = 0
  L3_2.defaultTexture = 0
  L2_2.chimp_bone_lowering = L3_2
  L3_2 = {}
  L3_2.defaultItem = 0
  L3_2.defaultTexture = 0
  L2_2.chimp_bone_lenght = L3_2
  L3_2 = {}
  L3_2.defaultItem = 0
  L3_2.defaultTexture = 0
  L2_2.chimp_bone_width = L3_2
  L3_2 = {}
  L3_2.defaultItem = 0
  L3_2.defaultTexture = 0
  L2_2.chimp_hole = L3_2
  L3_2 = {}
  L3_2.defaultItem = 0
  L3_2.defaultTexture = 0
  L2_2.neck_thikness = L3_2
  L3_2 = {}
  L3_2.defaultItem = 0
  L3_2.defaultTexture = 0
  L2_2.complexion = L3_2
  L3_2 = {}
  L3_2.defaultItem = 0
  L3_2.defaultTexture = 0
  L2_2.sun_damage = L3_2
  L3_2 = {}
  L3_2.defaultItem = 0
  L3_2.defaultTexture = 0
  L2_2.chest = L3_2
  L3_2 = {}
  L3_2.defaultItem = 0
  L3_2.defaultTexture = 0
  L2_2.bodyb = L3_2
  L3_2 = {}
  L3_2[0] = "head_1"
  L3_2[1] = "mask"
  L3_2[2] = "hair"
  L3_2[3] = "arms"
  L3_2[4] = "pants"
  L3_2[5] = "bag"
  L3_2[6] = "shoes"
  L3_2[7] = "accessory"
  L3_2[8] = "t-shirt"
  L3_2[9] = "vest"
  L3_2[10] = "decals"
  L3_2[11] = "torso2"
  L4_2 = {}
  L4_2[1] = "beard"
  L4_2[2] = "eyebrows"
  L4_2[3] = "ageing"
  L4_2[4] = "makeup"
  L4_2[5] = "blush"
  L4_2[6] = "complexion"
  L4_2[7] = "sun_damage"
  L4_2[8] = "lipstick"
  L4_2[9] = "moles"
  L4_2[10] = "chest"
  L4_2[11] = "bodyb"
  L5_2 = {}
  L5_2[0] = "hat"
  L5_2[1] = "glass"
  L5_2[2] = "ear"
  L5_2[6] = "watch"
  L5_2[7] = "bracelet"
  L6_2 = {}
  L6_2[0] = "nose_0"
  L6_2[1] = "nose_1"
  L6_2[2] = "nose_2"
  L6_2[3] = "nose_3"
  L6_2[4] = "nose_4"
  L6_2[5] = "nose_5"
  L6_2[6] = "eyebrown_high"
  L6_2[7] = "eyebrown_forward"
  L6_2[8] = "cheek_1"
  L6_2[9] = "cheek_2"
  L6_2[10] = "cheek_3"
  L6_2[11] = "eye_opening"
  L6_2[12] = "lips_thickness"
  L6_2[13] = "jaw_bone_width"
  L6_2[14] = "jaw_bone_back_lenght"
  L6_2[15] = "chimp_bone_lowering"
  L6_2[16] = "chimp_bone_lenght"
  L6_2[17] = "chimp_bone_width"
  L6_2[18] = "chimp_hole"
  L6_2[19] = "neck_thikness"
  L7_2 = A0_2.faceData
  if L7_2 then
    L7_2 = pairs
    L8_2 = L4_2
    L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
    for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
      L13_2 = 1
      L14_2 = A0_2.faceData
      L14_2 = #L14_2
      L15_2 = 1
      for L16_2 = L13_2, L14_2, L15_2 do
        L17_2 = A0_2.faceData
        L17_2 = L17_2[L16_2]
        L17_2 = L17_2.overlayId
        if L17_2 == L11_2 then
          L17_2 = A0_2.faceData
          L17_2 = L17_2[L16_2]
          if L17_2 then
            L18_2 = {}
            L19_2 = L17_2.overlayValue
            L18_2.item = L19_2
            L19_2 = L17_2.color
            L18_2.texture = L19_2
            L19_2 = L17_2.opacity
            L18_2.opacity = L19_2
            L19_2 = L17_2.highlight
            L18_2.highlight = L19_2
            L19_2 = L2_2[L12_2]
            L19_2 = L19_2.defaultItem
            L18_2.defaultItem = L19_2
            L19_2 = L2_2[L12_2]
            L19_2 = L19_2.defaultTexture
            L18_2.defaultTexture = L19_2
            L1_2[L12_2] = L18_2
          end
        end
      end
    end
  end
  L7_2 = A0_2.faceFeatures
  if L7_2 then
    L7_2 = pairs
    L8_2 = L6_2
    L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
    for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
      L13_2 = 1
      L14_2 = A0_2.faceFeatures
      L14_2 = #L14_2
      L15_2 = 1
      for L16_2 = L13_2, L14_2, L15_2 do
        L17_2 = A0_2.faceFeatures
        L17_2 = L17_2[L16_2]
        L17_2 = L17_2.index
        if L17_2 == L11_2 then
          L17_2 = A0_2.faceFeatures
          L17_2 = L17_2[L16_2]
          if L17_2 then
            L18_2 = {}
            L19_2 = L17_2.value
            L19_2 = L19_2 * 10
            L18_2.item = L19_2
            L19_2 = L2_2[L12_2]
            L19_2 = L19_2.defaultItem
            L18_2.defaultItem = L19_2
            L19_2 = L2_2[L12_2]
            L19_2 = L19_2.defaultTexture
            L18_2.defaultTexture = L19_2
            L1_2[L12_2] = L18_2
          end
        end
      end
    end
  end
  L7_2 = A0_2.components
  if L7_2 then
    L7_2 = pairs
    L8_2 = L3_2
    L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
    for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
      if L12_2 then
        L13_2 = 1
        L14_2 = A0_2.components
        L14_2 = #L14_2
        L15_2 = 1
        for L16_2 = L13_2, L14_2, L15_2 do
          L17_2 = A0_2.components
          L17_2 = L17_2[L16_2]
          L17_2 = L17_2.component
          if L17_2 == L11_2 then
            L17_2 = A0_2.components
            L17_2 = L17_2[L16_2]
            if L17_2 then
              if "hair" == L12_2 then
                L18_2 = {}
                L19_2 = L17_2.drawable
                L18_2.item = L19_2
                L19_2 = A0_2.hairColor
                if L19_2 then
                  L19_2 = L19_2.color
                end
                L18_2.texture = L19_2
                L19_2 = A0_2.hairColor
                if L19_2 then
                  L19_2 = L19_2.highlight
                end
                L18_2.highlight = L19_2
                L19_2 = L17_2.style
                if not L19_2 then
                  L19_2 = L17_2.variation
                end
                L18_2.style = L19_2
                L19_2 = L2_2[L12_2]
                L19_2 = L19_2.defaultItem
                L18_2.defaultItem = L19_2
                L19_2 = L2_2[L12_2]
                L19_2 = L19_2.defaultTexture
                L18_2.defaultTexture = L19_2
                L1_2[L12_2] = L18_2
              else
                L18_2 = {}
                L19_2 = L17_2.drawable
                L18_2.item = L19_2
                L19_2 = L17_2.variation
                L18_2.texture = L19_2
                L19_2 = L2_2[L12_2]
                L19_2 = L19_2.defaultItem
                L18_2.defaultItem = L19_2
                L19_2 = L2_2[L12_2]
                L19_2 = L19_2.defaultTexture
                L18_2.defaultTexture = L19_2
                L1_2[L12_2] = L18_2
              end
            end
          end
        end
      end
    end
  end
  L7_2 = A0_2.props
  if L7_2 then
    L7_2 = pairs
    L8_2 = L5_2
    L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
    for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
      if L12_2 then
        L13_2 = 1
        L14_2 = A0_2.props
        L14_2 = #L14_2
        L15_2 = 1
        for L16_2 = L13_2, L14_2, L15_2 do
          L17_2 = A0_2.props
          L17_2 = L17_2[L16_2]
          L17_2 = L17_2.prop
          if L17_2 == L11_2 then
            L17_2 = A0_2.props
            L17_2 = L17_2[L16_2]
            if L17_2 then
              L18_2 = {}
              L19_2 = L17_2.drawable
              L18_2.item = L19_2
              L19_2 = L17_2.variation
              L18_2.texture = L19_2
              L19_2 = L2_2[L12_2]
              L19_2 = L19_2.defaultItem
              L18_2.defaultItem = L19_2
              L19_2 = L2_2[L12_2]
              L19_2 = L19_2.defaultTexture
              L18_2.defaultTexture = L19_2
              L1_2[L12_2] = L18_2
            end
          end
        end
      end
    end
  end
  L7_2 = {}
  L8_2 = A0_2.eyeColor
  L7_2.item = L8_2
  L8_2 = L2_2.eye_color
  L8_2 = L8_2.defaultTexture
  L7_2.texture = L8_2
  L8_2 = L2_2.eye_color
  L8_2 = L8_2.defaultTexture
  L7_2.defaultTexture = L8_2
  L8_2 = L2_2.eye_color
  L8_2 = L8_2.defaultItem
  L7_2.defaultItem = L8_2
  L1_2.eye_color = L7_2
  L7_2 = {}
  L8_2 = A0_2.dadFace
  L7_2.item = L8_2
  L8_2 = A0_2.dadFace
  L7_2.texture = L8_2
  L8_2 = L2_2.face
  L8_2 = L8_2.defaultTexture
  L7_2.defaultTexture = L8_2
  L8_2 = L2_2.face
  L8_2 = L8_2.defaultItem
  L7_2.defaultItem = L8_2
  L1_2.face = L7_2
  L7_2 = {}
  L8_2 = A0_2.momFace
  L7_2.item = L8_2
  L8_2 = A0_2.momFace
  L7_2.texture = L8_2
  L8_2 = L2_2.face2
  L8_2 = L8_2.defaultTexture
  L7_2.defaultTexture = L8_2
  L8_2 = L2_2.face2
  L8_2 = L8_2.defaultItem
  L7_2.defaultItem = L8_2
  L1_2.face2 = L7_2
  L7_2 = {}
  L8_2 = A0_2.faceMix
  L7_2.shapeMix = L8_2
  L8_2 = A0_2.skinMix
  L7_2.skinMix = L8_2
  L1_2.facemix = L7_2
  L7_2 = A0_2
  if L7_2 then
    L7_2 = L7_2.skinDad
  end
  L1_2.skinDad = L7_2
  L7_2 = A0_2
  if L7_2 then
    L7_2 = L7_2.skinMom
  end
  L1_2.skinMom = L7_2
  L7_2 = A0_2.tattoos
  if L7_2 then
    L7_2 = pairs
    L8_2 = A0_2.tattoos
    L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
    for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
      L13_2 = L1_2.tattoos
      L13_2[L11_2] = L12_2
    end
  end
  return L1_2
end
TranslateSkinToQB = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  function L1_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    L2_3 = pairs
    L3_3 = A0_3
    L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
    for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
      L8_3 = A1_3
      L9_3 = "["
      L10_3 = tostring
      L11_3 = L6_3
      L10_3 = L10_3(L11_3)
      L11_3 = "]"
      L8_3 = L8_3 .. L9_3 .. L10_3 .. L11_3
      L9_3 = type
      L10_3 = L7_3
      L9_3 = L9_3(L10_3)
      if "table" == L9_3 then
        L9_3 = L1_2
        L10_3 = L7_3
        L11_3 = L8_3
        L9_3(L10_3, L11_3)
      else
        L9_3 = type
        L10_3 = L7_3
        L9_3 = L9_3(L10_3)
        if "number" == L9_3 then
          L9_3 = tostring
          L10_3 = L7_3
          L9_3 = L9_3(L10_3)
          if "inf" ~= L9_3 and "-inf" ~= L9_3 then
            L11_3 = L9_3
            L10_3 = L9_3.find
            L12_3 = "inf"
            L10_3 = L10_3(L11_3, L12_3)
            if not L10_3 then
              goto lbl_46
            end
          end
          L10_3 = Functions
          L10_3 = L10_3.Debug
          L11_3 = "Fixing the "
          L12_3 = L8_3
          L13_3 = " value"
          L10_3(L11_3, L12_3, L13_3)
          A0_3[L6_3] = 0
        end
      end
      ::lbl_46::
    end
  end
  L2_2 = L1_2
  L3_2 = A0_2
  L4_2 = "skinData"
  L2_2(L3_2, L4_2)
  return A0_2
end
ValidateInfinity = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = {}
  L1_2.sex = 0
  L2_2 = TranslateHashToString
  L3_2 = A0_2
  if L3_2 then
    L3_2 = L3_2.model
  end
  L2_2 = L2_2(L3_2)
  L1_2.model = L2_2
  L2_2 = A0_2
  if L2_2 then
    L2_2 = L2_2.dadFace
  end
  L1_2.dad = L2_2
  L2_2 = A0_2
  if L2_2 then
    L2_2 = L2_2.momFace
  end
  L1_2.mom = L2_2
  L2_2 = A0_2
  if L2_2 then
    L2_2 = L2_2.skinDad
  end
  L1_2.skinDad = L2_2
  L2_2 = A0_2
  if L2_2 then
    L2_2 = L2_2.skinMom
  end
  L1_2.skinMom = L2_2
  L2_2 = A0_2
  if L2_2 then
    L2_2 = L2_2.faceMix
  end
  if nil ~= L2_2 then
    L2_2 = A0_2
    if L2_2 then
      L2_2 = L2_2.faceMix
    end
    if L2_2 then
      goto lbl_44
    end
  end
  L2_2 = nil
  ::lbl_44::
  L1_2.face_md_weight = L2_2
  L2_2 = A0_2
  if L2_2 then
    L2_2 = L2_2.skinMix
  end
  if nil ~= L2_2 then
    L2_2 = A0_2
    if L2_2 then
      L2_2 = L2_2.skinMix
    end
    if L2_2 then
      goto lbl_58
    end
  end
  L2_2 = nil
  ::lbl_58::
  L1_2.skin_md_weight = L2_2
  L2_2 = A0_2
  if L2_2 then
    L2_2 = L2_2.eyeColor
  end
  L1_2.eye_color = L2_2
  L2_2 = A0_2
  if L2_2 then
    L2_2 = L2_2.hairColor
  end
  if nil ~= L2_2 then
    L2_2 = A0_2
    if L2_2 then
      L2_2 = L2_2.hairColor
    end
    L2_2 = L2_2.color
    if L2_2 then
      goto lbl_78
    end
  end
  L2_2 = nil
  ::lbl_78::
  L1_2.hair_color_1 = L2_2
  L2_2 = A0_2
  if L2_2 then
    L2_2 = L2_2.hairColor
  end
  if nil ~= L2_2 then
    L2_2 = A0_2
    if L2_2 then
      L2_2 = L2_2.hairColor
    end
    L2_2 = L2_2.highlight
    if L2_2 then
      goto lbl_93
    end
  end
  L2_2 = nil
  ::lbl_93::
  L1_2.hair_color_2 = L2_2
  L2_2 = {}
  L1_2.tattoos = L2_2
  L2_2 = A0_2
  if L2_2 then
    L2_2 = L2_2.model
  end
  if L2_2 then
    L2_2 = pairs
    L3_2 = Skin
    L3_2 = L3_2.WomanPlayerModels
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L8_2 = GetHashKey
      L9_2 = L7_2
      L8_2 = L8_2(L9_2)
      L9_2 = A0_2
      if L9_2 then
        L9_2 = L9_2.model
      end
      if L8_2 ~= L9_2 then
        L8_2 = GetHashKey
        L9_2 = L7_2
        L8_2 = L8_2(L9_2)
        L9_2 = GetHashKey
        L10_2 = A0_2
        if L10_2 then
          L10_2 = L10_2.model
        end
        L9_2 = L9_2(L10_2)
        if L8_2 ~= L9_2 then
          L8_2 = A0_2
          if L8_2 then
            L8_2 = L8_2.model
          end
          if L7_2 ~= L8_2 then
            goto lbl_136
          end
        end
      end
      L1_2.sex = 1
      do break end
      ::lbl_136::
    end
  end
  L2_2 = {}
  L3_2 = {}
  L3_2.drawable = "head_1"
  L3_2.variation = "head_2"
  L2_2[0] = L3_2
  L3_2 = {}
  L3_2.drawable = "mask_1"
  L3_2.variation = "mask_2"
  L2_2[1] = L3_2
  L3_2 = {}
  L3_2.drawable = "hair_1"
  L3_2.variation = "hair_2"
  L3_2.style = "hair_2"
  L2_2[2] = L3_2
  L3_2 = {}
  L3_2.drawable = "arms"
  L3_2.variation = "arms_2"
  L2_2[3] = L3_2
  L3_2 = {}
  L3_2.drawable = "pants_1"
  L3_2.variation = "pants_2"
  L2_2[4] = L3_2
  L3_2 = {}
  L3_2.drawable = "bags_1"
  L3_2.variation = "bags_2"
  L2_2[5] = L3_2
  L3_2 = {}
  L3_2.drawable = "shoes_1"
  L3_2.variation = "shoes_2"
  L2_2[6] = L3_2
  L3_2 = {}
  L3_2.drawable = "chain_1"
  L3_2.variation = "chain_2"
  L2_2[7] = L3_2
  L3_2 = {}
  L3_2.drawable = "tshirt_1"
  L3_2.variation = "tshirt_2"
  L2_2[8] = L3_2
  L3_2 = {}
  L3_2.drawable = "bproof_1"
  L3_2.variation = "bproof_2"
  L2_2[9] = L3_2
  L3_2 = {}
  L3_2.drawable = "decals_1"
  L3_2.variation = "decals_2"
  L2_2[10] = L3_2
  L3_2 = {}
  L3_2.drawable = "torso_1"
  L3_2.variation = "torso_2"
  L2_2[11] = L3_2
  L3_2 = {}
  L4_2 = {}
  L4_2.drawable = "helmet_1"
  L4_2.variation = "helmet_2"
  L3_2[0] = L4_2
  L4_2 = {}
  L4_2.drawable = "glasses_1"
  L4_2.variation = "glasses_2"
  L3_2[1] = L4_2
  L4_2 = {}
  L4_2.drawable = "ears_1"
  L4_2.variation = "ears_2"
  L3_2[2] = L4_2
  L4_2 = {}
  L4_2.drawable = "watches_1"
  L4_2.variation = "watches_2"
  L3_2[6] = L4_2
  L4_2 = {}
  L4_2.drawable = "bracelets_1"
  L4_2.variation = "bracelets_2"
  L3_2[7] = L4_2
  L4_2 = {}
  L4_2[0] = "nose_1"
  L4_2[1] = "nose_2"
  L4_2[2] = "nose_3"
  L4_2[3] = "nose_4"
  L4_2[4] = "nose_5"
  L4_2[5] = "nose_6"
  L4_2[6] = "eyebrows_5"
  L4_2[7] = "eyebrows_6"
  L4_2[8] = "cheeks_1"
  L4_2[9] = "cheeks_2"
  L4_2[10] = "cheeks_3"
  L4_2[11] = "eye_squint"
  L4_2[12] = "lip_thickness"
  L4_2[13] = "jaw_1"
  L4_2[14] = "jaw_2"
  L4_2[15] = "chin_1"
  L4_2[16] = "chin_2"
  L4_2[17] = "chin_3"
  L4_2[18] = "chin_4"
  L4_2[19] = "neck_thickness"
  L5_2 = {}
  L6_2 = {}
  L6_2.drawable = "blemishes_1"
  L6_2.opacity = "blemishes_2"
  L5_2[0] = L6_2
  L6_2 = {}
  L6_2.drawable = "beard_1"
  L6_2.opacity = "beard_2"
  L6_2.color = "beard_3"
  L6_2.highlight = "beard_4"
  L5_2[1] = L6_2
  L6_2 = {}
  L6_2.drawable = "eyebrows_1"
  L6_2.opacity = "eyebrows_2"
  L6_2.color = "eyebrows_3"
  L6_2.highlight = "eyebrows_4"
  L5_2[2] = L6_2
  L6_2 = {}
  L6_2.drawable = "age_1"
  L6_2.opacity = "age_2"
  L5_2[3] = L6_2
  L6_2 = {}
  L6_2.drawable = "makeup_1"
  L6_2.opacity = "makeup_2"
  L6_2.color = "makeup_3"
  L6_2.highlight = "makeup_4"
  L5_2[4] = L6_2
  L6_2 = {}
  L6_2.drawable = "blush_1"
  L6_2.opacity = "blush_2"
  L6_2.color = "blush_3"
  L5_2[5] = L6_2
  L6_2 = {}
  L6_2.drawable = "complexion_1"
  L6_2.opacity = "complexion_2"
  L5_2[6] = L6_2
  L6_2 = {}
  L6_2.drawable = "sun_1"
  L6_2.opacity = "sun_2"
  L5_2[7] = L6_2
  L6_2 = {}
  L6_2.drawable = "lipstick_1"
  L6_2.opacity = "lipstick_2"
  L6_2.color = "lipstick_3"
  L6_2.highlight = "lipstick_4"
  L5_2[8] = L6_2
  L6_2 = {}
  L6_2.drawable = "moles_1"
  L6_2.opacity = "moles_2"
  L5_2[9] = L6_2
  L6_2 = {}
  L6_2.drawable = "chest_1"
  L6_2.opacity = "chest_2"
  L6_2.color = "chest_3"
  L5_2[10] = L6_2
  L6_2 = {}
  L6_2.drawable = "bodyb_1"
  L6_2.opacity = "bodyb_2"
  L5_2[11] = L6_2
  L6_2 = {}
  L6_2.drawable = "bodyb_3"
  L6_2.opacity = "bodyb_4"
  L5_2[12] = L6_2
  L6_2 = A0_2
  if L6_2 then
    L6_2 = L6_2.faceData
  end
  if L6_2 then
    L6_2 = ipairs
    L7_2 = A0_2.faceData
    L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
    for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
      L12_2 = L11_2.overlayId
      L12_2 = L5_2[L12_2]
      if L12_2 then
        L13_2 = L12_2.drawable
        L14_2 = L11_2.overlayValue
        L1_2[L13_2] = L14_2
        L13_2 = L12_2.opacity
        if "beard_2" ~= L13_2 then
          L13_2 = L12_2.opacity
          if "eyebrows_2" ~= L13_2 then
            goto lbl_361
          end
        end
        L13_2 = L11_2.opacity
        if L13_2 < 1 then
          L13_2 = L11_2.opacity
          L13_2 = L13_2 * 10
          L11_2.opacity = L13_2
        else
          L13_2 = L11_2.opacity
          L11_2.opacity = L13_2
        end
        ::lbl_361::
        L13_2 = L12_2.opacity
        L14_2 = L11_2.opacity
        L1_2[L13_2] = L14_2
        L13_2 = L12_2.color
        if L13_2 then
          L13_2 = L12_2.color
          L14_2 = L11_2.color
          L1_2[L13_2] = L14_2
        end
        L13_2 = L12_2.highlight
        if L13_2 then
          L13_2 = L12_2.highlight
          L14_2 = L11_2.highlight
          L1_2[L13_2] = L14_2
        end
      end
    end
  end
  L6_2 = A0_2
  if L6_2 then
    L6_2 = L6_2.components
  end
  if L6_2 then
    L6_2 = ipairs
    L7_2 = A0_2.components
    L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
    for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
      L12_2 = L11_2.component
      L12_2 = L2_2[L12_2]
      if L12_2 then
        L13_2 = L12_2.drawable
        L14_2 = L11_2.drawable
        L1_2[L13_2] = L14_2
        L13_2 = L12_2.variation
        L14_2 = L11_2.variation
        L1_2[L13_2] = L14_2
        L13_2 = L11_2.style
        if L13_2 then
          L13_2 = L12_2.style
          L14_2 = L11_2.style
          L1_2[L13_2] = L14_2
        end
      end
    end
  end
  L6_2 = A0_2
  if L6_2 then
    L6_2 = L6_2.faceFeatures
  end
  if L6_2 then
    L6_2 = ipairs
    L7_2 = A0_2.faceFeatures
    L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
    for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
      L12_2 = L11_2.index
      L12_2 = L4_2[L12_2]
      if L12_2 then
        L13_2 = L11_2.value
        if L13_2 >= 2 then
          L13_2 = math
          L13_2 = L13_2.min
          L14_2 = math
          L14_2 = L14_2.max
          L15_2 = L11_2.value
          L15_2 = L15_2 * 10.0
          L16_2 = -10
          L14_2 = L14_2(L15_2, L16_2)
          L15_2 = 10
          L13_2 = L13_2(L14_2, L15_2)
          L1_2[L12_2] = L13_2
        else
          L13_2 = L11_2.value
          L1_2[L12_2] = L13_2
        end
      end
    end
  end
  L6_2 = A0_2
  if L6_2 then
    L6_2 = L6_2.props
  end
  if L6_2 then
    L6_2 = ipairs
    L7_2 = A0_2.props
    L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
    for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
      L12_2 = L11_2.prop
      L12_2 = L3_2[L12_2]
      if L12_2 then
        L13_2 = L12_2.drawable
        L14_2 = L11_2.drawable
        L1_2[L13_2] = L14_2
        L13_2 = L12_2.variation
        L14_2 = L11_2.variation
        L1_2[L13_2] = L14_2
      end
    end
  end
  L6_2 = A0_2.tattoos
  if L6_2 then
    L6_2 = pairs
    L7_2 = A0_2.tattoos
    L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
    for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
      L12_2 = L1_2.tattoos
      L12_2[L10_2] = L11_2
    end
  end
  L6_2 = ValidateInfinity
  L7_2 = L1_2
  return L6_2(L7_2)
end
TranslateSkinToESX = L0_1
function L0_1(A0_2, A1_2)
