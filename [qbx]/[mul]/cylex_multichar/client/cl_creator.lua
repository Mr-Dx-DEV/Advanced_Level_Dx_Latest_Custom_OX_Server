local L0_1, L1_1, L2_1
genderLast = nil
L0_1 = RegisterNUICallback
L1_1 = "creator:spawnModel"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = A0_2.gender
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  if "male" == L2_2 then
    L4_2 = genderLast
    if "male" ~= L4_2 then
      L4_2 = LoadModel
      L5_2 = "mp_m_freemode_01"
      L4_2(L5_2)
      L4_2 = SetPlayerModel
      L5_2 = PlayerId
      L5_2 = L5_2()
      L6_2 = 1885233650
      L4_2(L5_2, L6_2)
      L4_2 = PlayerPedId
      L4_2 = L4_2()
      L3_2 = L4_2
      L4_2 = PlayAnim
      L5_2 = L3_2
      L6_2 = "amb@world_human_stand_guard@male@idle_a"
      L7_2 = "idle_a"
      L8_2 = 8.0
      L9_2 = 8.0
      L10_2 = -1
      L11_2 = 1
      L12_2 = 0
      L13_2 = 0
      L14_2 = 0
      L15_2 = 0
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  end
  else
    if "female" == L2_2 then
      L4_2 = genderLast
      if "female" ~= L4_2 then
        L4_2 = LoadModel
        L5_2 = "mp_f_freemode_01"
        L4_2(L5_2)
        L4_2 = SetPlayerModel
        L5_2 = PlayerId
        L5_2 = L5_2()
        L6_2 = -1667301416
        L4_2(L5_2, L6_2)
        L4_2 = PlayerPedId
        L4_2 = L4_2()
        L3_2 = L4_2
        L4_2 = PlayAnim
        L5_2 = L3_2
        L6_2 = "amb@world_human_cop_idles@female@idle_b"
        L7_2 = "idle_e"
        L8_2 = 8.0
        L9_2 = 8.0
        L10_2 = -1
        L11_2 = 1
        L12_2 = 0
        L13_2 = 0
        L14_2 = 0
        L15_2 = 0
        L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
    end
    else
      L4_2 = SetEntityAlpha
      L5_2 = L3_2
      L6_2 = 0
      L7_2 = false
      L4_2(L5_2, L6_2, L7_2)
      L4_2 = SetEntityVisible
      L5_2 = L3_2
      L6_2 = false
      L4_2(L5_2, L6_2)
    end
  end
  L4_2 = PlayerPedId
  L4_2 = L4_2()
  L3_2 = L4_2
  genderLast = L2_2
  if nil ~= L2_2 then
    L4_2 = SetPedDefaultComponentVariation
    L5_2 = L3_2
    L4_2(L5_2)
    L4_2 = SetEntityAlpha
    L5_2 = L3_2
    L6_2 = 255
    L7_2 = false
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = SetEntityVisible
    L5_2 = L3_2
    L6_2 = true
    L4_2(L5_2, L6_2)
    L4_2 = FreezeEntityPosition
    L5_2 = L3_2
    L6_2 = true
    L4_2(L5_2, L6_2)
    L4_2 = characterBlend
    L5_2 = L3_2
    L4_2(L5_2)
  end
  L4_2 = CREATOR
  L4_2.ped = L3_2
  L4_2 = A1_2
  L5_2 = "ok"
  L4_2(L5_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "creator:completeCreation"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = CREATOR
  L2_2.active = false
  L2_2 = {}
  L3_2 = A0_2.firstName
  L2_2.firstName = L3_2
  L3_2 = A0_2.lastName
  L2_2.lastName = L3_2
  L3_2 = A0_2.dob
  L2_2.date = L3_2
  L3_2 = A0_2.gender
  L2_2.gender = L3_2
  L3_2 = A0_2.height
  L2_2.height = L3_2
  L3_2 = A0_2.nationality
  L2_2.nationality = L3_2
  L3_2 = Config
  L3_2 = L3_2.core
  if "esx" == L3_2 then
    L3_2 = {}
    L4_2 = A0_2.firstName
    L3_2.firstname = L4_2
    L4_2 = A0_2.lastName
    L3_2.lastname = L4_2
    L4_2 = A0_2.dob
    L3_2.dateofbirth = L4_2
    L4_2 = A0_2.gender
    if "male" == L4_2 then
      L4_2 = "m"
      if L4_2 then
        goto lbl_36
      end
    end
    L4_2 = "f"
    ::lbl_36::
    L3_2.sex = L4_2
    L4_2 = A0_2.height
    L3_2.height = L4_2
    L2_2 = L3_2
  end
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L4_2 = A0_2.cancelled
  if not L4_2 then
    L4_2 = ResetEntityAlpha
    L5_2 = L3_2
    L4_2(L5_2)
    L4_2 = SetEntityVisible
    L5_2 = L3_2
    L6_2 = true
    L4_2(L5_2, L6_2)
    genderLast = nil
    L4_2 = GetGameTimer
    L4_2 = L4_2()
    L5_2 = DestroyCam
    L6_2 = CREATOR
    L6_2 = L6_2.cam
    L5_2(L6_2)
    L5_2 = FreezeEntityPosition
    L6_2 = L3_2
    L7_2 = true
    L5_2(L6_2, L7_2)
    L5_2 = RPC
    L5_2 = L5_2.execute
    L6_2 = "cylex_multichar:playCharacter"
    L7_2 = SELECTED_CHARACTER
    L7_2 = L7_2.character
    L8_2 = true
    L9_2 = L2_2
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
    if L5_2 then
      L6_2 = stopSpawn
      L6_2()
      L6_2 = Core
      L6_2 = L6_2.spawn
      L7_2 = SELECTED_CHARACTER
      L7_2 = L7_2.character
      L6_2(L7_2)
    else
      L6_2 = print
      L7_2 = "Failed to start character"
      L8_2 = L5_2
      L6_2(L7_2, L8_2)
    end
  else
    L4_2 = CREATOR
    L4_2.active = false
    genderLast = nil
    L4_2 = CHARACTER_CAMERAS
    L5_2 = SELECTED_CHARACTER
    L5_2 = L5_2.character
    L5_2 = L5_2.cid
    L4_2 = L4_2[L5_2]
    L5_2 = SetCamActiveWithInterp
    L6_2 = L4_2
    L7_2 = CREATOR
    L7_2 = L7_2.cam
    L8_2 = 2000
    L9_2 = true
    L10_2 = true
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    L5_2 = A1_2
    L6_2 = "ok"
    L5_2(L6_2)
    L5_2 = Wait
    L6_2 = 2000
    L5_2(L6_2)
    L5_2 = SendNUIMessage
    L6_2 = {}
    L6_2.type = "characters"
    L6_2.active = true
    L5_2(L6_2)
    L5_2 = DestroyCam
    L6_2 = CREATOR
    L6_2 = L6_2.cam
    L5_2(L6_2)
    L5_2 = SetEntityAlpha
    L6_2 = L3_2
    L7_2 = 0
    L8_2 = false
    L5_2(L6_2, L7_2, L8_2)
    L5_2 = SetEntityVisible
    L6_2 = L3_2
    L7_2 = false
    L5_2(L6_2, L7_2)
  end
end
L0_1(L1_1, L2_1)
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = SetPedDefaultComponentVariation
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = SetPedComponentVariation
  L2_2 = A0_2
  L3_2 = 11
  L4_2 = 0
  L5_2 = 1
  L6_2 = 0
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = SetPedComponentVariation
  L2_2 = A0_2
  L3_2 = 8
  L4_2 = 0
  L5_2 = 1
  L6_2 = 0
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = SetPedComponentVariation
  L2_2 = A0_2
  L3_2 = 6
  L4_2 = 1
  L5_2 = 2
  L6_2 = 0
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = SetPedHeadOverlayColor
  L2_2 = A0_2
  L3_2 = 1
  L4_2 = 1
  L5_2 = 0
  L6_2 = 0
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = SetPedHeadOverlayColor
  L2_2 = A0_2
  L3_2 = 2
  L4_2 = 1
  L5_2 = 0
  L6_2 = 0
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = SetPedHeadOverlayColor
  L2_2 = A0_2
  L3_2 = 4
  L4_2 = 2
  L5_2 = 0
  L6_2 = 0
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = SetPedHeadOverlayColor
  L2_2 = A0_2
  L3_2 = 5
  L4_2 = 2
  L5_2 = 0
  L6_2 = 0
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = SetPedHeadOverlayColor
  L2_2 = A0_2
  L3_2 = 8
  L4_2 = 2
  L5_2 = 0
  L6_2 = 0
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = SetPedHeadOverlayColor
  L2_2 = A0_2
  L3_2 = 10
  L4_2 = 1
  L5_2 = 0
  L6_2 = 0
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = SetPedHeadOverlay
  L2_2 = A0_2
  L3_2 = 1
  L4_2 = 0
  L5_2 = 0
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = SetPedHairColor
  L2_2 = A0_2
  L3_2 = 1
  L4_2 = 1
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = data
  return L1_2
end
characterBlend = L0_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = SPAWN
  L0_2 = L0_2.position
  L1_2 = CREATOR
  L1_2 = L1_2.player_offset
  L1_2 = L1_2.pos
  L0_2 = L0_2 + L1_2
  L1_2 = CREATOR
  L1_2 = L1_2.player_offset
  L1_2 = L1_2.rot
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = SetEntityCoords
  L4_2 = L2_2
  L5_2 = L0_2.x
  L6_2 = L0_2.y
  L7_2 = L0_2.z
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = SetEntityRotation
  L4_2 = L2_2
  L5_2 = L1_2.x
  L6_2 = L1_2.y
  L7_2 = L1_2.z
  L8_2 = 2
  L9_2 = true
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = ClearPedTasksImmediately
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = SetEntityAlpha
  L4_2 = L2_2
  L5_2 = 0
  L6_2 = false
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = SetEntityVisible
  L4_2 = L2_2
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = CREATOR
  L4_2 = CreateCam
  L5_2 = "DEFAULT_SCRIPTED_CAMERA"
  L6_2 = false
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.cam = L4_2
  L3_2 = DoScreenFadeIn
  L4_2 = 500
  L3_2(L4_2)
  L3_2 = SPAWN
  L3_2 = L3_2.position
  L4_2 = CREATOR
  L4_2 = L4_2.camera_offset
  L4_2 = L4_2.pos
  L3_2 = L3_2 + L4_2
  L4_2 = CREATOR
  L4_2 = L4_2.camera_offset
  L4_2 = L4_2.rot
  L5_2 = SetCamCoord
  L6_2 = CREATOR
  L6_2 = L6_2.cam
  L7_2 = L3_2.x
  L8_2 = L3_2.y
  L9_2 = L3_2.z
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = SetCamRot
  L6_2 = CREATOR
  L6_2 = L6_2.cam
  L7_2 = L4_2.x
  L8_2 = L4_2.y
  L9_2 = L4_2.z
  L10_2 = 2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L5_2 = SetCamFov
  L6_2 = CREATOR
  L6_2 = L6_2.cam
  L7_2 = 30.0
  L5_2(L6_2, L7_2)
  L5_2 = PointCamAtEntity
  L6_2 = CREATOR
  L6_2 = L6_2.cam
  L7_2 = L2_2
  L8_2 = 0.0
  L9_2 = 0.0
  L10_2 = 0.2
  L11_2 = true
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L5_2 = CHARACTER_CAMERAS
  L6_2 = SELECTED_CHARACTER
  L6_2 = L6_2.character
  L6_2 = L6_2.cid
  L5_2 = L5_2[L6_2]
  L6_2 = print
  L7_2 = "char_cam"
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = DoesCamExist
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  if L6_2 then
    L6_2 = SetCamActiveWithInterp
    L7_2 = CREATOR
    L7_2 = L7_2.cam
    L8_2 = L5_2
    L9_2 = 2000
    L10_2 = true
    L11_2 = true
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  else
    L6_2 = SetCamActive
    L7_2 = CREATOR
    L7_2 = L7_2.cam
    L8_2 = true
    L6_2(L7_2, L8_2)
    L6_2 = print
    L7_2 = "no spawn camera"
    L6_2(L7_2)
  end
  L6_2 = CREATOR
  L6_2.ped = L2_2
  L6_2 = CREATOR
  L6_2.active = true
  L6_2 = SendNUIMessage
  L7_2 = {}
  L7_2.type = "characters"
  L7_2.active = false
  L6_2(L7_2)
  while true do
    L6_2 = IsCamInterpolating
    L7_2 = CREATOR
    L7_2 = L7_2.cam
    L6_2 = L6_2(L7_2)
    if not L6_2 then
      break
    end
    L6_2 = Wait
    L7_2 = 0
    L6_2(L7_2)
  end
  L6_2 = SendNUIMessage
  L7_2 = {}
  L7_2.type = "creator"
  L8_2 = CREATOR
  L8_2 = L8_2.active
  L7_2.active = L8_2
  L6_2(L7_2)
  L6_2 = CreateThread
  L7_2 = creatorThead
  L6_2(L7_2)
  L6_2 = SetNuiFocus
  L7_2 = CREATOR
  L7_2 = L7_2.active
  L8_2 = CREATOR
  L8_2 = L8_2.active
  L6_2(L7_2, L8_2)
end
startCreator = L0_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L0_2 = 0
  while true do
    L1_2 = CREATOR
    L1_2 = L1_2.active
    if not L1_2 then
      break
    end
    L1_2 = Wait
    L2_2 = 0
    L1_2(L2_2)
    L1_2 = DoesEntityExist
    L2_2 = CREATOR
    L2_2 = L2_2.ped
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = GetEntityAlpha
      L2_2 = CREATOR
      L2_2 = L2_2.ped
      L1_2 = L1_2(L2_2)
      if L1_2 > 0 then
        L0_2 = L0_2 + 1
        L1_2 = SPAWN
        L1_2 = L1_2.position
        L2_2 = CREATOR
        L2_2 = L2_2.camera_offset
        L2_2 = L2_2.pos
        L1_2 = L1_2 + L2_2
        L2_2 = 200
        if L0_2 > L2_2 then
          L2_2 = TaskLookAtCoord
          L3_2 = CREATOR
          L3_2 = L3_2.ped
          L4_2 = L1_2
          L5_2 = 2000
          L6_2 = 0
          L7_2 = 2
          L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
          L0_2 = 0
        end
        L2_2 = GetEntityCoords
        L3_2 = CREATOR
        L3_2 = L3_2.ped
        L2_2 = L2_2(L3_2)
        L3_2 = vector3
        L4_2 = L1_2.x
        L5_2 = L1_2.y
        L6_2 = L1_2.z
        L6_2 = L6_2 + 1.0
        L3_2 = L3_2(L4_2, L5_2, L6_2)
        L4_2 = getDirectionVector
        L5_2 = L1_2
        L6_2 = L2_2
        L4_2 = L4_2(L5_2, L6_2)
        L5_2 = DrawSpotLightWithShadow
        L6_2 = L3_2
        L7_2 = L4_2
        L8_2 = 255
        L9_2 = 255
        L10_2 = 255
        L11_2 = 100.0
        L12_2 = 0.75
        L13_2 = 0.0
        L14_2 = 25.0
        L15_2 = 1.0
        L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
      end
    end
  end
end
creatorThead = L0_1
