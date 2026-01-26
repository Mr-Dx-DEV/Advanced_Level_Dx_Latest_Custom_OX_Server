local L0_1, L1_1
L0_1 = {}
L1_1 = GetCurrentResourceName
L1_1 = L1_1()
L0_1.ResourceName = L1_1
Functions = L0_1
L0_1 = Functions
function L1_1(...)
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = true
  L1_2 = table
  L1_2 = L1_2.pack
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = ...
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L2_2 = ""
  L3_2 = ipairs
  L4_2 = L1_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    if L0_2 then
      L0_2 = false
    else
      L9_2 = L2_2
      L10_2 = " "
      L9_2 = L9_2 .. L10_2
      L2_2 = L9_2
    end
    L9_2 = L2_2
    L10_2 = tostring
    L11_2 = L8_2
    L10_2 = L10_2(L11_2)
    L9_2 = L9_2 .. L10_2
    L2_2 = L9_2
  end
  L3_2 = print
  L4_2 = "^5["
  L5_2 = Functions
  L5_2 = L5_2.ResourceName
  L6_2 = "]:^7 "
  L7_2 = L2_2
  L8_2 = "^0"
  L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2
  L3_2(L4_2)
end
L0_1.Print = L1_1
L0_1 = Functions
function L1_1(...)
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = Config
  L0_2 = L0_2.Debug
  if not L0_2 then
    return
  end
  L0_2 = true
  L1_2 = table
  L1_2 = L1_2.pack
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = ...
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L2_2 = ""
  L3_2 = ipairs
  L4_2 = L1_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    if L0_2 then
      L0_2 = false
    else
      L9_2 = L2_2
      L10_2 = " "
      L9_2 = L9_2 .. L10_2
      L2_2 = L9_2
    end
    L9_2 = L2_2
    L10_2 = tostring
    L11_2 = L8_2
    L10_2 = L10_2(L11_2)
    L9_2 = L9_2 .. L10_2
    L2_2 = L9_2
  end
  L3_2 = print
  L4_2 = "^5["
  L5_2 = Functions
  L5_2 = L5_2.ResourceName
  L6_2 = "] (DEBUG MODE):^5 "
  L7_2 = L2_2
  L8_2 = "^0"
  L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2
  L3_2(L4_2)
end
L0_1.Debug = L1_1
L0_1 = Functions
function L1_1(...)
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = true
  L1_2 = table
  L1_2 = L1_2.pack
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = ...
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L2_2 = ""
  L3_2 = ipairs
  L4_2 = L1_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    if L0_2 then
      L0_2 = false
    else
      L9_2 = L2_2
      L10_2 = " "
      L9_2 = L9_2 .. L10_2
      L2_2 = L9_2
    end
    L9_2 = L2_2
    L10_2 = tostring
    L11_2 = L8_2
    L10_2 = L10_2(L11_2)
    L9_2 = L9_2 .. L10_2
    L2_2 = L9_2
  end
  L3_2 = print
  L4_2 = "^5[ERROR]:^1 "
  L5_2 = L2_2
  L6_2 = "^0"
  L4_2 = L4_2 .. L5_2 .. L6_2
  L3_2(L4_2)
end
L0_1.Error = L1_1
L0_1 = Functions
function L1_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A1_2 - A0_2
  L3_2 = L3_2 * A2_2
  L3_2 = A0_2 + L3_2
  return L3_2
end
L0_1.Lerp = L1_1
L0_1 = Functions
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = math
  L2_2 = L2_2.random
  L2_2 = L2_2()
  L3_2 = A1_2 - A0_2
  L2_2 = L2_2 * L3_2
  L2_2 = A0_2 + L2_2
  return L2_2
end
L0_1.RandomFloat = L1_1
L0_1 = Functions
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = nil
  if "table" == L1_2 then
    L3_2 = {}
    L2_2 = L3_2
    L3_2 = next
    L4_2 = A0_2
    L5_2 = nil
    L6_2 = nil
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = Functions
      L9_2 = L9_2.DeepCopy
      L10_2 = L7_2
      L9_2 = L9_2(L10_2)
      L10_2 = Functions
      L10_2 = L10_2.DeepCopy
      L11_2 = L8_2
      L10_2 = L10_2(L11_2)
      L2_2[L9_2] = L10_2
    end
    L3_2 = setmetatable
    L4_2 = L2_2
    L5_2 = Functions
    L5_2 = L5_2.DeepCopy
    L6_2 = getmetatable
    L7_2 = A0_2
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L6_2(L7_2)
    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  else
    L2_2 = A0_2
  end
  return L2_2
end
L0_1.DeepCopy = L1_1
L0_1 = Functions
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
  L2_2 = string
  L2_2 = L2_2.gsub
  L3_2 = A0_2
  L4_2 = "[^"
  L5_2 = L1_2
  L6_2 = "=]"
  L4_2 = L4_2 .. L5_2 .. L6_2
  L5_2 = ""
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2 = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.gsub
  L4_2 = "."
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    if "=" == A0_3 then
      L1_3 = ""
      return L1_3
    end
    L1_3 = ""
    L2_3 = L1_2
    L3_3 = L2_3
    L2_3 = L2_3.find
    L4_3 = A0_3
    L2_3 = L2_3(L3_3, L4_3)
    L2_3 = L2_3 - 1
    L3_3 = 6
    L4_3 = 1
    L5_3 = -1
    for L6_3 = L3_3, L4_3, L5_3 do
      L7_3 = L1_3
      L8_3 = 2
      L8_3 = L8_3 ^ L6_3
      L8_3 = L2_3 % L8_3
      L9_3 = L6_3 - 1
      L10_3 = 2
      L9_3 = L10_3 ^ L9_3
      L9_3 = L2_3 % L9_3
      L8_3 = L8_3 - L9_3
      if L8_3 > 0 then
        L8_3 = "1"
        if L8_3 then
          goto lbl_37
        end
      end
      L8_3 = "0"
      ::lbl_37::
      L7_3 = L7_3 .. L8_3
      L1_3 = L7_3
    end
    return L1_3
  end
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = L2_2
  L2_2 = L2_2.gsub
  L4_2 = "%d%d%d?%d?%d?%d?%d?%d?"
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L1_3 = #A0_3
    if 8 ~= L1_3 then
      L1_3 = ""
      return L1_3
    end
    L1_3 = 0
    L2_3 = 1
    L3_3 = 8
    L4_3 = 1
    for L5_3 = L2_3, L3_3, L4_3 do
      L7_3 = A0_3
      L6_3 = A0_3.sub
      L8_3 = L5_3
      L9_3 = L5_3
      L6_3 = L6_3(L7_3, L8_3, L9_3)
      if "1" == L6_3 then
        L6_3 = 8
        L6_3 = L6_3 - L5_3
        L7_3 = 2
        L6_3 = L7_3 ^ L6_3
        if L6_3 then
          goto lbl_26
        end
      end
      L6_3 = 0
      ::lbl_26::
      L1_3 = L1_3 + L6_3
    end
    L2_3 = string
    L2_3 = L2_3.char
    L3_3 = L1_3
    return L2_3(L3_3)
  end
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  return L2_2
end
L0_1.DecodeBase64 = L1_1
L0_1 = Functions
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
  L3_2 = A0_2
  L2_2 = A0_2.gsub
  L4_2 = "."
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L1_3 = ""
    L3_3 = A0_3
    L2_3 = A0_3.byte
    L2_3 = L2_3(L3_3)
    L3_3 = 8
    L4_3 = 1
    L5_3 = -1
    for L6_3 = L3_3, L4_3, L5_3 do
      L7_3 = L1_3
      L8_3 = 2
      L8_3 = L8_3 ^ L6_3
      L8_3 = L2_3 % L8_3
      L9_3 = L6_3 - 1
      L10_3 = 2
      L9_3 = L10_3 ^ L9_3
      L9_3 = L2_3 % L9_3
      L8_3 = L8_3 - L9_3
      if L8_3 > 0 then
        L8_3 = "1"
        if L8_3 then
          goto lbl_29
        end
      end
      L8_3 = "0"
      ::lbl_29::
      L7_3 = L7_3 .. L8_3
      L1_3 = L7_3
    end
    return L1_3
  end
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = "0000"
  L2_2 = L2_2 .. L3_2
  L3_2 = L2_2
  L2_2 = L2_2.gsub
  L4_2 = "%d%d%d?%d?%d?%d?"
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L1_3 = #A0_3
    if L1_3 < 6 then
      L1_3 = ""
      return L1_3
    end
    L1_3 = 0
    L2_3 = 1
    L3_3 = 6
    L4_3 = 1
    for L5_3 = L2_3, L3_3, L4_3 do
      L7_3 = A0_3
      L6_3 = A0_3.sub
      L8_3 = L5_3
      L9_3 = L5_3
      L6_3 = L6_3(L7_3, L8_3, L9_3)
      if "1" == L6_3 then
        L6_3 = 6
        L6_3 = L6_3 - L5_3
        L7_3 = 2
        L6_3 = L7_3 ^ L6_3
        if L6_3 then
          goto lbl_26
        end
      end
      L6_3 = 0
      ::lbl_26::
      L1_3 = L1_3 + L6_3
    end
    L2_3 = L1_2
    L3_3 = L2_3
    L2_3 = L2_3.sub
    L4_3 = L1_3 + 1
    L5_3 = L1_3 + 1
    return L2_3(L3_3, L4_3, L5_3)
  end
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = {}
  L4_2 = ""
  L5_2 = "=="
  L6_2 = "="
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L4_2 = #A0_2
  L4_2 = L4_2 % 3
  L4_2 = L4_2 + 1
  L3_2 = L3_2[L4_2]
  L2_2 = L2_2 .. L3_2
  return L2_2
end
L0_1.EncodeBase64 = L1_1
