fx_version 'cerulean'
game 'gta5'

author 'XVision Mods'
description 'XVision Loading Screen (design per user HTML, offline-safe)'
version '1.0.0'

loadscreen 'html/index.html'
loadscreen_cursor 'yes'
loadscreen_manual_shutdown 'yes'

files {
  'html/index.html',
  'html/assets/images/bg1.png',
  'html/assets/images/bg2.png',
  'html/assets/images/bg3.png',
  'html/assets/music/ambient.wav'
}

client_script 'client.lua'
