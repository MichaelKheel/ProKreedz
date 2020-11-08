#include <amxmodx>
#include <amxmisc>
#include <colorchat>

#define PLUGIN "KZ[L]Chat"
#define VERSION "1.05"
#define AUTHOR "`L."

#pragma tabsize 0

new g_msgChannel

new g_Values[10][] = {{255, 255, 255}, {255, 0, 0}, {0, 255, 0}, {0, 0, 255}, {255, 255, 0}, {255, 0, 255}, {0, 255, 255}, {227, 96, 8}, {45, 89, 116}, {103, 44, 38}}
new Float:g_Pos[4][] = {{0.0, 0.0}, {0.05, 0.55}, {-1.0, 0.2}, {-1.0, 0.7}}

// ALL CHAT
new COLCHAR[3][2] = { "^x03"/*team col*/, "^x04"/*green*/, "^x01"/*white*/ }

new alv_sndr, alv_str2[26], alv_str4[101]
new msg[200]

public plugin_init()
{
	register_plugin(PLUGIN, VERSION, AUTHOR)

	register_clcmd("say", "cmdSayChat", _, "@[@|@|@][w|r|g|b|y|m|c]<text> - displays hud message")
	register_clcmd("say_team", "cmdSayAdmin", _, "@<text> - displays message to admins")
	register_concmd("amx_chat", "cmdChat", _, "<message> - sends message to admins")

	register_message( get_user_msgid("SayText"), "col_changer" )
	register_message(get_user_msgid("ShowMenu"), "message_show_menu")
	register_message(get_user_msgid("VGUIMenu"), "message_vgui_menu")
	register_dictionary("common.txt")
}

public cmdSayChat(id, level, cid)
{
	if(!cmd_access(id, ADMIN_CHAT, cid, 2,false))
		return PLUGIN_CONTINUE

	new said[6], i = 0
	read_argv(1, said, charsmax(said))

	while (said[i] == '@')
	{
		i++
	}

	if (!i || i > 3)
	{
		return PLUGIN_CONTINUE
	}

	new message[192], a = 0
	read_args(message, charsmax(message))
	remove_quotes(message)

	switch (said[i])
	{
		case 'r': a = 1
		case 'g': a = 2
		case 'b': a = 3
		case 'y': a = 4
		case 'm': a = 5
		case 'c': a = 6
		case 'o': a = 7
	}

	new n, s = i
	if (a)
	{
		n++
		s++
	}
	while (said[s] && isspace(said[s]))
	{
		n++
		s++
	}


	new name[32]
	get_user_name(id, name, charsmax(name))

	if (++g_msgChannel > 6 || g_msgChannel < 3)
	{
		g_msgChannel = 3
	}

	new Float:verpos = g_Pos[i][1] + float(g_msgChannel) / 35.0
	set_hudmessage(g_Values[a][0], g_Values[a][1], g_Values[a][2], g_Pos[i][0], verpos, 0, 6.0, 6.0, 0.5, 0.15, -1)
	show_hudmessage(0, "%s :   %s", name, message[i + n])

	return PLUGIN_HANDLED
}

public cmdSayAdmin(id)
{
	new said[2]
	read_argv(1, said, charsmax(said))

	if (said[0] != '@')
		return PLUGIN_CONTINUE


	new message[192], name[32]
	new players[32], inum, pl

	read_args(message, charsmax(message))
	remove_quotes(message)

	get_user_name(id, name, charsmax(name))

	if (is_user_admin(id)) // no diff here if admins have g_AdminChatFlag access or not, but we don't want to print "PLAYER"
		format(message, charsmax(message), "^1[^4ADMINs^1/^4VIPs^1] ^3%s^1 :  %s", name, message[1])
	else
		format(message, charsmax(message), "^1(USER) %s :  %s", name, message[1])

	get_players(players, inum, "ch")

	for (new i = 0; i < inum; ++i)
	{
		pl = players[i]
		if (pl == id || get_user_flags(pl) & ADMIN_CHAT)
			ColorChat(id, RED, "%s", message)
	}

	return PLUGIN_HANDLED
}

public cmdChat(id)
{
	if (!access(id, ADMIN_CHAT))
		return PLUGIN_HANDLED

	new message[192]

	read_args(message, charsmax(message))
	remove_quotes(message)

	if (!message[0])
		return PLUGIN_HANDLED

	new name[32], players[32], inum, authid[32], userid, pl

	get_user_authid(id, authid, charsmax(authid))
	get_user_name(id, name, charsmax(name))
	userid = get_user_userid(id)
	get_players(players, inum, "ch")

	log_amx("Chat: ^"%s [%s]^" chat ^"%s^"", name, authid, message)
	log_message("^"%s [%s]^" triggered ^"amx_chat^" (text ^"%s^")", name, authid, message)

	format(message, charsmax(message), "(ADMINS) %s :   %s", name, message)
	console_print(id, "%s", message)

	for (new i = 0; i < inum; ++i)
	{
		pl = players[i]
		if (access(pl, ADMIN_CHAT))
			client_print(pl, print_chat, "%s", message)
	}

	return PLUGIN_HANDLED
}
/////////////////////////// ALL CHAT /////////////////////////////////

public col_changer( msg_id, msg_dest, rcvr )
{
	new str2[26]
	get_msg_arg_string( 2, str2, 25 )
	if( equal( str2, "#Cstrike_Chat", 13 ) )
	{
		new str3[22]
		get_msg_arg_string( 3, str3, 21 )

		if( !strlen( str3 ) )
		{
			new str4[101], reshetka;
			get_msg_arg_string( 4, str4, charsmax(str4) )
			// Fix #IME_ Client convert
			if(containi(str4, "#") != -1)
			{
				for(new i = 0; i <= strlen(str4); i++)
					if(str4[i] == '#') reshetka++;

				if (reshetka >= 5) return PLUGIN_CONTINUE;
			}

			new sndr = get_msg_arg_int( 1 )
			new bool:is_team_msg = !bool:equal( str2, "#Cstrike_Chat_All", 17 )

			new sndr_team = get_user_team( sndr )
			new bool:is_sndr_spec = !bool:( 0 < sndr_team < 3 )

			new bool:same_as_last = bool:( alv_sndr == sndr && equal( alv_str2, str2 ) && equal( alv_str4, str4) )

			if( !same_as_last )
			{//Duplicate message once
					if( !( is_team_msg && ( is_sndr_spec || is_team_msg ) ) )
					{//Don't duplicate if it's a spectator team message
						new flags[5], team[10]
						if( is_user_alive( sndr ) ) flags = "bch"
						else flags = "ach"

						if( is_team_msg )
						{
							add( flags[strlen( flags )], 4, "e" )
							if( sndr_team == 1 ) team = "TERRORIST"
							else team = "CT"
						}

						new players[32], num
						get_players( players, num, flags, team )

						if( get_user_flags( sndr ) & ADMIN_CFG )
							buildmsg( sndr, is_sndr_spec, is_team_msg, sndr_team, 0, 1, str4 ) //admin colored, by cvars
						else buildmsg( sndr, is_sndr_spec, is_team_msg, sndr_team, 0, 2, str4 ) //normal colors

						for( new i=0; i < num; i++ )
						{
							message_begin( MSG_ONE, get_user_msgid( "SayText" ), _, players[i] )
							write_byte( sndr )
							write_string( msg )
							message_end()
						}

					}

					alv_sndr = sndr
					alv_str2 = str2
					alv_str4 = str4
					if( task_exists( 411 ) ) remove_task( 411 )
					set_task( 0.1, "task_clear_antiloop_vars", 411 )
			}

			if( get_user_flags( sndr ) & ADMIN_CFG )
			{//execute if sndr is admin and cols are not set to engine defaults
				if( !same_as_last ) buildmsg( sndr, is_sndr_spec, is_team_msg, sndr_team, 0, 1, str4 )

				set_msg_arg_string( 2, msg )
				set_msg_arg_string( 4, "" )
			}
		}
	}

	return PLUGIN_CONTINUE
}

public buildmsg( sndr, is_sndr_spec, is_team_msg, sndr_team, namecol, msgcol, str4[ ] )
{
	new sndr_name[33]
	get_user_name( sndr, sndr_name, 32 )

	new prefix[30] = "^x01"

	if( is_sndr_spec ) prefix = "^x01[SPEC] "
	else if( !is_user_alive( sndr ) ) prefix = "^x01[DEAD] "

	if( is_team_msg )
	{
		if( is_sndr_spec ) prefix = "^x01[Spectator] "
		else if( sndr_team == 1 ) add( prefix[strlen(prefix)-1], 29, "[Terrorist] " )
		else if( sndr_team == 2 ) add( prefix[strlen(prefix)-1], 29, "[Counter-Terrorist] " )
	}

	format( msg, 199, "%s%s%s :  %s%s",	strlen( prefix ) > 1 ? prefix : "",	COLCHAR[namecol], sndr_name, COLCHAR[msgcol], str4 )
	return PLUGIN_HANDLED
}

public task_clear_antiloop_vars( )
{
	alv_sndr = 0
	alv_str2 = ""
	alv_str4 = ""
	return PLUGIN_HANDLED
}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Auto Join CT ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

public message_show_menu(msgid, dest, id) {
	if (!should_autojoin(id))
		return PLUGIN_CONTINUE

	static team_select[] = "#Team_Select"
	static menu_text_code[sizeof team_select]
	get_msg_arg_string(4, menu_text_code, sizeof menu_text_code - 1)
	if (!equal(menu_text_code, team_select))
		return PLUGIN_CONTINUE

	set_force_team_join_task(id, msgid)

	return PLUGIN_HANDLED
}

public message_vgui_menu(msgid, dest, id) {
	if (get_msg_arg_int(1) != 2 || !should_autojoin(id))
		return PLUGIN_CONTINUE

	set_force_team_join_task(id, msgid)

	return PLUGIN_HANDLED
}

bool:should_autojoin(id) {
	return (2 && !get_user_team(id) && !task_exists(id))
}

set_force_team_join_task(id, menu_msgid) {
	static param_menu_msgid[2]
	param_menu_msgid[0] = menu_msgid
	set_task(0.1, "task_force_team_join", id, param_menu_msgid, sizeof param_menu_msgid)
}

public task_force_team_join(menu_msgid[], id) {
	if (get_user_team(id))
		return

	force_team_join(id, menu_msgid[0])
}

stock force_team_join(id, menu_msgid, const team[] = "2", const class[] = "1") {
	static jointeam[] = "jointeam"
	if (class[0] == '0') {
		engclient_cmd(id, jointeam, team)
		return
	}

	static msg_block, joinclass[] = "joinclass"
	msg_block = get_msg_block(menu_msgid)
	set_msg_block(menu_msgid, BLOCK_SET)
	engclient_cmd(id, jointeam, team)
	engclient_cmd(id, joinclass, class)
	set_msg_block(menu_msgid, msg_block)
}