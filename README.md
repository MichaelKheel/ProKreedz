# ProKreedz plugin  [![GitHub release](https://img.shields.io/github/release/michaelkheel/ProKreedz.svg)](https://github.com/MichaelKheel/ProKreedz/releases)
Initial version of the file **ProKreedz v2.31 by nucLeaR**

The plugin was created for a specific server and was not expected to ever be made public, therefore it does not have any settings or cvars

### Supported Build
* ReHLDS 3.4.0.X
* Linux 5787 and higher
* Windows 5758 and higher

### AMXMODX Version
* 1.8.1+

### Required modules
* amxmodx
* amxmisc
* cstrike
* engine
* fun
* fakemeta
* hamsandwich
* dhudmessage
* geoip
* mysql

### Install Guide
Enter data from your base in the file (_your-compiler_/inc/sqlx.inc) or in a config (addons/amxmodx/configs/sql.ini)
```
stock Handle:SQL_MakeStdTuple(timeout = 0)
{
	new host [] = "127.0.0.1"
	new user [] = ""
	new pass [] = ""
	new db [] = "kz"
```

### Admin Commands
Commands | Discription
--- | ---
`amx_addsavepos` | Command to save the player's position at the specified position.
`amx_botmenu` | open the bot management menu
`amx_hook` | open menu awards
`/specadm` | hides you in spectors

### Commands
Commands | Discription
--- | ---
 `/menu` `/kz` | Server menu
 `/top` `/top10` `/top15` | KZ Top menu
 `/pro15` `/nub15` | open motd stats page
 `/mystats` `/me` | open a menu with your records.
 `/noclip` `/nc` | toggle noclip
`/usp` `/knife` | gives USP and knife
`/weapons` `/guns` | gives all weapons
`/start` `/respawn` | teleports to the start
`/savestart` | set start point
`/finish` | teleport to the finish (if you already finished the map)
`/savepos` | save your current position.
`/teleport` | menu for teleporting to the player.
`/cp` | save checkpoint
`/tp` `/gc` `/tp [1....10]` | go to checkpoint
`/stuck` | go to last checkpoint
`/pause` | pause timer
`/reset` | reset timer
`/god` `/invis` `/noteleport` `/icons` | open config menu
`/pro15` | View list of PRO records
`/nub15` | View list of General records
`/spec` `/ct` | Enter to spectators
`/speclist` | remove spectators list
`/showkeys` | show the hud keys
`/measure` `/distance` | open the menu for measuring surfaces
`/fps` | show the fps of all players
`/speed` | show the hud speedometer
`/version` `/about` | shows the plugin version
`/help` | show motd with all information about server
`/uptime` | show server uptime
