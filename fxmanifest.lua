fx_version 'adamant'

game 'gta5'

author 'Alloww'

description 'Alloww Shop'
version '1.0'


client_scripts {
    "rageui/RMenu.lua",
    "rageui/menu/RageUI.lua",
    "rageui/menu/Menu.lua",
    "rageui/menu/MenuController.lua",

    "rageui/components/*.lua",

    "rageui/menu/elements/*.lua",

    "rageui/menu/items/*.lua",

    "rageui/menu/panels/*.lua",

    "rageui/menu/panels/*.lua",
    "rageui/menu/windows/*.lua",

}


client_scripts {
    "client/main.lua",
    "config.lua"
}


server_scripts {
    "server/main.lua",
    "config.lua"
}



dependencies {
	'es_extended'
}
