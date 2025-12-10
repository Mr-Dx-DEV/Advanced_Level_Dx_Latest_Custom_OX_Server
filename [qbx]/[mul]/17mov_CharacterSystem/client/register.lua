local L0_1, L1_1, L2_1
L0_1 = Register
L0_1.ActiveSlot = nil
L0_1 = Register
L0_1.LastEnteredGender = "male"
L0_1 = Register
function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Selector
  L0_2 = L0_2.Active
  if L0_2 then
    L0_2 = Functions
    L0_2 = L0_2.SendNuiMessage
    L1_2 = "ToggleSelector"
    L2_2 = {}
    L2_2.state = false
    L0_2(L1_2, L2_2)
    L0_2 = Selector
    L0_2 = L0_2.ActiveCharacter
    if nil ~= L0_2 then
      L0_2 = DoScreenFadeOut
      L1_2 = 100
      L0_2(L1_2)
      L0_2 = Wait
      L1_2 = 100
      L0_2(L1_2)
      L0_2 = Selector
      L0_2.ActiveCharacter = nil
      L0_2 = Wait
      L1_2 = 100
      L0_2(L1_2)
      L0_2 = DoScreenFadeIn
      L1_2 = 100
      L0_2(L1_2)
    end
  end
  L0_2 = SetNuiFocus
  L1_2 = true
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = Functions
  L0_2 = L0_2.SendNuiMessage
  L1_2 = "ToggleRegister"
  L2_2 = {}
  L2_2.state = true
  L3_2 = Config
  L3_2 = L3_2.Framework
  if "QBCore" == L3_2 then
    L3_2 = Register
    L3_2 = L3_2.Countries
    if L3_2 then
      goto lbl_49
    end
  end
  L3_2 = nil
  ::lbl_49::
  L2_2.countries = L3_2
  L3_2 = Register
  L3_2 = L3_2.Validation
  L2_2.validation = L3_2
  L0_2(L1_2, L2_2)
end
L0_1.Enter = L1_1
L0_1 = Register
function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Functions
  L0_2 = L0_2.SendNuiMessage
  L1_2 = "ToggleRegister"
  L2_2 = {}
  L2_2.state = false
  L0_2(L1_2, L2_2)
  L0_2 = Selector
  L0_2 = L0_2.Active
  if L0_2 then
    L0_2 = Functions
    L0_2 = L0_2.SendNuiMessage
    L1_2 = "ToggleSelector"
    L2_2 = {}
    L2_2.state = true
    L3_2 = Selector
    L3_2 = L3_2.Characters
    L2_2.characters = L3_2
    L0_2(L1_2, L2_2)
  else
    L0_2 = SetNuiFocus
    L1_2 = false
    L2_2 = false
    L0_2(L1_2, L2_2)
  end
end
L0_1.Exit = L1_1
L0_1 = RegisterNUICallback
L1_1 = "OpenRegister"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = Register
  L2_2 = L2_2.Enable
  if L2_2 then
    L2_2 = Register
    L3_2 = A0_2.id
    L2_2.ActiveSlot = L3_2
    L2_2 = Register
    L2_2 = L2_2.Enter
    L2_2()
  else
    L2_2 = Register
    L2_2 = L2_2.OpenCustom
    L3_2 = A0_2.id
    L2_2(L3_2)
  end
  L2_2 = A1_2
  L3_2 = {}
  L2_2(L3_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "CloseRegister"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = Register
  L2_2 = L2_2.Exit
  L2_2()
  L2_2 = A1_2
  L3_2 = {}
  L2_2(L3_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "CreateCharacter"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Register
  L2_2 = L2_2.ActiveSlot
  A0_2.id = L2_2
  L2_2 = Register
  L3_2 = A0_2.isMale
  if L3_2 then
    L3_2 = "male"
    if L3_2 then
      goto lbl_12
    end
  end
  L3_2 = "female"
  ::lbl_12::
  L2_2.LastEnteredGender = L3_2
  L2_2 = Functions
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "17mov_CharacterSystem:CreateCharacter"
  function L4_2(A0_3)
    local L1_3, L2_3
    if true == A0_3 then
      L1_3 = A1_2
      L2_3 = {}
      L1_3(L2_3)
      L1_3 = DoScreenFadeOut
      L2_3 = 100
      L1_3(L2_3)
      L1_3 = Selector
      L1_3 = L1_3.Exit
      L1_3()
      L1_3 = Register
      L1_3 = L1_3.Exit
      L1_3()
    else
      L1_3 = A1_2
      L2_3 = {}
      L2_3.message = A0_3
      L1_3(L2_3)
    end
  end
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1(L1_1, L2_1)
