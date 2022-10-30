fx_version 'adamant'
game 'gta5'

version '1.0.1'
description 'บล็อกไม่ให้ผู้เล่นที่กำลังอุ้มขึ้นรถ'
author 'CodeCool Developer'

shared_script {
    'config/config.general.lua',
    'config/config.shared.lua'
}

client_scripts {
    'client/main.lua'
}

server_scripts {
    'server/main.lua'
}