local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1
L0_1 = {}
L0_1.users = "identifier"
L1_1 = Selector
L2_1 = {}
L1_1.Buckets = L2_1
L1_1 = 100
L2_1 = 1200
L3_1 = 1
for L4_1 = L1_1, L2_1, L3_1 do
  L5_1 = Selector
  L5_1 = L5_1.Buckets
  L5_1[L4_1] = false
end
L1_1 = Skin
L1_1 = L1_1.Enabled
if L1_1 then
  L1_1 = MySQL
  L1_1 = L1_1.ready
  function L2_1()
    local L0_2, L1_2, L2_2, L3_2
    L0_2 = MySQL
    L0_2 = L0_2.Async
    L0_2 = L0_2.fetchAll
    L1_2 = "SHOW TABLES LIKE 'player_outfits';"
    L2_2 = {}
    function L3_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3
      L1_3 = #A0_3
      if L1_3 > 0 then
        L1_3 = MySQL
        L1_3 = L1_3.Async
        L1_3 = L1_3.fetchAll
        L2_3 = "SHOW INDEX FROM player_outfits WHERE Key_name = 'citizenid_outfitname_model';"
        L3_3 = {}
        function L4_3(A0_4)
          local L1_4, L2_4
          L1_4 = #A0_4
          if L1_4 > 0 then
            L1_4 = MySQL
            L1_4 = L1_4.Async
            L1_4 = L1_4.execute
            L2_4 = "ALTER TABLE player_outfits DROP INDEX citizenid_outfitname_model;"
            L1_4(L2_4)
            L1_4 = Functions
            L1_4 = L1_4.Print
            L2_4 = "REMOVED UNIQUE KEY FROM `player_outfits` TABLE"
            L1_4(L2_4)
          end
        end
        L1_3(L2_3, L3_3, L4_3)
      end
    end
    L0_2(L1_2, L2_2, L3_2)
  end
  L1_1(L2_1)
end
L1_1 = Config
L1_1 = L1_1.Framework
if "ESX" == L1_1 then
  L1_1 = Selector
  L1_1 = L1_1.MaxCharacters
  if L1_1 > 9 then
    L1_1 = Selector
    L1_1.MaxCharacters = 9
  end
  L1_1 = pairs
  L2_1 = Selector
  L2_1 = L2_1.PlayerMaxCharacters
  L1_1, L2_1, L3_1, L4_1 = L1_1(L2_1)
  for L5_1, L6_1 in L1_1, L2_1, L3_1, L4_1 do
    if L6_1 > 9 then
      L6_1 = 9
    end
  end
  L1_1 = MySQL
  L1_1 = L1_1.ready
  function L2_1()
    local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
    L0_2 = MySQL
    L0_2 = L0_2.Sync
    L0_2 = L0_2.execute
    L1_2 = [[
            CREATE TABLE IF NOT EXISTS 17mov_character_outfits (
                identifier VARCHAR(100),
                outfit LONGTEXT,
                outfit_name VARCHAR(100),
                INDEX idx_identifier (identifier)
            );
        ]]
    L2_2 = {}
    L0_2(L1_2, L2_2)
    L0_2 = MySQL
    L0_2 = L0_2.Sync
    L0_2 = L0_2.fetchAll
    L1_2 = [[
            SELECT COUNT(1) as count
            FROM information_schema.statistics
            WHERE table_schema = DATABASE()
            AND table_name = '17mov_character_outfits'
            AND index_name = 'idx_identifier';
        ]]
    L2_2 = {}
    L0_2 = L0_2(L1_2, L2_2)
    L1_2 = L0_2[1]
    if L1_2 then
      L1_2 = L0_2[1]
      L1_2 = L1_2.count
      if 0 == L1_2 then
        L1_2 = MySQL
        L1_2 = L1_2.Sync
        L1_2 = L1_2.execute
        L2_2 = [[
                CREATE INDEX idx_identifier ON 17mov_character_outfits (identifier);
            ]]
        L3_2 = {}
        L1_2(L2_2, L3_2)
      end
    end
    L1_2 = nil
    L2_2 = GetConvar
    L3_2 = "mysql_connection_string"
    L4_2 = ""
    L2_2 = L2_2(L3_2, L4_2)
    if "" == L2_2 then
      L3_2 = Functions
      L3_2 = L3_2.Print
      L4_2 = "Unable to determine database from mysql_connection_string"
      L3_2(L4_2)
    else
      L4_2 = L2_2
      L3_2 = L2_2.find
      L5_2 = "mysql://"
      L3_2 = L3_2(L4_2, L5_2)
      if L3_2 then
        L4_2 = L2_2
        L3_2 = L2_2.sub
        L5_2 = 9
        L6_2 = -1
        L3_2 = L3_2(L4_2, L5_2, L6_2)
        L2_2 = L3_2
        L4_2 = L2_2
        L3_2 = L2_2.sub
        L6_2 = L2_2
        L5_2 = L2_2.find
        L7_2 = "/"
        L5_2 = L5_2(L6_2, L7_2)
        L5_2 = L5_2 + 1
        L6_2 = -1
        L3_2 = L3_2(L4_2, L5_2, L6_2)
        L4_2 = L3_2
        L3_2 = L3_2.gsub
        L5_2 = "[%?]+[%w%p]*$"
        L6_2 = ""
        L3_2 = L3_2(L4_2, L5_2, L6_2)
        L1_2 = L3_2
      else
        L3_2 = {}
        L4_2 = string
        L4_2 = L4_2.strsplit
        L5_2 = ";"
        L6_2 = L2_2
        L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L4_2(L5_2, L6_2)
        L3_2[1] = L4_2
        L3_2[2] = L5_2
        L3_2[3] = L6_2
        L3_2[4] = L7_2
        L3_2[5] = L8_2
        L3_2[6] = L9_2
        L3_2[7] = L10_2
        L3_2[8] = L11_2
        L3_2[9] = L12_2
        L2_2 = L3_2
        L3_2 = 1
        L4_2 = #L2_2
        L5_2 = 1
        for L6_2 = L3_2, L4_2, L5_2 do
          L7_2 = L2_2[L6_2]
          L9_2 = L7_2
          L8_2 = L7_2.match
          L10_2 = "database"
          L8_2 = L8_2(L9_2, L10_2)
          if L8_2 then
            L9_2 = L7_2
            L8_2 = L7_2.sub
            L10_2 = 10
            L11_2 = #L7_2
            L8_2 = L8_2(L9_2, L10_2, L11_2)
            L1_2 = L8_2
          end
        end
      end
    end
    L2_2 = 48
    L3_2 = MySQL
    L3_2 = L3_2.query
    L3_2 = L3_2.await
    L4_2 = "SELECT TABLE_NAME, COLUMN_NAME, CHARACTER_MAXIMUM_LENGTH FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA = \"%s\" AND DATA_TYPE = \"varchar\" AND COLUMN_NAME IN (?)"
    L5_2 = L4_2
    L4_2 = L4_2.format
    L6_2 = L1_2
    L7_2 = L2_2
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L5_2 = {}
    L6_2 = Selector
    L6_2 = L6_2.IdentifierDatabaseColumns
    L5_2[1] = L6_2
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      L4_2 = pairs
      L5_2 = L3_2
      L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
      for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
        L11_2 = L9_2.TABLE_NAME
        L10_2 = L0_1
        L12_2 = L9_2.COLUMN_NAME
        L10_2[L11_2] = L12_2
      end
    end
  end
  L1_1(L2_1)
  L1_1 = next
  L2_1 = Core
  if L2_1 then
    L2_1 = L2_1.Players
  end
  L1_1 = L1_1(L2_1)
  if L1_1 then
    L1_1 = table
    L1_1 = L1_1.clone
    L2_1 = Core
    L2_1 = L2_1.Players
    L1_1 = L1_1(L2_1)
    L2_1 = table
    L2_1 = L2_1.wipe
    L3_1 = Core
    L3_1 = L3_1.Players
    L2_1(L3_1)
    L2_1 = pairs
    L3_1 = L1_1
    L2_1, L3_1, L4_1, L5_1 = L2_1(L3_1)
    for L6_1, L7_1 in L2_1, L3_1, L4_1, L5_1 do
      L8_1 = Core
      L8_1 = L8_1.Players
      L9_1 = string
      L9_1 = L9_1.match
      L10_1 = GetPlayerIdentifierByType
      L11_1 = L7_1.source
      L12_1 = Config
      L12_1 = L12_1.PrimaryIdentifier
      L10_1 = L10_1(L11_1, L12_1)
      L11_1 = ":(.+)"
      L9_1 = L9_1(L10_1, L11_1)
      L8_1[L9_1] = true
    end
  else
    L1_1 = Core
    L2_1 = {}
    L1_1.Players = L2_1
  end
  L1_1 = AddEventHandler
  L2_1 = "playerDropped"
  function L3_1()
    local L0_2, L1_2, L2_2, L3_2, L4_2
    L0_2 = Core
    L0_2 = L0_2.Players
    L1_2 = string
    L1_2 = L1_2.match
    L2_2 = GetPlayerIdentifierByType
    L3_2 = source
    L4_2 = Config
    L4_2 = L4_2.PrimaryIdentifier
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = ":(.+)"
    L1_2 = L1_2(L2_2, L3_2)
    L0_2[L1_2] = nil
  end
  L1_1(L2_1, L3_1)
  L1_1 = Config
  L1_1 = L1_1.EnableLicenseCheckOnConnect
  if L1_1 then
    L1_1 = AddEventHandler
    L2_1 = "playerConnecting"
    function L3_1(A0_2, A1_2, A2_2)
      local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
      L3_2 = A2_2.defer
      L3_2()
      L3_2 = string
      L3_2 = L3_2.match
      L4_2 = GetPlayerIdentifierByType
      L5_2 = source
      L6_2 = Config
      L6_2 = L6_2.PrimaryIdentifier
      L4_2 = L4_2(L5_2, L6_2)
      L5_2 = ":(.+)"
      L3_2 = L3_2(L4_2, L5_2)
      if L3_2 then
        L4_2 = Core
        if L4_2 then
          L4_2 = L4_2.Players
        end
        L4_2 = L4_2[L3_2]
        if L4_2 then
          L4_2 = A2_2.done
          L5_2 = _L
          L6_2 = "Server.UsedIdentifier"
          L7_2 = Config
          L7_2 = L7_2.PrimaryIdentifier
          L8_2 = L3_2
          L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2)
          L4_2(L5_2, L6_2, L7_2, L8_2)
        else
          L4_2 = A2_2.done
          L4_2()
        end
      else
        L4_2 = A2_2.done
        L5_2 = _L
        L6_2 = "Server.MissingIdentifier"
        L7_2 = Config
        L7_2 = L7_2.PrimaryIdentifier
        L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2)
        L4_2(L5_2, L6_2, L7_2, L8_2)
      end
    end
    L1_1(L2_1, L3_1)
  end
end
L1_1 = {}
IlleniumSkins = L1_1
IlleniumActive = false
L1_1 = MySQL
L1_1 = L1_1.ready
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = MySQL
  L0_2 = L0_2.query
  L0_2 = L0_2.await
  L1_2 = "SHOW TABLES LIKE 'playerskins'"
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L1_2 = #L0_2
    if L1_2 > 0 then
      L1_2 = MySQL
      L1_2 = L1_2.query
      L1_2 = L1_2.await
      L2_2 = "SELECT citizenid, model, skin FROM playerskins WHERE active = ?"
      L3_2 = {}
      L4_2 = 1
      L3_2[1] = L4_2
      L1_2 = L1_2(L2_2, L3_2)
      if L1_2 then
        L2_2 = #L1_2
        if L2_2 > 0 then
          IlleniumActive = true
          L2_2 = ipairs
          L3_2 = L1_2
          L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
          for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
            L8_2 = IlleniumSkins
            L9_2 = L7_2.citizenid
            L10_2 = {}
            L11_2 = json
            L11_2 = L11_2.decode
            L12_2 = L7_2.skin
            L11_2 = L11_2(L12_2)
            L10_2.skin = L11_2
            L11_2 = L7_2.model
            L10_2.model = L11_2
            L8_2[L9_2] = L10_2
          end
        end
      end
    end
  end
end
L1_1(L2_1)
L1_1 = Functions
L1_1 = L1_1.RegisterServerCallback
L2_1 = "17mov_CharacterSystem:RequestCharacters"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2
  L1_2 = Config
  L1_2 = L1_2.Showcase
  if L1_2 then
    L1_2 = Config
    L1_2 = L1_2.Showcase
    L1_2 = L1_2.Characters
    return L1_2
  end
  L1_2 = GetPlayerIdentifierByType
  L2_2 = A0_2
  L3_2 = Config
  L3_2 = L3_2.PrimaryIdentifier
  L1_2 = L1_2(L2_2, L3_2)
  if nil == L1_2 or "" == L1_2 then
    L2_2 = Functions
    L2_2 = L2_2.Print
    L3_2 = string
    L3_2 = L3_2.format
    L4_2 = "A player without identifier (%s) attempted to connect. Using 'license' instead"
    L5_2 = A0_2
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L3_2(L4_2, L5_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
    L2_2 = GetPlayerIdentifierByType
    L3_2 = A0_2
    L4_2 = "license"
    L2_2 = L2_2(L3_2, L4_2)
    L1_2 = L2_2
  end
  L2_2 = string
  L2_2 = L2_2.match
  L3_2 = L1_2
  L4_2 = ":(.+)"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = Selector
  L3_2 = L3_2.GetMaxSlots
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = {}
  L5_2 = false
  L6_2 = pairs
  L7_2 = Selector
  L7_2 = L7_2.Buckets
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    if L11_2 == A0_2 then
      L5_2 = true
      break
    end
  end
  if not L5_2 then
    L6_2 = pairs
    L7_2 = Selector
    L7_2 = L7_2.Buckets
    L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
    for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
      if false == L11_2 then
        L12_2 = SetPlayerRoutingBucket
        L13_2 = A0_2
        L14_2 = L10_2
        L12_2(L13_2, L14_2)
        L12_2 = Selector
        L12_2 = L12_2.Buckets
        L12_2[L10_2] = A0_2
        break
      end
    end
  end
  L6_2 = Config
  L6_2 = L6_2.Framework
  if "QBCore" == L6_2 then
    L6_2 = MySQL
    L6_2 = L6_2.query
    L6_2 = L6_2.await
    L7_2 = "SELECT * FROM players WHERE license LIKE ?"
    L8_2 = {}
    L9_2 = "%:"
    L10_2 = L2_2
    L9_2 = L9_2 .. L10_2
    L8_2[1] = L9_2
    L6_2 = L6_2(L7_2, L8_2)
    if not L6_2 then
      goto lbl_548
    end
    L7_2 = 1
    L8_2 = L3_2
    L9_2 = 1
    for L10_2 = L7_2, L8_2, L9_2 do
      L11_2 = {}
      L11_2.id = L10_2
      L11_2.used = false
      L4_2[L10_2] = L11_2
      L11_2 = pairs
      L12_2 = L6_2
      L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2)
      for L15_2, L16_2 in L11_2, L12_2, L13_2, L14_2 do
        L17_2 = L16_2.cid
        if L17_2 == L10_2 then
          L16_2.inventory = nil
          L17_2 = json
          L17_2 = L17_2.decode
          L18_2 = L16_2.charinfo
          L17_2 = L17_2(L18_2)
          L18_2 = json
          L18_2 = L18_2.decode
          L19_2 = L16_2.money
          L18_2 = L18_2(L19_2)
          L19_2 = MySQL
          L19_2 = L19_2.query
          L19_2 = L19_2.await
          L20_2 = "SELECT * FROM playerskins WHERE citizenid = ? AND active = ?"
          L21_2 = {}
          L22_2 = L16_2.citizenid
          L23_2 = 1
          L21_2[1] = L22_2
          L21_2[2] = L23_2
          L19_2 = L19_2(L20_2, L21_2)
          L20_2 = nil
          L21_2 = json
          L21_2 = L21_2.decode
          L22_2 = L16_2.position
          L21_2 = L21_2(L22_2)
          L22_2 = L19_2[1]
          if nil ~= L22_2 then
            L22_2 = L19_2[1]
            L22_2 = L22_2.model
            L23_2 = json
            L23_2 = L23_2.decode
            L24_2 = L19_2[1]
            L24_2 = L24_2.skin
            L23_2 = L23_2(L24_2)
            if L22_2 then
              L24_2 = tonumber
              L25_2 = L22_2
              L24_2 = L24_2(L25_2)
              L22_2 = L24_2 or L22_2
              if not L24_2 then
              end
            end
            L24_2 = L23_2.components
            if L24_2 then
              L24_2 = TranslateSkinFromIllenium
              L25_2 = json
              L25_2 = L25_2.decode
              L26_2 = L19_2[1]
              L26_2 = L26_2.skin
              L25_2 = L25_2(L26_2)
              L26_2 = L22_2
              L24_2 = L24_2(L25_2, L26_2)
              L20_2 = L24_2
            else
              L24_2 = TranslateSkinFromQB
              L25_2 = json
              L25_2 = L25_2.decode
              L26_2 = L19_2[1]
              L26_2 = L26_2.skin
              L25_2 = L25_2(L26_2)
              L26_2 = L22_2
              L24_2 = L24_2(L25_2, L26_2)
              L20_2 = L24_2
            end
          else
            L22_2 = GenerateRandomSkin
            L23_2 = L17_2.gender
            if 0 == L23_2 then
              L23_2 = "male"
              if L23_2 then
                goto lbl_180
              end
            end
            L23_2 = "female"
            ::lbl_180::
            L22_2 = L22_2(L23_2)
            L20_2 = L22_2
          end
          L22_2 = type
          L23_2 = L21_2
          L22_2 = L22_2(L23_2)
          if "table" == L22_2 then
            L22_2 = L21_2.x
            if L22_2 then
              L22_2 = L21_2.y
              if L22_2 then
                L22_2 = L21_2.z
                if L22_2 then
                  L22_2 = vector3
                  L23_2 = L21_2.x
                  L24_2 = L21_2.y
                  L25_2 = L21_2.z
                  L22_2 = L22_2(L23_2, L24_2, L25_2)
                  L21_2 = L22_2
              end
            end
            else
              L22_2 = L21_2.x
              if L22_2 then
                L22_2 = L21_2.y
                if L22_2 then
                  L22_2 = L21_2.z
                  if L22_2 then
                    L22_2 = L21_2.heading
                    if not L22_2 then
                      L22_2 = L21_2.w
                      if not L22_2 then
                        goto lbl_228
                      end
                    end
                    L22_2 = vector4
                    L23_2 = L21_2.x
                    L24_2 = L21_2.y
                    L25_2 = L21_2.z
                    L26_2 = L21_2.heading
                    if not L26_2 then
                      L26_2 = L21_2.w
                    end
                    L22_2 = L22_2(L23_2, L24_2, L25_2, L26_2)
                    L21_2 = L22_2
                  end
                end
              end
            end
          end
          ::lbl_228::
          L16_2.used = true
          L22_2 = L17_2.firstname
          L16_2.firstname = L22_2
          L22_2 = L17_2.lastname
          L16_2.lastname = L22_2
          L22_2 = L17_2.nationality
          L16_2.nationality = L22_2
          L22_2 = L18_2.cash
          L16_2.cash = L22_2
          L22_2 = L18_2.bank
          L16_2.bank = L22_2
          L22_2 = L17_2.gender
          L22_2 = 0 == L22_2
          L16_2.isMale = L22_2
          L16_2.skinData = L20_2
          L22_2 = L17_2.birthdate
          L16_2.dateOfBirth = L22_2
          L16_2.position = L21_2
          L4_2[L10_2] = L16_2
        end
      end
    end
  else
    L6_2 = Config
    L6_2 = L6_2.Framework
    if "ESX" == L6_2 then
      L6_2 = nil
      L7_2 = Config
      L7_2 = L7_2.CustomIdentifierMatch
      if nil ~= L7_2 then
        L7_2 = Config
        L7_2 = L7_2.CustomIdentifierMatch
        L8_2 = L2_2
        L7_2 = L7_2 .. L8_2
        L6_2 = L7_2
      else
        L7_2 = "%:"
        L8_2 = L2_2
        L7_2 = L7_2 .. L8_2
        L6_2 = L7_2
      end
      L7_2 = MySQL
      L7_2 = L7_2.query
      L7_2 = L7_2.await
      L8_2 = "SELECT * FROM users WHERE identifier LIKE ?"
      L9_2 = {}
      L10_2 = L6_2
      L9_2[1] = L10_2
      L7_2 = L7_2(L8_2, L9_2)
      L8_2 = GetPlayerIdentifierByType
      L9_2 = A0_2
      L10_2 = Config
      L10_2 = L10_2.PrimaryIdentifier
      L8_2 = L8_2(L9_2, L10_2)
      if nil == L8_2 or "" == L8_2 then
        L9_2 = Functions
        L9_2 = L9_2.Print
        L10_2 = string
        L10_2 = L10_2.format
        L11_2 = "A player without identifier (%s) attempted to connect. Using 'license' instead"
        L12_2 = A0_2
        L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L10_2(L11_2, L12_2)
        L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
        L9_2 = GetPlayerIdentifierByType
        L10_2 = A0_2
        L11_2 = "license"
        L9_2 = L9_2(L10_2, L11_2)
        L8_2 = L9_2
      end
      L9_2 = Core
      L9_2 = L9_2.Players
      L10_2 = string
      L10_2 = L10_2.match
      L11_2 = L8_2
      L12_2 = ":(.+)"
      L10_2 = L10_2(L11_2, L12_2)
      L9_2[L10_2] = true
      if not L7_2 then
        goto lbl_548
      end
      L9_2 = 1
      L10_2 = L3_2
      L11_2 = 1
      for L12_2 = L9_2, L10_2, L11_2 do
        L13_2 = {}
        L13_2.id = L12_2
        L13_2.used = false
        L4_2[L12_2] = L13_2
        L13_2 = pairs
        L14_2 = L7_2
        L13_2, L14_2, L15_2, L16_2 = L13_2(L14_2)
        for L17_2, L18_2 in L13_2, L14_2, L15_2, L16_2 do
          L19_2 = tonumber
          L20_2 = string
          L20_2 = L20_2.match
          L21_2 = L18_2.identifier
          L22_2 = "%a+(%d+):"
          L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L20_2(L21_2, L22_2)
          L19_2 = L19_2(L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
          if L19_2 and L12_2 == L19_2 then
            L20_2 = json
            L20_2 = L20_2.decode
            L21_2 = L18_2.accounts
            L20_2 = L20_2(L21_2)
            L21_2 = nil
            L22_2 = json
            L22_2 = L22_2.decode
            L23_2 = L18_2.position
            L22_2 = L22_2(L23_2)
            L23_2 = L18_2.skin
            if L23_2 then
              L23_2 = json
              L23_2 = L23_2.decode
              L24_2 = L18_2.skin
              L23_2 = L23_2(L24_2)
              if not L23_2 then
                goto lbl_436
              end
              L24_2 = L23_2.components
              if L24_2 then
                L24_2 = TranslateSkinFromIllenium
                L25_2 = L23_2
                L26_2 = L23_2.model
                if not L26_2 then
                  L26_2 = L18_2.sex
                  if "m" == L26_2 then
                    L26_2 = "mp_m_freemode_01"
                    if L26_2 then
                      goto lbl_384
                    end
                  end
                  L26_2 = L18_2.sex
                  if 0 == L26_2 then
                    L26_2 = "mp_m_freemode_01"
                    if L26_2 then
                      goto lbl_384
                    end
                  end
                  L26_2 = L18_2.sex
                  if "male" == L26_2 then
                    L26_2 = "mp_m_freemode_01"
                    if L26_2 then
                      goto lbl_384
                    end
                  end
                  L26_2 = "mp_f_freemode_01"
                end
                ::lbl_384::
                L24_2 = L24_2(L25_2, L26_2)
                L21_2 = L24_2
              else
                L24_2 = TranslateSkinFromESX
                L25_2 = L23_2
                L26_2 = L23_2.model
                if not L26_2 then
                  L26_2 = L18_2.sex
                  if "m" == L26_2 then
                    L26_2 = "mp_m_freemode_01"
                    if L26_2 then
                      goto lbl_411
                    end
                  end
                  L26_2 = L18_2.sex
                  if 0 == L26_2 then
                    L26_2 = "mp_m_freemode_01"
                    if L26_2 then
                      goto lbl_411
                    end
                  end
                  L26_2 = L18_2.sex
                  if "male" == L26_2 then
                    L26_2 = "mp_m_freemode_01"
                    if L26_2 then
                      goto lbl_411
                    end
                  end
                  L26_2 = "mp_f_freemode_01"
                end
                ::lbl_411::
                L24_2 = L24_2(L25_2, L26_2)
                L21_2 = L24_2
              end
            else
              L23_2 = GenerateRandomSkin
              L24_2 = L18_2.sex
              if "m" == L24_2 then
                L24_2 = "male"
                if L24_2 then
                  goto lbl_434
                end
              end
              L24_2 = L18_2.sex
              if 0 == L24_2 then
                L24_2 = "male"
                if L24_2 then
                  goto lbl_434
                end
              end
              L24_2 = L18_2.sex
              if "male" == L24_2 then
                L24_2 = "male"
                if L24_2 then
                  goto lbl_434
                end
              end
              L24_2 = "female"
              ::lbl_434::
              L23_2 = L23_2(L24_2)
              L21_2 = L23_2
            end
            ::lbl_436::
            L23_2 = IlleniumActive
            if L23_2 then
              L23_2 = IlleniumSkins
              L24_2 = L18_2.identifier
              L23_2 = L23_2[L24_2]
              if L23_2 then
                L23_2 = TranslateSkinFromIllenium
                L24_2 = IlleniumSkins
                L25_2 = L18_2.identifier
                L24_2 = L24_2[L25_2]
                if L24_2 then
                  L24_2 = L24_2.skin
                end
                L25_2 = IlleniumSkins
                L26_2 = L18_2.identifier
                L25_2 = L25_2[L26_2]
                if L25_2 then
                  L25_2 = L25_2.model
                end
                L23_2 = L23_2(L24_2, L25_2)
                L21_2 = L23_2
              end
            end
            L23_2 = type
            L24_2 = L22_2
            L23_2 = L23_2(L24_2)
            if "table" == L23_2 then
              L23_2 = L22_2.x
              if L23_2 then
                L23_2 = L22_2.y
                if L23_2 then
                  L23_2 = L22_2.z
                  if L23_2 then
                    L23_2 = vector3
                    L24_2 = L22_2.x
                    L25_2 = L22_2.y
                    L26_2 = L22_2.z
                    L23_2 = L23_2(L24_2, L25_2, L26_2)
                    L22_2 = L23_2
                end
              end
              else
                L23_2 = L22_2.x
                if L23_2 then
                  L23_2 = L22_2.y
                  if L23_2 then
                    L23_2 = L22_2.z
                    if L23_2 then
                      L23_2 = L22_2.heading
                      if not L23_2 then
                        L23_2 = L22_2.w
                        if not L23_2 then
                          goto lbl_505
                        end
                      end
                      L23_2 = vector4
                      L24_2 = L22_2.x
                      L25_2 = L22_2.y
                      L26_2 = L22_2.z
                      L27_2 = L22_2.heading
                      if not L27_2 then
                        L27_2 = L22_2.w
                      end
                      L23_2 = L23_2(L24_2, L25_2, L26_2, L27_2)
                      L22_2 = L23_2
                    end
                  end
                end
              end
            end
            ::lbl_505::
            L18_2.inventory = nil
            L23_2 = {}
            L23_2.id = L19_2
            L23_2.used = true
            L24_2 = string
            L24_2 = L24_2.gsub
            L25_2 = L18_2.identifier
            L26_2 = ":"
            L27_2 = L2_2
            L26_2 = L26_2 .. L27_2
            L27_2 = ""
            L24_2 = L24_2(L25_2, L26_2, L27_2)
            L23_2.citizenid = L24_2
            L23_2.identifier = L2_2
            L24_2 = L18_2.firstname
            L23_2.firstname = L24_2
            L24_2 = L18_2.lastname
            L23_2.lastname = L24_2
            L24_2 = L20_2.money
            L23_2.cash = L24_2
            L24_2 = L20_2.bank
            L23_2.bank = L24_2
            L24_2 = L18_2.sex
            L24_2 = "m" == L24_2
            L23_2.isMale = L24_2
            L23_2.skinData = L21_2
            L24_2 = L18_2.dateofbirth
            L23_2.dateOfBirth = L24_2
            L23_2.position = L22_2
            L4_2[L12_2] = L23_2
          end
        end
      end
    else
      L6_2 = Functions
      L6_2 = L6_2.Error
      L7_2 = "You are using custom framework, so you need to setup them!"
      L6_2(L7_2)
    end
  end
  ::lbl_548::
  L6_2 = ChangeCharactersProperties
  if nil ~= L6_2 then
    L6_2 = ChangeCharactersProperties
    L7_2 = L4_2
    L6_2 = L6_2(L7_2)
    L4_2 = L6_2
  end
  return L4_2
end
L1_1(L2_1, L3_1)
L1_1 = Functions
L1_1 = L1_1.RegisterServerCallback
L2_1 = "17mov_CharacterSystem:DeleteCharacter"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L2_2 = Config
  L2_2 = L2_2.Showcase
  if L2_2 then
    return
  end
  L2_2 = Config
  L2_2 = L2_2.Framework
  if "QBCore" == L2_2 then
    L2_2 = Core
    L2_2 = L2_2.Player
    L2_2 = L2_2.DeleteCharacter
    L3_2 = A0_2
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = Config
    L2_2 = L2_2.Framework
    if "ESX" == L2_2 then
      L2_2 = GetPlayerIdentifierByType
      L3_2 = A0_2
      L4_2 = Config
      L4_2 = L4_2.PrimaryIdentifier
      L2_2 = L2_2(L3_2, L4_2)
      if nil == L2_2 or "" == L2_2 then
        L3_2 = Functions
        L3_2 = L3_2.Print
        L4_2 = string
        L4_2 = L4_2.format
        L5_2 = "A player without identifier (%s) attempted to delete character. Using 'license' instead"
        L6_2 = A0_2
        L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L4_2(L5_2, L6_2)
        L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
        L3_2 = GetPlayerIdentifierByType
        L4_2 = A0_2
        L5_2 = "license"
        L3_2 = L3_2(L4_2, L5_2)
        L2_2 = L3_2
      end
      L3_2 = string
      L3_2 = L3_2.format
      L4_2 = "%s:%s"
      L5_2 = A1_2
      L6_2 = string
      L6_2 = L6_2.match
      L7_2 = L2_2
      L8_2 = ":(.+)"
      L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L6_2(L7_2, L8_2)
      L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
      L4_2 = "DELETE FROM `%s` WHERE %s = ?"
      L5_2 = {}
      L6_2 = pairs
      L7_2 = L0_1
      L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
      for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
        L12_2 = table
        L12_2 = L12_2.insert
        L13_2 = L5_2
        L14_2 = {}
        L16_2 = L4_2
        L15_2 = L4_2.format
        L17_2 = L10_2
        L18_2 = L11_2
        L15_2 = L15_2(L16_2, L17_2, L18_2)
        L14_2.query = L15_2
        L15_2 = {}
        L16_2 = L3_2
        L15_2[1] = L16_2
        L14_2.values = L15_2
        L12_2(L13_2, L14_2)
      end
      L6_2 = MySQL
      L6_2 = L6_2.Sync
      L6_2 = L6_2.transaction
      L7_2 = L5_2
      L6_2(L7_2)
    else
      L2_2 = Functions
      L2_2 = L2_2.Error
      L3_2 = "You are using custom framework, so you need to setup them!"
      L2_2(L3_2)
    end
  end
  L2_2 = true
  return L2_2
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "17mov_CharacterSystem:SelectCharacter"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = source
  L2_2 = Config
  L2_2 = L2_2.Showcase
  if L2_2 then
    L2_2 = TriggerClientEvent
    L3_2 = "17mov_CharacterSystem:CharacterChoosen"
    L4_2 = L1_2
    L5_2 = A0_2.position
    L6_2 = false
    L2_2(L3_2, L4_2, L5_2, L6_2)
    return
  end
  L2_2 = Config
  L2_2 = L2_2.Framework
  if "QBCore" == L2_2 then
    L2_2 = Core
    L2_2 = L2_2.Player
    L2_2 = L2_2.Login
    L3_2 = L1_2
    L4_2 = A0_2.citizenid
    L2_2(L3_2, L4_2)
  else
    L2_2 = TriggerEvent
    L3_2 = "esx:onPlayerJoined"
    L4_2 = L1_2
    L5_2 = A0_2.citizenid
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = GetPlayerIdentifierByType
    L3_2 = L1_2
    L4_2 = Config
    L4_2 = L4_2.PrimaryIdentifier
    L2_2 = L2_2(L3_2, L4_2)
    if nil == L2_2 or "" == L2_2 then
      L3_2 = Functions
      L3_2 = L3_2.Print
      L4_2 = string
      L4_2 = L4_2.format
      L5_2 = "A player without identifier (%s) attempted to connect. Using 'license' instead"
      L6_2 = L1_2
      L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2)
      L3_2(L4_2, L5_2, L6_2, L7_2)
      L3_2 = GetPlayerIdentifierByType
      L4_2 = L1_2
      L5_2 = "license"
      L3_2 = L3_2(L4_2, L5_2)
      L2_2 = L3_2
    end
    L3_2 = Core
    L3_2 = L3_2.Players
    L4_2 = string
    L4_2 = L4_2.match
    L5_2 = GetPlayerIdentifierByType
    L6_2 = L1_2
    L7_2 = L2_2
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = ":(.+)"
    L4_2 = L4_2(L5_2, L6_2)
    L3_2[L4_2] = true
  end
  L2_2 = TriggerClientEvent
  L3_2 = "17mov_CharacterSystem:CharacterChoosen"
  L4_2 = L1_2
  L5_2 = A0_2.position
  L6_2 = false
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = Selector
  L2_2 = L2_2.CharacterChoosen
  L3_2 = L1_2
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "17mov_CharacterSystem:ReturnToBucket"
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = source
  L1_2 = pairs
  L2_2 = Selector
  L2_2 = L2_2.Buckets
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    if L6_2 == L0_2 then
      L7_2 = Selector
      L7_2 = L7_2.Buckets
      L7_2[L5_2] = false
      L7_2 = GetPlayerRoutingBucket
      L8_2 = L0_2
      L7_2 = L7_2(L8_2)
      if L7_2 == L5_2 then
        L7_2 = SetPlayerRoutingBucket
        L8_2 = L0_2
        L9_2 = Config
        L9_2 = L9_2.DefaultBucket
        L7_2(L8_2, L9_2)
        return
      end
    end
  end
  L1_2 = SetPlayerRoutingBucket
  L2_2 = L0_2
  L3_2 = Config
  L3_2 = L3_2.DefaultBucket
  L1_2(L2_2, L3_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "17mov_CharacterSystem:MakeSureOfBucket"
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = source
  L1_2 = false
  L2_2 = pairs
  L3_2 = Selector
  L3_2 = L3_2.Buckets
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    if L7_2 then
      L8_2 = type
      L9_2 = L7_2
      L8_2 = L8_2(L9_2)
      if "number" == L8_2 and L0_2 == L7_2 then
        L1_2 = true
        break
      end
    end
  end
  if not L1_2 then
    L2_2 = pairs
    L3_2 = Selector
    L3_2 = L3_2.Buckets
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      if false == L7_2 then
        L8_2 = SetPlayerRoutingBucket
        L9_2 = L0_2
        L10_2 = L6_2
        L8_2(L9_2, L10_2)
        L8_2 = Selector
        L8_2 = L8_2.Buckets
        L8_2[L6_2] = L0_2
        break
      end
    end
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "playerDropped"
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = source
  L1_2 = pairs
  L2_2 = Selector
  L2_2 = L2_2.Buckets
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    if L0_2 == L6_2 then
      L7_2 = Selector
      L7_2 = L7_2.Buckets
      L7_2[L5_2] = false
    end
  end
end
L1_1(L2_1, L3_1)
L1_1 = CreateThread
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  while true do
    L0_2 = Citizen
    L0_2 = L0_2.Wait
    L1_2 = 1000
    L0_2(L1_2)
    L0_2 = pairs
    L1_2 = Selector
    L1_2 = L1_2.Buckets
    L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
    for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
      if L5_2 then
        L6_2 = type
        L7_2 = L5_2
        L6_2 = L6_2(L7_2)
        if "number" == L6_2 then
          L6_2 = GetPlayerRoutingBucket
          L7_2 = L5_2
          L6_2 = L6_2(L7_2)
          if L6_2 ~= L4_2 then
            L6_2 = SetPlayerRoutingBucket
            L7_2 = L5_2
            L8_2 = L4_2
            L6_2(L7_2, L8_2)
          end
        end
      end
    end
  end
end
L1_1(L2_1)
