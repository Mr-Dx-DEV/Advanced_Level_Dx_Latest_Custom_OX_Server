fx_version "cerulean"
game "gta5"
lua54 "yes"

version 'v1.6.5'



dependencies {
    "oxmysql",
    "ox_lib",
    "jg-vehiclemileage",
    "/server:7290",
    "/onesync",
}


shared_scripts {
    "config/*.lua", 
    "locales/*.lua",
    "shared/*.lua",
    "framework/main.lua"
}


client_scripts {
    "@ox_lib/init.lua",
    "@prism_uipack/init.lua",
    "framework/**/cl-*.lua",
    "client/cl-*.lua"
}


server_scripts {
    "@ox_lib/init.lua",
    "@prism_uipack/init.lua",
    "@oxmysql/lib/MySQL.lua",
    "framework/**/sv-*.lua",
    "server/sv-*.lua",
}


ui_page "web/dist/index.html"


files {
    "web/dist/index.html",
    "web/dist/**/*",
    "logos/*",
    "data/carcols_gen9.meta",
    "data/carmodcols_gen9.meta",
    "audiodirectory/jg_mechanic.awc",
    "data/jg_mechanic_sounds.dat54.rel"
}


data_file "CARCOLS_GEN9_FILE" "data/carcols_gen9.meta"
data_file "CARMODCOLS_GEN9_FILE" "data/carmodcols_gen9.meta"
data_file "AUDIO_WAVEPACK" "audiodirectory"
data_file "AUDIO_SOUNDDATA" "data/jg_mechanic_sounds.dat"


escrow_ignore {
    "config/*.lua",
    "framework/**/*",
    "install/**/*",
    "locales/*.lua",
    "logos/**/*",
    "client/cl-vehicleprops.lua",
    "client/cl-locations.lua",
    "client/cl-shops-stashes.lua",
    "client/cl-handling.lua",
    "server/sv-usable-items.lua",
    "server/sv-webhooks.lua",
    "server/sv-shops-stashes.lua"
}

dependency '/assetpacks'


















































