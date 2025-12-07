local L0_1, L1_1, L2_1, L3_1
L0_1 = 0
L1_1 = {}
L2_1 = {}
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  if not A1_2 then
    A1_2 = 512
  end
  if not A2_2 then
    A2_2 = 512
  end
  L3_2 = tostring
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = "x"
  L5_2 = tostring
  L6_2 = A2_2
  L5_2 = L5_2(L6_2)
  L3_2 = L3_2 .. L4_2 .. L5_2
  L4_2 = L1_1
  L4_2 = L4_2[L3_2]
  if L4_2 then
    L4_2 = L1_1
    L4_2 = L4_2[L3_2]
    L4_2 = #L4_2
    if L4_2 > 0 then
      L4_2 = pairs
      L5_2 = L1_1
      L5_2 = L5_2[L3_2]
      L4_2, L5_2 = L4_2(L5_2)
      L6_2 = L4_2
      L7_2 = L5_2
      L6_2, L7_2 = L6_2(L7_2)
      L8_2 = L7_2
      L9_2 = L2_1
      L9_2 = L9_2[L8_2]
      L9_2 = L9_2.textureDictName
      L10_2 = L2_1
      L10_2 = L10_2[L8_2]
      L10_2 = L10_2.textureName
      L7_2 = nil
      L11_2 = table
      L11_2 = L11_2.remove
      L12_2 = L1_1
      L12_2 = L12_2[L3_2]
      L13_2 = L6_2
      L11_2(L12_2, L13_2)
      L11_2 = SetDuiUrl
      L12_2 = L2_1
      L12_2 = L12_2[L8_2]
      L12_2 = L12_2.duiObject
      L13_2 = A0_2
      L11_2(L12_2, L13_2)
      L11_2 = {}
      L11_2.id = L8_2
      L11_2.dictionary = L9_2
      L11_2.texture = L10_2
      return L11_2
    end
  end
  L4_2 = L0_1
  L4_2 = L4_2 + 1
  L0_1 = L4_2
  L4_2 = L3_2
  L5_2 = "-dict-"
  L6_2 = tostring
  L7_2 = L0_1
  L6_2 = L6_2(L7_2)
  L4_2 = L4_2 .. L5_2 .. L6_2
  L5_2 = L3_2
  L6_2 = "-txt-"
  L7_2 = tostring
  L8_2 = L0_1
  L7_2 = L7_2(L8_2)
  L5_2 = L5_2 .. L6_2 .. L7_2
  L6_2 = CreateDui
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = A2_2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = CreateRuntimeTxd
  L8_2 = L4_2
  L7_2 = L7_2(L8_2)
  L8_2 = GetDuiHandle
  L9_2 = L6_2
  L8_2 = L8_2(L9_2)
  L9_2 = CreateRuntimeTextureFromDuiHandle
  L10_2 = L7_2
  L11_2 = L5_2
  L12_2 = L8_2
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L11_2 = L0_1
  L10_2 = L2_1
  L12_2 = {}
  L12_2.duiSize = L3_2
  L12_2.duiObject = L6_2
  L12_2.duiHandle = L8_2
  L12_2.dictionaryObject = L7_2
  L12_2.textureObject = L9_2
  L12_2.textureDictName = L4_2
  L12_2.textureName = L5_2
  L10_2[L11_2] = L12_2
  L10_2 = {}
  L11_2 = L0_1
  L10_2.id = L11_2
  L10_2.dictionary = L4_2
  L10_2.texture = L5_2
  L10_2.duiHandle = L6_2
  return L10_2
end
getDui = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L2_1
  L2_2 = L2_2[A0_2]
  if not L2_2 then
    return
  end
  L2_2 = L2_1
  L2_2 = L2_2[A0_2]
  L3_2 = SetDuiUrl
  L4_2 = L2_2.duiObject
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
changeDuiUrl = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L2_1
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    return
  end
  L1_2 = L2_1
  L1_2 = L1_2[A0_2]
  L2_2 = L1_2.duiSize
  L3_2 = SetDuiUrl
  L4_2 = L1_2.duiObject
  L5_2 = "about:blank"
  L3_2(L4_2, L5_2)
  L3_2 = L1_1
  L3_2 = L3_2[L2_2]
  if not L3_2 then
    L3_2 = L1_1
    L4_2 = {}
    L3_2[L2_2] = L4_2
  end
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = L1_1
  L4_2 = L4_2[L2_2]
  L5_2 = A0_2
  L3_2(L4_2, L5_2)
end
releaseDui = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L2_1
  L2_2 = L2_2[A0_2]
  if not L2_2 then
    return
  end
  L2_2 = L2_1
  L2_2 = L2_2[A0_2]
  L3_2 = SendDuiMessage
  L4_2 = L2_2.duiObject
  L5_2 = json
  L5_2 = L5_2.encode
  L6_2 = A1_2
  L5_2, L6_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2)
end
sendDuiMessage = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = L2_1
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    return
  end
  L1_2 = L2_1
  L1_2 = L1_2[A0_2]
  L2_2 = L1_2.duiObject
  return L2_2
end
getDuiHandle = L3_1
