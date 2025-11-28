local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = {}
L1_1 = {}
L2_1 = 0
L3_1 = nil
L4_1 = nil
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = L3_1
  if L1_2 then
    L1_2 = L3_1.id
    L2_2 = A0_2.id
    if L1_2 == L2_2 then
      L1_2 = nil
      L3_1 = L1_2
    end
  end
  L2_2 = A0_2.id
  L1_2 = L0_1
  L1_2[L2_2] = nil
end
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "vector3" ~= L1_2 then
    if "table" == L1_2 or "vector4" == L1_2 then
      L2_2 = vec3
      L3_2 = A0_2[1]
      if not L3_2 then
        L3_2 = A0_2.x
      end
      L4_2 = A0_2[2]
      if not L4_2 then
        L4_2 = A0_2.y
      end
      L5_2 = A0_2[3]
      if not L5_2 then
        L5_2 = A0_2.z
      end
      return L2_2(L3_2, L4_2, L5_2)
    end
    L2_2 = error
    L3_2 = "expected type 'vector3' or 'table' (received %s)"
    L4_2 = L3_2
    L3_2 = L3_2.format
    L5_2 = L1_2
    L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
  return A0_2
end
L7_1 = WSB
L8_1 = {}
function L9_1(...)
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = {}
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = ...
  L0_2[1] = L1_2
  L0_2[2] = L2_2
  L0_2[3] = L3_2
  L0_2[4] = L4_2
  L0_2[5] = L5_2
  L0_2[6] = L6_2
  L0_2[7] = L7_2
  L0_2[8] = L8_2
  L0_2[9] = L9_2
  L1_2 = L0_1
  L1_2 = #L1_2
  L1_2 = L1_2 + 1
  L2_2 = nil
  L3_2 = type
  L4_2 = L0_2[1]
  L3_2 = L3_2(L4_2)
  if "table" == L3_2 then
    L2_2 = L0_2[1]
    L2_2.id = L1_2
    L3_2 = L5_1
    L2_2.remove = L3_2
  else
    L3_2 = {}
    L3_2.id = L1_2
    L4_2 = L0_2[1]
    L3_2.coords = L4_2
    L4_2 = L5_1
    L3_2.remove = L4_2
    L2_2 = L3_2
  end
  L3_2 = L6_1
  L4_2 = L2_2.coords
  L3_2 = L3_2(L4_2)
  L2_2.coords = L3_2
  L3_2 = L2_2.distance
  if not L3_2 then
    L3_2 = L0_2[2]
  end
  L2_2.distance = L3_2
  L3_2 = L0_2[3]
  if L3_2 then
    L3_2 = pairs
    L4_2 = L0_2[3]
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L2_2[L7_2] = L8_2
    end
  end
  L3_2 = L0_1
  L3_2[L1_2] = L2_2
  return L2_2
end
L8_1.new = L9_1
function L9_1()
  local L0_2, L1_2
  L0_2 = L0_1
  return L0_2
end
L8_1.getAllPoints = L9_1
function L9_1()
  local L0_2, L1_2
  L0_2 = L1_1
  return L0_2
end
L8_1.getNearbyPoints = L9_1
function L9_1()
  local L0_2, L1_2
  L0_2 = L3_1
  return L0_2
end
L8_1.getClosestPoint = L9_1
L7_1.points = L8_1
function L7_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = GetEntityCoords
  L1_2 = WSB
  L1_2 = L1_2.cache
  L1_2 = L1_2.ped
  L0_2 = L0_2(L1_2)
  L1_2 = WSB
  L1_2 = L1_2.cache
  L1_2.coords = L0_2
  L1_2 = L3_1
  if L1_2 then
    L1_2 = L3_1.coords
    L1_2 = L0_2 - L1_2
    L1_2 = #L1_2
    L2_2 = L3_1.distance
    if L1_2 > L2_2 then
      L3_1.isClosest = nil
      L1_2 = nil
      L3_1 = L1_2
    end
  end
  L1_2 = 0
  L2_1 = L1_2
  L1_2 = pairs
  L2_2 = L0_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.coords
    L7_2 = L0_2 - L7_2
    L7_2 = #L7_2
    L6_2.currentDistance = L7_2
    L8_2 = L6_2.distance
    if L7_2 <= L8_2 then
      L8_2 = L3_1
      if L8_2 then
        L8_2 = L3_1.currentDistance
        if not (L7_2 < L8_2) then
          goto lbl_48
        end
      end
      L8_2 = L3_1
      if L8_2 then
        L3_1.isClosest = nil
      end
      L6_2.isClosest = true
      L3_1 = L6_2
      ::lbl_48::
      L8_2 = L6_2.nearby
      if L8_2 then
        L8_2 = L2_1
        L8_2 = L8_2 + 1
        L2_1 = L8_2
        L9_2 = L2_1
        L8_2 = L1_1
        L8_2[L9_2] = L6_2
      end
      L8_2 = L6_2.onEnter
      if L8_2 then
        L8_2 = L6_2.inside
        if not L8_2 then
          L6_2.inside = true
          L9_2 = L6_2
          L8_2 = L6_2.onEnter
          L8_2(L9_2)
      end
      else
        L8_2 = L6_2.inside
        if not L8_2 then
          L6_2.inside = true
        end
      end
    else
      L8_2 = L6_2.inside
      if L8_2 then
        L8_2 = L6_2.onExit
        if L8_2 then
          L9_2 = L6_2
          L8_2 = L6_2.onExit
          L8_2(L9_2)
        end
        L6_2.inside = nil
      end
      L6_2.currentDistance = nil
    end
  end
end
L8_1 = CreateThread
function L9_1()
  local L0_2, L1_2, L2_2
  while true do
    L0_2 = L7_1
    L0_2()
    L0_2 = L2_1
    if L0_2 > 0 then
      L0_2 = L4_1
      if not L0_2 then
        L0_2 = SetInterval
        function L1_2()
          local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
          L0_3 = 1
          L1_3 = L2_1
          L2_3 = 1
          for L3_3 = L0_3, L1_3, L2_3 do
            L4_3 = L1_1
            L4_3 = L4_3[L3_3]
            if L4_3 then
              L5_3 = pcall
              function L6_3()
                local L0_4, L1_4
                L0_4 = L4_3
                L1_4 = L0_4
                L0_4 = L0_4.nearby
                L0_4(L1_4)
              end
              L5_3, L6_3 = L5_3(L6_3)
              if not L5_3 then
                L8_3 = L4_3
                L7_3 = L4_3.remove
                L7_3(L8_3)
              end
            end
          end
        end
        L2_2 = 0
        L0_2 = L0_2(L1_2, L2_2)
        L4_1 = L0_2
    end
    else
      L0_2 = L2_1
      if 0 == L0_2 then
        L0_2 = L4_1
        if L0_2 then
          L0_2 = ClearInterval
          L1_2 = L4_1
          L0_2 = L0_2(L1_2)
          L4_1 = L0_2
        end
      end
    end
    L0_2 = Wait
    L1_2 = 300
    L0_2(L1_2)
  end
end
L8_1(L9_1)
