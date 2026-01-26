local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = 5.0
L1_1 = nil
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = {}
  L2_2 = Framework
  L2_2 = L2_2.Client
  L2_2 = L2_2.GetPlayerJob
  L2_2 = L2_2()
  if not L2_2 then
    L3_2 = {}
    return L3_2
  end
  L3_2 = debugPrint
  L4_2 = "Player Job"
  L5_2 = "debug"
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = pairs
  L4_2 = Config
  L4_2 = L4_2.ImpoundLocations
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.job
    if not L9_2 then
      L9_2 = print
      L10_2 = "^1[WARNING] Heads up, %s does not have a job tied to it in the config"
      L11_2 = L10_2
      L10_2 = L10_2.format
      L12_2 = L7_2
      L10_2, L11_2, L12_2 = L10_2(L11_2, L12_2)
      L9_2(L10_2, L11_2, L12_2)
    end
    L9_2 = L8_2.job
    if L9_2 then
      L9_2 = isItemInList
      L10_2 = L8_2.job
      L11_2 = L2_2.name
      L9_2 = L9_2(L10_2, L11_2)
      if L9_2 then
        L9_2 = L8_2.type
        if A0_2 == L9_2 then
          L9_2 = #L1_2
          L9_2 = L9_2 + 1
          L1_2[L9_2] = L7_2
        end
      end
    end
  end
  return L1_2
end
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = Framework
  L0_2 = L0_2.Client
  L0_2 = L0_2.IsPlayerDead
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = Framework
    L0_2 = L0_2.Client
    L0_2 = L0_2.Notify
    L1_2 = Locale
    L1_2 = L1_2.playerIsDead
    L2_2 = "error"
    L0_2(L1_2, L2_2)
    L0_2 = false
    return L0_2
  end
  L0_2 = GetEntityCoords
  L1_2 = cache
  L1_2 = L1_2.ped
  L0_2 = L0_2(L1_2)
  L1_2 = lib
  L1_2 = L1_2.getClosestVehicle
  L2_2 = L0_2
  L3_2 = L0_1
  L4_2 = true
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L1_1 = L1_2
  L1_2 = L1_1
  if L1_2 then
    L1_2 = L1_1
    if 0 ~= L1_2 then
      goto lbl_42
    end
  end
  L1_2 = Framework
  L1_2 = L1_2.Client
  L1_2 = L1_2.Notify
  L2_2 = Locale
  L2_2 = L2_2.moveCloserToVehicleError
  L3_2 = "error"
  L1_2(L2_2, L3_2)
  L1_2 = false
  do return L1_2 end
  ::lbl_42::
  L1_2 = getVehicleType
  L2_2 = GetEntityModel
  L3_2 = L1_1
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L2_2 = L2_1
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = #L2_2
    if 0 ~= L3_2 then
      goto lbl_64
    end
  end
  L3_2 = Framework
  L3_2 = L3_2.Client
  L3_2 = L3_2.Notify
  L4_2 = Locale
  L4_2 = L4_2.actionNotAllowedError
  L5_2 = "error"
  L3_2(L4_2, L5_2)
  L3_2 = false
  do return L3_2 end
  ::lbl_64::
  L3_2 = Framework
  L3_2 = L3_2.Client
  L3_2 = L3_2.GetPlate
  L4_2 = L1_1
  L3_2 = L3_2(L4_2)
  L4_2 = GetEntityArchetypeName
  L5_2 = L1_1
  L4_2 = L4_2(L5_2)
  L5_2 = lib
  L5_2 = L5_2.callback
  L5_2 = L5_2.await
  L6_2 = "jg-advancedgarages:server:get-vehicle"
  L7_2 = false
  L8_2 = L4_2
  L9_2 = L3_2
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  if not L5_2 then
    L6_2 = deleteVehicle
    L7_2 = L1_1
    L6_2(L7_2)
    L6_2 = Framework
    L6_2 = L6_2.Client
    L6_2 = L6_2.Notify
    L7_2 = Locale
    L7_2 = L7_2.vehicleImpoundSuccess
    L8_2 = " (NPC)"
    L7_2 = L7_2 .. L8_2
    L8_2 = "success"
    L6_2(L7_2, L8_2)
    L6_2 = true
    return L6_2
  end
  L6_2 = SetNuiFocus
  L7_2 = true
  L8_2 = true
  L6_2(L7_2, L8_2)
  L6_2 = SetNuiFocusKeepInput
  L7_2 = false
  L6_2(L7_2)
  L6_2 = SendNUIMessage
  L7_2 = {}
  L7_2.type = "show-impound-form"
  L7_2.impoundLocations = L2_2
  L7_2.plate = L3_2
  L8_2 = Config
  L7_2.config = L8_2
  L8_2 = Locale
  L7_2.locale = L8_2
  L6_2(L7_2)
end
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L1_2 = L1_1
  if L1_2 then
    L1_2 = DoesEntityExist
    L2_2 = L1_1
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_11
    end
  end
  L1_2 = false
  do return L1_2 end
  ::lbl_11::
  L1_2 = Framework
  L1_2 = L1_2.Client
  L1_2 = L1_2.GetPlate
  L2_2 = L1_1
  L1_2 = L1_2(L2_2)
  L2_2 = Framework
  L2_2 = L2_2.Client
  L2_2 = L2_2.GetVehicleProperties
  L3_2 = L1_1
  L2_2 = L2_2(L3_2)
  L3_2 = Framework
  L3_2 = L3_2.Client
  L3_2 = L3_2.VehicleGetFuel
  L4_2 = L1_1
  L3_2 = L3_2(L4_2)
  L4_2 = getVehicleDamage
  L5_2 = L1_1
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  L7_2 = lib
  L7_2 = L7_2.callback
  L7_2 = L7_2.await
  L8_2 = "jg-advancedgarages:server:impound-vehicle"
  L9_2 = false
  L10_2 = A0_2
  L11_2 = VehToNet
  L12_2 = L1_1
  L11_2 = L11_2(L12_2)
  L12_2 = L1_2
  L13_2 = L2_2
  L14_2 = L3_2
  L15_2 = L4_2
  L16_2 = L5_2
  L17_2 = L6_2
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  if not L7_2 then
    L8_2 = false
    return L8_2
  end
  L8_2 = TriggerEvent
  L9_2 = "jg-advancedgarages:client:ImpoundVehicle:config"
  L10_2 = L1_1
  L8_2(L9_2, L10_2)
  L8_2 = true
  return L8_2
end
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L3_2 = lib
  L3_2 = L3_2.callback
  L3_2 = L3_2.await
  L4_2 = "jg-advancedgarages:server:impound-remove-vehicle"
  L5_2 = false
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A2_2
  L9_2 = true
  L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  if L4_2 then
    L8_2 = NetToVeh
    L9_2 = L4_2
    L8_2 = L8_2(L9_2)
    if L8_2 then
      goto lbl_19
    end
  end
  L8_2 = false
  ::lbl_19::
  if not L3_2 then
    L9_2 = false
    return L9_2
  end
  L9_2 = Config
  L9_2 = L9_2.SpawnVehiclesWithServerSetter
  if L9_2 and not L8_2 then
    L9_2 = print
    L10_2 = "^1There was a problem spawning in your vehicle"
    L9_2(L10_2)
    L9_2 = false
    return L9_2
  end
  if not L8_2 then
    L9_2 = Config
    L9_2 = L9_2.SpawnVehiclesWithServerSetter
    if not L9_2 then
      L9_2 = Config
      L9_2 = L9_2.DoNotSpawnInsideVehicle
      L9_2 = not L9_2
      L10_2 = spawnVehicleClient
      L11_2 = L5_2
      if L11_2 then
        L11_2 = L11_2.id
      end
      if not L11_2 then
        L11_2 = 0
      end
      L12_2 = L5_2.model
      L13_2 = A2_2
      L14_2 = L7_2
      L15_2 = L9_2
      L16_2 = L6_2
      L17_2 = "personal"
      L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
      L8_2 = L10_2
      if not L8_2 then
        L10_2 = print
        L11_2 = "^1There was a problem spawning in your vehicle"
        L10_2(L11_2)
        L10_2 = false
        return L10_2
      end
    end
  end
  if not L8_2 then
    L9_2 = debugPrint
    L10_2 = "Value of `vehicle` is false"
    L11_2 = "warning"
    L9_2(L10_2, L11_2)
    L9_2 = false
    return L9_2
  end
  L9_2 = lib
  L9_2 = L9_2.callback
  L9_2 = L9_2.await
  L10_2 = "jg-advancedgarages:server:impound-vehicle-driven-out"
  L11_2 = false
  L12_2 = A2_2
  L13_2 = VehToNet
  L14_2 = L8_2
  L13_2, L14_2, L15_2, L16_2, L17_2 = L13_2(L14_2)
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L9_2 = true
  return L9_2
end
L6_1 = RegisterNUICallback
L7_1 = "impound-vehicle"
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L4_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L3_2 = A1_2
    L4_2 = {}
    L4_2.error = true
    return L3_2(L4_2)
  end
  L3_2 = A1_2
  L4_2 = L2_2
  L3_2(L4_2)
end
L6_1(L7_1, L8_1)
L6_1 = RegisterNUICallback
L7_1 = "impound-return-vehicle"
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = lib
  L2_2 = L2_2.callback
  L2_2 = L2_2.await
  L3_2 = "jg-advancedgarages:server:impound-remove-vehicle"
  L4_2 = false
  L5_2 = A0_2.impoundId
  L6_2 = A0_2.originalGarageId
  L7_2 = A0_2.plate
  L8_2 = false
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  if not L2_2 then
    L3_2 = A1_2
    L4_2 = {}
    L4_2.error = true
    return L3_2(L4_2)
  end
  L3_2 = A1_2
  L4_2 = L2_2
  L3_2(L4_2)
end
L6_1(L7_1, L8_1)
L6_1 = RegisterNUICallback
L7_1 = "impound-drive-vehicle"
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L5_1
  L3_2 = A0_2.impoundId
  L4_2 = A0_2.originalGarageId
  L5_2 = A0_2.plate
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  if not L2_2 then
    L3_2 = A1_2
    L4_2 = {}
    L4_2.error = true
    return L3_2(L4_2)
  end
  L3_2 = A1_2
  L4_2 = L2_2
  L3_2(L4_2)
end
L6_1(L7_1, L8_1)
L6_1 = RegisterNetEvent
L7_1 = "jg-advancedgarages:client:show-impound-form"
L8_1 = L3_1
L6_1(L7_1, L8_1)
L6_1 = RegisterNetEvent
L7_1 = "jg-advancedgarages:client:ImpoundVehicle"
L8_1 = L3_1
L6_1(L7_1, L8_1)
