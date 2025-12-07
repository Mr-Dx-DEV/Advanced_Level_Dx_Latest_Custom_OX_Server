fx_version 'adamant'

game 'gta5'

author "Savana Scripts"

lua54 'yes'

description 'savana.tebex.io'

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
}

escrow_ignore {
    'config.lua',
    'notify.lua',
    'utils/*.lua',
    "main/*.lua",
}

dependencies {
    'ox_lib'
}
dependency '/assetpacks'