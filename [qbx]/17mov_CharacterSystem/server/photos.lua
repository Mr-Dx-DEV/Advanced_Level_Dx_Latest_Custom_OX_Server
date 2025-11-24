local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = RegisterNetEvent
L1_1 = "17mov_CharacterSystem:UploadPhotos"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L1_2 = pairs
  L2_2 = A0_2
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = GetResourcePath
    L8_2 = Functions
    L8_2 = L8_2.ResourceName
    L7_2 = L7_2(L8_2)
    L8_2 = string
    L8_2 = L8_2.format
    L9_2 = "%s/web/photos/%s-%s-%s.webp"
    L10_2 = L7_2
    L11_2 = L6_2.model
    L12_2 = L6_2.component
    L12_2 = L12_2.name
    L13_2 = L6_2.drawable
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
    L9_2 = string
    L9_2 = L9_2.format
    L10_2 = "%s/web/public/photos/%s-%s-%s.webp"
    L11_2 = L7_2
    L12_2 = L6_2.model
    L13_2 = L6_2.component
    L13_2 = L13_2.name
    L14_2 = L6_2.drawable
    L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
    L10_2 = io
    L10_2 = L10_2.open
    L11_2 = L8_2
    L12_2 = "wb"
    L10_2 = L10_2(L11_2, L12_2)
    L11_2 = io
    L11_2 = L11_2.open
    L12_2 = L9_2
    L13_2 = "wb"
    L11_2 = L11_2(L12_2, L13_2)
    if L10_2 then
      L12_2 = print
      L13_2 = string
      L13_2 = L13_2.format
      L14_2 = "^5[INFORMATION]:^0 Saved photo. Model: %s, component: %s, drawable: %s"
      L15_2 = L6_2.model
      L16_2 = L6_2.component
      L16_2 = L16_2.name
      L17_2 = L6_2.drawable
      L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
      L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
      L13_2 = L10_2
      L12_2 = L10_2.write
      L14_2 = Functions
      L14_2 = L14_2.DecodeBase64
      L15_2 = L6_2.image
      L16_2 = L15_2
      L15_2 = L15_2.gsub
      L17_2 = "^data:image/.+;base64,"
      L18_2 = ""
      L15_2, L16_2, L17_2, L18_2 = L15_2(L16_2, L17_2, L18_2)
      L14_2, L15_2, L16_2, L17_2, L18_2 = L14_2(L15_2, L16_2, L17_2, L18_2)
      L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
      L13_2 = L10_2
      L12_2 = L10_2.close
      L12_2(L13_2)
    else
      L12_2 = Functions
      L12_2 = L12_2.Error
      L13_2 = string
      L13_2 = L13_2.format
      L14_2 = "Failed to save photo. Model: %s, %s, drawable: %s"
      L15_2 = L6_2.model
      L16_2 = L6_2.component
      L16_2 = L16_2.name
      L17_2 = L6_2.drawable
      L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
      L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    end
    if L11_2 then
      L13_2 = L11_2
      L12_2 = L11_2.write
      L14_2 = Functions
      L14_2 = L14_2.DecodeBase64
      L15_2 = L6_2.image
      L16_2 = L15_2
      L15_2 = L15_2.gsub
      L17_2 = "^data:image/.+;base64,"
      L18_2 = ""
      L15_2, L16_2, L17_2, L18_2 = L15_2(L16_2, L17_2, L18_2)
      L14_2, L15_2, L16_2, L17_2, L18_2 = L14_2(L15_2, L16_2, L17_2, L18_2)
      L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
      L13_2 = L11_2
      L12_2 = L11_2.close
      L12_2(L13_2)
    end
  end
end
L0_1(L1_1, L2_1)
L0_1 = Config
L0_1 = L0_1.Framework
if "QBCore" == L0_1 then
  L0_1 = Core
  L0_1 = L0_1.Commands
  L0_1 = L0_1.Add
  L1_1 = "photos"
  L2_1 = "Enter Clothes photo creator"
  L3_1 = {}
  L4_1 = false
  function L5_1(A0_2)
    local L1_2, L2_2, L3_2
    L1_2 = TriggerClientEvent
    L2_2 = "17mov_CharacterSystem:OpenClothesPhotos"
    L3_2 = A0_2
    L1_2(L2_2, L3_2)
  end
  L6_1 = "admin"
  L0_1(L1_1, L2_1, L3_1, L4_1, L5_1, L6_1)
else
  L0_1 = Config
  L0_1 = L0_1.Framework
  if "ESX" == L0_1 then
    L0_1 = Core
    L0_1 = L0_1.RegisterCommand
    L1_1 = "photos"
    L2_1 = "admin"
    function L3_1(A0_2)
      local L1_2, L2_2
      L1_2 = A0_2.triggerEvent
      L2_2 = "17mov_CharacterSystem:OpenClothesPhotos"
      L1_2(L2_2)
    end
    L4_1 = false
    L5_1 = {}
    L5_1.help = "Enter Clothes Photo creator"
    L0_1(L1_1, L2_1, L3_1, L4_1, L5_1)
  end
end
