fx_version 'bodacious'
games { 'gta5' }

author 'TheSkirata'
description 'A resource providing a speed camera and ALPR system'
version '0.5'

client_scripts {
    'cl_fixedalpr.lua',
}

server_scripts {
    'config_server.lua',
    'sv_*.lua',
}

shared_script 'config_shared.lua'