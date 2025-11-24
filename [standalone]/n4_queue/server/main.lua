local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1
L0_1 = _VERSION
L1_1 = L0_1
L0_1 = L0_1.find
L2_1 = "5.4"
L0_1 = L0_1(L1_1, L2_1)
L0_1 = MySQL
if nil ~= L0_1 then
  L0_1 = true
  if L0_1 then
    goto lbl_18
  end
end
L0_1 = false
::lbl_18::
L1_1 = {}
L2_1 = tonumber
L3_1 = cfg
L3_1 = cfg.joinDelay
L2_1 = L2_1(L3_1)
if not L2_1 then
  L2_1 = 60
end
L1_1.joinDelay = L2_1
L2_1 = type
L3_1 = cfg
L3_1 = L3_1.language
L2_1 = L2_1(L3_1)
if "table" == L2_1 then
  L2_1 = cfg
  L2_1 = L2_1.language
  if L2_1 then
    goto lbl_40
  end
end
L2_1 = {}
::lbl_40::
L1_1.language = L2_1
L2_1 = type
L3_1 = cfg
L3_1 = L3_1.prioRoles
L2_1 = L2_1(L3_1)
if "table" == L2_1 then
  L2_1 = cfg
  L2_1 = L2_1.prioRoles
  if L2_1 then
    goto lbl_53
  end
end
L2_1 = {}
::lbl_53::
L1_1.prioRoles = L2_1
L2_1 = type
L3_1 = cfg
L3_1 = L3_1.displayQueueInHostName
L2_1 = L2_1(L3_1)
if "boolean" == L2_1 then
  L2_1 = cfg
  L2_1 = L2_1.displayQueueInHostName
  if L2_1 then
    goto lbl_65
  end
end
L2_1 = false
::lbl_65::
L1_1.displayQueueInHostName = L2_1
L2_1 = type
L3_1 = cfg
L3_1 = L3_1.cooldown
L2_1 = L2_1(L3_1)
if "number" == L2_1 then
  L2_1 = cfg
  L2_1 = L2_1.cooldown
  if L2_1 >= 0 then
    L2_1 = cfg
    L2_1 = L2_1.cooldown
    if L2_1 then
      goto lbl_81
    end
  end
end
L2_1 = 1
::lbl_81::
L1_1.cooldown = L2_1
L2_1 = type
L3_1 = cfg
L3_1 = L3_1.maxPlayersToDisplay
L2_1 = L2_1(L3_1)
if "number" == L2_1 then
  L2_1 = cfg
  L2_1 = L2_1.maxPlayersToDisplay
  if L2_1 >= 0 then
    L2_1 = cfg
    L2_1 = L2_1.maxPlayersToDisplay
    if L2_1 then
      goto lbl_97
    end
  end
end
L2_1 = 10
::lbl_97::
L1_1.maxPlayersToDisplay = L2_1
L2_1 = type
L3_1 = cfg
L3_1 = L3_1.consoleInfo
L2_1 = L2_1(L3_1)
if "boolean" == L2_1 then
  L2_1 = cfg
  L2_1 = L2_1.consoleInfo
  if L2_1 then
    goto lbl_109
  end
end
L2_1 = false
::lbl_109::
L1_1.consoleInfo = L2_1
L2_1 = type
L3_1 = cfg
L3_1 = L3_1.stackPrio
L2_1 = L2_1(L3_1)
if "boolean" == L2_1 then
  L2_1 = cfg
  L2_1 = L2_1.stackPrio
  if L2_1 then
    goto lbl_121
  end
end
L2_1 = false
::lbl_121::
L1_1.stackPrio = L2_1
L2_1 = {}
L3_1 = type
L4_1 = cfg
L4_1 = L4_1.discord
L4_1 = L4_1.enabled
L3_1 = L3_1(L4_1)
if "boolean" == L3_1 then
  L3_1 = cfg
  L3_1 = L3_1.discord
  L3_1 = L3_1.enabled
  if L3_1 then
    goto lbl_137
  end
end
L3_1 = false
::lbl_137::
L2_1.enabled = L3_1
L3_1 = type
L4_1 = cfg
L4_1 = L4_1.discord
L4_1 = L4_1.requireIdentifier
L3_1 = L3_1(L4_1)
if "boolean" == L3_1 then
  L3_1 = cfg
  L3_1 = L3_1.discord
  L3_1 = L3_1.requireIdentifier
  if L3_1 then
    goto lbl_151
  end
end
L3_1 = false
::lbl_151::
L2_1.requireIdentifier = L3_1
L3_1 = type
L4_1 = cfg
L4_1 = L4_1.discord
L4_1 = L4_1.requireInGuild
L3_1 = L3_1(L4_1)
if "boolean" == L3_1 then
  L3_1 = cfg
  L3_1 = L3_1.discord
  L3_1 = L3_1.requireInGuild
  if L3_1 then
    goto lbl_165
  end
end
L3_1 = false
::lbl_165::
L2_1.requireInGuild = L3_1
L3_1 = type
L4_1 = cfg
L4_1 = L4_1.discord
L4_1 = L4_1.whitelist
L3_1 = L3_1(L4_1)
if "boolean" == L3_1 then
  L3_1 = cfg
  L3_1 = L3_1.discord
  L3_1 = L3_1.whitelist
  if L3_1 then
    goto lbl_179
  end
end
L3_1 = false
::lbl_179::
L2_1.whitelist = L3_1
L3_1 = tonumber
L4_1 = cfg
L4_1 = L4_1.discord
L4_1 = L4_1.whitelistRoleId
L3_1 = L3_1(L4_1)
if not L3_1 then
  L3_1 = ""
end
L2_1.whitelistRoleId = L3_1
L3_1 = type
L4_1 = cfg
L4_1 = L4_1.discord
L4_1 = L4_1.botToken
L3_1 = L3_1(L4_1)
if "string" == L3_1 then
  L3_1 = cfg
  L3_1 = L3_1.discord
  L3_1 = L3_1.botToken
  if L3_1 then
    goto lbl_202
  end
end
L3_1 = ""
::lbl_202::
L2_1.botToken = L3_1
L3_1 = tonumber
L4_1 = cfg
L4_1 = L4_1.discord
L4_1 = L4_1.guildId
L3_1 = L3_1(L4_1)
if not L3_1 then
  L3_1 = ""
end
L2_1.guildId = L3_1
L1_1.discord = L2_1
L2_1 = {}
L3_1 = {}
L4_1 = type
L5_1 = cfg
L5_1 = L5_1.cardDesign
L5_1 = L5_1.main_page
L5_1 = L5_1.bannerImage
L4_1 = L4_1(L5_1)
if "string" == L4_1 then
  L4_1 = cfg
  L4_1 = L4_1.cardDesign
  L4_1 = L4_1.main_page
  L4_1 = L4_1.bannerImage
  if L4_1 then
    goto lbl_232
  end
end
L4_1 = "https://i.imgur.com/HhYcZT6.png"
::lbl_232::
L3_1.bannerImage = L4_1
L4_1 = {}
L5_1 = type
L6_1 = cfg
L6_1 = L6_1.cardDesign
L6_1 = L6_1.main_page
L6_1 = L6_1.store_button
L6_1 = L6_1.label
L5_1 = L5_1(L6_1)
if "string" == L5_1 then
  L5_1 = cfg
  L5_1 = L5_1.cardDesign
  L5_1 = L5_1.main_page
  L5_1 = L5_1.store_button
  L5_1 = L5_1.label
  if L5_1 then
    goto lbl_252
  end
end
L5_1 = "Store"
::lbl_252::
L4_1.label = L5_1
L5_1 = type
L6_1 = cfg
L6_1 = L6_1.cardDesign
L6_1 = L6_1.main_page
L6_1 = L6_1.store_button
L6_1 = L6_1.url
L5_1 = L5_1(L6_1)
if "string" == L5_1 then
  L5_1 = cfg
  L5_1 = L5_1.cardDesign
  L5_1 = L5_1.main_page
  L5_1 = L5_1.store_button
  L5_1 = L5_1.url
  if L5_1 then
    goto lbl_270
  end
end
L5_1 = ""
::lbl_270::
L4_1.url = L5_1
L5_1 = type
L6_1 = cfg
L6_1 = L6_1.cardDesign
L6_1 = L6_1.main_page
L6_1 = L6_1.store_button
L6_1 = L6_1.iconImage
L5_1 = L5_1(L6_1)
if "string" == L5_1 then
  L5_1 = cfg
  L5_1 = L5_1.cardDesign
  L5_1 = L5_1.main_page
  L5_1 = L5_1.store_button
  L5_1 = L5_1.iconImage
  if L5_1 then
    goto lbl_288
  end
end
L5_1 = "https://i.imgur.com/RWuFBNV.png"
::lbl_288::
L4_1.iconImage = L5_1
L5_1 = type
L6_1 = cfg
L6_1 = L6_1.cardDesign
L6_1 = L6_1.main_page
L6_1 = L6_1.store_button
L6_1 = L6_1.style
L5_1 = L5_1(L6_1)
if "string" == L5_1 then
  L5_1 = cfg
  L5_1 = L5_1.cardDesign
  L5_1 = L5_1.main_page
  L5_1 = L5_1.store_button
  L5_1 = L5_1.style
  if L5_1 then
    goto lbl_306
  end
end
L5_1 = "default"
::lbl_306::
L4_1.style = L5_1
L3_1.store_button = L4_1
L4_1 = {}
L5_1 = type
L6_1 = cfg
L6_1 = L6_1.cardDesign
L6_1 = L6_1.main_page
L6_1 = L6_1.players_page
L6_1 = L6_1.label
L5_1 = L5_1(L6_1)
if "string" == L5_1 then
  L5_1 = cfg
  L5_1 = L5_1.cardDesign
  L5_1 = L5_1.main_page
  L5_1 = L5_1.players_page
  L5_1 = L5_1.label
  if L5_1 then
    goto lbl_327
  end
end
L5_1 = "Queue List"
::lbl_327::
L4_1.label = L5_1
L5_1 = type
L6_1 = cfg
L6_1 = L6_1.cardDesign
L6_1 = L6_1.main_page
L6_1 = L6_1.players_page
L6_1 = L6_1.iconImage
L5_1 = L5_1(L6_1)
if "string" == L5_1 then
  L5_1 = cfg
  L5_1 = L5_1.cardDesign
  L5_1 = L5_1.main_page
  L5_1 = L5_1.players_page
  L5_1 = L5_1.iconImage
  if L5_1 then
    goto lbl_345
  end
end
L5_1 = "https://i.imgur.com/wt2MnQU.png"
::lbl_345::
L4_1.iconImage = L5_1
L5_1 = type
L6_1 = cfg
L6_1 = L6_1.cardDesign
L6_1 = L6_1.main_page
L6_1 = L6_1.players_page
L6_1 = L6_1.style
L5_1 = L5_1(L6_1)
if "string" == L5_1 then
  L5_1 = cfg
  L5_1 = L5_1.cardDesign
  L5_1 = L5_1.main_page
  L5_1 = L5_1.players_page
  L5_1 = L5_1.style
  if L5_1 then
    goto lbl_363
  end
end
L5_1 = "default"
::lbl_363::
L4_1.style = L5_1
L3_1.players_page = L4_1
L4_1 = {}
L5_1 = type
L6_1 = cfg
L6_1 = L6_1.cardDesign
L6_1 = L6_1.main_page
L6_1 = L6_1.prio_page
L6_1 = L6_1.label
L5_1 = L5_1(L6_1)
if "string" == L5_1 then
  L5_1 = cfg
  L5_1 = L5_1.cardDesign
  L5_1 = L5_1.main_page
  L5_1 = L5_1.prio_page
  L5_1 = L5_1.label
  if L5_1 then
    goto lbl_384
  end
end
L5_1 = "Prio List"
::lbl_384::
L4_1.label = L5_1
L5_1 = type
L6_1 = cfg
L6_1 = L6_1.cardDesign
L6_1 = L6_1.main_page
L6_1 = L6_1.prio_page
L6_1 = L6_1.iconImage
L5_1 = L5_1(L6_1)
if "string" == L5_1 then
  L5_1 = cfg
  L5_1 = L5_1.cardDesign
  L5_1 = L5_1.main_page
  L5_1 = L5_1.prio_page
  L5_1 = L5_1.iconImage
  if L5_1 then
    goto lbl_402
  end
end
L5_1 = "https://i.imgur.com/chywIx7.png"
::lbl_402::
L4_1.iconImage = L5_1
L5_1 = type
L6_1 = cfg
L6_1 = L6_1.cardDesign
L6_1 = L6_1.main_page
L6_1 = L6_1.prio_page
L6_1 = L6_1.style
L5_1 = L5_1(L6_1)
if "string" == L5_1 then
  L5_1 = cfg
  L5_1 = L5_1.cardDesign
  L5_1 = L5_1.main_page
  L5_1 = L5_1.prio_page
  L5_1 = L5_1.style
  if L5_1 then
    goto lbl_420
  end
end
L5_1 = "default"
::lbl_420::
L4_1.style = L5_1
L3_1.prio_page = L4_1
L4_1 = {}
L5_1 = type
L6_1 = cfg
L6_1 = L6_1.cardDesign
L6_1 = L6_1.main_page
L6_1 = L6_1.discord_button
L6_1 = L6_1.label
L5_1 = L5_1(L6_1)
if "string" == L5_1 then
  L5_1 = cfg
  L5_1 = L5_1.cardDesign
  L5_1 = L5_1.main_page
  L5_1 = L5_1.discord_button
  L5_1 = L5_1.label
  if L5_1 then
    goto lbl_441
  end
end
L5_1 = "Discord"
::lbl_441::
L4_1.label = L5_1
L5_1 = type
L6_1 = cfg
L6_1 = L6_1.cardDesign
L6_1 = L6_1.main_page
L6_1 = L6_1.discord_button
L6_1 = L6_1.url
L5_1 = L5_1(L6_1)
if "string" == L5_1 then
  L5_1 = cfg
  L5_1 = L5_1.cardDesign
  L5_1 = L5_1.main_page
  L5_1 = L5_1.discord_button
  L5_1 = L5_1.url
  if L5_1 then
    goto lbl_459
  end
end
L5_1 = ""
::lbl_459::
L4_1.url = L5_1
L5_1 = type
L6_1 = cfg
L6_1 = L6_1.cardDesign
L6_1 = L6_1.main_page
L6_1 = L6_1.discord_button
L6_1 = L6_1.iconImage
L5_1 = L5_1(L6_1)
if "string" == L5_1 then
  L5_1 = cfg
  L5_1 = L5_1.cardDesign
  L5_1 = L5_1.main_page
  L5_1 = L5_1.discord_button
  L5_1 = L5_1.iconImage
  if L5_1 then
    goto lbl_477
  end
end
L5_1 = "https://i.imgur.com/ERn1W3t.png"
::lbl_477::
L4_1.iconImage = L5_1
L5_1 = type
L6_1 = cfg
L6_1 = L6_1.cardDesign
L6_1 = L6_1.main_page
L6_1 = L6_1.discord_button
L6_1 = L6_1.style
L5_1 = L5_1(L6_1)
if "string" == L5_1 then
  L5_1 = cfg
  L5_1 = L5_1.cardDesign
  L5_1 = L5_1.main_page
  L5_1 = L5_1.discord_button
  L5_1 = L5_1.style
  if L5_1 then
    goto lbl_495
  end
end
L5_1 = "default"
::lbl_495::
L4_1.style = L5_1
L3_1.discord_button = L4_1
L2_1.main_page = L3_1
L3_1 = {}
L4_1 = {}
L5_1 = type
L6_1 = cfg
L6_1 = L6_1.cardDesign
L6_1 = L6_1.prio_page
L6_1 = L6_1.store_button
L6_1 = L6_1.label
L5_1 = L5_1(L6_1)
if "string" == L5_1 then
  L5_1 = cfg
  L5_1 = L5_1.cardDesign
  L5_1 = L5_1.prio_page
  L5_1 = L5_1.store_button
  L5_1 = L5_1.label
  if L5_1 then
    goto lbl_519
  end
end
L5_1 = "Store"
::lbl_519::
L4_1.label = L5_1
L5_1 = type
L6_1 = cfg
L6_1 = L6_1.cardDesign
L6_1 = L6_1.prio_page
L6_1 = L6_1.store_button
L6_1 = L6_1.url
L5_1 = L5_1(L6_1)
if "string" == L5_1 then
  L5_1 = cfg
  L5_1 = L5_1.cardDesign
  L5_1 = L5_1.prio_page
  L5_1 = L5_1.store_button
  L5_1 = L5_1.url
  if L5_1 then
    goto lbl_537
  end
end
L5_1 = ""
::lbl_537::
L4_1.url = L5_1
L5_1 = type
L6_1 = cfg
L6_1 = L6_1.cardDesign
L6_1 = L6_1.prio_page
L6_1 = L6_1.store_button
L6_1 = L6_1.iconImage
L5_1 = L5_1(L6_1)
if "string" == L5_1 then
  L5_1 = cfg
  L5_1 = L5_1.cardDesign
  L5_1 = L5_1.prio_page
  L5_1 = L5_1.store_button
  L5_1 = L5_1.iconImage
  if L5_1 then
    goto lbl_555
  end
end
L5_1 = "https://i.imgur.com/RWuFBNV.png"
::lbl_555::
L4_1.iconImage = L5_1
L5_1 = type
L6_1 = cfg
L6_1 = L6_1.cardDesign
L6_1 = L6_1.prio_page
L6_1 = L6_1.store_button
L6_1 = L6_1.style
L5_1 = L5_1(L6_1)
if "string" == L5_1 then
  L5_1 = cfg
  L5_1 = L5_1.cardDesign
  L5_1 = L5_1.prio_page
  L5_1 = L5_1.store_button
  L5_1 = L5_1.style
  if L5_1 then
    goto lbl_573
  end
end
L5_1 = "default"
::lbl_573::
L4_1.style = L5_1
L3_1.store_button = L4_1
L4_1 = {}
L5_1 = type
L6_1 = cfg
L6_1 = L6_1.cardDesign
L6_1 = L6_1.prio_page
L6_1 = L6_1.discord_button
L6_1 = L6_1.label
L5_1 = L5_1(L6_1)
if "string" == L5_1 then
  L5_1 = cfg
  L5_1 = L5_1.cardDesign
  L5_1 = L5_1.prio_page
  L5_1 = L5_1.discord_button
  L5_1 = L5_1.label
  if L5_1 then
    goto lbl_594
  end
end
L5_1 = "Discord"
::lbl_594::
L4_1.label = L5_1
L5_1 = type
L6_1 = cfg
L6_1 = L6_1.cardDesign
L6_1 = L6_1.prio_page
L6_1 = L6_1.discord_button
L6_1 = L6_1.url
L5_1 = L5_1(L6_1)
if "string" == L5_1 then
  L5_1 = cfg
  L5_1 = L5_1.cardDesign
  L5_1 = L5_1.prio_page
  L5_1 = L5_1.discord_button
  L5_1 = L5_1.url
  if L5_1 then
    goto lbl_612
  end
end
L5_1 = ""
::lbl_612::
L4_1.url = L5_1
L5_1 = type
L6_1 = cfg
L6_1 = L6_1.cardDesign
L6_1 = L6_1.prio_page
L6_1 = L6_1.discord_button
L6_1 = L6_1.iconImage
L5_1 = L5_1(L6_1)
if "string" == L5_1 then
  L5_1 = cfg
  L5_1 = L5_1.cardDesign
  L5_1 = L5_1.prio_page
  L5_1 = L5_1.discord_button
  L5_1 = L5_1.iconImage
  if L5_1 then
    goto lbl_630
  end
end
L5_1 = "https://i.imgur.com/ERn1W3t.png"
::lbl_630::
L4_1.iconImage = L5_1
L5_1 = type
L6_1 = cfg
L6_1 = L6_1.cardDesign
L6_1 = L6_1.prio_page
L6_1 = L6_1.discord_button
L6_1 = L6_1.style
L5_1 = L5_1(L6_1)
if "string" == L5_1 then
  L5_1 = cfg
  L5_1 = L5_1.cardDesign
  L5_1 = L5_1.prio_page
  L5_1 = L5_1.discord_button
  L5_1 = L5_1.style
  if L5_1 then
    goto lbl_648
  end
end
L5_1 = "default"
::lbl_648::
L4_1.style = L5_1
L3_1.discord_button = L4_1
L4_1 = {}
L5_1 = type
L6_1 = cfg
L6_1 = L6_1.cardDesign
L6_1 = L6_1.prio_page
L6_1 = L6_1.back_button
L6_1 = L6_1.label
L5_1 = L5_1(L6_1)
if "string" == L5_1 then
  L5_1 = cfg
  L5_1 = L5_1.cardDesign
  L5_1 = L5_1.prio_page
  L5_1 = L5_1.back_button
  L5_1 = L5_1.label
  if L5_1 then
    goto lbl_669
  end
end
L5_1 = "< Go Back"
::lbl_669::
L4_1.label = L5_1
L5_1 = type
L6_1 = cfg
L6_1 = L6_1.cardDesign
L6_1 = L6_1.prio_page
L6_1 = L6_1.back_button
L6_1 = L6_1.url
L5_1 = L5_1(L6_1)
if "string" == L5_1 then
  L5_1 = cfg
  L5_1 = L5_1.cardDesign
  L5_1 = L5_1.prio_page
  L5_1 = L5_1.back_button
  L5_1 = L5_1.url
  if L5_1 then
    goto lbl_687
  end
end
L5_1 = ""
::lbl_687::
L4_1.url = L5_1
L5_1 = type
L6_1 = cfg
L6_1 = L6_1.cardDesign
L6_1 = L6_1.prio_page
L6_1 = L6_1.back_button
L6_1 = L6_1.iconImage
L5_1 = L5_1(L6_1)
if "string" == L5_1 then
  L5_1 = cfg
  L5_1 = L5_1.cardDesign
  L5_1 = L5_1.prio_page
  L5_1 = L5_1.back_button
  L5_1 = L5_1.iconImage
  if L5_1 then
    goto lbl_705
  end
end
L5_1 = "https://i.imgur.com/a0Iyrc8.png"
::lbl_705::
L4_1.iconImage = L5_1
L5_1 = type
L6_1 = cfg
L6_1 = L6_1.cardDesign
L6_1 = L6_1.prio_page
L6_1 = L6_1.back_button
L6_1 = L6_1.style
L5_1 = L5_1(L6_1)
if "string" == L5_1 then
  L5_1 = cfg
  L5_1 = L5_1.cardDesign
  L5_1 = L5_1.prio_page
  L5_1 = L5_1.back_button
  L5_1 = L5_1.style
  if L5_1 then
    goto lbl_723
  end
end
L5_1 = "default"
::lbl_723::
L4_1.style = L5_1
L3_1.back_button = L4_1
L2_1.prio_page = L3_1
L3_1 = {}
L4_1 = {}
L5_1 = type
L6_1 = cfg
L6_1 = L6_1.cardDesign
L6_1 = L6_1.players_page
L6_1 = L6_1.store_button
L6_1 = L6_1.label
L5_1 = L5_1(L6_1)
if "string" == L5_1 then
  L5_1 = cfg
  L5_1 = L5_1.cardDesign
  L5_1 = L5_1.players_page
  L5_1 = L5_1.store_button
  L5_1 = L5_1.label
  if L5_1 then
    goto lbl_747
  end
end
L5_1 = "Store"
::lbl_747::
L4_1.label = L5_1
L5_1 = type
L6_1 = cfg
L6_1 = L6_1.cardDesign
L6_1 = L6_1.players_page
L6_1 = L6_1.store_button
L6_1 = L6_1.url
L5_1 = L5_1(L6_1)
if "string" == L5_1 then
  L5_1 = cfg
  L5_1 = L5_1.cardDesign
  L5_1 = L5_1.players_page
  L5_1 = L5_1.store_button
  L5_1 = L5_1.url
  if L5_1 then
    goto lbl_765
  end
end
L5_1 = ""
::lbl_765::
L4_1.url = L5_1
L5_1 = type
L6_1 = cfg
L6_1 = L6_1.cardDesign
L6_1 = L6_1.players_page
L6_1 = L6_1.store_button
L6_1 = L6_1.iconImage
L5_1 = L5_1(L6_1)
if "string" == L5_1 then
  L5_1 = cfg
  L5_1 = L5_1.cardDesign
  L5_1 = L5_1.players_page
  L5_1 = L5_1.store_button
  L5_1 = L5_1.iconImage
  if L5_1 then
    goto lbl_783
  end
end
L5_1 = "https://i.imgur.com/RWuFBNV.png"
::lbl_783::
L4_1.iconImage = L5_1
L5_1 = type
L6_1 = cfg
L6_1 = L6_1.cardDesign
L6_1 = L6_1.players_page
L6_1 = L6_1.store_button
L6_1 = L6_1.style
L5_1 = L5_1(L6_1)
if "string" == L5_1 then
  L5_1 = cfg
  L5_1 = L5_1.cardDesign
  L5_1 = L5_1.players_page
  L5_1 = L5_1.store_button
  L5_1 = L5_1.style
  if L5_1 then
    goto lbl_801
  end
end
L5_1 = "default"
::lbl_801::
L4_1.style = L5_1
L3_1.store_button = L4_1
L4_1 = {}
L5_1 = type
L6_1 = cfg
L6_1 = L6_1.cardDesign
L6_1 = L6_1.players_page
L6_1 = L6_1.discord_button
L6_1 = L6_1.label
L5_1 = L5_1(L6_1)
if "string" == L5_1 then
  L5_1 = cfg
  L5_1 = L5_1.cardDesign
  L5_1 = L5_1.players_page
  L5_1 = L5_1.discord_button
  L5_1 = L5_1.label
  if L5_1 then
    goto lbl_822
  end
end
L5_1 = "Discord"
::lbl_822::
L4_1.label = L5_1
L5_1 = type
L6_1 = cfg
L6_1 = L6_1.cardDesign
L6_1 = L6_1.players_page
L6_1 = L6_1.discord_button
L6_1 = L6_1.url
L5_1 = L5_1(L6_1)
if "string" == L5_1 then
  L5_1 = cfg
  L5_1 = L5_1.cardDesign
  L5_1 = L5_1.players_page
  L5_1 = L5_1.discord_button
  L5_1 = L5_1.url
  if L5_1 then
    goto lbl_840
  end
end
L5_1 = ""
::lbl_840::
L4_1.url = L5_1
L5_1 = type
L6_1 = cfg
L6_1 = L6_1.cardDesign
L6_1 = L6_1.players_page
L6_1 = L6_1.discord_button
L6_1 = L6_1.iconImage
L5_1 = L5_1(L6_1)
if "string" == L5_1 then
  L5_1 = cfg
  L5_1 = L5_1.cardDesign
  L5_1 = L5_1.players_page
  L5_1 = L5_1.discord_button
  L5_1 = L5_1.iconImage
  if L5_1 then
    goto lbl_858
  end
end
L5_1 = "https://i.imgur.com/ERn1W3t.png"
::lbl_858::
L4_1.iconImage = L5_1
L5_1 = type
L6_1 = cfg
L6_1 = L6_1.cardDesign
L6_1 = L6_1.players_page
L6_1 = L6_1.discord_button
L6_1 = L6_1.style
L5_1 = L5_1(L6_1)
if "string" == L5_1 then
  L5_1 = cfg
  L5_1 = L5_1.cardDesign
  L5_1 = L5_1.players_page
  L5_1 = L5_1.discord_button
  L5_1 = L5_1.style
  if L5_1 then
    goto lbl_876
  end
end
L5_1 = "default"
::lbl_876::
L4_1.style = L5_1
L3_1.discord_button = L4_1
L4_1 = {}
L5_1 = type
L6_1 = cfg
L6_1 = L6_1.cardDesign
L6_1 = L6_1.players_page
L6_1 = L6_1.back_button
L6_1 = L6_1.label
L5_1 = L5_1(L6_1)
if "string" == L5_1 then
  L5_1 = cfg
  L5_1 = L5_1.cardDesign
  L5_1 = L5_1.players_page
  L5_1 = L5_1.back_button
  L5_1 = L5_1.label
  if L5_1 then
    goto lbl_897
  end
end
L5_1 = "< Go Back"
::lbl_897::
L4_1.label = L5_1
L5_1 = type
L6_1 = cfg
L6_1 = L6_1.cardDesign
L6_1 = L6_1.players_page
L6_1 = L6_1.back_button
L6_1 = L6_1.url
L5_1 = L5_1(L6_1)
if "string" == L5_1 then
  L5_1 = cfg
  L5_1 = L5_1.cardDesign
  L5_1 = L5_1.players_page
  L5_1 = L5_1.back_button
  L5_1 = L5_1.url
  if L5_1 then
    goto lbl_915
  end
end
L5_1 = ""
::lbl_915::
L4_1.url = L5_1
L5_1 = type
L6_1 = cfg
L6_1 = L6_1.cardDesign
L6_1 = L6_1.players_page
L6_1 = L6_1.back_button
L6_1 = L6_1.iconImage
L5_1 = L5_1(L6_1)
if "string" == L5_1 then
  L5_1 = cfg
  L5_1 = L5_1.cardDesign
  L5_1 = L5_1.players_page
  L5_1 = L5_1.back_button
  L5_1 = L5_1.iconImage
  if L5_1 then
    goto lbl_933
  end
end
L5_1 = "https://i.imgur.com/a0Iyrc8.png"
::lbl_933::
L4_1.iconImage = L5_1
L5_1 = type
L6_1 = cfg
L6_1 = L6_1.cardDesign
L6_1 = L6_1.players_page
L6_1 = L6_1.back_button
L6_1 = L6_1.style
L5_1 = L5_1(L6_1)
if "string" == L5_1 then
  L5_1 = cfg
  L5_1 = L5_1.cardDesign
  L5_1 = L5_1.players_page
  L5_1 = L5_1.back_button
  L5_1 = L5_1.style
  if L5_1 then
    goto lbl_951
  end
end
L5_1 = "default"
::lbl_951::
L4_1.style = L5_1
L3_1.back_button = L4_1
L2_1.players_page = L3_1
L1_1.cardDesign = L2_1
cfg = L1_1
L1_1 = pairs
L2_1 = cfg
L2_1 = L2_1.prioRoles
L1_1, L2_1, L3_1, L4_1 = L1_1(L2_1)
for L5_1, L6_1 in L1_1, L2_1, L3_1, L4_1 do
  L7_1 = type
  L8_1 = L6_1.label
  L7_1 = L7_1(L8_1)
  if "string" == L7_1 then
    L7_1 = type
    L8_1 = L6_1.roleId
    L7_1 = L7_1(L8_1)
    if "number" == L7_1 then
      L7_1 = type
      L8_1 = L6_1.points
      L7_1 = L7_1(L8_1)
      if "number" == L7_1 then
        goto lbl_991
      end
    end
  end
  L7_1 = type
  L8_1 = L5_1
  L7_1 = L7_1(L8_1)
  if "number" == L7_1 then
    L7_1 = table
    L7_1 = L7_1.remove
    L8_1 = cfg
    L8_1 = L8_1.prioRoles
    L9_1 = L5_1
    L7_1(L8_1, L9_1)
  else
    L7_1 = cfg
    L7_1 = L7_1.prioRoles
    L7_1[L5_1] = nil
  end
  ::lbl_991::
end
L1_1 = table
L1_1 = L1_1.sort
L2_1 = cfg
L2_1 = L2_1.prioRoles
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.points
  L3_2 = A1_2.points
  L2_2 = L2_2 > L3_2
  return L2_2
end
L1_1(L2_1, L3_1)
L1_1 = {}
L2_1 = {}
L1_1.waiting = L2_1
L2_1 = {}
L1_1.active = L2_1
L1_1.restart = false
L2_1 = setmetatable
L3_1 = {}
L3_1.count = 0
L4_1 = {}
L3_1.list = L4_1
L4_1 = {}
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.list
  L2_2 = L2_2[A1_2]
  if not L2_2 then
    L2_2 = A0_2.list
    L3_2 = os
    L3_2 = L3_2.time
    L3_2 = L3_2()
    L3_2 = L3_2 + 600
    L2_2[A1_2] = L3_2
    L2_2 = A0_2.count
    L2_2 = L2_2 + 1
    A0_2.count = L2_2
  end
end
L4_1.__add = L5_1
function L5_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.list
  L2_2 = L2_2[A1_2]
  if L2_2 then
    L2_2 = A0_2.list
    L2_2[A1_2] = nil
    L2_2 = A0_2.count
    L2_2 = L2_2 - 1
    A0_2.count = L2_2
  end
end
L4_1.__sub = L5_1
L2_1 = L2_1(L3_1, L4_1)
L3_1 = GetCurrentResourceName
L3_1 = L3_1()
L4_1 = setmetatable
L5_1 = cfg
L5_1 = L5_1.language
L6_1 = {}
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = "language key not found: %s"
  L3_2 = L2_2
  L2_2 = L2_2.format
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L6_1.__index = L7_1
L4_1(L5_1, L6_1)
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.gsub
  L4_2 = "%b{}"
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L2_3 = A0_3
    L1_3 = A0_3.sub
    L3_3 = 2
    L4_3 = -2
    L1_3 = L1_3(L2_3, L3_3, L4_3)
    L2_3 = A1_2
    L2_3 = L2_3[L1_3]
    if not L2_3 then
      L2_3 = A0_3
    end
    return L2_3
  end
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  return L2_2
end
function L5_1(...)
  local L0_2, L1_2
  L0_2 = cfg
  L0_2 = L0_2.consoleInfo
  if L0_2 then
    L0_2 = print
    L1_2 = ...
    L0_2(L1_2)
  end
end
L6_1 = {}
L6_1.type = "AdaptiveCard"
L6_1["$schema"] = "http://adaptivecards.io/schemas/adaptive-card.json"
L6_1.version = "1.5"
L7_1 = {}
L8_1 = {}
L8_1.type = "Image"
L9_1 = cfg
L9_1 = L9_1.cardDesign
L9_1 = L9_1.main_page
L9_1 = L9_1.bannerImage
L8_1.url = L9_1
L9_1 = {}
L9_1.type = "TextBlock"
L9_1.text = ""
L9_1.horizontalAlignment = "Center"
L9_1.fontType = "Default"
L9_1.weight = "Default"
L9_1.color = "Default"
L9_1.size = "Medium"
L9_1.wrap = true
L9_1.style = "default"
L10_1 = {}
L10_1.type = "ColumnSet"
L11_1 = {}
L12_1 = {}
L12_1.type = "Column"
L12_1.width = "stretch"
L13_1 = {}
L14_1 = {}
L14_1.type = "ActionSet"
L15_1 = {}
L16_1 = {}
L16_1.type = "Action.OpenUrl"
L17_1 = cfg
L17_1 = L17_1.cardDesign
L17_1 = L17_1.main_page
L17_1 = L17_1.store_button
L17_1 = L17_1.label
L16_1.title = L17_1
L17_1 = cfg
L17_1 = L17_1.cardDesign
L17_1 = L17_1.main_page
L17_1 = L17_1.store_button
L17_1 = L17_1.url
L16_1.url = L17_1
L17_1 = cfg
L17_1 = L17_1.cardDesign
L17_1 = L17_1.main_page
L17_1 = L17_1.store_button
L17_1 = L17_1.style
L16_1.style = L17_1
L17_1 = cfg
L17_1 = L17_1.cardDesign
L17_1 = L17_1.main_page
L17_1 = L17_1.store_button
L17_1 = L17_1.iconImage
L16_1.iconUrl = L17_1
L15_1[1] = L16_1
L14_1.actions = L15_1
L13_1[1] = L14_1
L12_1.items = L13_1
L13_1 = {}
L13_1.type = "Column"
L13_1.width = "stretch"
L14_1 = {}
L15_1 = {}
L15_1.type = "ActionSet"
L16_1 = {}
L17_1 = {}
L17_1.type = "Action.Submit"
L18_1 = cfg
L18_1 = L18_1.cardDesign
L18_1 = L18_1.main_page
L18_1 = L18_1.players_page
L18_1 = L18_1.label
L17_1.title = L18_1
L17_1.id = "listPage"
L18_1 = cfg
L18_1 = L18_1.cardDesign
L18_1 = L18_1.main_page
L18_1 = L18_1.players_page
L18_1 = L18_1.style
L17_1.style = L18_1
L18_1 = cfg
L18_1 = L18_1.cardDesign
L18_1 = L18_1.main_page
L18_1 = L18_1.players_page
L18_1 = L18_1.iconImage
L17_1.iconUrl = L18_1
L16_1[1] = L17_1
L15_1.actions = L16_1
L14_1[1] = L15_1
L13_1.items = L14_1
L14_1 = {}
L14_1.type = "Column"
L14_1.width = "stretch"
L15_1 = {}
L16_1 = {}
L16_1.type = "ActionSet"
L17_1 = {}
L18_1 = {}
L18_1.type = "Action.Submit"
L19_1 = cfg
L19_1 = L19_1.cardDesign
L19_1 = L19_1.main_page
L19_1 = L19_1.prio_page
L19_1 = L19_1.label
L18_1.title = L19_1
L18_1.id = "prioPage"
L19_1 = cfg
L19_1 = L19_1.cardDesign
L19_1 = L19_1.main_page
L19_1 = L19_1.prio_page
L19_1 = L19_1.style
L18_1.style = L19_1
L19_1 = cfg
L19_1 = L19_1.cardDesign
L19_1 = L19_1.main_page
L19_1 = L19_1.prio_page
L19_1 = L19_1.iconImage
L18_1.iconUrl = L19_1
L17_1[1] = L18_1
L16_1.actions = L17_1
L15_1[1] = L16_1
L14_1.items = L15_1
L15_1 = {}
L15_1.type = "Column"
L15_1.width = "stretch"
L16_1 = {}
L17_1 = {}
L17_1.type = "ActionSet"
L18_1 = {}
L19_1 = {}
L19_1.type = "Action.OpenUrl"
L20_1 = cfg
L20_1 = L20_1.cardDesign
L20_1 = L20_1.main_page
L20_1 = L20_1.discord_button
L20_1 = L20_1.label
L19_1.title = L20_1
L20_1 = cfg
L20_1 = L20_1.cardDesign
L20_1 = L20_1.main_page
L20_1 = L20_1.discord_button
L20_1 = L20_1.url
L19_1.url = L20_1
L20_1 = cfg
L20_1 = L20_1.cardDesign
L20_1 = L20_1.main_page
L20_1 = L20_1.discord_button
L20_1 = L20_1.style
L19_1.style = L20_1
L20_1 = cfg
L20_1 = L20_1.cardDesign
L20_1 = L20_1.main_page
L20_1 = L20_1.discord_button
L20_1 = L20_1.iconImage
L19_1.iconUrl = L20_1
L18_1[1] = L19_1
L17_1.actions = L18_1
L16_1[1] = L17_1
L15_1.items = L16_1
L11_1[1] = L12_1
L11_1[2] = L13_1
L11_1[3] = L14_1
L11_1[4] = L15_1
L10_1.columns = L11_1
L7_1[1] = L8_1
L7_1[2] = L9_1
L7_1[3] = L10_1
L6_1.body = L7_1
L7_1 = {}
L7_1.type = "AdaptiveCard"
L7_1["$schema"] = "http://adaptivecards.io/schemas/adaptive-card.json"
L7_1.version = "1.5"
L8_1 = {}
L9_1 = {}
L9_1.type = "TextBlock"
L9_1.text = "Your Current Prio:"
L9_1.wrap = true
L9_1.weight = "Default"
L9_1.size = "Medium"
L9_1.horizontalAlignment = "Center"
L9_1.color = "Default"
L10_1 = {}
L10_1.type = "TextBlock"
L10_1.wrap = true
L10_1.horizontalAlignment = "Center"
L10_1.style = "default"
L10_1.fontType = "Default"
L10_1.weight = "Default"
L10_1.color = "Default"
L10_1.size = "Medium"
L10_1.text = ""
L11_1 = {}
L11_1.type = "TextBlock"
L11_1.text = ""
L11_1.wrap = true
L11_1.size = "Medium"
L11_1.weight = "Default"
L11_1.horizontalAlignment = "Center"
L11_1.color = "Default"
L12_1 = {}
L12_1.type = "ColumnSet"
L13_1 = {}
L14_1 = {}
L14_1.type = "Column"
L14_1.width = "stretch"
L15_1 = {}
L16_1 = {}
L16_1.type = "ActionSet"
L17_1 = {}
L18_1 = {}
L18_1.type = "Action.OpenUrl"
L19_1 = cfg
L19_1 = L19_1.cardDesign
L19_1 = L19_1.prio_page
L19_1 = L19_1.discord_button
L19_1 = L19_1.label
L18_1.title = L19_1
L19_1 = cfg
L19_1 = L19_1.cardDesign
L19_1 = L19_1.prio_page
L19_1 = L19_1.discord_button
L19_1 = L19_1.style
L18_1.style = L19_1
L19_1 = cfg
L19_1 = L19_1.cardDesign
L19_1 = L19_1.prio_page
L19_1 = L19_1.discord_button
L19_1 = L19_1.url
L18_1.url = L19_1
L19_1 = cfg
L19_1 = L19_1.cardDesign
L19_1 = L19_1.prio_page
L19_1 = L19_1.discord_button
L19_1 = L19_1.iconImage
L18_1.iconUrl = L19_1
L17_1[1] = L18_1
L16_1.actions = L17_1
L15_1[1] = L16_1
L14_1.items = L15_1
L15_1 = {}
L15_1.type = "Column"
L15_1.width = "stretch"
L16_1 = {}
L17_1 = {}
L17_1.type = "ActionSet"
L18_1 = {}
L19_1 = {}
L19_1.type = "Action.OpenUrl"
L20_1 = cfg
L20_1 = L20_1.cardDesign
L20_1 = L20_1.prio_page
L20_1 = L20_1.store_button
L20_1 = L20_1.label
L19_1.title = L20_1
L20_1 = cfg
L20_1 = L20_1.cardDesign
L20_1 = L20_1.prio_page
L20_1 = L20_1.store_button
L20_1 = L20_1.style
L19_1.style = L20_1
L20_1 = cfg
L20_1 = L20_1.cardDesign
L20_1 = L20_1.prio_page
L20_1 = L20_1.store_button
L20_1 = L20_1.url
L19_1.url = L20_1
L20_1 = cfg
L20_1 = L20_1.cardDesign
L20_1 = L20_1.prio_page
L20_1 = L20_1.store_button
L20_1 = L20_1.iconImage
L19_1.iconUrl = L20_1
L18_1[1] = L19_1
L17_1.actions = L18_1
L16_1[1] = L17_1
L15_1.items = L16_1
L13_1[1] = L14_1
L13_1[2] = L15_1
L12_1.columns = L13_1
L13_1 = {}
L13_1.type = "ColumnSet"
L14_1 = {}
L15_1 = {}
L15_1.type = "Column"
L15_1.width = "stretch"
L16_1 = {}
L17_1 = {}
L17_1.type = "ActionSet"
L18_1 = {}
L19_1 = {}
L19_1.type = "Action.Submit"
L20_1 = cfg
L20_1 = L20_1.cardDesign
L20_1 = L20_1.prio_page
L20_1 = L20_1.back_button
L20_1 = L20_1.label
L19_1.title = L20_1
L19_1.id = "goback2"
L20_1 = cfg
L20_1 = L20_1.cardDesign
L20_1 = L20_1.prio_page
L20_1 = L20_1.back_button
L20_1 = L20_1.style
L19_1.style = L20_1
L20_1 = cfg
L20_1 = L20_1.cardDesign
L20_1 = L20_1.prio_page
L20_1 = L20_1.back_button
L20_1 = L20_1.iconImage
L19_1.iconUrl = L20_1
L18_1[1] = L19_1
L17_1.actions = L18_1
L16_1[1] = L17_1
L15_1.items = L16_1
L14_1[1] = L15_1
L13_1.columns = L14_1
L8_1[1] = L9_1
L8_1[2] = L10_1
L8_1[3] = L11_1
L8_1[4] = L12_1
L8_1[5] = L13_1
L7_1.body = L8_1
L8_1 = {}
L8_1.type = "AdaptiveCard"
L8_1["$schema"] = "http://adaptivecards.io/schemas/adaptive-card.json"
L8_1.version = "1.5"
L9_1 = {}
L8_1.body = L9_1
L9_1 = {}
L10_1 = {}
L10_1.type = "ColumnSet"
L11_1 = {}
L12_1 = {}
L12_1.type = "Column"
L12_1.width = "stretch"
L13_1 = {}
L14_1 = {}
L14_1.type = "ActionSet"
L15_1 = {}
L16_1 = {}
L16_1.type = "Action.OpenUrl"
L17_1 = cfg
L17_1 = L17_1.cardDesign
L17_1 = L17_1.players_page
L17_1 = L17_1.discord_button
L17_1 = L17_1.label
L16_1.title = L17_1
L17_1 = cfg
L17_1 = L17_1.cardDesign
L17_1 = L17_1.players_page
L17_1 = L17_1.discord_button
L17_1 = L17_1.style
L16_1.style = L17_1
L17_1 = cfg
L17_1 = L17_1.cardDesign
L17_1 = L17_1.players_page
L17_1 = L17_1.discord_button
L17_1 = L17_1.url
L16_1.url = L17_1
L17_1 = cfg
L17_1 = L17_1.cardDesign
L17_1 = L17_1.players_page
L17_1 = L17_1.discord_button
L17_1 = L17_1.iconImage
L16_1.iconUrl = L17_1
L15_1[1] = L16_1
L14_1.actions = L15_1
L13_1[1] = L14_1
L12_1.items = L13_1
L13_1 = {}
L13_1.type = "Column"
L13_1.width = "stretch"
L14_1 = {}
L15_1 = {}
L15_1.type = "ActionSet"
L16_1 = {}
L17_1 = {}
L17_1.type = "Action.OpenUrl"
L18_1 = cfg
L18_1 = L18_1.cardDesign
L18_1 = L18_1.players_page
L18_1 = L18_1.store_button
L18_1 = L18_1.label
L17_1.title = L18_1
L18_1 = cfg
L18_1 = L18_1.cardDesign
L18_1 = L18_1.players_page
L18_1 = L18_1.store_button
L18_1 = L18_1.style
L17_1.style = L18_1
L18_1 = cfg
L18_1 = L18_1.cardDesign
L18_1 = L18_1.players_page
L18_1 = L18_1.store_button
L18_1 = L18_1.url
L17_1.url = L18_1
L18_1 = cfg
L18_1 = L18_1.cardDesign
L18_1 = L18_1.players_page
L18_1 = L18_1.store_button
L18_1 = L18_1.iconImage
L17_1.iconUrl = L18_1
L16_1[1] = L17_1
L15_1.actions = L16_1
L14_1[1] = L15_1
L13_1.items = L14_1
L11_1[1] = L12_1
L11_1[2] = L13_1
L10_1.columns = L11_1
L11_1 = {}
L11_1.type = "ColumnSet"
L12_1 = {}
L13_1 = {}
L13_1.type = "Column"
L13_1.width = "stretch"
L14_1 = {}
L15_1 = {}
L15_1.type = "ActionSet"
L16_1 = {}
L17_1 = {}
L17_1.type = "Action.Submit"
L18_1 = cfg
L18_1 = L18_1.cardDesign
L18_1 = L18_1.players_page
L18_1 = L18_1.back_button
L18_1 = L18_1.label
L17_1.title = L18_1
L17_1.id = "goback"
L18_1 = cfg
L18_1 = L18_1.cardDesign
L18_1 = L18_1.players_page
L18_1 = L18_1.back_button
L18_1 = L18_1.style
L17_1.style = L18_1
L18_1 = cfg
L18_1 = L18_1.cardDesign
L18_1 = L18_1.players_page
L18_1 = L18_1.back_button
L18_1 = L18_1.iconImage
L17_1.iconUrl = L18_1
L16_1[1] = L17_1
L15_1.actions = L16_1
L14_1[1] = L15_1
L13_1.items = L14_1
L12_1[1] = L13_1
L11_1.columns = L12_1
L9_1[1] = L10_1
L9_1[2] = L11_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = {}
  if A0_2 then
    L2_2 = GetPlayerIdentifiers
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    L3_2 = 1
    L4_2 = #L2_2
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = string
      L7_2 = L7_2.strsplit
      L8_2 = ":"
      L9_2 = L2_2[L6_2]
      L7_2, L8_2 = L7_2(L8_2, L9_2)
      L9_2 = "%s:%s"
      L10_2 = L9_2
      L9_2 = L9_2.format
      L11_2 = L7_2
      L12_2 = L8_2
      L9_2 = L9_2(L10_2, L11_2, L12_2)
      L1_2[L7_2] = L9_2
    end
  end
  return L1_2
end
L1_1.getIdentifiers = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = GetNumPlayerIndices
  L1_2 = L1_2()
  L2_2 = L2_1.count
  L1_2 = L1_2 + L2_2
  L2_2 = GetConvarInt
  L3_2 = "sv_maxclients"
  L4_2 = 48
  L2_2 = L2_2(L3_2, L4_2)
  L1_2 = L1_2 < L2_2
  if A0_2 and L1_2 then
    L2_2 = L1_1.waiting
    L2_2 = #L2_2
    L1_2 = L2_2 <= 1
  end
  return L1_2
end
L1_1.canConnect = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = 1
  L2_2 = L1_1.waiting
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L1_1.waiting
    L5_2 = L5_2[L4_2]
    if L5_2 then
      L5_2 = L5_2.license
    end
    if L5_2 == A0_2 then
      return L4_2
    end
  end
  L1_2 = false
  return L1_2
end
L1_1.findInQueue = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = promise
  L1_2 = L1_2.new
  L1_2 = L1_2()
  if A0_2 then
    L3_2 = A0_2
    L2_2 = A0_2.gsub
    L4_2 = "discord:"
    L5_2 = ""
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    if L2_2 then
      goto lbl_13
    end
  end
  L2_2 = ""
  ::lbl_13::
  L3_2 = "https://discordapp.com/api/guilds/%s/members/%s"
  L4_2 = L3_2
  L3_2 = L3_2.format
  L5_2 = cfg
  L5_2 = L5_2.discord
  L5_2 = L5_2.guildId
  L6_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if not L3_2 then
    L3_2 = ""
  end
  L4_2 = PerformHttpRequest
  L5_2 = L3_2
  function L6_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    L3_3 = {}
    L3_3.name = "Not Found"
    L4_3 = {}
    L3_3.roles = L4_3
    if nil == A1_3 then
    end
    L4_3 = true
    L5_3 = json
    L5_3 = L5_3.decode
    L6_3 = A1_3
    L5_3 = L5_3(L6_3)
    A1_3 = L5_3
    if A1_3 then
      L5_3 = {}
      L6_3 = 1
      L7_3 = type
      L8_3 = A1_3.roles
      L7_3 = L7_3(L8_3)
      if "table" == L7_3 then
        L7_3 = A1_3.roles
        L7_3 = #L7_3
        if L7_3 then
          goto lbl_30
        end
      end
      L7_3 = 0
      ::lbl_30::
      L8_3 = 1
      for L9_3 = L6_3, L7_3, L8_3 do
        L10_3 = tonumber
        L11_3 = A1_3.roles
        L11_3 = L11_3[L9_3]
        L10_3 = L10_3(L11_3)
        L5_3[L9_3] = L10_3
      end
      L6_3 = A1_3.user
      if L6_3 then
        L6_3 = A1_3.user
        L6_3 = L6_3.username
        if L6_3 then
          L6_3 = A1_3.user
          L6_3 = L6_3.discriminator
          if L6_3 then
            L6_3 = "%s#%s"
            L7_3 = L6_3
            L6_3 = L6_3.format
            L8_3 = A1_3.user
            L8_3 = L8_3.username
            L9_3 = A1_3.user
            L9_3 = L9_3.discriminator
            L6_3 = L6_3(L7_3, L8_3, L9_3)
            L3_3.name = L6_3
          end
        end
        L6_3 = A1_3.user
        L6_3 = L6_3.avatar
        if L6_3 then
          L6_3 = "https://cdn.discordapp.com/avatars/%s/%s.%s"
          L7_3 = L6_3
          L6_3 = L6_3.format
          L8_3 = L2_2
          L9_3 = A1_3.user
          L9_3 = L9_3.avatar
          L10_3 = A1_3.user
          L10_3 = L10_3.avatar
          L11_3 = L10_3
          L10_3 = L10_3.sub
          L12_3 = 1
          L13_3 = 1
          L10_3 = L10_3(L11_3, L12_3, L13_3)
          if L10_3 then
            L10_3 = A1_3.user
            L10_3 = L10_3.avatar
            L11_3 = L10_3
            L10_3 = L10_3.sub
            L12_3 = 2
            L13_3 = 2
            L10_3 = L10_3(L11_3, L12_3, L13_3)
            if "_" == L10_3 then
              L10_3 = "gif"
              if L10_3 then
                goto lbl_86
              end
            end
          end
          L10_3 = "png"
          ::lbl_86::
          L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3)
          L3_3.avatar = L6_3
        end
      end
      L3_3.roles = L5_3
    end
    L5_3 = L1_2
    L6_3 = L5_3
    L5_3 = L5_3.resolve
    L7_3 = {}
    L8_3 = L3_3
    L9_3 = L4_3
    L7_3[1] = L8_3
    L7_3[2] = L9_3
    L5_3(L6_3, L7_3)
  end
  L7_2 = "GET"
  L8_2 = ""
  L9_2 = {}
  L9_2["Content-Type"] = "application/json"
  L10_2 = "Bot %s"
  L11_2 = L10_2
  L10_2 = L10_2.format
  L12_2 = cfg
  L12_2 = L12_2.discord
  L12_2 = L12_2.botToken
  L10_2 = L10_2(L11_2, L12_2)
  L9_2.Authorization = L10_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = table
  L4_2 = L4_2.unpack
  L5_2 = Citizen
  L5_2 = L5_2.Await
  L6_2 = L1_2
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L5_2(L6_2)
  return L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end
L1_1.getDiscordInfo = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = #L1_2
    L8_2 = L8_2 + 1
    L1_2[L8_2] = L7_2
  end
  return L1_2
end
L1_1.removeKeys = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = {}
  L2_2.type = "ColumnSet"
  L3_2 = {}
  L4_2 = {}
  L4_2.type = "Column"
  L4_2.width = "auto"
  L5_2 = {}
  L6_2 = {}
  L6_2.type = "Image"
  L7_2 = A1_2.avatar
  if not L7_2 then
    L7_2 = ""
  end
  L6_2.url = L7_2
  L6_2.size = "Small"
  L6_2.style = "Person"
  L6_2.horizontalAlignment = "Left"
  L5_2[1] = L6_2
  L4_2.items = L5_2
  L4_2.horizontalAlignment = "Left"
  L5_2 = {}
  L5_2.type = "Column"
  L5_2.width = "auto"
  L5_2.horizontalAlignment = "Center"
  L5_2.verticalContentAlignment = "Center"
  L6_2 = {}
  L7_2 = {}
  L7_2.type = "TextBlock"
  L8_2 = "#%s | %s (%s) | %s Points"
  L9_2 = L8_2
  L8_2 = L8_2.format
  L10_2 = A0_2
  L11_2 = A1_2.name
  L12_2 = A1_2.discordName
  if not L12_2 then
    L12_2 = A1_2.id
  end
  L13_2 = A1_2.points
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  L7_2.text = L8_2
  L7_2.wrap = true
  L7_2.horizontalAlignment = "Center"
  L7_2.size = "Medium"
  L7_2.weight = "Default"
  L7_2.color = "Default"
  L6_2[1] = L7_2
  L5_2.items = L6_2
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L2_2.columns = L3_2
  L2_2.horizontalAlignment = "Center"
  return L2_2
end
L1_1.getListCard = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = false
  L2_2 = pairs
  L3_2 = L1_1.waiting
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = A0_2.points
    L9_2 = L7_2.points
    if L8_2 > L9_2 then
      if not L1_2 then
        L1_2 = L6_2
      elseif L6_2 < L1_2 then
        L1_2 = L6_2
      end
    end
  end
  L2_2 = L1_1.waiting
  L2_2 = #L2_2
  L2_2 = L2_2 + 1
  if not L1_2 then
    L3_2 = L1_1.waiting
    L3_2[L2_2] = A0_2
  else
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = L1_1.waiting
    L5_2 = L1_2
    L6_2 = A0_2
    L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = L5_1
  L4_2 = L4_1
  L5_2 = cfg
  L5_2 = L5_2.language
  L5_2 = L5_2.joined_queue
  L6_2 = {}
  L7_2 = A0_2.name
  L6_2.NAME = L7_2
  L7_2 = A0_2.discordName
  if not L7_2 then
    L7_2 = A0_2.id
  end
  L6_2.ID = L7_2
  L7_2 = L1_2 or L7_2
  if not L1_2 then
    L7_2 = L2_2
  end
  L6_2.POSITION = L7_2
  L6_2.QUEUE_SIZE = L2_2
  L7_2 = A0_2.points
  L6_2.POINTS = L7_2
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2(L5_2, L6_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end
L1_1.addWaiting = L10_1
L10_1 = AddEventHandler
L11_1 = "playerConnecting"
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2
  L3_2 = source
  L4_2 = L1_1.getIdentifiers
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = A2_2.defer
  L5_2()
  L5_2 = Wait
  L6_2 = 0
  L5_2(L6_2)
  L5_2 = A2_2.update
  L6_2 = L4_1
  L7_2 = cfg
  L7_2 = L7_2.language
  L7_2 = L7_2.welcome
  L8_2 = {}
  L8_2.NAME = A0_2
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L6_2(L7_2, L8_2)
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
  L5_2 = L1_1.restart
  if L5_2 then
    L5_2 = A2_2.done
    L6_2 = cfg
    L6_2 = L6_2.language
    L6_2 = L6_2.restart
    return L5_2(L6_2)
  else
    L5_2 = L4_2.license
    if not L5_2 then
      L5_2 = A2_2.done
      L6_2 = cfg
      L6_2 = L6_2.language
      L6_2 = L6_2.license_not_found
      return L5_2(L6_2)
    else
      L5_2 = L1_1.active
      L6_2 = L4_2.license
      L5_2 = L5_2[L6_2]
      if L5_2 then
        L5_2 = A2_2.done
        L6_2 = cfg
        L6_2 = L6_2.language
        L6_2 = L6_2.duplicate_license
        return L5_2(L6_2)
      end
    end
  end
  L5_2 = Wait
  L6_2 = cfg
  L6_2 = L6_2.cooldown
  L6_2 = L6_2 * 1000
  L5_2(L6_2)
  L5_2 = nil
  L6_2 = cfg
  L6_2 = L6_2.discord
  L6_2 = L6_2.enabled
  if L6_2 then
    L6_2 = L4_2.discord
    if not L6_2 then
      L6_2 = cfg
      L6_2 = L6_2.discord
      L6_2 = L6_2.requireIdentifier
      if L6_2 then
        L6_2 = A2_2.done
        L7_2 = cfg
        L7_2 = L7_2.language
        L7_2 = L7_2.discord_not_found
        return L6_2(L7_2)
      end
    end
    L6_2 = L1_1.getDiscordInfo
    L7_2 = L4_2.discord
    L6_2, L7_2 = L6_2(L7_2)
    if L7_2 then
      L5_2 = L6_2
    else
      L8_2 = cfg
      L8_2 = L8_2.discord
      L8_2 = L8_2.requireInGuild
      if L8_2 then
        L8_2 = A2_2.done
        L9_2 = cfg
        L9_2 = L9_2.language
        L9_2 = L9_2.required_in_guild
        return L8_2(L9_2)
      end
    end
    L8_2 = cfg
    L8_2 = L8_2.discord
    L8_2 = L8_2.whitelist
    if L8_2 then
      L8_2 = false
      if L5_2 then
        L9_2 = L5_2.roles
        if L9_2 then
          L9_2 = 1
          L10_2 = L5_2.roles
          L10_2 = #L10_2
          L11_2 = 1
          for L12_2 = L9_2, L10_2, L11_2 do
            L13_2 = L5_2.roles
            L13_2 = L13_2[L12_2]
            L14_2 = cfg
            L14_2 = L14_2.discord
            L14_2 = L14_2.whitelistRoleId
            if L13_2 == L14_2 then
              L8_2 = true
              break
            end
          end
        end
      end
      if not L8_2 then
        L9_2 = A2_2.done
        L10_2 = cfg
        L10_2 = L10_2.language
        L10_2 = L10_2.not_whitelisted
        return L9_2(L10_2)
      end
    end
  end
  L6_2 = L1_1.canConnect
  L7_2 = true
  L6_2 = L6_2(L7_2)
  if L6_2 then
    L6_2 = cfg
    L6_2 = L6_2.joinDelay
    if not L6_2 then
      goto lbl_449
    end
  end
  L6_2 = L6_1
  L7_2 = json
  L7_2 = L7_2.decode
  L8_2 = json
  L8_2 = L8_2.encode
  L9_2 = L7_1
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L8_2(L9_2)
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
  L8_2 = nil
  L9_2 = L0_1
  if L9_2 then
    L9_2 = MySQL
    L9_2 = L9_2.Sync
    L9_2 = L9_2.fetchAll
    L10_2 = "SELECT points, category, id FROM queue WHERE identifier IN (?)"
    L11_2 = {}
    L12_2 = L1_1.removeKeys
    L13_2 = L4_2
    L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L12_2(L13_2)
    L11_2[1] = L12_2
    L11_2[2] = L13_2
    L11_2[3] = L14_2
    L11_2[4] = L15_2
    L11_2[5] = L16_2
    L11_2[6] = L17_2
    L11_2[7] = L18_2
    L11_2[8] = L19_2
    L11_2[9] = L20_2
    L11_2[10] = L21_2
    L11_2[11] = L22_2
    L11_2[12] = L23_2
    L11_2[13] = L24_2
    L9_2 = L9_2(L10_2, L11_2)
    L8_2 = L9_2
  end
  L9_2 = {}
  L10_2 = 0
  L11_2 = L5_2 or L11_2
  if not L5_2 then
    L11_2 = {}
  end
  L12_2 = cfg
  L12_2 = L12_2.discord
  L12_2 = L12_2.enabled
  if L12_2 then
    L12_2 = L11_2.roles
    if L12_2 then
      L12_2 = 1
      L13_2 = L11_2.roles
      L13_2 = #L13_2
      L14_2 = 1
      for L15_2 = L12_2, L13_2, L14_2 do
        L16_2 = pairs
        L17_2 = cfg
        L17_2 = L17_2.prioRoles
        L16_2, L17_2, L18_2, L19_2 = L16_2(L17_2)
        for L20_2, L21_2 in L16_2, L17_2, L18_2, L19_2 do
          L22_2 = L11_2.roles
          L22_2 = L22_2[L15_2]
          L23_2 = L21_2.roleId
          if L22_2 == L23_2 then
            L22_2 = L21_2.points
            L10_2 = L10_2 + L22_2
            L22_2 = #L9_2
            L22_2 = L22_2 + 1
            L23_2 = {}
            L24_2 = L21_2.label
            L23_2.label = L24_2
            L24_2 = L21_2.points
            L23_2.points = L24_2
            L9_2[L22_2] = L23_2
            L22_2 = cfg
            L22_2 = L22_2.stackPrio
            if not L22_2 then
              break
            end
          end
        end
      end
    end
  end
  if L8_2 then
    L12_2 = cfg
    L12_2 = L12_2.stackPrio
    if not L12_2 then
      L12_2 = table
      L12_2 = L12_2.sort
      L13_2 = L8_2
      function L14_2(A0_3, A1_3)
        local L2_3, L3_3
        L2_3 = A0_3.points
        L3_3 = A1_3.points
        L2_3 = L2_3 > L3_3
        return L2_3
      end
      L12_2(L13_2, L14_2)
    end
    L12_2 = 1
    L13_2 = #L8_2
    L14_2 = 1
    for L15_2 = L12_2, L13_2, L14_2 do
      L16_2 = tonumber
      L17_2 = L8_2[L15_2]
      if L17_2 then
        L17_2 = L17_2.points
      end
      L16_2 = L16_2(L17_2)
      if L16_2 then
        L10_2 = L10_2 + L16_2
        L17_2 = #L9_2
        L17_2 = L17_2 + 1
        L18_2 = {}
        L19_2 = L8_2[L15_2]
        if L19_2 then
          L19_2 = L19_2.category
        end
        if not L19_2 then
          L19_2 = L8_2[L15_2]
          if L19_2 then
            L19_2 = L19_2.id
          end
          if not L19_2 then
            L19_2 = "Label Not Found"
          end
        end
        L18_2.label = L19_2
        L18_2.points = L16_2
        L9_2[L17_2] = L18_2
        L17_2 = cfg
        L17_2 = L17_2.stackPrio
        if not L17_2 then
          break
        end
      end
    end
  end
  L12_2 = ""
  L13_2 = 1
  L14_2 = #L9_2
  L15_2 = 1
  for L16_2 = L13_2, L14_2, L15_2 do
    L17_2 = L12_2
    L18_2 = "\n"
    L19_2 = "%s | %s Points"
    L20_2 = L19_2
    L19_2 = L19_2.format
    L21_2 = L9_2[L16_2]
    L21_2 = L21_2.label
    L22_2 = L9_2[L16_2]
    L22_2 = L22_2.points
    L19_2 = L19_2(L20_2, L21_2, L22_2)
    L17_2 = L17_2 .. L18_2 .. L19_2
    L12_2 = L17_2
  end
  L13_2 = L7_2.body
  L13_2 = L13_2[2]
  L13_2.text = L12_2
  L13_2 = L7_2.body
  L13_2 = L13_2[3]
  L14_2 = "Total Points: %s"
  L15_2 = L14_2
  L14_2 = L14_2.format
  L16_2 = L10_2
  L14_2 = L14_2(L15_2, L16_2)
  L13_2.text = L14_2
  L13_2 = L1_1.findInQueue
  L14_2 = L4_2.license
  L13_2 = L13_2(L14_2)
  if L13_2 then
    L14_2 = table
    L14_2 = L14_2.remove
    L15_2 = L1_1.waiting
    L16_2 = L13_2
    L14_2(L15_2, L16_2)
  end
  L14_2 = L1_1.addWaiting
  L15_2 = {}
  L15_2.id = L3_2
  L15_2.name = A0_2
  L15_2.points = L10_2
  L16_2 = L4_2.license
  L15_2.license = L16_2
  L16_2 = L11_2.name
  L15_2.discordName = L16_2
  L16_2 = L11_2.avatar
  L15_2.avatar = L16_2
  L14_2(L15_2)
  L14_2 = 1
  L15_2 = {}
  L15_2.seconds = 0
  L15_2.minutes = 0
  L15_2.hours = 0
  L16_2 = cfg
  L16_2 = L16_2.language
  L16_2 = L16_2.connecting
  L17_2 = L16_2
  L16_2 = L16_2.gsub
  L18_2 = "{POINTS}"
  L19_2 = L10_2
  L16_2 = L16_2(L17_2, L18_2, L19_2)
  L17_2 = L1_1.active
  L18_2 = L4_2.license
  L17_2[L18_2] = true
  while true do
    L17_2 = L1_1.findInQueue
    L18_2 = L4_2.license
    L17_2 = L17_2(L18_2)
    if L17_2 then
      L18_2 = L1_1.restart
      if not L18_2 then
        L18_2 = GetPlayerName
        L19_2 = L3_2
        L18_2 = L18_2(L19_2)
        if L18_2 then
          goto lbl_367
        end
      end
    end
    if L17_2 then
      L18_2 = table
      L18_2 = L18_2.remove
      L19_2 = L1_1.waiting
      L20_2 = L17_2
      L18_2(L19_2, L20_2)
    end
    L18_2 = L1_1.active
    L19_2 = L4_2.license
    L18_2[L19_2] = nil
    L18_2 = A2_2.done
    L19_2 = L1_1.restart
    if L19_2 then
      L19_2 = cfg
      L19_2 = L19_2.language
      L19_2 = L19_2.restart
      if L19_2 then
        goto lbl_365
      end
    end
    L19_2 = cfg
    L19_2 = L19_2.language
    L19_2 = L19_2.error_occurred
    ::lbl_365::
    do return L18_2(L19_2) end
    ::lbl_367::
    L18_2 = cfg
    L18_2 = L18_2.joinDelay
    if not L18_2 and L17_2 <= 1 then
      L18_2 = L1_1.canConnect
      L19_2 = false
      L18_2 = L18_2(L19_2)
      if L18_2 then
        L18_2 = table
        L18_2 = L18_2.remove
        L19_2 = L1_1.waiting
        L20_2 = L17_2
        L18_2(L19_2, L20_2)
        L18_2 = L1_1.active
        L19_2 = L4_2.license
        L18_2[L19_2] = nil
        break
      end
    end
    L18_2 = L15_2.seconds
    if L18_2 < 59 then
      L18_2 = L15_2.seconds
      L18_2 = L18_2 + 1
      L15_2.seconds = L18_2
    else
      L15_2.seconds = 0
      L18_2 = L15_2.minutes
      L18_2 = L18_2 + 1
      L15_2.minutes = L18_2
    end
    L18_2 = L15_2.minutes
    if L18_2 > 59 then
      L15_2.minutes = 0
      L18_2 = L15_2.hours
      L18_2 = L18_2 + 1
      L15_2.hours = L18_2
    end
    L18_2 = L6_2.body
    L18_2 = L18_2[2]
    L19_2 = L4_1
    L20_2 = L16_2
    L21_2 = {}
    L21_2.POSITION = L17_2
    L22_2 = L1_1.waiting
    L22_2 = #L22_2
    L21_2.QUEUE_SIZE = L22_2
    L22_2 = L15_2.hours
    L21_2.HOURS = L22_2
    L22_2 = L15_2.minutes
    L21_2.MINUTES = L22_2
    L22_2 = L15_2.seconds
    L21_2.SECONDS = L22_2
    L19_2 = L19_2(L20_2, L21_2)
    L18_2.text = L19_2
    L18_2 = A2_2.presentCard
    L19_2 = L6_2 or L19_2
    if 1 ~= L14_2 or not L6_2 then
      if 2 == L14_2 then
        L19_2 = L8_1
      end
      L19_2 = L19_2 or 3 == L14_2 and L19_2
    end
    function L20_2(A0_3, A1_3)
      local L2_3
      L2_3 = A0_3.submitId
      if "listPage" == L2_3 then
        L2_3 = 2
        L14_2 = L2_3
      else
        L2_3 = A0_3.submitId
        if "prioPage" == L2_3 then
          L2_3 = 3
          L14_2 = L2_3
        else
          L2_3 = A0_3.submitId
          if "goback" == L2_3 then
            L2_3 = 1
            L14_2 = L2_3
          else
            L2_3 = A0_3.submitId
            if "goback2" == L2_3 then
              L2_3 = 1
              L14_2 = L2_3
            end
          end
        end
      end
    end
    L18_2(L19_2, L20_2)
    L18_2 = Wait
    L19_2 = 1000
    L18_2(L19_2)
  end
  ::lbl_449::
  L6_2 = A2_2.done
  L6_2()
  L6_2 = GetPlayerName
  L7_2 = L3_2
  L6_2 = L6_2(L7_2)
  if L6_2 then
    L6_2 = L2_1
    L6_2 = L6_2 + L3_2
    return L6_2
  end
end
L10_1(L11_1, L12_1)
L10_1 = AddEventHandler
L11_1 = "playerJoining"
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L5_1
  L2_2 = L4_1
  L3_2 = cfg
  L3_2 = L3_2.language
  L3_2 = L3_2.joining
  L4_2 = {}
  L5_2 = GetPlayerName
  L6_2 = source
  L5_2 = L5_2(L6_2)
  L4_2.NAME = L5_2
  L5_2 = source
  L4_2.ID = L5_2
  L4_2.TEMP_ID = A0_2
  L2_2, L3_2, L4_2, L5_2, L6_2 = L2_2(L3_2, L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = L2_1
  L2_2 = tonumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L1_2 = L1_2 - L2_2
  return L1_2
end
L10_1(L11_1, L12_1)
L10_1 = cfg
L10_1 = L10_1.displayQueueInHostName
if L10_1 then
  L10_1 = CreateThread
  function L11_1()
    local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
    L0_2 = Wait
    L1_2 = 5000
    L0_2(L1_2)
    L0_2 = GetConvar
    L1_2 = "sv_hostname"
    L0_2 = L0_2(L1_2)
    L1_1.initialHostName = L0_2
    while true do
      L0_2 = GetConvar
      L1_2 = "sv_hostname"
      L0_2 = L0_2(L1_2)
      if "default FXServer" ~= L0_2 then
        L1_2 = L1_1.waiting
        L1_2 = #L1_2
        if L1_2 > 0 then
          L2_2 = SetConvar
          L3_2 = "sv_hostname"
          L4_2 = "[%s] %s"
          L5_2 = L4_2
          L4_2 = L4_2.format
          L6_2 = L1_2
          L7_2 = L1_1.initialHostName
          L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2)
          L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
        else
          L2_2 = L1_1.initialHostName
          if L0_2 ~= L2_2 then
            L2_2 = SetConvar
            L3_2 = "sv_hostname"
            L4_2 = L1_1.initialHostName
            L2_2(L3_2, L4_2)
          end
        end
      end
      L1_2 = Wait
      L2_2 = 30000
      L1_2(L2_2)
    end
  end
  L10_1(L11_1)
end
L10_1 = CreateThread
function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  while true do
    L0_2 = os
    L0_2 = L0_2.time
    L0_2 = L0_2()
    L1_2 = pairs
    L2_2 = L2_1.list
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = GetPlayerName
      L8_2 = L5_2
      L7_2 = L7_2(L8_2)
      if not L7_2 or L6_2 < L0_2 then
        L7_2 = L2_1
        L7_2 = L7_2 - L5_2
      end
    end
    L1_2 = pairs
    L2_2 = L1_1.waiting
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = GetPlayerName
      L8_2 = L6_2.id
      L7_2 = L7_2(L8_2)
      if not L7_2 then
        L7_2 = table
        L7_2 = L7_2.remove
        L8_2 = L1_1.waiting
        L9_2 = L5_2
        L7_2(L8_2, L9_2)
      end
    end
    L1_2 = Wait
    L2_2 = 15000
    L1_2(L2_2)
  end
end
L10_1(L11_1)
L10_1 = CreateThread
function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = cfg
  L0_2 = L0_2.joinDelay
  if L0_2 > 0 then
    L0_2 = cfg
    L0_2 = L0_2.joinDelay
    L1_2 = 1
    L2_2 = -1
    for L3_2 = L0_2, L1_2, L2_2 do
      L4_2 = Wait
      L5_2 = 1000
      L4_2(L5_2)
    end
  end
  L0_2 = cfg
  L0_2.joinDelay = nil
end
L10_1(L11_1)
L10_1 = CreateThread
function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  while true do
    L0_2 = L1_1.waiting
    L0_2 = #L0_2
    if L0_2 > 0 then
      L1_2 = {}
      L2_2 = {}
      L2_2.type = "TextBlock"
      L3_2 = "Players in Queue: %s"
      L4_2 = L3_2
      L3_2 = L3_2.format
      L5_2 = L0_2
      L3_2 = L3_2(L4_2, L5_2)
      L2_2.text = L3_2
      L2_2.wrap = true
      L2_2.size = "Medium"
      L2_2.weight = "Default"
      L2_2.color = "Default"
      L2_2.horizontalAlignment = "Center"
      L1_2[1] = L2_2
      L2_2 = pairs
      L3_2 = L1_1.waiting
      L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
      for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
        L8_2 = cfg
        L8_2 = L8_2.maxPlayersToDisplay
        if L6_2 <= L8_2 then
          L8_2 = #L1_2
          L8_2 = L8_2 + 1
          L9_2 = L1_1.getListCard
          L10_2 = L6_2
          L11_2 = L7_2
          L9_2 = L9_2(L10_2, L11_2)
          L1_2[L8_2] = L9_2
        else
          break
        end
      end
      L2_2 = #L1_2
      L2_2 = L2_2 + 1
      L3_2 = {}
      L3_2.type = "TextBlock"
      L4_2 = "and %s other players."
      L5_2 = L4_2
      L4_2 = L4_2.format
      L6_2 = cfg
      L6_2 = L6_2.maxPlayersToDisplay
      if L0_2 > L6_2 then
        L6_2 = cfg
        L6_2 = L6_2.maxPlayersToDisplay
        L6_2 = L0_2 - L6_2
        if L6_2 then
          goto lbl_61
        end
      end
      L6_2 = 0
      ::lbl_61::
      L4_2 = L4_2(L5_2, L6_2)
      L3_2.text = L4_2
      L3_2.wrap = true
      L3_2.size = "Medium"
      L3_2.weight = "Default"
      L3_2.color = "Default"
      L3_2.horizontalAlignment = "Center"
      L1_2[L2_2] = L3_2
      L2_2 = #L1_2
      L2_2 = L2_2 + 1
      L3_2 = L9_1
      L3_2 = L3_2[1]
      L1_2[L2_2] = L3_2
      L2_2 = #L1_2
      L2_2 = L2_2 + 1
      L3_2 = L9_1
      L3_2 = L3_2[2]
      L1_2[L2_2] = L3_2
      L8_1.body = L1_2
    end
    L1_2 = Wait
    L2_2 = 5000
    L1_2(L2_2)
  end
end
L10_1(L11_1)
L10_1 = AddEventHandler
L11_1 = "txAdmin:events:scheduledRestart"
function L12_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.secondsRemaining
  if 60 == L1_2 then
    L1_2 = Wait
    L2_2 = 45000
    L1_2(L2_2)
    L1_1.restart = true
  end
end
L10_1(L11_1, L12_1)
L10_1 = StopResource
L11_1 = "hardcap"
L10_1(L11_1)
L10_1 = AddEventHandler
L11_1 = "onResourceStarting"
function L12_1(A0_2)
  local L1_2
  if "hardcap" == A0_2 then
    L1_2 = CancelEvent
    L1_2()
  end
end
L10_1(L11_1, L12_1)
L10_1 = AddEventHandler
L11_1 = "onResourceStop"
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L3_1
  if A0_2 == L1_2 then
    L1_2 = cfg
    L1_2 = L1_2.displayQueueInHostName
    if L1_2 then
      L1_2 = L1_1.initialHostName
      if L1_2 then
        L1_2 = SetConvar
        L2_2 = "sv_hostname"
        L3_2 = L1_1.initialHostName
        L1_2(L2_2, L3_2)
      end
    end
  end
end
L10_1(L11_1, L12_1)
L10_1 = RegisterCommand
L11_1 = "v-queue:wl"
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if not A0_2 or 0 == A0_2 then
    L3_2 = cfg
    L3_2 = L3_2.discord
    L4_2 = cfg
    L4_2 = L4_2.discord
    L4_2 = L4_2.whitelist
    L4_2 = not L4_2
    L3_2.whitelist = L4_2
    L3_2 = print
    L4_2 = "Whitelist %s^7."
    L5_2 = L4_2
    L4_2 = L4_2.format
    L6_2 = cfg
    L6_2 = L6_2.discord
    L6_2 = L6_2.whitelist
    if L6_2 then
      L6_2 = "^2enabled"
      if L6_2 then
        goto lbl_24
      end
    end
    L6_2 = "^1disabled"
    ::lbl_24::
    L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
    L3_2(L4_2, L5_2, L6_2)
  end
end
L10_1(L11_1, L12_1)
L10_1 = RegisterCommand
L11_1 = "v-queue:debug"
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  if not A0_2 or 0 == A0_2 then
    L3_2 = pairs
    L4_2 = L1_1.waiting
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = print
      L10_2 = "^6#%s^7 - %s (Points: %s, Discord: %s, ID: %s, %s)"
      L11_2 = L10_2
      L10_2 = L10_2.format
      L12_2 = L7_2
      L13_2 = L8_2.name
      L14_2 = L8_2.points
      L15_2 = L8_2.discordName
      L16_2 = L8_2.id
      L17_2 = L8_2.license
      L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
      L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    end
    L3_2 = print
    L4_2 = "^6Total Players in Queue: ^7%s"
    L5_2 = L4_2
    L4_2 = L4_2.format
    L6_2 = L1_1.waiting
    L6_2 = #L6_2
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L4_2(L5_2, L6_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    L3_2 = print
    L4_2 = "^6---------------------------------------------^7"
    L3_2(L4_2)
    L3_2 = pairs
    L4_2 = L2_1.list
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = print
      L10_2 = "(%s) - %s %sms"
      L11_2 = L10_2
      L10_2 = L10_2.format
      L12_2 = L7_2
      L13_2 = GetPlayerName
      L14_2 = L7_2
      L13_2 = L13_2(L14_2)
      L14_2 = GetPlayerPing
      L15_2 = L7_2
      L14_2, L15_2, L16_2, L17_2 = L14_2(L15_2)
      L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
      L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    end
    L3_2 = print
    L4_2 = "^6Total Players in Connecting Stage: ^7%s"
    L5_2 = L4_2
    L4_2 = L4_2.format
    L6_2 = L2_1.count
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L4_2(L5_2, L6_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  end
end
L10_1(L11_1, L12_1)
L10_1 = exports
L11_1 = "queueList"
function L12_1()
  local L0_2, L1_2
  L0_2 = L1_1.waiting
  return L0_2
end
L10_1(L11_1, L12_1)
L10_1 = exports
L11_1 = "queueSize"
function L12_1()
  local L0_2, L1_2
  L0_2 = L1_1.waiting
  L0_2 = #L0_2
  return L0_2
end
L10_1(L11_1, L12_1)
L10_1 = exports
L11_1 = "connectingList"
function L12_1()
  local L0_2, L1_2
  L0_2 = L2_1.list
  return L0_2
end
L10_1(L11_1, L12_1)
L10_1 = exports
L11_1 = "connectingSize"
function L12_1()
  local L0_2, L1_2
  L0_2 = L2_1.count
  return L0_2
end
L10_1(L11_1, L12_1)
L10_1 = exports
L11_1 = "addPrio"
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  if A0_2 then
    L3_2 = type
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    if not ("number" ~= L3_2 or A1_2 <= 0) then
      goto lbl_11
    end
  end
  do return end
  ::lbl_11::
  L3_2 = "INSERT INTO queue SET identifier = ?, points = ?"
  L4_2 = {}
  L5_2 = tostring
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L6_2 = A1_2
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  if A2_2 then
    L5_2 = L3_2
    L6_2 = ", category = ?"
    L5_2 = L5_2 .. L6_2
    L3_2 = L5_2
    L5_2 = #L4_2
    L5_2 = L5_2 + 1
    L6_2 = tostring
    L7_2 = A2_2
    L6_2 = L6_2(L7_2)
    L4_2[L5_2] = L6_2
  end
  L5_2 = MySQL
  L5_2 = L5_2.Sync
  L5_2 = L5_2.insert
  L6_2 = L3_2
  L7_2 = L4_2
  return L5_2(L6_2, L7_2)
end
L10_1(L11_1, L12_1)
L10_1 = exports
L11_1 = "removePrio"
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "number" ~= L1_2 then
    return
  end
  L1_2 = MySQL
  L1_2 = L1_2.Sync
  L1_2 = L1_2.execute
  L2_2 = "DELETE FROM queue WHERE id = ?"
  L3_2 = {}
  L4_2 = A0_2
  L3_2[1] = L4_2
  return L1_2(L2_2, L3_2)
end
L10_1(L11_1, L12_1)
