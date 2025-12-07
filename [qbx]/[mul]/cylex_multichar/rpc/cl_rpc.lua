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
function L3_1(A0_2, ...)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = msgpack
  L1_2 = L1_2.pack
  L2_2 = {}
  L3_2, L4_2, L5_2, L6_2 = ...
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L2_2[3] = L5_2
  L2_2[4] = L6_2
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.len
  L2_2 = L2_2(L3_2)
  L3_2 = 5000
  if L2_2 < L3_2 then
    L2_2 = TriggerServerEventInternal
    L3_2 = A0_2
    L4_2 = L1_2
    L6_2 = L1_2
    L5_2 = L1_2.len
    L5_2, L6_2 = L5_2(L6_2)
    L2_2(L3_2, L4_2, L5_2, L6_2)
  else
    L2_2 = TriggerLatentServerEventInternal
    L3_2 = A0_2
    L4_2 = L1_2
    L6_2 = L1_2
    L5_2 = L1_2.len
    L5_2 = L5_2(L6_2)
    L6_2 = 128000
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
end
TriggerNetEvent = L3_1
L3_1 = RPC
function L4_1(A0_2, ...)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L2_1
  L2_2 = false
  L3_2 = L2_1
  L3_2 = L3_2 + 1
  L2_1 = L3_2
  L3_2 = L1_1
  L4_2 = promise
  L5_2 = L4_2
  L4_2 = L4_2.new
  L4_2 = L4_2(L5_2)
  L3_2[L1_2] = L4_2
  L3_2 = TriggerNetEvent
  L4_2 = "rpc:request:"
  L5_2 = A0_2
  L4_2 = L4_2 .. L5_2
  L5_2 = L0_1
  L6_2 = L1_2
  L7_2 = ParamPacker
  L8_2 = ...
  L7_2 = L7_2(L8_2)
  L8_2 = true
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = Citizen
  L3_2 = L3_2.SetTimeout
  L4_2 = 20000
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L2_2
    if not L0_3 then
      L1_3 = L1_2
      L0_3 = L1_1
      L0_3 = L0_3[L1_3]
      L1_3 = L0_3
      L0_3 = L0_3.resolve
      L2_3 = {}
      L3_3 = nil
      L2_3[1] = L3_3
      L0_3(L1_3, L2_3)
      L0_3 = TriggerServerEvent
      L1_3 = "rpc:server:timeout"
      L2_3 = L0_1
      L3_3 = A0_2
      L0_3(L1_3, L2_3, L3_3)
    end
  end
  L3_2(L4_2, L5_2)
  L3_2 = Citizen
  L3_2 = L3_2.Await
  L4_2 = L1_1
  L4_2 = L4_2[L1_2]
  L3_2 = L3_2(L4_2)
  L2_2 = true
  L4_2 = ClearPromise
  L5_2 = L1_2
  L4_2(L5_2)
  L4_2 = ParamUnpacker
  L5_2 = L3_2
  return L4_2(L5_2)
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
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L3_3 = nil
    L4_3 = pcall
    function L5_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = ParamPacker
      L1_4 = A1_2
      L2_4 = ParamUnpacker
      L3_4 = A2_3
      L2_4, L3_4 = L2_4(L3_4)
      L1_4, L2_4, L3_4 = L1_4(L2_4, L3_4)
      L0_4 = L0_4(L1_4, L2_4, L3_4)
      L3_3 = L0_4
    end
    L4_3, L5_3 = L4_3(L5_3)
    if not L4_3 then
      L6_3 = TriggerServerEvent
      L7_3 = "rpc:client:error"
      L8_3 = L0_1
      L9_3 = A0_3
      L10_3 = A0_2
      L11_3 = L5_3
      L6_3(L7_3, L8_3, L9_3, L10_3, L11_3)
    end
    if nil == L3_3 then
      L6_3 = {}
      L3_3 = L6_3
    end
    L6_3 = TriggerNetEvent
    L7_3 = "rpc:response"
    L8_3 = A0_3
    L9_3 = A1_3
    L10_3 = L3_3
    L11_3 = true
    L6_3(L7_3, L8_3, L9_3, L10_3, L11_3)
  end
  L2_2(L3_2, L4_2)
end
L3_1.register = L4_1
L3_1 = RPC
function L4_1(A0_2)
  local L1_2
end
L3_1.remove = L4_1
