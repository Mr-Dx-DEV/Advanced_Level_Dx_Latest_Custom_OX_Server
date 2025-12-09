author 'https://discord.gg/x2jn3y5G2Z'
name 'The Supreme All In One Dx'

fx_version 'cerulean'
game 'gta5'

description 'For purchase https://discord.gg/x2jn3y5G2Z join on our discord server for more information. Also Visit website for direct purchase: https://buymeacoffee.com/dxfivem/'
version '1.2.0'


files {
    'index.html',
    'music.mp3',
    'css/fontawesome-all.min.css',
    'css/plugins.min.css',
    'css/style-city.min.css',
    'css/css.css',
    'css/style.min.css',
    'img/logo.png',
    'img/background/slide2-bg.jpg',
    'img/background/slide3-bg.jpg',
    'js/plugins-savage.js',
    'js/plugins.js',
    'js/savage.min.js',
    'js/yt.js',
    'webfonts/fa-brands-400.eot',
    'webfonts/fa-brands-400.svg',
    'webfonts/fa-brands-400.ttf',
    'webfonts/fa-brands-400.woff',
    'webfonts/fa-brands-400.woff2',
    'webfonts/fa-light-300.eot',
    'webfonts/fa-light-300.svg',
    'webfonts/fa-light-300.ttf',
    'webfonts/fa-light-300.woff',
    'webfonts/fa-light-300.woff2',
    'webfonts/fa-regular-400.eot',
    'webfonts/fa-regular-400.svg',
    'webfonts/fa-regular-400.ttf',
    'webfonts/fa-regular-400.woff',
    'webfonts/fa-regular-400.woff2',
    'webfonts/fa-solid-900.eot',
    'webfonts/fa-solid-900.svg',
    'webfonts/fa-solid-900.ttf',
    'webfonts/fa-solid-900.woff',
    'webfonts/fa-solid-900.woff2',
}
client_script 'client.lua'
loadscreen_manual_shutdown 'yes'
loadscreen {
  'index.html'
}

loadscreen_cursor 'yes'
loadscreen_manual_shutdown 'yes'

lua54 'yes'

escrow_ignore {
    'shared/*.lua',
    'locales.lua',
    'shared.lua',
    'config.lua',
    'locales/**.lua',
}
