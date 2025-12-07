local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = nil
L1_1 = nil
L2_1 = nil
L3_1 = nil
L4_1 = nil
L5_1 = nil
L6_1 = 0
L7_1 = 0
function L8_1()
  local L0_2, L1_2
  L0_2 = DebugStart
  L1_2 = "DestroyPodium"
  L0_2(L1_2)
  L0_2 = L0_1
  if nil ~= L0_2 then
    L0_2 = DeleteEntity
    L1_2 = L0_1
    L0_2(L1_2)
    L0_2 = nil
    L0_1 = L0_2
  end
end
DestroyPodium = L8_1
function L8_1()
  local L0_2, L1_2
  L0_2 = DebugStart
  L1_2 = "DestroyPodiumCar"
  L0_2(L1_2)
  L0_2 = L1_1
  if nil ~= L0_2 then
    L0_2 = DeleteEntity
    L1_2 = L1_1
    L0_2(L1_2)
    L0_2 = nil
    L1_1 = L0_2
  end
  L0_2 = L2_1
  if nil ~= L0_2 then
    L0_2 = DeleteEntity
    L1_2 = L2_1
    L0_2(L1_2)
    L0_2 = nil
    L2_1 = L0_2
  end
end
DestroyPodiumCar = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = DebugStart
  L4_2 = "Podium_AnimatePrice"
  L3_2(L4_2)
  L3_2 = CreateThread
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L0_3 = DoScreenFadeOut
    L1_3 = 1000
    L0_3(L1_3)
    L0_3 = Wait
    L1_3 = 1000
    L0_3(L1_3)
    L0_3 = false
    L1_3 = GetEntityCoords
    L2_3 = L0_1
    L1_3 = L1_3(L2_3)
    L2_3 = GetObjectOffsetFromCoords
    L3_3 = L1_3
    L4_3 = PRICE_ANIM_HEADING
    L5_3 = 0.0
    L6_3 = -10.0
    L7_3 = 3.0
    L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
    L3_3 = GetObjectOffsetFromCoords
    L4_3 = L1_3
    L5_3 = PRICE_ANIM_HEADING
    L6_3 = 0.0
    L7_3 = -7.0
    L8_3 = 3.0
    L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
    L4_3 = vector3
    L5_3 = -8.743671
    L6_3 = 0.059426
    L7_3 = PRICE_ANIM_HEADING
    L7_3 = L7_3 + 180.0
    L4_3 = L4_3(L5_3, L6_3, L7_3)
    L5_3 = GAME_TIMER
    L5_3 = L5_3 + 4500
    L6_3 = CreateCamWithParams
    L7_3 = "DEFAULT_SCRIPTED_CAMERA"
    L8_3 = L2_3
    L9_3 = L4_3
    L10_3 = 50.0
    L11_3 = false
    L12_3 = 0
    L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
    L7_3 = SetCamActive
    L8_3 = L6_3
    L9_3 = true
    L7_3(L8_3, L9_3)
    L7_3 = RenderScriptCams
    L8_3 = true
    L9_3 = 3000
    L10_3 = 3000
    L11_3 = true
    L12_3 = false
    L7_3(L8_3, L9_3, L10_3, L11_3, L12_3)
    L7_3 = DoScreenFadeIn
    L8_3 = 500
    L7_3(L8_3)
    while true do
      L7_3 = GAME_TIMER
      if not (L5_3 > L7_3) then
        break
      end
      L7_3 = IN_CASINO
      if not L7_3 then
        break
      end
      L7_3 = LerpVector3
      L8_3 = L2_3
      L9_3 = L3_3
      L10_3 = 0.001
      L7_3 = L7_3(L8_3, L9_3, L10_3)
      L2_3 = L7_3
      L7_3 = SetCamCoord
      L8_3 = L6_3
      L9_3 = L2_3
      L7_3(L8_3, L9_3)
      if not L0_3 then
        L7_3 = GAME_TIMER
        L8_3 = L5_3 - 2500
        if L7_3 > L8_3 then
          L0_3 = true
          L7_3 = ShowFullscreenBonusNotify
          L8_3 = A0_2
          L9_3 = A1_2
          L10_3 = A2_2
          L7_3(L8_3, L9_3, L10_3)
        end
      end
      L7_3 = Wait
      L8_3 = 0
      L7_3(L8_3)
    end
    L7_3 = IN_CASINO
    if L7_3 then
      L7_3 = DoScreenFadeOut
      L8_3 = 1000
      L7_3(L8_3)
      L7_3 = Wait
      L8_3 = 1000
      L7_3(L8_3)
      L7_3 = DoScreenFadeIn
      L8_3 = 200
      L7_3(L8_3)
      L7_3 = DestroyCam
      L8_3 = L6_3
      L7_3(L8_3)
      L7_3 = RenderScriptCams
      L8_3 = false
      L9_3 = true
      L10_3 = 1
      L11_3 = true
      L12_3 = true
      L7_3(L8_3, L9_3, L10_3, L11_3, L12_3)
    else
      L7_3 = DestroyCam
      L8_3 = L6_3
      L7_3(L8_3)
      L7_3 = RenderScriptCams
      L8_3 = false
      L9_3 = true
      L10_3 = 1
      L11_3 = true
      L12_3 = true
      L7_3(L8_3, L9_3, L10_3, L11_3, L12_3)
    end
  end
  L3_2(L4_2)
end
Podium_AnimatePrice = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = DebugStart
  L2_2 = "AnimatePodium"
  L1_2(L2_2)
  L1_2 = DestroyPodium
  L1_2()
  L1_2 = DestroyPodiumCar
  L1_2()
  L1_2 = Citizen
  L1_2 = L1_2.CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3
    L0_3 = {}
    L1_3 = GetHashKey
    L2_3 = "vw_prop_vw_casino_podium_01a"
    L1_3 = L1_3(L2_3)
    L0_3[L1_3] = true
    L1_3 = GetHashKey
    L2_3 = "molo_casino_props_carpoduim"
    L1_3 = L1_3(L2_3)
    L0_3[L1_3] = true
    L1_3 = pairs
    L2_3 = GAME_POOL
    L2_3 = L2_3.CObject
    L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
    for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
      L7_3 = DoesEntityExist
      L8_3 = L6_3
      L7_3 = L7_3(L8_3)
      if L7_3 then
        L7_3 = GetEntityModel
        L8_3 = L6_3
        L7_3 = L7_3(L8_3)
        L8_3 = L0_3[L7_3]
        if L8_3 then
          L0_1 = L6_3
          L8_3 = GetEntityCoords
          L9_3 = L0_1
          L8_3 = L8_3(L9_3)
          L3_1 = L8_3
          L4_1 = L7_3
          break
        end
      end
    end
    L1_3 = L0_1
    if not L1_3 then
      L1_3 = RequestModelAndWait
      L2_3 = "vw_prop_vw_casino_podium_01a"
      L1_3(L2_3)
      L1_3 = CreateObject
      L2_3 = GetHashKey
      L3_3 = "vw_prop_vw_casino_podium_01a"
      L2_3 = L2_3(L3_3)
      L3_3 = PODIUMOBJECT_POS
      L4_3 = false
      L5_3 = false
      L6_3 = false
      L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
      L0_1 = L1_3
    end
    L1_3 = GetObjectOffsetFromCoords
    L2_3 = GetEntityCoords
    L3_3 = L0_1
    L2_3 = L2_3(L3_3)
    L3_3 = 0.0
    L4_3 = 0.0
    L5_3 = 0.0
    L6_3 = 1.5
    L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
    L2_3 = CreateTargetZone
    L3_3 = L1_3
    L4_3 = 5.0
    L5_3 = 5.0
    L6_3 = 0.0
    L7_3 = {}
    L8_3 = {}
    L8_3.num = 1
    L8_3.type = "client"
    L8_3.event = "Casino:Target"
    L8_3.icon = "fas fa-circle-info"
    L9_3 = Translation
    L9_3 = L9_3.Get
    L10_3 = "ABOUT"
    L9_3 = L9_3(L10_3)
    L8_3.label = L9_3
    L8_3.targeticon = "fas fa-car-side"
    function L9_3(A0_4, A1_4, A2_4)
      local L3_4
      L3_4 = CAN_INTERACT
      return L3_4
    end
    L8_3.canInteract = L9_3
    L9_3 = {}
    L10_3 = 255
    L11_3 = 255
    L12_3 = 255
    L13_3 = 255
    L9_3[1] = L10_3
    L9_3[2] = L11_3
    L9_3[3] = L12_3
    L9_3[4] = L13_3
    L8_3.drawColor = L9_3
    L9_3 = {}
    L10_3 = 30
    L11_3 = 144
    L12_3 = 255
    L13_3 = 255
    L9_3[1] = L10_3
    L9_3[2] = L11_3
    L9_3[3] = L12_3
    L9_3[4] = L13_3
    L8_3.successDrawColor = L9_3
    L8_3.eventAction = "podium_info"
    L7_3[1] = L8_3
    L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
    L2_3 = A0_2
    if L2_3 then
      L2_3 = A0_2
      if "" ~= L2_3 then
        L2_3 = A0_2.model
        if L2_3 then
          goto lbl_112
        end
      end
    end
    do return end
    ::lbl_112::
    L2_3 = RequestModelAndWait
    L3_3 = A0_2.model
    L2_3(L3_3)
    L2_3 = CreateVehicle
    L3_3 = A0_2.model
    L4_3 = GetEntityCoords
    L5_3 = L0_1
    L4_3 = L4_3(L5_3)
    L5_3 = 0
    L6_3 = false
    L7_3 = false
    L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
    L1_1 = L2_3
    L2_3 = SetVehicleProperties
    L3_3 = L1_1
    L4_3 = A0_2
    L2_3(L3_3, L4_3)
    L2_3 = SetVehicleFixed
    L3_3 = L1_1
    L2_3(L3_3)
    L2_3 = SetVehicleDoorsLocked
    L3_3 = L1_1
    L4_3 = 2
    L2_3(L3_3, L4_3)
    L2_3 = SetVehicleLights
    L3_3 = L1_1
    L4_3 = 2
    L2_3(L3_3, L4_3)
    L2_3 = Config
    L2_3 = L2_3.UseTarget
    if L2_3 then
      L2_3 = GetHashKey
      L3_3 = "prop_elecbox_05a"
      L2_3 = L2_3(L3_3)
      L3_3 = RequestModel
      L4_3 = L2_3
      L3_3(L4_3)
      L3_3 = Wait
      L4_3 = 1000
      L3_3(L4_3)
      L3_3 = HasModelLoaded
      L4_3 = L2_3
      L3_3 = L3_3(L4_3)
      if L3_3 then
        L3_3 = CreateObject
        L4_3 = L2_3
        L5_3 = GetEntityCoords
        L6_3 = L0_1
        L5_3 = L5_3(L6_3)
        L6_3 = false
        L7_3 = false
        L8_3 = false
        L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
        L2_1 = L3_3
        L3_3 = SetEntityAlpha
        L4_3 = L2_1
        L5_3 = 0
        L6_3 = false
        L3_3(L4_3, L5_3, L6_3)
        L3_3 = SetModelAsNoLongerNeeded
        L4_3 = L2_3
        L3_3(L4_3)
      end
    end
    L2_3 = SetModelsAsNoLongerNeeded
    L3_3 = {}
    L4_3 = "vw_prop_vw_casino_podium_01a"
    L5_3 = A0_2.model
    L3_3[1] = L4_3
    L3_3[2] = L5_3
    L2_3(L3_3)
    L2_3 = Config
    L2_3 = L2_3.MapType
    if 4 ~= L2_3 then
      L2_3 = Config
      L2_3 = L2_3.MapType
      if 12 ~= L2_3 then
        L2_3 = GetEntityHeightAboveGround
        L3_3 = L1_1
        L2_3 = L2_3(L3_3)
        L2_3 = L2_3 + 0.28
        L5_1 = L2_3
        L2_3 = AttachEntityToEntity
        L3_3 = L1_1
        L4_3 = L0_1
        L5_3 = 0.0
        L6_3 = 0
        L7_3 = 0.0
        L8_3 = L5_1
        L9_3 = 0
        L10_3 = 0
        L11_3 = 0
        L12_3 = 1
        L13_3 = 1
        L14_3 = 0
        L15_3 = 1
        L16_3 = 0
        L17_3 = 1
        L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
    end
    else
      L2_3 = FreezeEntityPosition
      L3_3 = L1_1
      L4_3 = true
      L2_3(L3_3, L4_3)
    end
    L2_3 = TriggerServerEvent
    L3_3 = "Casino:GetTime"
    L2_3(L3_3)
    L2_3 = 0
    L3_3 = 0
    L4_3 = GAME_TIMER
    while true do
      L5_3 = IN_CASINO
      if not L5_3 then
        break
      end
      L5_3 = L0_1
      if nil == L5_3 then
        break
      end
      L5_3 = L1_1
      if nil == L5_3 then
        break
      end
      L5_3 = DoesEntityExist
      L6_3 = L0_1
      L5_3 = L5_3(L6_3)
      if not L5_3 then
        L5_3 = L3_1
        if L5_3 then
          L5_3 = DetachEntity
          L6_3 = L1_1
          L5_3(L6_3)
          L5_3 = GetClosestObjectOfType
          L6_3 = L3_1.x
          L7_3 = L3_1.y
          L8_3 = L3_1.z
          L9_3 = 5.0
          L10_3 = L4_1
          L11_3 = false
          L12_3 = false
          L13_3 = false
          L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
          L0_1 = L5_3
          L5_3 = DoesEntityExist
          L6_3 = L0_1
          L5_3 = L5_3(L6_3)
          if L5_3 then
            L5_3 = Config
            L5_3 = L5_3.MapType
            if 4 ~= L5_3 then
              L5_3 = Config
              L5_3 = L5_3.MapType
              if 12 ~= L5_3 then
                L5_3 = AttachEntityToEntity
                L6_3 = L1_1
                L7_3 = L0_1
                L8_3 = 0.0
                L9_3 = 0
                L10_3 = 0.0
                L11_3 = L5_1
                L12_3 = 0
                L13_3 = 0
                L14_3 = 0
                L15_3 = 1
                L16_3 = 1
                L17_3 = 0
                L18_3 = 1
                L19_3 = 0
                L20_3 = 1
                L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3)
            end
            else
              L5_3 = FreezeEntityPosition
              L6_3 = L1_1
              L7_3 = true
              L5_3(L6_3, L7_3)
            end
          end
        end
        L5_3 = Wait
        L6_3 = 1000
        L5_3(L6_3)
      end
      L5_3 = ELECTRICITY_BROKEN
      if not L5_3 then
        L5_3 = GAME_TIMER
        L5_3 = L5_3 - L4_3
        L5_3 = L5_3 / 15
        L6_3 = GAME_TIMER
        L7_3 = L6_1
        L6_3 = L6_3 - L7_3
        L6_3 = L6_3 + L5_3
        L3_3 = L6_3 / 100
        L6_3 = Repeat
        L7_3 = L7_1
        L7_3 = L3_3 + L7_3
        L8_3 = 360
        L6_3 = L6_3(L7_3, L8_3)
        L2_3 = L6_3
        L6_3 = SetEntityRotation
        L7_3 = L0_1
        L8_3 = GetEntityPitch
        L9_3 = L0_1
        L8_3 = L8_3(L9_3)
        L9_3 = GetEntityRoll
        L10_3 = L0_1
        L9_3 = L9_3(L10_3)
        L10_3 = L2_3
        L11_3 = 3
        L12_3 = 1
        L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
        L6_3 = Config
        L6_3 = L6_3.MapType
        if 4 ~= L6_3 then
          L6_3 = Config
          L6_3 = L6_3.MapType
          if 12 ~= L6_3 then
            goto lbl_341
          end
        end
        L6_3 = SetEntityHeading
        L7_3 = L1_1
        L8_3 = L2_3
        L6_3(L7_3, L8_3)
        ::lbl_341::
        L4_3 = GAME_TIMER
      end
      L5_3 = Wait
      L6_3 = 33
      L5_3(L6_3)
    end
  end
  L1_2(L2_2)
end
AnimatePodium = L8_1
L8_1 = RegisterNetEvent
L9_1 = "Casino:GetTime"
L8_1(L9_1)
L8_1 = AddEventHandler
L9_1 = "Casino:GetTime"
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = Repeat
  L2_2 = A0_2 / 100
  L3_2 = 360
  L1_2 = L1_2(L2_2, L3_2)
  L7_1 = L1_2
  L1_2 = GAME_TIMER
  L6_1 = L1_2
end
L8_1(L9_1, L10_1)
