fx_version 'cerulean'
game 'gta5'

author 'Lion Workshop'
name 'Lion-Loadingscreen'
description 'Lion Workshop Loadingscreen'
discord 'https://discord.gg/EhMBzWeSES'
website 'https://ghestlua.tebex.io/'
developer 'Ghestlua & Yusufucum'

ui_page 'web/index.html'
loadscreen 'web/index.html'
loadscreen_manual_shutdown 'yes'
loadscreen_cursor 'yes'

files {
    'web/index.html',
    'web/style.css',
    'web/script.js',
    'web/config.json',
    'web/img/*.*',
    'web/music/*.*'
}

client_scripts {
    'client.lua'
}

escrow_ignore {
    'web/config.json',
    'client.lua'
}

lua54 'yes'
dependency '/assetpacks'
