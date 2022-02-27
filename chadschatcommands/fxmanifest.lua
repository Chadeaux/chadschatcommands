fx_version "adamant"
game "gta5"


resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'


name 'chadeauxs custom commands'
description 'chat commands for UpStateNY RP'
author 'chadeaux#3858'
version '1.4'
url 'www.yourmomshouse.orgy'


shared_script 'config.lua'

client_scripts {
	'client/afk.lua',
	'client/chat.lua',
	'client/character.lua',
	'client/vehicle.lua'
}
server_script {
	'server/afk.lua',
	'server/chat.lua',
	'server/character.lua',
	'server/vehicle.lua'
}