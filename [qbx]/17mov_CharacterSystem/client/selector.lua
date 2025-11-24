local L0_1, L1_1, L2_1
L0_1 = Selector
L1_1 = {}
L0_1.ObjectsToClear = L1_1
L0_1 = Selector
L0_1.ActiveCharacter = nil
L0_1 = Selector
L1_1 = {}
L0_1.usedPositions = L1_1
L0_1 = Selector
function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = Selector
  L0_2 = L0_2.usedPositions
  L0_2 = #L0_2
  L1_2 = Selector
  L1_2 = L1_2.PedScenarios
  L1_2 = #L1_2
  if L0_2 == L1_2 then
    L0_2 = nil
    return L0_2
  end
  while true do
    L0_2 = Wait
    L1_2 = 0
    L0_2(L1_2)
    L0_2 = math
    L0_2 = L0_2.random
    L1_2 = 1
    L2_2 = Selector
    L2_2 = L2_2.PedScenarios
    L2_2 = #L2_2
    L0_2 = L0_2(L1_2, L2_2)
    L1_2 = Selector
    L1_2 = L1_2.usedPositions
    L1_2 = L1_2[L0_2]
    if not L1_2 then
      L1_2 = Selector
      L1_2 = L1_2.usedPositions
      L1_2[L0_2] = true
      return L0_2
    end
  end
end
L0_1.GenerateRandomScenarioIndex = L1_1
L0_1 = Selector
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = Selector
  L0_2.Active = true
  L0_2 = OnSelectorEnter
  L0_2()
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    while true do
      L0_3 = Selector
      L0_3 = L0_3.Active
      if not L0_3 then
        break
      end
      L0_3 = PlayerPedId
      L0_3 = L0_3()
      L1_3 = SetEntityCoords
      L2_3 = L0_3
      L3_3 = Selector
      L3_3 = L3_3.InteriorCoords
      L3_3 = L3_3.x
      L4_3 = Selector
      L4_3 = L4_3.InteriorCoords
      L4_3 = L4_3.y
      L5_3 = Selector
      L5_3 = L5_3.InteriorCoords
      L5_3 = L5_3.z
      L6_3 = false
      L7_3 = false
      L8_3 = false
      L9_3 = false
      L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
      L1_3 = FreezeEntityPosition
      L2_3 = L0_3
      L3_3 = true
      L1_3(L2_3, L3_3)
      L1_3 = SetEntityVisible
      L2_3 = L0_3
      L3_3 = false
      L4_3 = false
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = Wait
      L2_3 = 50
      L1_3(L2_3)
    end
    L0_3 = PlayerPedId
    L0_3 = L0_3()
    L1_3 = SetEntityVisible
    L2_3 = L0_3
    L3_3 = true
    L4_3 = false
    L1_3(L2_3, L3_3, L4_3)
    L1_3 = FreezeEntityPosition
    L2_3 = L0_3
    L3_3 = false
    L1_3(L2_3, L3_3)
  end
  L0_2(L1_2)
  L0_2 = GetInteriorAtCoords
  L1_2 = Selector
  L1_2 = L1_2.InteriorCoords
  L1_2 = L1_2.x
  L2_2 = Selector
  L2_2 = L2_2.InteriorCoords
  L2_2 = L2_2.y
  L3_2 = Selector
  L3_2 = L3_2.InteriorCoords
  L3_2 = L3_2.z
  L0_2 = L0_2(L1_2, L2_2, L3_2)
  L1_2 = GetGameTimer
  L1_2 = L1_2()
  while not L0_2 do
    L2_2 = GetGameTimer
    L2_2 = L2_2()
    L2_2 = L2_2 - L1_2
    L3_2 = 5000
    if L2_2 > L3_2 then
      L2_2 = Functions
      L2_2 = L2_2.Print
      L3_2 = "Cannot get interior at Selector.InteriorCoords. Make sure that you don't changed this value!"
      L2_2(L3_2)
      break
    end
    L2_2 = GetInteriorAtCoords
    L3_2 = Selector
    L3_2 = L3_2.InteriorCoords
    L3_2 = L3_2.x
    L4_2 = Selector
    L4_2 = L4_2.InteriorCoords
    L4_2 = L4_2.y
    L5_2 = Selector
    L5_2 = L5_2.InteriorCoords
    L5_2 = L5_2.z
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L0_2 = L2_2
    L2_2 = Wait
    L3_2 = 100
    L2_2(L3_2)
  end
  L2_2 = Selector
  L2_2 = L2_2.RefreshInterior
  if L2_2 then
    L2_2 = PinInteriorInMemory
    L3_2 = L0_2
    L2_2(L3_2)
    L2_2 = RefreshInterior
    L3_2 = L0_2
    L2_2(L3_2)
  end
  L2_2 = GetGameTimer
  L2_2 = L2_2()
  while L0_2 do
    L3_2 = IsInteriorReady
    L4_2 = L0_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      break
    end
    L3_2 = GetGameTimer
    L3_2 = L3_2()
    L3_2 = L3_2 - L2_2
    L4_2 = 10000
    if L3_2 > L4_2 then
      L3_2 = Functions
      L3_2 = L3_2.Print
      L4_2 = "Interior loading took more than 10 seconds. Please redownload your stream folder from keymaster."
      L3_2(L4_2)
      break
    end
    L3_2 = Selector
    L3_2 = L3_2.RefreshInterior
    if L3_2 then
      L3_2 = PinInteriorInMemory
      L4_2 = L0_2
      L3_2(L4_2)
    end
    L3_2 = Wait
    L4_2 = 100
    L3_2(L4_2)
  end
  L3_2 = promise
  L3_2 = L3_2.new
  L3_2 = L3_2()
  L4_2 = Selector
  L5_2 = {}
  L4_2.usedPositions = L5_2
  L4_2 = Functions
  L4_2 = L4_2.TriggerServerCallback
  L5_2 = "17mov_CharacterSystem:RequestCharacters"
  function L6_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3
    L1_3 = Selector
    L1_3.Characters = A0_3
    L1_3 = pairs
    L2_3 = A0_3
    L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
    for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
      L7_3 = L6_3.used
      if L7_3 then
        L7_3 = Selector
        L7_3 = L7_3.PedScenarios
        L8_3 = Selector
        L8_3 = L8_3.GenerateRandomScenarioIndex
        L8_3 = L8_3()
        L7_3 = L7_3[L8_3]
        L8_3 = L6_3.position
        if L8_3 then
          L8_3 = Selector
          L8_3 = L8_3.ZonesName
          L9_3 = GetNameOfZone
          L10_3 = L6_3.position
          L10_3 = L10_3.x
          L11_3 = L6_3.position
          L11_3 = L11_3.y
          L12_3 = L6_3.position
          L12_3 = L12_3.z
          L9_3 = L9_3(L10_3, L11_3, L12_3)
          L8_3 = L8_3[L9_3]
          L6_3.location = L8_3
        end
        if nil ~= L7_3 then
          L8_3 = IsModelInCdimage
          L9_3 = L6_3.skinData
          L9_3 = L9_3.model
          L8_3 = L8_3(L9_3)
          if not L8_3 then
            L8_3 = L6_3.skinData
            L9_3 = tonumber
            L10_3 = L6_3.skinData
            L10_3 = L10_3.model
            L9_3 = L9_3(L10_3)
            L8_3.model = L9_3
          end
          L8_3 = Functions
          L8_3 = L8_3.LoadModel
          L9_3 = L6_3.skinData
          L9_3 = L9_3.model
          L8_3(L9_3)
          L8_3 = pcall
          L9_3 = CreatePed
          L10_3 = 0
          L11_3 = L6_3.skinData
          L11_3 = L11_3.model
          L12_3 = L7_3.coordinates
          L12_3 = L12_3.x
          L13_3 = L7_3.coordinates
          L13_3 = L13_3.y
          L14_3 = L7_3.coordinates
          L14_3 = L14_3.z
          L15_3 = 0.0
          L16_3 = false
          L17_3 = true
          L8_3, L9_3 = L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
          if L8_3 then
            L6_3.ped = L9_3
            L10_3 = table
            L10_3 = L10_3.insert
            L11_3 = Selector
            L11_3 = L11_3.ObjectsToClear
            L12_3 = L6_3.ped
            L10_3(L11_3, L12_3)
            L10_3 = SetPedDefaultComponentVariation
            L11_3 = L6_3.ped
            L10_3(L11_3)
            L10_3 = Skin
            L10_3 = L10_3.SetOnPed
            L11_3 = L6_3.ped
            L12_3 = L6_3.skinData
            L10_3(L11_3, L12_3)
            L10_3 = SetEntityRotation
            L11_3 = L6_3.ped
            L12_3 = L7_3.rotation
            L12_3 = L12_3.x
            L13_3 = L7_3.rotation
            L13_3 = L13_3.y
            L14_3 = L7_3.rotation
            L14_3 = L14_3.z
            L15_3 = 2
            L16_3 = false
            L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
            L10_3 = FreezeEntityPosition
            L11_3 = L6_3.ped
            L12_3 = true
            L10_3(L11_3, L12_3)
            L10_3 = SetPedCombatAttributes
            L11_3 = L6_3.ped
            L12_3 = 46
            L13_3 = true
            L10_3(L11_3, L12_3, L13_3)
            L10_3 = SetPedFleeAttributes
            L11_3 = L6_3.ped
            L12_3 = 0
            L13_3 = false
            L10_3(L11_3, L12_3, L13_3)
            L10_3 = SetPedCanRagdoll
            L11_3 = L6_3.ped
            L12_3 = false
            L10_3(L11_3, L12_3)
            L10_3 = SetPedCanBeTargetted
            L11_3 = L6_3.ped
            L12_3 = false
            L10_3(L11_3, L12_3)
            L10_3 = SetPedAsEnemy
            L11_3 = L6_3.ped
            L12_3 = false
            L10_3(L11_3, L12_3)
            L10_3 = SetBlockingOfNonTemporaryEvents
            L11_3 = L6_3.ped
            L12_3 = true
            L10_3(L11_3, L12_3)
            L10_3 = TaskSetBlockingOfNonTemporaryEvents
            L11_3 = L6_3.ped
            L12_3 = true
            L10_3(L11_3, L12_3)
            L10_3 = RemoveAllPedWeapons
            L11_3 = L6_3.ped
            L12_3 = true
            L10_3(L11_3, L12_3)
            L10_3 = L7_3.animDict
            if L10_3 then
              L10_3 = Functions
              L10_3 = L10_3.RequestAnimDict
              L11_3 = L7_3.animDict
              L10_3(L11_3)
              L10_3 = TaskPlayAnim
              L11_3 = L6_3.ped
              L12_3 = L7_3.animDict
              L13_3 = L7_3.animClip
              L14_3 = 8.0
              L15_3 = 8.0
              L16_3 = -1
              L17_3 = 1
              L18_3 = 0.0
              L19_3 = false
              L20_3 = false
              L21_3 = false
              L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3)
            else
              L10_3 = L7_3.scenario
              if L10_3 then
                L10_3 = TaskStartScenarioInPlace
                L11_3 = L6_3.ped
                L12_3 = L7_3.scenario
                L13_3 = 0
                L14_3 = true
                L10_3(L11_3, L12_3, L13_3, L14_3)
              end
            end
            L10_3 = L7_3.animProp
            if L10_3 then
              L10_3 = Functions
              L10_3 = L10_3.LoadModel
              L11_3 = L7_3.animProp
              L11_3 = L11_3.model
              L10_3(L11_3)
              L10_3 = Functions
              L10_3 = L10_3.SpawnObject
              L11_3 = L7_3.animProp
              L11_3 = L11_3.model
              function L12_3(A0_4)
                local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4, L15_4, L16_4
                L1_4 = table
                L1_4 = L1_4.insert
                L2_4 = Selector
                L2_4 = L2_4.ObjectsToClear
                L3_4 = A0_4
                L1_4(L2_4, L3_4)
                L1_4 = AttachEntityToEntity
                L2_4 = A0_4
                L3_4 = L6_3.ped
                L4_4 = GetPedBoneIndex
                L5_4 = L6_3.ped
                L6_4 = L7_3.animProp
                L6_4 = L6_4.bone
                L4_4 = L4_4(L5_4, L6_4)
                L5_4 = L7_3.animProp
                L5_4 = L5_4.offset
                L5_4 = L5_4.x
                L6_4 = L7_3.animProp
                L6_4 = L6_4.offset
                L6_4 = L6_4.y
                L7_4 = L7_3.animProp
                L7_4 = L7_4.offset
                L7_4 = L7_4.z
                L8_4 = L7_3.animProp
                L8_4 = L8_4.rotation
                L8_4 = L8_4.x
                L9_4 = L7_3.animProp
                L9_4 = L9_4.rotation
                L9_4 = L9_4.y
                L10_4 = L7_3.animProp
                L10_4 = L10_4.rotation
                L10_4 = L10_4.z
                L11_4 = false
                L12_4 = false
                L13_4 = false
                L14_4 = true
                L15_4 = 2
                L16_4 = true
                L1_4(L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4, L15_4, L16_4)
              end
              L13_3 = L7_3.coordinates
              L14_3 = false
              L15_3 = true
              L10_3(L11_3, L12_3, L13_3, L14_3, L15_3)
            end
            L6_3.positionTable = L7_3
          else
            L10_3 = Functions
            L10_3 = L10_3.Debug
            L11_3 = "CANNOT SPAWN %s MODEL - IF IT'S ADDON, PLEASE MAKE SURE THAT IT'S STARTING BEFORE MULTICHARACTER SCRIPT. THIS ISSUE CAN ALSO GENERATE CUSTOM CLOTHING PACKS"
            L10_3(L11_3)
          end
        else
          L8_3 = Functions
          L8_3 = L8_3.Print
          L9_3 = "CANNOT SPAWN "
          L10_3 = L5_3
          L11_3 = " PED BECAUSE THERE'S NO FREE LOCATIONS. PLEASE ADD MORE IN configs/selector.lua"
          L9_3 = L9_3 .. L10_3 .. L11_3
          L8_3(L9_3)
        end
      end
    end
    L1_3 = Functions
    L1_3 = L1_3.SendNuiMessage
    L2_3 = "SetSeparator"
    L3_3 = {}
    L4_3 = Config
    L4_3 = L4_3.MoneySeparator
    L3_3.separator = L4_3
    L1_3(L2_3, L3_3)
    L1_3 = Functions
    L1_3 = L1_3.SendNuiMessage
    L2_3 = "ToggleSelector"
    L3_3 = {}
    L3_3.state = true
    L3_3.characters = A0_3
    L4_3 = Selector
    L4_3 = L4_3.EnableDeleting
    L3_3.isDeletingEnabled = L4_3
    L1_3(L2_3, L3_3)
    L1_3 = SetNuiFocusKeepInput
    L2_3 = false
    L1_3(L2_3)
    L1_3 = SetNuiFocus
    L2_3 = true
    L3_3 = true
    L1_3(L2_3, L3_3)
    L1_3 = DoScreenFadeIn
    L2_3 = 300
    L1_3(L2_3)
    L1_3 = L3_2
    L2_3 = L1_3
    L1_3 = L1_3.resolve
    L1_3(L2_3)
    L1_3 = 1
    while true do
      L2_3 = Selector
      L2_3 = L2_3.Active
      if not L2_3 then
        break
      end
      L2_3 = promise
      L2_3 = L2_3.new
      L2_3 = L2_3()
      L3_3 = Selector
      L3_3 = L3_3.PlayCutscene
      L4_3 = Selector
      L4_3 = L4_3.Cutscenes
      L4_3 = L4_3[L1_3]
      L5_3 = A0_3
      function L6_3()
        local L0_4, L1_4
        L0_4 = L1_3
        L0_4 = L0_4 + 1
        L1_3 = L0_4
        L0_4 = Selector
        L0_4 = L0_4.Cutscenes
        L1_4 = L1_3
        L0_4 = L0_4[L1_4]
        if not L0_4 then
          L0_4 = 1
          L1_3 = L0_4
        end
        L0_4 = L2_3
        L1_4 = L0_4
        L0_4 = L0_4.resolve
        L0_4(L1_4)
      end
      L3_3(L4_3, L5_3, L6_3)
      L3_3 = Citizen
      L3_3 = L3_3.Await
      L4_3 = L2_3
      L3_3(L4_3)
    end
  end
  L4_2(L5_2, L6_2)
  L4_2 = Citizen
  L4_2 = L4_2.Await
  L5_2 = L3_2
  return L4_2(L5_2)
end
L0_1.Enter = L1_1
L0_1 = Selector
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = DoScreenFadeOut
  L1_2 = 10
  L0_2(L1_2)
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = Selector
  L1_2.Active = false
  L1_2 = Selector
  L1_2.ActiveCharacter = nil
  L1_2 = 1
  L2_2 = Selector
  L2_2 = L2_2.ObjectsToClear
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = DeleteEntity
    L6_2 = Selector
    L6_2 = L6_2.ObjectsToClear
    L6_2 = L6_2[L4_2]
    L5_2(L6_2)
  end
  L1_2 = SetNuiFocus
  L2_2 = false
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = Functions
  L1_2 = L1_2.SendNuiMessage
  L2_2 = "ToggleSelector"
  L3_2 = {}
  L3_2.state = false
  L1_2(L2_2, L3_2)
  L1_2 = OnSelectorExit
  L1_2()
end
L0_1.Exit = L1_1
L0_1 = Selector
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L3_2 = Selector
  L4_2 = CreateCam
  L5_2 = A0_2.camName
  L6_2 = true
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.CutsceneCam = L4_2
  L3_2 = SetCamCoord
  L4_2 = Selector
  L4_2 = L4_2.CutsceneCam
  L5_2 = A0_2.startingCoordinates
  L5_2 = L5_2.x
  L6_2 = A0_2.startingCoordinates
  L6_2 = L6_2.y
  L7_2 = A0_2.startingCoordinates
  L7_2 = L7_2.z
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = SetCamRot
  L4_2 = Selector
  L4_2 = L4_2.CutsceneCam
  L5_2 = A0_2.startingCameraRot
  L5_2 = L5_2.x
  L6_2 = A0_2.startingCameraRot
  L6_2 = L6_2.y
  L7_2 = A0_2.startingCameraRot
  L7_2 = L7_2.z
  L8_2 = 2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = SetCamFov
  L4_2 = Selector
  L4_2 = L4_2.CutsceneCam
  L5_2 = A0_2.startingFov
  L3_2(L4_2, L5_2)
  L3_2 = RenderScriptCams
  L4_2 = true
  L5_2 = false
  L6_2 = 0
  L7_2 = true
  L8_2 = true
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = 0.0
  L4_2 = GetGameTimer
  L4_2 = L4_2()
  L5_2 = A0_2.duration
  L4_2 = L4_2 + L5_2
  while true do
    L5_2 = Selector
    L5_2 = L5_2.Active
    if not L5_2 then
      break
    end
    L5_2 = GetGameTimer
    L5_2 = L5_2()
    if not (L4_2 > L5_2) then
      L5_2 = Selector
      L5_2 = L5_2.ActiveCharacter
      if nil == L5_2 then
        break
      end
    end
    L5_2 = Selector
    L5_2 = L5_2.ActiveCharacter
    if not L5_2 then
      L5_2 = DisplayRadar
      L6_2 = false
      L5_2(L6_2)
      L5_2 = GetGameTimer
      L5_2 = L5_2()
      L6_2 = A0_2.duration
      L6_2 = L4_2 - L6_2
      L5_2 = L5_2 - L6_2
      L6_2 = A0_2.duration
      L3_2 = L5_2 / L6_2
      L5_2 = Functions
      L5_2 = L5_2.Lerp
      L6_2 = A0_2.startingCoordinates
      L6_2 = L6_2.x
      L7_2 = A0_2.endCoordinates
      L7_2 = L7_2.x
      L8_2 = L3_2
      L5_2 = L5_2(L6_2, L7_2, L8_2)
      L6_2 = Functions
      L6_2 = L6_2.Lerp
      L7_2 = A0_2.startingCoordinates
      L7_2 = L7_2.y
      L8_2 = A0_2.endCoordinates
      L8_2 = L8_2.y
      L9_2 = L3_2
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      L7_2 = Functions
      L7_2 = L7_2.Lerp
      L8_2 = A0_2.startingCoordinates
      L8_2 = L8_2.z
      L9_2 = A0_2.endCoordinates
      L9_2 = L9_2.z
      L10_2 = L3_2
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L8_2 = Functions
      L8_2 = L8_2.Lerp
      L9_2 = A0_2.startingCameraRot
      L9_2 = L9_2.x
      L10_2 = A0_2.endCameraRot
      L10_2 = L10_2.x
      L11_2 = L3_2
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      L9_2 = Functions
      L9_2 = L9_2.Lerp
      L10_2 = A0_2.startingCameraRot
      L10_2 = L10_2.y
      L11_2 = A0_2.endCameraRot
      L11_2 = L11_2.y
      L12_2 = L3_2
      L9_2 = L9_2(L10_2, L11_2, L12_2)
      L10_2 = Functions
      L10_2 = L10_2.Lerp
      L11_2 = A0_2.startingCameraRot
      L11_2 = L11_2.z
      L12_2 = A0_2.endCameraRot
      L12_2 = L12_2.z
      L13_2 = L3_2
      L10_2 = L10_2(L11_2, L12_2, L13_2)
      L11_2 = Functions
      L11_2 = L11_2.Lerp
      L12_2 = A0_2.startingFov
      L13_2 = A0_2.endFov
      L14_2 = L3_2
      L11_2 = L11_2(L12_2, L13_2, L14_2)
      L12_2 = SetCamCoord
      L13_2 = Selector
      L13_2 = L13_2.CutsceneCam
      L14_2 = L5_2
      L15_2 = L6_2
      L16_2 = L7_2
      L12_2(L13_2, L14_2, L15_2, L16_2)
      L12_2 = SetCamFov
      L13_2 = Selector
      L13_2 = L13_2.CutsceneCam
      L14_2 = L11_2
      L12_2(L13_2, L14_2)
      L12_2 = SetCamRot
      L13_2 = Selector
      L13_2 = L13_2.CutsceneCam
      L14_2 = L8_2
      L15_2 = L9_2
      L16_2 = L10_2
      L17_2 = 2
      L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
      L12_2 = A0_2.shaking
      if L12_2 then
        L12_2 = ShakeCam
        L13_2 = Selector
        L13_2 = L13_2.CutsceneCam
        L14_2 = "HAND_SHAKE"
        L15_2 = 0.5
        L12_2(L13_2, L14_2, L15_2)
      end
    else
      L5_2 = Selector
      L5_2 = L5_2.ActiveCharacter
      L5_2 = A1_2[L5_2]
      if L5_2 then
        L5_2 = Selector
        L5_2 = L5_2.ActiveCharacter
        L5_2 = A1_2[L5_2]
        L5_2 = L5_2.positionTable
        if L5_2 then
          L5_2 = Selector
          L5_2 = L5_2.ActiveCharacter
          L5_2 = A1_2[L5_2]
          L5_2 = L5_2.positionTable
          L5_2 = L5_2.cameraCoordinates
          L6_2 = Selector
          L6_2 = L6_2.ActiveCharacter
          L6_2 = A1_2[L6_2]
          L6_2 = L6_2.positionTable
          L6_2 = L6_2.cameraRot
          L7_2 = Selector
          L7_2 = L7_2.ActiveCharacter
          L7_2 = A1_2[L7_2]
          L7_2 = L7_2.positionTable
          L7_2 = L7_2.cameraFov
          L8_2 = SetCamCoord
          L9_2 = Selector
          L9_2 = L9_2.CutsceneCam
          L10_2 = L5_2.x
          L11_2 = L5_2.y
          L12_2 = L5_2.z
          L8_2(L9_2, L10_2, L11_2, L12_2)
          L8_2 = SetCamFov
          L9_2 = Selector
          L9_2 = L9_2.CutsceneCam
          L10_2 = L7_2
          L8_2(L9_2, L10_2)
          L8_2 = SetCamRot
          L9_2 = Selector
          L9_2 = L9_2.CutsceneCam
          L10_2 = L6_2.x
          L11_2 = L6_2.y
          L12_2 = L6_2.z
          L13_2 = 2
          L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
        end
      end
    end
    L5_2 = Wait
    L6_2 = 0
    L5_2(L6_2)
  end
  L5_2 = RenderScriptCams
  L6_2 = false
  L7_2 = false
  L8_2 = 0
  L9_2 = true
  L10_2 = true
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L5_2 = DestroyCam
  L6_2 = Selector
  L6_2 = L6_2.CutsceneCam
  L7_2 = false
  L5_2(L6_2, L7_2)
  if A2_2 then
    L5_2 = Selector
    L5_2 = L5_2.Active
    if L5_2 then
      L5_2 = A2_2
      L5_2()
    end
  end
end
L0_1.PlayCutscene = L1_1
L0_1 = RegisterNUICallback
L1_1 = "SetSelectedCharacter"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = nil
  L3_2 = Selector
  L3_2 = L3_2.Characters
  if L3_2 then
    L3_2 = 1
    L4_2 = Selector
    L4_2 = L4_2.Characters
    L4_2 = #L4_2
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = Selector
      L7_2 = L7_2.Characters
      L7_2 = L7_2[L6_2]
      L7_2 = L7_2.id
      L8_2 = A0_2.character
      if L7_2 == L8_2 then
        L2_2 = L6_2
      end
    end
  end
  L3_2 = Selector
  L3_2 = L3_2.Characters
  L3_2 = L3_2[L2_2]
  L3_2 = L3_2.positionTable
  if nil == L3_2 then
    L2_2 = nil
  end
  L3_2 = Selector
  L3_2 = L3_2.ActiveCharacter
  if L3_2 ~= L2_2 then
    L3_2 = DoScreenFadeOut
    L4_2 = 100
    L3_2(L4_2)
    L3_2 = Wait
    L4_2 = 100
    L3_2(L4_2)
    L3_2 = Selector
    L3_2.ActiveCharacter = L2_2
    L3_2 = Wait
    L4_2 = 100
    L3_2(L4_2)
    L3_2 = DoScreenFadeIn
    L4_2 = 100
    L3_2(L4_2)
  end
  L3_2 = A1_2
  L4_2 = {}
  L3_2(L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "SelectCharacter"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = DoScreenFadeOut
  L3_2 = 100
  L2_2(L3_2)
  L2_2 = Wait
  L3_2 = 350
  L2_2(L3_2)
  L2_2 = Selector
  L2_2 = L2_2.Exit
  L2_2()
  L2_2 = {}
  L3_2 = A0_2.character
  L3_2 = L3_2.citizenid
  L2_2.citizenid = L3_2
  L3_2 = A0_2.character
  L3_2 = L3_2.position
  L2_2.position = L3_2
  L3_2 = TriggerServerEvent
  L4_2 = "17mov_CharacterSystem:SelectCharacter"
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A1_2
  L4_2 = {}
  L3_2(L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "DeleteCharacter"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = Selector
  L2_2 = L2_2.Exit
  L2_2()
  L2_2 = A0_2.character
  L2_2 = L2_2.citizenid
  if not L2_2 then
    L2_2 = A0_2.character
    L2_2 = L2_2.license
  end
  L3_2 = Functions
  L3_2 = L3_2.TriggerServerCallback
  L4_2 = "17mov_CharacterSystem:DeleteCharacter"
  function L5_2()
    local L0_3, L1_3
    L0_3 = Selector
    L0_3 = L0_3.Enter
    L0_3()
  end
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A1_2
  L4_2 = {}
  L3_2(L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "17mov_CharacterSystem:CharacterChoosen"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  while true do
    L3_2 = Selector
    L3_2 = L3_2.Active
    if not L3_2 then
      break
    end
    L3_2 = Wait
    L4_2 = 10
    L3_2(L4_2)
  end
  if A1_2 then
    L3_2 = Skin
    L3_2 = L3_2.Enabled
    if L3_2 then
      L3_2 = Skin
      L3_2 = L3_2.OpenMenu
      L4_2 = {}
      L5_2 = {}
      L6_2 = _L
      L7_2 = "Skin.Button.Save"
      L6_2 = L6_2(L7_2)
      L5_2.label = L6_2
      L5_2.type = "accent"
      L5_2.action = "callback"
      L6_2 = {}
      L6_2.callbackName = "SkinSave"
      L5_2.actionData = L6_2
      L4_2[1] = L5_2
      L5_2 = "creator"
      L6_2 = true
      L7_2 = A2_2
      L8_2 = A0_2
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
      L3_2 = Wait
      L4_2 = 100
      L3_2(L4_2)
      L3_2 = DoScreenFadeIn
      L4_2 = 100
      L3_2(L4_2)
  end
  else
    L3_2 = Location
    L3_2 = L3_2.Enable
    if L3_2 then
      if A1_2 then
        L3_2 = Location
        L3_2 = L3_2.EnableForNewCharacters
        if L3_2 then
          goto lbl_60
        end
      end
      if not A1_2 then
        L3_2 = Location
        L3_2 = L3_2.EnableForExistingCharacters
        ::lbl_60::
        if L3_2 then
          L3_2 = Location
          L3_2 = L3_2.Enter
          L4_2 = A0_2
          L5_2 = A1_2
          L3_2(L4_2, L5_2)
      end
    end
    else
      L3_2 = Location
      L3_2 = L3_2.Enable
      if L3_2 then
        L3_2 = TriggerEvent
        L4_2 = "17mov_CharacterSystem:PlayerSpawned"
        L5_2 = A1_2
        L3_2(L4_2, L5_2)
      end
      L3_2 = Location
      L3_2 = L3_2.SpawnPlayer
      L4_2 = {}
      L4_2.name = "lastLocation"
      L4_2.coords = A0_2
      L5_2 = _L
      L6_2 = "Location.LastLocation"
      L5_2 = L5_2(L6_2)
      L4_2.label = L5_2
      L4_2.type = "location"
      L5_2 = A1_2
      L3_2(L4_2, L5_2)
      L3_2 = SetNuiFocus
      L4_2 = false
      L5_2 = false
      L3_2(L4_2, L5_2)
    end
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "17mov_CharacterSystem:OpenSelector"
function L2_1()
  local L0_2, L1_2
  L0_2 = DoScreenFadeOut
  L1_2 = 100
  L0_2(L1_2)
  L0_2 = Selector
  L0_2 = L0_2.Enter
  L0_2()
end
L0_1(L1_1, L2_1)
