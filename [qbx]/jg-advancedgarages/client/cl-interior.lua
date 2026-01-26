local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1
L0_1 = 40.0
L1_1 = 3.0
L2_1 = {}
L3_1 = {}
L4_1 = false
L5_1 = {}
L6_1 = nil
L7_1 = false
L8_1 = nil
function L9_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = L2_1
  L0_2 = #L0_2
  if not L0_2 then
    return
  end
  L0_2 = ipairs
  L1_2 = L2_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = DestroyCam
    L7_2 = L5_2
    L8_2 = true
    L6_2(L7_2, L8_2)
  end
  L0_2 = RenderScriptCams
  L1_2 = false
  L2_2 = true
  L3_2 = 1000
  L4_2 = true
  L5_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
  L0_2 = false
  L7_1 = L0_2
end
function L10_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = Config
  L0_2 = L0_2.GarageInteriorCameraCutscene
  if not L0_2 then
    return
  end
  L0_2 = Config
  L0_2 = L0_2.GarageInteriorCameraCutscene
  L0_2 = L0_2[1]
  L1_2 = Config
  L1_2 = L1_2.GarageInteriorCameraCutscene
  L1_2 = L1_2[2]
  L2_2 = {}
  L3_2 = CreateCamWithParams
  L4_2 = "DEFAULT_SCRIPTED_CAMERA"
  L5_2 = L0_2.x
  L6_2 = L0_2.y
  L7_2 = L0_2.z
  L8_2 = 0.0
  L9_2 = 0.0
  L10_2 = L0_2.w
  L11_2 = L0_1
  L12_2 = true
  L13_2 = 2
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L4_2 = CreateCamWithParams
  L5_2 = "DEFAULT_SCRIPTED_CAMERA"
  L6_2 = L1_2.x
  L7_2 = L1_2.y
  L8_2 = L1_2.z
  L9_2 = 0.0
  L10_2 = 0.0
  L11_2 = L1_2.w
  L12_2 = L0_1
  L13_2 = true
  L14_2 = 2
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L2_2[3] = L5_2
  L2_2[4] = L6_2
  L2_2[5] = L7_2
  L2_2[6] = L8_2
  L2_2[7] = L9_2
  L2_2[8] = L10_2
  L2_2[9] = L11_2
  L2_2[10] = L12_2
  L2_2[11] = L13_2
  L2_2[12] = L14_2
  L2_1 = L2_2
  L2_2 = true
  L7_1 = L2_2
  L2_2 = SetCamActive
  L3_2 = L2_1
  L3_2 = L3_2[1]
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = RenderScriptCams
  L3_2 = true
  L4_2 = false
  L5_2 = 0
  L6_2 = true
  L7_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = SetCamActiveWithInterp
  L3_2 = L2_1
  L3_2 = L3_2[2]
  L4_2 = L2_1
  L4_2 = L4_2[1]
  L5_2 = 3000
  L6_2 = 0
  L7_2 = 0
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = Wait
  L3_2 = 3000
  L2_2(L3_2)
  L2_2 = L9_1
  L2_2()
end
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = false
  L4_1 = L1_2
  L1_2 = nil
  L8_1 = L1_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.type = "hide"
  L1_2(L2_2)
  L1_2 = DoScreenFadeOut
  L2_2 = 500
  L1_2(L2_2)
  L1_2 = Wait
  L2_2 = 500
  L1_2(L2_2)
  L1_2 = ipairs
  L2_2 = L3_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.vehicle
    if L7_2 then
      L7_2 = DeleteEntity
      L8_2 = L6_2.vehicle
      L7_2(L8_2)
      L7_2 = Framework
      L7_2 = L7_2.Client
      L7_2 = L7_2.VehicleRemoveKeys
      L8_2 = L6_2.plate
      L9_2 = L6_2.veh
      L10_2 = L8_1
      if not L10_2 then
        L10_2 = "personal"
      end
      L7_2(L8_2, L9_2, L10_2)
    end
  end
  L1_2 = ipairs
  L2_2 = L5_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.remove
    L7_2(L8_2)
  end
  L1_2 = Framework
  L1_2 = L1_2.Client
  L1_2 = L1_2.HideTextUI
  L1_2()
  L1_2 = L6_1
  if L1_2 then
    L1_2 = SetEntityCoords
    L2_2 = cache
    L2_2 = L2_2.ped
    L3_2 = L6_1.x
    L4_2 = L6_1.y
    L5_2 = L6_1.z
    L6_2 = false
    L7_2 = false
    L8_2 = false
    L9_2 = false
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    L1_2 = nil
    L6_1 = L1_2
  end
  L1_2 = lib
  L1_2 = L1_2.callback
  L1_2 = L1_2.await
  L2_2 = "jg-advancedgarages:server:exit-interior"
  L1_2(L2_2)
  if A0_2 then
    L1_2 = A0_2
    L1_2()
  end
  L1_2 = Wait
  L2_2 = 500
  L1_2(L2_2)
  L1_2 = DoScreenFadeIn
  L2_2 = 500
  L1_2(L2_2)
end
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = lib
  L1_2 = L1_2.points
  L1_2 = L1_2.new
  L2_2 = {}
  L3_2 = Config
  L3_2 = L3_2.GarageInteriorEntrance
  L2_2.coords = L3_2
  L3_2 = L1_1
  L2_2.distance = L3_2
  L1_2 = L1_2(L2_2)
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L1_3 = cache
    L1_3 = L1_3.vehicle
    if not L1_3 then
      L1_3 = Framework
      L1_3 = L1_3.Client
      L1_3 = L1_3.ShowTextUI
      L2_3 = Config
      L2_3 = L2_3.ExitInteriorPrompt
      L1_3(L2_3)
    else
      L1_3 = cache
      L1_3 = L1_3.vehicle
      L2_3 = GetEntityModel
      L3_3 = L1_3
      L2_3 = L2_3(L3_3)
      L3_3 = Framework
      L3_3 = L3_3.Client
      L3_3 = L3_3.GetPlate
      L4_3 = L1_3
      L3_3 = L3_3(L4_3)
      if not L2_3 or not L3_3 then
        return
      end
      L4_3 = CreateThread
      function L5_3()
        local L0_4, L1_4, L2_4
        while true do
          L0_4 = L1_3
          L1_4 = cache
          L1_4 = L1_4.vehicle
          if L0_4 ~= L1_4 then
            break
          end
          L0_4 = SetVehicleForwardSpeed
          L1_4 = L1_3
          L2_4 = 0
          L0_4(L1_4, L2_4)
          L0_4 = Wait
          L1_4 = 0
          L0_4(L1_4)
        end
      end
      L4_3(L5_3)
      L4_3 = nil
      L5_3 = ipairs
      L6_3 = L3_1
      L5_3, L6_3, L7_3, L8_3 = L5_3(L6_3)
      for L9_3, L10_3 in L5_3, L6_3, L7_3, L8_3 do
        L11_3 = L10_3.vehicle
        if L11_3 == L1_3 then
          L4_3 = L10_3.spawnerIndex
          break
        end
      end
      L5_3 = L11_1
      function L6_3()
        local L0_4, L1_4, L2_4, L3_4
        L0_4 = driveVehicleOut
        L1_4 = L3_3
        L2_4 = A0_2
        L3_4 = L4_3
        L0_4(L1_4, L2_4, L3_4)
      end
      L5_3(L6_3)
    end
  end
  L1_2.onEnter = L2_2
  function L2_2(A0_3)
    local L1_3
    L1_3 = Framework
    L1_3 = L1_3.Client
    L1_3 = L1_3.HideTextUI
    L1_3()
  end
  L1_2.onExit = L2_2
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L7_1
    if L1_3 then
      L1_3 = IsControlJustPressed
      L2_3 = 0
      L3_3 = Config
      L3_3 = L3_3.ExitInteriorKeyBind
      L1_3 = L1_3(L2_3, L3_3)
      if L1_3 then
        L1_3 = L9_1
        L1_3()
      end
    end
    L1_3 = cache
    L1_3 = L1_3.vehicle
    if not L1_3 then
      L1_3 = IsControlJustPressed
      L2_3 = 0
      L3_3 = Config
      L3_3 = L3_3.ExitInteriorKeyBind
      L1_3 = L1_3(L2_3, L3_3)
      if L1_3 then
        L1_3 = L7_1
        if not L1_3 then
          L1_3 = L11_1
          L1_3()
        end
      end
    end
  end
  L1_2.nearby = L2_2
  L2_2 = L5_1
  L2_2 = #L2_2
  L3_2 = L2_2 + 1
  L2_2 = L5_1
  L2_2[L3_2] = L1_2
  L2_2 = lib
  L2_2 = L2_2.points
  L2_2 = L2_2.new
  L3_2 = {}
  L4_2 = Config
  L4_2 = L4_2.GarageInteriorEntrance
  L3_2.coords = L4_2
  L3_2.distance = 20.0
  L2_2 = L2_2(L3_2)
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = drawMarkerOnFrame
    L2_3 = Config
    L2_3 = L2_3.GarageInteriorEntrance
    L3_3 = {}
    L3_3.id = 21
    L4_3 = {}
    L4_3.x = 0.3
    L4_3.y = 0.3
    L4_3.z = 0.3
    L3_3.size = L4_3
    L4_3 = {}
    L4_3.r = 255
    L4_3.g = 255
    L4_3.b = 255
    L4_3.a = 120
    L3_3.color = L4_3
    L3_3.bobUpAndDown = 0
    L3_3.faceCamera = 0
    L3_3.rotate = 1
    L3_3.drawOnEnts = 0
    L1_3(L2_3, L3_3)
  end
  L2_2.nearby = L3_2
  L3_2 = L5_1
  L3_2 = #L3_2
  L4_2 = L3_2 + 1
  L3_2 = L5_1
  L3_2[L4_2] = L2_2
end
function L13_1()
  local L0_2, L1_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    while true do
      L0_3 = L4_1
      if not L0_3 then
        break
      end
      L0_3 = 500
      L1_3 = GetVehiclePedIsTryingToEnter
      L2_3 = cache
      L2_3 = L2_3.ped
      L1_3 = L1_3(L2_3)
      if 0 ~= L1_3 then
        L0_3 = 0
        L2_3 = SetVehicleEngineOn
        L3_3 = L1_3
        L4_3 = true
        L5_3 = true
        L6_3 = true
        L2_3(L3_3, L4_3, L5_3, L6_3)
        L2_3 = SetVehicleNeedsToBeHotwired
        L3_3 = L1_3
        L4_3 = false
        L2_3(L3_3, L4_3)
        L2_3 = SetVehicleDoorsLocked
        L3_3 = L1_3
        L4_3 = 1
        L2_3(L3_3, L4_3)
        L2_3 = EnableControlAction
        L3_3 = 0
        L4_3 = 23
        L5_3 = true
        L2_3(L3_3, L4_3, L5_3)
      end
      L2_3 = Wait
      L3_3 = L0_3
      L2_3(L3_3)
    end
  end
  L0_2(L1_2)
end
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = true
  L4_1 = L2_2
  L2_2 = getAvailableGarageLocations
  L2_2 = L2_2()
  if L2_2 then
    L2_2 = L2_2[A0_2]
  end
  if not L2_2 then
    L3_2 = {}
    L3_2.garageType = "personal"
    L4_2 = Config
    L4_2 = L4_2.GarageUniqueLocations
    L3_2.checkVehicleGarageId = L4_2
    L4_2 = Config
    L4_2 = L4_2.PrivGarageEnableInteriors
    L3_2.enableInteriors = L4_2
    L2_2 = L3_2
  end
  L3_2 = L2_2.garageType
  L8_1 = L3_2
  L3_2 = {}
  L4_2 = ipairs
  L5_2 = A1_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = IsModelInCdimage
    L11_2 = L9_2.hash
    L10_2 = L10_2(L11_2)
    if L10_2 then
      L10_2 = L2_2.checkVehicleGarageId
      if L10_2 then
        L10_2 = L9_2.garageId
        if L10_2 ~= A0_2 then
          goto lbl_52
        end
      end
      L10_2 = L9_2.impound
      if not L10_2 then
        L10_2 = L9_2.inGarage
        if L10_2 then
          L10_2 = L9_2.isSpawned
          if not L10_2 then
            L10_2 = #L3_2
            L10_2 = L10_2 + 1
            L3_2[L10_2] = L9_2
          end
        end
      end
    end
    ::lbl_52::
  end
  L4_2 = #L3_2
  if 0 == L4_2 then
    L4_2 = Framework
    L4_2 = L4_2.Client
    L4_2 = L4_2.Notify
    L5_2 = Locale
    L5_2 = L5_2.noVehiclesAvailableToDrive
    L6_2 = "error"
    L4_2(L5_2, L6_2)
    L4_2 = L11_1
    L4_2()
    return
  end
  L4_2 = CreateThread
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L0_3 = DoScreenFadeOut
    L1_3 = 500
    L0_3(L1_3)
    L0_3 = Wait
    L1_3 = 500
    L0_3(L1_3)
    L0_3 = ipairs
    L1_3 = Config
    L1_3 = L1_3.GarageInteriorVehiclePositions
    L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
    for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
      L6_3 = L3_2
      L6_3 = L6_3[L4_3]
      if not L6_3 then
        break
      end
      L7_3 = createClientVehicle
      L8_3 = L6_3.hash
      L9_3 = L5_3
      L10_3 = L6_3.plate
      L11_3 = false
      L7_3 = L7_3(L8_3, L9_3, L10_3, L11_3)
      L8_3 = L6_3.props
      if L8_3 then
        L8_3 = type
        L9_3 = L6_3.props
        L8_3 = L8_3(L9_3)
        if "table" == L8_3 then
          L8_3 = Framework
          L8_3 = L8_3.Client
          L8_3 = L8_3.SetVehicleProperties
          L9_3 = L7_3
          L10_3 = L6_3.props
          L8_3(L9_3, L10_3)
        end
      end
      L8_3 = L3_1
      L8_3 = #L8_3
      L9_3 = L8_3 + 1
      L8_3 = L3_1
      L10_3 = {}
      L10_3.vehicle = L7_3
      L11_3 = L6_3.spawnerIndex
      L10_3.spawnerIndex = L11_3
      L11_3 = L6_3.plate
      L10_3.plate = L11_3
      L8_3[L9_3] = L10_3
    end
    L0_3 = GetEntityCoords
    L1_3 = cache
    L1_3 = L1_3.ped
    L0_3 = L0_3(L1_3)
    L6_1 = L0_3
    L0_3 = SetEntityCoords
    L1_3 = cache
    L1_3 = L1_3.ped
    L2_3 = Config
    L2_3 = L2_3.GarageInteriorEntrance
    L2_3 = L2_3.x
    L3_3 = Config
    L3_3 = L3_3.GarageInteriorEntrance
    L3_3 = L3_3.y
    L4_3 = Config
    L4_3 = L4_3.GarageInteriorEntrance
    L4_3 = L4_3.z
    L5_3 = false
    L6_3 = false
    L7_3 = false
    L8_3 = false
    L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
    L0_3 = SetEntityHeading
    L1_3 = cache
    L1_3 = L1_3.ped
    L2_3 = Config
    L2_3 = L2_3.GarageInteriorEntrance
    L2_3 = L2_3.w
    L0_3(L1_3, L2_3)
    L0_3 = L12_1
    L1_3 = A0_2
    L0_3(L1_3)
    L0_3 = DoScreenFadeIn
    L1_3 = 500
    L0_3(L1_3)
    L0_3 = L10_1
    L0_3()
    L0_3 = L13_1
    L0_3()
  end
  L4_2(L5_2)
end
L15_1 = lib
L15_1 = L15_1.onCache
L16_1 = "vehicle"
function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L4_1
  if not L1_2 then
    return
  end
  if not A0_2 or 0 == A0_2 then
    L1_2 = SendNUIMessage
    L2_2 = {}
    L2_2.type = "hide"
    L1_2(L2_2)
  end
  L1_2 = Framework
  L1_2 = L1_2.Client
  L1_2 = L1_2.GetPlate
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = GetEntityArchetypeName
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = lib
  L3_2 = L3_2.callback
  L3_2 = L3_2.await
  L4_2 = "jg-advancedgarages:server:get-vehicle"
  L5_2 = false
  L6_2 = L2_2
  L7_2 = L1_2
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  if not L3_2 then
    L4_2 = false
    return L4_2
  end
  L4_2 = type
  L5_2 = L3_2.model
  L4_2 = L4_2(L5_2)
  if "string" == L4_2 then
    L4_2 = L3_2.model
    if L4_2 then
      goto lbl_48
    end
  end
  L4_2 = getModelNameFromHash
  L5_2 = L3_2.hash
  L4_2 = L4_2(L5_2)
  ::lbl_48::
  L3_2.model = L4_2
  L4_2 = Framework
  L4_2 = L4_2.Client
  L4_2 = L4_2.GetVehicleLabel
  L5_2 = L3_2.model
  L4_2 = L4_2(L5_2)
  L3_2.vehicleLabel = L4_2
  L4_2 = SendNUIMessage
  L5_2 = {}
  L5_2.type = "show-interior-vehicle"
  L5_2.vehicle = L3_2
  L6_2 = Config
  L5_2.config = L6_2
  L6_2 = Locale
  L5_2.locale = L6_2
  L4_2(L5_2)
end
L15_1(L16_1, L17_1)
L15_1 = RegisterNetEvent
L16_1 = "jg-advancedgarages:client:enter-interior"
L17_1 = L14_1
L15_1(L16_1, L17_1)
