local L0_1, L1_1
function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = ActiveTargets
  L3_2 = L3_2[A0_2]
  if not L3_2 then
    L3_2 = ActiveTargets
    L4_2 = {}
    L3_2[A0_2] = L4_2
  end
  L3_2 = ActiveTargets
  L3_2 = L3_2[A0_2]
  L3_2 = L3_2[A1_2]
  if not L3_2 then
    L3_2 = ActiveTargets
    L3_2 = L3_2[A0_2]
    L4_2 = {}
    L3_2[A1_2] = L4_2
  end
  if A2_2 then
    return A2_2
  end
  L3_2 = next
  L4_2 = ActiveTargets
  L4_2 = L4_2[A0_2]
  L4_2 = L4_2[A1_2]
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = A1_2
    L4_2 = "_1"
    L3_2 = L3_2 .. L4_2
    return L3_2
  end
  L3_2 = A1_2
  L4_2 = "_"
  L5_2 = ActiveTargets
  L5_2 = L5_2[A0_2]
  L5_2 = L5_2[A1_2]
  L5_2 = #L5_2
  L5_2 = L5_2 + 1
  L3_2 = L3_2 .. L4_2 .. L5_2
  return L3_2
end
GenerateTargetIdentifier = L0_1
function L0_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2
  L5_2 = ActiveTargets
  L5_2 = L5_2[A0_2]
  if not L5_2 then
    L5_2 = ActiveTargets
    L6_2 = {}
    L5_2[A0_2] = L6_2
  end
  L5_2 = ActiveTargets
  L5_2 = L5_2[A0_2]
  L5_2 = L5_2[A1_2]
  if not L5_2 then
    L5_2 = ActiveTargets
    L5_2 = L5_2[A0_2]
    L6_2 = {}
    L5_2[A1_2] = L6_2
  end
  L5_2 = ActiveTargets
  L5_2 = L5_2[A0_2]
  L5_2 = L5_2[A1_2]
  L6_2 = ActiveTargets
  L6_2 = L6_2[A0_2]
  L6_2 = L6_2[A1_2]
  L6_2 = #L6_2
  L6_2 = L6_2 + 1
  L7_2 = {}
  L7_2.identifier = A2_2
  L7_2.options = A3_2
  L5_2[L6_2] = L7_2
  if "model" == A0_2 and A4_2 then
    L5_2 = A4_2.models
    if L5_2 then
      L5_2 = ActiveTargets
      L5_2 = L5_2[A0_2]
      L5_2 = L5_2[A1_2]
      L6_2 = ActiveTargets
      L6_2 = L6_2[A0_2]
      L6_2 = L6_2[A1_2]
      L6_2 = #L6_2
      L5_2 = L5_2[L6_2]
      L6_2 = A4_2.models
      L5_2.model = L6_2
    end
  end
end
SaveTargetOptions = L0_1
function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = ActiveTargets
  L3_2 = L3_2[A0_2]
  if not L3_2 then
    return
  end
  L3_2 = ActiveTargets
  L3_2 = L3_2[A0_2]
  L3_2 = L3_2[A1_2]
  if not L3_2 then
    return
  end
  L3_2 = 1
  L4_2 = ActiveTargets
  L4_2 = L4_2[A0_2]
  L4_2 = L4_2[A1_2]
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = ActiveTargets
    L7_2 = L7_2[A0_2]
    L7_2 = L7_2[A1_2]
    L7_2 = L7_2[L6_2]
    L7_2 = L7_2.identifier
    if L7_2 == A2_2 then
      L7_2 = table
      L7_2 = L7_2.remove
      L8_2 = ActiveTargets
      L8_2 = L8_2[A0_2]
      L8_2 = L8_2[A1_2]
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
      break
    end
  end
end
RemoveActiveTarget = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  if not A1_2 then
    L2_2 = WSB
    A1_2 = L2_2.inventorySystem
  end
  if "codem-inventory" == A1_2 then
    L2_2 = {}
    L3_2 = ipairs
    L4_2 = A0_2.inventory
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = #L2_2
      L9_2 = L9_2 + 1
      L10_2 = {}
      L11_2 = L8_2.name
      L10_2.name = L11_2
      L11_2 = L8_2.price
      L10_2.price = L11_2
      L2_2[L9_2] = L10_2
    end
    return L2_2
  end
  L2_2 = 0
  L3_2 = {}
  L4_2 = A0_2.name
  L3_2.label = L4_2
  L4_2 = {}
  L3_2.items = L4_2
  L4_2 = ipairs
  L5_2 = A0_2.inventory
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L3_2.items
    L11_2 = L3_2.items
    L11_2 = #L11_2
    L11_2 = L11_2 + 1
    L12_2 = {}
    L13_2 = L9_2.name
    L12_2.name = L13_2
    L13_2 = L9_2.price
    L12_2.price = L13_2
    L13_2 = L2_2 + 1
    L12_2.slot = L13_2
    L12_2.amount = 500
    L13_2 = {}
    L12_2.info = L13_2
    L10_2[L11_2] = L12_2
    L2_2 = L2_2 + 1
  end
  return L3_2
end
ConvertShopData = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  L2_2 = 1
  L3_2 = A0_2.options
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = #L1_2
    L6_2 = L6_2 + 1
    L7_2 = {}
    L8_2 = A0_2.options
    L8_2 = L8_2[L5_2]
    L8_2 = L8_2.icon
    if not L8_2 then
      L8_2 = false
    end
    L7_2.icon = L8_2
    L8_2 = A0_2.options
    L8_2 = L8_2[L5_2]
    L8_2 = L8_2.title
    L7_2.label = L8_2
    L8_2 = A0_2.options
    L8_2 = L8_2[L5_2]
    L8_2 = L8_2.description
    if not L8_2 then
      L8_2 = false
    end
    L7_2.description = L8_2
    L8_2 = {}
    L9_2 = A0_2.options
    L9_2 = L9_2[L5_2]
    L9_2 = L9_2.event
    L8_2.event = L9_2
    L9_2 = A0_2.options
    L9_2 = L9_2[L5_2]
    L9_2 = L9_2.args
    if not L9_2 then
      L9_2 = false
    end
    L8_2.args = L9_2
    L7_2.args = L8_2
    L1_2[L6_2] = L7_2
  end
  return L1_2
end
FormatDataForOxLibMenu = L0_1
