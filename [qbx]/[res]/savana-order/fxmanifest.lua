fx_version 'cerulean'
games { 'gta5' }

author 'Savana Scripts'
description 'savana.tebex.io'
version '1.0.0'

shared_scripts {
    '@ox_lib/init.lua',
    'editable/config.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'editable/s_*.lua',
    'server/*.lua'
}

client_scripts {
    'editable/c_*.lua',
    'client/*.lua'
}

escrow_ignore {
    'editable/*.lua'
}

files {
    'html/index.html',
    'html/img/*.png',
    'html/fonts/*.ttf',
    'html/js/*.js',
    'html/notify.mp3',
}

ui_page 'html/index.html'

dependencies {
    'ox_lib',
    'oxmysql'
    
}

escrow_ignore {
    'editable/*.lua',
    'server/*.lua',
    'client/*.lua'
}

lua54 'yes'
dependency '/assetpacks'
dependency '/assetpacks'