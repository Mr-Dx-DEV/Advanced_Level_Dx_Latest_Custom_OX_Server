local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = {}
L1_1 = 0
L2_1 = {}
SpawnedObjects = L2_1
L2_1 = Functions
L2_1.NuiLoaded = false
L2_1 = Functions
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.action = A0_2
  L3_2.payload = A1_2
  L2_2(L3_2)
end
L2_1.SendNuiMessage = L3_1
L2_1 = Functions
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  if not A0_2 then
    L1_2 = Functions
    L1_2 = L1_2.Debug
    L2_2 = "MODEL IS NIL"
    return L1_2(L2_2)
  end
  L1_2 = GetGameTimer
  L1_2 = L1_2()
  L2_2 = IsModelInCdimage
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = math
    L2_2 = L2_2.floor
    L3_2 = tonumber
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      L3_2 = 0
    end
    L2_2 = L2_2(L3_2)
    L3_2 = IsModelInCdimage
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      L3_2 = Functions
      L3_2 = L3_2.Debug
      L4_2 = "CAN'T LOAD BECAUSE MODEL DOESNT EXIST: "
      L5_2 = A0_2
      L4_2 = L4_2 .. L5_2
      L3_2(L4_2)
      return
    else
      A0_2 = L2_2
    end
  end
  L2_2 = HasModelLoaded
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    return
  end
  L2_2 = RequestModel
  L3_2 = A0_2
  L2_2(L3_2)
  while true do
    L2_2 = HasModelLoaded
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      break
    end
    L2_2 = RequestModel
    L3_2 = A0_2
    L2_2(L3_2)
    L2_2 = Wait
    L3_2 = 100
    L2_2(L3_2)
    L2_2 = GetGameTimer
    L2_2 = L2_2()
    L2_2 = L2_2 - L1_2
    L3_2 = 15000
    if L2_2 > L3_2 then
      L3_2 = Functions
      L3_2 = L3_2.Debug
      L4_2 = "Loading model "
      L5_2 = A0_2
      L6_2 = " is taking longer than 15 seconds."
      L4_2 = L4_2 .. L5_2 .. L6_2
      L3_2(L4_2)
    end
    L3_2 = 25000
    if L2_2 > L3_2 then
      L3_2 = Functions
      L3_2 = L3_2.Debug
      L4_2 = "Failed to load model "
      L5_2 = A0_2
      L6_2 = " after 25 seconds."
      L4_2 = L4_2 .. L5_2 .. L6_2
      L3_2(L4_2)
      break
    end
  end
end
L2_1.LoadModel = L3_1
L2_1 = Functions
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = HasAnimDictLoaded
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L1_2 = RequestAnimDict
  L2_2 = A0_2
  L1_2(L2_2)
  while true do
    L1_2 = HasAnimDictLoaded
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      break
    end
    L1_2 = Wait
    L2_2 = 0
    L1_2(L2_2)
  end
end
L2_1.RequestAnimDict = L3_1
L2_1 = Functions
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L5_2 = PlayerPedId
  L5_2 = L5_2()
  L6_2 = type
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  if "string" == L6_2 then
    L6_2 = GetHashKey
    L7_2 = A0_2
    L6_2 = L6_2(L7_2)
    A0_2 = L6_2 or A0_2
    if not L6_2 then
    end
  end
  L6_2 = IsModelInCdimage
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L6_2 = Functions
    L6_2 = L6_2.Error
    L7_2 = "CAN'T SPAWN OBJECT BECAUSE MODEL DOESNT EXIST: "
    L8_2 = A0_2
    L7_2 = L7_2 .. L8_2
    L6_2(L7_2)
    return
  end
  if A2_2 then
    L6_2 = type
    L7_2 = A2_2
    L6_2 = L6_2(L7_2)
    if "table" == L6_2 then
      L6_2 = vec3
      L7_2 = A2_2.x
      L8_2 = A2_2.y
      L9_2 = A2_2.z
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      A2_2 = L6_2 or A2_2
      if not L6_2 then
      end
    end
  else
    L6_2 = GetEntityCoords
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    A2_2 = L6_2
  end
  A3_2 = nil == A3_2 or A3_2
  A4_2 = true == A4_2 or A4_2
  L6_2 = Functions
  L6_2 = L6_2.LoadModel
  L7_2 = A0_2
  L6_2(L7_2)
  L6_2 = CreateObjectNoOffset
  L7_2 = A0_2
  L8_2 = A2_2.x
  L9_2 = A2_2.y
  L10_2 = A2_2.z
  L11_2 = A3_2
  L12_2 = true
  L13_2 = true
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L7_2 = type
  L8_2 = A2_2
  L7_2 = L7_2(L8_2)
  if "vector4" == L7_2 then
    L7_2 = SetEntityHeading
    L8_2 = L6_2
    L9_2 = A2_2.w
    L7_2(L8_2, L9_2)
  end
  L7_2 = table
  L7_2 = L7_2.insert
  L8_2 = SpawnedObjects
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L7_2 = FreezeEntityPosition
  L8_2 = L6_2
  L9_2 = A4_2
  L7_2(L8_2, L9_2)
  L7_2 = SetEntityLodDist
  L8_2 = L6_2
  L9_2 = 500
  L7_2(L8_2, L9_2)
  if A1_2 then
    L7_2 = A1_2
    L8_2 = L6_2
    L7_2(L8_2)
  end
  return L6_2
end
L2_1.SpawnObject = L3_1
L2_1 = Functions
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if nil == A0_2 then
    L1_2 = Functions
    L1_2 = L1_2.Error
    L2_2 = "ATTEMPTED TO DELETE A NIL OBJECT"
    return L1_2(L2_2)
  end
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "number" ~= L1_2 then
    L1_2 = Functions
    L1_2 = L1_2.Error
    L2_2 = "ATTEMPTED TO DELETE A "
    L3_2 = type
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    L4_2 = " TYPE: "
    L5_2 = A0_2
    L2_2 = L2_2 .. L3_2 .. L4_2 .. L5_2
    return L1_2(L2_2)
  end
  L1_2 = DetachEntity
  L2_2 = A0_2
  L3_2 = false
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = SetEntityAsMissionEntity
  L2_2 = A0_2
  L3_2 = false
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = DeleteObject
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = pairs
  L2_2 = SpawnedObjects
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    if L6_2 == A0_2 then
      L6_2 = nil
      return
    end
  end
end
L2_1.DeleteEntity = L3_1
L2_1 = Functions
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  if nil == A0_2 then
    return
  end
  L1_2 = AddTextEntry
  L2_2 = "HelpNotification"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = DisplayHelpTextThisFrame
  L2_2 = "HelpNotification"
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L2_1.ShowHelpNotification = L3_1
L2_1 = Functions
function L3_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = L1_1
  L2_2 = L2_2 + 1
  L1_1 = L2_2
  L2_2 = L1_1
  L3_2 = L0_1
  L4_2 = {}
  L3_2[A0_2] = L4_2
  L3_2 = L0_1
  L3_2 = L3_2[A0_2]
  L3_2[L2_2] = A1_2
  L3_2 = TriggerServerEvent
  L4_2 = "17mov_Callbacks:GetResponse"
  L5_2 = Functions
  L5_2 = L5_2.ResourceName
  L4_2 = L4_2 .. L5_2
  L5_2 = A0_2
  L6_2 = L2_2
  L7_2 = ...
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L2_1.TriggerServerCallback = L3_1
L2_1 = RegisterNetEvent
L3_1 = "17mov_Callbacks:receiveData"
L4_1 = Functions
L4_1 = L4_1.ResourceName
L3_1 = L3_1 .. L4_1
function L4_1(A0_2, A1_2, ...)
  local L2_2, L3_2
  L2_2 = L0_1
  L2_2 = L2_2[A0_2]
  if nil ~= L2_2 then
    L2_2 = L0_1
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2[A1_2]
    if nil ~= L2_2 then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  L2_2 = L0_1
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2[A1_2]
  L3_2 = ...
  L2_2(L3_2)
  L2_2 = L0_1
  L2_2 = L2_2[A0_2]
  if nil ~= L2_2 then
    L2_2 = L0_1
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2[A1_2]
    if nil ~= L2_2 then
      L2_2 = L0_1
      L2_2 = L2_2[A0_2]
      L2_2[A1_2] = nil
    end
  end
  L2_2 = L0_1
  L2_2 = L2_2[A0_2]
  if nil ~= L2_2 then
    L2_2 = L0_1
    L2_2 = L2_2[A0_2]
    L2_2 = #L2_2
    if 0 == L2_2 then
      L2_2 = L0_1
      L2_2[A0_2] = nil
    end
  end
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNUICallback
L3_1 = "NuiLoaded"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = Functions
  L2_2.NuiLoaded = true
  L2_2 = A1_2
  L3_2 = {}
  L2_2(L3_2)
end
L2_1(L3_1, L4_1)
L2_1 = AddEventHandler
L3_1 = "onResourceStop"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = Functions
  L1_2 = L1_2.ResourceName
  if L1_2 ~= A0_2 then
    return
  end
  L1_2 = pairs
  L2_2 = SpawnedObjects
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = type
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if "table" == L7_2 then
      L7_2 = pairs
      L8_2 = L6_2
      L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
      for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
        L13_2 = type
        L14_2 = L6_2
        L13_2 = L13_2(L14_2)
        if "number" == L13_2 then
          L13_2 = DeleteEntity
          L14_2 = L6_2
          L13_2(L14_2)
        end
      end
    else
      L7_2 = type
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      if "number" == L7_2 then
        L7_2 = DoesEntityExist
        L8_2 = L6_2
        L7_2 = L7_2(L8_2)
        if L7_2 then
          L7_2 = DeleteEntity
          L8_2 = L6_2
          L7_2(L8_2)
        end
      end
    end
  end
end
L2_1(L3_1, L4_1)
