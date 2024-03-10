-- This resource contains part of the default Cfx.re asset pack (cfx-server-data)
-- Altering or recreating for local use only is strongly discouraged.

version '1.0.0'
author 'mrLikeNinja'
description 'Compiled resources of the default Cfx.re asset pack (cfx-server-data). Some third party resources may depend on this resource.'
repository 'https://github.com/citizenfx/cfx-server-data'

-- baseevents

client_script '[baseevents]/deathevents.lua'
client_script '[baseevents]/vehiclechecker.lua'
server_script '[baseevents]/server.lua'

-- chat

ui_page '[chat]/dist/ui.html'

client_script '[chat]/cl_chat.lua'
server_script '[chat]/sv_chat.lua'

files {
    '[chat]/dist/ui.html',
    '[chat]/dist/index.css',
    '[chat]/html/vendor/*.css',
    '[chat]/html/vendor/fonts/*.woff2',
}

-- hardcap

client_script '[hardcap]/client.lua'
server_script '[hardcap]/server.lua'

-- mapmanager 

client_scripts {
    "[mapmanager]/mapmanager_shared.lua",
    "[mapmanager]/mapmanager_client.lua"
}

server_scripts {
    "[mapmanager]/mapmanager_shared.lua",
    "[mapmanager]/mapmanager_server.lua"
}

server_export "getCurrentGameType"
server_export "getCurrentMap"
server_export "changeGameType"
server_export "changeMap"
server_export "doesMapSupportGameType"
server_export "getMaps"
server_export "roundEnded"

-- playerdata

server_script '[playerdata]/server.lua'

provides {
    'cfx.re/playerData.v1alpha1'
}

-- sessionmanager

server_script '[sessionmanager]/server/host_lock.lua'
client_script '[sessionmanager]/client/empty.lua'

-- spawnmanager

client_script '[spawnmanager]/spawnmanager.lua'

fx_version 'adamant'
game 'gta5'