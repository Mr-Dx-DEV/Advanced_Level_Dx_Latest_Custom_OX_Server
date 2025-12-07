local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = GetCurrentResourceName
L0_1 = L0_1()
L1_1 = {}
L2_1 = 0
L3_1 = {}
RPC = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = Citizen
  L1_2 = L1_2.SetTimeout
  L2_2 = 5000
  function L3_2()
    local L0_3, L1_3
    L1_3 = A0_2
    L0_3 = L1_1
    L0_3[L1_3] = nil
  end
  L1_2(L2_2, L3_2)
end
ClearPromise = L3_1
function L3_1(...)
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = {}
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2 = ...
  L0_2[1] = L1_2
  L0_2[2] = L2_2
  L0_2[3] = L3_2
  L0_2[4] = L4_2
  L0_2[5] = L5_2
  L0_2[6] = L6_2
  L0_2[7] = L7_2
  L1_2 = {}
  L2_2 = 1
  L3_2 = 15
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = {}
    L7_2 = L0_2[L5_2]
    L6_2.param = L7_2
    L1_2[L5_2] = L6_2
  end
  return L1_2
end
ParamPacker = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A1_2 or nil
  if not A1_2 then
    L2_2 = 1
  end
  L3_2 = #A0_2
  if L2_2 <= L3_2 then
    L3_2 = A0_2[L2_2]
    L3_2 = L3_2.param
    L4_2 = ParamUnpacker
    L5_2 = A0_2
    L6_2 = L2_2 + 1
    L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
    return L3_2, L4_2, L5_2, L6_2
  end
end
ParamUnpacker = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A1_2 or nil
  if not A1_2 then
    L2_2 = 1
  end
  if L2_2 <= 15 then
    L3_2 = A0_2[L2_2]
    L4_2 = UnPacker
    L5_2 = A0_2
    L6_2 = L2_2 + 1
    L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
    return L3_2, L4_2, L5_2, L6_2
  end
end
UnPacker = L3_1
function L3_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = msgpack
  L2_2 = L2_2.pack
  L3_2 = {}
  L4_2, L5_2, L6_2, L7_2, L8_2 = ...
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L3_2[4] = L7_2
  L3_2[5] = L8_2
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2.len
  L3_2 = L3_2(L4_2)
  L4_2 = 5000
  if L3_2 < L4_2 then
    L3_2 = TriggerClientEventInternal
    L4_2 = A0_2
    L5_2 = A1_2
    L6_2 = L2_2
    L8_2 = L2_2
    L7_2 = L2_2.len
    L7_2, L8_2 = L7_2(L8_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  else
    L3_2 = TriggerLatentClientEventInternal
    L4_2 = A0_2
    L5_2 = A1_2
    L6_2 = L2_2
    L8_2 = L2_2
    L7_2 = L2_2.len
    L7_2 = L7_2(L8_2)
    L8_2 = 128000
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  end
end
TriggerClient = L3_1
L3_1 = RPC
function L4_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = L2_1
  L3_2 = false
  L4_2 = L2_1
  L4_2 = L4_2 + 1
  L2_1 = L4_2
  L4_2 = L1_1
  L5_2 = promise
  L6_2 = L5_2
  L5_2 = L5_2.new
  L5_2 = L5_2(L6_2)
  L4_2[L2_2] = L5_2
  L4_2 = TriggerClient
  L5_2 = "rpc:request:"
  L6_2 = A0_2
  L5_2 = L5_2 .. L6_2
  L6_2 = A1_2
  L7_2 = L0_1
  L8_2 = L2_2
  L9_2 = ParamPacker
  L10_2 = ...
  L9_2 = L9_2(L10_2)
  L10_2 = true
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L4_2 = Citizen
  L4_2 = L4_2.SetTimeout
  L5_2 = 20000
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L3_2
    if not L0_3 then
      L1_3 = L2_2
      L0_3 = L1_1
      L0_3 = L0_3[L1_3]
      L1_3 = L0_3
      L0_3 = L0_3.resolve
      L2_3 = {}
      L3_3 = nil
      L2_3[1] = L3_3
      L0_3(L1_3, L2_3)
      L0_3 = handleTimeout
      L1_3 = A1_2
      L2_3 = L0_1
      L3_3 = A0_2
      L0_3(L1_3, L2_3, L3_3)
    end
  end
  L4_2(L5_2, L6_2)
  L4_2 = Citizen
  L4_2 = L4_2.Await
  L5_2 = L1_1
  L5_2 = L5_2[L2_2]
  L4_2 = L4_2(L5_2)
  L3_2 = true
  L5_2 = ClearPromise
  L6_2 = L2_2
  L5_2(L6_2)
  L5_2 = ParamUnpacker
  L6_2 = L4_2
  return L5_2(L6_2)
end
L3_1.execute = L4_1
L3_1 = RPC
L4_1 = RPC
L4_1 = L4_1.execute
L3_1.executeLatent = L4_1
L3_1 = RegisterNetEvent
L4_1 = "rpc:response"
L3_1(L4_1)
L3_1 = AddEventHandler
L4_1 = "rpc:response"
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = L0_1
  if L3_2 == A0_2 then
    L3_2 = L1_1
    L3_2 = L3_2[A1_2]
    if L3_2 then
      L3_2 = L1_1
      L3_2 = L3_2[A1_2]
      L4_2 = L3_2
      L3_2 = L3_2.resolve
      L5_2 = A2_2
      L3_2(L4_2, L5_2)
    end
  end
end
L3_1(L4_1, L5_1)
L3_1 = RPC
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = RegisterNetEvent
  L3_2 = "rpc:request:"
  L4_2 = A0_2
  L3_2 = L3_2 .. L4_2
  function L4_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    L3_3 = nil
    L4_3 = source
    L5_3 = pcall
    function L6_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4
      L0_4 = ParamPacker
      L1_4 = A1_2
      L2_4 = L4_3
      L3_4 = ParamUnpacker
      L4_4 = A2_3
      L3_4, L4_4 = L3_4(L4_4)
      L1_4, L2_4, L3_4, L4_4 = L1_4(L2_4, L3_4, L4_4)
      L0_4 = L0_4(L1_4, L2_4, L3_4, L4_4)
      L3_3 = L0_4
    end
    L5_3, L6_3 = L5_3(L6_3)
    if not L5_3 then
      L7_3 = handleError
      L8_3 = L4_3
      L9_3 = L0_1
      L10_3 = A0_3
      L11_3 = A0_2
      L12_3 = L6_3
      L7_3(L8_3, L9_3, L10_3, L11_3, L12_3)
    end
    if nil == L3_3 then
      L7_3 = {}
      L3_3 = L7_3
    end
    L7_3 = TriggerClient
    L8_3 = "rpc:response"
    L9_3 = L4_3
    L10_3 = A0_3
    L11_3 = A1_3
    L12_3 = L3_3
    L13_3 = true
    L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
  end
  L2_2(L3_2, L4_2)
end
L3_1.register = L4_1
L3_1 = RPC
function L4_1(A0_2)
  local L1_2
end
L3_1.remove = L4_1
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L5_2 = L0_1
  if A1_2 == L5_2 then
    L5_2 = error
    L6_2 = string
    L6_2 = L6_2.format
    L7_2 = "[RPC Error][%s] Source: %s, Name: %s, Error: %s"
    L8_2 = A1_2
    L9_2 = A0_2
    L10_2 = A3_2
    L11_2 = A4_2
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  end
end
handleError = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = L0_1
  if A1_2 == L3_2 then
    L3_2 = print
    L4_2 = string
    L4_2 = L4_2.format
    L5_2 = "[RPC Timeout][%s] Source: %s, Name: %s"
    L6_2 = A1_2
    L7_2 = A0_2
    L8_2 = A2_2
    L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  end
end
handleTimeout = L3_1
L3_1 = RegisterNetEvent
L4_1 = "rpc:client:error"
function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L5_2 = source
  L6_2 = handleError
  L7_2 = L5_2
  L8_2 = A0_2
  L9_2 = A1_2
  L10_2 = A2_2
  L11_2 = A3_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
end
L3_1(L4_1, L5_1)
L3_1 = RegisterNetEvent
L4_1 = "rpc:server:timeout"
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = source
  L3_2 = handleTimeout
  L4_2 = source
  L5_2 = A0_2
  L6_2 = A1_2
  L3_2(L4_2, L5_2, L6_2)
end
L3_1(L4_1, L5_1)
