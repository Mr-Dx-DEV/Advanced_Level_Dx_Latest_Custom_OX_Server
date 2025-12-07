fx_version 'adamant'

game 'gta5'

author 'Savana Scripts'
description 'savana.tebex.io'

lua54 'yes'

ui_page "html/index.html"

files {
    'html/**/**.**'
}

shared_scripts {
    '@ox_lib/init.lua',
    'config.lua'
}

client_script { 
    'utils/c_mugshot.lua',
    'utils/c_main.lua',
    "main/client.lua",
}

server_script { 
    '@mysql-async/lib/MySQL.lua',
    'utils/s_main.lua',
    "main/server.lua",
    "webhook.lua",
}

escrow_ignore {
    'config.lua',
    'utils/*.lua',
    'main/*.lua',
    "webhook.lua",
}

dependencies {
    'ox_lib'
}

resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'

exports {
    'addMoney',
	'removeMoney'
}
dependency '/assetpacks'
dependency '/assetpacks'