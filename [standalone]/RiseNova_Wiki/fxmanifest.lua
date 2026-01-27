fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'RiseNova'
description 'RiseNova In-Game Wiki / Help Panel'
version '1.0.0'

-- This resource must be named EXACTLY "RiseNova_Wiki"

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/style.css',
    'html/app.js'
}

shared_scripts {
    'config.lua'
}

client_scripts {
    'client.lua'
}

server_scripts {
    'server.lua'
}
