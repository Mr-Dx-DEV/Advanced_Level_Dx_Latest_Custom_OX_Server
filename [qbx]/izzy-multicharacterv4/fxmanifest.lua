fx_version 'cerulean'
game 'gta5'
author 'Izzy <izzy.tebex.io>'
lua54 'yes'

client_script 'client/*.lua'
server_scripts {
   -- '@qb-apartments/config.lua', -- if you dont use qb-apartments, you can remove this part
    '@oxmysql/lib/MySQL.lua',
    'shared/sv_cfg.lua',
    'server.lua'
}

shared_scripts {
    'shared/cfg.lua',
    'shared/utils.lua',
    'shared/shared.lua',
}

ui_page 'web/dist/index.html'
files {
    'web/dist/*',
    'web/dist/**/*',
    '*.json'
}

escrow_ignore {
    'client/*.lua',
    'server.lua',
    'shared/*.lua',
}
dependency '/assetpacks'