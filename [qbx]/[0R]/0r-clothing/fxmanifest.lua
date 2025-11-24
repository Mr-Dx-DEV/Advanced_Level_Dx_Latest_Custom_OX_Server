fx_version 'cerulean'
game 'gta5'
lua54 'yes'
version '1.0.1'
escrow_ignore {
    'shared/*.lua',
    'converter/*.lua',
    'client/*.lua',
    'server/*.lua',
    'locales/*.lua',
    'client/core.lua',
    'server/core.lua'
}
shared_scripts {
	'shared/cores.lua',
    'shared/locale.lua',
    'locales/en.lua',
    'locales/*.lua',
    'shared/config.lua',
    'shared/peds.lua'
}
client_scripts {
	'client/*.lua',
    'converter/*.lua'
}
server_scripts {
    '@oxmysql/lib/MySQL.lua',
	'server/*.lua'
}
ui_page 'html/index.html'
files {'html/**', 'AllTattoos.json'}
dependencies {'0r-imagegenerator'}
dependency '/assetpacks'