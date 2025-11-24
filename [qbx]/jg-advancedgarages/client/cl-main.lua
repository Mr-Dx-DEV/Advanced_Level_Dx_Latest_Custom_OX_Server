local L0_1, L1_1, L2_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = GetResourceState
  L2_2 = "AdvancedParking"
  L1_2 = L1_2(L2_2)
  if "started" == L1_2 then
    L1_2 = exports
    L1_2 = L1_2.AdvancedParking
    L2_2 = L1_2
    L1_2 = L1_2.DeleteVehicle
    L3_2 = A0_2
    L4_2 = false
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = DeleteEntity
    L2_2 = A0_2
    L1_2(L2_2)
  end
end
deleteVehicle = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = GetDisplayNameFromVehicleModel
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = GetLabelText
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2
  L2_2 = L2_2.lower
  L2_2 = L2_2(L3_2)
  L3_2 = IsModelInCdimage
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L3_2 = L2_2 or L3_2
  if not L3_2 or not L2_2 then
    L4_2 = L1_2
    L3_2 = L1_2.lower
    L3_2 = L3_2(L4_2)
  end
  return L3_2
end
getModelNameFromHash = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = lib
  L1_2 = L1_2.requestModel
  L2_2 = Config
  L2_2 = L2_2.TargetPed
  L1_2(L2_2)
  L1_2 = CreatePed
  L2_2 = GetPedType
  L3_2 = joaat
  L4_2 = Config
  L4_2 = L4_2.TargetPed
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L3_2 = joaat
  L4_2 = Config
  L4_2 = L4_2.TargetPed
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2.x
  L5_2 = A0_2.y
  L6_2 = A0_2.z
  L7_2 = A0_2.w
  if not L7_2 then
    L7_2 = 0
  end
  L8_2 = false
  L9_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L2_2 = lib
  L2_2 = L2_2.waitFor
  function L3_2()
    local L0_3, L1_3
    L0_3 = DoesEntityExist
    L1_3 = L1_2
    L0_3 = L0_3(L1_3)
    if not L0_3 then
      L0_3 = nil
    end
    return L0_3
  end
  L2_2(L3_2)
  L2_2 = SetEntityInvincible
  L3_2 = L1_2
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = SetBlockingOfNonTemporaryEvents
  L3_2 = L1_2
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = SetPedFleeAttributes
  L3_2 = L1_2
  L4_2 = 0
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = SetPedCombatAttributes
  L3_2 = L1_2
  L4_2 = 17
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = FreezeEntityPosition
  L3_2 = L1_2
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = SetEntityCoordsNoOffset
  L3_2 = L1_2
  L4_2 = A0_2.x
  L5_2 = A0_2.y
  L6_2 = A0_2.z
  L7_2 = true
  L8_2 = true
  L9_2 = false
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L2_2 = SetPedCanRagdoll
  L3_2 = L1_2
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = SetEntityProofs
  L3_2 = L1_2
  L4_2 = true
  L5_2 = true
  L6_2 = true
  L7_2 = true
  L8_2 = true
  L9_2 = true
  L10_2 = true
  L11_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L2_2 = SetModelAsNoLongerNeeded
  L3_2 = Config
  L3_2 = L3_2.TargetPed
  L2_2(L3_2)
  return L1_2
end
createPedForTarget = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = convertModelToHash
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = GetVehicleClassFromName
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = "car"
  L4_2 = IsThisModelABoat
  L5_2 = L1_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L3_2 = "sea"
  else
    L4_2 = IsThisModelAHeli
    L5_2 = L1_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L3_2 = "air"
    else
      L4_2 = IsThisModelAPlane
      L5_2 = L1_2
      L4_2 = L4_2(L5_2)
      if L4_2 then
        L3_2 = "air"
      elseif 14 == L2_2 then
        L3_2 = "sea"
      elseif 16 == L2_2 then
        L3_2 = "air"
      end
    end
  end
  return L3_2
end
getVehicleType = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = {}
  L3_2 = ipairs
  L4_2 = A0_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = getVehicleType
    L10_2 = L8_2.hash
    L9_2 = L9_2(L10_2)
    if L9_2 == A1_2 then
      L9_2 = #L2_2
      L9_2 = L9_2 + 1
      L2_2[L9_2] = L8_2
    end
  end
  return L2_2
end
filterVehiclesByType = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  if not A0_2 or 0 == A0_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = 1000
  L2_2 = 1000
  L3_2 = nil
  L4_2 = Config
  L4_2 = L4_2.SaveVehicleDamage
  if L4_2 then
    L4_2 = math
    L4_2 = L4_2.ceil
    L5_2 = GetVehicleBodyHealth
    L6_2 = A0_2
    L5_2, L6_2 = L5_2(L6_2)
    L4_2 = L4_2(L5_2, L6_2)
    L1_2 = L4_2
    if L1_2 then
      L4_2 = type
      L5_2 = L1_2
      L4_2 = L4_2(L5_2)
      if not ("number" ~= L4_2 or L1_2 < 0) then
        goto lbl_31
      end
    end
    L1_2 = 0
    ::lbl_31::
    L4_2 = math
    L4_2 = L4_2.ceil
    L5_2 = GetVehicleEngineHealth
    L6_2 = A0_2
    L5_2, L6_2 = L5_2(L6_2)
    L4_2 = L4_2(L5_2, L6_2)
    L2_2 = L4_2
    if L2_2 then
      L4_2 = type
      L5_2 = L2_2
      L4_2 = L4_2(L5_2)
      if not ("number" ~= L4_2 or L2_2 < 0) then
        goto lbl_48
      end
    end
    L2_2 = 0
    ::lbl_48::
    L4_2 = Config
    L4_2 = L4_2.AdvancedVehicleDamage
    if L4_2 then
      L4_2 = getVehicleDeformation
      L5_2 = A0_2
      L4_2 = L4_2(L5_2)
      L3_2 = L4_2
    end
  end
  L4_2 = L1_2
  L5_2 = L2_2
  L6_2 = L3_2
  return L4_2, L5_2, L6_2
end
getVehicleDamage = L0_1
L0_1 = RegisterNUICallback
L1_1 = "close"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = SetNuiFocus
  L3_2 = false
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A1_2
  L3_2 = true
  L2_2(L3_2)
end
L0_1(L1_1, L2_1)
