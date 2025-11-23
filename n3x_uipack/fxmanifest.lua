fx_version 'cerulean'
game 'gta5'

author 'N3X Development'
description 'N3X UI Pack - Advanced UI wrapper for ox_lib with custom styling'
version '1.0.0'

lua54 'yes'

shared_scripts {
    '@ox_lib/init.lua',
    'config.lua'
}

client_scripts {
    'client/main.lua'
}

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/css/*.css',
    'html/js/*.js'
}

dependencies {
    'ox_lib'
}

provide 'ox_lib' -- This allows n3x_uipack to override ox_lib UI functions
