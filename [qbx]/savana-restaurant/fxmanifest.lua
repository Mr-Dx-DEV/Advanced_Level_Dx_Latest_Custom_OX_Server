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
    'config.lua'
}

client_script { 
    'utils/c_mugshot.lua',
    'utils/c_main.lua',
    "main/client.lua",
}

server_script {
    'utils/s_main.lua',
    "main/server.lua",
}

escrow_ignore {
    'config.lua',
    'notify.lua',
    'utils/*.lua',
    'main/*.lua',
}

dependencies {
    'qb-core'
}

resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'
dependency '/assetpacks'