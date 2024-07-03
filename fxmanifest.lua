fx_version 'cerulean'
game 'gta5'

author 'SticksDev <sticks@teamhydra.dev>'
description 'Fireworks script for FamilyRP'
version '1.0.0'
lua54 'yes' -- Required for ox_lib compatibility

client_scripts {
    'client/cl_*.lua',
}

server_scripts {
    'server/sv_*.lua',
}

shared_scripts {
    '@ox_lib/init.lua',
}

