fx_version 'adamant'
games { 'gta5' }
version '2.3'

author 'Cylex'
description 'Cylex Multicharacter V2'

client_scripts {
	'rpc/cl_rpc.lua',
    'client/cl_*.lua',
    'client/integrations/*.lua',
}

server_scripts {
	'@oxmysql/lib/MySQL.lua',
    'server/update.lua',
	'rpc/sv_rpc.lua',
	'configs/sv_config.lua',
    'server/sv_*.lua',
    'server/integrations/*.lua',
}

shared_scripts {
	'configs/sh_config.lua',
	'configs/sh_locales.lua',
	'configs/sh_locations.lua'
}

-- FOR ESX
shared_script {
	'@es_extended/imports.lua', 
}

ui_page "html/index.html"

files {
	'html/assets/*',
	'html/index.html'
}

lua54 'yes' 

escrow_ignore {
	'configs/*.lua',
	'client/integrations/*.lua',
	'server/integrations/*.lua',
}
dependency '/assetpacks'