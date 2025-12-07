local L0_1, L1_1
L0_1 = {}
L0_1.face_md_weight = 50
L0_1.skin_md_weight = 50
L0_1.mom = 0
L0_1.dad = 0
L0_1.face = 0
L0_1.skin = 0
L0_1.nose_1 = 0
L0_1.nose_2 = 0
L0_1.nose_3 = 0
L0_1.nose_4 = 0
L0_1.nose_5 = 0
L0_1.nose_6 = 0
L0_1.eyebrows_5 = 0
L0_1.eyebrows_6 = 0
L0_1.cheeks_1 = 0
L0_1.cheeks_2 = 0
L0_1.cheeks_3 = 0
L0_1.eye_squint = 0
L0_1.lip_thickness = 0
L0_1.jaw_1 = 0
L0_1.jaw_2 = 0
L0_1.chin_1 = 0
L0_1.chin_2 = 0
L0_1.chin_3 = 0
L0_1.chin_4 = 0
L0_1.neck_thickness = 0
L0_1.hair_color_1 = 0
L0_1.hair_color_2 = 0
L0_1.age_1 = 0
L0_1.age_2 = 0
L0_1.blemishes_1 = 0
L0_1.blemishes_2 = 0
L0_1.beard_1 = 0
L0_1.beard_2 = 0
L0_1.eye_color = 0
L0_1.eyebrows_1 = 0
L0_1.eyebrows_2 = 0
L0_1.eyebrows_3 = 0
L0_1.eyebrows_4 = 0
L0_1.makeup_1 = 0
L0_1.makeup_2 = 0
L0_1.lipstick_1 = 0
L0_1.lipstick_2 = 0
L0_1.ears_1 = 0
L0_1.ears_2 = 0
L0_1.chest_1 = 0
L0_1.chest_2 = 0
L0_1.chest_3 = 0
L0_1.bodyb_1 = 0
L0_1.bodyb_2 = 0
L0_1.bodyb_3 = 0
L0_1.bodyb_4 = 0
L0_1.blush_1 = 0
L0_1.blush_2 = 0
L0_1.blush_3 = 0
L0_1.complexion_1 = 0
L0_1.complexion_2 = 0
L0_1.sun_1 = 0
L0_1.sun_2 = 0
L0_1.moles_1 = 0
L0_1.moles_2 = 0
L0_1.beard_3 = 0
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = pairs
  L3_2 = A1_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L0_1
    L8_2[L6_2] = L7_2
  end
  L2_2 = L0_1.face_2
  if not L2_2 then
    L2_2 = L0_1.face
    L0_1.face_2 = L2_2
    L2_2 = L0_1.face
    L0_1.face_3 = L2_2
    L2_2 = L0_1.skin
    L0_1.skin_2 = L2_2
    L2_2 = L0_1.skin
    L0_1.skin_3 = L2_2
    L0_1.blend_face = 10
    L0_1.blend_skin = 10
    L0_1.blend = 10
  end
  L2_2 = SetPedHeadBlendData
  L3_2 = A0_2
  L4_2 = L0_1.face
  L5_2 = L0_1.face_2
  L6_2 = L0_1.face_3
  L7_2 = L0_1.skin
  L8_2 = L0_1.skin_2
  L9_2 = L0_1.skin_3
  L10_2 = L0_1.blend_face
  L10_2 = L10_2 / 10
  L11_2 = L0_1.blend_skin
  L11_2 = L11_2 / 10
  L12_2 = L0_1.blend
  L12_2 = L12_2 / 10
  L13_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L2_2 = SetPedHairColor
  L3_2 = A0_2
  L4_2 = L0_1.hair_color_1
  L5_2 = L0_1.hair_color_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = SetPedHeadOverlay
  L3_2 = A0_2
  L4_2 = 3
  L5_2 = L0_1.age_1
  L6_2 = L0_1.age_2
  L6_2 = L6_2 / 10
  L6_2 = L6_2 + 0.0
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = SetPedHeadOverlay
  L3_2 = A0_2
  L4_2 = 1
  L5_2 = L0_1.beard_1
  L6_2 = L0_1.beard_2
  L6_2 = L6_2 / 10
  L6_2 = L6_2 + 0.0
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = SetPedEyeColor
  L3_2 = A0_2
  L4_2 = L0_1.eye_color
  L5_2 = 0
  L6_2 = 1
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = SetPedHeadOverlay
  L3_2 = A0_2
  L4_2 = 2
  L5_2 = L0_1.eyebrows_1
  L6_2 = L0_1.eyebrows_2
  L6_2 = L6_2 / 10
  L6_2 = L6_2 + 0.0
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = SetPedHeadOverlay
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = L0_1.blemishes_1
  L6_2 = L0_1.blemishes_2
  L6_2 = L6_2 / 10
  L6_2 = L6_2 + 0.0
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = SetPedHeadOverlay
  L3_2 = A0_2
  L4_2 = 4
  L5_2 = L0_1.makeup_1
  L6_2 = L0_1.makeup_2
  L6_2 = L6_2 / 10
  L6_2 = L6_2 + 0.0
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = SetPedHeadOverlay
  L3_2 = A0_2
  L4_2 = 8
  L5_2 = L0_1.lipstick_1
  L6_2 = L0_1.lipstick_2
  L6_2 = L6_2 / 10
  L6_2 = L6_2 + 0.0
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = SetPedComponentVariation
  L3_2 = A0_2
  L4_2 = 2
  L5_2 = L0_1.hair_1
  L6_2 = L0_1.hair_2
  L7_2 = 2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = SetPedHeadOverlayColor
  L3_2 = A0_2
  L4_2 = 1
  L5_2 = 1
  L6_2 = L0_1.beard_3
  L7_2 = L0_1.beard_4
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = SetPedHeadOverlayColor
  L3_2 = A0_2
  L4_2 = 2
  L5_2 = 1
  L6_2 = L0_1.eyebrows_3
  L7_2 = L0_1.eyebrows_4
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = SetPedHeadOverlayColor
  L3_2 = A0_2
  L4_2 = 4
  L5_2 = 1
  L6_2 = L0_1.makeup_3
  L7_2 = L0_1.makeup_4
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = SetPedHeadOverlayColor
  L3_2 = A0_2
  L4_2 = 8
  L5_2 = 1
  L6_2 = L0_1.lipstick_3
  L7_2 = L0_1.lipstick_4
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = SetPedHeadOverlay
  L3_2 = A0_2
  L4_2 = 5
  L5_2 = L0_1.blush_1
  L6_2 = L0_1.blush_2
  L6_2 = L6_2 / 10
  L6_2 = L6_2 + 0.0
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = SetPedHeadOverlayColor
  L3_2 = A0_2
  L4_2 = 5
  L5_2 = 2
  L6_2 = L0_1.blush_3
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = SetPedHeadOverlay
  L3_2 = A0_2
  L4_2 = 6
  L5_2 = L0_1.complexion_1
  L6_2 = L0_1.complexion_2
  L6_2 = L6_2 / 10
  L6_2 = L6_2 + 0.0
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = SetPedHeadOverlay
  L3_2 = A0_2
  L4_2 = 7
  L5_2 = L0_1.sun_1
  L6_2 = L0_1.sun_2
  L6_2 = L6_2 / 10
  L6_2 = L6_2 + 0.0
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = SetPedHeadOverlay
  L3_2 = A0_2
  L4_2 = 9
  L5_2 = L0_1.moles_1
  L6_2 = L0_1.moles_2
  L6_2 = L6_2 / 10
  L6_2 = L6_2 + 0.0
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = SetPedHeadOverlay
  L3_2 = A0_2
  L4_2 = 10
  L5_2 = L0_1.chest_1
  L6_2 = L0_1.chest_2
  L6_2 = L6_2 / 10
  L6_2 = L6_2 + 0.0
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = SetPedHeadOverlayColor
  L3_2 = A0_2
  L4_2 = 10
  L5_2 = 1
  L6_2 = L0_1.chest_3
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = SetPedHeadOverlay
  L3_2 = A0_2
  L4_2 = 11
  L5_2 = L0_1.bodyb_1
  L6_2 = L0_1.bodyb_2
  L6_2 = L6_2 / 10
  L6_2 = L6_2 + 0.0
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = L0_1.ears_1
  if -1 == L2_2 then
    L2_2 = ClearPedProp
    L3_2 = A0_2
    L4_2 = 2
    L2_2(L3_2, L4_2)
  else
    L2_2 = SetPedPropIndex
    L3_2 = A0_2
    L4_2 = 2
    L5_2 = L0_1.ears_1
    L6_2 = L0_1.ears_2
    L7_2 = 2
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  end
  L2_2 = SetPedComponentVariation
  L3_2 = A0_2
  L4_2 = 8
  L5_2 = L0_1.tshirt_1
  L6_2 = L0_1.tshirt_2
  L7_2 = 2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = SetPedComponentVariation
  L3_2 = A0_2
  L4_2 = 11
  L5_2 = L0_1.torso_1
  L6_2 = L0_1.torso_2
  L7_2 = 2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = SetPedComponentVariation
  L3_2 = A0_2
  L4_2 = 3
  L5_2 = L0_1.arms
  L6_2 = L0_1.arms_2
  L7_2 = 2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = SetPedComponentVariation
  L3_2 = A0_2
  L4_2 = 10
  L5_2 = L0_1.decals_1
  L6_2 = L0_1.decals_2
  L7_2 = 2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = SetPedComponentVariation
  L3_2 = A0_2
  L4_2 = 4
  L5_2 = L0_1.pants_1
  L6_2 = L0_1.pants_2
  L7_2 = 2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = SetPedComponentVariation
  L3_2 = A0_2
  L4_2 = 6
  L5_2 = L0_1.shoes_1
  L6_2 = L0_1.shoes_2
  L7_2 = 2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = SetPedComponentVariation
  L3_2 = A0_2
  L4_2 = 1
  L5_2 = L0_1.mask_1
  L6_2 = L0_1.mask_2
  L7_2 = 2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = SetPedComponentVariation
  L3_2 = A0_2
  L4_2 = 9
  L5_2 = L0_1.bproof_1
  L6_2 = L0_1.bproof_2
  L7_2 = 2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = SetPedComponentVariation
  L3_2 = A0_2
  L4_2 = 7
  L5_2 = L0_1.chain_1
  L6_2 = L0_1.chain_2
  L7_2 = 2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = SetPedComponentVariation
  L3_2 = A0_2
  L4_2 = 5
  L5_2 = L0_1.bags_1
  L6_2 = L0_1.bags_2
  L7_2 = 2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = L0_1.helmet_1
  if -1 == L2_2 then
    L2_2 = ClearPedProp
    L3_2 = A0_2
    L4_2 = 0
    L2_2(L3_2, L4_2)
  else
    L2_2 = SetPedPropIndex
    L3_2 = A0_2
    L4_2 = 0
    L5_2 = L0_1.helmet_1
    L6_2 = L0_1.helmet_2
    L7_2 = 2
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  end
  L2_2 = L0_1.glasses_1
  if -1 == L2_2 then
    L2_2 = ClearPedProp
    L3_2 = A0_2
    L4_2 = 1
    L2_2(L3_2, L4_2)
  else
    L2_2 = SetPedPropIndex
    L3_2 = A0_2
    L4_2 = 1
    L5_2 = L0_1.glasses_1
    L6_2 = L0_1.glasses_2
    L7_2 = 2
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  end
  L2_2 = L0_1.watches_1
  if -1 == L2_2 then
    L2_2 = ClearPedProp
    L3_2 = A0_2
    L4_2 = 6
    L2_2(L3_2, L4_2)
  else
    L2_2 = SetPedPropIndex
    L3_2 = A0_2
    L4_2 = 6
    L5_2 = L0_1.watches_1
    L6_2 = L0_1.watches_2
    L7_2 = 2
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  end
  L2_2 = L0_1.bracelets_1
  if -1 == L2_2 then
    L2_2 = ClearPedProp
    L3_2 = A0_2
    L4_2 = 7
    L2_2(L3_2, L4_2)
  else
    L2_2 = SetPedPropIndex
    L3_2 = A0_2
    L4_2 = 7
    L5_2 = L0_1.bracelets_1
    L6_2 = L0_1.bracelets_2
    L7_2 = 2
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  end
  L2_2 = L0_1.nose_1
  if L2_2 then
    L2_2 = SetPedFaceFeature
    L3_2 = A0_2
    L4_2 = 0
    L5_2 = L0_1.nose_1
    L5_2 = L5_2 / 10
    L5_2 = L5_2 - 1.0
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = SetPedFaceFeature
    L3_2 = A0_2
    L4_2 = 0
    L5_2 = 0.0
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = L0_1.nose_2
  if L2_2 then
    L2_2 = SetPedFaceFeature
    L3_2 = A0_2
    L4_2 = 1
    L5_2 = L0_1.nose_2
    L5_2 = L5_2 / 10
    L5_2 = L5_2 - 1.0
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = SetPedFaceFeature
    L3_2 = A0_2
    L4_2 = 1
    L5_2 = 0.0
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = L0_1.nose_3
  if L2_2 then
    L2_2 = SetPedFaceFeature
    L3_2 = A0_2
    L4_2 = 2
    L5_2 = L0_1.nose_3
    L5_2 = L5_2 / 10
    L5_2 = L5_2 - 1.0
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = SetPedFaceFeature
    L3_2 = A0_2
    L4_2 = 2
    L5_2 = 0.0
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = L0_1.nose_4
  if L2_2 then
    L2_2 = SetPedFaceFeature
    L3_2 = A0_2
    L4_2 = 3
    L5_2 = L0_1.nose_4
    L5_2 = L5_2 / 10
    L5_2 = L5_2 - 1.0
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = SetPedFaceFeature
    L3_2 = A0_2
    L4_2 = 3
    L5_2 = 0.0
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = L0_1.nose_5
  if L2_2 then
    L2_2 = SetPedFaceFeature
    L3_2 = A0_2
    L4_2 = 4
    L5_2 = L0_1.nose_5
    L5_2 = L5_2 / 10
    L5_2 = L5_2 - 1.0
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = SetPedFaceFeature
    L3_2 = A0_2
    L4_2 = 4
    L5_2 = 0.0
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = L0_1.nose_6
  if L2_2 then
    L2_2 = SetPedFaceFeature
    L3_2 = A0_2
    L4_2 = 5
    L5_2 = L0_1.nose_6
    L5_2 = L5_2 / 10
    L5_2 = L5_2 - 1.0
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = SetPedFaceFeature
    L3_2 = A0_2
    L4_2 = 5
    L5_2 = 0.0
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = L0_1.eyebrow_1
  if L2_2 then
    L2_2 = SetPedFaceFeature
    L3_2 = A0_2
    L4_2 = 6
    L5_2 = L0_1.eyebrow_1
    L5_2 = L5_2 / 10
    L5_2 = L5_2 - 1.0
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = SetPedFaceFeature
    L3_2 = A0_2
    L4_2 = 6
    L5_2 = 0.0
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = L0_1.eyebrow_2
  if L2_2 then
    L2_2 = SetPedFaceFeature
    L3_2 = A0_2
    L4_2 = 7
    L5_2 = L0_1.eyebrow_2
    L5_2 = L5_2 / 10
    L5_2 = L5_2 - 1.0
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = SetPedFaceFeature
    L3_2 = A0_2
    L4_2 = 7
    L5_2 = 0.0
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = L0_1.cheeks_1
  if L2_2 then
    L2_2 = SetPedFaceFeature
    L3_2 = A0_2
    L4_2 = 8
    L5_2 = L0_1.cheeks_1
    L5_2 = L5_2 / 10
    L5_2 = L5_2 - 1.0
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = SetPedFaceFeature
    L3_2 = A0_2
    L4_2 = 8
    L5_2 = 0.0
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = L0_1.cheeks_2
  if L2_2 then
    L2_2 = SetPedFaceFeature
    L3_2 = A0_2
    L4_2 = 9
    L5_2 = L0_1.cheeks_2
    L5_2 = L5_2 / 10
    L5_2 = L5_2 - 1.0
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = SetPedFaceFeature
    L3_2 = A0_2
    L4_2 = 9
    L5_2 = 0.0
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = L0_1.cheeks_3
  if L2_2 then
    L2_2 = SetPedFaceFeature
    L3_2 = A0_2
    L4_2 = 10
    L5_2 = L0_1.cheeks_3
    L5_2 = L5_2 / 10
    L5_2 = L5_2 - 1.0
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = SetPedFaceFeature
    L3_2 = A0_2
    L4_2 = 10
    L5_2 = 0.0
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = L0_1.lips
  if L2_2 then
    L2_2 = SetPedFaceFeature
    L3_2 = A0_2
    L4_2 = 12
    L5_2 = L0_1.lips
    L5_2 = L5_2 / 10
    L5_2 = L5_2 - 1.0
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = SetPedFaceFeature
    L3_2 = A0_2
    L4_2 = 12
    L5_2 = 0.0
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = L0_1.jaw_1
  if L2_2 then
    L2_2 = SetPedFaceFeature
    L3_2 = A0_2
    L4_2 = 11
    L5_2 = L0_1.jaw_1
    L5_2 = L5_2 / 10
    L5_2 = L5_2 - 1.0
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = SetPedFaceFeature
    L3_2 = A0_2
    L4_2 = 11
    L5_2 = 0.0
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = L0_1.jaw_2
  if L2_2 then
    L2_2 = SetPedFaceFeature
    L3_2 = A0_2
    L4_2 = 13
    L5_2 = L0_1.jaw_2
    L5_2 = L5_2 / 10
    L5_2 = L5_2 - 1.0
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = SetPedFaceFeature
    L3_2 = A0_2
    L4_2 = 13
    L5_2 = 0.0
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = L0_1.chimp_1
  if L2_2 then
    L2_2 = SetPedFaceFeature
    L3_2 = A0_2
    L4_2 = 14
    L5_2 = L0_1.chimp_1
    L5_2 = L5_2 / 10
    L5_2 = L5_2 - 1.0
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = SetPedFaceFeature
    L3_2 = A0_2
    L4_2 = 14
    L5_2 = 0.0
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = L0_1.chimp_2
  if L2_2 then
    L2_2 = SetPedFaceFeature
    L3_2 = A0_2
    L4_2 = 15
    L5_2 = L0_1.chimp_2
    L5_2 = L5_2 / 10
    L5_2 = L5_2 - 1.0
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = SetPedFaceFeature
    L3_2 = A0_2
    L4_2 = 15
    L5_2 = 0.0
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = L0_1.chimp_3
  if L2_2 then
    L2_2 = SetPedFaceFeature
    L3_2 = A0_2
    L4_2 = 16
    L5_2 = L0_1.chimp_3
    L5_2 = L5_2 / 10
    L5_2 = L5_2 - 1.0
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = SetPedFaceFeature
    L3_2 = A0_2
    L4_2 = 16
    L5_2 = 0.0
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = L0_1.chimp_4
  if L2_2 then
    L2_2 = SetPedFaceFeature
    L3_2 = A0_2
    L4_2 = 17
    L5_2 = L0_1.chimp_4
    L5_2 = L5_2 / 10
    L5_2 = L5_2 - 1.0
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = SetPedFaceFeature
    L3_2 = A0_2
    L4_2 = 17
    L5_2 = 0.0
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = L0_1.neck
  if L2_2 then
    L2_2 = SetPedFaceFeature
    L3_2 = A0_2
    L4_2 = 18
    L5_2 = L0_1.neck
    L5_2 = L5_2 / 10
    L5_2 = L5_2 - 1.0
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = SetPedFaceFeature
    L3_2 = A0_2
    L4_2 = 18
    L5_2 = 0.0
    L2_2(L3_2, L4_2, L5_2)
  end
end
ESX_ApplySkin = L1_1
