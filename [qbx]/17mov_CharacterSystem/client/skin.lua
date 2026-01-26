local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1
L0_1 = Skin
L0_1.Cam = nil
L0_1 = Skin
L0_1.CameraEnabled = false
L0_1 = Skin
L0_1.CameraZoom = 50.0
L0_1 = Skin
L1_1 = {}
L0_1.CurrentSkin = L1_1
L0_1 = Skin
L1_1 = {}
L0_1.Callbacks = L1_1
L0_1 = Skin
L0_1.FirstSpawn = false
L0_1 = {}
L1_1 = {}
L2_1 = {}
L3_1 = {}
L4_1 = nil
L5_1 = nil
L6_1 = nil
L7_1 = 0
L8_1 = {}
L9_1 = {}
L10_1 = {}
L11_1 = pairs
L12_1 = Skin
L12_1 = L12_1.InputsData
L11_1, L12_1, L13_1, L14_1 = L11_1(L12_1)
for L15_1 in L11_1, L12_1, L13_1, L14_1 do
  L16_1 = Skin
  L16_1 = L16_1.InputsData
  L16_1 = L16_1[L15_1]
  L16_1.name = L15_1
end
L11_1 = {}
L12_1 = pairs
L13_1 = Photos
L13_1 = L13_1.Components
L12_1, L13_1, L14_1, L15_1 = L12_1(L13_1)
for L16_1, L17_1 in L12_1, L13_1, L14_1, L15_1 do
  L18_1 = table
  L18_1 = L18_1.insert
  L19_1 = L11_1
  L20_1 = L17_1.name
  L18_1(L19_1, L20_1)
end
L12_1 = Skin
L13_1 = {}
L13_1.decals_1 = "decals_2"
L13_1.shoes_1 = "shoes_2"
L13_1.bproof_1 = "bproof_2"
L13_1.tshirt_1 = "tshirt_2"
L13_1.helmet_1 = "helmet_2"
L13_1.mask_1 = "mask_2"
L13_1.watches_1 = "watches_2"
L13_1.ears_1 = "ears_2"
L13_1.glasses_1 = "glasses_2"
L13_1.pants_1 = "pants_2"
L13_1.bracelets_1 = "bracelets_2"
L13_1.torso_1 = "torso_2"
L13_1.bags_1 = "bags_2"
L13_1.arms_1 = "arms_2"
L12_1.VariationsToReset = L13_1
L12_1 = Skin
function L13_1(A0_2, A1_2)
  while A1_2 < A0_2 do
    A0_2 = A0_2 - A1_2
  end
  return A0_2
end
L12_1.TransfromSkinTone = L13_1
L12_1 = Skin
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = {}
  L1_2.model = 1885233650
  L1_2.dadFace = 0
  L1_2.momFace = 0
  L1_2.faceMix = 0.5
  L1_2.skinMix = 0.5
  L1_2.eyeColor = 1
  L2_2 = {}
  L2_2.color = 1
  L2_2.highlight = 1
  L1_2.hairColor = L2_2
  L1_2.colorMode = 1
  L1_2.gender = "male"
  L2_2 = A0_2.model
  L3_2 = GetHashKey
  L4_2 = "mp_m_freemode_01"
  L3_2 = L3_2(L4_2)
  L2_2 = L2_2 == L3_2
  L3_2 = pairs
  L4_2 = L1_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = A0_2[L7_2]
    if nil == L9_2 then
      if L2_2 then
        L9_2 = Functions
        L9_2 = L9_2.Debug
        L10_2 = string
        L10_2 = L10_2.format
        L11_2 = "CANNOT FIND REQUIRED VALUE: %s. Setting to default value"
        L12_2 = L7_2
        L10_2, L11_2, L12_2 = L10_2(L11_2, L12_2)
        L9_2(L10_2, L11_2, L12_2)
        L9_2 = Functions
        L9_2 = L9_2.Debug
        L10_2 = debug
        L10_2 = L10_2.traceback
        L10_2, L11_2, L12_2 = L10_2()
        L9_2(L10_2, L11_2, L12_2)
      end
      A0_2[L7_2] = L8_2
    end
  end
  return A0_2
end
L12_1.ValidateSkinData = L13_1
L12_1 = Skin
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2
  L2_2 = DoesEntityExist
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = Functions
    L2_2 = L2_2.Error
    L3_2 = "Ped given to Skin.SetOnPed function doesn't exist"
    return L2_2(L3_2)
  end
  if not A1_2 then
    L2_2 = Functions
    L2_2 = L2_2.Error
    L3_2 = "Skin given to Skin.SetOnPed is nil"
    return L2_2(L3_2)
  end
  L2_2 = ClearAllPedProps
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  if L2_2 == A0_2 and A1_2 then
    L2_2 = A1_2.model
    if L2_2 then
      L2_2 = A1_2.model
      L3_2 = GetEntityModel
      L4_2 = A0_2
      L3_2 = L3_2(L4_2)
      if L2_2 ~= L3_2 then
        L2_2 = GetHashKey
        L3_2 = A1_2.model
        L2_2 = L2_2(L3_2)
        L3_2 = GetEntityModel
        L4_2 = A0_2
        L3_2 = L3_2(L4_2)
        if L2_2 ~= L3_2 then
          L2_2 = Functions
          L2_2 = L2_2.LoadModel
          L3_2 = A1_2.model
          L2_2(L3_2)
          L2_2 = SetPlayerModel
          L3_2 = PlayerId
          L3_2 = L3_2()
          L4_2 = A1_2.model
          L2_2(L3_2, L4_2)
          L2_2 = PlayerPedId
          L2_2 = L2_2()
          A0_2 = L2_2
          L2_2 = SetPedDefaultComponentVariation
          L3_2 = A0_2
          L2_2(L3_2)
        end
      end
    end
  end
  L2_2 = ClearPedDecorations
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = 1
  L3_2 = 11
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = SetPedComponentVariation
    L7_2 = A0_2
    L8_2 = L5_2
    L9_2 = -1
    L10_2 = 0
    L11_2 = 0
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  end
  L2_2 = A1_2.model
  L2_2 = "mp_m_freemode_01" ~= L2_2
  L3_2 = Skin
  L3_2 = L3_2.ValidateSkinData
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  A1_2 = L3_2
  if not A1_2 then
    L3_2 = Functions
    L3_2 = L3_2.Error
    L4_2 = "Skin after Validation is nil"
    return L3_2(L4_2)
  end
  if not L2_2 then
    L3_2 = A1_2.dadFace
    if L3_2 then
      L3_2 = A1_2.momFace
      if L3_2 then
        L3_2 = A1_2.faceMix
        if L3_2 then
          L3_2 = A1_2.skinMix
          if L3_2 then
            L3_2 = A1_2.skinDad
            L4_2 = A1_2.skinMom
            if not L3_2 then
              L5_2 = Skin
              L5_2 = L5_2.TransfromSkinTone
              L6_2 = A1_2.dadFace
              L7_2 = 45
              L5_2 = L5_2(L6_2, L7_2)
              L3_2 = L5_2
            end
            if not L4_2 then
              L5_2 = Skin
              L5_2 = L5_2.TransfromSkinTone
              L6_2 = A1_2.momFace
              L7_2 = 45
              L5_2 = L5_2(L6_2, L7_2)
              L4_2 = L5_2
            end
            L5_2 = SetPedHeadBlendData
            L6_2 = A0_2
            L7_2 = A1_2.dadFace
            L8_2 = A1_2.momFace
            L9_2 = nil
            L10_2 = L3_2
            L11_2 = L4_2
            L12_2 = nil
            L13_2 = A1_2.faceMix
            L14_2 = A1_2.skinMix
            L15_2 = nil
            L16_2 = true
            L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
          end
        end
      end
    end
  end
  L3_2 = {}
  L4_2 = 5
  L5_2 = 3
  L6_2 = 4
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  if not L2_2 then
    L4_2 = A1_2.faceData
    if L4_2 then
      L4_2 = pairs
      L5_2 = A1_2.faceData
      L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
      for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
        L10_2 = SetPedHeadOverlay
        L11_2 = A0_2
        L12_2 = L9_2.overlayId
        L13_2 = L9_2.overlayValue
        L14_2 = L9_2.opacity
        L10_2(L11_2, L12_2, L13_2, L14_2)
        L10_2 = L9_2.color
        if L10_2 then
          L10_2 = SetPedHeadOverlayColor
          L11_2 = A0_2
          L12_2 = L9_2.overlayId
          L13_2 = L9_2.overlayId
          L13_2 = L3_2[L13_2]
          if L13_2 then
            L13_2 = A1_2
            if L13_2 then
              L13_2 = L13_2.colorMode
            end
            if L13_2 then
              goto lbl_183
            end
          end
          L13_2 = 1
          ::lbl_183::
          L14_2 = L9_2.color
          L15_2 = L9_2.highlight
          if nil ~= L15_2 then
            L15_2 = L9_2.highlight
            if L15_2 then
              goto lbl_191
            end
          end
          L15_2 = 0
          ::lbl_191::
          L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
        end
      end
    end
  end
  if not L2_2 then
    L4_2 = A1_2.faceFeatures
    if L4_2 then
      L4_2 = pairs
      L5_2 = A1_2
      if L5_2 then
        L5_2 = L5_2.faceFeatures
      end
      L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
      for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
        L10_2 = SetPedFaceFeature
        L11_2 = A0_2
        L12_2 = L9_2.index
        L13_2 = L9_2.value
        L10_2(L11_2, L12_2, L13_2)
      end
    end
  end
  L4_2 = A1_2
  if L4_2 then
    L4_2 = L4_2.hairColor
  end
  if L4_2 then
    L4_2 = A1_2
    if L4_2 then
      L4_2 = L4_2.hairColor
    end
    L4_2 = L4_2.color
    if L4_2 then
      L4_2 = A1_2
      if L4_2 then
        L4_2 = L4_2.hairColor
      end
      L4_2 = L4_2.highlight
      if L4_2 then
        L4_2 = SetPedHairColor
        L5_2 = A0_2
        L6_2 = A1_2
        if L6_2 then
          L6_2 = L6_2.hairColor
        end
        L6_2 = L6_2.color
        L7_2 = A1_2
        if L7_2 then
          L7_2 = L7_2.hairColor
        end
        L7_2 = L7_2.highlight
        L4_2(L5_2, L6_2, L7_2)
      end
    end
  end
  L4_2 = A1_2
  if L4_2 then
    L4_2 = L4_2.eyeColor
  end
  if L4_2 then
    L4_2 = SetPedEyeColor
    L5_2 = A0_2
    L6_2 = A1_2
    if L6_2 then
      L6_2 = L6_2.eyeColor
    end
    L4_2(L5_2, L6_2)
  end
  L4_2 = A1_2.components
  if L4_2 then
    L4_2 = pairs
    L5_2 = A1_2.components
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
      L10_2 = L9_2.component
      if 0 ~= L10_2 or L2_2 then
        L10_2 = SetPedComponentVariation
        L11_2 = A0_2
        L12_2 = L9_2.component
        L13_2 = L9_2.drawable
        L14_2 = L9_2.component
        if 2 == L14_2 then
          L14_2 = L9_2.style
          if L14_2 then
            goto lbl_284
          end
        end
        L14_2 = L9_2.variation
        ::lbl_284::
        L15_2 = 0
        L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
      end
    end
  end
  L4_2 = A1_2.props
  if L4_2 then
    L4_2 = pairs
    L5_2 = A1_2.props
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
      L10_2 = SetPedPropIndex
      L11_2 = A0_2
      L12_2 = L9_2.prop
      L13_2 = L9_2.drawable
      L14_2 = L9_2.variation
      L15_2 = true
      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
    end
  end
  L4_2 = Skin
  L4_2 = L4_2.EnableAutoMaskClipping
  if L4_2 then
    L4_2 = L10_1
    L4_2[A0_2] = false
    L4_2 = L8_1
    L5_2 = {}
    L4_2[A0_2] = L5_2
    L4_2 = L9_1
    L5_2 = {}
    L4_2[A0_2] = L5_2
    L4_2 = Skin
    L4_2 = L4_2.ShrinkFace
    L5_2 = A0_2
    L4_2(L5_2)
  end
  L4_2 = A1_2.model
  if "mp_m_freemode_01" == L4_2 then
    L4_2 = 1885233650
    if L4_2 then
      goto lbl_349
    end
  end
  L4_2 = A1_2.model
  if 1885233650 == L4_2 then
    L4_2 = A1_2.model
    if L4_2 then
      goto lbl_349
    end
  end
  L4_2 = A1_2.model
  if "mp_f_freemode_01" == L4_2 then
    L4_2 = -1667301416
    if L4_2 then
      goto lbl_349
    end
  end
  L4_2 = A1_2.model
  if -1667301416 == L4_2 then
    L4_2 = A1_2.model
    if L4_2 then
      goto lbl_349
    end
  end
  L4_2 = "custom"
  ::lbl_349::
  L5_2 = Skin
  L5_2 = L5_2.EnableHairFades
  if L5_2 and "custom" ~= L4_2 then
    L5_2 = Skin
    L5_2 = L5_2.DefaultFade
    L5_2 = L5_2[1]
    L6_2 = Skin
    L6_2 = L6_2.DefaultFade
    L6_2 = L6_2[2]
    L7_2 = 0
    L8_2 = A1_2.components
    if L8_2 then
      L8_2 = pairs
      L9_2 = A1_2.components
      L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
      for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
        L14_2 = L13_2.component
        if 2 == L14_2 then
          L7_2 = L13_2.drawable
        end
      end
    end
    if 0 ~= L7_2 then
      L8_2 = Skin
      L8_2 = L8_2.HairFades
      L8_2 = L8_2[L4_2]
      L8_2 = L8_2[L7_2]
      if nil ~= L8_2 then
        L8_2 = Skin
        L8_2 = L8_2.HairFades
        L8_2 = L8_2[L4_2]
        L8_2 = L8_2[L7_2]
        L8_2 = L8_2[1]
        L9_2 = Skin
        L9_2 = L9_2.HairFades
        L9_2 = L9_2[L4_2]
        L9_2 = L9_2[L7_2]
        L6_2 = L9_2[2]
        L5_2 = L8_2
      end
    end
    L8_2 = AddPedDecorationFromHashes
    L9_2 = A0_2
    L10_2 = L5_2
    L11_2 = L6_2
    L8_2(L9_2, L10_2, L11_2)
  end
  L5_2 = A1_2.tattoos
  if L5_2 then
    L5_2 = pairs
    L6_2 = A1_2.tattoos
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
    for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
      L11_2 = pairs
      L12_2 = L10_2
      L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2)
      for L15_2, L16_2 in L11_2, L12_2, L13_2, L14_2 do
        L17_2 = L16_2.overlay
        if nil == L17_2 then
          L17_2 = "hashMale"
          L18_2 = A1_2.model
          if L18_2 then
            L18_2 = pairs
            L19_2 = Skin
            L19_2 = L19_2.WomanPlayerModels
            L18_2, L19_2, L20_2, L21_2 = L18_2(L19_2)
            for L22_2, L23_2 in L18_2, L19_2, L20_2, L21_2 do
              L24_2 = A1_2.model
              if L23_2 ~= L24_2 then
                L24_2 = GetHashKey
                L25_2 = A1_2.model
                L24_2 = L24_2(L25_2)
                if L23_2 ~= L24_2 then
                  goto lbl_433
                end
              end
              L17_2 = "hashFemale"
              do break end
              ::lbl_433::
            end
          end
          L18_2 = L16_2[L17_2]
          if nil ~= L18_2 then
            L18_2 = L16_2[L17_2]
            L16_2.overlay = L18_2
          end
        end
        L17_2 = L16_2.overlay
        if L17_2 then
          L17_2 = AddPedDecorationFromHashes
          L18_2 = A0_2
          L19_2 = L16_2.collection
          L20_2 = L16_2.overlay
          L17_2(L18_2, L19_2, L20_2)
        end
      end
    end
  end
  L5_2 = PlayerPedId
  L5_2 = L5_2()
  if A0_2 == L5_2 then
    L5_2 = Config
    L5_2 = L5_2.Framework
    if "ESX" == L5_2 then
      L5_2 = Skin
      L5_2 = L5_2.FirstSpawn
      if L5_2 then
        L5_2 = TriggerServerEvent
        L6_2 = "esx:onPlayerSpawn"
        L5_2(L6_2)
        L5_2 = TriggerEvent
        L6_2 = "esx:onPlayerSpawn"
        L5_2(L6_2)
        L5_2 = TriggerEvent
        L6_2 = "playerSpawned"
        L5_2(L6_2)
        L5_2 = TriggerEvent
        L6_2 = "esx:restoreLoadout"
        L5_2(L6_2)
        L5_2 = Skin
        L5_2.FirstSpawn = false
      end
      L5_2 = Core
      L5_2 = L5_2.SetPlayerData
      L6_2 = "ped"
      L7_2 = A0_2
      L5_2(L6_2, L7_2)
    end
  end
  L5_2 = TriggerServerEvent
  L6_2 = "rcore_tattoos:reload"
  L5_2(L6_2)
end
L12_1.SetOnPed = L13_1
L12_1 = Skin
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = string
  L1_2 = L1_2.rep
  L2_2 = "\000\000\000\000\000\000\000\000"
  L3_2 = 10
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = Citizen
  L2_2 = L2_2.InvokeNative
  L3_2 = 2830157900151113168
  L4_2 = A0_2
  L5_2 = L1_2
  L6_2 = true
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  if not L2_2 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = {}
  L3_2 = string
  L3_2 = L3_2.unpack
  L4_2 = "<i4"
  L5_2 = L1_2
  L6_2 = 1
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2.shapeFirst = L3_2
  L3_2 = string
  L3_2 = L3_2.unpack
  L4_2 = "<i4"
  L5_2 = L1_2
  L6_2 = 9
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2.shapeSecond = L3_2
  L3_2 = string
  L3_2 = L3_2.unpack
  L4_2 = "<i4"
  L5_2 = L1_2
  L6_2 = 17
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2.shapeThird = L3_2
  L3_2 = string
  L3_2 = L3_2.unpack
  L4_2 = "<i4"
  L5_2 = L1_2
  L6_2 = 25
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2.skinFirst = L3_2
  L3_2 = string
  L3_2 = L3_2.unpack
  L4_2 = "<i4"
  L5_2 = L1_2
  L6_2 = 33
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2.skinSecond = L3_2
  L3_2 = string
  L3_2 = L3_2.unpack
  L4_2 = "<i4"
  L5_2 = L1_2
  L6_2 = 41
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2.skinThird = L3_2
  L3_2 = string
  L3_2 = L3_2.unpack
  L4_2 = "<f"
  L5_2 = L1_2
  L6_2 = 49
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2.shapeMix = L3_2
  L3_2 = string
  L3_2 = L3_2.unpack
  L4_2 = "<f"
  L5_2 = L1_2
  L6_2 = 57
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2.skinMix = L3_2
  L3_2 = string
  L3_2 = L3_2.unpack
  L4_2 = "<f"
  L5_2 = L1_2
  L6_2 = 65
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2.thirdMix = L3_2
  L3_2 = string
  L3_2 = L3_2.unpack
  L4_2 = "b"
  L5_2 = L1_2
  L6_2 = 73
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L3_2 = 0 ~= L3_2
  L2_2.hasParent = L3_2
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = tostring
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    if "inf" == L9_2 then
      L8_2 = 0.5
    end
  end
  return L2_2
end
L12_1.GetPedHeadBlendData = L13_1
L12_1 = Skin
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2
  L1_2 = {}
  L2_2 = GetEntityModel
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L1_2.model = L2_2
  L2_2 = {}
  L1_2.components = L2_2
  L2_2 = {}
  L1_2.props = L2_2
  L2_2 = {}
  L1_2.faceData = L2_2
  L2_2 = {}
  L1_2.faceFeatures = L2_2
  L2_2 = {}
  L1_2.tattoos = L2_2
  L2_2 = 1
  L3_2 = 11
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    if 2 == L5_2 then
      L6_2 = table
      L6_2 = L6_2.insert
      L7_2 = L1_2.components
      L8_2 = {}
      L8_2.component = L5_2
      L9_2 = GetPedDrawableVariation
      L10_2 = A0_2
      L11_2 = L5_2
      L9_2 = L9_2(L10_2, L11_2)
      L8_2.drawable = L9_2
      L9_2 = GetPedTextureVariation
      L10_2 = A0_2
      L11_2 = L5_2
      L9_2 = L9_2(L10_2, L11_2)
      L8_2.style = L9_2
      L9_2 = GetPedTextureVariation
      L10_2 = A0_2
      L11_2 = L5_2
      L9_2 = L9_2(L10_2, L11_2)
      L8_2.variation = L9_2
      L6_2(L7_2, L8_2)
    else
      L6_2 = table
      L6_2 = L6_2.insert
      L7_2 = L1_2.components
      L8_2 = {}
      L8_2.component = L5_2
      L9_2 = GetPedDrawableVariation
      L10_2 = A0_2
      L11_2 = L5_2
      L9_2 = L9_2(L10_2, L11_2)
      L8_2.drawable = L9_2
      L9_2 = GetPedTextureVariation
      L10_2 = A0_2
      L11_2 = L5_2
      L9_2 = L9_2(L10_2, L11_2)
      L8_2.variation = L9_2
      L6_2(L7_2, L8_2)
    end
  end
  L2_2 = 0
  L3_2 = 13
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = L1_2.props
    L8_2 = {}
    L8_2.prop = L5_2
    L9_2 = GetPedPropIndex
    L10_2 = A0_2
    L11_2 = L5_2
    L9_2 = L9_2(L10_2, L11_2)
    L8_2.drawable = L9_2
    L9_2 = GetPedPropTextureIndex
    L10_2 = A0_2
    L11_2 = L5_2
    L9_2 = L9_2(L10_2, L11_2)
    L8_2.variation = L9_2
    L6_2(L7_2, L8_2)
  end
  L2_2 = 0
  L3_2 = 12
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = GetPedHeadOverlayData
    L7_2 = PlayerPedId
    L7_2 = L7_2()
    L8_2 = L5_2
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      L12_2 = table
      L12_2 = L12_2.insert
      L13_2 = L1_2.faceData
      L14_2 = {}
      L14_2.overlayId = L5_2
      L14_2.overlayValue = L7_2
      L14_2.opacity = L11_2
      L14_2.color = L9_2
      L14_2.highlight = L10_2
      L12_2(L13_2, L14_2)
    end
  end
  L2_2 = 0
  L3_2 = 19
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = L1_2.faceFeatures
    L8_2 = {}
    L8_2.index = L5_2
    L9_2 = GetPedFaceFeature
    L10_2 = A0_2
    L11_2 = L5_2
    L9_2 = L9_2(L10_2, L11_2)
    L8_2.value = L9_2
    L6_2(L7_2, L8_2)
  end
  L2_2 = Skin
  L2_2 = L2_2.GetPedHeadBlendData
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = L2_2.shapeFirst
    if not L3_2 then
      L3_2 = 1
    end
    L1_2.dadFace = L3_2
    L3_2 = L2_2.shapeSecond
    if not L3_2 then
      L3_2 = 1
    end
    L1_2.momFace = L3_2
    L3_2 = L2_2.shapeMix
    if not L3_2 then
      L3_2 = 0.5
    end
    L1_2.faceMix = L3_2
    L3_2 = L2_2.skinMix
    if not L3_2 then
      L3_2 = 0.5
    end
    L1_2.skinMix = L3_2
    L3_2 = L2_2.skinFirst
    L1_2.skinDad = L3_2
    L3_2 = L2_2.skinSecond
    L1_2.skinMom = L3_2
  end
  L3_2 = A0_2
  L4_2 = Skin
  L4_2 = L4_2.CameraEnabled
  if L4_2 then
    L4_2 = pairs
    L5_2 = L8_1
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
      L3_2 = L8_2
    end
  end
  L4_2 = L8_1
  L4_2 = L4_2[L3_2]
  if L4_2 then
    L4_2 = L8_1
    L4_2 = L4_2[L3_2]
    L4_2 = L4_2.shapeFirst
    if L4_2 then
      L4_2 = L9_1
      L4_2 = L4_2[L3_2]
      if L4_2 then
        L4_2 = 0
        L5_2 = 19
        L6_2 = 1
        for L7_2 = L4_2, L5_2, L6_2 do
          L8_2 = pairs
          L9_2 = L1_2.faceFeatures
          L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
          for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
            L14_2 = L13_2.index
            if L14_2 == L7_2 then
              L14_2 = L9_1
              L14_2 = L14_2[L3_2]
              L14_2 = L14_2[L7_2]
              L13_2.value = L14_2
            end
          end
        end
        L4_2 = L8_1
        L4_2 = L4_2[L3_2]
        L4_2 = L4_2.shapeFirst
        if not L4_2 then
          L4_2 = 1
        end
        L1_2.dadFace = L4_2
        L4_2 = L8_1
        L4_2 = L4_2[L3_2]
        L4_2 = L4_2.shapeSecond
        if not L4_2 then
          L4_2 = 1
        end
        L1_2.momFace = L4_2
        L4_2 = L8_1
        L4_2 = L4_2[L3_2]
        L4_2 = L4_2.shapeMix
        if not L4_2 then
          L4_2 = 0.5
        end
        L1_2.faceMix = L4_2
        L4_2 = L8_1
        L4_2 = L4_2[L3_2]
        L4_2 = L4_2.skinMix
        if not L4_2 then
          L4_2 = 0.5
        end
        L1_2.skinMix = L4_2
        L4_2 = L8_1
        L4_2 = L4_2[L3_2]
        L4_2 = L4_2.skinFirst
        L1_2.skinDad = L4_2
        L4_2 = L8_1
        L4_2 = L4_2[L3_2]
        L4_2 = L4_2.skinSecond
        L1_2.skinMom = L4_2
      end
    end
  end
  L4_2 = {}
  L5_2 = GetPedHairColor
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L4_2.color = L5_2
  L5_2 = GetPedHairHighlightColor
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L4_2.highlight = L5_2
  L1_2.hairColor = L4_2
  L4_2 = GetPedEyeColor
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L1_2.eyeColor = L4_2
  L1_2.gender = "male"
  L4_2 = L1_2.model
  if L4_2 then
    L4_2 = pairs
    L5_2 = Skin
    L5_2 = L5_2.WomanPlayerModels
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
      L10_2 = GetHashKey
      L11_2 = L9_2
      L10_2 = L10_2(L11_2)
      L11_2 = L1_2.model
      if L10_2 == L11_2 then
        L1_2.gender = "female"
        break
      end
    end
  end
  function L4_2(A0_3)
    local L1_3
    if A0_3 < 0 then
      L1_3 = A0_3 + 4294967296
      return L1_3
    end
    return A0_3
  end
  L5_2 = GetPedDecorations
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L6_2 = pairs
  L7_2 = L5_2
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L12_2 = L4_2
    L13_2 = L11_2[2]
    L12_2 = L12_2(L13_2)
    L13_2 = pairs
    L14_2 = Skin
    L14_2 = L14_2.Tattoos
    L13_2, L14_2, L15_2, L16_2 = L13_2(L14_2)
    for L17_2, L18_2 in L13_2, L14_2, L15_2, L16_2 do
      L19_2 = pairs
      L20_2 = L18_2
      L19_2, L20_2, L21_2, L22_2 = L19_2(L20_2)
      for L23_2, L24_2 in L19_2, L20_2, L21_2, L22_2 do
        L25_2 = L4_2
        L26_2 = joaat
        L27_2 = L24_2.hashMale
        L26_2, L27_2, L28_2, L29_2, L30_2 = L26_2(L27_2)
        L25_2 = L25_2(L26_2, L27_2, L28_2, L29_2, L30_2)
        L26_2 = L4_2
        L27_2 = joaat
        L28_2 = L24_2.hashFemale
        L27_2, L28_2, L29_2, L30_2 = L27_2(L28_2)
        L26_2 = L26_2(L27_2, L28_2, L29_2, L30_2)
        if L12_2 == L25_2 or L12_2 == L26_2 then
          L27_2 = L1_2.tattoos
          L28_2 = L24_2.zone
          L27_2 = L27_2[L28_2]
          if not L27_2 then
            L27_2 = L1_2.tattoos
            L28_2 = L24_2.zone
            L29_2 = {}
            L27_2[L28_2] = L29_2
          end
          L27_2 = table
          L27_2 = L27_2.insert
          L28_2 = L1_2.tattoos
          L29_2 = L24_2.zone
          L28_2 = L28_2[L29_2]
          L29_2 = {}
          L30_2 = L24_2.collection
          L29_2.collection = L30_2
          L30_2 = L1_2.gender
          if "female" == L30_2 then
            L30_2 = L24_2.hashFemale
            if L30_2 then
              goto lbl_337
            end
          end
          L30_2 = L24_2.hashMale
          ::lbl_337::
          L29_2.overlay = L30_2
          L27_2(L28_2, L29_2)
        end
      end
    end
  end
  return L1_2
end
L12_1.ConstructFromPed = L13_1
L12_1 = Skin
function L13_1(A0_2, A1_2)
