



local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = pcall
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2, L4_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L5_2 = DeleteResourceKvp
    L6_2 = A1_2
    return L5_2(L6_2)
  end
  L5_2 = L4_2 or L5_2
  if not L4_2 then
    L5_2 = A2_2
  end
  return L5_2
end
L1_1 = {}
L2_1 = GetConvar
L3_1 = "ox:locale"
L4_1 = "en"
L2_1 = L2_1(L3_1, L4_1)
L1_1.default_locale = L2_1
L2_1 = L0_1
L3_1 = GetResourceKvpString
L4_1 = "notification_position"
L5_1 = "top-right"
L2_1 = L2_1(L3_1, L4_1, L5_1)
L1_1.notification_position = L2_1
L2_1 = L0_1
L3_1 = GetResourceKvpInt
L4_1 = "notification_audio"
L5_1 = 1
L2_1 = L2_1(L3_1, L4_1, L5_1)
L2_1 = 1 == L2_1
L1_1.notification_audio = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A0_2 then
    L1_2 = A0_2.type
    if L1_2 then
      L1_2 = A0_2.type
      if "inform" == L1_2 then
        A0_2.type = "info"
      end
    end
  end
  L1_2 = L1_1.notification_audio
  if L1_2 then
    L1_2 = A0_2.sound
  end
  A0_2.sound = nil
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.action = "notification"
  L3_2.data = A0_2
  L2_2(L3_2)
  if not L1_2 then
    return
  end
  L2_2 = L1_2.bank
  L2_2 = nil ~= L2_2
  if L2_2 then
    L3_2 = Utils
    L3_2 = L3_2.requestAudioBank
    L4_2 = L1_2.bank
    L3_2(L4_2)
  end
  L3_2 = GetSoundId
  L3_2 = L3_2()
  L4_2 = PlaySoundFrontend
  L5_2 = L3_2
  L6_2 = L1_2.name
  L7_2 = L1_2.set
  L8_2 = true
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = ReleaseSoundId
  L5_2 = L3_2
  L4_2(L5_2)
  if L2_2 then
    L4_2 = ReleaseNamedScriptAudioBank
    L5_2 = L1_2.bank
    L4_2(L5_2)
  end
end
Notify = L2_1
