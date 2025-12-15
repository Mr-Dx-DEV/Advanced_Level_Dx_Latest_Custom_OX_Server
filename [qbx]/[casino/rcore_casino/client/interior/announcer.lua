local L0_1, L1_1, L2_1, L3_1
L0_1 = {}
CasinoAnnouncer = L0_1
L0_1 = 0
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = DebugStart
  L3_2 = "PlaySpeech"
  L2_2(L3_2)
  L2_2 = GAME_TIMER
  L3_2 = L0_1
  L2_2 = L2_2 - L3_2
  L3_2 = 5000
  if L2_2 < L3_2 then
    return
  end
  L2_2 = GAME_TIMER
  L0_1 = L2_2
  if not A1_2 then
    L2_2 = PlayAmbientSpeechFromPositionNative
    L3_2 = A0_2
    L4_2 = "CAS_PA"
    L5_2 = GetPlayerPosition
    L5_2 = L5_2()
    L6_2 = "SPEECH_PARAMS_FORCE_NORMAL_CRITICAL"
    L2_2(L3_2, L4_2, L5_2, L6_2)
  else
    L2_2 = CreateThread
    function L3_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3
      L0_3 = Wait
      L1_3 = A1_2
      L0_3(L1_3)
      L0_3 = PlayAmbientSpeechFromPositionNative
      L1_3 = A0_2
      L2_3 = "CAS_PA"
      L3_3 = GetPlayerPosition
      L3_3 = L3_3()
      L4_3 = "SPEECH_PARAMS_FORCE_NORMAL_CRITICAL"
      L0_3(L1_3, L2_3, L3_3, L4_3)
    end
    L4_2 = "PlaySpeech function"
    L2_2(L3_2, L4_2)
  end
end
L2_1 = CasinoAnnouncer
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1
  L2_2 = "CAPA_AAAA"
  L1_2(L2_2)
end
L2_1.AnnounceAd = L3_1
L2_1 = CasinoAnnouncer
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1
  L2_2 = "CAPA_AEAB"
  L1_2(L2_2)
end
L2_1.LuckyWheelStart = L3_1
L2_1 = CasinoAnnouncer
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1
  L2_2 = "CAPA_BDAA"
  L1_2(L2_2)
end
L2_1.ChampagneBought = L3_1
L2_1 = CasinoAnnouncer
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = L1_1
  L4_2 = A1_2
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
end
L2_1.AnnounceCustom = L3_1
L2_1 = CasinoAnnouncer
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if not A2_2 then
    A2_2 = 2500
  end
  L3_2 = "CAPA_AFAC"
  if 1 == A1_2 then
    L3_2 = "CAPA_AGAC"
  elseif 2 == A1_2 then
    L3_2 = "CAPA_AHAB"
  elseif 3 == A1_2 then
    L3_2 = "CAPA_AIAB"
  end
  L4_2 = L1_1
  L5_2 = L3_2
  L6_2 = A2_2
  L4_2(L5_2, L6_2)
end
L2_1.LuckyWheelPrice = L3_1
