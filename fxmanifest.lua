fx_version 'cerulean'

games { 'gta5' }

name 'M2.Developer'
author 'M2.SpawnPoint <M2Dev>'
description 'Script SpawnPoint by M2.Developer <M2Dev>'
version '1.0.0'

lua54 'yes'

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/script.js',
    'html/style.css'
}

client_scripts {
    'config.lua',
    'core/cl_core.lua'
}