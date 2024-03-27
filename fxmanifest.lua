fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'Heidrun'
description 'https://github.com/heidrun1'

shared_scripts { "config.lua", '@es_extended/imports.lua', }
client_script 'client.lua'
server_scripts { '@oxmysql/lib/MySQL.lua', 'server.lua' }