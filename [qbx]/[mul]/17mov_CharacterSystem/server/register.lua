local L0_1, L1_1, L2_1
L0_1 = Functions
L0_1 = L0_1.RegisterServerCallback
L1_1 = "17mov_CharacterSystem:CreateCharacter"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = ""
  L3_2 = A1_2.firstName
  if L3_2 then
    L3_2 = A1_2.firstName
    L3_2 = #L3_2
    L4_2 = Register
    L4_2 = L4_2.Validation
    L4_2 = L4_2.firstName
    L4_2 = L4_2.minLength
    if not (L3_2 < L4_2) then
      L3_2 = A1_2.firstName
      L3_2 = #L3_2
      L4_2 = Register
      L4_2 = L4_2.Validation
      L4_2 = L4_2.firstName
      L4_2 = L4_2.maxLength
      if not (L3_2 > L4_2) then
        L3_2 = Register
        L3_2 = L3_2.Validation
        L3_2 = L3_2.firstName
        L3_2 = L3_2.letters
        if false == L3_2 then
          L3_2 = A1_2.firstName
          L4_2 = L3_2
          L3_2 = L3_2.match
          L5_2 = "%a"
          L3_2 = L3_2(L4_2, L5_2)
          if L3_2 then
            goto lbl_57
          end
        end
        L3_2 = Register
        L3_2 = L3_2.Validation
        L3_2 = L3_2.firstName
        L3_2 = L3_2.numbers
        if false == L3_2 then
          L3_2 = A1_2.firstName
          L4_2 = L3_2
          L3_2 = L3_2.match
          L5_2 = "%d"
          L3_2 = L3_2(L4_2, L5_2)
          if L3_2 then
            goto lbl_57
          end
        end
        L3_2 = Register
        L3_2 = L3_2.Validation
        L3_2 = L3_2.firstName
        L3_2 = L3_2.specialCharacters
        if false ~= L3_2 then
          goto lbl_58
        end
        L3_2 = A1_2.firstName
        L4_2 = L3_2
        L3_2 = L3_2.match
        L5_2 = "%W"
        L3_2 = L3_2(L4_2, L5_2)
        if not L3_2 then
          goto lbl_58
        end
      end
    end
  end
  ::lbl_57::
  L2_2 = "firstName"
  ::lbl_58::
  L3_2 = A1_2.lastName
  if L3_2 then
    L3_2 = A1_2.lastName
    L3_2 = #L3_2
    L4_2 = Register
    L4_2 = L4_2.Validation
    L4_2 = L4_2.lastName
    L4_2 = L4_2.minLength
    if not (L3_2 < L4_2) then
      L3_2 = A1_2.lastName
      L3_2 = #L3_2
      L4_2 = Register
      L4_2 = L4_2.Validation
      L4_2 = L4_2.lastName
      L4_2 = L4_2.maxLength
      if not (L3_2 > L4_2) then
        L3_2 = Register
        L3_2 = L3_2.Validation
        L3_2 = L3_2.lastName
        L3_2 = L3_2.letters
        if false == L3_2 then
          L3_2 = A1_2.lastName
          L4_2 = L3_2
          L3_2 = L3_2.match
          L5_2 = "%a"
          L3_2 = L3_2(L4_2, L5_2)
          if L3_2 then
            goto lbl_113
          end
        end
        L3_2 = Register
        L3_2 = L3_2.Validation
        L3_2 = L3_2.lastName
        L3_2 = L3_2.numbers
        if false == L3_2 then
          L3_2 = A1_2.lastName
          L4_2 = L3_2
          L3_2 = L3_2.match
          L5_2 = "%d"
          L3_2 = L3_2(L4_2, L5_2)
          if L3_2 then
            goto lbl_113
          end
        end
        L3_2 = Register
        L3_2 = L3_2.Validation
        L3_2 = L3_2.lastName
        L3_2 = L3_2.specialCharacters
        if false ~= L3_2 then
          goto lbl_114
        end
        L3_2 = A1_2.lastName
        L4_2 = L3_2
        L3_2 = L3_2.match
        L5_2 = "%W"
        L3_2 = L3_2(L4_2, L5_2)
        if not L3_2 then
          goto lbl_114
        end
      end
    end
  end
  ::lbl_113::
  L2_2 = "lastName"
  ::lbl_114::
  L3_2 = true
  L4_2 = A1_2.dateOfBirth
  if L4_2 then
    function L4_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
      L1_3 = "(%d+).(%d+).(%d+)"
      L3_3 = A0_3
      L2_3 = A0_3.match
      L4_3 = L1_3
      L2_3, L3_3, L4_3 = L2_3(L3_3, L4_3)
      L5_3 = {}
      L6_3 = tonumber
      L7_3 = L2_3
      L6_3 = L6_3(L7_3)
      L5_3.day = L6_3
      L6_3 = tonumber
      L7_3 = L3_3
      L6_3 = L6_3(L7_3)
      L5_3.month = L6_3
      L6_3 = tonumber
      L7_3 = L4_3
      L6_3 = L6_3(L7_3)
      L5_3.year = L6_3
      return L5_3
    end
    function L5_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3
      L1_3 = os
      L1_3 = L1_3.date
      L2_3 = "*t"
      L1_3 = L1_3(L2_3)
      L2_3 = L1_3.year
      L3_3 = A0_3.year
      L2_3 = L2_3 - L3_3
      L3_3 = L1_3.month
      L4_3 = A0_3.month
      if not (L3_3 < L4_3) then
        L3_3 = L1_3.month
        L4_3 = A0_3.month
        if L3_3 ~= L4_3 then
          goto lbl_23
        end
        L3_3 = L1_3.day
        L4_3 = A0_3.day
        if not (L3_3 < L4_3) then
          goto lbl_23
        end
      end
      L2_3 = L2_3 - 1
      ::lbl_23::
      return L2_3
    end
    L6_2 = L4_2
    L7_2 = A1_2.dateOfBirth
    L6_2 = L6_2(L7_2)
    L7_2 = L5_2
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    L8_2 = true
    L9_2 = true
    L10_2 = Register
    L10_2 = L10_2.Validation
    L10_2 = L10_2.dateOfBirth
    L10_2 = L10_2.minAge
    if L10_2 then
      L10_2 = Register
      L10_2 = L10_2.Validation
      L10_2 = L10_2.dateOfBirth
      L10_2 = L10_2.minAge
      L8_2 = L7_2 >= L10_2
    end
    L10_2 = Register
    L10_2 = L10_2.Validation
    L10_2 = L10_2.dateOfBirth
    L10_2 = L10_2.maxAge
    if L10_2 then
      L10_2 = Register
      L10_2 = L10_2.Validation
      L10_2 = L10_2.dateOfBirth
      L10_2 = L10_2.maxAge
      L9_2 = L7_2 <= L10_2
    end
    L3_2 = L8_2 or L3_2
    if L8_2 then
      L3_2 = L9_2
    end
  end
  if not L3_2 then
    L2_2 = "dateOfBirth"
  end
  L4_2 = Config
  L4_2 = L4_2.Framework
  if "QBCore" == L4_2 then
    L4_2 = false
    L5_2 = 1
    L6_2 = Register
    L6_2 = L6_2.Countries
    L6_2 = #L6_2
    L7_2 = 1
    for L8_2 = L5_2, L6_2, L7_2 do
      L9_2 = A1_2.nationality
      L10_2 = Register
      L10_2 = L10_2.Countries
      L10_2 = L10_2[L8_2]
      if L9_2 == L10_2 then
        L4_2 = true
      end
    end
    if not L4_2 then
      L2_2 = "nationality"
    end
  else
    L4_2 = Config
    L4_2 = L4_2.Framework
    if "ESX" == L4_2 then
      L4_2 = A1_2.height
      if L4_2 then
        L4_2 = A1_2.height
        L5_2 = Register
        L5_2 = L5_2.Validation
        L5_2 = L5_2.height
        L5_2 = L5_2.minValue
        if not (L4_2 < L5_2) then
          L4_2 = A1_2.height
          L5_2 = Register
          L5_2 = L5_2.Validation
          L5_2 = L5_2.height
          L5_2 = L5_2.maxValue
          if not (L4_2 > L5_2) then
            goto lbl_207
          end
        end
      end
      L2_2 = "height"
    end
  end
  ::lbl_207::
  L4_2 = A1_2.isMale
  if true ~= L4_2 then
    L4_2 = A1_2.isMale
    if false ~= L4_2 then
      L2_2 = "isMale"
    end
  end
  L4_2 = #L2_2
  if L4_2 > 0 then
    return L2_2
  end
  L4_2 = Config
  L4_2 = L4_2.Showcase
  if L4_2 then
    L4_2 = TriggerClientEvent
    L5_2 = "17mov_CharacterSystem:CharacterChoosen"
    L6_2 = A0_2
    L7_2 = nil
    L8_2 = true
    L9_2 = A1_2.isMale
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
    L4_2 = true
    return L4_2
  end
  L4_2 = Config
  L4_2 = L4_2.Framework
  if "QBCore" == L4_2 then
    L4_2 = {}
    L5_2 = A1_2.id
    L4_2.cid = L5_2
    L5_2 = {}
    L6_2 = A1_2.cid
    L5_2.cid = L6_2
    L6_2 = A1_2.firstName
    L5_2.firstname = L6_2
    L6_2 = A1_2.lastName
    L5_2.lastname = L6_2
    L6_2 = A1_2.dateOfBirth
    L5_2.birthdate = L6_2
    L6_2 = A1_2.isMale
    L5_2.gender = L6_2
    L6_2 = A1_2.nationality
    L5_2.nationality = L6_2
    L4_2.charinfo = L5_2
    L5_2 = L4_2.charinfo
    L5_2 = L5_2.gender
    if L5_2 then
      L5_2 = L4_2.charinfo
      L5_2.gender = 0
    else
      L5_2 = L4_2.charinfo
      L5_2.gender = 1
    end
    L5_2 = CreateThread
    function L6_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = Core
      L0_3 = L0_3.Player
      L0_3 = L0_3.Login
      L1_3 = A0_2
      L2_3 = false
      L3_3 = L4_2
      L0_3 = L0_3(L1_3, L2_3, L3_3)
      if L0_3 then
        L0_3 = Selector
        L0_3 = L0_3.CharacterChoosen
        L1_3 = A0_2
        L2_3 = true
        L0_3(L1_3, L2_3)
      end
    end
    L5_2(L6_2)
  else
    L4_2 = Config
    L4_2 = L4_2.Framework
    if "ESX" == L4_2 then
      L4_2 = {}
      L5_2 = A1_2.firstName
      L4_2.firstname = L5_2
      L5_2 = A1_2.lastName
      L4_2.lastname = L5_2
      L5_2 = A1_2.dateOfBirth
      L4_2.dateofbirth = L5_2
      L5_2 = A1_2.isMale
      L4_2.sex = L5_2
      L5_2 = A1_2.height
      L4_2.height = L5_2
      L5_2 = L4_2.sex
      if L5_2 then
        L4_2.sex = "m"
      else
        L4_2.sex = "f"
      end
      L5_2 = CreateThread
      function L6_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3
        L0_3 = TriggerEvent
        L1_3 = "esx:onPlayerJoined"
        L2_3 = A0_2
        L3_3 = Config
        L3_3 = L3_3.CustomPrefix
        if not L3_3 then
          L3_3 = "char"
        end
        L4_3 = A1_2.id
        L3_3 = L3_3 .. L4_3
        L4_3 = L4_2
        L0_3(L1_3, L2_3, L3_3, L4_3)
        L0_3 = Core
        L0_3 = L0_3.Players
        L1_3 = string
        L1_3 = L1_3.match
        L2_3 = GetPlayerIdentifierByType
        L3_3 = A0_2
        L4_3 = Config
        L4_3 = L4_3.PrimaryIdentifier
        L2_3 = L2_3(L3_3, L4_3)
        L3_3 = ":(.+)"
        L1_3 = L1_3(L2_3, L3_3)
        L0_3[L1_3] = true
        L0_3 = Selector
        L0_3 = L0_3.CharacterChoosen
        L1_3 = A0_2
        L2_3 = true
        L0_3(L1_3, L2_3)
      end
      L5_2(L6_2)
    end
  end
  L4_2 = TriggerClientEvent
  L5_2 = "17mov_CharacterSystem:CharacterChoosen"
  L6_2 = A0_2
  L7_2 = nil
  L8_2 = true
  L9_2 = A1_2.isMale
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = true
  return L4_2
end
L0_1(L1_1, L2_1)
