local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = {}
L1_1 = {}
L2_1 = false
L3_1 = CreateThread
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = PlayerPedId
  L1_2 = GetEntityCoords
  while true do
    L2_2 = Wait
    L3_2 = 1000
    L2_2(L3_2)
    L2_2 = false
    L2_1 = L2_2
    L2_2 = L0_2
    L2_2 = L2_2()
    L3_2 = L1_2
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    L4_2 = pairs
    L5_2 = L0_1
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
      L10_2 = true
      L11_2 = L9_2.getActivity
      L11_2 = L11_2()
      if L11_2 then
        L12_2 = IsActivityEnabled
        L13_2 = L11_2
        L12_2 = L12_2(L13_2)
        L10_2 = L12_2
      end
      L12_2 = L9_2.position
      L12_2 = L3_2 - L12_2
      L12_2 = #L12_2
      if L12_2 < 20 and L10_2 then
        L14_2 = L9_2.id
        L13_2 = L1_1
        L13_2[L14_2] = L9_2
        L13_2 = true
        L2_1 = L13_2
      else
        L9_2.rendering = false
        L13_2 = L0_1
        L13_2[L8_2] = L9_2
        L14_2 = L9_2.id
        L13_2 = L1_1
        L13_2[L14_2] = nil
      end
    end
  end
end
L5_1 = "adding marker to cache if near"
L3_1(L4_1, L5_1)
L3_1 = CreateThread
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L0_2 = PlayerPedId
  L1_2 = GetEntityCoords
  L2_2 = IsPedInAnyVehicle
  while true do
    L3_2 = Wait
    L4_2 = 300
    L3_2(L4_2)
    L3_2 = L2_1
    if not L3_2 then
      L3_2 = Wait
      L4_2 = 1000
      L3_2(L4_2)
    end
    L3_2 = L0_2
    L3_2 = L3_2()
    L4_2 = L1_2
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    L5_2 = pairs
    L6_2 = L1_1
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
    for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
      L11_2 = true
      L12_2 = L10_2.getRenderJob
      L12_2 = L12_2()
      if nil ~= L12_2 then
        L12_2 = IsAtJob
        L13_2 = L10_2.getRenderJob
        L13_2 = L13_2()
        L14_2 = L10_2.getGrades
        L14_2 = L14_2()
        L15_2 = L10_2.getMinGrade
        L15_2 = L15_2()
        L16_2 = 10
        L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
        L11_2 = L12_2
      end
      L12_2 = L10_2.onlyVehicle
      if nil ~= L12_2 then
        L12_2 = L2_2
        L13_2 = L0_2
        L13_2 = L13_2()
        L14_2 = false
        L12_2 = L12_2(L13_2, L14_2)
        L13_2 = L10_2.onlyVehicle
      end
      if L12_2 == L13_2 and true == L11_2 then
        L12_2 = L10_2.position
        L12_2 = L4_2 - L12_2
        L12_2 = #L12_2
        L13_2 = L10_2.renderDistance
        if L12_2 <= L13_2 then
          L13_2 = L10_2.destroyed
          if not L13_2 then
            L13_2 = L10_2.stopRendering
            if not L13_2 then
              L10_2.rendering = true
              L13_2 = L10_2.inRadius
              if L12_2 <= L13_2 then
                L13_2 = L10_2.isIn
                if false == L13_2 then
                  L13_2 = L10_2.onEnter
                  if nil ~= L13_2 then
                    L13_2 = pcall
                    L14_2 = L10_2.onEnter
                    L13_2, L14_2 = L13_2(L14_2)
                  end
                end
                L10_2.isIn = true
              else
                L13_2 = L10_2.isIn
                if L13_2 then
                  L13_2 = L10_2.onLeave
                  if nil ~= L13_2 then
                    L13_2 = pcall
                    L14_2 = L10_2.onLeave
                    L13_2, L14_2 = L13_2(L14_2)
                  end
                  L10_2.isIn = false
                end
              end
          end
        end
        else
          L10_2.rendering = false
        end
        L13_2 = L1_1
        L13_2[L9_2] = L10_2
      end
    end
  end
end
L5_1 = "enter/leave event for marker"
L3_1(L4_1, L5_1)
L3_1 = CreateThread
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2
  L0_2 = PlayerPedId
  L1_2 = GetEntityCoords
  L2_2 = IsControlJustReleased
  L3_2 = DrawMarker
  L4_2 = IsPedInAnyVehicle
  while true do
    L5_2 = Wait
    L6_2 = 0
    L5_2(L6_2)
    L5_2 = L2_1
    if not L5_2 then
      L5_2 = Wait
      L6_2 = 1000
      L5_2(L6_2)
    end
    L5_2 = pairs
    L6_2 = L1_1
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
    for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
      L11_2 = true
      L12_2 = L10_2.getRenderJob
      L12_2 = L12_2()
      if nil ~= L12_2 then
        L12_2 = IsAtJob
        L13_2 = L10_2.getRenderJob
        L13_2 = L13_2()
        L14_2 = L10_2.getGrades
        L14_2 = L14_2()
        L15_2 = L10_2.getMinGrade
        L15_2 = L15_2()
        L16_2 = 10
        L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
        L11_2 = L12_2
      end
      L12_2 = L10_2.onlyVehicle
      if nil ~= L12_2 then
        L12_2 = L4_2
        L13_2 = L0_2
        L13_2 = L13_2()
        L14_2 = false
        L12_2 = L12_2(L13_2, L14_2)
        L13_2 = L10_2.onlyVehicle
        if L12_2 ~= L13_2 then
          goto lbl_133
        end
      end
      L12_2 = L10_2.stopRendering
      if false == L12_2 and L11_2 then
        L12_2 = L10_2.stopRendering
        if not L12_2 then
          L12_2 = L10_2.rendering
          if L12_2 then
            L12_2 = L10_2.destroyed
            if not L12_2 then
              L12_2 = L10_2.isIn
              if L12_2 then
                L12_2 = L10_2.IsMarkerBusy
                L12_2 = L12_2()
                if not L12_2 then
                  L12_2 = pairs
                  L13_2 = L10_2.keys
                  L12_2, L13_2, L14_2, L15_2 = L12_2(L13_2)
                  for L16_2, L17_2 in L12_2, L13_2, L14_2, L15_2 do
                    L18_2 = L2_2
                    L19_2 = 0
                    L20_2 = L17_2
                    L18_2 = L18_2(L19_2, L20_2)
                    if not L18_2 then
                      L18_2 = IsDisabledControlJustReleased
                      L19_2 = 2
                      L20_2 = L17_2
                      L18_2 = L18_2(L19_2, L20_2)
                      if not L18_2 then
                        goto lbl_89
                      end
                    end
                    L18_2 = L10_2.onKey
                    if nil ~= L18_2 then
                      L18_2 = pcall
                      L19_2 = L10_2.onKey
                      L20_2 = L17_2
                      L18_2, L19_2 = L18_2(L19_2, L20_2)
                    end
                    ::lbl_89::
                  end
                end
              end
              L12_2 = L3_2
              L13_2 = L10_2.type
              L14_2 = L10_2.position
              L14_2 = L14_2.x
              L15_2 = L10_2.position
              L15_2 = L15_2.y
              L16_2 = L10_2.position
              L16_2 = L16_2.z
              L17_2 = L10_2.dir
              L17_2 = L17_2.x
              L18_2 = L10_2.dir
              L18_2 = L18_2.y
              L19_2 = L10_2.dir
              L19_2 = L19_2.z
              L20_2 = L10_2.rot
              L20_2 = L20_2.x
              L21_2 = L10_2.rot
              L21_2 = L21_2.y
              L22_2 = L10_2.rot
              L22_2 = L22_2.z
              L23_2 = L10_2.scale
              L23_2 = L23_2.x
              L24_2 = L10_2.scale
              L24_2 = L24_2.y
              L25_2 = L10_2.scale
              L25_2 = L25_2.z
              L26_2 = L10_2.getRed
              L26_2 = L26_2()
              L27_2 = L10_2.getGreen
              L27_2 = L27_2()
              L28_2 = L10_2.getBlue
              L28_2 = L28_2()
              L29_2 = L10_2.getAlpha
              L29_2 = L29_2()
              L30_2 = false
              L31_2 = L10_2.faceCamera
              L32_2 = 2
              L33_2 = L10_2.rotation
              L34_2 = nil
              L35_2 = nil
              L36_2 = false
              L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2)
            end
          end
        end
      end
      ::lbl_133::
    end
  end
end
L5_1 = "render + control pressed event"
L3_1(L4_1, L5_1)
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = {}
  L1_2 = tableLength
  L2_2 = L0_1
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2 + 1
  L0_2.id = L1_2
  L0_2.type = 1
  L0_2.firstUpdate = false
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  L0_2.resource = L1_2
  L0_2.renderDistance = 20
  L1_2 = vector3
  L2_2 = 0
  L3_2 = 0
  L4_2 = 0
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L0_2.position = L1_2
  L1_2 = vector3
  L2_2 = 0
  L3_2 = 0
  L4_2 = 0
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L0_2.dir = L1_2
  L1_2 = vector3
  L2_2 = 0
  L3_2 = 0
  L4_2 = 0
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L0_2.rot = L1_2
  L1_2 = vector3
  L2_2 = 1
  L3_2 = 1
  L4_2 = 1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L0_2.scale = L1_2
  L0_2.rotation = false
  L0_2.faceCamera = false
  L0_2.rendering = false
  L0_2.stopRendering = false
  L0_2.isBusy = false
  L1_2 = {}
  L0_2.keys = L1_2
  L0_2.onEnter = nil
  L0_2.onLeave = nil
  L0_2.onKey = nil
  L0_2.jobRendered = nil
  L0_2.Grades = nil
  L0_2.hasActivity = nil
  L0_2.isIn = false
  L0_2.onlyVehicle = nil
  L0_2.inRadius = 0.5
  L0_2.minGrade = 0
  L0_2.JobName = "civ"
  L1_2 = {}
  L1_2.r = 255
  L1_2.g = 255
  L1_2.b = 255
  L1_2.a = 255
  L0_2.color = L1_2
  function L1_2(A0_3)
    local L1_3
    L0_2.jobRendered = A0_3
  end
  L0_2.setRenderJob = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = L0_2.jobRendered
    return L0_3
  end
  L0_2.getRenderJob = L1_2
  function L1_2(A0_3)
    local L1_3
    L0_2.onlyVehicle = A0_3
  end
  L0_2.setOnlyVehicle = L1_2
  function L1_2(A0_3)
    local L1_3
    L0_2.JobName = A0_3
  end
  L0_2.setJob = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = L0_2.JobName
    return L0_3
  end
  L0_2.getJob = L1_2
  function L1_2(A0_3)
    local L1_3
    L0_2.hasActivity = A0_3
  end
  L0_2.setActivity = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = L0_2.hasActivity
    return L0_3
  end
  L0_2.getActivity = L1_2
  function L1_2(A0_3)
    local L1_3
    L0_2.Grades = A0_3
  end
  L0_2.setGrades = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = L0_2.Grades
    return L0_3
  end
  L0_2.getGrades = L1_2
  function L1_2(A0_3)
    local L1_3
    L0_2.minGrade = A0_3
  end
  L0_2.setMinGrade = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = L0_2.minGrade
    return L0_3
  end
  L0_2.getMinGrade = L1_2
  function L1_2(A0_3)
    local L1_3
    L0_2.id = A0_3
    L1_3 = L0_2.update
    L1_3()
  end
  L0_2.setId = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = L0_2.id
    return L0_3
  end
  L0_2.getId = L1_2
  function L1_2(A0_3)
    local L1_3
    L0_2.type = A0_3
    L1_3 = L0_2.update
    L1_3()
  end
  L0_2.setType = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = L0_2.type
    return L0_3
  end
  L0_2.getType = L1_2
  function L1_2(A0_3)
    local L1_3
    L0_2.position = A0_3
    L1_3 = L0_2.update
    L1_3()
    L1_3 = L0_2
    return L1_3
  end
  L0_2.setPosition = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = L0_2.position
    return L0_3
  end
  L0_2.getPosition = L1_2
  function L1_2(A0_3)
    local L1_3
    L0_2.dir = A0_3
    L1_3 = L0_2.update
    L1_3()
  end
  L0_2.setDir = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = L0_2.dir
    return L0_3
  end
  L0_2.getDir = L1_2
  function L1_2(A0_3)
    local L1_3
    L0_2.scale = A0_3
    L1_3 = L0_2.update
    L1_3()
  end
  L0_2.setScale = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = L0_2.scale
    return L0_3
  end
  L0_2.getScale = L1_2
  function L1_2(A0_3)
    local L1_3
    L0_2.color = A0_3
    L1_3 = L0_2.update
    L1_3()
  end
  L0_2.setColor = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = L0_2.color
    return L0_3
  end
  L0_2.getColor = L1_2
  function L1_2(A0_3)
    local L1_3
    L1_3 = L0_2.color
    L1_3.a = A0_3
    L1_3 = L0_2.update
    L1_3()
  end
  L0_2.setAlpha = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = L0_2.isBusy
    if L0_3 then
      L0_3 = 125
      return L0_3
    end
    L0_3 = L0_2.color
    L0_3 = L0_3.a
    return L0_3
  end
  L0_2.getAlpha = L1_2
  function L1_2(A0_3)
    local L1_3
    L1_3 = L0_2.color
    L1_3.r = A0_3
    L1_3 = L0_2.update
    L1_3()
  end
  L0_2.setRed = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = L0_2.isBusy
    if L0_3 then
      L0_3 = 255
      return L0_3
    end
    L0_3 = L0_2.color
    L0_3 = L0_3.r
    return L0_3
  end
  L0_2.getRed = L1_2
  function L1_2(A0_3)
    local L1_3
    L1_3 = L0_2.color
    L1_3.g = A0_3
    L1_3 = L0_2.update
    L1_3()
  end
  L0_2.setGreen = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = L0_2.isBusy
    if L0_3 then
      L0_3 = 0
      return L0_3
    end
    L0_3 = L0_2.color
    L0_3 = L0_3.g
    return L0_3
  end
  L0_2.getGreen = L1_2
  function L1_2(A0_3)
    local L1_3
    L1_3 = L0_2.color
    L1_3.b = A0_3
    L1_3 = L0_2.update
    L1_3()
  end
  L0_2.setBlue = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = L0_2.isBusy
    if L0_3 then
      L0_3 = 0
      return L0_3
    end
    L0_3 = L0_2.color
    L0_3 = L0_3.b
    return L0_3
  end
  L0_2.getBlue = L1_2
  function L1_2(A0_3)
    local L1_3
    L0_2.renderDistance = A0_3
    L1_3 = L0_2.update
    L1_3()
    L1_3 = L0_2
    return L1_3
  end
  L0_2.setRenderDistance = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = L0_2.renderDistance
    return L0_3
  end
  L0_2.getRenderDistance = L1_2
  function L1_2(A0_3)
    local L1_3
    L0_2.faceCamera = A0_3
    L1_3 = L0_2.update
    L1_3()
  end
  L0_2.setFaceCamera = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = L0_2.faceCamera
    return L0_3
  end
  L0_2.getFaceCamera = L1_2
  function L1_2(A0_3)
    local L1_3
    L0_2.rotation = A0_3
    L1_3 = L0_2.update
    L1_3()
  end
  L0_2.setRotation = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = L0_2.rotation
    return L0_3
  end
  L0_2.getRotation = L1_2
  function L1_2(A0_3)
    local L1_3
    L0_2.inRadius = A0_3
    L1_3 = L0_2.update
    L1_3()
  end
  L0_2.setInRadius = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = L0_2.inRadius
    return L0_3
  end
  L0_2.getInRadius = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_2.stopRendering = false
    L0_2.rendering = true
    L0_2.firstUpdate = false
    L0_3 = L0_2.update
    L0_3()
    L0_3 = L0_2
    return L0_3
  end
  L0_2.render = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_2.stopRendering = true
    L0_2.rendering = false
    L0_3 = L0_2.update
    L0_3()
  end
  L0_2.stopRender = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_2.stopRendering = true
    L0_2.rendering = false
    L0_2.destroyed = true
    L0_3 = L0_2.update
    L1_3 = true
    L0_3(L1_3)
  end
  L0_2.destroy = L1_2
  function L1_2(A0_3)
    local L1_3
    L0_2.isBusy = A0_3
    L1_3 = L0_2.update
    L1_3()
  end
  L0_2.SetBusyStatus = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = L0_2.isBusy
    return L0_3
  end
  L0_2.IsMarkerBusy = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = L0_2.rendering
    return L0_3
  end
  L0_2.isRendering = L1_2
  function L1_2(A0_3)
    local L1_3
    L0_2.keys = A0_3
    L1_3 = L0_2.update
    L1_3()
    L1_3 = L0_2
    return L1_3
  end
  L0_2.setKeys = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = L0_2.keys
    return L0_3
  end
  L0_2.getKeys = L1_2
  function L1_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = string
    L2_3 = L2_3.lower
    L3_3 = A0_3
    L2_3 = L2_3(L3_3)
    if "enter" == L2_3 then
      L0_2.onEnter = A1_3
    else
      L2_3 = string
      L2_3 = L2_3.lower
      L3_3 = A0_3
      L2_3 = L2_3(L3_3)
      if "leave" == L2_3 then
        L0_2.onLeave = A1_3
      else
        L2_3 = string
        L2_3 = L2_3.lower
        L3_3 = A0_3
        L2_3 = L2_3(L3_3)
        if "key" == L2_3 then
          L0_2.onKey = A1_3
        else
        end
      end
    end
    L2_3 = L0_2.update
    L2_3()
  end
  L0_2.on = L1_2
  function L1_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L1_3 = L0_2.firstUpdate
    if L1_3 then
      return
    end
    if A0_3 then
      L1_3 = pairs
      L2_3 = L1_1
      L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
      for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
        L7_3 = L6_3.getId
        L7_3 = L7_3()
        L8_3 = L0_2.getId
        L8_3 = L8_3()
        if L7_3 == L8_3 then
          L7_3 = L1_1
          L7_3[L5_3] = nil
        end
      end
      L1_3 = pairs
      L2_3 = L0_1
      L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
      for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
        L7_3 = L6_3.getId
        L7_3 = L7_3()
        L8_3 = L0_2.getId
        L8_3 = L8_3()
        if L7_3 == L8_3 then
          L7_3 = L0_1
          L7_3[L5_3] = nil
        end
      end
    else
      L1_3 = pairs
      L2_3 = L0_1
      L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
      for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
        L7_3 = L6_3.getId
        L7_3 = L7_3()
        L8_3 = L0_2.getId
        L8_3 = L8_3()
        if L7_3 == L8_3 then
          L7_3 = L0_1
          L7_3[L5_3] = L6_3
        end
      end
    end
  end
  L0_2.update = L1_2
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = L0_1
  L3_2 = L0_2
  L1_2(L2_2, L3_2)
  return L0_2
end
createMarker = L3_1
L3_1 = AddEventHandler
L4_1 = "onResourceStop"
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = pairs
  L2_2 = L0_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.resource
    if L7_2 == A0_2 then
      L7_2 = L6_2.destroy
      L7_2()
    end
  end
end
L3_1(L4_1, L5_1)
