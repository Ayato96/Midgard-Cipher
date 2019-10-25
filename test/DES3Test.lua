local String = require("string");
local Encrypt = require("midgard-cipher.encrypt");
local Decrypt = require("midgard-cipher.decrypt");

local rootDir = "C:/Users/13093596/Documents/github/Midgard-Client"

local filesVector = {
	{
		name = "client.lua",
		path = rootDir .."/modules/client/client.lua"
	},
	{
		name = "client.otmod",
		path = rootDir .."/modules/client/client.otmod"
	},
	{
		name = "background.lua",
		path = rootDir .."/modules/client_background/background.lua"
	},
	{
		name = "background.otmod",
		path = rootDir .."/modules/client_background/background.otmod"
	},
	{
		name = "background.otui",
		path = rootDir .."/modules/client_background/background.otui"
	},
	{
		name = "characterlist.lua",
		path = rootDir .."/modules/client_entergame/characterlist.lua"
	},
	{
		name = "characterlist.otui",
		path = rootDir .."/modules/client_entergame/characterlist.otui"
	},
	{
		name = "entergame.lua",
		path = rootDir .."/modules/client_entergame/entergame.lua"
	},
	{
		name = "entergame.otmod",
		path = rootDir .."/modules/client_entergame/entergame.otmod"
	},
	{
		name = "entergame.otui",
		path = rootDir .."/modules/client_entergame/entergame.otui"
	},
	{
		name = "waitinglist.otui",
		path = rootDir .."/modules/client_entergame/waitinglist.otui"
	},
	{
		name = "locales.lua",
		path = rootDir .."/modules/client_locales/locales.lua"
	},
	{
		name = "locales.otmod",
		path = rootDir .."/modules/client_locales/locales.otmod"
	},
	{
		name = "locales.otui",
		path = rootDir .."/modules/client_locales/locales.otui"
	},
	{
		name = "neededtranslations.lua",
		path = rootDir .."/modules/client_locales/neededtranslations.lua"
	},
	{
		name = "modulemanager.lua",
		path = rootDir .."/modules/client_modulemanager/modulemanager.lua"
	},
	{
		name = "modulemanager.otmod",
		path = rootDir .."/modules/client_modulemanager/modulemanager.otmod"
	},
	{
		name = "modulemanager.otui",
		path = rootDir .."/modules/client_modulemanager/modulemanager.otui"
	},
	{
		name = "audio.otui",
		path = rootDir .."/modules/client_options/audio.otui"
	},
	{
		name = "console.otui",
		path = rootDir .."/modules/client_options/console.otui"
	},
	{
		name = "game.otui",
		path = rootDir .."/modules/client_options/game.otui"
	},
	{
		name = "graphics.otui",
		path = rootDir .."/modules/client_options/graphics.otui"
	},
	{
		name = "options.lua",
		path = rootDir .."/modules/client_options/options.lua"
	},
	{
		name = "options.otmod",
		path = rootDir .."/modules/client_options/options.otmod"
	},
	{
		name = "options.otui",
		path = rootDir .."/modules/client_options/options.otui"
	},
	{
		name = "addserver.lua",
		path = rootDir .."/modules/client_serverlist/addserver.lua"
	},
	{
		name = "addserver.otui",
		path = rootDir .."/modules/client_serverlist/addserver.otui"
	},
	{
		name = "serverlist.lua",
		path = rootDir .."/modules/client_serverlist/serverlist.lua"
	},
	{
		name = "serverlist.otmod",
		path = rootDir .."/modules/client_serverlist/serverlist.otmod"
	},
	{
		name = "serverlist.otui",
		path = rootDir .."/modules/client_serverlist/serverlist.otui"
	},
	{
		name = "stats.lua",
		path = rootDir .."/modules/client_stats/stats.lua"
	},
	{
		name = "stats.otmod",
		path = rootDir .."/modules/client_stats/stats.otmod"
	},
	{
		name = "styles.lua",
		path = rootDir .."/modules/client_styles/styles.lua"
	},
	{
		name = "styles.otmod",
		path = rootDir .."/modules/client_styles/styles.otmod"
	},
	{
		name = "commands.lua",
		path = rootDir .."/modules/client_terminal/commands.lua"
	},
	{
		name = "terminal.lua",
		path = rootDir .."/modules/client_terminal/terminal.lua"
	},
	{
		name = "terminal.otmod",
		path = rootDir .."/modules/client_terminal/terminal.otmod"
	},
	{
		name = "terminal.otui",
		path = rootDir .."/modules/client_terminal/terminal.otui"
	},
	{
		name = "topmenu.lua",
		path = rootDir .."/modules/client_topmenu/topmenu.lua"
	},
	{
		name = "topmenu.otmod",
		path = rootDir .."/modules/client_topmenu/topmenu.otmod"
	},
	{
		name = "topmenu.otui",
		path = rootDir .."/modules/client_topmenu/topmenu.otui"
	},
	{
		name = "battle.lua",
		path = rootDir .."/modules/game_battle/battle.lua"
	},
	{
		name = "battle.otmod",
		path = rootDir .."/modules/game_battle/battle.otmod"
	},
	{
		name = "battle.otui",
		path = rootDir .."/modules/game_battle/battle.otui"
	},
	{
		name = "battlebutton.otui",
		path = rootDir .."/modules/game_battle/battlebutton.otui"
	},
	{
		name = "bugreport.lua",
		path = rootDir .."/modules/game_bugreport/bugreport.lua"
	},
	{
		name = "bugreport.otmod",
		path = rootDir .."/modules/game_bugreport/bugreport.otmod"
	},
	{
		name = "bugreport.otui",
		path = rootDir .."/modules/game_bugreport/bugreport.otui"
	},
	{
		name = "combatcontrols.lua",
		path = rootDir .."/modules/game_combatcontrols/combatcontrols.lua"
	},
	{
		name = "combatcontrols.otmod",
		path = rootDir .."/modules/game_combatcontrols/combatcontrols.otmod"
	},
	{
		name = "combatcontrols.otui",
		path = rootDir .."/modules/game_combatcontrols/combatcontrols.otui"
	},
	{
		name = "channelswindow.otui",
		path = rootDir .."/modules/game_console/channelswindow.otui"
	},
	{
		name = "communicationwindow.otui",
		path = rootDir .."/modules/game_console/communicationwindow.otui"
	},
	{
		name = "console.lua",
		path = rootDir .."/modules/game_console/console.lua"
	},
	{
		name = "console.otmod",
		path = rootDir .."/modules/game_console/console.otmod"
	},
	{
		name = "console.otui",
		path = rootDir .."/modules/game_console/console.otui"
	},
	{
		name = "violationwindow.otui",
		path = rootDir .."/modules/game_console/violationwindow.otui"
	},
	{
		name = "container.otui",
		path = rootDir .."/modules/game_containers/container.otui"
	},
	{
		name = "containers.lua",
		path = rootDir .."/modules/game_containers/containers.lua"
	},
	{
		name = "containers.otmod",
		path = rootDir .."/modules/game_containers/containers.otmod"
	},
	{
		name = "cooldown.lua",
		path = rootDir .."/modules/game_cooldown/cooldown.lua"
	},
	{
		name = "cooldown.otmod",
		path = rootDir .."/modules/game_cooldown/cooldown.otmod"
	},
	{
		name = "cooldown.otui",
		path = rootDir .."/modules/game_cooldown/cooldown.otui"
	},
	{
		name = "healthinfo.lua",
		path = rootDir .."/modules/game_healthinfo/healthinfo.lua"
	},
	{
		name = "healthinfo.otmod",
		path = rootDir .."/modules/game_healthinfo/healthinfo.otmod"
	},
	{
		name = "healthinfo.otui",
		path = rootDir .."/modules/game_healthinfo/healthinfo.otui"
	},
	{
		name = "hotkeys_manager.lua",
		path = rootDir .."/modules/game_hotkeys/hotkeys_manager.lua"
	},
	{
		name = "hotkeys_manager.otmod",
		path = rootDir .."/modules/game_hotkeys/hotkeys_manager.otmod"
	},
	{
		name = "hotkeys_manager.otui",
		path = rootDir .."/modules/game_hotkeys/hotkeys_manager.otui"
	},
	{
		name = "gameinterface.lua",
		path = rootDir .."/modules/game_interface/gameinterface.lua"
	},
	{
		name = "gameinterface.otui",
		path = rootDir .."/modules/game_interface/gameinterface.otui"
	},
	{
		name = "interface.otmod",
		path = rootDir .."/modules/game_interface/interface.otmod"
	},
	{
		name = "countwindow.otui",
		path = rootDir .."/modules/game_interface/styles/countwindow.otui"
	},
	{
		name = "uigamemap.lua",
		path = rootDir .."/modules/game_interface/widgets/uigamemap.lua"
	},
	{
		name = "uiitem.lua",
		path = rootDir .."/modules/game_interface/widgets/uiitem.lua"
	},
	{
		name = "inventory.lua",
		path = rootDir .."/modules/game_inventory/inventory.lua"
	},
	{
		name = "inventory.otmod",
		path = rootDir .."/modules/game_inventory/inventory.otmod"
	},
	{
		name = "inventory.otui",
		path = rootDir .."/modules/game_inventory/inventory.otui"
	},
	{
		name = "market.lua",
		path = rootDir .."/modules/game_market/market.lua"
	},
	{
		name = "market.otmod",
		path = rootDir .."/modules/game_market/market.otmod"
	},
	{
		name = "market.otui",
		path = rootDir .."/modules/game_market/market.otui"
	},
	{
		name = "marketoffer.lua",
		path = rootDir .."/modules/game_market/marketoffer.lua"
	},
	{
		name = "marketprotocol.lua",
		path = rootDir .."/modules/game_market/marketprotocol.lua"
	},
	{
		name = "offerstatistic.lua",
		path = rootDir .."/modules/game_market/offerstatistic.lua"
	},
	{
		name = "marketoffers.otui",
		path = rootDir .."/modules/game_market/ui/marketoffers.otui"
	},
	{
		name = "myoffers.otui",
		path = rootDir .."/modules/game_market/ui/myoffers.otui"
	},
	{
		name = "amountwindow.otui",
		path = rootDir .."/modules/game_market/ui/general/amountwindow.otui"
	},
	{
		name = "marketbuttons.otui",
		path = rootDir .."/modules/game_market/ui/general/marketbuttons.otui"
	},
	{
		name = "marketcombobox.otui",
		path = rootDir .."/modules/game_market/ui/general/marketcombobox.otui"
	},
	{
		name = "markettabs.otui",
		path = rootDir .."/modules/game_market/ui/general/markettabs.otui"
	},
	{
		name = "browse.otui",
		path = rootDir .."/modules/game_market/ui/marketoffers/browse.otui"
	},
	{
		name = "itemdetails.otui",
		path = rootDir .."/modules/game_market/ui/marketoffers/itemdetails.otui"
	},
	{
		name = "itemoffers.otui",
		path = rootDir .."/modules/game_market/ui/marketoffers/itemoffers.otui"
	},
	{
		name = "itemstats.otui",
		path = rootDir .."/modules/game_market/ui/marketoffers/itemstats.otui"
	},
	{
		name = "overview.otui",
		path = rootDir .."/modules/game_market/ui/marketoffers/overview.otui"
	},
	{
		name = "currentoffers.otui",
		path = rootDir .."/modules/game_market/ui/myoffers/currentoffers.otui"
	},
	{
		name = "itemoffers.otui",
		path = rootDir .."/modules/game_market/ui/myoffers/itemoffers.otui"
	},
	{
		name = "offerhistory.otui",
		path = rootDir .."/modules/game_market/ui/myoffers/offerhistory.otui"
	},
	{
		name = "flagwindow.otui",
		path = rootDir .."/modules/game_minimap/flagwindow.otui"
	},
	{
		name = "minimap.lua",
		path = rootDir .."/modules/game_minimap/minimap.lua"
	},
	{
		name = "minimap.otmod",
		path = rootDir .."/modules/game_minimap/minimap.otmod"
	},
	{
		name = "minimap.otui",
		path = rootDir .."/modules/game_minimap/minimap.otui"
	},
	{
		name = "modaldialog.lua",
		path = rootDir .."/modules/game_modaldialog/modaldialog.lua"
	},
	{
		name = "modaldialog.otmod",
		path = rootDir .."/modules/game_modaldialog/modaldialog.otmod"
	},
	{
		name = "modaldialog.otui",
		path = rootDir .."/modules/game_modaldialog/modaldialog.otui"
	},
	{
		name = "npctrade.lua",
		path = rootDir .."/modules/game_npctrade/npctrade.lua"
	},
	{
		name = "npctrade.otmod",
		path = rootDir .."/modules/game_npctrade/npctrade.otmod"
	},
	{
		name = "npctrade.otui",
		path = rootDir .."/modules/game_npctrade/npctrade.otui"
	},
	{
		name = "outfit.lua",
		path = rootDir .."/modules/game_outfit/outfit.lua"
	},
	{
		name = "outfit.otmod",
		path = rootDir .."/modules/game_outfit/outfit.otmod"
	},
	{
		name = "outfitwindow.otui",
		path = rootDir .."/modules/game_outfit/outfitwindow.otui"
	},
	{
		name = "deathwindow.otui",
		path = rootDir .."/modules/game_playerdeath/deathwindow.otui"
	},
	{
		name = "playerdeath.lua",
		path = rootDir .."/modules/game_playerdeath/playerdeath.lua"
	},
	{
		name = "playerdeath.otmod",
		path = rootDir .."/modules/game_playerdeath/playerdeath.otmod"
	},
	{
		name = "playermount.lua",
		path = rootDir .."/modules/game_playermount/playermount.lua"
	},
	{
		name = "playermount.otmod",
		path = rootDir .."/modules/game_playermount/playermount.otmod"
	},
	{
		name = "playertrade.lua",
		path = rootDir .."/modules/game_playertrade/playertrade.lua"
	},
	{
		name = "playertrade.otmod",
		path = rootDir .."/modules/game_playertrade/playertrade.otmod"
	},
	{
		name = "tradewindow.otui",
		path = rootDir .."/modules/game_playertrade/tradewindow.otui"
	},
	{
		name = "questlinewindow.otui",
		path = rootDir .."/modules/game_questlog/questlinewindow.otui"
	},
	{
		name = "questlog.lua",
		path = rootDir .."/modules/game_questlog/questlog.lua"
	},
	{
		name = "questlog.otmod",
		path = rootDir .."/modules/game_questlog/questlog.otmod"
	},
	{
		name = "questlogwindow.otuii",
		path = rootDir .."/modules/game_questlog/questlogwindow.otui"
	},
	{
		name = "ruleviolation.lua",
		path = rootDir .."/modules/game_ruleviolation/ruleviolation.lua"
	},
	{
		name = "ruleviolation.otmod",
		path = rootDir .."/modules/game_ruleviolation/ruleviolation.otmod"
	},
	{
		name = "ruleviolation.otui",
		path = rootDir .."/modules/game_ruleviolation/ruleviolation.otui"
	},
	{
		name = "skills.lua",
		path = rootDir .."/modules/game_skills/skills.lua"
	},
	{
		name = "skills.otmod",
		path = rootDir .."/modules/game_skills/skills.otmod"
	},
	{
		name = "skills.otui",
		path = rootDir .."/modules/game_skills/skills.otui"
	},
	{
		name = "spelllist.lua",
		path = rootDir .."/modules/game_spelllist/spelllist.lua"
	},
	{
		name = "spelllist.otmod",
		path = rootDir .."/modules/game_spelllist/spelllist.otmod"
	},
	{
		name = "spelllist.otui",
		path = rootDir .."/modules/game_spelllist/spelllist.otui"
	},
	{
		name = "textmessage.lua",
		path = rootDir .."/modules/game_textmessage/textmessage.lua"
	},
	{
		name = "textmessage.otmod",
		path = rootDir .."/modules/game_textmessage/textmessage.otmod"
	},
	{
		name = "textmessage.otui",
		path = rootDir .."/modules/game_textmessage/textmessage.otui"
	},
	{
		name = "textwindow.lua",
		path = rootDir .."/modules/game_textwindow/textwindow.lua"
	},
	{
		name = "textwindow.otmod",
		path = rootDir .."/modules/game_textwindow/textwindow.otmod"
	},
	{
		name = "textwindow.otui",
		path = rootDir .."/modules/game_textwindow/textwindow.otui"
	},
	{
		name = "things.lua",
		path = rootDir .."/modules/game_things/things.lua"
	},
	{
		name = "things.otmod",
		path = rootDir .."/modules/game_things/things.otmod"
	},
	{
		name = "unjustifiedpoints.lua",
		path = rootDir .."/modules/game_unjustifiedpoints/unjustifiedpoints.lua"
	},
	{
		name = "unjustifiedpoints.otmod",
		path = rootDir .."/modules/game_unjustifiedpoints/unjustifiedpoints.otmod"
	},
	{
		name = "unjustifiedpoints.otui",
		path = rootDir .."/modules/game_unjustifiedpoints/unjustifiedpoints.otui"
	},
	{
		name = "addvip.otui",
		path = rootDir .."/modules/game_viplist/addvip.otui"
	},
	{
		name = "editvip.otui",
		path = rootDir .."/modules/game_viplist/editvip.otui"
	},
	{
		name = "viplist.lua",
		path = rootDir .."/modules/game_viplist/viplist.lua"
	},
	{
		name = "viplist.otmod",
		path = rootDir .."/modules/game_viplist/viplist.otmod"
	},
	{
		name = "viplist.otui",
		path = rootDir .."/modules/game_viplist/viplist.otui"
	},
	{
		name = "const.lua",
		path = rootDir .."/modules/gamelib/const.lua"
	},
	{
		name = "creature.lua",
		path = rootDir .."/modules/gamelib/creature.lua"
	},
	{
		name = "game.lua",
		path = rootDir .."/modules/gamelib/game.lua"
	},
	{
		name = "gamelib.otmod",
		path = rootDir .."/modules/gamelib/gamelib.otmod"
	},
	{
		name = "player.lua",
		path = rootDir .."/modules/gamelib/player.lua"
	},
	{
		name = "position.lua",
		path = rootDir .."/modules/gamelib/position.lua"
	},
	{
		name = "protocol.lua",
		path = rootDir .."/modules/gamelib/protocol.lua"
	},
	{
		name = "protocollogin.lua",
		path = rootDir .."/modules/gamelib/protocollogin.lua"
	},
	{
		name = "spells.lua",
		path = rootDir .."/modules/gamelib/spells.lua"
	},
	{
		name = "textmessages.lua",
		path = rootDir .."/modules/gamelib/textmessages.lua"
	},
	{
		name = "thing.lua",
		path = rootDir .."/modules/gamelib/thing.lua"
	},
	{
		name = "util.lua",
		path = rootDir .."/modules/gamelib/util.lua"
	},
	{
		name = "uicreaturebutton.lua",
		path = rootDir .."/modules/gamelib/ui/uicreaturebutton.lua"
	},
	{
		name = "uiminimap.lua",
		path = rootDir .."/modules/gamelib/ui/uiminimap.lua"
	}
};

function encrypt()
	
	local key = "Duz+3q6u/t6tyr7t";
	local iv = "abcdefgh";

	for k,r in pairs(filesVector) do

		print(String.format("----- Encrypting file: %s -----", r.name))
		Encrypt.encrypt_file(r.path, key, iv)
		
		print(String.format("----- Decrypting file: %s -----", r.name))
		Decrypt.decrypt_file(r.path, key, iv)
	
		print(String.format("----- Success file: %s -----", r.name))

		print("-----------------------------------------------------------------------------")
	end 
end 

encrypt()