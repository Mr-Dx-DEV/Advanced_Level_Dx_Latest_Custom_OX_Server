local L0_1, L1_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = Skin
  L1_2 = L1_2.DefaultSkin
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    L1_2 = Functions
    L1_2 = L1_2.Error
    L2_2 = "Gender given to GenerateRandomSkin function doesn't exist"
    return L1_2(L2_2)
  end
  L1_2 = {}
  if "female" == A0_2 then
    L2_2 = -1667301416
    if L2_2 then
      goto lbl_19
    end
  end
  L2_2 = 1885233650
  ::lbl_19::
  L1_2.model = L2_2
  L2_2 = {}
  L1_2.components = L2_2
  L2_2 = {}
  L1_2.props = L2_2
  L2_2 = {}
  L1_2.faceData = L2_2
  L2_2 = {}
  L1_2.faceFeatures = L2_2
  L1_2.gender = A0_2
  L2_2 = pairs
  L3_2 = Skin
  L3_2 = L3_2.DefaultSkin
  L3_2 = L3_2[A0_2]
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.type
    if "fixedVal" == L8_2 then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L1_2.components
      L10_2 = {}
      L10_2.component = L6_2
      L11_2 = L7_2.number
      L10_2.drawable = L11_2
      L10_2.variation = 0
      L8_2(L9_2, L10_2)
    else
      L8_2 = L7_2.type
      if "randomMath" == L8_2 then
        L8_2 = table
        L8_2 = L8_2.insert
        L9_2 = L1_2.components
        L10_2 = {}
        L10_2.component = L6_2
        L11_2 = math
        L11_2 = L11_2.random
        L12_2 = L7_2.from
        L13_2 = L7_2.to
        L11_2 = L11_2(L12_2, L13_2)
        L10_2.drawable = L11_2
        L10_2.variation = 0
        L8_2(L9_2, L10_2)
      else
        L8_2 = L7_2.type
        if "randomArr" == L8_2 then
          L8_2 = table
          L8_2 = L8_2.insert
          L9_2 = L1_2.components
          L10_2 = {}
          L10_2.component = L6_2
          L11_2 = L7_2.options
          L12_2 = math
          L12_2 = L12_2.random
          L13_2 = 1
          L14_2 = L7_2.options
          L14_2 = #L14_2
          L12_2 = L12_2(L13_2, L14_2)
          L11_2 = L11_2[L12_2]
          L10_2.drawable = L11_2
          L10_2.variation = 0
          L8_2(L9_2, L10_2)
        else
          L8_2 = L7_2.type
          if "torso" == L8_2 then
            L8_2 = math
            L8_2 = L8_2.random
            L9_2 = 1
            L10_2 = L7_2.optionsWithArms
            L10_2 = #L10_2
            L8_2 = L8_2(L9_2, L10_2)
            L9_2 = table
            L9_2 = L9_2.insert
            L10_2 = L1_2.components
            L11_2 = {}
            L11_2.component = L6_2
            L12_2 = L7_2.optionsWithArms
            L12_2 = L12_2[L8_2]
            L12_2 = L12_2.torso
            L11_2.drawable = L12_2
            L11_2.variation = 0
            L9_2(L10_2, L11_2)
            L9_2 = table
            L9_2 = L9_2.insert
            L10_2 = L1_2.components
            L11_2 = {}
            L11_2.component = 3
            L12_2 = L7_2.optionsWithArms
            L12_2 = L12_2[L8_2]
            L12_2 = L12_2.arms
            L11_2.drawable = L12_2
            L11_2.variation = 0
            L9_2(L10_2, L11_2)
          end
        end
      end
    end
  end
  L2_2 = math
  L2_2 = L2_2.random
  L3_2 = 1
  L4_2 = 44
  L2_2 = L2_2(L3_2, L4_2)
  L1_2.dadFace = L2_2
  L2_2 = math
  L2_2 = L2_2.random
  L3_2 = 21
  L4_2 = 45
  L2_2 = L2_2(L3_2, L4_2)
  L1_2.momFace = L2_2
  L2_2 = math
  L2_2 = L2_2.random
  L3_2 = 1
  L4_2 = 44
  L2_2 = L2_2(L3_2, L4_2)
  L1_2.skinDad = L2_2
  L2_2 = math
  L2_2 = L2_2.random
  L3_2 = 21
  L4_2 = 45
  L2_2 = L2_2(L3_2, L4_2)
  L1_2.skinMom = L2_2
  L2_2 = math
  L2_2 = L2_2.random
  L2_2 = L2_2()
  L1_2.faceMix = L2_2
  L2_2 = math
  L2_2 = L2_2.random
  L2_2 = L2_2()
  L1_2.skinMix = L2_2
  L1_2.eyeColor = 1
  L2_2 = {}
  L2_2.color = 1
  L2_2.highlight = 1
  L1_2.hairColor = L2_2
  L2_2 = 1
  L3_2 = Skin
  L3_2 = L3_2.DefaultSkin
  L3_2 = L3_2.faceFeatures
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = Skin
    L6_2 = L6_2.DefaultSkin
    L6_2 = L6_2.faceFeatures
    L6_2 = L6_2[L5_2]
    if L6_2 then
      L6_2 = Skin
      L6_2 = L6_2.DefaultSkin
      L6_2 = L6_2.faceFeatures
      L6_2 = L6_2[L5_2]
      L6_2 = L6_2.enabled
      if L6_2 then
        L6_2 = table
        L6_2 = L6_2.insert
        L7_2 = L1_2.faceFeatures
        L8_2 = {}
        L8_2.index = L5_2
        L9_2 = math
        L9_2 = L9_2.random
        L10_2 = Skin
        L10_2 = L10_2.DefaultSkin
        L10_2 = L10_2.faceFeatures
        L10_2 = L10_2[L5_2]
        L10_2 = L10_2.from
        L11_2 = Skin
        L11_2 = L11_2.DefaultSkin
        L11_2 = L11_2.faceFeatures
        L11_2 = L11_2[L5_2]
        L11_2 = L11_2.to
        L9_2 = L9_2(L10_2, L11_2)
        L9_2 = L9_2 / 100
        L8_2.value = L9_2
        L6_2(L7_2, L8_2)
      end
    end
  end
  L2_2 = Functions
  L2_2 = L2_2.DeepCopy
  L3_2 = Skin
  L3_2 = L3_2.DefaultSkin
  L3_2 = L3_2.faceData
  L2_2 = L2_2(L3_2)
  if "male" == A0_2 then
    L3_2 = {}
    L3_2.from = 0
    L3_2.to = 28
    L3_2.color = 0
    L3_2.highlight = 0
    L2_2[1] = L3_2
  end
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.enabled
    if L9_2 then
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = L1_2.faceData
      L11_2 = {}
      L11_2.overlayId = L7_2
      L12_2 = math
      L12_2 = L12_2.random
      L13_2 = L8_2.from
      L14_2 = L8_2.to
      L12_2 = L12_2(L13_2, L14_2)
      L11_2.overlayValue = L12_2
      L12_2 = math
      L12_2 = L12_2.random
      L13_2 = 0
      L14_2 = 80
      L12_2 = L12_2(L13_2, L14_2)
      L12_2 = L12_2 / 100
      L11_2.opacity = L12_2
      L12_2 = L8_2.color
      L11_2.color = L12_2
      L12_2 = L8_2.highlight
      L11_2.highlight = L12_2
      L9_2(L10_2, L11_2)
    end
  end
  L1_2.colorMode = 1
  if "female" == A0_2 then
    L1_2.faceMix = 0.99
  end
  return L1_2
end
GenerateRandomSkin = L0_1
