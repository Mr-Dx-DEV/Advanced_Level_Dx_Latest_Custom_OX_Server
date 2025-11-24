
fx_version 'cerulean'
game 'gta5'

author 'Vyast'
version '1.0.9'
description '(v-queue) A modern, well-rounded FiveM queue system.'

server_only 'yes'
lua54 'yes'

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'config.lua',
    'server/*.lua'
} 

escrow_ignore {
    'config.lua',
    'server/version.lua'
}
dependency '/assetpacks'























