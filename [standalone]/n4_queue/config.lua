cfg = {}

cfg.joinDelay = 30 --Seconds
cfg.cooldown = 3 --Seconds. Time a player will wait before connecting in order to prevent rate limiting and spamming.
cfg.displayQueueInHostName = true --Add the queue count in front of your server name on the list?
cfg.maxPlayersToDisplay = 64 --Max amount of players to show on the queue list page.
cfg.consoleInfo = true --Print queue information to the server console?
cfg.stackPrio = true --Combine all rows/roles of prio together or only use the row/role with the highest amount of points?

cfg.discord = {
    enabled = true, --Setting to false will completely ignore all discord related features.
    requireIdentifier = false, --Require the player to have discord linked to fivem?
    requireInGuild = true, --Require the player to be in your discord server to connect?
    whitelist = false, --Enable a whitelist on your server?
    whitelistRoleId = 1395767961943543860, --The role that players need to have in order to connect if whitelist is enabled.
    botToken = 'MTM5Njk1MjA3ODkwMzAyMTcwMA.G2-wpv.Cqdm7BC6JKJyvNTFeCNy_Nq7FCEvvmRXBkm9BM', --Bot need to be in the same discord as the guild ID below.
    guildId = '1128036285475467375' --ID of your discord server.
}

cfg.prioRoles = { --points must be greater than 0. role ID must be a number. Label IS required, even if blank.
    {label = 'Director', roleId = 1129436641065447524, points = 100000000},
    {label = 'Owner', roleId = 1129296974995275907, points = 10000000},
    {label = 'Developer', roleId = 1130743105205837854, points = 1000000},
    {label = 'Executive', roleId = 1135603700312850473, points = 100000},
    {label = 'Head Managment', roleId = 1129296975901249576, points = 80000},
    {label = 'Senior Management', roleId = 1135338322424770602, points = 60000},
    {label = 'Management', roleId = 1129296977524424727, points = 40000},
    {label = 'Community Manager', roleId = 1135343110893863013, points = 20000},
    {label = 'Staff', roleId = 1129296993836081284, points = 15000},
    {label = 'Ladies', roleId = 1129297007022981150, points = 100},
    {label = 'PD', roleId = 1129300960511017090, points = 10000},
    {label = 'Donator', roleId = 1129297006045691944, points = 5000},
    {label = 'Content Creator', roleId = 1129296999640993793, points = 100},
    {label = 'Server Booster', roleId = 1128278284967366677, points = 250},
    {label = 'Vanity Prio', roleId = 1129297020339888148, points = 500}
}

cfg.cardDesign = { --style can be 'positive', 'default' or 'destructive'
    main_page = {
        bannerImage = 'https://i.imgur.com/Td8MHjb.jpeg',
        store_button = {label = 'Store', iconImage = 'https://i.imgur.com/Td8MHjb.jpeg', url = 'https://trenchesrp.tebex.io/', style = 'default'},
        players_page = {label = 'Queue List', iconImage = 'https://i.imgur.com/Td8MHjb.jpeg', style = 'default'},
        prio_page = {label = 'Prio List', iconImage = 'https://i.imgur.com/Td8MHjb.jpeg', style = 'default'},
        discord_button = {label = 'Discord', iconImage = 'https://i.imgur.com/Td8MHjb.jpeg', url = 'https://discord.gg/serpentsgw', style = 'default'}
    },
    prio_page = {
        store_button = {label = 'Store', iconImage = 'https://i.imgur.com/RWuFBNV.png', url = 'https://trenchesrp.tebex.io/', style = 'default'},
        discord_button = {label = 'Discord', iconImage = 'https://i.imgur.com/ERn1W3t.png', url = 'https://discord.gg/trenchesroleplay', style = 'default'},
        back_button = {label = 'Go Back', iconImage = 'https://i.imgur.com/a0Iyrc8.png', style = 'default'}
    },
    players_page = {
        store_button = {label = 'Store', iconImage = 'https://i.imgur.com/RWuFBNV.png', url = 'https://trenchesrp.tebex.io/', style = 'default'},
        discord_button = {label = 'Discord', iconImage = 'https://i.imgur.com/ERn1W3t.png', url = 'https://discord.gg/trenchesroleplay', style = 'default'},
        back_button = {label = 'Go Back', iconImage = 'https://i.imgur.com/a0Iyrc8.png', style = 'default'}
    }
}

cfg.language = { --All placeholders can be re-arranged, but MUST have curly {} brackets around them. Ex. {NAME}, {QUEUE_SIZE}
    welcome = 'Welcome, {NAME}. Checking queue information, please wait...',
    joined_queue = '^1{NAME} ^7({ID}) joined the queue. [{POSITION}/{QUEUE_SIZE}] ({POINTS} points)',
    connecting = 'You are waiting in line to join the server.\n\nTotal Points: {POINTS}\nCurrent Position: [{POSITION}/{QUEUE_SIZE}]\nTime Spent: {HOURS}h {MINUTES}m {SECONDS}s ⏰\n\nJoin our discord or visit our store while you wait!',
    joining = '^1{NAME} ^7(ID: {ID} | Temp ID: {TEMP_ID}) is loading into the server.',
    restart = 'Unable to join at this time. This server has a scheduled restart in 15 seconds. Please wait until the server has fully restarted before re-connecting.',
    license_not_found = 'Your license identifier was unable to be found. Please make sure that you are logged into a rockstar social club account.',
    discord_not_found = 'Your discord identifier was unable to be found. Please make sure that your discord app is open and your account is linked to FiveM.',
    duplicate_license = 'Another player with the same license identifier as you was found in the queue.',
    required_in_guild = 'You must be in our discord in order to join the server: discord.gg/trenchesroleplay',
    error_occurred = 'An error occurred while processing your queue information. Please reconnect.',
    not_whitelisted = 'You are not whitelisted. You must have the required discord role in order to connect.'
}
