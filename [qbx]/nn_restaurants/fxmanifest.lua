fx_version "cerulean"

description "Restaurant System"
author "NANO Scripts"
version '1.0.7'

lua54 'yes'

games { "gta5" }

ui_page 'web/build/index.html'

server_script "@oxmysql/lib/MySQL.lua"

shared_scripts {
  '@ox_lib/init.lua',
  'bridge/init.lua',
  "shared/config.lua",
  "shared/translations.lua",
  "shared/config_cookingitems.lua",
  "shared/config_shopitems.lua",
  "shared/config_usables.lua",
}

-- Server scripts (load in order)
server_scripts {
  'bridge/server/framework.lua',
  'bridge/server/inventory.lua',
  'bridge/server/notification.lua',
  "lib/lib.lua",         -- Load lib.lua first (defines Lib and State)
  "server/cooking.lua",  -- Has SetupBaskets function (uses Lib)
  "server/main.lua",
  "server/management.lua",
  "server/usables.lua",
  "server/utils.lua",
}

-- Client scripts
client_scripts {
  'bridge/client/framework.lua',
  'bridge/client/inventory.lua',
  'bridge/client/notification.lua',
  'bridge/client/progressbar.lua',
  'client/lib_wrapper.lua',
}
client_script "client/**/*"

data_file 'DLC_ITYP_REQUEST' 'stream/sn_fryer.ytyp'

files {
	'web/build/index.html',
	'web/build/**/*',
  'stream/sn_fryer.ytyp'
}

escrow_ignore {
  'shared/**/*',
  'client/**/*',
  'server/**/*',
}
dependency '/assetpacks'