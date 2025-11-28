fx_version 'cerulean'
game 'gta5'

author 'N3X Development'
description 'N3X Admin Menu - Professional Admin Menu for FiveM (QB-Core)'
version '1.0.0'

lua54 'yes'

ui_page 'html/index.html'

shared_scripts {
    'config/config.lua'
}

client_scripts {
    'client/client.lua'
}

server_scripts {
    'server/server.lua'
}

files {
    'html/index.html',
    'html/style.css',
    'html/script.js'
}
