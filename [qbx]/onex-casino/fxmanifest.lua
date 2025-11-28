shared_script '@WaveShield/resource/include.lua'
shared_script '@WaveShield/resource/waveshield.js'

fx_version 'cerulean'
game 'gta5'

description 'OneX casino'
author 'Dec4t and Harokis'

lua54 'yes'

client_scripts {
  'client/**',
}

server_scripts {
  '@oxmysql/lib/MySQL.lua',
  'config.lua',
  'server/modules/*.*',
  'web\dist\assets*.*',
  'server/main.lua',
}

--ui_page 'http://localhost:5173/'

ui_page 'web/dist/index.html'

files {
  'web/dist/**'
}

shared_scripts {
  '@es_extended/imports.lua',
  '@ox_lib/init.lua',
}

dependencies {
  'es_extended'
}