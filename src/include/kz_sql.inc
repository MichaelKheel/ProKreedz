#define ACCESS_H ADMIN_LEVEL_E
#define ACCESS_3 ADMIN_LEVEL_H
#define ACCESS_2 ADMIN_LEVEL_G
#define ACCESS_1 ADMIN_LEVEL_F
#define ACCESS_0 ADMIN_USER

new Handle:g_SqlTuple
new Handle:SqlConnection
new g_Error[512]

// Константы для Уровней VIP'а
new const LVL_1 = 500
new const LVL_2 = 800
new const LVL_3 = 1200
// MapID in kz_maps SQL Table
new kz_mapID
new kz_maptype[25]
new delete_entity

new MapName[64]
new weapon_name[33]
new Float:timer_time[33]
new Float:Update_timer[33]
// KZ TOP 15
new kz_hash[33]
new kz_pro1[33]
new kz_pro3[33]
new kz_nub1[33]
new kz_nub3[33]
new kzneed[33]
new kz_point[33]
new kz_steam[33]
new all_rank
// my time in top15
new Float:kz_my_protime[33]
new Float:kz_my_nubtime[33]
// Speclist
new SpecList[33] = { true, ... }
new SpecAdmImm[33]
// SQL Config
new InvisUser[33]
new InvisWater[33]
new full_Invisible[33]
new icons[33]
new TP_MODE[33]
new noTeleport[32]
new ShowTime[33]
new SaveCfgDate[33][40]
//new Gagged[33]
enum
{
	TOP_NULL,
	PRO_TOP,
	NUB_TOP,
	STATS_TOP,
	WeaponTop,
	PROGEN,
	LAST_PRO10,
	PRO_RECORDS,
	PLAYERS_RANKING,
	GENERAL_RANKING,
	MAPS_STATISTIC,
	PL_STATS,
	WR_PLAY,
	HELP
}

new const g_weaponsnames[][] =
{
	"", // NULL
	"p228", "shield", "scout", "250", "240", "250",
	"mac10", "240", "250", "250", "250",
	"250", "210", "240", "240", "250", "250",
	"210", "250", "220", "230", "230", "tmp", "210",
	"250", "250", "235", "221", "250", "245",
	"250",  "250", "fn57", "mp5", "vest", "vesthelm",
	"250", "hegren", "sgren", "defuser", "nvgs", "primammo",
	"secammo", "km45", "9x19mm", "nighthawk", "228compact",
	"12gauge", "autoshotgun", "mp", "c90", "cv47", "defender",
	"clarion", "krieg552", "bullpup", "magnum", "d3au1",
	"krieg550"
}

new const other_weapons_name[8][] =
{
	"weapon_p90", "weapon_famas", "weapon_sg552", "weapon_awp",
	"weapon_m4a1", "weapon_m249", "weapon_ak47", "weapon_awp"
}

public plugin_sql()
{
	new ErrorCode
	SqlConnection = SQL_Connect(g_SqlTuple,ErrorCode,g_Error,511)

	if(!SqlConnection)
	{
		server_print("[KZ] Could not connect to SQL database.!")
		return pause("a")
	}

	QueryInstallTable();

	return PLUGIN_CONTINUE
}

public QueryHandle(iFailState, Handle:hQuery, szError[], iErrnum, cData[], iSize, Float:fQueueTime)
{
	if( iFailState != TQUERY_SUCCESS )
	{
		log_amx("[KZ] TOP15 SQL: SQL Error #%d - %s", iErrnum, szError)
		ColorChat(0, GREEN,  "$s ^x01 Error mySQL connect", prefix)
	}
	else if( iFailState == TQUERY_QUERY_FAILED )
	{
		set_fail_state("Query failed.");
	}

	SQL_FreeHandle(hQuery)
	return PLUGIN_CONTINUE
}

public QueryInstallTable()
{
	new CreateInto[1001];

	formatex(CreateInto, 1000, "CREATE TABLE IF NOT EXISTS `kz_config` (`id` int(11) NOT NULL AUTO_INCREMENT,`authid` varchar(32) NOT NULL,`timer` int(2) NOT NULL DEFAULT '1',`invisU` int(2) NOT NULL DEFAULT '0',`invisW` int(2) NOT NULL DEFAULT '0',`invisF` int(2) NOT NULL DEFAULT '0',`bt` int(2) NOT NULL DEFAULT '0',`icon` int(2) NOT NULL DEFAULT '1',`cp` int(2) NOT NULL DEFAULT '0',`sl` int(2) NOT NULL DEFAULT '1',`sa` int(2) NOT NULL DEFAULT '0', `date` datetime NOT NULL, PRIMARY KEY (`id`))");
	SQL_ThreadQuery(g_SqlTuple, "QueryHandle", CreateInto);

	formatex(CreateInto, 1000, "CREATE TABLE IF NOT EXISTS `kz_top15` (`hash` DECIMAL(5,0) NOT NULL,`name` VARCHAR(64) NOT NULL COLLATE 'latin1_swedish_ci',`authid` VARCHAR(64) NOT NULL COLLATE 'latin1_swedish_ci',`pro1` DECIMAL(5,0) NOT NULL,`pro3` DECIMAL(5,0) NOT NULL,`nub1` DECIMAL(5,0) NOT NULL,`nub3` DECIMAL(5,0) NOT NULL,`point` DECIMAL(5,0) NOT NULL)");
	SQL_ThreadQuery(g_SqlTuple, "QueryHandle", CreateInto);

	formatex(CreateInto, 1000, "CREATE TABLE IF NOT EXISTS `kz_savepos` (`map_id` INT(10) NOT NULL,`authid` VARCHAR(64) NOT NULL COLLATE 'utf8_general_ci',`time` DECIMAL(65,2) NOT NULL,`x` INT(15) NOT NULL,`y` INT(15) NOT NULL,`z` INT(15) NOT NULL,`x_vel` INT(15) NOT NULL,`y_vel` INT(15) NOT NULL,`z_vel` INT(15) NOT NULL,`weapon` INT(5) NOT NULL,`cp` DOUBLE(22,0) NOT NULL,`tp` DOUBLE(22,0) NOT NULL,`hp` INT(10) NOT NULL,`date` DATETIME NOT NULL)");
	SQL_ThreadQuery(g_SqlTuple, "QueryHandle", CreateInto);

	formatex(CreateInto, 1000, "CREATE TABLE IF NOT EXISTS `kz_pro15` (`map_id` INT(10) NOT NULL,`mapname` VARCHAR(64) NOT NULL COLLATE 'utf8_general_ci',`authid` VARCHAR(64) NOT NULL COLLATE 'utf8_general_ci',`name` VARCHAR(64) NOT NULL COLLATE 'utf8_general_ci',`time` DECIMAL(65,2) NOT NULL,`date` DATETIME NOT NULL)");
	SQL_ThreadQuery(g_SqlTuple, "QueryHandle", CreateInto);

	formatex(CreateInto, 1000, "CREATE TABLE IF NOT EXISTS `kz_nub15` (`map_id` INT(10) NOT NULL,`mapname` VARCHAR(64) NOT NULL COLLATE 'utf8_general_ci',`authid` VARCHAR(64) NOT NULL COLLATE 'utf8_general_ci',`name` VARCHAR(64) NOT NULL COLLATE 'utf8_general_ci',`time` DECIMAL(65,2) NOT NULL,`date` DATETIME NOT NULL,`checkpoints` DOUBLE(22,0) NOT NULL,`gocheck` DOUBLE(22,0) NOT NULL)");
	SQL_ThreadQuery(g_SqlTuple, "QueryHandle", CreateInto);

	formatex(CreateInto, 1000, "CREATE TABLE IF NOT EXISTS `kz_maps` (`id` INT(11) NOT NULL AUTO_INCREMENT,`mapname` VARCHAR(64) NOT NULL COLLATE 'utf8_general_ci',`type` VARCHAR(64) NULL COLLATE 'utf8_general_ci',`challenge` INT(3) NOT NULL DEFAULT '0',`entity` INT(2) NOT NULL DEFAULT '1',`start` VARCHAR(50) NULL COLLATE 'utf8_general_ci',`finish` VARCHAR(50) NULL COLLATE 'utf8_general_ci',PRIMARY KEY (`id`))");
	SQL_ThreadQuery(g_SqlTuple, "QueryHandle", CreateInto);
}

/*public SQL_Maplist()
{
	new mapname[64]
    new dirh = open_dir("maps", mapname, 63) // открывает дерикторию
	// Проверка, есть ли дериктория
    if(!dirh) {
    	server_print("Dir 'maps' isn't exists")
    	return PLUGIN_HANDLED
    }
    // Цикл с переборкой карт
    while(next_file(dirh, mapname, 63))
    {
    	if(mapname[0] != '.')
    	{
    		new left[64], right[64]
         strtok(mapname, left, 63, right, 63, '.') // Уберает из названия карты, символы после <" . ">

            if(equali(right, "bsp")) // Условия сравнения файла на наличие bsp
            {
            	new query[256]
            	format(query,charsmax(query),"SELECT * FROM `kz_maps` WHERE mapname='%s'", left)
            	SQL_ThreadQuery(g_SqlTuple, "SQL_Maplist_Query", query, left, 64)
            }
         }
      }

      close_dir(dirh)
      server_print("[KZ_SQL] Maps add successful")

      return PLUGIN_HANDLED
}

public SQL_Maplist_Query(iFailState, Handle:hQuery, szError[], iErrnum, cData[], iSize, Float:fQueueTime)
{
	if( iFailState != TQUERY_SUCCESS )
        return log_amx("KZ ERROR: #%d - %s", iErrnum, szError)

	if (!SQL_NumResults(hQuery)) // Если нету карты в базе, то добавляет её.
		SQL_QueryAndIgnore(SqlConnection, "INSERT INTO `kz_maps` (`mapname`) VALUES ('%s');", cData)

    SQL_FreeHandle(hQuery)

    return PLUGIN_HANDLED
}*/

public SQL_MapID()
{
	new s_Error[128], startposition[64], finishposition[64], p_start[3][64], p_finish[3][64]
	new Handle:h_Query = SQL_PrepareQuery(SqlConnection, "SELECT * FROM `kz_maps` WHERE mapname='%s'", MapName)
	new Handle:h_Query2 = SQL_PrepareQuery(SqlConnection, "SELECT * FROM kz_top15")

	if(SQL_Execute(h_Query2))
		all_rank = SQL_NumResults(h_Query2)

	if(!SQL_Execute(h_Query))
	{
		SQL_QueryError(h_Query, s_Error, charsmax(s_Error));
	}
	else
	{
		new mapid = SQL_FieldNameToNum(h_Query, "id")
		new type = SQL_FieldNameToNum(h_Query, "type")
		new delentity = SQL_FieldNameToNum(h_Query, "entity")
		new start = SQL_FieldNameToNum(h_Query, "start")
		new finish = SQL_FieldNameToNum(h_Query, "finish")

		while( SQL_MoreResults(h_Query) )
		{
			kz_mapID = SQL_ReadResult(h_Query, mapid)
			SQL_ReadResult(h_Query, type, kz_maptype, charsmax(kz_maptype))
			delete_entity = SQL_ReadResult(h_Query, delentity)
			SQL_ReadResult(h_Query, start, startposition, charsmax(startposition))
			SQL_ReadResult(h_Query, finish, finishposition, charsmax(finishposition))
			SQL_NextRow(h_Query)
		}
	}

	if(!equali(startposition, ""))
	{
		strtok(startposition, p_start[0], charsmax(p_start[]), startposition, charsmax(startposition), ' ', true)
		strtok(startposition, p_start[1], charsmax(p_start[]), startposition, charsmax(startposition), ' ', true)
		strtok(startposition, p_start[2], charsmax(p_start[]), startposition, charsmax(startposition), ' ', true)
		DefaultStartPos[0] = str_to_float(p_start[0]);
		DefaultStartPos[1] = str_to_float(p_start[1]);
		DefaultStartPos[2] = str_to_float(p_start[2]);
		Default_SF[0] = true;
	}
	else
		Default_SF[0] = false;

	if(!equali(finishposition, ""))
	{
		strtok(finishposition, p_finish[0], charsmax(p_finish[]), finishposition, charsmax(finishposition), ' ', true)
		strtok(finishposition, p_finish[1], charsmax(p_finish[]), finishposition, charsmax(finishposition), ' ', true)
		strtok(finishposition, p_finish[2], charsmax(p_finish[]), finishposition, charsmax(finishposition), ' ', true)
		DefaultFinishPos[0] = str_to_float(p_finish[0]);
		DefaultFinishPos[1] = str_to_float(p_finish[1]);
		DefaultFinishPos[2] = str_to_float(p_finish[2]);
		Default_SF[1] = true;
	}
	else
		Default_SF[1] = false;

	if(equali(kz_maptype, "axn")) mapIsAXN = true;
	if(equali(kz_maptype, "slide")) mapIsSlide = true;
	if(equali(kz_maptype, "gravity")) mapIsGravity = true;
	if(equali(kz_maptype, "")) kz_maptype = "n/a";

	if (delete_entity)
	{
		for(new i = 0; i < sizeof(g_remove_ent); i++)
			sx_remove_entity(g_remove_ent[i], "classname", 0, "")
	}

	if(!kz_mapID)
	{
		SQL_QueryAndIgnore(SqlConnection, "INSERT INTO `kz_maps` (`mapname`) VALUES ('%s');", MapName);
	}

	SQL_FreeHandle(h_Query)
	SQL_FreeHandle(h_Query2)

	server_print("[KZ_SQL] ID Map = %d", kz_mapID)
	server_print("[KZ_SQL] Type map = %s", kz_maptype)
	server_print("[KZ_SQL] All rank = %d", all_rank)

	return PLUGIN_HANDLED
}

public SQL_StartFinish(bool:L, Float:position[3])
{
	if(L) Default_SF[0] = true;
	else Default_SF[1] = true;

	new createinto[1001]
	formatex(createinto, sizeof createinto - 1, "UPDATE `kz_maps` SET `%s` = '%f %f %f' WHERE (`id` = '%d')", (L ? "start":"finish"), position[0], position[1], position[2], kz_mapID)
	SQL_ThreadQuery(g_SqlTuple, "SQL_WorkHandle", createinto)
}

public SQL_StatsAdd(iFailState, Handle:hQuery, szError[], iErrnum, cData[], iSize, Float:fQueueTime)
{
	new id = cData[0]
	new style = cData[1]
	new Float:time = Update_timer[id];
	new check = cData[3]
	new gocheck = cData[4]
	if( iFailState != TQUERY_SUCCESS )
	{
		log_amx("[KZ] TOP15 SQL: SQL Error #%d - %s", iErrnum, szError)
		ColorChat(0, GREEN,  "%s^x01 %F", prefix, LANG_PLAYER, "KZ_TOP15_SQL_ERROR")
	}
	new checkpoints[32], gochecks[32]
	new createinto[1001]
   	new name[32], recdata[64]
	get_user_name(id, name, 31)
	get_time("%Y%m%d%H%M%S", recdata, sizeof recdata - 1)
	new wpn = get_user_weapon( id )
	replace_all(name, 31, "'", "")

	new bool:user_weapon = false;
	new weapon = get_user_weapon(id)
	get_weaponname(weapon, weapon_name, charsmax(weapon_name))

	for(new i = 0; i < 8; i++)
	{
		if(equali(other_weapons_name[i], weapon_name))
		{
			user_weapon = true;
		}
	}

		if (SQL_NumResults(hQuery) == 0)
		{
			formatex(checkpoints, 31, ", '%d'", check)
			formatex(gochecks, 31, ", '%d'", gocheck)

			if (user_weapon && get_pcvar_num(sv_airaccelerate) == 10)
			{
				formatex( createinto, sizeof createinto - 1, "INSERT INTO `%s` VALUES ('%d', '%s', '%s', '%s', '%s', '%f', '%s'%s%s)", style == PRO_TOP ? "kz_weapon_pro" : "kz_weapon_nub", kz_mapID, MapName, g_weaponsnames[wpn], kz_authid[id], name, time, recdata, style == PRO_TOP ? "" : checkpoints, style == PRO_TOP ? "" : gochecks);
				SQL_ThreadQuery(g_SqlTuple, "QueryHandle", createinto )
				GetNewRank(id, style, true)
			}
			else
			{
				formatex( createinto, sizeof createinto - 1, "INSERT INTO `%s%s` VALUES ('%d', '%s', '%s', '%s', '%f', '%s'%s%s)", style == PRO_TOP ? "kz_pro15" : "kz_nub15", get_pcvar_num(sv_airaccelerate) == 100 ? "_100aa" : "", kz_mapID, MapName, kz_authid[id], name, time, recdata, style == PRO_TOP ? "" : checkpoints, style == PRO_TOP ? "" : gochecks);
				SQL_ThreadQuery(g_SqlTuple, "QueryHandle", createinto )
				GetNewRank(id, style, false)
			}
		}
		else
		{
			new Float:oldtime, Float:thetime
			SQL_ReadResult(hQuery, 0, oldtime)

			if(time < oldtime)
			{
				formatex(checkpoints, 31, ", checkpoints='%d'", check)
				formatex(gochecks, 31, ", gocheck='%d'", gocheck)
				thetime = oldtime - time

				show_finish_message(id, thetime, false, true) // Сообщение, если рекорд поставлен и время на сколько быстрее.

				if (user_weapon && get_pcvar_num(sv_airaccelerate) == 10)
				{
					formatex(createinto, sizeof createinto - 1, "UPDATE `%s` SET time='%f', date='%s' %s%s WHERE map_id='%d' AND weapon='%s' AND authid='%s'", style == PRO_TOP ? "kz_weapon_pro" : "kz_weapon_nub", time, recdata, style == PRO_TOP ? "" : checkpoints, style == PRO_TOP ? "" : gochecks, kz_mapID, g_weaponsnames[wpn], kz_authid[id])
					SQL_ThreadQuery(g_SqlTuple, "QueryHandle", createinto )
					GetNewRank(id, style, true)
				}
				else
				{
					formatex(createinto, sizeof createinto - 1, "UPDATE `%s%s` SET time='%f', date='%s' %s%s WHERE map_id='%d' AND authid='%s'", style == PRO_TOP ? "kz_pro15" : "kz_nub15", get_pcvar_num(sv_airaccelerate) == 100 ? "_100aa" : "", time, recdata, style == PRO_TOP ? "" : checkpoints, style == PRO_TOP ? "" : gochecks, kz_mapID, kz_authid[id])
					SQL_ThreadQuery(g_SqlTuple, "QueryHandle", createinto )
					GetNewRank(id, style, false)
				}
			}
			else
			{
				thetime = time - oldtime
				show_finish_message(id, thetime, false, false) // Сообщение, если новый рекорд не поставлен
			}
		}

        return PLUGIN_HANDLED
}

stock GetNewRank(id, type, bool:user_weapon)
{
	new createinto[1000];

	new cData[2]
	cData[0] = id
	cData[1] = type
	new wpn = get_user_weapon( id )

	if (user_weapon && get_pcvar_num(sv_airaccelerate) == 10)
		formatex(createinto, charsmax(createinto), "SELECT authid FROM `%s` WHERE map_id='%d' AND weapon='%s' ORDER BY time", type == PRO_TOP ? "kz_weapon_pro" : "kz_weapon_nub", kz_mapID, g_weaponsnames[wpn])
	else
		formatex(createinto, charsmax(createinto), "SELECT authid FROM `%s%s` WHERE map_id='%d' ORDER BY time", type == PRO_TOP ? "kz_pro15" : "kz_nub15", get_pcvar_num(sv_airaccelerate) == 100 ? "_100aa" : "", kz_mapID)

	SQL_ThreadQuery(g_SqlTuple, "GetNewRank_QueryHandler", createinto, cData, 2)
}

public GetNewRank_QueryHandler(iFailState, Handle:hQuery, szError[], iErrnum, cData[], iSize, Float:fQueueTime)
{
	new id = cData[0]
	if( iFailState != TQUERY_SUCCESS )
	{
		return log_amx("TOP15 SQL: SQL Error #%d - %s", iErrnum, szError)
	}

	new authid[32], namez[32], i = 0
	get_user_name(id, namez, 31)

	new bool:user_weapon = false;
	new weapon = get_user_weapon(id)
	get_weaponname(weapon, weapon_name, charsmax(weapon_name))

	for(new i = 0; i < 8; i++)
	{
		if(equali(other_weapons_name[i], weapon_name))
		{
			user_weapon = true;
		}
	}

	while( SQL_MoreResults(hQuery) )
	{
		i++
		SQL_ReadResult(hQuery, 0, authid, 31)
			if( equal(authid, kz_authid[id]) )
			{
				if (user_weapon)
					ColorChat(0, RED,  "^x04%s^x03 %s^x04 is now ^x03%d^x04 in^x03 %s^x04",prefix, namez, i, cData[1] == PRO_TOP ? "Professional Weapon Top" : "General Weapon Top");
				else
					ColorChat(0, RED,  "^x04%s^x03 %s^x04 is now ^x03%d^x04 in^x03 %s^x04",prefix, namez, i, cData[1] == PRO_TOP ? "Professional Top" : "General Top");

				if( i == 1)
				{
					if (user_weapon) {
						//emit_sound(0, CHAN_VOICE, "kzvc.wav", VOL_NORM, ATTN_NORM, 0, PITCH_NORM)

					} else {
						if (cData[1] == PRO_TOP && !Savepos_activated[id])
							ClCmd_UpdateReplay(id, Update_timer[id])

						emit_sound(0, CHAN_VOICE, "kzvc.wav", VOL_NORM, ATTN_NORM, 0, PITCH_NORM)
					}
				}
				break;
			}
		SQL_NextRow(hQuery)
	}

	SQL_FreeHandle(hQuery)
	return PLUGIN_CONTINUE
}

public mytime(id, type)
{
	new createinto[256], cData[2]
	cData[0] = id
	cData[1] = type
	formatex(createinto, sizeof createinto - 1, "SELECT * FROM %s%s WHERE map_id='%d' AND authid='%s'", type == PRO_TOP ? "kz_pro15" : "kz_nub15", get_pcvar_num(sv_airaccelerate) == 100 ? "_100aa" : "", kz_mapID, kz_authid[id])
	SQL_ThreadQuery(g_SqlTuple, "SQL_MyTimeHandle", createinto, cData, 2)
}

public SQL_MyTimeHandle(failstate, Handle:hQuery, error[], errcode, cData[], iSize, Float:fQueueTime)
{
	new id = cData[0]
	new type = cData[1]
	if( failstate == TQUERY_CONNECT_FAILED )
	{
		set_fail_state("Could not connect to database.");
	}
	else if( failstate == TQUERY_QUERY_FAILED )
	{
		set_fail_state("Query failed.");
	}
	else if( errcode )
	{
		log_amx("Error on query: %s", error);
	}
	else
	{
		if(SQL_NumResults(hQuery))
		{
			if (type == PRO_TOP)
				SQL_ReadResult(hQuery, 4, kz_my_protime[id])
			else
				SQL_ReadResult(hQuery, 4, kz_my_nubtime[id])
		}
		else
		{
			if (type == PRO_TOP)
				kz_my_protime[id] = 0.0
			else
				kz_my_nubtime[id] = 0.0
		}
	}

	SQL_FreeHandle(hQuery)
}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ KZ Profile ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
public SQL_profile(id)
{
	new createinto[128], cData[1]
	cData[0] = id
	formatex(createinto, sizeof createinto - 1, "SELECT * FROM kz_top15 WHERE authid='%s'", kz_authid[id])
	SQL_ThreadQuery(g_SqlTuple, "SQL_profileHandle", createinto, cData, 1)
}

public SQL_profileHandle(failstate, Handle:hQuery, error[], errcode, cData[], iSize, Float:fQueueTime)
{
	new id = cData[0]

	if( failstate == TQUERY_CONNECT_FAILED )
	{
		set_fail_state("Could not connect to database.");
	}
	else if( failstate == TQUERY_QUERY_FAILED )
	{
		set_fail_state("Query failed.");
	}
	else if( errcode )
	{
		log_amx("Error on query: %s", error);
	}
	else
	{
		if(SQL_NumResults(hQuery))
		{
			kz_hash[id] = SQL_ReadResult(hQuery, 0)
			kz_point[id] = SQL_ReadResult(hQuery, 7)
			kz_pro1[id] = SQL_ReadResult(hQuery, 3)
			kz_pro3[id] = SQL_ReadResult(hQuery, 4)
			kz_nub1[id] = SQL_ReadResult(hQuery, 5)
			kz_nub3[id] = SQL_ReadResult(hQuery, 6)
			SQL_ReadResult(hQuery, 2, kz_steam[id], charsmax(kz_steam))
			FirstMsgProfile(id, true)
		}
		else
		{
			kz_hash[id] = 0
			kz_point[id] = 0
			kz_pro1[id] = 0
			kz_pro3[id] = 0
			kz_nub1[id] = 0
			kz_nub3[id] = 0
			FirstMsgProfile(id, false)
		}
	}
	SQL_FreeHandle(hQuery)
}

public kz_profile(id)
{
	new menu[1280], len, vip_status[59],vip_add[59],kz_lvl[64]

	if(kz_point[id] < LVL_1) {
		kzneed[id] = LVL_1 - kz_point[id];
		kz_lvl = "User";
	} else
	if(kz_point[id] <= LVL_2) {
		kzneed[id] = LVL_2 - kz_point[id];
		kz_lvl = "VIP LVL 1";
	} else
	if(kz_point[id] <= LVL_3) {
		kzneed[id] = LVL_3 - kz_point[id];
		kz_lvl = "VIP LVL 2";
	} else {
		kz_lvl = "VIP LVL 3";
	}

	if( get_user_flags(id) & ADMIN_IMMUNITY ) {
		format(vip_status, 58, "\r%s", VIP_ACCESS(id))
		format(vip_add, 58, "\dYou have the admin.")
	} else if( get_user_flags(id) & ACCESS_3 && kz_point[id] >= LVL_3 ) {
		format(vip_status, 58, "\r%s \d(final)", kz_lvl)
		format(vip_add, 58, "\dYou have a maximum VIP LVL.")
	} else if (kz_point[id] >= LVL_1){
		format(vip_status, 58, "%s \d(need \r%d\d for next level)", kz_lvl, kzneed[id])
		if (kz_point[id] <= LVL_2 && (get_user_flags(id) & ACCESS_1) && !(get_user_flags(id) & ACCESS_2) && !(get_user_flags(id) & ACCESS_3)){
			format(vip_add, 58, "\dAdd VIP LVL 2 privileges.")
		} else if (kz_point[id] <= LVL_3 && !(get_user_flags(id) & ACCESS_1) && (get_user_flags(id) & ACCESS_2) && !(get_user_flags(id) & ACCESS_3)){
			format(vip_add, 58, "\dAdd VIP LVL 3 privileges.")
		} else {
			format(vip_add, 58, "\wAdd \r%s\w privileges.", kz_lvl)
		}
	} else {
		format(vip_status, 58, "%s \d(need \r%d\d for next level)", kz_lvl, kzneed[id])
		format(vip_add, 58, "\dTo become a VIP you need more points.")
	}

	len += format(menu[len], 1279-len, "\yCC Rank:\w #%d / #%d^n", kz_hash[id], all_rank)
	len += format(menu[len], 1279-len, "\yPoints:\w %d^n", kz_point[id])
	len += format(menu[len], 1279-len, "\yAccess:\w %s^n^n", vip_status)
	len += format(menu[len], 1279-len, "\yPro Records:\w %d^n", kz_pro1[id])
	len += format(menu[len], 1279-len, "\yPro top 1,2,3 Records:\w %d^n^n", kz_pro3[id])
	len += format(menu[len], 1279-len, "\yGeneral Records:\w %d^n", kz_nub1[id])
	len += format(menu[len], 1279-len, "\yGeneral top 1,2,3 Records:\w %d^n^n", kz_nub3[id])

	format(menu[len], 1279-len, "\r1. %s^n\r2. Update stats^n^n\r0.\w Back to Main menu", vip_add)
	show_menu(id, (1<<0)|(1<<1)|(1<<2)|(1<<9), menu, -1, "KZ Profile")

	return PLUGIN_HANDLED
}

public kz_profileHandle(id, key) {

	switch(key) {
		case 0:{
			if( !(get_user_flags(id) & ADMIN_IMMUNITY)) {
				new s_Name[32]
				get_user_name(id, s_Name, charsmax(s_Name))
				if(kz_point[id] >= LVL_1 && !(get_user_flags(id) & ACCESS_1) && !(get_user_flags(id) & ACCESS_2) && !(get_user_flags(id) & ACCESS_3)) {
					server_cmd("kz_addvip ^"%s^" bhir",kz_steam[id])
					set_hudmessage(245, 190, 35, -1.0, -1.0, 1, 0.2, 7.0, 1.0, 1.0, -1)
					show_hudmessage(0, "Congratulations to %s to give VIP Level 1", s_Name)
					client_cmd(0, "speak misc/woohoo")
				} else
				if(kz_point[id] >= LVL_2 && (get_user_flags(id) & ACCESS_1) && !(get_user_flags(id) & ACCESS_2) && !(get_user_flags(id) & ACCESS_3)) {
					server_cmd("kz_addvip ^"%s^" behijs",kz_steam[id])
					set_hudmessage(245, 190, 35, -1.0, -1.0, 1, 0.2, 7.0, 1.0, 1.0, -1)
					show_hudmessage(0, "Congratulations to %s to give VIP Level 2", s_Name)
					client_cmd(0, "speak misc/woohoo")
				} else
				if(kz_point[id] >= LVL_3 && !(get_user_flags(id) & ACCESS_1) && (get_user_flags(id) & ACCESS_2) && !(get_user_flags(id) & ACCESS_3)) {
					server_cmd("kz_addvip ^"%s^" bcefhijt",kz_steam[id])
					set_hudmessage(245, 190, 35, -1.0, -1.0, 1, 0.2, 7.0, 1.0, 1.0, -1)
					show_hudmessage(0, "Congratulations to %s to give VIP Level 3", s_Name)
					client_cmd(0, "speak misc/woohoo")
				} else {
					kz_profile(id)
				}
			}
		}
		case 1: {
			SQL_profile(id)
		}
		case 9:{
			top15menu(id)
		}
	}
}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ SQL CFG ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
public SQL_Config(id)
{
	new createinto[128], cData[1]
	cData[0] = id
	formatex(createinto, sizeof createinto - 1, "SELECT * FROM kz_config WHERE authid='%s'", kz_authid[id])
	SQL_ThreadQuery(g_SqlTuple, "SQL_ConfigHandle", createinto, cData, 1)
}

public SQL_ConfigHandle(failstate, Handle:hQuery, error[], errcode, cData[], iSize, Float:fQueueTime)
{
	new id = cData[0]

	if( failstate == TQUERY_CONNECT_FAILED )
	{
		set_fail_state("Could not connect to database.");
	}
	else if( failstate == TQUERY_QUERY_FAILED )
	{
		set_fail_state("Query failed.");
	}
	else if( errcode )
	{
		log_amx("Error on query: %s", error);
	}
	else
	{
		if(SQL_NumResults(hQuery))
		{
			ShowTime[id] = SQL_ReadResult(hQuery, 2)
			InvisUser[id] = SQL_ReadResult(hQuery, 3)
			InvisWater[id] = SQL_ReadResult(hQuery, 4)
			full_Invisible[id] = SQL_ReadResult(hQuery, 5)
			noTeleport[id] = SQL_ReadResult(hQuery, 6)
			icons[id] = SQL_ReadResult(hQuery, 7)
			TP_MODE[id] = SQL_ReadResult(hQuery, 8)
			SpecList[id] = SQL_ReadResult(hQuery, 9)
			SpecAdmImm[id] = SQL_ReadResult(hQuery, 10)
			SQL_ReadResult(hQuery, 11, SaveCfgDate[id], charsmax(SaveCfgDate))
		}
		else
		{
			InvisUser[id] = 0
			InvisWater[id] = 0
			full_Invisible[id] = 0
			noTeleport[id] = 0
			icons[id] = 1
			TP_MODE[id] = 0
			SpecList[id] = 1
			SpecAdmImm[id] = 0
			ShowTime[id] = 1
			//Gagged[id] = 0;
		}
	}

	SQL_FreeHandle(hQuery)
}


public SQL_ConfigSave(id)
{
	new createinto[128], cData[1]
	cData[0] = id
	formatex(createinto, sizeof createinto - 1, "SELECT * FROM kz_config WHERE authid='%s'", kz_authid[id]);
	SQL_ThreadQuery(g_SqlTuple, "SQL_ConfigSaveHandle", createinto, cData, 1);
}

public SQL_ConfigSaveHandle(failstate, Handle:hQuery, error[], errcode, cData[], iSize, Float:fQueueTime)
{
	new id = cData[0]
	new nowdate[40];
	get_time("%Y-%m-%d %H:%M:%S", nowdate, sizeof nowdate - 1)
	SaveCfgDate[id] = nowdate;

	if( failstate == TQUERY_CONNECT_FAILED )
	{
		set_fail_state("Could not connect to database.");
	}
	else if( failstate == TQUERY_QUERY_FAILED )
	{
		set_fail_state("Query failed.");
	}
	else if( errcode )
	{
		log_amx("Error on query: %s", error);
	}
	else
	{
		if(SQL_NumResults(hQuery))
		{
			new createinto[1001];
			formatex(createinto, sizeof createinto - 1, "UPDATE `kz_config` SET `timer` = '%d',`invisU` = '%d',`invisW` = '%d',`invisF` = '%d',`bt` = '%d',`icon` = '%d',`cp` = '%d',`sl` = '%d',`sa` = '%d', `date` = '%s' WHERE (`authid` = '%s')", ShowTime[id], InvisUser[id], InvisWater[id], full_Invisible[id], noTeleport[id], icons[id], TP_MODE[id], SpecList[id], SpecAdmImm[id], SaveCfgDate[id], kz_authid[id]);
			SQL_ThreadQuery(g_SqlTuple, "SQL_WorkHandle", createinto);
			ColorChat(id, BLUE, "^x01%s^x03 The config was saved successfully.", prefix)
		}
		else
		{
			new createinto[1001];
			formatex(createinto, sizeof createinto - 1, "INSERT INTO `kz_config` VALUES (null, '%s', '%d', '%d', '%d', '%d', '%d', '%d', '%d', '%d', '%d', '%s')", kz_authid[id], ShowTime[id], InvisUser[id], InvisWater[id], full_Invisible[id], noTeleport[id], icons[id], TP_MODE[id], SpecList[id], SpecAdmImm[id], SaveCfgDate[id]);
			SQL_ThreadQuery(g_SqlTuple, "SQL_WorkHandle", createinto);
			ColorChat(id, BLUE, "^x01%s^x03 The config was saved successfully.", prefix)
		}
	}

	SQL_FreeHandle(hQuery)
}

public SQL_WorkHandle(failstate, Handle:hQuery, error[], errcode, cData[], iSize, Float:fQueueTime)
{
	if( failstate == TQUERY_CONNECT_FAILED )
	{
		set_fail_state("Could not connect to database.");
	}
	else if( failstate == TQUERY_QUERY_FAILED )
	{
		set_fail_state("Query failed.");
	}
	else if( errcode )
	{
		log_amx("Error on query: %s", error);
	}
	else
	{
		// Nice SQL !!!
	}

	SQL_FreeHandle(hQuery)
}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ SAVE POSITION ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

public SQL_Check_Savepos(id)
{
	Savepos_have[id] = true;
	new createinto[128], cData[1]
	cData[0] = id
	formatex(createinto, sizeof createinto - 1, "SELECT * FROM kz_savepos%s WHERE map_id='%d' AND authid='%s'", get_pcvar_num(sv_airaccelerate) == 100 ? "_100aa" : "", kz_mapID, kz_authid[id])
	SQL_ThreadQuery(g_SqlTuple, "SQL_SaveposHandle", createinto, cData, 1)
}

public SQL_SaveposHandle(failstate, Handle:hQuery, error[], errcode, cData[], iSize, Float:fQueueTime)
{
	new id = cData[0]

	if( failstate == TQUERY_CONNECT_FAILED )
	{
		set_fail_state("Could not connect to database.");
	}
	else if( failstate == TQUERY_QUERY_FAILED )
	{
		set_fail_state("Query failed.");
	}
	else if( errcode )
	{
		log_amx("Error on query: %s", error);
	}
	else
	{
		if(SQL_NumResults(hQuery))
		{
			SQL_ReadResult(hQuery, 2, SavedTime[id])
			SavedWeapon[id] = SQL_ReadResult(hQuery, 9)
			SavedChecks[id] = SQL_ReadResult(hQuery, 10)
			SavedGoChecks[id] = SQL_ReadResult(hQuery, 11)
			SavedHp[id] = SQL_ReadResult(hQuery, 12)
			// Координаты в трехмерной плоскости
			SavedOrigins[id][0] = SQL_ReadResult(hQuery, 3)
			SavedOrigins[id][1] = SQL_ReadResult(hQuery, 4)
			SavedOrigins[id][2] = SQL_ReadResult(hQuery, 5)
			SavedVelocity[id][0] = SQL_ReadResult(hQuery, 6)
			SavedVelocity[id][1] = SQL_ReadResult(hQuery, 7)
			SavedVelocity[id][2] = SQL_ReadResult(hQuery, 8)
			SQL_ReadResult(hQuery, 13, SavedDate[id], charsmax(SavedDate))

			StringTimer(SavedTime[id], SavedTimeConvert[id], sizeof(SavedTimeConvert) - 1);
			Savepos_have[id] = true;

			SQL_Savepos_menu(id)
		}
		else
		{
			Savepos_have[id] = false;
		}
	}

	SQL_FreeHandle(hQuery)
}

public SQL_Savepos(id)
{
	if( !is_user_alive(id) || !timer_started[id] || is_user_bot(id) )	return PLUGIN_HANDLED;

	if(get_user_noclip(id))
		Pause(id)

	new entclassname[33];
	pev(pev(id, pev_groundentity), pev_classname, entclassname, 32);

	if(equal(entclassname, "func_door")) return PLUGIN_HANDLED

	//if( !( pev( id, pev_flags ) & FL_ONGROUND ))

	new Float:Time,check,gocheck
	new save_data[64], createinto[512]

	new Float:origin[3], Float:velocity[3]
	pev(id, pev_origin, origin)
	pev(id, pev_velocity, velocity)

	if(IsPaused[id])
	{
		Time = g_pausetime[id]
		Pause(id)
	}
	else
		Time=get_gametime() - timer_time[id]

	if(Time < 60.0) return PLUGIN_HANDLED;

	check=checknumbers[id]
	gocheck=gochecknumbers[id]
	new wpn = get_user_weapon( id )
	new hp = get_user_health(id)
	get_time("%Y%m%d%H%M%S", save_data, sizeof save_data - 1)

	formatex(createinto, sizeof createinto - 1, "REPLACE INTO `kz_savepos%s` (`map_id`, `authid`, `time`, `x`, `y`, `z`, x_vel, y_vel, z_vel, `weapon`, `cp`, `tp`, `hp`, `date`) VALUES ('%d', '%s', '%f', '%d', '%d', '%d', '%d', '%d', '%d', '%s', '%d', '%d', '%d', '%s');", get_pcvar_num(sv_airaccelerate) == 100 ? "_100aa" : "", kz_mapID, kz_authid[id], Time, origin[0], origin[1], origin[2], velocity[0], velocity[1], velocity[2], g_weaponsnames[wpn], check, gocheck, hp, save_data)
	SQL_ThreadQuery(g_SqlTuple, "SQL_WorkHandle", createinto)

	reset_checkpoints(id)
	Savepos_have[id] = true; //

	return PLUGIN_HANDLED
}

public SQL_Savepos_menu(id)
{
	if(!is_user_connected(id) || !is_user_alive(id)) return PLUGIN_HANDLED

	new title[256], g_HP[51]

	if (SavedHp[id] > 100) 	{
		formatex(g_HP, charsmax(g_HP), "\rGodmode\w"); // Если больше 100 хп, то godmode
	} else if (SavedHp[id] > 80) {
		formatex(g_HP, charsmax(g_HP), "\w%d", SavedHp[id]); // Если больше 80 хп, подсветка белым
	} else if (SavedHp[id] > 30 && SavedHp[id] < 80) {
		formatex(g_HP, charsmax(g_HP), "\y%d\w", SavedHp[id]); // Если больше 30 и меньше 80, то желтым
	} else {
		formatex(g_HP, charsmax(g_HP), "\r%d\w", SavedHp[id]); // Все остальное красным (мало хп)
	}


	formatex(title, charsmax(title), "\dSave position Menu^n^n\w[TIME] = %s^n[WPN] = %s^n[CP/TP] = %d/%d^n[HP] = %s^n[DATE] = %s", SavedTimeConvert[id], Weapon_Converter(SavedWeapon[id]), SavedChecks[id],SavedGoChecks[id],g_HP, SavedDate[id])
	new menu = menu_create(title, "SQL_Savepos_Handler")

	menu_additem( menu, "\yLOAD TIMER\w^n", "1" )
	menu_additem( menu, "\rDELETE\w old run and start new", "2" )
	menu_setprop(menu, MPROP_EXIT,MEXIT_NEVER)
	menu_display(id, menu, 0)

	return PLUGIN_HANDLED
}

public SQL_Savepos_Handler(id, menu, item)
{
	new createinto[128]

	switch(item)
	{
		case 0:
		{
			reset_checkpoints(id)
			SQL_Teleport_to_Savepos(id)
		}
		case 1:
		{
			goStart(id)
			formatex(createinto, sizeof createinto - 1, "DELETE FROM kz_savepos%s WHERE map_id='%d' AND authid='%s'", get_pcvar_num(sv_airaccelerate) == 100 ? "_100aa" : "", kz_mapID, kz_authid[id])
			SQL_ThreadQuery(g_SqlTuple, "SQL_WorkHandle", createinto)
			Savepos_have[id] = false; // Savepos нету, таймер будет нажиматся.
		}
	}
	return PLUGIN_HANDLED
}

public SQL_Teleport_to_Savepos(id)
{
	if( !is_user_alive(id) )
		return PLUGIN_HANDLED;

	new createinto[128], origin[3], velocity[3]

	if(mapIsSlide || g_bHealsOnMap) {
		GodModeOn[id] = true
	} else {
		GodModeOn[id] = false
	}

	// Hook and Noclip off
	set_user_noclip(id, 0)
	remove_hook(id)

	origin[0] = SavedOrigins[id][0]
	origin[1] = SavedOrigins[id][1]
	origin[2] = SavedOrigins[id][2]
	velocity[0] = SavedVelocity[id][0]
	velocity[1] = SavedVelocity[id][1]
	velocity[2] = SavedVelocity[id][2]
	// Телепорт к координатам
	set_pev(id, pev_velocity, Float:{0.0, 0.0, 0.0})
	set_pev(id, pev_flags, pev(id, pev_flags) | FL_DUCKING )
	set_pev(id, pev_origin, origin)
	set_pev(id, pev_velocity, velocity)

	for (new i = 0; i < 10; i++)
	{
		CheckPoint(id)
	}
	// CheckPoints & GoChecks
	checknumbers[id]=SavedChecks[id]
	gochecknumbers[id]=SavedGoChecks[id]
	// Устанавливаем значение ХП
	set_user_health(id, SavedHp[id])
	// Weapons
	strip_user_weapons(id)
	give_item(id, Weapon_ID_Converter(SavedWeapon[id]))

		if (SavedWeapon[id] == 250) {
			give_item(id, "weapon_knife")
		}
	// Timer
	timer_time[id]=get_gametime()-SavedTime[id]
	timer_started[id]=true
	Pause(id)
	// Delete Line in database
	formatex(createinto, sizeof createinto - 1, "DELETE FROM kz_savepos%s WHERE map_id='%d' AND authid='%s'", get_pcvar_num(sv_airaccelerate) == 100 ? "_100aa" : "", kz_mapID, kz_authid[id])
	SQL_ThreadQuery(g_SqlTuple, "SQL_WorkHandle", createinto)
	Savepos_activated[id] = true; // REC бот не будет засчитан.
	Savepos_have[id] = false; // Savepos нету, таймер будет нажиматся.
	Savepos_exploit[id] = true;

	return PLUGIN_HANDLED
}
