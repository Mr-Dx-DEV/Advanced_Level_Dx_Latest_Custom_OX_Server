local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1, L41_1, L42_1, L43_1
L0_1 = {}
SlotMachine = L0_1
L0_1 = SlotMachine
L1_1 = SlotMachine
L0_1.__index = L1_1
L0_1 = SlotMachine
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2
  L5_2 = DebugStart
  L6_2 = "SlotMachine:create"
  L5_2(L6_2)
  L5_2 = {}
  L6_2 = setmetatable
  L7_2 = L5_2
  L8_2 = SlotMachine
  L6_2(L7_2, L8_2)
  L5_2.hash = A1_2
  L5_2.coords = A2_2
  L5_2.heading = A3_2
  L5_2.rotation = A4_2
  L5_2.broken = false
  L5_2.ped = nil
  L5_2.pedDict = nil
  L5_2.isSpinning = false
  L6_2 = {}
  L7_2 = nil
  L8_2 = nil
  L9_2 = nil
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L6_2[3] = L9_2
  L5_2.reelsObjects = L6_2
  L6_2 = {}
  L7_2 = false
  L8_2 = false
  L9_2 = false
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L6_2[3] = L9_2
  L5_2.reelsLocked = L6_2
  L6_2 = {}
  L7_2 = 0
  L8_2 = 0
  L9_2 = 0
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L6_2[3] = L9_2
  L5_2.lastRotations = L6_2
  function L6_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3
    L2_3 = L5_2.ped
    if L2_3 or A1_3 then
      L2_3 = PlaySound
      L3_3 = A0_3
      L4_3 = machineModels
      L5_3 = A1_2
      L4_3 = L4_3[L5_3]
      L4_3 = L4_3.sounds
      if A1_3 then
        L5_3 = PlayerPedId
        L5_3 = L5_3()
        if L5_3 then
          goto lbl_19
        end
      end
      L5_3 = L5_2.ped
      ::lbl_19::
      L6_3 = L5_2.ped
      if L6_3 then
      end
      L6_3 = true
      L2_3(L3_3, L4_3, L5_3, L6_3)
    end
  end
  L5_2.playSound = L6_2
  function L6_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L1_3 = L5_2.isSpinning
    if L1_3 then
      return
    end
    L5_2.isSpinning = true
    L1_3 = L5_2.playSound
    L2_3 = "spinning"
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
    L1_3 = 1
    L2_3 = 3
    L3_3 = 1
    for L4_3 = L1_3, L2_3, L3_3 do
      L5_3 = L5_2.createReel
      L6_3 = L4_3
      L7_3 = true
      L5_3(L6_3, L7_3)
      L5_3 = L5_2.reelsLocked
      L5_3[L4_3] = false
      L5_3 = SetEntityRotation
      L6_3 = L5_2.reelsObjects
      L6_3 = L6_3[L4_3]
      L7_3 = L5_2.lastRotations
      L7_3 = L7_3[L4_3]
      L8_3 = 0.0
      L9_3 = L5_2.heading
      L10_3 = true
      L11_3 = true
      L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
    end
    L1_3 = CreateThread
    function L2_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4
      L0_4 = 0
      L1_4 = 0
      while true do
        L2_4 = L5_2.isSpinning
        if not L2_4 then
          break
        end
        L2_4 = 1000
        if not (L1_4 < L2_4) then
          break
        end
        L2_4 = Wait
        L3_4 = 8
        L2_4(L3_4)
        L2_4 = 2.5
        if L0_4 < L2_4 then
          L0_4 = L0_4 + 0.1
        end
        L1_4 = L1_4 + 1
        L2_4 = 1
        L3_4 = 3
        L4_4 = 1
        for L5_4 = L2_4, L3_4, L4_4 do
          L6_4 = L5_2.reelsLocked
          L6_4 = L6_4[L5_4]
          if not L6_4 then
            L6_4 = L5_2.lastRotations
            L7_4 = L5_2.lastRotations
            L7_4 = L7_4[L5_4]
            L7_4 = L7_4 + L0_4
            L6_4[L5_4] = L7_4
            L6_4 = SetEntityRotation
            L7_4 = L5_2.reelsObjects
            L7_4 = L7_4[L5_4]
            L8_4 = L5_2.lastRotations
            L8_4 = L8_4[L5_4]
            L9_4 = 0.0
            L10_4 = L5_2.heading
            L11_4 = true
            L12_4 = true
            L6_4(L7_4, L8_4, L9_4, L10_4, L11_4, L12_4)
          end
        end
      end
    end
    L3_3 = "spin the reels for a bit"
    L1_3(L2_3, L3_3)
  end
  L5_2.animateSpinning = L6_2
  function L6_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
    L3_3 = GetInitialAnimOffsets
    L4_3 = L5_2.pedDict
    L5_3 = A0_3
    L6_3 = L5_2.coords
    L7_3 = 0.0
    L8_3 = 0.0
    L9_3 = L5_2.heading
    L3_3, L4_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
    L5_3 = TaskPlayAnimAdvanced
    L6_3 = L5_2.ped
    L7_3 = L5_2.pedDict
    L8_3 = A0_3
    L9_3 = L3_3
    L10_3 = L4_3
    L11_3 = 3.0
    L12_3 = 3.0
    L13_3 = -1
    L14_3 = 2
    L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
    if A2_3 then
      L5_3 = WaitTaskAnimToReachTime
      L6_3 = L5_2.ped
      L7_3 = L5_2.pedDict
      L8_3 = A0_3
      L9_3 = A2_3
      L10_3 = 5000
      L11_3 = 500
      L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
    end
  end
  L5_2.pedPlayAndWait = L6_2
  function L6_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L5_2.broken
    if L1_3 then
      return
    end
    L1_3 = CreateThread
    function L2_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4
      while true do
        L0_4 = IN_CASINO
        if not L0_4 then
          break
        end
        L0_4 = GetPlayerPosition
        L0_4 = L0_4()
        L1_4 = L5_2.coords
        L0_4 = L0_4 - L1_4
        L0_4 = #L0_4
        if L0_4 < 25.0 then
          break
        end
        L0_4 = Wait
        L1_4 = 1000
        L0_4(L1_4)
      end
      L0_4 = IN_CASINO
      if L0_4 then
        L0_4 = L5_2.pedPlayAndWait
        if L0_4 then
          goto lbl_23
        end
      end
      do return end
      ::lbl_23::
      L0_4 = GetHashKey
      L1_4 = "a_f_m_tramp_01"
      L0_4 = L0_4(L1_4)
      L1_4 = RequestModelAndWait
      L2_4 = L0_4
      L1_4(L2_4)
      L1_4 = CreatePed
      L2_4 = 2
      L3_4 = L0_4
      L4_4 = L5_2.coords
      L5_4 = A3_2
      L5_4 = L5_4 + 180.0
      L6_4 = false
      L7_4 = false
      L1_4 = L1_4(L2_4, L3_4, L4_4, L5_4, L6_4, L7_4)
      L5_2.ped = L1_4
      L1_4 = SetEntityCollision
      L2_4 = L5_2.ped
      L3_4 = false
      L4_4 = false
      L1_4(L2_4, L3_4, L4_4)
      L1_4 = FreezeEntityPosition
      L2_4 = L5_2.ped
      L3_4 = true
      L1_4(L2_4, L3_4)
      L1_4 = SetModelAsNoLongerNeeded
      L2_4 = L0_4
      L1_4(L2_4)
      L1_4 = SetPedBrave
      L2_4 = L5_2.ped
      L1_4(L2_4)
      L1_4 = "anim_casino_a@amb@casino@games@slots@"
      L2_4 = IsPedMale
      L3_4 = L5_2.ped
      L2_4 = L2_4(L3_4)
      if L2_4 then
        L2_4 = "male"
        if L2_4 then
          goto lbl_65
        end
      end
      L2_4 = "female"
      ::lbl_65::
      L1_4 = L1_4 .. L2_4
      L5_2.pedDict = L1_4
      L1_4 = HasAnimDictLoaded
      L2_4 = L5_2.pedDict
      L1_4 = L1_4(L2_4)
      if not L1_4 then
        L1_4 = RequestAnimDictAndWait
        L2_4 = L5_2.pedDict
        L1_4(L2_4)
      end
      L1_4 = L5_2.pedPlayAndWait
      L2_4 = "betidle_press_betone_a"
      L3_4 = false
      L4_4 = 0.95
      L1_4(L2_4, L3_4, L4_4)
      while true do
        L1_4 = IN_CASINO
        if not L1_4 then
          break
        end
        L1_4 = GetPlayerPosition
        L1_4 = L1_4()
        L2_4 = L5_2.coords
        L1_4 = L1_4 - L2_4
        L1_4 = #L1_4
        if L1_4 < 10.0 then
          L1_4 = ELECTRICITY_BROKEN
          if not L1_4 then
            L1_4 = RandomNumber
            L2_4 = 1
            L3_4 = 4
            L1_4 = L1_4(L2_4, L3_4)
            L1_4 = 1
            L2_4 = 1
            L3_4 = L1_4
            L4_4 = 1
            for L5_4 = L2_4, L3_4, L4_4 do
              L6_4 = Wait
              L7_4 = RandomNumber
              L8_4 = 1000
              L9_4 = 3000
              L7_4, L8_4, L9_4 = L7_4(L8_4, L9_4)
              L6_4(L7_4, L8_4, L9_4)
              L6_4 = L5_2.pedPlayAndWait
              L7_4 = "press_betone_a"
              L8_4 = false
              L9_4 = 0.95
              L6_4(L7_4, L8_4, L9_4)
            end
            L2_4 = L5_2.pedPlayAndWait
            L3_4 = "press_spin_a"
            L4_4 = false
            L5_4 = false
            L2_4(L3_4, L4_4, L5_4)
            L2_4 = L5_2.animateSpinning
            L3_4 = false
            L2_4(L3_4)
            L2_4 = L5_2.animateResults
            L3_4 = {}
            L4_4 = 1
            L5_4 = 2
            L6_4 = 3
            L3_4[1] = L4_4
            L3_4[2] = L5_4
            L3_4[3] = L6_4
            L4_4 = 1000
            L5_4 = false
            L2_4(L3_4, L4_4, L5_4)
            L2_4 = Wait
            L3_4 = 500
            L2_4(L3_4)
            L2_4 = L5_2.pedPlayAndWait
            L3_4 = GetRandomItem
            L4_4 = {}
            L5_4 = "spinning_a"
            L6_4 = "spinning_b"
            L7_4 = "spinning_c"
            L4_4[1] = L5_4
            L4_4[2] = L6_4
            L4_4[3] = L7_4
            L3_4 = L3_4(L4_4)
            L4_4 = false
            L5_4 = nil
            L2_4(L3_4, L4_4, L5_4)
            L2_4 = Wait
            L3_4 = 2000
            L2_4(L3_4)
            L2_4 = L5_2.pedPlayAndWait
            L3_4 = GetRandomItem
            L4_4 = {}
            L5_4 = "lose_a"
            L6_4 = "lose_b"
            L7_4 = "lose_c"
            L8_4 = "lose_d"
            L9_4 = "lose_e"
            L4_4[1] = L5_4
            L4_4[2] = L6_4
            L4_4[3] = L7_4
            L4_4[4] = L8_4
            L4_4[5] = L9_4
            L3_4 = L3_4(L4_4)
            L4_4 = false
            L5_4 = nil
            L2_4(L3_4, L4_4, L5_4)
            L2_4 = Wait
            L3_4 = 2000
            L2_4(L3_4)
            L2_4 = L5_2.pedPlayAndWait
            L3_4 = GetRandomItem
            L4_4 = {}
            L5_4 = "betidle_press_betone_a"
            L6_4 = "betidle_press_betone_b"
            L7_4 = "betidle_press_betone_c"
            L4_4[1] = L5_4
            L4_4[2] = L6_4
            L4_4[3] = L7_4
            L3_4 = L3_4(L4_4)
            L4_4 = true
            L5_4 = nil
            L2_4(L3_4, L4_4, L5_4)
          end
        end
        L1_4 = Wait
        L2_4 = 3000
        L1_4(L2_4)
      end
    end
    L3_3 = "Creating/Loading object and stuff for slots"
    L1_3(L2_3, L3_3)
  end
  L5_2.automate = L6_2
  function L6_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = "SLOTS_MES"
    if A0_3 then
      L2_3 = L1_3
      L3_3 = "P"
      L2_3 = L2_3 .. L3_3
      L1_3 = L2_3
    else
      L2_3 = L1_3
      L3_3 = "N"
      L2_3 = L2_3 .. L3_3
      L1_3 = L2_3
    end
    L2_3 = L1_3
    L3_3 = machineModels
    L4_3 = A1_2
    L3_3 = L3_3[L4_3]
    L3_3 = L3_3.messageId
    L2_3 = L2_3 .. L3_3
    L1_3 = L2_3
    L2_3 = L1_3
    L3_3 = string
    L3_3 = L3_3.format
    L4_3 = "%02d"
    L5_3 = RandomNumber
    L6_3 = 1
    L7_3 = 16
    L5_3, L6_3, L7_3 = L5_3(L6_3, L7_3)
    L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3)
    L2_3 = L2_3 .. L3_3
    L1_3 = L2_3
    return L1_3
  end
  L5_2.generateDisplayMessage = L6_2
  function L6_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3
    L3_3 = L5_2.animateSpinning
    L4_3 = A2_3
    L3_3(L4_3)
    L3_3 = CreateThread
    function L4_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4, L15_4, L16_4
      L0_4 = Wait
      L1_4 = A1_3
      L0_4(L1_4)
      L0_4 = 1
      L1_4 = 3
      L2_4 = 1
      for L3_4 = L0_4, L1_4, L2_4 do
        L4_4 = L5_2.reelsLocked
        L4_4[L3_4] = true
        L4_4 = L5_2.createReel
        L5_4 = L3_4
        L6_4 = false
        L4_4 = L4_4(L5_4, L6_4)
        L5_4 = machineReelsRotations
        L6_4 = A0_3
        L6_4 = L6_4[L3_4]
        L5_4 = L5_4[L6_4]
        L6_4 = A0_3
        L6_4 = L6_4[L3_4]
        if 8 == L6_4 then
          L6_4 = machineReelsRotations
          L6_4 = L6_4[L3_4]
          L5_4 = L6_4 + 10
        end
        L6_4 = L5_2.lastRotations
        L6_4[L3_4] = L5_4
        L6_4 = L5_2.playSound
        L7_4 = "wheel_stop_clunk"
        L8_4 = A2_3
        L6_4(L7_4, L8_4)
        L6_4 = A2_3
        if L6_4 then
          L6_4 = SetPadShake
          L7_4 = 0
          L8_4 = 100
          L9_4 = 100
          L6_4(L7_4, L8_4, L9_4)
        end
        L6_4 = L5_4 + 8
        L7_4 = L5_4
        L8_4 = -1
        for L9_4 = L6_4, L7_4, L8_4 do
          L10_4 = SetEntityRotation
          L11_4 = L4_4
          L12_4 = L9_4
          L13_4 = 0.0
          L14_4 = L5_2.heading
          L15_4 = true
          L16_4 = true
          L10_4(L11_4, L12_4, L13_4, L14_4, L15_4, L16_4)
          L10_4 = Wait
          L11_4 = 3
          L10_4(L11_4)
        end
        L6_4 = Wait
        L7_4 = 500
        L6_4(L7_4)
      end
      L5_2.isSpinning = false
    end
    L5_3 = "Slots animation result"
    L3_3(L4_3, L5_3)
  end
  L5_2.animateResults = L6_2
  function L6_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
    L2_3 = IN_CASINO
    if not L2_3 then
      L2_3 = nil
      return L2_3
    end
    L2_3 = L5_2.reelsObjects
    L2_3 = L2_3[A0_3]
    L3_3 = GetHashKey
    if A1_3 then
      L4_3 = machineModels
      L5_3 = A1_2
      L4_3 = L4_3[L5_3]
      L4_3 = L4_3.reelsBlurry
      if L4_3 then
        goto lbl_21
      end
    end
    L4_3 = machineModels
    L5_3 = A1_2
    L4_3 = L4_3[L5_3]
    L4_3 = L4_3.reels
    ::lbl_21::
    L3_3 = L3_3(L4_3)
    if nil ~= L2_3 then
      L4_3 = GetEntityModel
      L5_3 = L2_3
      L4_3 = L4_3(L5_3)
      if L4_3 == L3_3 then
        return L2_3
      end
    end
    L4_3 = L5_2.reelsObjects
    L4_3 = L4_3[A0_3]
    if nil ~= L4_3 then
      L4_3 = DeleteObject
      L5_3 = L5_2.reelsObjects
      L5_3 = L5_3[A0_3]
      L4_3(L5_3)
    end
    L4_3 = {}
    L5_3 = GetObjectOffsetFromCoords
    L6_3 = L5_2.coords
    L6_3 = L6_3.x
    L7_3 = L5_2.coords
    L7_3 = L7_3.y
    L8_3 = L5_2.coords
    L8_3 = L8_3.z
    L9_3 = L5_2.heading
    L10_3 = -0.12
    L11_3 = 0.05
    L12_3 = 0.9
    L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
    L6_3 = GetObjectOffsetFromCoords
    L7_3 = L5_2.coords
    L7_3 = L7_3.x
    L8_3 = L5_2.coords
    L8_3 = L8_3.y
    L9_3 = L5_2.coords
    L9_3 = L9_3.z
    L10_3 = L5_2.heading
    L11_3 = 0.0
    L12_3 = 0.05
    L13_3 = 0.9
    L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
    L7_3 = GetObjectOffsetFromCoords
    L8_3 = L5_2.coords
    L8_3 = L8_3.x
    L9_3 = L5_2.coords
    L9_3 = L9_3.y
    L10_3 = L5_2.coords
    L10_3 = L10_3.z
    L11_3 = L5_2.heading
    L12_3 = 0.12
    L13_3 = 0.05
    L14_3 = 0.9
    L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3 = L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
    L4_3[1] = L5_3
    L4_3[2] = L6_3
    L4_3[3] = L7_3
    L4_3[4] = L8_3
    L4_3[5] = L9_3
    L4_3[6] = L10_3
    L4_3[7] = L11_3
    L4_3[8] = L12_3
    L4_3[9] = L13_3
    L4_3[10] = L14_3
    L5_3 = CreateObject
    L6_3 = L3_3
    L7_3 = L4_3[A0_3]
    L8_3 = false
    L9_3 = false
    L10_3 = false
    L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3)
    L6_3 = SetEntityRotation
    L7_3 = L5_3
    L8_3 = 0
    L9_3 = 0.0
    L10_3 = L5_2.heading
    L11_3 = true
    L12_3 = true
    L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
    L6_3 = L5_2.reelsObjects
    L6_3[A0_3] = L5_3
    return L5_3
  end
  L5_2.createReel = L6_2
  function L6_2()
    local L0_3, L1_3
    L5_2.isSpinning = false
  end
  L5_2.prepareToPlay = L6_2
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = 1
    L1_3 = 3
    L2_3 = 1
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = L5_2.reelsObjects
      L4_3 = L4_3[L3_3]
      if nil ~= L4_3 then
        L4_3 = DeleteObject
        L5_3 = L5_2.reelsObjects
        L5_3 = L5_3[L3_3]
        L4_3(L5_3)
      end
    end
    L0_3 = DeletePed
    L1_3 = L5_2.ped
    L0_3(L1_3)
    L0_3 = L5_2.normalObject
    if L0_3 then
      L0_3 = DoesEntityExist
      L1_3 = L5_2.normalObject
      L0_3 = L0_3(L1_3)
      if L0_3 then
        L0_3 = SetEntityVisible
        L1_3 = L5_2.normalObject
        L2_3 = true
        L0_3(L1_3, L2_3)
      end
    end
    L0_3 = L5_2.brokenObject
    if L0_3 then
      L0_3 = DoesEntityExist
      L1_3 = L5_2.brokenObject
      L0_3 = L0_3(L1_3)
      if L0_3 then
        L0_3 = ForceDeleteEntity
        L1_3 = L5_2.brokenObject
        L0_3(L1_3)
      end
    end
  end
  L5_2.cleanUp = L6_2
  return L5_2
end
L0_1.create = L1_1
L0_1 = 1.8
L1_1 = {}
L2_1 = nil
L3_1 = nil
L4_1 = false
L5_1 = nil
L6_1 = nil
L7_1 = nil
L8_1 = 0
L9_1 = nil
L10_1 = nil
L11_1 = 0
L12_1 = ""
L13_1 = 0
L14_1 = 0
L15_1 = 0
L16_1 = 0
function L17_1()
  local L0_2, L1_2, L2_2
  L0_2 = L14_1
  if L0_2 < 5 then
    L0_2 = L14_1
    L0_2 = L0_2 + 1
    L14_1 = L0_2
  else
    L0_2 = 0
    L14_1 = L0_2
  end
  L0_2 = math
  L0_2 = L0_2.floor
  L1_2 = machineModels
  L2_2 = L6_1.hash
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2.maxBet
  L1_2 = L1_2 / 5
  L2_2 = L14_1
  L1_2 = L1_2 * L2_2
  L0_2 = L0_2(L1_2)
  L13_1 = L0_2
end
function L18_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = DebugStart
  L3_2 = "MakeAnimationTimeout"
  L2_2(L3_2)
  L2_2 = GetAnimDuration
  L3_2 = L5_1
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  L2_2 = L2_2 * 1000
  L2_2 = L2_2 - 1000
  L3_2 = GAME_TIMER
  L3_2 = L3_2 + L2_2
  L8_1 = L3_2
  L3_2 = A1_2 or L3_2
  if nil == A1_2 or not A1_2 then
    L3_2 = A0_2
  end
  L7_1 = L3_2
end
function L19_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L7_1
  L1_2 = L7_1
  L2_2 = L1_2
  L1_2 = L1_2.startswith
  L3_2 = A0_2
  L1_2 = nil ~= L1_2 and L1_2
  return L1_2
end
function L20_1(A0_2)
  local L1_2, L2_2
  L1_2 = DebugStart
  L2_2 = "StartMachineAnimationScene"
  L1_2(L2_2)
  L9_1 = A0_2
end
function L21_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = DebugStart
  L1_2 = "StartMachineIdleAnimationScene"
  L0_2(L1_2)
  L0_2 = {}
  L1_2 = "a"
  L2_2 = "b"
  L3_2 = "c"
  L0_2[1] = L1_2
  L0_2[2] = L2_2
  L0_2[3] = L3_2
  L1_2 = "base_idle_"
  L2_2 = RandomNumber
  L3_2 = 3
  L2_2 = L2_2(L3_2)
  L2_2 = L0_2[L2_2]
  L1_2 = L1_2 .. L2_2
  L2_2 = L18_1
  L3_2 = L1_2
  L2_2(L3_2)
  L2_2 = L20_1
  L3_2 = L1_2
  L2_2(L3_2)
end
function L22_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = DebugStart
  L2_2 = "StartMachineWinLoseAnimation"
  L1_2(L2_2)
  L1_2 = {}
  L2_2 = "a"
  L3_2 = "b"
  L4_2 = "c"
  L5_2 = "d"
  L6_2 = "e"
  L7_2 = "f"
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L1_2[5] = L6_2
  L1_2[6] = L7_2
  if A0_2 then
    L2_2 = "win_"
    if L2_2 then
      goto lbl_19
    end
  end
  L2_2 = "lose_"
  ::lbl_19::
  L3_2 = RandomNumber
  L4_2 = 6
  L3_2 = L3_2(L4_2)
  L3_2 = L1_2[L3_2]
  L2_2 = L2_2 .. L3_2
  L3_2 = L18_1
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = L20_1
  L4_2 = L2_2
  L3_2(L4_2)
end
function L23_1()
  local L0_2, L1_2
  L0_2 = DebugStart
  L1_2 = "StartMachineJackpotAnimation"
  L0_2(L1_2)
  L0_2 = L18_1
  L1_2 = "win_spinning_wheel"
  L0_2(L1_2)
  L0_2 = L20_1
  L1_2 = "win_spinning_wheel"
  L0_2(L1_2)
end
function L24_1()
  local L0_2, L1_2
  L0_2 = DebugStart
  L1_2 = "UpdateAnimationSteps"
  L0_2(L1_2)
  L0_2 = IsAnimationInProgress
  L0_2 = L0_2()
  if L0_2 then
    return
  end
  L0_2 = L19_1
  L1_2 = "enter_"
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = L20_1
    L1_2 = "base_idle_a"
    L0_2(L1_2)
    L0_2 = L18_1
    L1_2 = "base_idle_a"
    L0_2(L1_2)
  else
    L0_2 = L19_1
    L1_2 = "base_idle_"
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = L21_1
      L0_2()
    else
      L0_2 = L19_1
      L1_2 = "press_betone_"
      L0_2 = L0_2(L1_2)
      if not L0_2 then
        L0_2 = L19_1
        L1_2 = "press_betmax_"
        L0_2 = L0_2(L1_2)
        if not L0_2 then
          L0_2 = L7_1
          if "betidle_base" ~= L0_2 then
            L0_2 = L19_1
            L1_2 = "betidle_press_betone_"
            L0_2 = L0_2(L1_2)
            if not L0_2 then
              L0_2 = L19_1
              L1_2 = "betidle_press_betmax_"
              L0_2 = L0_2(L1_2)
              if not L0_2 then
                L0_2 = L19_1
                L1_2 = "win_"
                L0_2 = L0_2(L1_2)
                if not L0_2 then
                  L0_2 = L19_1
                  L1_2 = "lose_"
                  L0_2 = L0_2(L1_2)
                  if not L0_2 then
                    goto lbl_69
                  end
                end
              end
            end
          end
        end
      end
      L0_2 = L20_1
      L1_2 = "betidle_base"
      L0_2(L1_2)
      L0_2 = L18_1
      L1_2 = "betidle_base"
      L0_2(L1_2)
      goto lbl_108
      ::lbl_69::
      L0_2 = L7_1
      if "press_spin_a" == L0_2 then
        L0_2 = L20_1
        L1_2 = "spinning_a"
        L0_2(L1_2)
        L0_2 = L18_1
        L1_2 = "spinning_a"
        L0_2(L1_2)
      else
        L0_2 = L7_1
        if "press_spin_b" == L0_2 then
          L0_2 = L20_1
          L1_2 = "spinning_b"
          L0_2(L1_2)
          L0_2 = L18_1
          L1_2 = "spinning_b"
          L0_2(L1_2)
        else
          L0_2 = L7_1
          if "triggerlose" == L0_2 then
            L0_2 = L22_1
            L1_2 = false
            L0_2(L1_2)
          else
            L0_2 = L7_1
            if "triggerwin" == L0_2 then
              L0_2 = L22_1
              L1_2 = true
              L0_2(L1_2)
            else
              L0_2 = L7_1
              if "triggerjackpot" == L0_2 then
                L0_2 = L23_1
                L0_2()
              end
            end
          end
        end
      end
    end
  end
  ::lbl_108::
end
function L25_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = DebugStart
  L2_2 = "Slots_GetInstanceFromCoords"
  L1_2(L2_2)
  L1_2 = nil
  L2_2 = pairs
  L3_2 = L1_1
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    if false ~= L7_2 then
      L8_2 = L7_2.coords
      if L8_2 then
        L8_2 = L7_2.coords
        L8_2 = L8_2 - A0_2
        L8_2 = #L8_2
        L9_2 = 0.1
        if L8_2 < L9_2 then
          L1_2 = L7_2
          break
        end
      end
    end
  end
  return L1_2
end
Slots_GetInstanceFromCoords = L25_1
function L25_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2.broken = true
  L1_2 = A0_2.brokenObject
  if L1_2 then
    return
  end
  L1_2 = A0_2.ped
  if L1_2 then
    L1_2 = DoesEntityExist
    L2_2 = A0_2.ped
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = DeletePed
      L2_2 = A0_2.ped
      L1_2(L2_2)
      A0_2.ped = nil
    end
  end
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3
    L0_3 = RequestNamedPtfxAsset
    L1_3 = "scr_reconstructionaccident"
    L0_3(L1_3)
    L0_3 = RequestNamedPtfxAsset
    L1_3 = "scr_sell"
    L0_3(L1_3)
    L0_3 = GetGameTimer
    L0_3 = L0_3()
    L0_3 = L0_3 + 10000
    while true do
      L1_3 = IN_CASINO
      if not L1_3 then
        break
      end
      L1_3 = GetGameTimer
      L1_3 = L1_3()
      if not (L0_3 > L1_3) then
        break
      end
      L1_3 = HasNamedPtfxAssetLoaded
      L2_3 = "scr_reconstructionaccident"
      L1_3 = L1_3(L2_3)
      if L1_3 then
        break
      end
      L1_3 = HasNamedPtfxAssetLoaded
      L2_3 = "scr_sell"
      L1_3 = L1_3(L2_3)
      if L1_3 then
        break
      end
      L1_3 = Wait
      L2_3 = 33
      L1_3(L2_3)
    end
    A0_2.normalObject = nil
    L1_3 = GetGamePool
    L2_3 = "CObject"
    L1_3 = L1_3(L2_3)
    L2_3 = pairs
    L3_3 = L1_3
    L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
    for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
      L8_3 = DoesEntityExist
      L9_3 = L7_3
      L8_3 = L8_3(L9_3)
      if L8_3 then
        L8_3 = GetEntityModel
        L9_3 = L7_3
        L8_3 = L8_3(L9_3)
        L9_3 = A0_2.hash
        if L8_3 == L9_3 then
          L8_3 = GetEntityCoords
          L9_3 = L7_3
          L8_3 = L8_3(L9_3)
          L9_3 = A0_2.coords
          L8_3 = L8_3 - L9_3
          L8_3 = #L8_3
          L9_3 = 0.1
          if L8_3 < L9_3 then
            A0_2.normalObject = L7_3
            break
          end
        end
      end
    end
    L2_3 = machineModels
    L3_3 = A0_2.hash
    L2_3 = L2_3[L3_3]
    L3_3 = GetHashKey
    L4_3 = "dis_"
    L5_3 = L2_3.model
    L4_3 = L4_3 .. L5_3
    L3_3 = L3_3(L4_3)
    L4_3 = RequestModelAndWait
    L5_3 = "dis_"
    L6_3 = L2_3.model
    L5_3 = L5_3 .. L6_3
    L4_3(L5_3)
    L4_3 = A0_2.normalObject
    if L4_3 then
      L4_3 = SetEntityVisible
      L5_3 = A0_2.normalObject
      L6_3 = false
      L4_3(L5_3, L6_3)
    end
    L4_3 = GetGameTimer
    L4_3 = L4_3()
    L0_3 = L4_3 + 5000
    while true do
      L4_3 = IN_CASINO
      if not L4_3 then
        break
      end
      L4_3 = HasModelLoaded
      L5_3 = L3_3
      L4_3 = L4_3(L5_3)
      if L4_3 then
        break
      end
      L4_3 = GetGameTimer
      L4_3 = L4_3()
      if not (L0_3 > L4_3) then
        break
      end
      L4_3 = RequestModel
      L5_3 = L3_3
      L4_3(L5_3)
      L4_3 = Wait
      L5_3 = 100
      L4_3(L5_3)
    end
    L4_3 = IN_CASINO
    if not L4_3 then
      return
    end
    L4_3 = HasModelLoaded
    L5_3 = L3_3
    L4_3 = L4_3(L5_3)
    if not L4_3 then
      L4_3 = SetEntityVisible
      L5_3 = A0_2.normalObject
      L6_3 = true
      L4_3(L5_3, L6_3)
      return
    end
    L4_3 = CreateObject
    L5_3 = L3_3
    L6_3 = A0_2.coords
    L7_3 = false
    L8_3 = false
    L9_3 = false
    L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3, L9_3)
    A0_2.brokenObject = L4_3
    L4_3 = SetEntityAsMissionEntity
    L5_3 = A0_2.brokenObject
    L4_3(L5_3)
    L4_3 = SetEntityHeading
    L5_3 = A0_2.brokenObject
    L6_3 = A0_2.heading
    L4_3(L5_3, L6_3)
    L4_3 = UseParticleFxAsset
    L5_3 = "scr_reconstructionaccident"
    L4_3(L5_3)
    L4_3 = StartParticleFxLoopedOnEntity
    L5_3 = "scr_sparking_generator"
    L6_3 = A0_2.brokenObject
    L7_3 = 0.0
    L8_3 = -0.1
    L9_3 = 0.9
    L10_3 = 0.0
    L11_3 = 0.0
    L12_3 = A0_2.heading
    L13_3 = 1.0
    L14_3 = false
    L15_3 = false
    L16_3 = false
    L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
    L5_3 = Wait
    L6_3 = 1000
    L5_3(L6_3)
    L5_3 = UseParticleFxAsset
    L6_3 = "scr_sell"
    L5_3(L6_3)
    L5_3 = StartParticleFxLoopedOnEntity
    L6_3 = "scr_vehicle_damage_smoke"
    L7_3 = A0_2.brokenObject
    L8_3 = 0.0
    L9_3 = 0.0
    L10_3 = 1.9
    L11_3 = 0.0
    L12_3 = 0.0
    L13_3 = A0_2.heading
    L14_3 = 1.0
    L15_3 = false
    L16_3 = false
    L17_3 = false
    L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
    L6_3 = GetGameTimer
    L6_3 = L6_3()
    L7_3 = RandomNumber
    L8_3 = 100
    L9_3 = 5000
    L7_3 = L7_3(L8_3, L9_3)
    L6_3 = L6_3 + L7_3
    L7_3 = SetEntityCoordsNoOffset
    L8_3 = A0_2.brokenObject
    L9_3 = GetEntityCoords
    L10_3 = A0_2.normalObject
    L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3 = L9_3(L10_3)
    L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
    while true do
      L7_3 = IN_CASINO
      if not L7_3 then
        break
      end
      L7_3 = A0_2
      if not L7_3 then
        break
      end
      L7_3 = A0_2.broken
      if not L7_3 then
        break
      end
      L7_3 = GetGameTimer
      L7_3 = L7_3()
      if L6_3 < L7_3 then
        L7_3 = SetEntityVisible
        L8_3 = A0_2.normalObject
        L9_3 = true
        L7_3(L8_3, L9_3)
        L7_3 = SetEntityVisible
        L8_3 = A0_2.brokenObject
        L9_3 = false
        L7_3(L8_3, L9_3)
        L7_3 = Wait
        L8_3 = 100
        L7_3(L8_3)
        L7_3 = SetEntityVisible
        L8_3 = A0_2.normalObject
        L9_3 = false
        L7_3(L8_3, L9_3)
        L7_3 = SetEntityVisible
        L8_3 = A0_2.brokenObject
        L9_3 = true
        L7_3(L8_3, L9_3)
        L7_3 = GetGameTimer
        L7_3 = L7_3()
        L8_3 = RandomNumber
        L9_3 = 100
        L10_3 = 1500
        L8_3 = L8_3(L9_3, L10_3)
        L6_3 = L7_3 + L8_3
      end
      L7_3 = Wait
      L8_3 = 100
      L7_3(L8_3)
    end
    L7_3 = DoesEntityExist
    L8_3 = A0_2.brokenObject
    L7_3 = L7_3(L8_3)
    if L7_3 then
      L7_3 = ForceDeleteEntity
      L8_3 = A0_2.brokenObject
      L7_3(L8_3)
    end
    L7_3 = A0_2.normalObject
    if L7_3 then
      L7_3 = SetEntityVisible
      L8_3 = A0_2.normalObject
      L9_3 = true
      L7_3(L8_3, L9_3)
    end
    A0_2.brokenObject = nil
  end
  L3_2 = "Breaking machine slots"
  L1_2(L2_2, L3_2)
end
function L26_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = DebugStart
  L5_2 = "GetOrCreateMachineInstance"
  L4_2(L5_2)
  L4_2 = Slots_GetInstanceFromCoords
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  if nil == L4_2 then
    L5_2 = Debug
    L6_2 = "Creating at "
    L7_2 = A1_2
    L6_2 = L6_2 .. L7_2
    L5_2(L6_2)
    L5_2 = SlotMachine
    L6_2 = L5_2
    L5_2 = L5_2.create
    L7_2 = A0_2
    L8_2 = A1_2
    L9_2 = A2_2
    L10_2 = A3_2
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    L4_2 = L5_2
    L5_2 = table
    L5_2 = L5_2.insert
    L6_2 = L1_1
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
  end
  return L4_2
end
function L27_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L0_2 = DebugStart
  L1_2 = "EnterMyMachine"
  L0_2(L1_2)
  L0_2 = 0
  L14_1 = L0_2
  L0_2 = math
  L0_2 = L0_2.floor
  L1_2 = machineModels
  L2_2 = L6_1.hash
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2.maxBet
  L1_2 = L1_2 / 5
  L2_2 = L14_1
  L1_2 = L1_2 * L2_2
  L0_2 = L0_2(L1_2)
  L13_1 = L0_2
  L0_2 = L6_1.coords
  L1_2 = L6_1.rotation
  L2_2 = GetPlayerPosition
  L2_2 = L2_2()
  L3_2 = Stats_StartActivity
  L4_2 = "slots"
  L3_2(L4_2)
  L3_2 = RequestAnimDictAndWait
  L4_2 = L5_1
  L3_2(L4_2)
  L3_2 = getClosestAnimation
  L4_2 = L2_2
  L5_2 = L0_2
  L6_2 = L1_2
  L7_2 = L5_1
  L8_2 = {}
  L9_2 = "enter_left"
  L10_2 = "enter_left_short"
  L11_2 = "enter_right"
  L12_2 = "enter_right_short"
  L8_2[1] = L9_2
  L8_2[2] = L10_2
  L8_2[3] = L11_2
  L8_2[4] = L12_2
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L4_2 = GetAnimInitialOffsetPosition
  L5_2 = L5_1
  L6_2 = L3_2
  L7_2 = L0_2.x
  L8_2 = L0_2.y
  L9_2 = L0_2.z
  L10_2 = L1_2.x
  L11_2 = L1_2.y
  L12_2 = L1_2.z
  L13_2 = 0.01
  L14_2 = 2
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L5_2 = GetAnimInitialOffsetRotation
  L6_2 = L5_1
  L7_2 = L3_2
  L8_2 = L0_2.x
  L9_2 = L0_2.y
  L10_2 = L0_2.z
  L11_2 = L1_2.x
  L12_2 = L1_2.y
  L13_2 = L1_2.z
  L14_2 = 0.01
  L15_2 = 2
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L6_2 = Citizen
  L6_2 = L6_2.InvokeNative
  L7_2 = 8773263032172758242
  L8_2 = 518572876
  L6_2(L7_2, L8_2)
  L6_2 = SetInventoryBusy
  L7_2 = true
  L6_2(L7_2)
  L6_2 = L18_1
  L7_2 = L3_2
  L6_2(L7_2)
  L6_2 = L20_1
  L7_2 = L3_2
  L6_2 = L6_2(L7_2)
  L2_1 = L6_2
  L6_2 = SetCurrentPedWeapon
  L7_2 = PlayerPedId
  L7_2 = L7_2()
  L8_2 = GetHashKey
  L9_2 = "weapon_unarmed"
  L8_2 = L8_2(L9_2)
  L9_2 = true
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = Config
  L6_2 = L6_2.SLOTS_1ST_PERSON
  if L6_2 then
    L6_2 = GetFollowPedCamViewMode
    L6_2 = L6_2()
    L11_1 = L6_2
    L6_2 = L11_1
    if 4 ~= L6_2 then
      L6_2 = CreateThread
      function L7_2()
        local L0_3, L1_3
        L0_3 = DoScreenFadeOut
        L1_3 = 500
        L0_3(L1_3)
        L0_3 = Wait
        L1_3 = 500
        L0_3(L1_3)
        L0_3 = SetFollowPedCamViewMode
        L1_3 = 4
        L0_3(L1_3)
        L0_3 = DoScreenFadeIn
        L1_3 = 500
        L0_3(L1_3)
      end
      L8_2 = "set 1st person if enabled in config"
      L6_2(L7_2, L8_2)
    end
  end
end
function L28_1()
  local L0_2, L1_2, L2_2
  L0_2 = DebugStart
  L1_2 = "StartMachineDisplayAndUI"
  L0_2(L1_2)
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3
    L0_3 = machineModels
    L1_3 = L6_1.hash
    L0_3 = L0_3[L1_3]
    L0_3 = L0_3.display
    L1_3 = machineModels
    L2_3 = L6_1.hash
    L1_3 = L1_3[L2_3]
    L1_3 = L1_3.model
    L2_3 = CreateScaleformHandle
    L3_3 = L0_3
    L4_3 = L1_3
    L2_3 = L2_3(L3_3, L4_3)
    L3_3 = RequestScaleformMovieAndWait
    L4_3 = "SLOT_MACHINE"
    L3_3 = L3_3(L4_3)
    L4_3 = nil
    L5_3 = {}
    L6_3 = {}
    L6_3.key = 177
    L7_3 = Translation
    L7_3 = L7_3.Get
    L8_3 = "SLOTS_BTN_LEAVE"
    L7_3 = L7_3(L8_3)
    L6_3.title = L7_3
    L7_3 = {}
    L7_3.key = 176
    L8_3 = Translation
    L8_3 = L8_3.Get
    L9_3 = "SLOTS_BTN_SPIN"
    L8_3 = L8_3(L9_3)
    L7_3.title = L8_3
    L8_3 = {}
    L8_3.key = 49
    L9_3 = Translation
    L9_3 = L9_3.Get
    L10_3 = "SLOTS_BTN_BET_MAX"
    L9_3 = L9_3(L10_3)
    L8_3.title = L9_3
    L9_3 = {}
    L9_3.key = 193
    L10_3 = Translation
    L10_3 = L10_3.Get
    L11_3 = "SLOTS_BTN_BET_ONE"
    L10_3 = L10_3(L11_3)
    L9_3.title = L10_3
    L5_3[1] = L6_3
    L5_3[2] = L7_3
    L5_3[3] = L8_3
    L5_3[4] = L9_3
    L6_3 = nil
    while true do
      L7_3 = L4_1
      if not L7_3 then
        break
      end
      L7_3 = PushScaleformVoid
      L8_3 = L3_3
      L9_3 = "CLEAR_ALL"
      L7_3(L8_3, L9_3)
      L7_3 = PushScaleformInt
      L8_3 = L3_3
      L9_3 = "SET_THEME"
      L10_3 = 1
      L7_3(L8_3, L9_3, L10_3)
      L7_3 = PushScaleformCommandString
      L8_3 = L3_3
      L9_3 = "SET_MESSAGE"
      L10_3 = L12_1
      L7_3(L8_3, L9_3, L10_3)
      L7_3 = PushScaleformInt
      L8_3 = L3_3
      L9_3 = "SET_BET"
      L10_3 = L13_1
      L7_3(L8_3, L9_3, L10_3)
      L7_3 = PushScaleformInt
      L8_3 = L3_3
      L9_3 = "SET_LAST_WIN"
      L10_3 = L15_1
      L7_3(L8_3, L9_3, L10_3)
      L7_3 = Citizen
      L7_3 = L7_3.InvokeNative
      L8_3 = 3671366047641330747
      L9_3 = L3_3
      L10_3 = true
      L7_3(L8_3, L9_3, L10_3)
      L7_3 = SetTextRenderId
      L8_3 = L2_3
      L7_3(L8_3)
      L7_3 = SetScriptGfxDrawOrder
      L8_3 = 4
      L7_3(L8_3)
      L7_3 = Citizen
      L7_3 = L7_3.InvokeNative
      L8_3 = -4163807871305827379
      L9_3 = true
      L7_3(L8_3, L9_3)
      L7_3 = DrawScaleformMovie
      L8_3 = L3_3
      L9_3 = 0.401
      L10_3 = 0.09
      L11_3 = 0.805
      L12_3 = 0.195
      L13_3 = 255
      L14_3 = 255
      L15_3 = 255
      L16_3 = 255
      L17_3 = 0
      L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
      L7_3 = SetTextRenderId
      L8_3 = GetDefaultScriptRendertargetRenderId
      L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3 = L8_3()
      L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
      L7_3 = ResetScriptGfxAlign
      L7_3()
      L7_3 = L6_1.isSpinning
      L7_3 = not L7_3 and L7_3
      if L4_3 == L7_3 then
        L8_3 = IsGamepadControl
        L8_3 = L8_3()
        if L8_3 == L6_3 then
          goto lbl_139
        end
      end
      L8_3 = PushNUIInstructionalButtons
      L9_3 = L5_3 or L9_3
      if not L7_3 or not L5_3 then
        L9_3 = nil
      end
      L8_3(L9_3)
      L4_3 = L7_3
      L8_3 = IsGamepadControl
      L8_3 = L8_3()
      L6_3 = L8_3
      ::lbl_139::
      L8_3 = Wait
      L9_3 = 0
      L8_3(L9_3)
    end
    L7_3 = PushNUIInstructionalButtons
    L8_3 = nil
    L7_3(L8_3)
    L7_3 = Wait
    L8_3 = 1000
    L7_3(L8_3)
    L7_3 = SetScaleformMovieAsNoLongerNeeded
    L8_3 = L3_3
    L7_3(L8_3)
    L7_3 = IsNamedRendertargetRegistered
    L8_3 = L0_3
    L7_3 = L7_3(L8_3)
    if L7_3 then
      L7_3 = ReleaseNamedRendertarget
      L8_3 = L0_3
      L7_3(L8_3)
    end
  end
  L2_2 = "Start machine and display UI"
  L0_2(L1_2, L2_2)
end
function L29_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = DebugStart
  L1_2 = "BetOnePressed"
  L0_2(L1_2)
  L0_2 = L4_1
  if L0_2 then
    L0_2 = CAN_INTERACT
    if L0_2 then
      goto lbl_11
    end
  end
  do return end
  ::lbl_11::
  L0_2 = L6_1.isSpinning
  if L0_2 then
    return
  end
  L0_2 = L17_1
  L0_2()
  L0_2 = L14_1
  if 0 == L0_2 then
    L0_2 = PlaySound
    L1_2 = "DLC_VW_RULES"
    L2_2 = "dlc_vw_table_games_frontend_sounds"
    L0_2(L1_2, L2_2)
  else
    L0_2 = PlaySound
    L1_2 = "place_bet"
    L2_2 = machineModels
    L3_2 = L6_1.hash
    L2_2 = L2_2[L3_2]
    L2_2 = L2_2.sounds
    L3_2 = PlayerPedId
    L3_2 = L3_2()
    L4_2 = true
    L0_2(L1_2, L2_2, L3_2, L4_2)
  end
  L0_2 = L19_1
  L1_2 = "enter_"
  L0_2 = L0_2(L1_2)
  if not L0_2 then
    L0_2 = L19_1
    L1_2 = "base_idle_"
    L0_2 = L0_2(L1_2)
    if not L0_2 then
      L0_2 = L19_1
      L1_2 = "win_"
      L0_2 = L0_2(L1_2)
      if not L0_2 then
        L0_2 = L19_1
        L1_2 = "lose_"
        L0_2 = L0_2(L1_2)
        if not L0_2 then
          goto lbl_62
        end
      end
    end
  end
  L0_2 = L20_1
  L1_2 = "press_betone_a"
  L0_2(L1_2)
  L0_2 = L18_1
  L1_2 = "press_betone_a"
  L0_2(L1_2)
  goto lbl_99
  ::lbl_62::
  L0_2 = L7_1
  if "press_betone_a" ~= L0_2 then
    L0_2 = L7_1
    if "press_betmax_a" ~= L0_2 then
      L0_2 = L19_1
      L1_2 = "betidle_press_betone_"
      L0_2 = L0_2(L1_2)
      if not L0_2 then
        L0_2 = L19_1
        L1_2 = "betidle_press_betmax_"
        L0_2 = L0_2(L1_2)
        if not L0_2 then
          L0_2 = L7_1
          if "betidle_base" ~= L0_2 then
            goto lbl_99
          end
        end
      end
    end
  end
  L0_2 = {}
  L1_2 = "a"
  L2_2 = "b"
  L3_2 = "c"
  L0_2[1] = L1_2
  L0_2[2] = L2_2
  L0_2[3] = L3_2
  L1_2 = "betidle_press_betone_"
  L2_2 = RandomNumber
  L3_2 = 3
  L2_2 = L2_2(L3_2)
  L2_2 = L0_2[L2_2]
  L1_2 = L1_2 .. L2_2
  L2_2 = L20_1
  L3_2 = L1_2
  L2_2(L3_2)
  L2_2 = L18_1
  L3_2 = L1_2
  L2_2(L3_2)
  ::lbl_99::
end
function L30_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = DebugStart
  L1_2 = "BetMaxPressed"
  L0_2(L1_2)
  L0_2 = L4_1
  if L0_2 then
    L0_2 = CAN_INTERACT
    if L0_2 then
      goto lbl_11
    end
  end
  do return end
  ::lbl_11::
  L0_2 = L14_1
  if 5 == L0_2 then
    return
  end
  L0_2 = 5
  L14_1 = L0_2
  L0_2 = math
  L0_2 = L0_2.floor
  L1_2 = machineModels
  L2_2 = L6_1.hash
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2.maxBet
  L1_2 = L1_2 / 5
  L2_2 = L14_1
  L1_2 = L1_2 * L2_2
  L0_2 = L0_2(L1_2)
  L13_1 = L0_2
  L0_2 = PlaySound
  L1_2 = "place_max_bet"
  L2_2 = machineModels
  L3_2 = L6_1.hash
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.sounds
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = L19_1
  L1_2 = "enter_"
  L0_2 = L0_2(L1_2)
  if not L0_2 then
    L0_2 = L19_1
    L1_2 = "base_idle_"
    L0_2 = L0_2(L1_2)
    if not L0_2 then
      goto lbl_57
    end
  end
  L0_2 = L20_1
  L1_2 = "press_betmax_a"
  L0_2(L1_2)
  L0_2 = L18_1
  L1_2 = "press_betmax_a"
  L0_2(L1_2)
  goto lbl_94
  ::lbl_57::
  L0_2 = L7_1
  if "press_betmax_a" ~= L0_2 then
    L0_2 = L7_1
    if "press_betone_a" ~= L0_2 then
      L0_2 = L19_1
      L1_2 = "betidle_press_betmax_"
      L0_2 = L0_2(L1_2)
      if not L0_2 then
        L0_2 = L19_1
        L1_2 = "betidle_press_betone_"
        L0_2 = L0_2(L1_2)
        if not L0_2 then
          L0_2 = L7_1
          if "betidle_base" ~= L0_2 then
            goto lbl_94
          end
        end
      end
    end
  end
  L0_2 = {}
  L1_2 = "a"
  L2_2 = "b"
  L3_2 = "c"
  L0_2[1] = L1_2
  L0_2[2] = L2_2
  L0_2[3] = L3_2
  L1_2 = "betidle_press_betmax_"
  L2_2 = RandomNumber
  L3_2 = 3
  L2_2 = L2_2(L3_2)
  L2_2 = L0_2[L2_2]
  L1_2 = L1_2 .. L2_2
  L2_2 = L20_1
  L3_2 = L1_2
  L2_2(L3_2)
  L2_2 = L18_1
  L3_2 = L1_2
  L2_2(L3_2)
  ::lbl_94::
end
function L31_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = DebugStart
  L1_2 = "SpinKeyPressed"
  L0_2(L1_2)
  L0_2 = L4_1
  if L0_2 then
    L0_2 = L6_1.isSpinning
    if not L0_2 then
      L0_2 = L13_1
      if 0 ~= L0_2 then
        L0_2 = CAN_INTERACT
        if L0_2 then
          goto lbl_17
        end
      end
    end
  end
  do return end
  ::lbl_17::
  L0_2 = IsActivityEnabled
  L1_2 = "slots"
  L0_2 = L0_2(L1_2)
  if not L0_2 then
    L0_2 = Slots_OnInteractionQuit
    L0_2()
    return
  end
  L0_2 = BlockPlayerInteraction
  L1_2 = 1000
  L0_2(L1_2)
  L0_2 = L13_1
  if 0 == L0_2 then
    L0_2 = PlaySound
    L1_2 = "DLC_VW_CONTINUE"
    L2_2 = "dlc_vw_table_games_frontend_sounds"
    L0_2(L1_2, L2_2)
    return
  end
  L0_2 = {}
  L1_2 = "a"
  L2_2 = "b"
  L0_2[1] = L1_2
  L0_2[2] = L2_2
  L1_2 = "press_spin_"
  L2_2 = RandomNumber
  L3_2 = 2
  L2_2 = L2_2(L3_2)
  L2_2 = L0_2[L2_2]
  L1_2 = L1_2 .. L2_2
  L2_2 = L20_1
  L3_2 = L1_2
  L2_2(L3_2)
  L2_2 = L18_1
  L3_2 = L1_2
  L2_2(L3_2)
end
function L32_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = TriggerServerEvent
  L2_2 = "Slots:BeginFix"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
function L33_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = DebugStart
  L1_2 = "StartLeaving"
  L0_2(L1_2)
  L0_2 = CAN_INTERACT
  if not L0_2 then
    return
  end
  L0_2 = L4_1
  if not L0_2 then
    return
  end
  L0_2 = ForgotLastInteractionEntity
  L0_2()
  L0_2 = ForgotLastStartedGameType
  L1_2 = "slots"
  L0_2(L1_2)
  L0_2 = BlockPlayerInteraction
  L1_2 = 3500
  L0_2(L1_2)
  CAN_SHOW_NOTIFY = true
  L0_2 = false
  L4_1 = L0_2
  L0_2 = GetCloudTimeAsInt
  L0_2 = L0_2()
  L16_1 = L0_2
  L0_2 = nil
  L7_1 = L0_2
  L0_2 = TriggerServerEvent
  L1_2 = "Slots:Quit"
  L0_2(L1_2)
  L0_2 = {}
  L1_2 = "exit_left"
  L2_2 = "exit_right"
  L0_2[1] = L1_2
  L0_2[2] = L2_2
  L1_2 = RandomNumber
  L2_2 = 2
  L1_2 = L1_2(L2_2)
  L1_2 = L0_2[L1_2]
  L2_2 = L20_1
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_1 = L2_2
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3
    L0_3 = Stats_EndActivity
    L0_3()
    L0_3 = Config
    L0_3 = L0_3.SLOTS_1ST_PERSON
    if L0_3 then
      L0_3 = SetFollowPedCamViewMode
      L1_3 = L11_1
      L0_3(L1_3)
    end
    L0_3 = Wait
    L1_3 = 2700
    L0_3(L1_3)
    L0_3 = NetworkStopSynchronisedScene
    L1_3 = L3_1
    L0_3(L1_3)
    L0_3 = DisposeSynchronizedScene
    L1_3 = L3_1
    L0_3(L1_3)
    L0_3 = DestroyActualAnimationScene
    L0_3()
    L0_3 = nil
    L3_1 = L0_3
    L0_3 = ClearPedTasks
    L1_3 = PlayerPedId
    L1_3 = L1_3()
    L0_3(L1_3)
    L0_3 = ClearPedSecondaryTask
    L1_3 = PlayerPedId
    L1_3 = L1_3()
    L0_3(L1_3)
    L0_3 = ScenePed_AnnounceEnd
    L0_3()
    L0_3 = SetInventoryBusy
    L1_3 = false
    L0_3(L1_3)
  end
  L4_2 = "stop leaving scene (enable walking) slots"
  L2_2(L3_2, L4_2)
end
function L34_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = DebugStart
  L1_2 = "StartEntering"
  L0_2(L1_2)
  L0_2 = CAN_INTERACT
  if not L0_2 then
    return
  end
  L0_2 = L4_1
  if L0_2 then
    return
  end
  LAST_STARTED_GAME_TYPE = "slots"
  L0_2 = L10_1
  if nil == L0_2 then
    return
  end
  L0_2 = GetEntityModel
  L1_2 = L10_1
  L0_2 = L0_2(L1_2)
  L1_2 = GetEntityCoords
  L2_2 = L10_1
  L1_2 = L1_2(L2_2)
  L2_2 = GetEntityHeading
  L3_2 = L10_1
  L2_2 = L2_2(L3_2)
  L3_2 = GetEntityRotation
  L4_2 = L10_1
  L3_2 = L3_2(L4_2)
  L4_2 = L26_1
  L5_2 = L0_2
  L6_2 = L1_2
  L7_2 = L2_2
  L8_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = L4_2.playerId
  if L5_2 then
    return
  end
  L5_2 = true
  L4_1 = L5_2
  L5_2 = 0
  L13_1 = L5_2
  L5_2 = 0
  L15_1 = L5_2
  L5_2 = ""
  L12_1 = L5_2
  L6_1 = L4_2
  L5_2 = L6_1.prepareToPlay
  L5_2()
  L5_2 = "anim_casino_a@amb@casino@games@slots@"
  L6_2 = IsPedMale
  L7_2 = PlayerPedId
  L7_2, L8_2, L9_2, L10_2 = L7_2()
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  if L6_2 then
    L6_2 = "male"
    if L6_2 then
      goto lbl_61
    end
  end
  L6_2 = "female"
  ::lbl_61::
  L5_2 = L5_2 .. L6_2
  L5_1 = L5_2
  L5_2 = L28_1
  L5_2()
  L5_2 = PlaySound
  L6_2 = "welcome_stinger"
  L7_2 = machineModels
  L8_2 = L6_1.hash
  L7_2 = L7_2[L8_2]
  L7_2 = L7_2.sounds
  L8_2 = PlayerPedId
  L8_2 = L8_2()
  L9_2 = true
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = L27_1
  L5_2()
  L5_2 = RequestPlayerChips
  L5_2()
  CAN_SHOW_NOTIFY = false
  L5_2 = BlockPlayerInteraction
  L6_2 = 3500
  L5_2(L6_2)
  L5_2 = TriggerServerEvent
  L6_2 = "Slots:CreateSession"
  L7_2 = L0_2
  L8_2 = L1_2
  L9_2 = L2_2
  L10_2 = L3_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
end
L35_1 = RegisterNetEvent
L36_1 = "Slots:Results"
L35_1(L36_1)
L35_1 = AddEventHandler
L36_1 = "Slots:Results"
function L37_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L7_2 = IN_CASINO
  if not L7_2 then
    return
  end
  L7_2 = L26_1
  L8_2 = A0_2
  L9_2 = A1_2
  L10_2 = A2_2
  L11_2 = A3_2
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
  L8_2 = L6_1
  L8_2 = L7_2 == L8_2
  L9_2 = L7_2.animateResults
  L10_2 = A4_2
  L11_2 = 2000
  L12_2 = L8_2
  L9_2(L10_2, L11_2, L12_2)
  if L8_2 then
    L9_2 = L7_1
    if "press_spin_a" == L9_2 then
      L9_2 = 3500
      if L9_2 then
        goto lbl_30
      end
    end
    L9_2 = 4000
    ::lbl_30::
    L10_2 = BlockPlayerInteraction
    L11_2 = L9_2 + 500
    L10_2(L11_2)
    L10_2 = CreateThread
    function L11_2()
      local L0_3, L1_3
      L0_3 = Wait
      L1_3 = L9_2
      L0_3(L1_3)
      L0_3 = TriggerServerEvent
      L1_3 = "Slots:CollectWinnings"
      L0_3(L1_3)
    end
    L12_2 = "collect winnings slots"
    L10_2(L11_2, L12_2)
  end
end
L35_1(L36_1, L37_1)
L35_1 = RegisterNetEvent
L36_1 = "Slots:Blocked"
L35_1(L36_1)
L35_1 = AddEventHandler
L36_1 = "Slots:Blocked"
function L37_1()
  local L0_2, L1_2, L2_2
  L0_2 = IN_CASINO
  if not L0_2 then
    return
  end
  CAN_SHOW_NOTIFY = true
  L0_2 = false
  L4_1 = L0_2
  L0_2 = nil
  L7_1 = L0_2
  L0_2 = GetCloudTimeAsInt
  L0_2 = L0_2()
  L16_1 = L0_2
  L0_2 = L2_1
  if nil ~= L0_2 then
    L0_2 = NetworkStopSynchronisedScene
    L1_2 = L2_1
    L0_2(L1_2)
    L0_2 = nil
    L2_1 = L0_2
  end
  L0_2 = ClearPedTasks
  L1_2 = PlayerPedId
  L1_2, L2_2 = L1_2()
  L0_2(L1_2, L2_2)
  L0_2 = ClearPedSecondaryTask
  L1_2 = PlayerPedId
  L1_2, L2_2 = L1_2()
  L0_2(L1_2, L2_2)
  L0_2 = SetEntityCoords
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = GetPlayerPosition
  L2_2 = L2_2()
  L0_2(L1_2, L2_2)
end
L35_1(L36_1, L37_1)
L35_1 = RegisterNetEvent
L36_1 = "Slots:MachineBroke"
L35_1(L36_1)
L35_1 = AddEventHandler
L36_1 = "Slots:MachineBroke"
function L37_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2
  L5_2 = IN_CASINO
  if not L5_2 then
    return
  end
  L5_2 = L26_1
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A2_2
  L9_2 = A3_2
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  if A4_2 then
    L6_2 = PlaySound
    L7_2 = "FLIGHT_SCHOOL_LESSON_PASSED"
    L8_2 = "HUD_AWARDS"
    L6_2(L7_2, L8_2)
    L6_2 = L25_1
    L7_2 = L5_2
    L6_2(L7_2)
    L6_2 = L6_1
    if L6_2 == L5_2 then
      L6_2 = StopFromPlaying
      L6_2()
    end
  else
    L5_2.broken = false
  end
end
L35_1(L36_1, L37_1)
L35_1 = RegisterNetEvent
L36_1 = "Slots:Sessions"
L35_1(L36_1)
L35_1 = AddEventHandler
L36_1 = "Slots:Sessions"
function L37_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = IN_CASINO
  if not L2_2 then
    return
  end
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    if nil ~= L7_2 then
      L8_2 = L26_1
      L9_2 = L7_2.hash
      L10_2 = L7_2.coords
      L11_2 = L7_2.heading
      L12_2 = L7_2.rotation
      L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
      L9_2 = L7_2.playerId
      L8_2.playerId = L9_2
      L9_2 = L7_2.broken
      L8_2.broken = L9_2
      L9_2 = L8_2.broken
      if L9_2 then
        L9_2 = L25_1
        L10_2 = L8_2
        L9_2(L10_2)
      end
    end
  end
  L2_2 = Config
  L2_2 = L2_2.CASINO_ENABLE_AMBIENT_PEDS_SLOTS
  if L2_2 then
    L2_2 = Repeat
    L3_2 = A1_2
    L4_2 = 5
    L2_2 = L2_2(L3_2, L4_2)
    L2_2 = 3 + L2_2
    L3_2 = 1
    L4_2 = SLOT_MACHINE_COORDS
    L4_2 = #L4_2
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = Repeat
      L8_2 = L6_2 + 1
      L9_2 = 8
      L7_2 = L7_2(L8_2, L9_2)
      if L7_2 == L2_2 then
        L8_2 = L26_1
        L9_2 = table
        L9_2 = L9_2.unpack
        L10_2 = SLOT_MACHINE_COORDS
        L10_2 = L10_2[L6_2]
        L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
        L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
        L9_2 = L8_2.automate
        L10_2 = true
        L9_2(L10_2)
      end
    end
  end
end
L35_1(L36_1, L37_1)
L35_1 = RegisterNetEvent
L36_1 = "Slots:PlayerStart"
L35_1(L36_1)
L35_1 = AddEventHandler
L36_1 = "Slots:PlayerStart"
function L37_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2
  L5_2 = IN_CASINO
  if not L5_2 then
    return
  end
  L5_2 = L26_1
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L9_2 = A4_2
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2.playerId = A0_2
end
L35_1(L36_1, L37_1)
L35_1 = RegisterNetEvent
L36_1 = "Slots:BeginFix"
L35_1(L36_1)
L35_1 = AddEventHandler
L36_1 = "Slots:BeginFix"
function L37_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = IN_CASINO
  if not L3_2 then
    return
  end
  if 1 == A0_2 then
    L3_2 = exports
    L3_2 = L3_2.rcore_casino_jobs
    L3_2 = L3_2.GetCircuitBoard
    L3_2 = L3_2()
    L4_2 = Config
    L4_2 = L4_2.Jobs
    L4_2 = L4_2.Electrician
    L4_2 = L4_2.Difficulty
    L4_2 = L4_2[A2_2]
    L4_2 = L4_2.CircuitBoardLevel
    L5_2 = Config
    L5_2 = L5_2.Jobs
    L5_2 = L5_2.Electrician
    L5_2 = L5_2.Difficulty
    L5_2 = L5_2[A2_2]
    L5_2 = L5_2.CircuitBoardLifes
    L6_2 = L3_2.LoadAndStart
    L7_2 = L4_2
    L8_2 = L5_2
    function L9_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3
      if A0_3 then
        L1_3 = TriggerServerEvent
        L2_3 = "Slots:Fixed"
        L3_3 = A1_2
        L1_3(L2_3, L3_3)
        L1_3 = PlaySound
        L2_3 = "welcome_stinger"
        L3_3 = machineModels
        L4_3 = A2_2
        L3_3 = L3_3[L4_3]
        L3_3 = L3_3.sounds
        L4_3 = PlayerPedId
        L4_3 = L4_3()
        L5_3 = true
        L1_3(L2_3, L3_3, L4_3, L5_3)
      end
    end
    L6_2(L7_2, L8_2, L9_2)
  end
end
L35_1(L36_1, L37_1)
L35_1 = RegisterNetEvent
L36_1 = "Slots:PlayerQuit"
L35_1(L36_1)
L35_1 = AddEventHandler
L36_1 = "Slots:PlayerQuit"
function L37_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2
  L5_2 = IN_CASINO
  if not L5_2 then
    return
  end
  L5_2 = L26_1
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L9_2 = A4_2
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2.playerId = nil
end
L35_1(L36_1, L37_1)
L35_1 = RegisterNetEvent
L36_1 = "Slots:Winnings"
L35_1(L36_1)
L35_1 = AddEventHandler
L36_1 = "Slots:Winnings"
function L37_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = IN_CASINO
  if not L3_2 then
    return
  end
  L3_2 = A0_2 - A2_2
  L4_2 = Stats_Increase
  L5_2 = "rcore_casino_slots_games_played"
  L6_2 = 1
  L4_2(L5_2, L6_2)
  if A0_2 > 0 then
    L4_2 = Stats_Increase
    L5_2 = "rcore_casino_slots_wins"
    L6_2 = 1
    L4_2(L5_2, L6_2)
    L4_2 = Stats_Increase
    L5_2 = "rcore_casino_slots_profit"
    L6_2 = A0_2
    L4_2(L5_2, L6_2)
  else
    L4_2 = Stats_Increase
    L5_2 = "rcore_casino_slots_loss"
    L6_2 = 1
    L4_2(L5_2, L6_2)
  end
  if L3_2 > 0 then
    L4_2 = Stats_Increase
    L5_2 = "rcore_casino_slots_profitreal"
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  elseif L3_2 < 0 then
    L4_2 = Stats_Decrease
    L5_2 = "rcore_casino_slots_profitreal"
    L6_2 = math
    L6_2 = L6_2.abs
    L7_2 = L3_2
    L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  end
  L4_2 = L6_1.generateDisplayMessage
  L5_2 = A0_2 > 0
  L4_2 = L4_2(L5_2)
  L12_1 = L4_2
  L15_1 = A0_2
  L4_2 = "triggerlose"
  L5_2 = "no_win"
  if A1_2 then
    L6_2 = Stats_Increase
    L7_2 = "rcore_casino_slots_jackpots"
    L8_2 = 1
    L6_2(L7_2, L8_2)
    L4_2 = "triggerjackpot"
    L5_2 = "jackpot"
  elseif A0_2 > 0 then
    L4_2 = "triggerwin"
    L6_2 = 1000
    if A0_2 < L6_2 then
      L6_2 = "small_win"
      if L6_2 then
        goto lbl_71
        L5_2 = L6_2 or L5_2
      end
    end
    L5_2 = "big_win"
  end
  ::lbl_71::
  L6_2 = L19_1
  L7_2 = "spinning_"
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L6_2 = L19_1
    L7_2 = "press_spin"
    L6_2 = L6_2(L7_2)
    if not L6_2 then
      goto lbl_94
    end
  end
  L7_1 = L4_2
  L6_2 = 0
  L8_1 = L6_2
  L6_2 = PlaySound
  L7_2 = L5_2
  L8_2 = machineModels
  L9_2 = L6_1.hash
  L8_2 = L8_2[L9_2]
  L8_2 = L8_2.sounds
  L9_2 = PlayerPedId
  L9_2 = L9_2()
  L10_2 = true
  L6_2(L7_2, L8_2, L9_2, L10_2)
  ::lbl_94::
end
L35_1(L36_1, L37_1)
L35_1 = RegisterKey
L36_1 = L29_1
L37_1 = "ButtonBetOne"
L38_1 = "INPUT_JUMP"
L39_1 = "SPACE"
L35_1(L36_1, L37_1, L38_1, L39_1)
L35_1 = RegisterKey
L36_1 = L30_1
L37_1 = "ButtonBetMax"
L38_1 = "F Key"
L39_1 = "f"
L35_1(L36_1, L37_1, L38_1, L39_1)
L35_1 = RegisterKey
L36_1 = L31_1
L37_1 = "ButtonSpin"
L38_1 = "Enter"
L39_1 = "RETURN"
L35_1(L36_1, L37_1, L38_1, L39_1)
L35_1 = RegisterKey
L36_1 = L29_1
L37_1 = "PadBetOne"
L38_1 = "RLEFT_INDEX"
L39_1 = "RLEFT_INDEX"
L40_1 = "PAD_DIGITALBUTTONANY"
L35_1(L36_1, L37_1, L38_1, L39_1, L40_1)
L35_1 = RegisterKey
L36_1 = L30_1
L37_1 = "PadBetMax"
L38_1 = "RUP_INDEX"
L39_1 = "RUP_INDEX"
L40_1 = "PAD_DIGITALBUTTONANY"
L35_1(L36_1, L37_1, L38_1, L39_1, L40_1)
L35_1 = RegisterKey
L36_1 = L31_1
L37_1 = "PadSpin"
L38_1 = "RDOWN_INDEX"
L39_1 = "RDOWN_INDEX"
L40_1 = "PAD_DIGITALBUTTONANY"
L35_1(L36_1, L37_1, L38_1, L39_1, L40_1)
function L35_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L0_2 = DebugStart
  L1_2 = "OnSlotsStart"
  L0_2(L1_2)
  L0_2 = pairs
  L1_2 = machineModels
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = CreateTargetModel
    L7_2 = L4_2
    L8_2 = {}
    L9_2 = {}
    L9_2.num = 1
    L9_2.type = "client"
    L9_2.event = "Casino:Target"
    L9_2.icon = "fas fa-gamepad"
    L10_2 = removePlaceholderText
    L11_2 = string
    L11_2 = L11_2.format
    L12_2 = Translation
    L12_2 = L12_2.Get
    L13_2 = "SLOTS_PRESS_TO_PLAY"
    L12_2 = L12_2(L13_2)
    L13_2 = L5_2.name
    L11_2, L12_2, L13_2, L14_2, L15_2 = L11_2(L12_2, L13_2)
    L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
    L9_2.label = L10_2
    L9_2.targeticon = "fas fa-gamepad"
    function L10_2(A0_3, A1_3, A2_3)
      local L3_3
      L3_3 = CAN_INTERACT
      return L3_3
    end
    L9_2.canInteract = L10_2
    L10_2 = {}
    L11_2 = 255
    L12_2 = 255
    L13_2 = 255
    L14_2 = 255
    L10_2[1] = L11_2
    L10_2[2] = L12_2
    L10_2[3] = L13_2
    L10_2[4] = L14_2
    L9_2.drawColor = L10_2
    L10_2 = {}
    L11_2 = 30
    L12_2 = 144
    L13_2 = 255
    L14_2 = 255
    L10_2[1] = L11_2
    L10_2[2] = L12_2
    L10_2[3] = L13_2
    L10_2[4] = L14_2
    L9_2.successDrawColor = L10_2
    L9_2.eventAction = "slots_start"
    L10_2 = {}
    L10_2.num = 2
    L10_2.type = "client"
    L10_2.event = "Casino:Target"
    L10_2.icon = "fas fa-circle-info"
    L11_2 = Translation
    L11_2 = L11_2.Get
    L12_2 = "ABOUT"
    L11_2 = L11_2(L12_2)
    L10_2.label = L11_2
    L10_2.targeticon = "fas fa-gamepad"
    function L11_2(A0_3, A1_3, A2_3)
      local L3_3
      L3_3 = CAN_INTERACT
      return L3_3
    end
    L10_2.canInteract = L11_2
    L11_2 = {}
    L12_2 = 255
    L13_2 = 255
    L14_2 = 255
    L15_2 = 255
    L11_2[1] = L12_2
    L11_2[2] = L13_2
    L11_2[3] = L14_2
    L11_2[4] = L15_2
    L10_2.drawColor = L11_2
    L11_2 = {}
    L12_2 = 30
    L13_2 = 144
    L14_2 = 255
    L15_2 = 255
    L11_2[1] = L12_2
    L11_2[2] = L13_2
    L11_2[3] = L14_2
    L11_2[4] = L15_2
    L10_2.successDrawColor = L11_2
    L10_2.eventAction = "slots_info"
    L8_2[1] = L9_2
    L8_2[2] = L10_2
    L6_2(L7_2, L8_2)
  end
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    while true do
      L0_3 = IN_CASINO
      if not L0_3 then
        break
      end
      L0_3 = L4_1
      if L0_3 then
        L0_3 = L7_1
        if nil ~= L0_3 then
          L0_3 = GAME_TIMER
          L1_3 = L8_1
          if L0_3 > L1_3 then
            L0_3 = L24_1
            L0_3()
          end
        end
      end
      L0_3 = L9_1
      if nil ~= L0_3 then
        L0_3 = IsAnimationInProgress
        L0_3 = L0_3()
        if not L0_3 then
          L0_3 = L9_1
          L1_3 = L0_3
          L0_3 = L0_3.startswith
          L2_3 = "press_spin_"
          L0_3 = L0_3(L1_3, L2_3)
          if L0_3 then
            L0_3 = L13_1
            if 0 ~= L0_3 then
              L0_3 = PLAYER_CHIPS
              L1_3 = L13_1
              if not (L0_3 < L1_3) then
                goto lbl_41
              end
            end
            L0_3 = nil
            L9_1 = L0_3
            L0_3 = "betidle_base"
            L7_1 = L0_3
          ::lbl_41::
          else
            L0_3 = PlaySynchronizedScene
            L1_3 = L6_1.coords
            L2_3 = L6_1.rotation
            L3_3 = L5_1
            L4_3 = L9_1
            L0_3(L1_3, L2_3, L3_3, L4_3)
            L0_3 = nil
            L9_1 = L0_3
            L0_3 = L19_1
            L1_3 = "press_spin_"
            L0_3 = L0_3(L1_3)
            if L0_3 then
              L0_3 = ""
              L12_1 = L0_3
              L0_3 = TriggerServerEvent
              L1_3 = "Slots:SpinMachine"
              L2_3 = L14_1
              L0_3(L1_3, L2_3)
            end
          end
        end
      end
      L0_3 = Wait
      L1_3 = L4_1
      if L1_3 then
        L1_3 = 33
        if L1_3 then
          goto lbl_68
        end
      end
      L1_3 = 250
      ::lbl_68::
      L0_3(L1_3)
    end
  end
  L2_2 = "OnSlotsStart slots"
  L0_2(L1_2, L2_2)
end
OnSlotsStart = L35_1
function L35_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = Config
  L2_2 = L2_2.UseTarget
  if L2_2 then
    return
  end
  L2_2 = DebugStart
  L3_2 = "Slots_ShowNotifyUI"
  L2_2(L3_2)
  L10_1 = A0_2
  L2_2 = GetEntityModel
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = Slots_GetInstanceFromCoords
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = ELECTRICITY_BROKEN
  if L4_2 then
    L4_2 = IsAtJob
    L5_2 = Config
    L5_2 = L5_2.Jobs
    L5_2 = L5_2.Electrician
    L5_2 = L5_2.JobName
    L6_2 = nil
    L7_2 = Config
    L7_2 = L7_2.Jobs
    L7_2 = L7_2.Electrician
    L7_2 = L7_2.MinGrade
    L8_2 = Config
    L8_2 = L8_2.Jobs
    L8_2 = L8_2.Electrician
    L8_2 = L8_2.MaxGrade
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
    if L4_2 then
      L4_2 = ShowHelpNotification
      L5_2 = Translation
      L5_2 = L5_2.Get
      L6_2 = "DIAMOND_WALL_BROKE_5"
      L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2(L6_2)
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    else
      L4_2 = ShowHelpNotification
      L5_2 = Translation
      L5_2 = L5_2.Get
      L6_2 = "DIAMOND_WALL_BROKE_4"
      L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2(L6_2)
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    end
    return
  end
  if nil ~= L3_2 then
    L4_2 = L3_2.playerId
    if not L4_2 then
      L4_2 = L3_2.ped
      if not L4_2 then
        goto lbl_65
      end
    end
    L4_2 = InfoPanel_UpdateNotification
    L5_2 = Translation
    L5_2 = L5_2.Get
    L6_2 = "SLOTS_MACHINE_USED"
    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2(L6_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    do return end
    ::lbl_65::
    L4_2 = L3_2.broken
    if L4_2 then
      L4_2 = IsAtJob
      L5_2 = Config
      L5_2 = L5_2.Jobs
      L5_2 = L5_2.Electrician
      L5_2 = L5_2.JobName
      L6_2 = nil
      L7_2 = Config
      L7_2 = L7_2.Jobs
      L7_2 = L7_2.Electrician
      L7_2 = L7_2.MinGrade
      L8_2 = Config
      L8_2 = L8_2.Jobs
      L8_2 = L8_2.Electrician
      L8_2 = L8_2.MaxGrade
      L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
      if L4_2 then
        L4_2 = InfoPanel_UpdateNotification
        L5_2 = Translation
        L5_2 = L5_2.Get
        L6_2 = "JOB_SLOTS_BROKEN_2"
        L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2(L6_2)
        L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
      else
        L4_2 = InfoPanel_UpdateNotification
        L5_2 = Translation
        L5_2 = L5_2.Get
        L6_2 = "JOB_SLOTS_BROKEN"
        L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2(L6_2)
        L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
      end
      return
    end
  end
  L4_2 = machineModels
  L4_2 = L4_2[L2_2]
  L5_2 = math
  L5_2 = L5_2.ceil
  L6_2 = L4_2.maxBet
  L6_2 = L6_2 / 5
  L5_2 = L5_2(L6_2)
  L6_2 = PLAYER_CHIPS
  if L5_2 > L6_2 then
    L6_2 = InfoPanel_UpdateNotification
    L7_2 = string
    L7_2 = L7_2.format
    L8_2 = Translation
    L8_2 = L8_2.Get
    L9_2 = "SLOTS_CANT_AFFORD_PLAYING"
    L8_2 = L8_2(L9_2)
    L9_2 = L5_2
    L10_2 = L4_2.name
    L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2, L9_2, L10_2)
    L6_2(L7_2, L8_2, L9_2, L10_2)
    return
  end
  if nil ~= L4_2 then
    L6_2 = InfoPanel_UpdateNotification
    L7_2 = string
    L7_2 = L7_2.format
    L8_2 = Translation
    L8_2 = L8_2.Get
    L9_2 = "SLOTS_PRESS_TO_PLAY"
    L8_2 = L8_2(L9_2)
    L9_2 = L4_2.name
    L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2, L9_2)
    L6_2(L7_2, L8_2, L9_2, L10_2)
  end
end
Slots_ShowNotifyUI = L35_1
function L35_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = machineModels
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    return
  end
  L1_2 = machineModels
  L1_2 = L1_2[A0_2]
  L2_2 = InfoPanel_Update
  L3_2 = L1_2.bannerDict
  L4_2 = L1_2.bannerDict
  L5_2 = L1_2.name
  L6_2 = Translation
  L6_2 = L6_2.Get
  L7_2 = "SLOTS_WELCOME"
  L6_2, L7_2 = L6_2(L7_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
Slots_ShowWelcome = L35_1
function L35_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = DebugStart
  L2_2 = "Slots_OnInteraction"
  L1_2(L2_2)
  L1_2 = L4_1
  if L1_2 then
    return
  end
  if A0_2 then
    L10_1 = A0_2
  end
  L1_2 = L10_1
  if not L1_2 then
    return
  end
  L1_2 = PLAYER_DRUNK_LEVEL
  if L1_2 >= 1.0 then
    return
  end
  L1_2 = ELECTRICITY_BROKEN
  if L1_2 then
    L1_2 = IsAtJob
    L2_2 = Config
    L2_2 = L2_2.Jobs
    L2_2 = L2_2.Electrician
    L2_2 = L2_2.JobName
    L3_2 = nil
    L4_2 = Config
    L4_2 = L4_2.Jobs
    L4_2 = L4_2.Electrician
    L4_2 = L4_2.MinGrade
    L5_2 = Config
    L5_2 = L5_2.Jobs
    L5_2 = L5_2.Electrician
    L5_2 = L5_2.MaxGrade
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
    if L1_2 then
      L1_2 = ShowHelpNotification
      L2_2 = Translation
      L2_2 = L2_2.Get
      L3_2 = "DIAMOND_WALL_BROKE_5"
      L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L2_2(L3_2)
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    else
      L1_2 = ShowHelpNotification
      L2_2 = Translation
      L2_2 = L2_2.Get
      L3_2 = "DIAMOND_WALL_BROKE_4"
      L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L2_2(L3_2)
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    end
    return
  end
  L1_2 = GetEntityCoords
  L2_2 = L10_1
  L1_2 = L1_2(L2_2)
  L2_2 = Slots_GetInstanceFromCoords
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if nil ~= L2_2 then
    L3_2 = L2_2.playerId
    if not L3_2 then
      L3_2 = L2_2.ped
      if not L3_2 then
        goto lbl_77
      end
    end
    L3_2 = InfoPanel_UpdateNotification
    L4_2 = Translation
    L4_2 = L4_2.Get
    L5_2 = "SLOTS_MACHINE_USED"
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2(L5_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L3_2 = InfoPanel_Update
    L4_2 = nil
    L5_2 = nil
    L6_2 = nil
    L7_2 = nil
    L8_2 = nil
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    do return end
    ::lbl_77::
    L3_2 = L2_2.broken
    if L3_2 then
      L3_2 = IsAtJob
      L4_2 = Config
      L4_2 = L4_2.Jobs
      L4_2 = L4_2.Electrician
      L4_2 = L4_2.JobName
      L5_2 = nil
      L6_2 = Config
      L6_2 = L6_2.Jobs
      L6_2 = L6_2.Electrician
      L6_2 = L6_2.MinGrade
      L7_2 = Config
      L7_2 = L7_2.Jobs
      L7_2 = L7_2.Electrician
      L7_2 = L7_2.MaxGrade
      L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
      if L3_2 then
        L3_2 = L32_1
        L4_2 = L1_2
        L3_2(L4_2)
        return
      else
        L3_2 = InfoPanel_UpdateNotification
        L4_2 = Translation
        L4_2 = L4_2.Get
        L5_2 = "JOB_SLOTS_BROKEN"
        L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2(L5_2)
        L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
      end
      L3_2 = InfoPanel_Update
      L4_2 = nil
      L5_2 = nil
      L6_2 = nil
      L7_2 = nil
      L8_2 = nil
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
      return
    end
  end
  L3_2 = GetEntityModel
  L4_2 = L10_1
  L3_2 = L3_2(L4_2)
  L4_2 = machineModels
  L4_2 = L4_2[L3_2]
  if nil ~= L4_2 then
    L5_2 = math
    L5_2 = L5_2.ceil
    L6_2 = L4_2.maxBet
    L6_2 = L6_2 / 5
    L5_2 = L5_2(L6_2)
    L6_2 = PLAYER_CHIPS
    if L5_2 > L6_2 then
      L6_2 = InfoPanel_UpdateNotification
      L7_2 = string
      L7_2 = L7_2.format
      L8_2 = Translation
      L8_2 = L8_2.Get
      L9_2 = "SLOTS_CANT_AFFORD_PLAYING"
      L8_2 = L8_2(L9_2)
      L9_2 = L5_2
      L10_2 = L4_2.name
      L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2, L9_2, L10_2)
      L6_2(L7_2, L8_2, L9_2, L10_2)
      return
    end
    L6_2 = InfoPanel_UpdateNotification
    L7_2 = nil
    L6_2(L7_2)
    L6_2 = GAME_INFO_PANEL
    if nil == L6_2 then
      L6_2 = ShouldShowHowToPlay
      L7_2 = "slots"
      L6_2 = L6_2(L7_2)
      if L6_2 then
        L6_2 = Slots_ShowWelcome
        L7_2 = L3_2
        L6_2(L7_2)
        return
      end
    end
    L6_2 = L34_1
    L6_2()
    L6_2 = InfoPanel_Update
    L7_2 = nil
    L8_2 = nil
    L9_2 = nil
    L10_2 = nil
    L6_2(L7_2, L8_2, L9_2, L10_2)
  else
    L5_2 = InfoPanel_Update
    L6_2 = nil
    L7_2 = nil
    L8_2 = nil
    L9_2 = nil
    L5_2(L6_2, L7_2, L8_2, L9_2)
  end
end
Slots_OnInteraction = L35_1
function L35_1()
  local L0_2, L1_2
  L0_2 = DebugStart
  L1_2 = "Slots_OnInteractionQuit"
  L0_2(L1_2)
  L0_2 = L33_1
  L0_2()
end
Slots_OnInteractionQuit = L35_1
function L35_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = DebugStart
  L1_2 = "OnSlotsStop"
  L0_2(L1_2)
  L0_2 = pairs
  L1_2 = L1_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = L5_2.cleanUp
    L6_2()
  end
  L0_2 = {}
  L1_1 = L0_2
end
OnSlotsStop = L35_1
L35_1 = Translation
L36_1 = Config
L36_1 = L36_1.Locale
L35_1 = L35_1[L36_1]
if L35_1 then
  L35_1 = pairs
  L36_1 = Translation
  L37_1 = Config
  L37_1 = L37_1.Locale
  L36_1 = L36_1[L37_1]
  L35_1, L36_1, L37_1, L38_1 = L35_1(L36_1)
  for L39_1, L40_1 in L35_1, L36_1, L37_1, L38_1 do
    L42_1 = L39_1
    L41_1 = L39_1.startswith
    L43_1 = "SLOTS_MES"
    L41_1 = L41_1(L42_1, L43_1)
    if L41_1 then
      L41_1 = AddTextEntry
      L42_1 = L39_1
      L43_1 = L40_1
      L41_1(L42_1, L43_1)
    end
  end
end
L35_1 = AddTextEntry
L36_1 = "SLOTS_RT_BET"
L37_1 = Translation
L37_1 = L37_1.Get
L38_1 = "SLOTS_RT_BET"
L37_1, L38_1, L39_1, L40_1, L41_1, L42_1, L43_1 = L37_1(L38_1)
L35_1(L36_1, L37_1, L38_1, L39_1, L40_1, L41_1, L42_1, L43_1)
L35_1 = AddTextEntry
L36_1 = "SLOTS_RT_LSTWIN"
L37_1 = Translation
L37_1 = L37_1.Get
L38_1 = "SLOTS_RT_LSTWIN"
L37_1, L38_1, L39_1, L40_1, L41_1, L42_1, L43_1 = L37_1(L38_1)
L35_1(L36_1, L37_1, L38_1, L39_1, L40_1, L41_1, L42_1, L43_1)
