local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1
L0_1 = WSB
L1_1 = {}
L0_1.zones = L1_1
L0_1 = {}
L1_1 = {}
L2_1 = {}
L3_1 = {}
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = false
  L3_2 = #A0_2
  L4_2 = 1
  L5_2 = #A0_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A0_2[L7_2]
    L8_2 = L8_2.x
    L9_2 = A0_2[L7_2]
    L9_2 = L9_2.y
    L10_2 = A0_2[L3_2]
    L10_2 = L10_2.x
    L11_2 = A0_2[L3_2]
    L11_2 = L11_2.y
    L12_2 = A1_2.y
    L12_2 = L9_2 > L12_2
    L13_2 = A1_2.y
    L13_2 = L11_2 > L13_2
    if L12_2 ~= L13_2 then
      L12_2 = A1_2.x
      L13_2 = L10_2 - L8_2
      L14_2 = A1_2.y
      L14_2 = L14_2 - L9_2
      L13_2 = L13_2 * L14_2
      L14_2 = L11_2 - L9_2
      L13_2 = L13_2 / L14_2
      L13_2 = L13_2 + L8_2
      if L12_2 < L13_2 then
        L2_2 = not L2_2
      end
    end
    L3_2 = L7_2
  end
  return L2_2
end
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 0
  L2_2 = 0
  L3_2 = 0
  L4_2 = 1
  L5_2 = #A0_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A0_2[L7_2]
    L8_2 = L8_2.x
    L1_2 = L1_2 + L8_2
    L8_2 = A0_2[L7_2]
    L8_2 = L8_2.y
    L2_2 = L2_2 + L8_2
    L8_2 = A0_2[L7_2]
    L8_2 = L8_2.z
    L3_2 = L3_2 + L8_2
  end
  L4_2 = #A0_2
  L5_2 = vector3
  L6_2 = L1_2 / L4_2
  L7_2 = L2_2 / L4_2
  L8_2 = L3_2 / L4_2
  return L5_2(L6_2, L7_2, L8_2)
end
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = #A0_2
  if L1_2 < 4 then
    L2_2 = true
    return L2_2
  end
  L2_2 = nil
  L3_2 = 1
  L4_2 = L1_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L6_2
    L8_2 = L6_2 % L1_2
    L8_2 = L8_2 + 1
    L9_2 = L6_2 + 1
    L9_2 = L9_2 % L1_2
    L9_2 = L9_2 + 1
    L10_2 = A0_2[L8_2]
    L10_2 = L10_2.x
    L11_2 = A0_2[L7_2]
    L11_2 = L11_2.x
    L10_2 = L10_2 - L11_2
    L11_2 = A0_2[L8_2]
    L11_2 = L11_2.y
    L12_2 = A0_2[L7_2]
    L12_2 = L12_2.y
    L11_2 = L11_2 - L12_2
    L12_2 = A0_2[L9_2]
    L12_2 = L12_2.x
    L13_2 = A0_2[L8_2]
    L13_2 = L13_2.x
    L12_2 = L12_2 - L13_2
    L13_2 = A0_2[L9_2]
    L13_2 = L13_2.y
    L14_2 = A0_2[L8_2]
    L14_2 = L14_2.y
    L13_2 = L13_2 - L14_2
    L14_2 = L10_2 * L13_2
    L15_2 = L11_2 * L12_2
    L14_2 = L14_2 - L15_2
    L15_2 = L14_2 >= 0
    if nil == L2_2 then
      L2_2 = L15_2
    elseif L2_2 ~= L15_2 then
      L16_2 = false
      return L16_2
    end
  end
  L3_2 = true
  return L3_2
end
function L7_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  function L4_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3
    L3_3 = A0_3.x
    L4_3 = A2_3.x
    L3_3 = L3_3 - L4_3
    L4_3 = A1_3.y
    L5_3 = A2_3.y
    L4_3 = L4_3 - L5_3
    L3_3 = L3_3 * L4_3
    L4_3 = A1_3.x
    L5_3 = A2_3.x
    L4_3 = L4_3 - L5_3
    L5_3 = A0_3.y
    L6_3 = A2_3.y
    L5_3 = L5_3 - L6_3
    L4_3 = L4_3 * L5_3
    L3_3 = L3_3 - L4_3
    return L3_3
  end
  L5_2 = L4_2
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A2_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = L4_2
  L7_2 = A0_2
  L8_2 = A2_2
  L9_2 = A3_2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = L4_2
  L8_2 = A0_2
  L9_2 = A3_2
  L10_2 = A1_2
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L8_2 = L5_2 < 0 or L6_2 < 0 or L7_2 < 0
  L9_2 = L5_2 > 0 or L6_2 > 0 or L7_2 > 0
  L10_2 = not L8_2 or L10_2
  return L10_2
end
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L2_2 = #A0_2
  L3_2 = L2_2 or L3_2
  if 1 ~= A1_2 or not L2_2 then
    L3_2 = A1_2 - 1
  end
  L3_2 = A0_2[L3_2]
  L4_2 = A0_2[A1_2]
  if A1_2 == L2_2 then
    L5_2 = 1
    if L5_2 then
      goto lbl_17
    end
  end
  L5_2 = A1_2 + 1
  ::lbl_17::
  L5_2 = A0_2[L5_2]
  L6_2 = L4_2.x
  L7_2 = L3_2.x
  L6_2 = L6_2 - L7_2
  L7_2 = L4_2.y
  L8_2 = L3_2.y
  L7_2 = L7_2 - L8_2
  L8_2 = L5_2.x
  L9_2 = L4_2.x
  L8_2 = L8_2 - L9_2
  L9_2 = L5_2.y
  L10_2 = L4_2.y
  L9_2 = L9_2 - L10_2
  L10_2 = L6_2 * L9_2
  L11_2 = L7_2 * L8_2
  L10_2 = L10_2 - L11_2
  if L10_2 < 0 then
    L11_2 = false
    return L11_2
  end
  L11_2 = ipairs
  L12_2 = A0_2
  L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2)
  for L15_2, L16_2 in L11_2, L12_2, L13_2, L14_2 do
    L17_2 = L2_2 or L17_2
    if 1 ~= A1_2 or not L2_2 then
      L17_2 = A1_2 - 1
    end
    if L15_2 ~= L17_2 and L15_2 ~= A1_2 then
      if A1_2 == L2_2 then
        L17_2 = 1
        if L17_2 then
          goto lbl_65
        end
      end
      L17_2 = A1_2 + 1
      ::lbl_65::
      if L15_2 ~= L17_2 then
        L17_2 = L7_1
        L18_2 = L16_2
        L19_2 = L3_2
        L20_2 = L4_2
        L21_2 = L5_2
        L17_2 = L17_2(L18_2, L19_2, L20_2, L21_2)
        if L17_2 then
          L17_2 = false
          return L17_2
        end
      end
    end
  end
  L11_2 = true
  return L11_2
end
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = {}
  L2_2 = #A0_2
  if L2_2 < 3 then
    return L1_2
  end
  L2_2 = L6_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = 2
    L3_2 = #A0_2
    L3_2 = L3_2 - 1
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = table
      L6_2 = L6_2.insert
      L7_2 = L1_2
      L8_2 = {}
      L9_2 = A0_2[1]
      L10_2 = A0_2[L5_2]
      L11_2 = L5_2 + 1
      L11_2 = A0_2[L11_2]
      L8_2[1] = L9_2
      L8_2[2] = L10_2
      L8_2[3] = L11_2
      L6_2(L7_2, L8_2)
    end
    return L1_2
  end
  L2_2 = {}
  L3_2 = 1
  L4_2 = #A0_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2[L6_2]
    L2_2[L6_2] = L7_2
  end
  while true do
    L3_2 = #L2_2
    if not (L3_2 > 3) then
      break
    end
    L3_2 = false
    L4_2 = 1
    L5_2 = #L2_2
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L8_2 = L8_1
      L9_2 = L2_2
      L10_2 = L7_2
      L8_2 = L8_2(L9_2, L10_2)
      if L8_2 then
        if 1 == L7_2 then
          L8_2 = #L2_2
          if L8_2 then
            goto lbl_62
          end
        end
        L8_2 = L7_2 - 1
        ::lbl_62::
        L8_2 = L2_2[L8_2]
        L9_2 = L2_2[L7_2]
        L10_2 = #L2_2
        if L7_2 == L10_2 then
          L10_2 = 1
          if L10_2 then
            goto lbl_72
          end
        end
        L10_2 = L7_2 + 1
        ::lbl_72::
        L10_2 = L2_2[L10_2]
        L11_2 = table
        L11_2 = L11_2.insert
        L12_2 = L1_2
        L13_2 = {}
        L14_2 = L8_2
        L15_2 = L9_2
        L16_2 = L10_2
        L13_2[1] = L14_2
        L13_2[2] = L15_2
        L13_2[3] = L16_2
        L11_2(L12_2, L13_2)
        L11_2 = table
        L11_2 = L11_2.remove
        L12_2 = L2_2
        L13_2 = L7_2
        L11_2(L12_2, L13_2)
        L3_2 = true
        break
      end
    end
    if not L3_2 then
      L4_2 = print
      L5_2 = "Unable to triangulate polygon for debug drawing."
      L4_2(L5_2)
      break
    end
  end
  L3_2 = #L2_2
  if 3 == L3_2 then
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = L1_2
    L5_2 = {}
    L6_2 = L2_2[1]
    L7_2 = L2_2[2]
    L8_2 = L2_2[3]
    L5_2[1] = L6_2
    L5_2[2] = L7_2
    L5_2[3] = L8_2
    L3_2(L4_2, L5_2)
  end
  return L1_2
end
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "vector3" == L1_2 then
    return A0_2
  else
    L1_2 = type
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if "table" == L1_2 then
      L1_2 = vector3
      L2_2 = A0_2.x
      if not L2_2 then
        L2_2 = A0_2[1]
      end
      L3_2 = A0_2.y
      if not L3_2 then
        L3_2 = A0_2[2]
      end
      L4_2 = A0_2.z
      if not L4_2 then
        L4_2 = A0_2[3]
      end
      return L1_2(L2_2, L3_2, L4_2)
    else
      L1_2 = error
      L2_2 = "Invalid coordinate type, expected vector3 or table."
      L1_2(L2_2)
    end
  end
end
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2.id
  L1_2 = L0_1
  L1_2[L2_2] = nil
  L2_2 = A0_2.id
  L1_2 = L1_1
  L1_2[L2_2] = nil
  L1_2 = ipairs
  L2_2 = L2_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.id
    L8_2 = A0_2.id
    if L7_2 == L8_2 then
      L7_2 = table
      L7_2 = L7_2.remove
      L8_2 = L2_1
      L9_2 = L5_2
      L7_2(L8_2, L9_2)
      break
    end
  end
  L1_2 = ipairs
  L2_2 = L3_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.id
    L8_2 = A0_2.id
    if L7_2 == L8_2 then
      L7_2 = table
      L7_2 = L7_2.remove
      L8_2 = L3_1
      L9_2 = L5_2
      L7_2(L8_2, L9_2)
      break
    end
  end
end
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L1_2 = A0_2.triangles
  if not L1_2 then
    return
  end
  L1_2 = ipairs
  L2_2 = A0_2.triangles
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = DrawPoly
    L8_2 = L6_2[1]
    L8_2 = L8_2.x
    L9_2 = L6_2[1]
    L9_2 = L9_2.y
    L10_2 = L6_2[1]
    L10_2 = L10_2.z
    L11_2 = L6_2[2]
    L11_2 = L11_2.x
    L12_2 = L6_2[2]
    L12_2 = L12_2.y
    L13_2 = L6_2[2]
    L13_2 = L13_2.z
    L14_2 = L6_2[3]
    L14_2 = L14_2.x
    L15_2 = L6_2[3]
    L15_2 = L15_2.y
    L16_2 = L6_2[3]
    L16_2 = L16_2.z
    L17_2 = A0_2.debugColour
    L17_2 = L17_2.r
    L18_2 = A0_2.debugColour
    L18_2 = L18_2.g
    L19_2 = A0_2.debugColour
    L19_2 = L19_2.b
    L20_2 = A0_2.debugColour
    L20_2 = L20_2.a
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  end
  L1_2 = 1
  L2_2 = A0_2.polygon
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2.polygon
    L5_2 = L5_2[L4_2]
    L6_2 = A0_2.polygon
    L7_2 = A0_2.polygon
    L7_2 = #L7_2
    L7_2 = L4_2 % L7_2
    L7_2 = L7_2 + 1
    L6_2 = L6_2[L7_2]
    L7_2 = DrawLine
    L8_2 = L5_2.x
    L9_2 = L5_2.y
    L10_2 = L5_2.z
    L11_2 = L6_2.x
    L12_2 = L6_2.y
    L13_2 = L6_2.z
    L14_2 = A0_2.debugColour
    L14_2 = L14_2.r
    L15_2 = A0_2.debugColour
    L15_2 = L15_2.g
    L16_2 = A0_2.debugColour
    L16_2 = L16_2.b
    L17_2 = 255
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  end
end
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2
  L1_2 = DrawMarker
  L2_2 = 28
  L3_2 = A0_2.coords
  L3_2 = L3_2.x
  L4_2 = A0_2.coords
  L4_2 = L4_2.y
  L5_2 = A0_2.coords
  L5_2 = L5_2.z
  L6_2 = 0
  L7_2 = 0
  L8_2 = 0
  L9_2 = 0
  L10_2 = 0
  L11_2 = 0
  L12_2 = A0_2.radius
  L13_2 = A0_2.radius
  L14_2 = A0_2.radius
  L15_2 = A0_2.debugColour
  L15_2 = L15_2.r
  L16_2 = A0_2.debugColour
  L16_2 = L16_2.g
  L17_2 = A0_2.debugColour
  L17_2 = L17_2.b
  L18_2 = A0_2.debugColour
  L18_2 = L18_2.a
  L19_2 = false
  L20_2 = false
  L21_2 = 2
  L22_2 = false
  L23_2 = nil
  L24_2 = nil
  L25_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
end
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L10_1
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = L4_1
  L4_2 = A0_2.polygon
  L5_2 = L2_2
  return L3_2(L4_2, L5_2)
end
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L10_1
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.coords
  L3_2 = L3_2 - L2_2
  L3_2 = #L3_2
  L4_2 = A0_2.radius
  L3_2 = L3_2 < L4_2
  return L3_2
end
function L16_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  if not A1_2 then
    A0_2.debugColour = nil
    A0_2.triangles = nil
    A0_2.debug = nil
    L4_2 = A0_2.id
    L3_2 = L1_1
    L3_2[L4_2] = nil
    return
  end
  L3_2 = {}
  if A2_2 then
    L4_2 = A2_2.r
    if L4_2 then
      goto lbl_18
    end
  end
  L4_2 = 255
  ::lbl_18::
  L3_2.r = L4_2
  if A2_2 then
    L4_2 = A2_2.g
    if L4_2 then
      goto lbl_25
    end
  end
  L4_2 = 42
  ::lbl_25::
  L3_2.g = L4_2
  if A2_2 then
    L4_2 = A2_2.b
    if L4_2 then
      goto lbl_32
    end
  end
  L4_2 = 24
  ::lbl_32::
  L3_2.b = L4_2
  if A2_2 then
    L4_2 = A2_2.a
    if L4_2 then
      goto lbl_39
    end
  end
  L4_2 = 100
  ::lbl_39::
  L3_2.a = L4_2
  A0_2.debugColour = L3_2
  L3_2 = A0_2.type
  if "sphere" == L3_2 then
    L3_2 = L13_1
    A0_2.debug = L3_2
  else
    L3_2 = A0_2.type
    if "box" ~= L3_2 then
      L3_2 = A0_2.type
      if "poly" ~= L3_2 then
        goto lbl_59
      end
    end
    L3_2 = L9_1
    L4_2 = A0_2.polygon
    L3_2 = L3_2(L4_2)
    A0_2.triangles = L3_2
    L3_2 = L12_1
    A0_2.debug = L3_2
  end
  ::lbl_59::
end
L17_1 = CreateThread
function L18_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  while true do
    L0_2 = 300
    L1_2 = GetEntityCoords
    L2_2 = WSB
    L2_2 = L2_2.cache
    L2_2 = L2_2.ped
    L1_2 = L1_2(L2_2)
    L2_2 = pairs
    L3_2 = L0_1
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L8_2 = L7_2.coords
      L8_2 = L8_2 - L1_2
      L8_2 = #L8_2
      L7_2.distance = L8_2
      L9_2 = L7_2
      L8_2 = L7_2.contains
      L10_2 = L1_2
      L8_2 = L8_2(L9_2, L10_2)
      if L8_2 then
        L9_2 = L7_2.insideZone
        if not L9_2 then
          L7_2.insideZone = true
          L9_2 = L7_2.onEnter
          if L9_2 then
            L9_2 = table
            L9_2 = L9_2.insert
            L10_2 = L2_1
            L11_2 = L7_2
            L9_2(L10_2, L11_2)
          end
          L9_2 = L7_2.inside
          if L9_2 then
            L10_2 = L7_2.id
            L9_2 = L1_1
            L9_2[L10_2] = L7_2
          end
        end
      else
        L9_2 = L7_2.insideZone
        if L9_2 then
          L7_2.insideZone = false
          L10_2 = L7_2.id
          L9_2 = L1_1
          L9_2[L10_2] = nil
          L9_2 = L7_2.onExit
          if L9_2 then
            L9_2 = table
            L9_2 = L9_2.insert
            L10_2 = L3_1
            L11_2 = L7_2
            L9_2(L10_2, L11_2)
          end
        end
      end
      L9_2 = L7_2.debug
      if L9_2 then
        L9_2 = type
        L10_2 = L7_2.debug
        L9_2 = L9_2(L10_2)
        if "function" == L9_2 then
          L0_2 = 0
          L10_2 = L7_2
          L9_2 = L7_2.debug
          L9_2(L10_2)
        else
          L10_2 = L7_2
          L9_2 = L7_2.setDebug
          L11_2 = true
          L12_2 = L7_2.debugColour
          if not L12_2 then
            L12_2 = nil
          end
          L9_2(L10_2, L11_2, L12_2)
        end
      end
    end
    L2_2 = L2_1
    L2_2 = #L2_2
    if L2_2 > 0 then
      L2_2 = table
      L2_2 = L2_2.sort
      L3_2 = L2_1
      function L4_2(A0_3, A1_3)
        local L2_3, L3_3
        L2_3 = A0_3.distance
        L3_3 = A1_3.distance
        L2_3 = L2_3 < L3_3
        return L2_3
      end
      L2_2(L3_2, L4_2)
      L2_2 = ipairs
      L3_2 = L2_1
      L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
      for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
        L8_2 = L7_2.onEnter
        if L8_2 then
          L8_2 = L7_2.onEnter
          L9_2 = L7_2
          L8_2(L9_2)
        end
      end
      L2_2 = {}
      L2_1 = L2_2
    end
    L2_2 = L3_1
    L2_2 = #L2_2
    if L2_2 > 0 then
      L2_2 = table
      L2_2 = L2_2.sort
      L3_2 = L3_1
      function L4_2(A0_3, A1_3)
        local L2_3, L3_3
        L2_3 = A0_3.distance
        L3_3 = A1_3.distance
        L2_3 = L2_3 > L3_3
        return L2_3
      end
      L2_2(L3_2, L4_2)
      L2_2 = ipairs
      L3_2 = L3_1
      L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
      for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
        L8_2 = L7_2.onExit
        if L8_2 then
          L8_2 = L7_2.onExit
          L9_2 = L7_2
          L8_2(L9_2)
        end
      end
      L2_2 = {}
      L3_1 = L2_2
    end
    L2_2 = pairs
    L3_2 = L1_1
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L8_2 = L7_2.inside
      if L8_2 then
        L8_2 = L7_2.inside
        L9_2 = L7_2
        L8_2(L9_2)
      end
    end
    L2_2 = Wait
    L3_2 = L0_2
    L2_2(L3_2)
  end
end
L17_1(L18_1)
L17_1 = WSB
L17_1 = L17_1.zones
function L18_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = L0_1
  L1_2 = #L1_2
  L1_2 = L1_2 + 1
  A0_2.id = L1_2
  L1_2 = A0_2.thickness
  if not L1_2 then
    L1_2 = 4
  end
  A0_2.thickness = L1_2
  L1_2 = {}
  L2_2 = ipairs
  L3_2 = A0_2.points
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L1_2
    L10_2 = L10_1
    L11_2 = L7_2
    L10_2, L11_2 = L10_2(L11_2)
    L8_2(L9_2, L10_2, L11_2)
  end
  A0_2.polygon = L1_2
  L2_2 = L5_1
  L3_2 = A0_2.polygon
  L2_2 = L2_2(L3_2)
  A0_2.coords = L2_2
  A0_2.type = "poly"
  function L2_2(A0_3)
    local L1_3, L2_3
    L1_3 = L11_1
    L2_3 = A0_3
    L1_3(L2_3)
  end
  A0_2.remove = L2_2
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = L14_1
    L3_3 = A0_3
    L4_3 = A1_3
    return L2_3(L3_3, L4_3)
  end
  A0_2.contains = L2_2
  function L2_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3
    L3_3 = L16_1
    L4_3 = A0_3
    L5_3 = A1_3
    L6_3 = A2_3
    L3_3(L4_3, L5_3, L6_3)
  end
  A0_2.setDebug = L2_2
  L3_2 = A0_2.id
  L2_2 = L0_1
  L2_2[L3_2] = A0_2
  return A0_2
end
L17_1.poly = L18_1
L17_1 = WSB
L17_1 = L17_1.zones
function L18_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L1_2 = L0_1
  L1_2 = #L1_2
  L1_2 = L1_2 + 1
  A0_2.id = L1_2
  L1_2 = L10_1
  L2_2 = A0_2.coords
  L1_2 = L1_2(L2_2)
  A0_2.coords = L1_2
  L1_2 = A0_2.size
  if L1_2 then
    L1_2 = L10_1
    L2_2 = A0_2.size
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_23
    end
  end
  L1_2 = vector3
  L2_2 = 2
  L3_2 = 2
  L4_2 = 2
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  ::lbl_23::
  L2_2 = L1_2.x
  L2_2 = L2_2 / 2
  L3_2 = L1_2.y
  L3_2 = L3_2 / 2
  L4_2 = A0_2.rotation
  if not L4_2 then
    L4_2 = 0
  end
  A0_2.rotation = L4_2
  L4_2 = math
  L4_2 = L4_2.rad
  L5_2 = A0_2.rotation
  L4_2 = L4_2(L5_2)
  L5_2 = {}
  L6_2 = vector3
  L7_2 = L2_2
  L8_2 = L3_2
  L9_2 = 0
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = vector3
  L8_2 = -L2_2
  L9_2 = L3_2
  L10_2 = 0
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L8_2 = vector3
  L9_2 = -L2_2
  L10_2 = -L3_2
  L11_2 = 0
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  L9_2 = vector3
  L10_2 = L2_2
  L11_2 = -L3_2
  L12_2 = 0
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L9_2(L10_2, L11_2, L12_2)
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L5_2[3] = L8_2
  L5_2[4] = L9_2
  L5_2[5] = L10_2
  L5_2[6] = L11_2
  L5_2[7] = L12_2
  L5_2[8] = L13_2
  L5_2[9] = L14_2
  L5_2[10] = L15_2
  L5_2[11] = L16_2
  L5_2[12] = L17_2
  L5_2[13] = L18_2
  L5_2[14] = L19_2
  L5_2[15] = L20_2
  L6_2 = {}
  L7_2 = ipairs
  L8_2 = L5_2
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
  for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
    L13_2 = L12_2.x
    L14_2 = math
    L14_2 = L14_2.cos
    L15_2 = L4_2
    L14_2 = L14_2(L15_2)
    L13_2 = L13_2 * L14_2
    L14_2 = L12_2.y
    L15_2 = math
    L15_2 = L15_2.sin
    L16_2 = L4_2
    L15_2 = L15_2(L16_2)
    L14_2 = L14_2 * L15_2
    L13_2 = L13_2 - L14_2
    L14_2 = L12_2.x
    L15_2 = math
    L15_2 = L15_2.sin
    L16_2 = L4_2
    L15_2 = L15_2(L16_2)
    L14_2 = L14_2 * L15_2
    L15_2 = L12_2.y
    L16_2 = math
    L16_2 = L16_2.cos
    L17_2 = L4_2
    L16_2 = L16_2(L17_2)
    L15_2 = L15_2 * L16_2
    L14_2 = L14_2 + L15_2
    L15_2 = table
    L15_2 = L15_2.insert
    L16_2 = L6_2
    L17_2 = vector3
    L18_2 = A0_2.coords
    L18_2 = L18_2.x
    L18_2 = L13_2 + L18_2
    L19_2 = A0_2.coords
    L19_2 = L19_2.y
    L19_2 = L14_2 + L19_2
    L20_2 = A0_2.coords
    L20_2 = L20_2.z
    L17_2, L18_2, L19_2, L20_2 = L17_2(L18_2, L19_2, L20_2)
    L15_2(L16_2, L17_2, L18_2, L19_2, L20_2)
  end
  A0_2.polygon = L6_2
  A0_2.type = "box"
  function L7_2(A0_3)
    local L1_3, L2_3
    L1_3 = L11_1
    L2_3 = A0_3
    L1_3(L2_3)
  end
  A0_2.remove = L7_2
  function L7_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = L14_1
    L3_3 = A0_3
    L4_3 = A1_3
    return L2_3(L3_3, L4_3)
  end
  A0_2.contains = L7_2
  function L7_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3
    L3_3 = L16_1
    L4_3 = A0_3
    L5_3 = A1_3
    L6_3 = A2_3
    L3_3(L4_3, L5_3, L6_3)
  end
  A0_2.setDebug = L7_2
  L8_2 = A0_2.id
  L7_2 = L0_1
  L7_2[L8_2] = A0_2
  return A0_2
end
L17_1.box = L18_1
L17_1 = WSB
L17_1 = L17_1.zones
function L18_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1
  L1_2 = #L1_2
  L1_2 = L1_2 + 1
  A0_2.id = L1_2
  L1_2 = L10_1
  L2_2 = A0_2.coords
  L1_2 = L1_2(L2_2)
  A0_2.coords = L1_2
  L1_2 = A0_2.radius
  if not L1_2 then
    L1_2 = 2
  end
  A0_2.radius = L1_2
  A0_2.type = "sphere"
  function L1_2(A0_3)
    local L1_3, L2_3
    L1_3 = L11_1
    L2_3 = A0_3
    L1_3(L2_3)
  end
  A0_2.remove = L1_2
  function L1_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = L15_1
    L3_3 = A0_3
    L4_3 = A1_3
    return L2_3(L3_3, L4_3)
  end
  A0_2.contains = L1_2
  function L1_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3
    L3_3 = L16_1
    L4_3 = A0_3
    L5_3 = A1_3
    L6_3 = A2_3
    L3_3(L4_3, L5_3, L6_3)
  end
  A0_2.setDebug = L1_2
  L2_2 = A0_2.id
  L1_2 = L0_1
  L1_2[L2_2] = A0_2
  return A0_2
end
L17_1.sphere = L18_1
L17_1 = WSB
L17_1 = L17_1.zones
function L18_1()
  local L0_2, L1_2
  L0_2 = L0_1
  return L0_2
end
L17_1.getAllZones = L18_1
L17_1 = WSB
L17_1 = L17_1.zones
function L18_1()
  local L0_2, L1_2
  L0_2 = L1_1
  return L0_2
end
L17_1.getCurrentZones = L18_1
