local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = Photos
L0_1.Enabled = false
L0_1 = Photos
L1_1 = {}
L0_1.PhotosToUpload = L1_1
L0_1 = Photos
L0_1.LastImageReciveTimer = 0
L0_1 = Photos
L0_1.CurrentDrawable = 0
L0_1 = Photos
L0_1.CurrentTexture = 0
L0_1 = Photos
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = 0.0
  if A0_2 then
    L1_2 = 1.0
  end
  L2_2 = CascadeShadowsClearShadowSampleType
  L2_2()
  L2_2 = RopeDrawShadowEnabled
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = CascadeShadowsSetAircraftMode
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = CascadeShadowsEnableEntityTracker
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = CascadeShadowsSetDynamicDepthMode
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = CascadeShadowsSetEntityTrackerScale
  L3_2 = L1_2
  L2_2(L3_2)
  L2_2 = CascadeShadowsSetDynamicDepthValue
  L3_2 = L1_2
  L2_2(L3_2)
  L2_2 = CascadeShadowsSetCascadeBoundsScale
  L3_2 = L1_2
  L2_2(L3_2)
end
L0_1.SwitchShadows = L1_1
L0_1 = Photos
function L1_1()
  local L0_2, L1_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3
    while true do
      L0_3 = Photos
      L0_3 = L0_3.Enabled
      if not L0_3 then
        break
      end
      L0_3 = DoesEntityExist
      L1_3 = Photos
      L1_3 = L1_3.Scene
      L1_3 = L1_3.Ped
      L1_3 = L1_3.obj
      L0_3 = L0_3(L1_3)
      if L0_3 then
        L0_3 = ClearPedTasksImmediately
        L1_3 = Photos
        L1_3 = L1_3.Scene
        L1_3 = L1_3.Ped
        L1_3 = L1_3.obj
        L0_3(L1_3)
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
    end
  end
  L0_2(L1_2)
end
L0_1.ClearPedTasks = L1_1
L0_1 = Photos
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = Photos
  L0_2.Enabled = true
  L0_2 = {}
  L1_2 = pairs
  L2_2 = Photos
  L2_2 = L2_2.Components
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = #L0_2
    L7_2 = L7_2 + 1
    L8_2 = L6_2.name
    L0_2[L7_2] = L8_2
  end
  L1_2 = Photos
  L1_2 = L1_2.Scene
  L1_2 = L1_2.Greenscreen
  L2_2 = Functions
  L2_2 = L2_2.SpawnObject
  L3_2 = Photos
  L3_2 = L3_2.Scene
  L3_2 = L3_2.Greenscreen
  L3_2 = L3_2.model
  L4_2 = nil
  L5_2 = Photos
  L5_2 = L5_2.Scene
  L5_2 = L5_2.Greenscreen
  L5_2 = L5_2.coords
  L6_2 = false
  L7_2 = true
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2.obj = L2_2
  L1_2 = SetEntityRotation
  L2_2 = Photos
  L2_2 = L2_2.Scene
  L2_2 = L2_2.Greenscreen
  L2_2 = L2_2.obj
  L3_2 = Photos
  L3_2 = L3_2.Scene
  L3_2 = L3_2.Greenscreen
  L3_2 = L3_2.rotation
  L3_2 = L3_2.x
  L4_2 = Photos
  L4_2 = L4_2.Scene
  L4_2 = L4_2.Greenscreen
  L4_2 = L4_2.rotation
  L4_2 = L4_2.y
  L5_2 = Photos
  L5_2 = L5_2.Scene
  L5_2 = L5_2.Greenscreen
  L5_2 = L5_2.rotation
  L5_2 = L5_2.z
  L6_2 = 0
  L7_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = Photos
  L1_2 = L1_2.Scene
  L2_2 = CreateCamWithParams
  L3_2 = "DEFAULT_SCRIPTED_CAMERA"
  L4_2 = Photos
  L4_2 = L4_2.Scene
  L4_2 = L4_2.Greenscreen
  L4_2 = L4_2.coords
  L4_2 = L4_2.x
  L5_2 = Photos
  L5_2 = L5_2.Scene
  L5_2 = L5_2.Greenscreen
  L5_2 = L5_2.coords
  L5_2 = L5_2.y
  L6_2 = Photos
  L6_2 = L6_2.Scene
  L6_2 = L6_2.Greenscreen
  L6_2 = L6_2.coords
  L6_2 = L6_2.z
  L7_2 = 0.0
  L8_2 = 0.0
  L9_2 = Photos
  L9_2 = L9_2.Scene
  L9_2 = L9_2.Greenscreen
  L9_2 = L9_2.cameraHeading
  L10_2 = 40.0
  L11_2 = true
  L12_2 = 2
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L1_2.Cam = L2_2
  L1_2 = Photos
  L1_2 = L1_2.SwitchShadows
  L2_2 = false
  L1_2(L2_2)
  L1_2 = Photos
  L1_2 = L1_2.ClearPedTasks
  L1_2()
  L1_2 = SetNuiFocus
  L2_2 = true
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = {}
  L2_2 = {}
  L2_2.model = "mp_m_freemode_01"
  L3_2 = {}
  L2_2.disabledComponents = L3_2
  L3_2 = {}
  L3_2.model = "mp_f_freemode_01"
  L4_2 = {}
  L3_2.disabledComponents = L4_2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L2_2 = Functions
  L2_2 = L2_2.SendNuiMessage
  L3_2 = "TogglePhotos"
  L4_2 = {}
  L4_2.state = true
  L4_2.components = L0_2
  L4_2.peds = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = TriggerEvent
  L3_2 = "qb-weathersync:client:DisableSync"
  L2_2(L3_2)
  while true do
    L2_2 = Photos
    L2_2 = L2_2.Enabled
    if not L2_2 then
      break
    end
    L2_2 = NetworkOverrideClockTime
    L3_2 = 12
    L4_2 = 0
    L5_2 = 0
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = Wait
    L3_2 = 0
    L2_2(L3_2)
  end
end
L0_1.Enter = L1_1
L0_1 = Photos
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = Photos
  L0_2.Enabled = false
  L0_2 = Photos
  L0_2 = L0_2.SwitchShadows
  L1_2 = true
  L0_2(L1_2)
  L0_2 = SetNuiFocus
  L1_2 = false
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = Functions
  L0_2 = L0_2.SendNuiMessage
  L1_2 = "TogglePhotos"
  L2_2 = {}
  L2_2.state = false
  L0_2(L1_2, L2_2)
  L0_2 = DeletePed
  L1_2 = Photos
  L1_2 = L1_2.Scene
  L1_2 = L1_2.Ped
  L1_2 = L1_2.obj
  L0_2(L1_2)
  L0_2 = DeleteEntity
  L1_2 = Photos
  L1_2 = L1_2.Scene
  L1_2 = L1_2.Greenscreen
  L1_2 = L1_2.obj
  L0_2(L1_2)
  L0_2 = DestroyCam
  L1_2 = Photos
  L1_2 = L1_2.Scene
  L1_2 = L1_2.Cam
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = RenderScriptCams
  L1_2 = false
  L2_2 = false
  L3_2 = 0
  L4_2 = true
  L5_2 = false
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
  L0_2 = Photos
  L0_2 = L0_2.Scene
  L0_2 = L0_2.Ped
  L0_2.obj = nil
  L0_2 = Photos
  L0_2 = L0_2.Scene
  L0_2 = L0_2.Greenscreen
  L0_2.obj = nil
  L0_2 = Photos
  L0_2 = L0_2.Scene
  L0_2.Cam = nil
  L0_2 = TriggerEvent
  L1_2 = "qb-weathersync:client:EnableSync"
  L0_2(L1_2)
end
L0_1.Exit = L1_1
L0_1 = Photos
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = pairs
  L2_2 = Photos
  L2_2 = L2_2.Components
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.name
    if L7_2 == A0_2 then
      return L6_2
    end
  end
  L1_2 = nil
  return L1_2
end
L0_1.GetComponentByName = L1_1
L0_1 = Photos
function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = Photos
  L0_2 = L0_2.PhotosToUpload
  L0_2 = #L0_2
  if L0_2 > 0 then
    L0_2 = TriggerServerEvent
    L1_2 = "17mov_CharacterSystem:UploadPhotos"
    L2_2 = Photos
    L2_2 = L2_2.PhotosToUpload
    L0_2(L1_2, L2_2)
    L0_2 = Photos
    L1_2 = {}
    L0_2.PhotosToUpload = L1_2
  end
end
L0_1.Upload = L1_1
L0_1 = RegisterNUICallback
L1_1 = "ExitPhotos"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = Photos
  L2_2 = L2_2.Exit
  L2_2()
  L2_2 = A1_2
  L3_2 = {}
  L2_2(L3_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "RecivePhoto"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = Functions
  L2_2 = L2_2.DeepCopy
  L3_2 = Photos
  L3_2 = L3_2.GetComponentByName
  L4_2 = A0_2.component
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  if not L2_2 then
    L3_2 = A1_2
    L4_2 = {}
    L3_2(L4_2)
    return
  end
  L3_2 = A0_2.component
  if "head_1" == L3_2 then
    L3_2 = nil
    L4_2 = A0_2.model
    if "mp_m_freemode_01" == L4_2 then
      L4_2 = Skin
      L3_2 = L4_2.MaleFaceTranslation
      L2_2.name = "dad"
    else
      L4_2 = A0_2.model
      if "mp_f_freemode_01" == L4_2 then
        L4_2 = Skin
        L3_2 = L4_2.FemaleFaceTranslation
        L2_2.name = "mom"
      end
    end
    if L3_2 then
      L4_2 = false
      L5_2 = pairs
      L6_2 = L3_2
      L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
      for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
        L11_2 = A0_2.drawable
        if L11_2 == L10_2 then
          L4_2 = true
          A0_2.drawable = L9_2
          break
        end
      end
      if not L4_2 then
        L5_2 = Functions
        L5_2 = L5_2.Debug
        L6_2 = "SKIPPING THIS HEAD AS IT BELONGS TO DIFFERENT GENDER"
        L5_2(L6_2)
        L5_2 = A1_2
        L6_2 = {}
        L5_2(L6_2)
        return
      end
    end
  end
  L3_2 = Photos
  L4_2 = GetGameTimer
  L4_2 = L4_2()
  L3_2.LastImageReciveTimer = L4_2
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = Photos
  L4_2 = L4_2.PhotosToUpload
  L5_2 = {}
  L6_2 = A0_2.image
  L5_2.image = L6_2
  L6_2 = A0_2.model
  L5_2.model = L6_2
  L6_2 = A0_2.drawable
  L5_2.drawable = L6_2
  L5_2.component = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = Functions
  L3_2 = L3_2.Debug
  L4_2 = string
  L4_2 = L4_2.format
  L5_2 = "Recived photo. Component: %s. Drawable: %s, Model: %s"
  L6_2 = A0_2.component
  L7_2 = A0_2.drawable
  L8_2 = A0_2.model
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L3_2 = Photos
  L3_2 = L3_2.PhotosToUpload
  L3_2 = #L3_2
  if L3_2 > 5 then
    L3_2 = Photos
    L3_2 = L3_2.Upload
    L3_2()
  else
    L3_2 = SetTimeout
    L4_2 = 5000
    function L5_2()
      local L0_3, L1_3
      L0_3 = GetGameTimer
      L0_3 = L0_3()
      L1_3 = Photos
      L1_3 = L1_3.LastImageReciveTimer
      L0_3 = L0_3 - L1_3
      L1_3 = 4000
      if L0_3 > L1_3 then
        L0_3 = Photos
        L0_3 = L0_3.Upload
        L0_3()
      end
    end
    L3_2(L4_2, L5_2)
  end
  L3_2 = A1_2
  L4_2 = {}
  L3_2(L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = {}
L1_1 = RegisterNUICallback
L2_1 = "GetMaxDrawables"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = GetHashKey
  L3_2 = A0_2.model
  L2_2 = L2_2(L3_2)
  L3_2 = GetOffsetFromEntityInWorldCoords
  L4_2 = Photos
  L4_2 = L4_2.Scene
  L4_2 = L4_2.Greenscreen
  L4_2 = L4_2.obj
  L5_2 = Photos
  L5_2 = L5_2.Scene
  L5_2 = L5_2.Ped
  L5_2 = L5_2.offset
  L5_2 = L5_2.x
  L6_2 = Photos
  L6_2 = L6_2.Scene
  L6_2 = L6_2.Ped
  L6_2 = L6_2.offset
  L6_2 = L6_2.y
  L7_2 = Photos
  L7_2 = L7_2.Scene
  L7_2 = L7_2.Ped
  L7_2 = L7_2.offset
  L7_2 = L7_2.z
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L4_2 = Photos
  L4_2 = L4_2.Scene
  L4_2 = L4_2.Ped
  L4_2 = L4_2.obj
  if L4_2 then
    L4_2 = GetEntityModel
    L5_2 = Photos
    L5_2 = L5_2.Scene
    L5_2 = L5_2.Ped
    L5_2 = L5_2.obj
    L4_2 = L4_2(L5_2)
    if L4_2 == L2_2 then
      goto lbl_93
    end
  end
  L4_2 = 1
  L5_2 = L0_1
  L5_2 = #L5_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = DeletePed
    L9_2 = L0_1
    L9_2 = L9_2[L7_2]
    L8_2(L9_2)
    L8_2 = L0_1
    L8_2[L7_2] = nil
  end
  L4_2 = Functions
  L4_2 = L4_2.LoadModel
  L5_2 = L2_2
  L4_2(L5_2)
  L4_2 = Photos
  L4_2 = L4_2.Scene
  L4_2 = L4_2.Ped
  L5_2 = CreatePed
  L6_2 = 0
  L7_2 = L2_2
  L8_2 = L3_2.x
  L9_2 = L3_2.y
  L10_2 = L3_2.z
  L11_2 = Photos
  L11_2 = L11_2.Scene
  L11_2 = L11_2.Ped
  L11_2 = L11_2.heading
  L12_2 = false
  L13_2 = true
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L4_2.obj = L5_2
  L4_2 = SetPedDefaultComponentVariation
  L5_2 = Photos
  L5_2 = L5_2.Scene
  L5_2 = L5_2.Ped
  L5_2 = L5_2.obj
  L4_2(L5_2)
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = L0_1
  L6_2 = Photos
  L6_2 = L6_2.Scene
  L6_2 = L6_2.Ped
  L6_2 = L6_2.obj
  L4_2(L5_2, L6_2)
  L4_2 = FreezeEntityPosition
  L5_2 = Photos
  L5_2 = L5_2.Scene
  L5_2 = L5_2.Ped
  L5_2 = L5_2.obj
  L6_2 = true
  L4_2(L5_2, L6_2)
  ::lbl_93::
  L4_2 = Photos
  L4_2 = L4_2.GetComponentByName
  L5_2 = A0_2.component
  L4_2 = L4_2(L5_2)
  L5_2 = 0
  if L4_2 then
    L6_2 = L4_2.type
    if "component" == L6_2 then
      L6_2 = GetNumberOfPedDrawableVariations
      L7_2 = Photos
      L7_2 = L7_2.Scene
      L7_2 = L7_2.Ped
      L7_2 = L7_2.obj
      L8_2 = L4_2.id
      L6_2 = L6_2(L7_2, L8_2)
      L5_2 = L6_2
    else
      L6_2 = L4_2.type
      if "prop" == L6_2 then
        L6_2 = GetNumberOfPedPropDrawableVariations
        L7_2 = Photos
        L7_2 = L7_2.Scene
        L7_2 = L7_2.Ped
        L7_2 = L7_2.obj
        L8_2 = L4_2.id
        L6_2 = L6_2(L7_2, L8_2)
        L5_2 = L6_2
      end
    end
  end
  L6_2 = A1_2
  L7_2 = {}
  L7_2.maxDrawables = L5_2
  L6_2(L7_2)
end
L1_1(L2_1, L3_1)
L1_1 = {}
L1_1.head_1 = true
L1_1.mask_1 = true
L1_1.hair_1 = true
L1_1.ear_1 = true
L2_1 = RegisterNUICallback
L3_1 = "RequestComponent"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L2_2 = Photos
  L2_2 = L2_2.GetComponentByName
  L3_2 = A0_2.component
  L2_2 = L2_2(L3_2)
  L3_2 = 1
  L4_2 = L0_1
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L0_1
    L7_2 = L7_2[L6_2]
    L8_2 = Photos
    L8_2 = L8_2.Scene
    L8_2 = L8_2.Ped
    L8_2 = L8_2.obj
    if L7_2 ~= L8_2 then
      L7_2 = DeletePed
      L8_2 = L0_1
      L8_2 = L8_2[L6_2]
      L7_2(L8_2)
      L7_2 = L0_1
      L7_2[L6_2] = nil
    end
  end
  if L2_2 then
    L3_2 = Photos
    L3_2 = L3_2.Scene
    L3_2 = L3_2.Ped
    L3_2 = L3_2.heading
    L4_2 = L2_2.rotatePed
    if L4_2 then
      L4_2 = L2_2.rotatePed
      L4_2 = L3_2 + L4_2
      L3_2 = L4_2 % 360
    end
    L4_2 = GetOffsetFromEntityInWorldCoords
    L5_2 = Photos
    L5_2 = L5_2.Scene
    L5_2 = L5_2.Greenscreen
    L5_2 = L5_2.obj
    L6_2 = L2_2.offset
    L6_2 = L6_2.x
    L7_2 = L2_2.offset
    L7_2 = L7_2.y
    L8_2 = L2_2.offset
    L8_2 = L8_2.z
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
    L5_2 = SetCamCoord
    L6_2 = Photos
    L6_2 = L6_2.Scene
    L6_2 = L6_2.Cam
    L7_2 = L4_2.x
    L8_2 = L4_2.y
    L9_2 = L4_2.z
    L5_2(L6_2, L7_2, L8_2, L9_2)
    L5_2 = RenderScriptCams
    L6_2 = true
    L7_2 = false
    L8_2 = 0
    L9_2 = true
    L10_2 = false
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    L5_2 = GetEntityModel
    L6_2 = Photos
    L6_2 = L6_2.Scene
    L6_2 = L6_2.Ped
    L6_2 = L6_2.obj
    L5_2 = L5_2(L6_2)
    L6_2 = GetEntityCoords
    L7_2 = Photos
    L7_2 = L7_2.Scene
    L7_2 = L7_2.Ped
    L7_2 = L7_2.obj
    L6_2 = L6_2(L7_2)
    L7_2 = vec3
    L8_2 = 0.0
    L9_2 = 0.0
    L10_2 = 1.0
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L6_2 = L6_2 - L7_2
    L8_2 = A0_2.component
    L7_2 = L1_1
    L7_2 = L7_2[L8_2]
    if L7_2 then
      L7_2 = A0_2.component
      if "head_1" == L7_2 then
        L7_2 = Skin
        L7_2 = L7_2.TransfromSkinTone
        L8_2 = A0_2.drawable
        L9_2 = 45
        L7_2 = L7_2(L8_2, L9_2)
        L8_2 = SetPedHeadBlendData
        L9_2 = Photos
        L9_2 = L9_2.Scene
        L9_2 = L9_2.Ped
        L9_2 = L9_2.obj
        L10_2 = A0_2.drawable
        L11_2 = A0_2.drawable
        L12_2 = 0
        L13_2 = L7_2
        L14_2 = L7_2
        L15_2 = 0
        if 1885233650 == L5_2 then
          L16_2 = 0.0
          if L16_2 then
            goto lbl_115
          end
        end
        L16_2 = 1.0
        ::lbl_115::
        if 1885233650 == L5_2 then
          L17_2 = 0.0
          if L17_2 then
            goto lbl_121
          end
        end
        L17_2 = 1.0
        ::lbl_121::
        L18_2 = 0.5
        L19_2 = true
        L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
      else
        L7_2 = SetPedHeadBlendData
        L8_2 = Photos
        L8_2 = L8_2.Scene
        L8_2 = L8_2.Ped
        L8_2 = L8_2.obj
        L9_2 = 44
        L10_2 = 22
        L11_2 = 0
        L12_2 = 44
        L13_2 = 22
        L14_2 = 0
        if 1885233650 == L5_2 then
          L15_2 = 0.0
          if L15_2 then
            goto lbl_142
          end
        end
        L15_2 = 1.0
        ::lbl_142::
        if 1885233650 == L5_2 then
          L16_2 = 0.0
          if L16_2 then
            goto lbl_148
          end
        end
        L16_2 = 1.0
        ::lbl_148::
        L17_2 = 0.5
        L18_2 = true
        L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
      end
      L7_2 = SetPedHairColor
      L8_2 = Photos
      L8_2 = L8_2.Scene
      L8_2 = L8_2.Ped
      L8_2 = L8_2.obj
      L9_2 = 2
      L10_2 = 2
      L7_2(L8_2, L9_2, L10_2)
    else
      L7_2 = DeleteEntity
      L8_2 = Photos
      L8_2 = L8_2.Scene
      L8_2 = L8_2.Ped
      L8_2 = L8_2.obj
      L7_2(L8_2)
      L7_2 = Photos
      L7_2 = L7_2.Scene
      L7_2 = L7_2.Ped
      L8_2 = CreatePed
      L9_2 = 0
      L10_2 = L5_2
      L11_2 = L6_2.x
      L12_2 = L6_2.y
      L13_2 = L6_2.z
      L14_2 = L3_2
      L15_2 = false
      L16_2 = true
      L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
      L7_2.obj = L8_2
      L7_2 = SetPedDefaultComponentVariation
      L8_2 = Photos
      L8_2 = L8_2.Scene
      L8_2 = L8_2.Ped
      L8_2 = L8_2.obj
      L7_2(L8_2)
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = L0_1
      L9_2 = Photos
      L9_2 = L9_2.Scene
      L9_2 = L9_2.Ped
      L9_2 = L9_2.obj
      L7_2(L8_2, L9_2)
      L7_2 = FreezeEntityPosition
      L8_2 = Photos
      L8_2 = L8_2.Scene
      L8_2 = L8_2.Ped
      L8_2 = L8_2.obj
      L9_2 = true
      L7_2(L8_2, L9_2)
      L7_2 = SetPedComponentVariation
      L8_2 = Photos
      L8_2 = L8_2.Scene
      L8_2 = L8_2.Ped
      L8_2 = L8_2.obj
      L9_2 = 0
      L10_2 = -1
      L11_2 = -1
      L12_2 = -1
      L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
    end
    L7_2 = SetEntityHeading
    L8_2 = Photos
    L8_2 = L8_2.Scene
    L8_2 = L8_2.Ped
    L8_2 = L8_2.obj
    L9_2 = L3_2
    L7_2(L8_2, L9_2)
    L7_2 = pairs
    L8_2 = Photos
    L8_2 = L8_2.Components
    L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
    for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
      L13_2 = L12_2.type
      if "component" == L13_2 then
        L13_2 = {}
        L13_2[0] = -1
        L13_2[1] = 0
        L13_2[2] = -1
        L13_2[3] = -1
        L13_2[4] = -1
        L13_2[5] = 0
        L13_2[6] = -1
        L13_2[7] = 0
        L13_2[8] = -1
        L13_2[9] = 0
        L13_2[10] = -1
        L13_2[11] = -1
        L14_2 = SetPedComponentVariation
        L15_2 = Photos
        L15_2 = L15_2.Scene
        L15_2 = L15_2.Ped
        L15_2 = L15_2.obj
        L16_2 = L12_2.id
        L17_2 = L12_2.id
        L17_2 = L13_2[L17_2]
        L18_2 = 0
        L19_2 = 0
        L14_2(L15_2, L16_2, L17_2, L18_2, L19_2)
      else
        L13_2 = L12_2.type
        if "prop" == L13_2 then
          L13_2 = ClearPedProp
          L14_2 = Photos
          L14_2 = L14_2.Scene
          L14_2 = L14_2.Ped
          L14_2 = L14_2.obj
          L15_2 = L12_2.id
          L13_2(L14_2, L15_2)
        end
      end
    end
    L7_2 = Skin
    L7_2 = L7_2.InputsToShift
    L8_2 = A0_2.component
    L7_2 = L7_2[L8_2]
    if L7_2 then
      L7_2 = A0_2.drawable
      L7_2 = L7_2 - 1
      A0_2.drawable = L7_2
    end
    L7_2 = L2_2.type
    if "component" == L7_2 then
      L7_2 = 0
      L8_2 = SetPedPreloadVariationData
      L9_2 = Photos
      L9_2 = L9_2.Scene
      L9_2 = L9_2.Ped
      L9_2 = L9_2.obj
      L10_2 = L2_2.id
      L11_2 = A0_2.drawable
      L12_2 = L7_2
      L8_2(L9_2, L10_2, L11_2, L12_2)
      while true do
        L8_2 = HasPedPreloadVariationDataFinished
        L9_2 = Photos
        L9_2 = L9_2.Scene
        L9_2 = L9_2.Ped
        L9_2 = L9_2.obj
        L8_2 = L8_2(L9_2)
        if L8_2 then
          break
        end
        L8_2 = Wait
        L9_2 = 0
        L8_2(L9_2)
      end
      L8_2 = SetPedComponentVariation
      L9_2 = Photos
      L9_2 = L9_2.Scene
      L9_2 = L9_2.Ped
      L9_2 = L9_2.obj
      L10_2 = L2_2.id
      L11_2 = A0_2.drawable
      L12_2 = L7_2
      L13_2 = 0
      L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
    else
      L7_2 = L2_2.type
      if "prop" == L7_2 then
        L7_2 = SetPedPreloadPropData
        L8_2 = Photos
        L8_2 = L8_2.Scene
        L8_2 = L8_2.Ped
        L8_2 = L8_2.obj
        L9_2 = L2_2.id
        L10_2 = A0_2.drawable
        L11_2 = 0
        L7_2(L8_2, L9_2, L10_2, L11_2)
        while true do
          L7_2 = HasPedPreloadPropDataFinished
          L8_2 = Photos
          L8_2 = L8_2.Scene
          L8_2 = L8_2.Ped
          L8_2 = L8_2.obj
          L7_2 = L7_2(L8_2)
          if L7_2 then
            break
          end
          L7_2 = Wait
          L8_2 = 0
          L7_2(L8_2)
        end
        L7_2 = SetPedPropIndex
        L8_2 = Photos
        L8_2 = L8_2.Scene
        L8_2 = L8_2.Ped
        L8_2 = L8_2.obj
        L9_2 = L2_2.id
        L10_2 = A0_2.drawable
        L11_2 = 0
        L12_2 = false
        L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
      end
    end
  end
  L3_2 = Wait
  L4_2 = Config
  L4_2 = L4_2.TimePerPhoto
  if not L4_2 then
    L4_2 = 100
  end
  L3_2(L4_2)
  L3_2 = A1_2
  L4_2 = {}
  L3_2(L4_2)
end
L2_1(L3_1, L4_1)
L2_1 = exports
L3_1 = "OpenClothesPhotos"
L4_1 = Photos
L4_1 = L4_1.Enter
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "17mov_CharacterSystem:OpenClothesPhotos"
L4_1 = Photos
L4_1 = L4_1.Enter
L2_1(L3_1, L4_1)
