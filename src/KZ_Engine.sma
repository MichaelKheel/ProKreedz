/*
v0.01 = KZ Mod
v0.02 = Убраны разделение игроков со Steam и Nonsteam
v0.03 = Sound при #1 PRO & NUB_TOP
v0.04 = KZ Menu
v0.05 = Drop Weapon (исчезание сразу)
v0.06 = Block Scout
v0.07 = say /weapons
v0.08 = Game name
v0.09 = /about /version
v0.10 = Stats online menu
v0.11 = Сохранение виапона после того, как перешел в спек
v0.12 = /kzpl, посмотреть профиль пользователя, который сейчас в онлайне
v0.13 = /savestart - сохраняет текущую позицию для старта
v0.14 = 3 вида таймера (TXT,HUD,ROUND)
v0.15 = Teleport Player Menu
v0.16 = Invis (Player/Water/Full)
v0.17 = new Semiclip
v0.18 = Hook + Menu + Icon
v0.19 = fix pause + Screenfade effect
v0.20 = fix noclip
v0.21 = Убраны все разбивающиеся объекты
v0.22 = При первом старте сервера, random map из allmaps.txt
v0.23 = Climb Menu
v0.24 = Config Menu
v0.25 = при наведение на игрока, показывает его инфу task 0.1 HUD
v0.26 = Console Info
v0.27 = Исправлен Godmode (Если есть на мапе HP Booster, то GodMode = true)
v0.28 = Убраны элементы на экране (Радар, хп, армор, деньги)
v0.29 = Добавлена картинка при загрузки топа (в режиме ожидания)
v0.30 = Команда /speclist + строка в Config Menu
v0.31 = (VIP+) /specadm - скрывает пресутствие админа в спеках
v0.32 = Новые Motd окна у Pro15 и Nub15 в стиле Kreedz stats v2
v0.33 = HP выведено в Timer // При старте выдача 100hp
v0.34 = HUD Damage при падении
v0.35 = Добавлена возможность /tp до 10 точек назад
v0.36 = Slot Reservation
v0.37 = Console Info
v0.38 = Fix CP/TP и Savepos. Weapons /USP /Knife
v0.39 = Server info motd
v0.40 = KZ Profile /mystats /me & Info connect Rank nad Point
v0.41 = Player Connect Chat info
v0.42 = Фонарик, который виден только самому себе + настройки
v0.43 = SQL Уникальный идентефикатор пользователя
v0.44 = SQL Config, подгрузка при коннекте, настроек пользователя.
v0.45 = Исправлен Full invisible (Если юзер смотрит, черный экран и надпись)
v0.46 = Auto CT spawn
v0.47 = Admins respawn Terrorist
v0.48 = ScoreBoard (title) + Frags = points | death = rank
v0.49 = Replay bot top 1 record
v0.50 = Checker Map (Bhop, Gravity, Slide, Allmaps)
v0.51 = Timer обновляется с частатой 0.01с
v0.52 = Переписаны все SQL запросы, на более правильные, исправлены баги
v0.53 = my time in top15
v0.54 = Урон не наносится, включаются холостые потроны
v0.55 = Добавлена спрайт иконка для KZRU Бота && Пофикшен показ спрайта
v0.56 = Переписаны финишные сообщения
v0.57 = Weapon top SQL + motd
v0.58 = Fix блокировки урона, блокируется все, кроме урон от падения
v0.59 = New Semiclip / Invis / Water Invis
v0.60 = /speed с обновлением как у таймера
v0.61 = Orpheu AXN
v0.62 = Hud Name + Time Bot
v0.63 = Исправлен возврат оружия игроку при переходе в spec или при смерти
v0.64 = KZRU Bot теперь прыгает со 100 fps стабильно, не зависимо от загружености сервера
v0.65 = За неделю был найден баг который крашил сервер с ошибкой | FATAL ERROR (shutting down): User Msg 'ScreenFade': 8 bytes written, expected 10 |
запихал код screenfade в зацикленную функцию spec из-за чего сообщения не доходили до игрока и сервер крашился, однако если sys_ticrate > 1000, то сервер забивал буфер и swap в unix переполнялся.
v0.66 = Отредачил код малеха
v0.67 = SQL Map type, данные о типы карты берутся из базы, убран весь лишний код
v0.68 = SQL Delete entity, удаление энтити теперь настраивается тоже через sql
v0.69 = KZRU Умерло, изменено название на Cosy-Climbing (СС)
v0.70 = New Showkeys
v0.71 = Test new bot frame
v0.72 = REC Bot set_task(0.1) - сосет, сделал через nextthink + адаптация к нагрузки сервера.
v0.73 = Переделан SQL_Maplist, чтоб сервер не зависал при sql запросе.
v0.74 = Убрал Kr1zo semiclip, т.к. он лагал (на сервере вместо 80 пинга, было 100+), естественно это под нагрузкой.
v0.75 = Сделал упрощенный connect REC бота, вылетала ошибка сигментации
v0.76 = Оказалось из-за semiclipa, сделал проверки
v0.77 = Fix, если кикнуть бота не через меню, сервер крашился.
v0.78 = После перезаписи рекорда Top1 бота больше не кикает, а изменяет ник
v0.79 = У REC бота показывает Button
v0.80 = При переходе в spec, показывает от первого лица автоматически
v0.81 = При смерти, не обнуляет очки, а возвращает.
v0.82 = Исправление бага при коннекте бота он не подключался доконца, застревал на меню выбора.
v0.83 = После savepos топ1 рекорд не будет записан для бота.
v0.84 = Исправление Savepos SQL части / Преобразование таблицы баз данных
v0.85 = Исправление всех функций SQL части, выпилил говнокод.
v0.86 = KZ Config переехал в базу uq_players и автоапдейт после выхода с сервера.
v0.87 = Переписаны все INSERTы и UPDATEы под потоковые запросы
v0.88 = My time в top15 с проверкой на прохождение с лучшим временем, а не каждый раз запросом.
v0.89 = Переписаны все SELECTы под потоковые запросы, оптимизирован код + получения данных идет после выполнения запроса
v0.90 = Для VIP новые правила, 500, 800, 1200 pts
v0.91 = Savepos оптимизирован под потоковые запросы
v0.92 = В savepos добавлено Velocity | оптимизирован код, добавлены условия
v0.93 = Full invise теперь работает корректно.
v0.94 = Start/Finish Position in SQL
v0.95 = FPS all players + Server FPS check and show.
v0.96 = Fix savepos exploit../
v0.97 = Добавлен Measure
v0.98 = Добавлен KZ ADD Spawns
v0.99 = Добавлены spawn для теров (фикс краш сервера)
v1.00 = Переход на REHLDS, orpheu более не может работать
v1.01 = Меню savepos открывается, по нажатию кнопки.
*/
#include <amxmodx>
#include <engine>
#include <cstrike>
#include <colorchat>
#include <amxmisc>
#include <fun>
#include <fakemeta>
#include <hamsandwich>
#include <dhudmessage>
#include <sqlx>
#include <geoip>
#include <kz>

//#include <orpheu>
//#include <orpheu_advanced>
//#include <orpheu_stocks>
//#include <orpheu_memory>

#define PLUGIN "KZ[L]MOD"
#define VERSION "1.01"
#define AUTHOR "`L."

#define pgL_sql_files "kreedz.ru/"
#define KZ_LEVEL_1 ADMIN_CFG

#define SCOREATTRIB_NONE    0
#define SCOREATTRIB_DEAD    ( 1 << 0 )
#define SCOREATTRIB_BOMB    ( 1 << 1 )
#define SCOREATTRIB_VIP  ( 1 << 2 )
// Drop weapon
#define WBOX "models/w_weaponbox.mdl"
#define BOMB "models/w_backpack.mdl"
#define SHLD "models/w_shield.mdl"
// Spec list
#define UPDATEINTERVAL 0.1
#define SR 0
#define SG 50
#define SB 255
// Screen fade PAUSE
#define PAUSE_RED 176
#define PAUSE_GREEN 226
#define PAUSE_BLUE 255
// Убран Фонарик
#define HUD_HIDE_FLASH (1<<1)
// Убран радар, хп, армор
#define HUD_HIDE_RHA (1<<3)
// Убран Таймер
#define HUD_HIDE_TIMER (1<<4)
// Убраны деньги
#define HUD_HIDE_MONEY (1<<5)
// Максимальное число сохраняемых в кеше CP
#define MAX_CPS 10

#pragma tabsize 0

new const FL_ONGROUND2 = ( FL_ONGROUND | FL_PARTIALGROUND | FL_INWATER |  FL_CONVEYOR | FL_FLOAT )

new kz_authid[33][35];
new kz_ip[33][16];

#define IsOnLadder(%1) (pev(%1, pev_movetype) == MOVETYPE_FLY)
new Float:Checkpoints[33][MAX_CPS][3]
new Float:SaveStarts[33][2][3]
new Float:g_pausetime[33]
new Float:SpecLoc[33][3]
new Float:NoclipPos[33][3]
new Float:PauseOrigin[33][3]
new Float:SavedStart[33][3]
new Float:DefaultStartPos[3]
new Float:DefaultFinishPos[3]
new Float:gCheckpointAngle[33][3];
new Float:gSaveStartsAngle[33][3];
//*********** Savepos **********************************************//
new Float:SavedTime[33], SavedTimeConvert[33], SavedChecks[33], SavedGoChecks[33], SavedWeapon[33], SavedHp[33], SavedDate[33], SavedOrigins[33][3], SavedVelocity[33][3]
new bool:Savepos_activated[33], bool:Savepos_have[33], bool:Savepos_exploit[33];

new bool:g_bStart[33]
new bool:g_bCpAlternate[33]
new bool:timer_started[33]
new bool:IsPaused[33]
new bool:WasPaused[33]
new bool:firstspawn[33]

// Check Tips bool
new bool:mapIsAXN
new bool:mapIsSlide
new bool:mapIsGravity

//*********** Награды **************************************************///
#define KZ_R 0
#define KZ_G 150
#define KZ_B 0
// Noclip
new bool:canusenoclip[33]
new bool:isnocliped[33]
// Hook
new bool:canusehook[33]
new bool:ishooked[33]
new hookorigin[33][3]
new Float:antihookcheat[33]
// Для меню
new g_rewardsPosition[33]
new g_rewardsPlayers[33][32]
new g_rewardsPlayersNum[33]
new g_rewardsOption[33]
new g_rewardsSettings[33]

//*********** Teleport Player **************************************************///
new g_teleportPosition[33]
new g_teleportPlayers[33][32]
new g_teleportPlayersNum[33]
new g_teleportOption[33]
new g_teleportSettings[33]

//*********** Режим бессмертия **************************************************///
new GodModeOn[33]

//*********** Invis & Semiclip **************************************************///
new g_iPlayers[32], g_iNum, g_iPlayer

new maxplayers
#define DISTANCE 500.0
#define UPDATE_FREQ 0.1
#define ENTITY_MAX 2048
new const invis_class[][] = {
	"func_water"
}

new bool:theWaterInvis
new bool:invis_entity[ENTITY_MAX]
new bool:specInvis_U[33]
new bool:specInvis_W[33]
new bool:Screen_fade[33];

new bool:NightVisionUse[33]
new bool:Default_SF[2]
new bool:AutoStart[33]

new Trie:g_tStarts
new Trie:g_tStops;
// HP Booster
new g_bHealsOnMap
new g_nHP[33]

// Скрывание HP, armor и т.д.
new g_msgHideWeapon
// Player Connect
new bool:gIsUserConnected[33];
// Фонарик
new bool:g_bFlashLight[33]
new g_iFlashBattery[33]
new Float:g_flFlashLightTime[33]
new g_iColor[33][3]
new g_iTeamColor[2][3]
new g_msgidFlashlight
new g_bEnabled = true
new g_iRadius = 9
new g_iAttenuation = 1
new g_iDistanceMax = 2000
new Float:g_flDrain = 1.2
new Float:g_flCharge = 0.2

// nightvision
new g_nightvision[33]
new g_default_map_light[32]
new g_fwLightStyle
new g_msgScreenFade

// SHOWKEYS
new g_iPlayerKeys[33];
new bool:g_bShowKeys[33];
new Float:fShowKeyTime = 0.0;
new g_SyncShowKeys;

// DEMO BOT
new Array:g_DemoPlaybot[1];
new Array:g_DemoReplay[33];
enum _:DemoData {
	Float:flBotAngle[2],
	Float:flBotPos[3],
	Float:flBotVel[3],
	iButton
};
new g_Bot_Icon_ent
new Float:g_ReplayBestRunTime;
new g_ReplayName[32];
new g_bBestTimer[14];
new bool:g_fileRead;
new g_bot_enable;
new g_bot_frame;
new g_bot_id;
new g_szMapName[32];
new Float:nExttHink = 0.009;

// Scoreboard Title
new g_szTitle[64];
enum _:ScoreInfo_Args {
	PlayerID = 1,
	Frags,
	Deaths,
	ClassID,
	TeamID
}
//new Float:g_flOldMaxSpeed;
//new OrpheuStruct:g_ppmove;
// SPEED
new Float:speedshowing[33]
new movetype[33]
new bool:show_speed[33]
//
new checknumbers[33]
new gochecknumbers[33]
new sz_HP[33]
new chatorhud[33]
new DATADIR[128]

new g_MsgStatusText
new SyncHudTimer
new SyncHudSpeed
new hud_message
new Sbeam = 0
new g_entid[33]
new g_maxents
new spec_wpn[33][33]
// FPS
new g_iPlayerFps[33];
new g_iServerFps;
// measure
#define TASK_BEAM 45896
new Float:g_vFirstLoc[33][3];
new Float:g_vSecondLoc[33][3];
new bool:g_bReturnFloat[33];
new bool:g_bShowBeams[33];
new bool:g_bDetailedResults[33];
new bool:g_bAutoSetting[33];
#define DIST_R 0
#define DIST_G 87
#define DIST_B 65
new g_flBeam;
// KZ ADD SPAWNS
new g_pCvarMapsSpawns

enum {
	Red,
	Green,
	Blue
}

new const other_weapons[8] =
{
	CSW_P90, CSW_FAMAS, CSW_SG552, CSW_AWP,
	CSW_M4A1, CSW_M249, CSW_AK47, CSW_AWP
}

new const g_block_commands[][]=
{
	"buy", "buyammo1", "buyammo2", "buyequip",
	"cl_autobuy", "cl_rebuy", "cl_setautobuy", "cl_setrebuy"

}

new const g_remove_ent[][] =
{
	"func_bomb_target", "info_bomb_target", "hostage_entity", "func_breakable",
	"monster_scientist", "func_hostage_rescue", "info_hostage_rescue",
	"info_vip_start", "func_vip_safetyzone", "func_escapezone",
	"armoury_entity", "game_player_equip", "player_weaponstrip",
	"info_deathmatch_start"
}

// =================================================================================================
#include <kz_sql>
// =================================================================================================



//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ INITIAL PLUGIN ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

public plugin_init()
{
	register_plugin(PLUGIN, VERSION, AUTHOR)

	get_mapname(MapName, 63)

	if(get_cvar_float("kz_uptime") == 0.0)
	{
		if(equali(MapName, "kz_longjumps2"))
		{
			server_cmd("restart")
		} else
		{
			register_cvar("kz_uptime", "0.000001")
			set_task(0.5, "ChangeRandom")
			return PLUGIN_HANDLED
		}
	}

	SyncHudTimer = CreateHudSyncObj()
	SyncHudSpeed = CreateHudSyncObj()
	hud_message = CreateHudSyncObj()

	//register_srvcmd("amx_addmaps", "SQL_Maplist")

	kz_register_saycmd("fps", "cmdFps", 0);
	// Команды для Award
	kz_register_saycmd("noclip","noclip",0)
	kz_register_saycmd("nc","noclip",0)
	register_clcmd("+hook","hook_on")
	register_clcmd("-hook","hook_off")
	register_clcmd("amx_hook","cmdRewardsMenu")
	//register_clcmd("+noclip", "noclip_on")
	//register_clcmd("-noclip", "noclip_off")

	// CheckPoint && TP Checkpoint
	register_clcmd("/cp","CheckPoint")
	register_clcmd("/tp", "goto_checkpoint")
	register_clcmd("/gc", "goto_checkpoint")
	register_clcmd("say", "goto_checkpoint_say")
	kz_register_saycmd("cp","CheckPoint",0)
	kz_register_saycmd("tp", "goto_checkpoint",0)
	kz_register_saycmd("stuck", "goto_stuck", 0)
	kz_register_saycmd("reset", "reset_checkpoints", 0)

	// Standart Klava keys
	register_clcmd("drop", "BlockDrop")
	register_clcmd("kill", "client_kill")
	//register_concmd("nightvision","ToggleNVG")
	register_clcmd("radio1", "BlockRadio")
	register_clcmd("radio2", "BlockRadio")
	register_clcmd("radio3", "BlockRadio")
	register_clcmd("chooseteam", "kz_menu")
	register_clcmd("+commandmenu", "top15menu")

	kz_register_saycmd("pause", "Pause", 0)
	kz_register_saycmd("teleport","cmdTeleportMenu",0)
	//kz_register_saycmd("kzpl","kzplmenu",0)
	kz_register_saycmd("speed", "cmdShow_speed",0)

	// Weapons
	kz_register_saycmd("knife", "give_usp_and_knife", 0)
	kz_register_saycmd("usp", "give_usp_and_knife", 0)
	kz_register_saycmd("weapons", "weapons", 0)
	kz_register_saycmd("guns", "weapons", 0)
	// Info Msg
	kz_register_saycmd("help", "jumphelp", 0)
	kz_register_saycmd("version", "cmdVersion",0)
	kz_register_saycmd("about", "cmdVersion",0)
	//kz_register_saycmd("uptime", "cmdUptime",0)
	// Spec List
	kz_register_saycmd("spec","ct",0)
	kz_register_saycmd("ct","ct",0)
	register_clcmd("/ct","ct")
	kz_register_saycmd("speclist", "cmdSpeclist", 0)
	kz_register_saycmd("specadm", "cmdSpeclistAdm", 0);
	// Start Command
	register_clcmd("/start","goStart")
	kz_register_saycmd("start", "goStart", 0)
	kz_register_saycmd("respawn", "goStart", 0)
	kz_register_saycmd("savestart","SaveStart",0)
	kz_register_saycmd("savepos", "SQL_Savepos", 0)
	kz_register_saycmd("setstart", "setStart", KZ_LEVEL_1)
	kz_register_saycmd("finish", "loadFinish", 0)
	// ConfigMenu команды
	kz_register_saycmd("god", "ConfigMenu",0)
	kz_register_saycmd("godmode", "ConfigMenu", 0)
	kz_register_saycmd("invis", "ConfigMenu", 0)
	kz_register_saycmd("noteleport", "ConfigMenu",0)
	kz_register_saycmd("icons", "ConfigMenu",0)
	// Top 15
	kz_register_saycmd("kz", "kz_menu", 0)
	kz_register_saycmd("menu","kz_menu", 0)
	kz_register_saycmd("mystats", "kz_profile", 0)
	kz_register_saycmd("me", "kz_profile", 0)
	kz_register_saycmd("noob10", "stats_show", 0)
	kz_register_saycmd("noob15", "stats_show", 0)
	kz_register_saycmd("nub15", "stats_show", 0)
	kz_register_saycmd("pro15", "stats_show", 0)
	kz_register_saycmd("top15", "top15menu",0)
	kz_register_saycmd("top", "top15menu",0)
	kz_register_saycmd("top10", "top15menu",0)

	kz_register_saycmd("measure", "cmdMeasure", 0)
	kz_register_saycmd("distance", "cmdMeasure", 0)
	register_menucmd( register_menuid( "\wMeasure Menu^n^n" ), 1023, "menuAction" );
	// Block Vote
	register_clcmd("vote","vote_block")
	register_clcmd("votekick","vote_block")
	register_clcmd("voteban","vote_block")
	register_clcmd("votemap","vote_block")

	// Develop режим
	register_concmd("amx_addsavepos", "give_savepos", _, "<#userid> <timer> <cp> <tp>")

	register_event("CurWeapon", "curweapon", "be", "1=1")
	// Показ дамага
	register_event("Damage", "Event_Damage", "b", "1=0", "2>0", "3=0", "4=0", "5=0", "6=0")

	register_forward(FM_PlayerPreThink, "fwdPlayerPreThink", 0)
	// Иконки наград
	register_message(get_user_msgid("StatusIcon"), "msgStatusIcon")
	// Обновление этих иконок
	register_event("ResetHUD", "resethud", "be")
	//Блокировка Scout
	RegisterHam(Ham_Touch, "weapon_scout", "Ham_HookScout", false);
	// Отлов нанесения урона противнику
	RegisterHam ( Ham_TakeDamage, "player", "UserBeforeDamage", 0)

	// Оружие больше не подбирается
	register_forward(FM_Touch,"fwdTouch")
	// Изменение типа игры
	register_forward(FM_GetGameDescription, "fwGetGameDescription")
	// Исчезновение оружия
	register_forward(FM_SetModel, "forward_set_model")
	g_maxents = get_global_int(GL_maxEntities)
	// Показ hp
	register_message(get_user_msgid("Health") , "msgHealth")
	// Прозрачность игроков Semiclip
	maxplayers = get_maxplayers()
	register_forward(FM_AddToFullPack, "addToFullPack", 1)
	register_forward(FM_PlayerPreThink, "semiclip_preThink")
	register_forward(FM_PlayerPostThink, "semiclip_postThink")
	build_entitymap()

	// Скрывание Radar, HP, Armor, money
	g_msgHideWeapon = get_user_msgid("HideWeapon")
	register_event("ResetHUD", "onResetHUD", "b")
	register_message(g_msgHideWeapon, "msgHideWeapon")

	// Таск на показ Spec Info
	set_task(UPDATEINTERVAL, "tskShowSpec", 123094, "", 0, "b", 0);
	// Showkeys
	register_clcmd( "say /showkeys", "ClientShowKeys");
	register_forward(FM_StartFrame, "fw_StartFrame");
	g_SyncShowKeys = CreateHudSyncObj();
	// Фонарик
	register_impulse(100, "Impulse_100")
	register_event("DeathMsg", "Event_DeathMsg", "a")
	g_iTeamColor[1] = {SR,SG,SB}
	g_iTeamColor[0] = {SR,SG,SB}
	g_msgidFlashlight = get_user_msgid("Flashlight")
	// Nightvision
	unregister_forward(FM_LightStyle, g_fwLightStyle)
	g_msgScreenFade = get_user_msgid("ScreenFade")
	register_message(g_msgScreenFade, "message_screenfade")
	register_message(get_user_msgid("NVGToggle"), "message_nvgtoggle")

	// Эвенты
	RegisterHam( Ham_Use, "func_button", "fwdUse", 0)
	RegisterHam( Ham_Killed, "player", "Ham_beforekill", 0)
	RegisterHam( Ham_Killed, "player", "Ham_afterkill", 1)
	RegisterHam( Ham_Touch, "weaponbox", "FwdSpawnWeaponbox" )
	RegisterHam( Ham_Spawn, "player", "FwdHamPlayerSpawn", 1 )
	RegisterHam( Ham_Touch, "weaponbox", "GroundWeapon_Touch")

	// Менюшки
	register_menucmd(register_menuid("Rewards Menu"), 1023, "actionRewardsMenu")
	register_menucmd(register_menuid("Teleport Menu"), 1023, "actionTeleportMenu")
	register_menucmd(register_menuid("KZ Profile"), (1<<0)|(1<<1)|(1<<9), "kz_profileHandle")
	// DEMO BOT
	register_clcmd("amx_botmenu", "ClCmd_ReplayMenu");
	RegisterHam(Ham_Player_PreThink, "player", "Ham_PlayerPreThink", false);

	get_mapname(g_szMapName, sizeof(g_szMapName) - 1);
	strtolower(g_szMapName);
 	// Обновление бота больше чем 0.1с
	register_forward(FM_Think, "fwd_Think", 1 );
	new Ent = engfunc(EngFunc_CreateNamedEntity,engfunc(EngFunc_AllocString,"info_target"));
	set_pev(Ent, pev_classname, "bot_record");
	set_pev(Ent, pev_nextthink, 0.01);
 		// Цикл создание array для записи рекорда
	for(new i; i < sizeof g_DemoReplay; i++)
		g_DemoReplay[i] = ArrayCreate(DemoData, 1);
   // Cоздание array для проигрывания рекорда
	g_DemoPlaybot[0] = ArrayCreate(DemoData, 1);

	g_MsgStatusText = get_user_msgid("StatusText")
	// ScoreBoard, таблица со списком игроков
	register_message( get_user_msgid( "ScoreAttrib" ), "MessageScoreAttrib" )
	register_message( get_user_msgid( "ServerName" ), "MessageServerName" );
	format( g_szTitle, charsmax( g_szTitle ), "Map: %s", MapName );
	// Обновление таймера
	new iTimer = create_entity("info_target")
	entity_set_float(iTimer, EV_FL_nextthink, get_gametime() + 0.05)
	entity_set_string(iTimer, EV_SZ_classname, "hud_update")
	register_think("hud_update", "timer_task")

	// Создаем общий путь к папке /addons/amxmodx/data
	get_localinfo("amxx_datadir", DATADIR, charsmax(DATADIR));
	// Цикл для блокировки покупки оружия
	for(new i = 0; i < sizeof(g_block_commands) ; i++)
		register_clcmd(g_block_commands[i], "BlockBuy")

	g_tStarts = TrieCreate( )
	g_tStops  = TrieCreate( )

	new const szStarts[ ][ ] =
	{
		"counter_start", "clockstartbutton", "firsttimerelay", "but_start", "counter_start_button",
		"multi_start", "timer_startbutton", "start_timer_emi", "gogogo"
	}

	new const szStops[ ][ ]  =
	{
		"counter_off", "clockstopbutton", "clockstop", "but_stop", "counter_stop_button",
		"multi_stop", "stop_counter", "m_counter_end_emi"
	}

	for( new i = 0; i < sizeof szStarts; i++ )
		TrieSetCell( g_tStarts, szStarts[ i ], 1 )

	for( new i = 0; i < sizeof szStops; i++ )
		TrieSetCell( g_tStops, szStops[ i ], 1 )

	// SQL Connect
	g_SqlTuple = SQL_MakeStdTuple();
	plugin_sql();
	// AXN
	/*OrpheuRegisterHook(OrpheuGetFunction("PM_Move"), "OR_PMMove");
	new OrpheuFunction:orPMJump = OrpheuGetFunction("PM_Jump");
	OrpheuRegisterHook(orPMJump, "OR_PMJump");
	OrpheuRegisterHook(orPMJump, "OR_PMJump_P", OrpheuHookPost);*/
	// KZ ADD SPAWNS
	new iEnt = FM_NULLENT, iCount
	while( (iEnt = engfunc(EngFunc_FindEntityByString, iEnt, "classname", "info_player_deathmatch")) )
	{
		//engfunc(EngFunc_RemoveEntity, iEnt)
		++iCount
	}

	new szCvarValue[19]
	get_pcvar_string(g_pCvarMapsSpawns, szCvarValue, charsmax(szCvarValue))
	format(szCvarValue, charsmax(szCvarValue), "%s T:0(%d)", szCvarValue, iCount)
	set_pcvar_string(g_pCvarMapsSpawns, szCvarValue)

	// Получения ID мапы и проверка со списком карт
	SQL_MapID()

	return PLUGIN_CONTINUE
}

public plugin_end()
{
	new Float:totalup = get_cvar_float("kz_uptime") + halflife_time()
	set_cvar_float("kz_uptime", totalup)
}

public ChangeRandom()
{
	if(file_exists("addons/amxmodx/configs/allmaps.txt"))
	{
		new mapname[64], txtsize, line = random_num(0, file_size("addons/amxmodx/configs/allmaps.txt", 1) - 2)
		read_file("addons/amxmodx/configs/allmaps.txt", line, mapname, 63, txtsize)
		server_cmd("changelevel %s", mapname)
	}
}

public detect_cheat(id,reason[])
{
	if(timer_started[id])
	{
		txtTimerReset(id)
		timer_started[id] = false
		if(IsPaused[id])
		{
			set_pev(id, pev_flags, pev(id, pev_flags) & ~FL_FROZEN)
			IsPaused[id] = false
		}
		ColorChat(id, RED,  "%s^x01 Timer stoped. ^3%s^1 detected.", prefix, reason)
	}
}

public fwGetGameDescription()
{
	forward_return(FMV_STRING, "Cosy-Climbing.net");
	return FMRES_SUPERCEDE;
}

public cmdVersion(id)
{
	ColorChat(id, RED, "^x03%s^x01 Plugin: ^x03%s^x01 VERSION: ^x03%s^x01 Author by^x03 %s", prefix, PLUGIN, VERSION, AUTHOR)
	return PLUGIN_HANDLED_MAIN;
}

public ServerInfo_Console(id)
{
	new name[ 32 ], hostname[ 64 ], thetime[ 32 ]
	get_user_name( id, name, 31 )
	get_user_authid( id, kz_authid[id], 34 )
	get_user_ip( id, kz_ip[id], 15, 0 )
	get_cvar_string( "hostname", hostname, 63 )
	get_time( "%m/%d/%Y - %H:%M:%S", thetime, 31 )

	client_cmd(id, "echo ^"=========================================^"")
	client_cmd(id, "echo ^"Welcome on %s !				^"", hostname)
	client_cmd(id, "echo ^"The time is now: %s			^"", thetime)
	client_cmd(id, "echo ^"-------------------------------------^"")
	client_cmd(id, "echo ^" Your Information:					^"")
	client_cmd(id, "echo ^"-------------------------------------^"")
	client_cmd(id, "echo ^"Name: 		%s							^"", name)
	client_cmd(id, "echo ^"SteamID: 	%s						^"", kz_authid[id])
	client_cmd(id, "echo ^"IP: 			%s							^"", kz_ip[id])
	client_cmd(id, "echo ^"-------------------------------------^"")
	client_cmd(id, "echo ^"Contact administrator `L.			^"")
	client_cmd(id, "echo ^"-------------------------------------^"")
	client_cmd(id, "echo ^" Site: 		Cosy-Climbing.net			^"")
	client_cmd(id, "echo ^" Skype:		MihaeLVC				^"")
	client_cmd(id, "echo ^" ICQ:		634-364-729				^"")
	client_cmd(id, "echo ^" Mail:		MihaeLVC@gmail.com		^"")
	client_cmd(id, "echo ^"=========================================^"")
}

/*public cmdUptime(id) {
	new timeunit_seconds = get_total_uptime()
	new timeunit_minutes
	new timeunit_hours
	new timeunit_days

	if((timeunit_seconds / 60.0) >= 1) {
		timeunit_days = floatround(timeunit_seconds / 86400.0, floatround_floor)
        	timeunit_seconds -= timeunit_days * 86400

		timeunit_hours = floatround(timeunit_seconds / 3600.0, floatround_floor)
        	timeunit_seconds -= timeunit_hours * 3600

		timeunit_minutes = floatround(timeunit_seconds / 60.0, floatround_floor)
		timeunit_seconds -= timeunit_minutes * 60
	}

	if(timeunit_days > 0) ColorChat(id, BLUE, "^x01%s^x03 Server uptime is %d day%s and %s%d:%s%d:%s%d second%s", prefix, timeunit_days, timeunit_days > 1 ? "s" : "", timeunit_hours < 10 ? "0" : "", timeunit_hours, timeunit_minutes < 10 ? "0" : "", timeunit_minutes, timeunit_seconds < 10 ? "0" : "", timeunit_seconds, timeunit_seconds > 1 ? "s" : "")
	else if(timeunit_hours > 0) ColorChat(id, BLUE, "^x01%s^x03 Server uptime is %s%d:%s%d:%s%d second%s", prefix, timeunit_hours < 10 ? "0" : "", timeunit_hours, timeunit_minutes < 10 ? "0" : "", timeunit_minutes, timeunit_seconds < 10 ? "0" : "", timeunit_seconds, timeunit_seconds > 1 ? "s" : "")
	else if(timeunit_minutes > 0) ColorChat(id, BLUE, "^x01%s^x03 Server uptime is %s%d:%s%d second%s", prefix, timeunit_minutes < 10 ? "0" : "", timeunit_minutes, timeunit_seconds < 10 ? "0" : "", timeunit_seconds, timeunit_seconds > 1 ? "s" : "")
	else ColorChat(id, BLUE, "^x01%s^x03 Server uptime is %d second%s", prefix, timeunit_seconds, timeunit_seconds > 1 ? "s" : "")

	return PLUGIN_CONTINUE
}*/

public plugin_precache()
{
	kz_add_spawn()
	g_fwLightStyle = register_forward(FM_LightStyle, "fw_LightStyle")
	RegisterHam(Ham_Spawn, "func_door", "Ham_DoorSpawn_P", true);
	Sbeam = precache_model("sprites/laserbeam.spr")
	precache_sound("kzvc.wav")
	precache_sound("give_hook.wav")
	precache_sound("misc/woohoo.wav")
	g_flBeam = precache_model( "sprites/zbeam4.spr" );
}

public plugin_cfg()
{
	// getting information on server config
	sv_airaccelerate = get_cvar_pointer("sv_airaccelerate");
	sv_gravity = get_cvar_pointer("sv_gravity");

	server_print("[KZ] Airaccelerate = %d", get_pcvar_num(sv_airaccelerate))
	server_print("[KZ] Gravity = %d", get_pcvar_num(sv_gravity))

	// Load best run
	ReadBestRunFile()
}

kz_add_spawn()
{
	enum _:SpawnsDatas
	{
		m_szAngles[64],
		m_szOrigins[64]
	}
	new Array:aSpawns = ArrayCreate(SpawnsDatas)
	new mTempDatas[SpawnsDatas]

	enum
	{
		iAngles,
		iOrigins,
		iClassName
	}
	new Trie:tKeyType = TrieCreate()
	TrieSetCell(tKeyType, "angles", iAngles)
	TrieSetCell(tKeyType, "origin", iOrigins)
	TrieSetCell(tKeyType, "classname", iClassName)

	new szMapFile[64]
	get_mapname(szMapFile, charsmax(szMapFile))
	format(szMapFile, charsmax(szMapFile), "maps/%s.bsp", szMapFile)

	new szBuffer[64], szKey[16], szValue[32], iType
	new bool:bInEntityDatas, bool:bIsInfoPlayerStartEntity
	new fp = fopen(szMapFile, "rb")

	new iOffset, iLength, iMaxPos
	fseek(fp, 4, SEEK_SET)
	fread(fp, iOffset, BLOCK_INT)
	fread(fp, iLength, BLOCK_INT)
	iMaxPos = iOffset + iLength
	fseek(fp, iOffset, SEEK_SET)

	while( ftell(fp) < iMaxPos )
	{
		fgets(fp, szBuffer, charsmax(szBuffer))
		trim(szBuffer)

		if( bInEntityDatas )
		{
			if( szBuffer[0] == '}' )
			{
				bInEntityDatas = false
				if( bIsInfoPlayerStartEntity )
				{
					ArrayPushArray(aSpawns, mTempDatas)
				}
			}
			else
			{
				parse(szBuffer, szKey, charsmax(szKey), szValue, charsmax(szValue))
				if( TrieGetCell(tKeyType, szKey, iType) )
				{
					switch( iType )
					{
						case iAngles:
						{
							copy(mTempDatas[m_szAngles], charsmax(mTempDatas[m_szAngles]), szValue)
						}
						case iOrigins:
						{
							copy(mTempDatas[m_szOrigins], charsmax(mTempDatas[m_szOrigins]), szValue)
						}
						case iClassName:
						{
							if( equal(szValue, "info_player_start") )
							{
								bIsInfoPlayerStartEntity = true
							}
						}
					}
				}
			}
		}
		else if( szBuffer[0] == '{' )
		{
			bInEntityDatas = true
			bIsInfoPlayerStartEntity = false
		}
	}
	fclose(fp)

	new iSpawnsNum = ArraySize( aSpawns )
/*	if( iSpawnsNum == 1 )
	{
		log_to_file("OnSpawns.log", "%s has only 1 spawn", szMapFile)
	}*/
	new iNeededSpawns = max(get_maxplayers() - iSpawnsNum, 0)

	new szCvarValue[19]
	formatex(szCvarValue, charsmax(szCvarValue), "CT:%d(%d)", iSpawnsNum + iNeededSpawns, iSpawnsNum)
	g_pCvarMapsSpawns = register_cvar("map_spawns", "", FCVAR_SERVER)
	set_pcvar_string(g_pCvarMapsSpawns, szCvarValue)

	if( iSpawnsNum > 0 && iNeededSpawns > 0 )
	{
		new iFactor = (iNeededSpawns / iSpawnsNum) + _:!!(iNeededSpawns % iSpawnsNum)
		new iszClassName = engfunc(EngFunc_AllocString, "info_player_start")

		set_kvd(0, KV_ClassName, "info_player_start")
		set_kvd(0, KV_fHandled, 0)
		for(new i, j, iEnt; i<iSpawnsNum; i++)
		{
			ArrayGetArray(aSpawns, i, mTempDatas)

			for(j=0; j<iFactor; j++)
			{
				iEnt = engfunc(EngFunc_CreateNamedEntity, iszClassName)
				DispatchKeyValueCustom(iEnt, "angles", mTempDatas[m_szAngles])
				DispatchKeyValueCustom(iEnt, "origin", mTempDatas[m_szOrigins])
				dllfunc(DLLFunc_Spawn, iEnt)

				//if( --iNeededSpawns == 0 )
				//{
					//goto delete_datas
				//}
			}

		}
	}

		new iszClassName2 = engfunc(EngFunc_AllocString, "info_player_deathmatch")

		set_kvd(0, KV_ClassName, "info_player_deathmatch")
		set_kvd(0, KV_fHandled, 0)
		for(new i, iEnt2; i <= 3; i++)
		{
			if(i < iSpawnsNum) ArrayGetArray(aSpawns, i, mTempDatas)

			iEnt2 = engfunc(EngFunc_CreateNamedEntity, iszClassName2)
			DispatchKeyValueCustom(iEnt2, "angles", mTempDatas[m_szAngles])
			DispatchKeyValueCustom(iEnt2, "origin", mTempDatas[m_szOrigins])
			dllfunc(DLLFunc_Spawn, iEnt2)

			if( --iNeededSpawns == 0 )
			{
				goto delete_datas
			}
		}


delete_datas:
	ArrayDestroy( aSpawns )
	TrieDestroy( tKeyType )
}

DispatchKeyValueCustom(iEntity, szKey[], szValue[])
{
	set_kvd(0, KV_KeyName, szKey)
	set_kvd(0, KV_Value, szValue)
	dllfunc(DLLFunc_KeyValue, iEntity, 0)
}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ CONNECT USER ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

public client_authorized(id)
{
	new maxplayers = get_maxplayers()
	new players = get_playersnum(1)
	new limit = maxplayers - 1

	if (access(id, ADMIN_RESERVATION) || (players <= limit))
	{
		return PLUGIN_CONTINUE
	}

	new lReason[64]
	format(lReason, 63, "Reserved slot for VIP")
	server_cmd("kick #%d ^"%s^"", get_user_userid(id), lReason)

	return PLUGIN_HANDLED
}


public client_connect(id)
{
	if(is_user_bot(id))
		return

	new ip[32], country[3]
	get_user_ip (id, ip, 31, 1)
	geoip_code2_ex( ip, country)

	client_cmd(id, "clear")
	client_cmd(id, "hud_centerid 0")
	client_cmd(id, "cl_download_ingame 1")
	client_cmd(id, "cl_allowdownload 1")
	client_cmd(id, "cl_allowupload 0")
	client_cmd(id, "cl_minmodels 1")

	ServerInfo_Console(id)
}

public kz_connect(id)
{
	if (is_user_connected(id) && !is_user_bot(id))
	{
		if(gIsUserConnected[id])
		{
			SQL_Config(id)
			SQL_profile(id)
			SQL_Check_Savepos(id)
		}

		new cszName[32], country[46]
		get_user_name(id, cszName, 31);
    	geoip_country ( kz_ip[id], country, 45 )

		if( !(get_user_flags(id) & ACCESS_0)) {
			ColorChat( 0, RED, "^x01[^x03%s^x01]^x03 %s^x01 %s [Country:^x03%s^x01]^x01.", VIP_ACCESS(id), cszName, (gIsUserConnected[id] ? "Connect" : "Disconnect"), country );
		} else {
			ColorChat( 0, BLUE, "^x03 %s^x01 %s [Country:^x03%s^x01]^x01.", cszName, (gIsUserConnected[id] ? "Connect" : "Disconnect"), country );
		}
	}
}

public client_disconnect(id)
{
    if( id == g_bot_id )
    {
        g_bot_id = 0;
        g_bot_enable = 0;
        g_bot_frame = 0;
    }

	SQL_Savepos(id)
	checknumbers[id] = 0
	gochecknumbers[id] = 0
	antihookcheat[id] = 0.0
	chatorhud[id] = -1
	timer_started[id] = false
	ShowTime[id] = 1
	firstspawn[id] = true
	IsPaused[id] = false
	WasPaused[id] = false
	NightVisionUse[id] = false
	remove_hook(id)
	//hide_icon_noclip(id)
	canusenoclip[id] = false
	noTeleport[id] = false
	icons[id] = true
	TP_MODE[id] = false
	SpecList[id] = true
	SpecAdmImm[id] = false
	show_speed[id] = false
	Screen_fade[id] = false;

	gIsUserConnected[id] = false
	kz_connect(id)
	// Очистка координат игрока для демобота
	ArrayClear(g_DemoReplay[id]);
}

public client_putinserver(id)
{
	if(is_user_bot(id)) return;

	gIsUserConnected[id] = true
	Savepos_activated[id] = false;
	Savepos_exploit[id] = false;
	checknumbers[id] = 0
	gochecknumbers[id] = 0
	antihookcheat[id] = 0.0
	chatorhud[id] = -1
	timer_started[id] = false
	NightVisionUse[id] = false
	firstspawn[id] = true
	IsPaused[id] = false
	WasPaused[id] = false
	show_speed[id] = false;
	Screen_fade[id] = false;
	remove_hook(id)
	//canusenoclip[id] = false
	g_bShowBeams[id] = true;
	g_bReturnFloat[id] = true;
	g_bDetailedResults[id] = false;
	g_bAutoSetting[id] = false;

	// Режим бессмертия
	if(mapIsSlide || g_bHealsOnMap)
		GodModeOn[id] = 1
	else
		GodModeOn[id] = 0

	// Connect сообщение
	kz_connect(id)
	// Обнуление фонаря
	flashlight_reset(id)
	set_task(0.5, "ct_resp", id)

	// SQL функция, Для Menu top15 time на карте
	mytime(id, PRO_TOP)
	mytime(id, NUB_TOP)
}

public CmdRespawn(id)
{
	if ( get_user_team(id) == 3 )
		return PLUGIN_HANDLED
	else
		if (cs_get_user_team(id) == CS_TEAM_CT) ExecuteHamB(Ham_CS_RoundRespawn, id)

	return PLUGIN_HANDLED
}

public FirstMsgProfile(id, result)
{
	if (is_user_connected(id))
	{
		update_score(id)
		if(result) {
			ColorChat(id, RED,  "%s^1 You have ^x03%d points^1 and you need ^3%d points to access the next rank", prefix, kz_point[id], kzneed[id])
			ColorChat(id, RED,  "%s^1 Your rank is ^3#%d^1 from ^3#%d^1 of the top players.", prefix, kz_hash[id], all_rank)
		} else {
			ColorChat(id, RED,  "%s^1 Your status ^3UNRANKED^1 since the number of 0 points.", prefix)
		}
	}
}

public FwdHamPlayerSpawn( id )
{
	if(!is_user_alive(id) || is_user_bot(id) )
		return;

	if(g_bHealsOnMap)
		set_pev(id, pev_health, 100.0);

	if(firstspawn[id])
	{
		ColorChat(id, BLUE,  "%s^1 Please, visit ^3http://cosy-climbing.net ^1", prefix)
		ColorChat(id, BLUE,  "%s^1 Server settings:^3 %daa^1 &^3 %d^1 gravity.", prefix, get_pcvar_num(sv_airaccelerate), get_pcvar_num(sv_gravity))

		if (is_user_admin(id))
			ColorChat(id, RED,  "%s^1 You are ^3%s^1, VIP menu: ^3/v", prefix, VIP_ACCESS(id))

		kz_menu(id)
	}
	firstspawn[id] = false
	// Nightvision
	cs_set_user_nvg(id,1)

	if( !user_has_weapon(id,CSW_KNIFE) )
		give_item( id,"weapon_knife" )

	if( IsPaused[id] )
	{
		set_pev(id, pev_flags, pev(id, pev_flags) | FL_FROZEN)
		set_pev(id, pev_origin, PauseOrigin[id])
	}

	// Блокировка радио
	set_pdata_int(id, 192, 0, 5)
}

public ct_resp(id)
{
	if(is_user_connected(id))
	{
		if(!is_user_alive(id))
			spawn(id)

		if(containi(spec_wpn[id], "weapon_") == -1) {
			format(spec_wpn[id], 32, "weapon_knife")
		}

		give_wpn(id)
	}
}

public ct(id)
{
	if(get_user_noclip(id) || Savepos_exploit[id]) {
		ColorChat(id, RED, "^x01%s^x03 You can not use mode Noclip", prefix)
		return PLUGIN_HANDLED
	}

	new CsTeams:team = cs_get_user_team(id)
	if (team == CS_TEAM_CT || team == CS_TEAM_T)
	{
		new clip, ammo, wpn_num
		wpn_num = get_user_weapon(id, clip, ammo)
		if(wpn_num) {
			get_weaponname(wpn_num, spec_wpn[id], 32)
		} else {
			format(spec_wpn[id], 32, "weapon_knife")
		}

		if( !( pev( id, pev_flags ) & FL_ONGROUND2 ) && timer_started[id] )
			return PLUGIN_HANDLED

			pev(id, pev_origin, SpecLoc[id])

			if ( timer_started[id] )
			{
				if ( IsPaused[id] )
				{
					Pause(id)
					WasPaused[id]=true
				}

				g_pausetime[id] =   get_gametime() - timer_time[id]
				timer_time[id] = 0.0
				kz_chat(id, "Your timer is paused.")
			}

			if(InvisUser[id]) {
				InvisUser[id] = false
				specInvis_U[id] = true
			}
			if(InvisWater[id]) {
				InvisWater[id] = false
				specInvis_W[id] = true
			}

		client_cmd(id, ";specmode 4") //first person
		sz_HP[id] = get_user_health(id)
		cs_set_user_team(id,CS_TEAM_SPECTATOR)
		set_pev(id, pev_solid, SOLID_NOT)
		set_pev(id, pev_movetype, MOVETYPE_FLY)
		set_pev(id, pev_effects, EF_NODRAW)
		set_pev(id, pev_deadflag, DEAD_DEAD)
	}
	else
	{
		if(cs_get_user_team(id) == CS_TEAM_SPECTATOR)
		{
			if(specInvis_U[id]) {
				InvisUser[id] = true
				specInvis_U[id] = false
			}
			if(specInvis_W[id]) {
				InvisWater[id] = true
				specInvis_W[id] = false
			}
		}
		set_pev(id, pev_effects, 0)
		set_pev(id, pev_movetype, MOVETYPE_WALK)
		set_pev(id, pev_deadflag, DEAD_NO)
		set_pev(id, pev_takedamage, DAMAGE_AIM)
		cs_set_user_team(id,CS_TEAM_CT)
		CmdRespawn(id)

		if( get_user_flags(id) & ADMIN_IMMUNITY )
			cs_set_user_team(id,CS_TEAM_T,CS_CT_URBAN)
		else
			cs_set_user_team(id,CS_TEAM_CT)
		// Возвращение оружия в спеках
		strip_user_weapons(id)

			if(containi(spec_wpn[id], "weapon_") == -1) {
				format(spec_wpn[id], 32, "weapon_knife")
			}
			give_wpn(id)

			if( user_has_weapon(id, CSW_USP) || user_has_weapon(id, CSW_KNIFE))
				{
					give_item(id,"weapon_knife")
					give_item(id,"weapon_usp")
				}

			set_pev(id, pev_origin, SpecLoc[id])
			set_user_health(id, sz_HP[id])

			if ( timer_started [id] )
				timer_time[id] = get_gametime() - g_pausetime[id] + timer_time[id]

			if( WasPaused[id] )
			{
				Pause(id)
				WasPaused[id]=false
			}

			Screen_fade[id] = false;
	}
	return PLUGIN_HANDLED
}
/*
public kzplmenu(id)
{
    new plmenu = menu_create ("\wView Player Stats:", "kzplhandlemenu")

    new num, players[32], tempid, szTempID [10], tempname [32]
    get_players (players, num, "ch")

    for (new i = 0; i < num; i++)
    {
        tempid = players [ i ]

        get_user_name(tempid, tempname, 31)
        num_to_str(tempid, szTempID, 9)
        menu_additem(plmenu, tempname, szTempID, 0)
    }

    menu_display (id, plmenu)
    return PLUGIN_HANDLED
}

public kzplhandlemenu(id, menu, item)
{
    if(item == MENU_EXIT)
    {
        menu_destroy(menu)
        return PLUGIN_HANDLED
    }

    new data[6], name[64]
    new access, callback
    menu_item_getinfo (menu, item, access, data, 5, name, 63, callback)
    new tempid = str_to_num(data)

	kz_profile(tempid)

    return PLUGIN_CONTINUE
}*/

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Teleport Player ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

public actionTeleportMenu(id,key) {
	switch(key) {
		case 7: {
			++g_teleportOption[id]
			g_teleportOption[id] %= 2
			switch (g_teleportOption[id]) {
				case 1: g_teleportSettings[id] = 1
			}
			displayTeleportMenu(id, g_teleportPosition[id])
		}
		case 8: displayTeleportMenu(id,++g_teleportPosition[id])
		case 9: displayTeleportMenu(id,--g_teleportPosition[id])
		default: {
			new player = g_teleportPlayers[id][g_teleportPosition[id] * 7 + key]
			new name[32], name2[32]
			get_user_name(player,name,31)
			get_user_name(id,name2,31)
			if(g_teleportOption[id]) {
				if(g_teleportSettings[id] == 1) {
					if(IsPaused[player] == true) {
						ColorChat(id, RED, "%s^1 You can not use teleport to pause..", prefix)
						return PLUGIN_HANDLED
					}
					new origin[3]

					set_user_gravity(player)
					get_user_origin(id, origin)
					set_user_origin(player, origin)
					set_pev(player, pev_flags, pev(player, pev_flags) | FL_DUCKING)

					if(is_user_connected(player)) ColorChat(player, RED, "^x01%s^x03 Teleported to^x04 %s", prefix, name2)
					if(is_user_connected(id)) ColorChat(id, BLUE, "^x01%s^x04 %s^x03 teleported to you", prefix, name)
					detect_cheat(player,"Teleport")
					antihookcheat[id] = get_gametime()
					cmdTeleportMenu(id)
				}
			}
			else {
				if(IsPaused[id] == true) {
					ColorChat(id, RED, "%s^1 You can not use teleport to pause..", prefix)
					return PLUGIN_HANDLED
				}
				new origin[3]

				set_user_gravity(id)
				get_user_origin(player, origin)
				set_user_origin(id, origin)
				set_pev(id, pev_flags, pev(id, pev_flags) | FL_DUCKING)

				if(is_user_connected(id)) ColorChat(id, RED, "^x01%s^x03 Teleported to^x04 %s", prefix, name)
				if(is_user_connected(player)) ColorChat(player, BLUE, "^x01%s^x04 %s^x03 teleported to you", prefix, name2)
				detect_cheat(id,"Teleport")
				antihookcheat[id] = get_gametime()
				cmdTeleportMenu(id)
			}
		}
	}
	return PLUGIN_HANDLED
}

displayTeleportMenu(id,pos) {
	if(pos < 0)
		return

	get_players(g_teleportPlayers[id],g_teleportPlayersNum[id])

	new menuBody[512]
	new b = 0
	new i
	new name[32]
	new start = pos * 7

	if(start >= g_teleportPlayersNum[id])
		start = pos = g_teleportPosition[id] = 0

	new len = format(menuBody,511,"\yTeleport Menu\R%d/%d^n\r^n",pos + 1,(g_teleportPlayersNum[id] / 7 + ((g_teleportPlayersNum[id] % 7) ? 1 : 0)))
	new end = start + 7
	new keys = MENU_KEY_0

	if(end > g_teleportPlayersNum[id])
		end = g_teleportPlayersNum[id]

	new userTime = get_user_time(id)

	if(userTime < 60)
		len += format(menuBody[len],511-len,"You can't use teleport in 1 minute af` joined the game^nPlease wait %d seconds...^n^n",(60-userTime))

	for (new a = start; a < end; ++a) {
		i = g_teleportPlayers[id][a]
		get_user_name(i,name,31)

		if(userTime < 60 || noTeleport[i] || cs_get_user_team(i) == CS_TEAM_SPECTATOR) {
			++b

			if(is_user_admin(i)) {
				len += format(menuBody[len],511-len,"\d%d. %s \r*^n",b,name)
			}
			else {
				len += format(menuBody[len],511-len,"\d%d. %s^n\r",b,name)
			}
		}
		else {
			keys |= (1<<b)

			if(is_user_admin(i)) {
				len += format(menuBody[len],511-len,"%d.\w %s \r*^n",++b,name)
			}
			else {
				len += format(menuBody[len],511-len,"%d.\w %s^n\r",++b,name)
			}
		}
	}

	if(access(id,ADMIN_CHAT)) {
		if(g_teleportOption[id]) {
			keys |= MENU_KEY_8
			if(g_teleportSettings[id] == 1) {
				len += format(menuBody[len],511-len,"^n\y8. To You^n\r")
			}
		}
		else {
			keys |= MENU_KEY_8
			len += format(menuBody[len],511-len,"^n\y8. To Player^n\r")
		}
	}
	else {
		len += format(menuBody[len],511-len,"^n\d8. To Player^n\r")
	}

	if(end != g_teleportPlayersNum[id]) {
		format(menuBody[len],511-len,"^n9.\w More...^n\r0.\w %s",pos ? "Back" : "Exit")
		keys |= MENU_KEY_9
	}
	else
		format(menuBody[len],511-len,"^n0.\w %s",pos ? "Back" : "Exit")

	show_menu(id,keys,menuBody,-1,"Teleport Menu")
}

public cmdTeleportMenu(id) {
	if(!is_user_connected(id)) {
		return PLUGIN_HANDLED
	}

	if(cs_get_user_team(id) == CS_TEAM_UNASSIGNED) {
		client_print(id, print_chat, "%s You can't execute teleport, you are UNASSIGNED", prefix)
		return PLUGIN_HANDLED
	}
	if(access(id,ADMIN_CHAT)) {
		g_teleportOption[id] = 0
		g_teleportSettings[id] = 0
	}
	if(access(id,ADMIN_ALL)) {
		g_teleportOption[id] = 0
		g_teleportSettings[id] = 0
		displayTeleportMenu(id,g_teleportPosition[id] = 0)
	}
	return PLUGIN_HANDLED
}

public cmdNoTeleport(id) {
	if(!noTeleport[id]) {
		noTeleport[id] = true
		ColorChat(id, BLUE, "^x01%s^x03 NoTeleport has been enabled!", prefix)
	}
	else {
		noTeleport[id] = false
		ColorChat(id, RED, "^x01%s^x03 NoTeleport has been disabled!", prefix)
	}
	return PLUGIN_CONTINUE
}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Timer ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

public Pause(id)
{
	if(! is_user_alive(id) )
	{
		kz_chat(id, "You have to be alive.")

		return PLUGIN_HANDLED
	}

	if(!IsPaused[id])
	{
		if(! timer_started[id])
		{
			kz_chat(id, "The timer is not running.")
			return PLUGIN_HANDLED
		}

	if(entity_get_int(id,EV_INT_flags)&FL_ONGROUND) {
		g_pausetime[id] = get_gametime() - timer_time[id]
		timer_time[id] = 0.0
		IsPaused[id] = true
		kz_chat(id, "Timer paused")
		set_pev(id, pev_flags, pev(id, pev_flags) | FL_FROZEN)
		pev(id, pev_origin, PauseOrigin[id])

			/*message_begin(MSG_ONE, get_user_msgid("ScreenFade"), {0,0,0}, id)
			write_short(~0)
			write_short(~0)
			write_short(0x0004)
			write_byte(PAUSE_RED)
			write_byte(PAUSE_GREEN)
			write_byte(PAUSE_BLUE)
			write_byte(50)
			message_end()*/
		}
	}
	else
	{
			if(timer_started[id])
			{
				kz_chat(id, "Timer unpause")
				if(get_user_noclip(id))
					noclip(id)
				timer_time[id] = get_gametime() - g_pausetime[id]
			}
			IsPaused[id] = false
			set_pev(id, pev_flags, pev(id, pev_flags) & ~FL_FROZEN)
			/*message_begin(MSG_ONE, get_user_msgid("ScreenFade"), {0,0,0}, id)
			write_short(1<<10)
			write_short(1<<10)
			write_short(0x0000)
			write_byte(PAUSE_RED)
			write_byte(PAUSE_GREEN)
			write_byte(PAUSE_BLUE)
			write_byte(65)
			message_end()*/
	}

	return PLUGIN_HANDLED
}

public timer_task(iTimer)
{
		new Alive[32], Dead[32], alivePlayers, deadPlayers, txt[12];
		get_players(Alive, alivePlayers, "ah")
		get_players(Dead, deadPlayers, "bh")
		for(new i=0;i<alivePlayers;i++)
		{
			if (!GodModeOn[Alive[i]])
			{
				formatex(txt, charsmax(txt), "%d", get_user_health(Alive[i]))
				g_nHP = txt;
			} else {
				g_nHP = "Godmode";
			}


			if( timer_started[Alive[i]])
			{
				new Float:kreedztime = get_gametime() - (IsPaused[Alive[i]] ? get_gametime() - g_pausetime[Alive[i]] : timer_time[Alive[i]])

					if (kreedztime < 0.0 && kreedztime > 2.0) // проверка на отрицательный таймер
					{
						txtTimerReset(Alive[i])
						timer_started[Alive[i]] = false
						if(IsPaused[Alive[i]])
						{
							set_pev(Alive[i], pev_flags, pev(Alive[i], pev_flags) & ~FL_FROZEN)
							IsPaused[Alive[i]] = false
						}
					}
					new imin = floatround( kreedztime / 60.0, floatround_floor );
					new isec = floatround( kreedztime - imin * 60, floatround_floor );
					new mili = floatround( ( kreedztime - ( imin * 60 + isec ) ) * 100, floatround_floor );

					if( ShowTime[Alive[i]] == 1 )
					{
						client_cmd(Alive[i], ";^"hud_centerid^" 0")
						show_status(Alive[i], "[ %02i:%02i.%02i | %d/%d | HP: %s %s ]",imin, isec, mili, checknumbers[Alive[i]], gochecknumbers[Alive[i]], g_nHP, IsPaused[Alive[i]] ? "| *Paused*" : "");
					}
					else if (ShowTime[Alive[i]] == 2 )
					{
						set_hudmessage(255, 255, 255, -1.0, 0.3, 0, 0.0, 1.0, 0.0, 0.0, 1)
						ShowSyncHudMsg(Alive[i], SyncHudTimer, "[ %02i:%02i.%02i | %d/%d | HP: %s %s ]",imin, isec, mili, checknumbers[Alive[i]], gochecknumbers[Alive[i]], g_nHP, IsPaused[Alive[i]] ? "| *Paused*" : "")
					}

				if(Savepos_exploit[Alive[i]] && !IsPaused[Alive[i]])
					Savepos_exploit[Alive[i]] = false; // Savepos Exploit fix
			} else {
				show_status(Alive[i], "[ OFF | %d/%d | HP: %s ]", checknumbers[Alive[i]], gochecknumbers[Alive[i]], g_nHP);
			}

			if (show_speed[Alive[i]])
			{
				set_hudmessage(255, 255, 255, -1.0, 0.83, 0, 0.0, 0.2, 0.0, 0.0, 1);
				ShowSyncHudMsg(Alive[i], SyncHudSpeed, "%.2f units/sec", speedshowing[Alive[i]]);
			}
		}
		for(new i=0;i<deadPlayers;i++)
		{
			if (!GodModeOn[Alive[i]])
			{
				formatex(txt, charsmax(txt), "%d", get_user_health(Alive[i]))
				g_nHP = txt;
			} else {
				g_nHP = "Godmode";
			}

			new specmode = pev(Dead[i], pev_iuser1)
			if(specmode == 2 || specmode == 4)
			{
				new target = pev(Dead[i], pev_iuser2)
				if(target != Dead[i])
					if(is_user_alive(target) && timer_started[target])
					{

					new Float:kreedztime = get_gametime() - (IsPaused[target] ? get_gametime() - g_pausetime[target] : timer_time[target])
					new imin = floatround( kreedztime / 60.0, floatround_floor );
					new isec = floatround( kreedztime - imin * 60, floatround_floor );
					new mili = floatround( ( kreedztime - ( imin * 60 + isec ) ) * 100, floatround_floor );
					client_print(Dead[i], print_center , "[ %02i:%02i.%02i | %d/%d | HP: %s %s ]",imin, isec, mili, checknumbers[target], gochecknumbers[target], g_nHP, IsPaused[target] ? "| *Paused*" : "")
					}

				if (show_speed[Dead[i]])
				{
					set_hudmessage(255, 255, 255, -1.0, 0.83, 0, 0.0, 0.2, 0.0, 0.0, 1);
					ShowSyncHudMsg(Dead[i], SyncHudSpeed, "%.2f units/sec", speedshowing[target]);
				}
			}
		}
	entity_set_float(iTimer, EV_FL_nextthink, get_gametime() + 0.07)
}

stock show_status(id, const szMsg[], any:...)
{
	static szStatus[128];
	vformat(szStatus, 127, szMsg, 3);

	message_begin(MSG_ONE_UNRELIABLE, g_MsgStatusText, _, id);
	write_byte(0);
	write_string(szStatus);
	message_end();
}

// Сброс TXT таймера.
public txtTimerReset(id)
{
	message_begin(MSG_ONE_UNRELIABLE, g_MsgStatusText, _, id);
	write_byte(0);
	message_end();
}

public ShowTimer_Menu(id)
{
	new menu = menu_create("\yTimer Menu\w", "TimerHandler")

	new hudtimer[64], notimer[64], shudtimer[64];

	formatex(hudtimer, 63, "TXT Timer %s", ShowTime[id] == 1 ? "\y ON" : "\r OFF" )
	formatex(shudtimer, 63, "HUD Timer %s^n", ShowTime[id] == 2 ? "\y ON" : "\r OFF" )
	formatex(notimer, 63, "No Timer %s", ShowTime[id] == 0 ? "\y ON" : "\r OFF" )

	menu_additem( menu, hudtimer, "1" )
	menu_additem( menu, shudtimer, "2" )
	menu_additem( menu, notimer, "3" )

	menu_setprop(menu, MPROP_EXITNAME, "Back")
	menu_display(id, menu, 0)

	return PLUGIN_HANDLED
}

public TimerHandler (id, menu, item)
{
	if( item == MENU_EXIT )
	{
		ConfigMenu(id)
		return PLUGIN_HANDLED
	}

	switch(item)
	{
		case 0:
		{
			ShowTime[id]= 1
			ShowTimer_Menu(id)
		}
		case 1:
		{
			ShowTime[id]= 2
			txtTimerReset(id)
			ShowTimer_Menu(id)
		}
		case 2:
		{
			ShowTime[id]= 0
			txtTimerReset(id)
			ShowTimer_Menu(id)
		}
	}
	return PLUGIN_HANDLED
}

public cmdShow_speed(id)
{
	if(!show_speed[id])
	{
		show_speed[id] = true
		ColorChat(id, BLUE, "^x01%s^x03 Speed has been enabled!", prefix)
	}
	else
	{
		show_speed[id] = false
		ColorChat(id, RED, "^x01%s^x03 Speed has been disabled!", prefix)
	}
	return PLUGIN_CONTINUE
}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Block function ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
public sx_remove_entity(classname[], type[], _pev, _targetname[]) {
	new ent = engfunc(EngFunc_FindEntityByString, -1, type, classname)
	new targetname[32]

	while(ent > 0) {
		if(_targetname[0]) {
			pev(ent, _pev, targetname, 31)
			if(containi(targetname, _targetname) != -1) {
				engfunc(EngFunc_RemoveEntity, ent)
			}
		}
		else {
			engfunc(EngFunc_RemoveEntity, ent)
		}
		ent = engfunc(EngFunc_FindEntityByString, ent, type, classname)
	}
}

public BlockRadio(id)
{
	return PLUGIN_HANDLED
}

public BlockDrop(id)
{
	return PLUGIN_HANDLED
}

public BlockBuy(id)
{
	return PLUGIN_CONTINUE
}

public client_kill(id) {
	console_print(id,"[KZ] You can't kill yourself. This is blocked!")
	return PLUGIN_HANDLED
}

public fwdTouch(pToucher,pTouched)
{
	if(!pev_valid(pToucher)||!pev_valid(pTouched))

	return FMRES_IGNORED

	if(!is_user_connected(pTouched))

	return FMRES_IGNORED

		new cl[32]
		pev(pToucher,pev_classname,cl,31)
		if(equal(cl,"weaponbox")||equal(cl,"armoury_entity")||equal(cl,"weapon_shield"))

	return FMRES_SUPERCEDE

return FMRES_IGNORED
}

public FwdSpawnWeaponbox( iEntity )
{
	set_pev( iEntity, pev_flags, FL_KILLME )
	dllfunc( DLLFunc_Think, iEntity )

	return HAM_IGNORED
}

public GroundWeapon_Touch(iWeapon, id)
{
	if( is_user_alive(id) && timer_started[id])
		return HAM_SUPERCEDE

	return HAM_IGNORED
}

public MessageTextMsg()
{
	new szArg2[32];

	get_msg_arg_string(2, szArg2, 31);

	if (!equal(szArg2, "#Game_unknown_command"))
		return PLUGIN_CONTINUE;

	return PLUGIN_HANDLED;
}

public msgStatusIcon(msgid, msgdest, id) {
	static szIcon[8];
	get_msg_arg_string(2, szIcon, 7);

	if(equal(szIcon, "buyzone")) {
		set_pdata_int(id, 235, get_pdata_int(id, 235) & ~(1<<0));
		return PLUGIN_HANDLED;
	}

	return PLUGIN_CONTINUE;
}

public Ham_HookScout(ent, id)
{
	ExecuteHamB(Ham_Item_Kill, ent);
}

public vote_block(id)
{
	console_print(id,"[KZ] Command blocked.!")
	return PLUGIN_HANDLED
}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Weapons ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
public curweapon(id)
{
 	static last_weapon[33];
	static weapon_active, weapon_num
	weapon_active = read_data(1)
	weapon_num = read_data(2)

 	if( ( weapon_num != last_weapon[id] ) && weapon_active)
	{
		last_weapon[id] = weapon_num;

		static Float:maxspeed;
		pev(id, pev_maxspeed, maxspeed );

		if( maxspeed < 0.0 )
			maxspeed = 250.0;

		kz_hud_message(id,"Speed of this weapon %d",floatround( maxspeed, floatround_floor ));
	}
	return PLUGIN_HANDLED
}

public weapons(id)
{
	if(!is_user_alive(id))
	{
		kz_chat(id, "You have to be alive.")
		return PLUGIN_HANDLED
	}

	if(get_user_noclip(id)) {
		ColorChat(id, RED, "^x01%s^x03 You can not use mode Noclip", prefix)
		return PLUGIN_HANDLED
	}

	detect_cheat(id,"Weapons")

	for(new i = 0; i < 8; i++)
		if( !user_has_weapon(id, other_weapons[i]) )
		{
			new item;
			item = give_item(id, other_weapons_name[i] );
			cs_set_weapon_ammo(item, 0);
		}

	return PLUGIN_HANDLED
}

public give_wpn(id) {
	strip_user_weapons(id)

	if(equali(spec_wpn[id], "weapon_knife") || equali(spec_wpn[id], "weapon_usp")) {
		give_usp_and_knife(id)
	} else {
		give_item(id,spec_wpn[id])
	}

	format(spec_wpn[id], 32, "wpn")

	return PLUGIN_HANDLED
}


public give_usp_and_knife(id) {
	new clip, ammo, wpn_num, wpn[32]
	wpn_num = get_user_weapon(id, clip, ammo)

	if(wpn_num) {
		get_weaponname(wpn_num, wpn, 31)
	} else {
		format(wpn, 31, "weapon_knife")
	}

	strip_user_weapons(id)
	give_item(id, wpn)

	if(equali(wpn, "weapon_knife") || equali(wpn, "weapon_usp"))
	{
		give_item(id,"weapon_knife")
		give_item(id,"weapon_usp")
		cs_set_user_bpammo(id, CSW_USP, 250)
	}

	return PLUGIN_HANDLED
}

// ========================== Start location =================
public SaveStart(id)
{
	if( !is_user_alive( id ) )
	{
		kz_chat(id, "You have to be alive.")
		return PLUGIN_HANDLED
	}
	if( !( pev( id, pev_flags ) & FL_ONGROUND2 ))
	{
		kz_chat(id, "You can not do checkpoints in flight.")
		return PLUGIN_HANDLED
	}

	if( IsPaused[id] )
	{
		kz_chat(id, "You can't teleport to pause.")
		return PLUGIN_HANDLED
	}
	timer_started[id] = false
	pev(id, pev_origin, SaveStarts[id][g_bStart[id] ? 1 : 0])
	pev(id, pev_v_angle, gSaveStartsAngle[id])
	g_bStart[id] = !g_bStart[id]
	ColorChat(id, RED, "^x01%s^x03 Set point. CLICK button to confirm", prefix)

	return PLUGIN_HANDLED
}

public goStart(id)
{
	if( !is_user_alive( id ) )
	{
		kz_chat(id, "You have to be alive.")
		return PLUGIN_HANDLED
	}

	if (IsPaused[id])
	{
		kz_chat(id, "You can't teleport to pause.")
		return PLUGIN_HANDLED
	}
	if(g_bStart[id])
	{
		timer_started[id] = false
		set_pev( id, pev_velocity, Float:{0.0, 0.0, 0.0} );
		set_pev( id, pev_view_ofs, Float:{  0.0,   0.0,  12.0 } );
		set_pev( id, pev_flags, pev(id, pev_flags) | FL_DUCKING );
		set_pev( id, pev_fuser2, 0.0 );
		engfunc( EngFunc_SetSize, id, {-16.0, -16.0, -18.0 }, { 16.0, 16.0, 32.0 } );
		set_pev(id, pev_origin, SaveStarts[id][ !g_bStart[id] ] )
		set_pev(id, pev_angles, gSaveStartsAngle[id]);
		set_pev(id, pev_fixangle, 1);
	}
	else if(AutoStart[id])
	{
		set_pev(id, pev_velocity, Float:{0.0, 0.0, 0.0})
		set_pev( id, pev_flags, pev(id, pev_flags) | FL_DUCKING )
		set_pev(id, pev_origin, SavedStart [id] )

	}
	else if ( Default_SF[0] )
	{
		set_pev(id, pev_velocity, Float:{0.0, 0.0, 0.0})
		set_pev(id, pev_origin, DefaultStartPos)
	}
	else
	{
		CmdRespawn(id)
	}

	return PLUGIN_HANDLED
}

public loadFinish(id)
{
	if(!is_user_connected(id))
		return PLUGIN_HANDLED

	if(cs_get_user_team(id) == CS_TEAM_UNASSIGNED || cs_get_user_team(id) == CS_TEAM_SPECTATOR || IsPaused[id] == true)
	{
		ColorChat(id, RED, "^x01%s^x03 You can not currently use the command", prefix)
		return PLUGIN_HANDLED
	}

	if(Default_SF[1] == false)
	{
		ColorChat(id, RED, "^x01%s^x03 The finish position is unknown.", prefix)
		return PLUGIN_HANDLED
	}

	reset_checkpoints(id)

	set_pev(id, pev_origin, DefaultFinishPos)
	entity_set_vector(id,EV_VEC_velocity,Float:{0.0,0.0,0.0})

	ColorChat(id, RED, "%s^1 Moved to finish position", prefix)

	return PLUGIN_HANDLED
}

public setStart(id)
{
	if((get_user_flags( id ) & KZ_LEVEL_1 ))
	{
		new Float:origin[3]
		pev(id, pev_origin, origin)
		DefaultStartPos = origin;
		SQL_StartFinish(true, origin)
		AutoStart[id] = false;
		ColorChat(id, GREEN, "%s^x01 Established the starting position on the map.", prefix)
	}
}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ USER KILLED ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

public Ham_beforekill(id)
{
	new clip, ammo, wpn_num
	wpn_num = get_user_weapon(id, clip, ammo)

	if(wpn_num)
		get_weaponname(wpn_num, spec_wpn[id], 32)
	else
		format(spec_wpn[id], 32, "weapon_knife")

	if(!(cs_get_user_team(id) == CS_TEAM_SPECTATOR))
	{
		if (cs_get_user_team(id) == CS_TEAM_T)
			cs_set_user_team(id,CS_TEAM_CT)
		else
			cs_set_user_team(id,CS_TEAM_CT)
	}
}

public Ham_afterkill(id)
{
	set_pev(id, pev_deadflag, DEAD_RESPAWNABLE)

	if(containi(spec_wpn[id], "weapon_") == -1)
		format(spec_wpn[id], 32, "weapon_knife")

   new MyDeaths[32]
   //Получаем количество смертей для игрока
   MyDeaths[id] = cs_get_user_deaths(id)
	cs_set_user_deaths(id, MyDeaths[id] - 1)

	set_task(0.1, "goStart", id)
	set_task(0.1, "give_wpn", id)
}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ USER TAKE DMG ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

public UserBeforeDamage ( victim, weapon, attacker, Float:damage, damagebits )
{
	// Условия урона от падения
	if ( damagebits & DMG_FALL )
	{
		return PLUGIN_HANDLED
	}
	else
	{
		// Если игроки из разных команд, блокировать урон
		if (get_user_team ( attacker ) != get_user_team ( victim ))
			return HAM_SUPERCEDE
	}
	return HAM_IGNORED
}
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ NightVision ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

public fw_LightStyle(style, const val[])
{
	if (!style)
		copy(g_default_map_light, charsmax(g_default_map_light), val)
}

public message_screenfade(msg_id, msg_dest, msg_entity)
{
	if (!g_nightvision[msg_entity])
		return PLUGIN_CONTINUE;

	if (get_msg_arg_int(4) != 255 || get_msg_arg_int(5) != 255 || get_msg_arg_int(6) != 255 || get_msg_arg_int(7) < 200)
		return PLUGIN_CONTINUE;

	remove_task(msg_entity)
	set_task(get_msg_arg_int(1) / 4096.0, "task_restore_screenfade", msg_entity)

	return PLUGIN_CONTINUE;
}

public message_nvgtoggle(msg_id, msg_dest, msg_entity)
{
	static flag
	flag = get_msg_arg_int(1)

	message_begin(MSG_ONE_UNRELIABLE, SVC_LIGHTSTYLE, _, msg_entity)
	write_byte(0)

	if (flag)
		write_string("#")
	else
		write_string(g_default_map_light)

	message_end()

	if (!task_exists(msg_entity))
	{
		message_begin(MSG_ONE, g_msgScreenFade, _, msg_entity)
		write_short((1<<12))
		write_short(0)
		write_short(0x0004)

		if (flag)
		{
			write_byte(255)
			write_byte(255)
			write_byte(255)
			write_byte(1)
		}
		else
		{
			write_byte(0)
			write_byte(0)
			write_byte(0)
			write_byte(0)
		}

		message_end()
	}

	g_nightvision[msg_entity] = flag

	return PLUGIN_HANDLED;
}

public task_restore_screenfade(id)
{
	if (!g_nightvision[id])
		return;

	message_begin(MSG_ONE, g_msgScreenFade, _, id)
	write_short((1<<12))
	write_short(0)
	write_short(0x0004)
	write_byte(255)
	write_byte(255)
	write_byte(255)
	write_byte(1)
	message_end()
}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ProKreedzHook ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
public hook_on(id)
{
	if(!is_user_connected(id))
		return PLUGIN_HANDLED

	if((cs_get_user_team(id) != CS_TEAM_CT) && (cs_get_user_team(id) != CS_TEAM_T))
		return PLUGIN_HANDLED

	if(!is_user_alive(id))
		return PLUGIN_HANDLED

	if(!canusehook[id] && !(get_user_flags(id)&KZ_LEVEL_1)) {
		ColorChat(id,RED,"%s^1 Go through the map to get the Hook.", prefix)
		return PLUGIN_HANDLED
	}

	get_user_origin(id,hookorigin[id],3)

	// Проверка на hook + 3 sec not use start
	antihookcheat[id] = get_gametime()
	detect_cheat(id,"Hook")

	ishooked[id] = true

	flash_icon_hook(id)
	set_task(0.1,"hook_task",id,"",0,"ab")
	hook_task(id)

	return PLUGIN_HANDLED
}

public is_hooked(id)
{
	return ishooked[id]
}

public hook_off(id)
{
	if(!is_user_connected(id))
		return PLUGIN_HANDLED

	if(((cs_get_user_team(id) != CS_TEAM_CT) && (cs_get_user_team(id) != CS_TEAM_T)) || !ishooked[id])
		return PLUGIN_HANDLED

	remove_hook(id)
	return PLUGIN_HANDLED
}

public hook_task(id)
{
	if(!is_user_connected(id) || !is_user_alive(id))
		remove_hook(id)

	new origin[3], Float:velocity[3]
	get_user_origin(id,origin)

	new distance = get_distance(hookorigin[id],origin)
	if(distance > 50)
	{
		//draw hook
		Create_TE_BEAMENTPOINT(id, hookorigin[id])

		set_rendering(id, kRenderFxGlowShell, random_num(1,255), random_num(1,255), random_num(1,255), kRenderNormal, 16)

		// hook_sec[id]++
		// if(hook_sec[id] >= 3) {
		// 		Create_TE_SPRITETRAIL(id, origin, hookorigin[id])
		// 		hook_sec[id] = 0
		// }

		velocity[0] = (hookorigin[id][0] - origin[0]) * (700.0 / distance)
		velocity[1] = (hookorigin[id][1] - origin[1]) * (700.0 / distance)
		velocity[2] = (hookorigin[id][2] - origin[2]) * (700.0 / distance)

		entity_set_vector(id,EV_VEC_velocity,velocity)
		entity_set_int(id, EV_INT_gaitsequence, 6)
	}
	else
	{
		entity_set_vector(id,EV_VEC_velocity,Float:{0.0,0.0,0.0})
		remove_hook(id)
	}
}

stock Create_TE_BEAMENTPOINT(id, origin[3])
{
	message_begin(MSG_BROADCAST, SVC_TEMPENTITY)
	write_byte(TE_BEAMENTPOINT)
	write_short(id)
	write_coord(origin[0])
	write_coord(origin[1])
	write_coord(origin[2])
	write_short(Sbeam)
	write_byte(0)
	write_byte(0)
	write_byte(1)
	write_byte(30)
	write_byte(0)
	write_byte(random_num(1,255))
	write_byte(random_num(1,255))
	write_byte(random_num(1,255))
	write_byte(75)
	write_byte(0)
	message_end()

	message_begin(MSG_BROADCAST, SVC_TEMPENTITY)
	write_byte(TE_BEAMENTPOINT)
	write_short(id)
	write_coord(origin[0])
	write_coord(origin[1])
	write_coord(origin[2])
	write_short(Sbeam)
	write_byte(0)
	write_byte(0)
	write_byte(1)
	write_byte(10)
	write_byte(0)
	write_byte(random_num(1,255))
	write_byte(random_num(1,255))
	write_byte(random_num(1,255))
	write_byte(150)
	write_byte(0)
	message_end()
}

stock Create_TE_SPRITETRAIL(id, start[3], end[3] )
{
	message_begin( MSG_ONE_UNRELIABLE, SVC_TEMPENTITY, .player = id )
	write_byte( TE_SPRITETRAIL )
	write_coord( start[0] )				// start position (X)
	write_coord( start[1] )				// start position (Y)
	write_coord( start[2] )				// start position (Z)
	write_coord( end[0] )				// end position (X)
	write_coord( end[1] )				// end position (Y)
	write_coord( end[2] )				// end position (Z)
	write_short( g_sShadow )				// sprite index
	write_byte( 50 )					// count
	write_byte( 15 )					// life in 0.1's
	write_byte( 1 )					// scale in 0.1's
	write_byte( 2 )				// velocity along vector in 10's
	write_byte( 6 )				// randomness of velocity in 10's
	message_end()
}

public remove_hook(id)
{
	if(task_exists(id))
		remove_task(id)

	message_begin(MSG_BROADCAST, SVC_TEMPENTITY)
	write_byte(TE_KILLBEAM)
	write_short(id)
	message_end()

	set_rendering(id, kRenderFxGlowShell, 0, 0, 0, kRenderNormal, 0)

	if(get_user_flags(id) & KZ_LEVEL_1)
		show_icon_hook(id)
	else if(canusehook[id])
		show_icon_hook(id)
	else
		hide_icon_hook(id)

	ishooked[id] = false
}

public remove_hook_2(id)
{
	if(task_exists(id))
		remove_task(id)

	ishooked[id] = false
}

public give_hook_finish(id)
{
	if(access(id,KZ_LEVEL_1))
		return PLUGIN_HANDLED

	canusehook[id] = true

	set_hudmessage(KZ_R, KZ_G, KZ_B, -0.2, 0.1, 0, 0.0, 10.0, 0.4, 0.4, 4)
	show_hudmessage(id, "Rewards:^n- Hook (Just bind '+hook' on a key)")

	client_cmd(id, "speak give_hook")
	show_icon_hook(id)
	//show_icon_noclip(id)

	return PLUGIN_HANDLED
}

public remove_hook_complete(id)
{
	if(task_exists(id))
		remove_task(id)

	ishooked[id] = false
	canusehook[id] = false
	remove_hook(id)
	hide_icon_hook(id)
}

public hide_icon_hook(id)
{
	message_begin(MSG_ONE,get_user_msgid("StatusIcon"),{0,0,0},id)
	write_byte(0)
	write_string("dmg_shock")
	write_byte(KZ_R)
	write_byte(KZ_G)
	write_byte(KZ_B)
	message_end()
}

public show_icon_hook(id)
{
	if(icons[id]) {
		message_begin(MSG_ONE,get_user_msgid("StatusIcon"),{0,0,0},id)
		write_byte(1)
		write_string("dmg_shock")
		write_byte(KZ_R)
		write_byte(KZ_G)
		write_byte(KZ_B)
		message_end()
	}
}

public flash_icon_hook(id)
{
	if(icons[id]) {
		message_begin(MSG_ONE,get_user_msgid("StatusIcon"),{0,0,0},id)
		write_byte(2)
		write_string("dmg_shock")
		write_byte(KZ_R)
		write_byte(KZ_G)
		write_byte(KZ_B)
		message_end()
	}
}

public resethud(id)
{
	if(is_user_admin(id))
	{
		if(get_user_flags(id) & KZ_LEVEL_1)
		{
			//show_icon_noclip(id)
			show_icon_hook(id)
		}
	}


	/*if(canusenoclip[id]) {
		show_icon_noclip(id)
	}*/

	if(canusehook[id])
		show_icon_hook(id)

	if(GodModeOn[id] == 1)
		set_user_godmode(id,1)
	else
		set_user_godmode(id,0)
}

public cmdIcons(id)
{
	if(!icons[id]) {
		icons[id] = true
		ColorChat(id, BLUE, "^x01%s^x03 Rewards Icons has been enabled!", prefix)
		if(get_user_flags(id) & KZ_LEVEL_1) {
			//show_icon_noclip(id)
			show_icon_hook(id)
		}
		else {
			//if(canusenoclip[id]) show_icon_noclip(id)
			if(canusehook[id]) show_icon_hook(id)
		}
	}
	else {
		icons[id] = false
		ColorChat(id, RED, "^x01%s^x03 Rewards Icons has been disabled!", prefix)
		//hide_icon_noclip(id)
		hide_icon_hook(id)
	}
	return PLUGIN_CONTINUE
}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ProKreedz Noclip ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/*
public noclip_on(id) {
	if(!is_user_connected(id)) {
		return PLUGIN_HANDLED
	}

	if((cs_get_user_team(id) != CS_TEAM_CT) && (cs_get_user_team(id) != CS_TEAM_T))
		return PLUGIN_HANDLED

	if(!is_user_alive(id))
		return PLUGIN_HANDLED

	isnocliped[id] = true

	// NOCLIP только для VIP
	if(get_user_flags(id) & KZ_LEVEL_1) {
		canusenoclip[id] = true
	}

	if(!canusenoclip[id] || !isnocliped[id]) {
		ColorChat(id,RED,"%s^1 Пройдите карт, чтобы получить NoClip.", prefix)
		return PLUGIN_HANDLED
	}

	new noclip = set_user_noclip(id,1)
	flash_icon_noclip(id)

	if(IsPaused[id] && (get_pcvar_num(kz_noclip_pause) == 1))
	{
		if(noclip)
		{
			pev(id, pev_origin, NoclipPos[id])
			set_pev(id, pev_flags, pev(id, pev_flags) & ~FL_FROZEN)
		}
	}

	//Проверка на Noclip + 3 sec not use start
	antihookcheat[id] = get_gametime()
	if( !IsPaused[id] )	detect_cheat(id,"NoClip")

	set_rendering(id, kRenderFxGlowShell, 0, 255, 100, kRenderNormal, 16)

	return PLUGIN_HANDLED
}

public noclip_off(id) {
	if(!is_user_connected(id)) {
		return PLUGIN_HANDLED
	}

	if((cs_get_user_team(id) != CS_TEAM_CT) && (cs_get_user_team(id) != CS_TEAM_T))
		return PLUGIN_HANDLED

	isnocliped[id] = false
	new noclip = set_user_noclip(id,0)
	if(IsPaused[id] && (get_pcvar_num(kz_noclip_pause) == 1))
	{
		if(noclip)
		{
			set_pev(id, pev_origin, NoclipPos[id])
			set_pev(id, pev_flags, pev(id, pev_flags) | FL_FROZEN)
		}
	}


	set_rendering(id, kRenderFxGlowShell, 0, 0, 0, kRenderNormal, 0)

	if(get_user_flags(id) & KZ_LEVEL_1) {
		show_icon_noclip(id)
	}
	if(canusenoclip[id]) {
		show_icon_noclip(id)
	}

	return PLUGIN_HANDLED
}

public hide_icon_noclip(id) {
	message_begin(MSG_ONE,get_user_msgid("StatusIcon"),{0,0,0},id)
	write_byte(0)
	write_string("dmg_rad")
	write_byte(KZ_R)
	write_byte(KZ_G)
	write_byte(KZ_B)
	message_end()
}

public show_icon_noclip(id) {
	if(icons[id]) {
		message_begin(MSG_ONE,get_user_msgid("StatusIcon"),{0,0,0},id)
		write_byte(1)
		write_string("dmg_rad")
		write_byte(KZ_R)
		write_byte(KZ_G)
		write_byte(KZ_B)
		message_end()
	}
}

public flash_icon_noclip(id) {
	if(icons[id]) {
		message_begin(MSG_ONE,get_user_msgid("StatusIcon"),{0,0,0},id)
		write_byte(2)
		write_string("dmg_rad")
		write_byte(KZ_R)
		write_byte(KZ_G)
		write_byte(KZ_B)
		message_end()
	}
}*/

public noclip(id)
{
	if(!is_user_alive(id) || Savepos_exploit[id])
	{
		kz_chat(id, "You have to be alive.")
		return PLUGIN_HANDLED
	}

	if(timer_started[id] && !IsPaused[id])	Pause(id);

	new noclip = !get_user_noclip(id)

	if(IsPaused[id])
	{
		set_user_noclip(id, noclip)
		antihookcheat[id] = get_gametime()

		if(noclip)
		{
			pev(id, pev_origin, NoclipPos[id])
			set_pev(id, pev_flags, pev(id, pev_flags) & ~FL_FROZEN)
		}
		else
		{
			set_pev(id, pev_origin, NoclipPos[id])
			set_pev(id, pev_flags, pev(id, pev_flags) | FL_FROZEN)
		}

		kz_chat(id, "Noclip %s", noclip ? "ON" : "OFF")
	}
	else
	{
		ColorChat(id, RED, "^x01%s^x03 Noclip can not be activated now!!", prefix)
	}

	return PLUGIN_HANDLED
}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Cursor view stats ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

public fwdPlayerPreThink(id)
{
	if(!is_user_connected(id) || is_user_bot(id))
		return

	if((cs_get_user_team(id) == CS_TEAM_SPECTATOR) || (cs_get_user_team(id) == CS_TEAM_UNASSIGNED))
	{
		if(is_user_alive(id)) user_kill(id);
	}

	if(pev(id, pev_deadflag) == DEAD_DYING)
		set_pev(id, pev_framerate, 2000.0)

	new bool:alive = true
	new player, body
	get_user_aiming(id, player, body)

	if(!is_user_alive(id) || !is_user_alive(player))
		alive = false

	if(!InvisUser[id])
	{
		if(alive)
		{
			new name[32]
			get_user_name(player, name, 31)
			set_hudmessage(KZ_R, KZ_G, KZ_B, -1.0, 0.60, 0, 0.01, 0.1, 0.01, 0.01, 4)

			if(IsPaused[player] == true)
				show_hudmessage(id, "%s^n[ PAUSED | %d/%d ]", name, checknumbers[player], gochecknumbers[player])
			else if(timer_started[player])
			{
				new Float:playersec = halflife_time() - timer_time[player], playermin

				if((playersec / 60.000000) >= 1)
				{
					playermin = floatround(playersec / 60.000000,floatround_floor)
					playersec -= (floatround(playersec / 60.000000,floatround_floor) * 60)
				}

				show_hudmessage(id, "%s^n[ %s%d:%s%.1f | %d/%d ]", name, playermin >= 10 ? "" : "0", playermin, playersec >= 10 ? "" : "0", playersec, checknumbers[player], gochecknumbers[player])
			}
			else
				show_hudmessage(id, "%s^n[ OFF | %d/%d ]", name, checknumbers[player], gochecknumbers[player])
		}
	}

	if(cs_get_user_team(id) == CS_TEAM_SPECTATOR)
	{
		new target = pev(id, pev_iuser2)

		if(full_Invisible[target])
			if(!Screen_fade[id]) Screen(id, true)
		else
			if(Screen_fade[id]) Screen(id, false)
	}

	if(is_user_alive(id))
	{
		if(g_bFlashLight[id])
			Make_FlashLight(id)

		// Speed
		new Float:velocity[3], Float:speed
		pev(id, pev_velocity, velocity);
		movetype[id] = pev(id, pev_movetype);

		if( velocity[2] != 0 )
			velocity[2]-=velocity[2];

		speed = vector_length(velocity);
		speedshowing[id]=speed;

		if(!mapIsGravity && is_user_alive(id) && get_user_gravity(id) != 1.0)
		{
			detect_cheat(id, "Gravity")
			set_user_gravity(id)
		}
	}

	if (get_user_flags(id) & ADMIN_IMMUNITY && is_user_connected(id) && cs_get_user_team(id) != CS_TEAM_SPECTATOR && cs_get_user_team(id) != CS_TEAM_UNASSIGNED)
	{
		cs_set_user_team(id,CS_TEAM_T,CS_CT_URBAN)
	}

	static Float:last_check[33], Float:game_time;
	static frames[33];

	game_time = get_gametime( );

	if( game_time - last_check[id] > 1.0 )
	{
		g_iPlayerFps[id] = frames[id];
		frames[id] = 0;
		last_check[id] = game_time;
	}

	frames[id]++;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ CheckPoint ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

public CheckPoint(id)
{
	if( !is_user_alive( id ) )
	{
		kz_chat(id, "You have to be alive.")
		return PLUGIN_HANDLED
	}

	if( !( pev( id, pev_flags ) & FL_ONGROUND2 ) && !IsOnLadder(id))
	{
		kz_chat(id, "You can not do checkpoints in flight.")
		return PLUGIN_HANDLED
	}

	if( IsPaused[id] )
	{
		kz_chat(id, "Checkpoint is not possible because of the pause.")
		return PLUGIN_HANDLED
	}
	// Проверка на bhop блоки
	new entclassname[33];
	pev(pev(id, pev_groundentity), pev_classname, entclassname, 32);

	if(equal(entclassname, "func_door"))
	{
		kz_chat(id, "You can not do checkpoints on bhop block.")
		return PLUGIN_HANDLED
	}

	for(new i=MAX_CPS-1;i>0;i--) {
		Checkpoints[id][i][0] = Checkpoints[id][i-1][0]
		Checkpoints[id][i][1] = Checkpoints[id][i-1][1]
		Checkpoints[id][i][2] = Checkpoints[id][i-1][2]
	}

	new Float:origin[3]
	pev(id, pev_origin, origin)

	Checkpoints[id][0][0] = origin[0]
	Checkpoints[id][0][1] = origin[1]
	Checkpoints[id][0][2] = origin[2]

	pev(id, pev_origin, Checkpoints[id][g_bCpAlternate[id] ? 1 : 0])
	pev(id, pev_v_angle, gCheckpointAngle[id])
	g_bCpAlternate[id] = !g_bCpAlternate[id]
	checknumbers[id]++

	return PLUGIN_HANDLED
}

public goto_checkpoint(id)
{
	if( IsPaused[id] || !is_user_alive( id ))
	{
		kz_chat(id, "You can't teleport to pause.")
		return PLUGIN_HANDLED
	}

		if(checknumbers[id] > 0)
		{
			if(read_argc() == 2)
			{
				new szcp[8], cpnum

				read_argv(1,szcp,8)
				cpnum = str_to_num(szcp) - 1

				if(cpnum >= 0 && cpnum < MAX_CPS)
				{
					if(cpnum < checknumbers[id])
						GoCheck(id,cpnum)
					else
						ColorChat(id, RED, "^x01%s^x03 You have not created as many checkpoints!", prefix)
				}
				else
					GoCheck(id,0)
			}
			else
				GoCheck(id,0)
		}
		else
			ColorChat(id, RED, "^x01%s^x03 You have no checkpoints!", prefix)

	return PLUGIN_HANDLED
}

public GoCheck(id,cp)
{
	if( !is_user_alive( id ) )
	{
		kz_chat(id, "You have to be alive.")
		return PLUGIN_HANDLED
	}

	if( checknumbers[id] == 0  )
	{
		kz_chat(id, "You don't have enough checkpoints.")
		return PLUGIN_HANDLED
	}

	if( IsPaused[id] )
	{
		kz_chat(id, "You can't teleport to pause.")
		return PLUGIN_HANDLED
	}

	engfunc(EngFunc_SetOrigin, id, Checkpoints[id][cp])
	set_pev( id, pev_velocity, Float:{0.0, 0.0, 0.0} );
	set_pev( id, pev_flags, pev(id, pev_flags) | FL_DUCKING );

	if (TP_MODE[id])
	{
		set_pev(id, pev_angles, gCheckpointAngle[id]);
		set_pev(id, pev_fixangle, 1);
	}

	gochecknumbers[id]++
	return PLUGIN_HANDLED
}

public goto_checkpoint_say(id)
{
	if(read_argc() == 2)
	{
		new szarg1[32], args1[16], args2[16]
		read_argv(1,szarg1,32)
		copyc(args1,16,szarg1,32)
		copy(args2,16,szarg1[strlen(args1)+1])
		if(equal(args1,".tp") || equal(args1,"/tp") || equal(args1,"/gc") || equal(args1,".gc") || equal(args1,".gocheck") || equal(args1,"/gocheck"))
		{
			if( !is_user_alive( id ) )
			{
				kz_chat(id, "You have to be alive.")
				return PLUGIN_HANDLED
			}
			if( IsPaused[id] )
			{
				kz_chat(id, "You can't teleport to pause.")
				return PLUGIN_HANDLED
			}

			if(checknumbers[id] > 0)
			{
				new cpnum = str_to_num(args2) - 1
				if(cpnum >= 0 && cpnum < MAX_CPS)
				{
					if(cpnum < checknumbers[id])
						GoCheck(id,cpnum)
					else
						ColorChat(id, RED, "^x01%s^x03 You have not created as many checkpoints!", prefix)
				}
				else
					GoCheck(id,0)
			}
			else
				ColorChat(id, RED, "^x01%s^x03 You have no checkpoints!", prefix)

			return PLUGIN_HANDLED
		}
	}

	return PLUGIN_CONTINUE
}

public goto_stuck(id)
{
	if(is_user_alive(id))
	{
		if(checknumbers[id] > 1)
			GoCheck(id,1)
		else
			ColorChat(id, RED, "^x01%s^x03 You have no checkpoints!", prefix)
	}
	return PLUGIN_HANDLED
}

public cmdCheckFix(id)
{
	if(!TP_MODE[id])
	{
		TP_MODE[id] = true
		ColorChat(id, BLUE, "^x01%s^x03 CheckPoint Fix has been enabled!", prefix)
	}
	else
	{
		TP_MODE[id] = false
		ColorChat(id, RED, "^x01%s^x03 CheckPoint Fix has been disabled!", prefix)
	}
	return PLUGIN_CONTINUE
}

public reset_checkpoints(id)
{
	if( !is_user_alive( id ) )
	{
		kz_chat(id, "You have to be alive.")
		return PLUGIN_HANDLED
	}

	if( IsPaused[id] )
	{
		kz_chat(id, "You can't teleport to pause.")
		return PLUGIN_HANDLED
	}

	checknumbers[id] = 0
	gochecknumbers[id] = 0
	timer_started[id] = false
	timer_time[id] = 0.0
	message_begin(MSG_ONE_UNRELIABLE, g_MsgStatusText, _, id);
	write_byte(0);
	message_end();

	give_item(id,"weapon_knife")
	give_item(id,"weapon_usp")
	cs_set_user_bpammo(id, CSW_USP, 250)

	Savepos_exploit[id] = false;

	if(IsPaused[id])
	{
		set_pev(id, pev_flags, pev(id, pev_flags) & ~FL_FROZEN)
		IsPaused[id] = false
	}

	return PLUGIN_HANDLED
}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Semiclip & Invis ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
build_entitymap()
{
	new ent, classname[32], j

	for(ent = maxplayers + 1; ent < ENTITY_MAX; ent++)
	{
		if(!pev_valid(ent))
			continue

		pev(ent, pev_classname, classname, 31)
		for(j=0; j < sizeof invis_class; j++)
		{
			if(equal(classname, invis_class[j], strlen(classname)))
			{
				invis_entity[ent] = true
				theWaterInvis = true
			}
		}
	}
}

public addToFullPack(es, e, ent, host, hostflags, player, pSet)
{
	if(!is_user_connected(host))
		return

	if(NightVisionUse[host]) {
		if(1 <= host <= 32 && get_orig_retval()) {
			if(player) {
				if(host == ent) {
					set_es(es, ES_Effects, (get_es(es, ES_Effects)|EF_BRIGHTLIGHT))
				}
			}
		}
	}

	if(InvisWater[host]) {
		if(invis_entity[ent]) {
			set_es(es, ES_Effects, EF_NODRAW)
			return
		}
	}

	if( player )
	{
		if(host != ent && get_orig_retval() && is_user_alive(host) )
    	{
    		set_es(es, ES_Solid, SOLID_NOT)
			set_es(es, ES_RenderMode, kRenderTransAdd) // подсвеченная моделька как голограмма.
			set_es(es, ES_RenderAmt, 50)
		}

		if(InvisUser[host])
		{
 		  set_es(es, ES_RenderMode, kRenderTransTexture)
			set_es(es, ES_RenderAmt, 0)
			set_es(es, ES_Origin, { 999999999.0, 999999999.0, 999999999.0 } )
		}

		if(full_Invisible[ent])
		{
			set_es(es, ES_Effects, EF_NODRAW)
			set_es(es, ES_Origin, {-10000.0, -10000.0, -10000.0})
			return
		}
	}
}

public semiclip_preThink(id)
{
	if(!is_user_alive(id))
		return

	get_players(g_iPlayers, g_iNum, "a")

	for(new i = 0; i<g_iNum; i++)
	{
		g_iPlayer = g_iPlayers[i]
		if( id != g_iPlayer )
			set_pev(g_iPlayer, pev_solid, SOLID_NOT)
	}
}

public semiclip_postThink(id)
{
	if( !is_user_alive(id) )
		return

	get_players(g_iPlayers, g_iNum, "a")

	for(new i = 0; i<g_iNum; i++)
	{
		g_iPlayer = g_iPlayers[i]
		if( g_iPlayer != id )
			set_pev(g_iPlayer, pev_solid, SOLID_SLIDEBOX)
   }
}

public Invis_User(id)
{
	if(InvisUser[id])
	{
		InvisUser[id] = false
		ColorChat(id, RED, "^x01%s^x03 The invisibility of disabled players!", prefix)
	}
	else
	{
		InvisUser[id] = true
		ColorChat(id, BLUE, "^x01%s^x03 Visibility enabled players!", prefix)
	}
}
public Invis_Water(id)
{
	if(theWaterInvis)
	{
		if(InvisWater[id])
		{
			InvisWater[id] = false
			ColorChat(id, RED, "^x01%s^x03 Invisibility water turned off!", prefix)
		}
		else
		{
			InvisWater[id] = true
			ColorChat(id, BLUE, "^x01%s^x03 Visibility of water included!", prefix)
		}
	}
}

public Invis_Full(id) {
		if(full_Invisible[id]) {
			ColorChat(id, RED, "^x01%s^x03 You all see!", prefix)
			full_Invisible[id] = false
		}
		else {
			ColorChat(id, BLUE, "^x01%s^x03 Your model is not visible and off spec!", prefix)
			full_Invisible[id] = true
		}
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ GOD MODE ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

public GodMode(id)
{
	if(is_user_alive(id))
	{
		if(!GodModeOn[id])
		{
			GodModeOn[id] = 1
			set_user_godmode(id,1)
			ColorChat(id, BLUE, "^x01%s^x03 God Mode has been enabled!", prefix)
			if(!mapIsSlide && !g_bHealsOnMap)
			{
				detect_cheat(id, "GodMode")
				ColorChat(id, RED, "%s^1 Godmode activated.", prefix)
			}
		}
		else
		{
			GodModeOn[id] = 0
			set_user_godmode(id,0)
			ColorChat(id, RED, "^x01%s^x03 God Mode has been disabled!", prefix)

			set_dhudmessage(KZ_R, KZ_G, KZ_B, -1.0, 0.88, 0, 0.0, 5.0, 0.0, 1.5)
			show_dhudmessage(id, "%d HP", get_user_health(id))
		}
	}
	else
	{
		ColorChat(id,RED,"%s^1 You are in Spector.", prefix)
	}
	return PLUGIN_HANDLED
}

public Ham_DoorSpawn_P(ent)
{
	static const szNull[] = "common/null.wav";

	new Float:flDamage;
	pev(ent, pev_dmg, flDamage);

	if(flDamage < -999.0)
	{
		set_pev(ent, pev_noise1, szNull);
		set_pev(ent, pev_noise2, szNull);
		set_pev(ent, pev_noise3, szNull);

		if(!g_bHealsOnMap)
			g_bHealsOnMap = true;
	}
}

public Event_Damage(id)
{
	set_dhudmessage(255, 80, 80, -1.0, 0.83, 0, 0.0, 0.0, 0.0, 2.0)
	show_dhudmessage(id, "-%d HP", read_data(2))
	set_dhudmessage(KZ_R, KZ_G, KZ_B, -1.0, 0.88, 0, 0.0, 0.0, 0.0, 2.0)
	show_dhudmessage(id, "%d HP", get_user_health(id))
}

public msgHealth(msgid, msgdest, id)
{
	new hp = get_msg_arg_int(1)

	if(!GodModeOn[id] && (0 < hp < 100))
	{
		set_dhudmessage(KZ_R, KZ_G, KZ_B, -1.0, 0.88, 0, 0.0, 0.5, 0.0, 0.0)
		show_dhudmessage(id, "%d HP", hp)
	}

	return PLUGIN_CONTINUE;
}

///////////////////////////////////////////////

public forward_set_model(entid, model[])
{
	if (!is_valid_ent(entid) || !equal(model, WBOX, 9))
		return FMRES_IGNORED

	new id = entity_get_edict(entid, EV_ENT_owner)
	if (!id || !is_user_connected(id) || is_user_alive(id))
		return FMRES_IGNORED

	if (equal(model, SHLD))
	{
		kill_entity(entid)
		return FMRES_IGNORED
	}

	if (equal(model, WBOX))
	{
		g_entid[id] = entid
		return FMRES_IGNORED
	}

	if (entid != g_entid[id])
		return FMRES_IGNORED

	g_entid[id] = 0

	if (equal(model, BOMB))
		return FMRES_IGNORED

	for (new i = 1; i <= g_maxents; ++i)
	{
		if (is_valid_ent(i) && entid == entity_get_edict(i, EV_ENT_owner))
		{
			kill_entity(entid)
			kill_entity(i)
		}
	}

	return FMRES_IGNORED
}

stock kill_entity(id)
{
	entity_set_int(id, EV_INT_flags, entity_get_int(id, EV_INT_flags)|FL_KILLME)
}

stock kz_chat(id, const message[], {Float,Sql,Result,_}:...)
{
	new msg[180]
	vformat(msg, 179, message, 3)
	replace_all(msg, 191, "^x01", "")
	replace_all(msg, 191, "^x03", "")
	replace_all(msg, 191, "^x04", "")
	replace_all(msg, 191, ".", "")
	kz_hud_message(id, "%s", msg)
}

stock kz_remplace_colors(message[], len)
{
	replace_all(message, len, "!g", "^x04")
	replace_all(message, len, "!t", "^x03")
	replace_all(message, len, "!y", "^x01")
}

stock kz_hud_message(id, const message[], {Float,Sql,Result,_}:...)
{
	static msg[192];
	vformat(msg, 191, message, 3);

	set_hudmessage(SR, SG, SB, -1.0, 0.74, 2, 0.1, 2.5, 0.01, 0.01, -1);
	ShowSyncHudMsg(id, hud_message, msg);
}

stock kz_register_saycmd(const saycommand[], const function[], flags)
{
	new temp[64]
	formatex(temp, 63, "say /%s", saycommand)
	register_clcmd(temp, function, flags)
	formatex(temp, 63, "say .%s", saycommand)
	register_clcmd(temp, function, flags)
	formatex(temp, 63, "say_team /%s", saycommand)
	register_clcmd(temp, function, flags)
	formatex(temp, 63, "say_team .%s", saycommand)
	register_clcmd(temp, function, flags)
}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ KZ MENU ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
public kz_menu(id)
{
	new title[256];
	new CurrentTime[32];
	new timeleft = get_timeleft();
	new seconds = timeleft % 60;
	new minutes = floatround((timeleft - seconds) / 60.0);
	get_time("%d/%m/%Y - %H:%M:%S",CurrentTime,31);

	formatex(title, 200, "\dVisit to \rCosy-Climbing.net | KreedZ.ru^n\dCreated \rby `L.^n^n\dPresent time %s^nMap \y%s\d & Timeleft \y%d:%02d\d^nType map \y%s\d", CurrentTime, MapName, minutes,seconds, kz_maptype)

	new menu = menu_create(title, "MenuHandler")

	menu_additem( menu, "Climb Menu^n", "1" )
	menu_additem( menu, "Tops Menu", "2")
	menu_additem( menu, "\dKZ Duel Menu\w", "3" )
	menu_additem( menu, "Config Menu", "4" )
	menu_additem( menu, "Teleport Menu^n", "5" )
	menu_additem( menu, "Spectator^n", "6")
	menu_additem( menu, "Measure Menu", "7" )

	menu_display(id, menu, 0)
	return PLUGIN_HANDLED
}

public MenuHandler(id , menu, item)
{
	if( item == MENU_EXIT )
		return PLUGIN_HANDLED

	switch(item)
	{
		case 0: ClimbMenu(id)
		case 1: kz_top_menu(id)
		case 2: client_cmd(id,"say /duel")
		case 3: ConfigMenu(id)
		case 4: cmdTeleportMenu(id)
		case 5:
		{
			ct(id)
			kz_menu(id)
		}
		case 6: client_cmd(id,"say /measure")
	}
	return PLUGIN_HANDLED
}

public ConfigMenu(id)
{
	new menu = menu_create("\yConfig Menu^n\rAuto updatable configuration\w", "ConfigMenuHandler")
	new msginvis[64], msgwaterinvis[64], msgfull[64], noteleport[64], god[64], icon[64], checkmode[64], speclist[64],specadm[64], savemenu[64]

	formatex(msginvis, 63, "Invisible Players - %s",  InvisUser[id] ? "\yON" : "\rOFF" )
	if(theWaterInvis)
		formatex(msgwaterinvis, 63, "Invisible Water - %s", InvisWater[id] ? "\yON" : "\rOFF" )
	else
		formatex(msgwaterinvis, 63, "\dInvisible Water - %s", InvisWater[id] ? "\yON" : "\rOFF" )

	formatex(msgfull, 63, "Full Invisible - %s^n", full_Invisible[id] ? "\yON" : "\rOFF" )
	formatex(god, 63, "GodMode - %s", GodModeOn[id] ? "\yON" : "\rOFF" )
	formatex(noteleport, 63, "Block Teleport - %s", noTeleport[id] ? "\yON" : "\rOFF" )
	formatex(icon, 63, "Icons - %s^n^n", icons[id] ? "\yON" : "\rOFF" )
	formatex(checkmode, 63, "CheckPoint Mode - %s^n", TP_MODE[id] ? "\yON" : "\rOFF" )
	formatex(speclist, 63, "Spectator List - %s", SpecList[id] ? "\yON" : "\rOFF" )
	formatex(savemenu, 63, "Save Config \d[\r%s\d]", SaveCfgDate[id] ? SaveCfgDate[id] : "n/a")

	if (get_user_flags(id) & KZ_LEVEL_1)
		formatex(specadm, 63, "Admin Invisible Spec - %s^n", SpecAdmImm[id] ? "\yON" : "\rOFF" )
	else
		formatex(specadm, 63, "\dAdmin Invisible Spec - %s^n", SpecAdmImm[id] ? "\yON" : "\rOFF" )

	menu_additem( menu, msginvis, "1" )
	menu_additem( menu, msgwaterinvis, "2" )
	menu_additem( menu, msgfull, "3" )
	menu_additem( menu, god, "4" )
	menu_additem( menu, noteleport, "5" )
	menu_additem( menu, icon, "6" )

	menu_additem( menu, savemenu, "7")

	menu_additem( menu, checkmode, "8" )
	menu_additem( menu, speclist, "9" )
	menu_additem( menu, specadm, "10" )
	menu_additem( menu, "ShowTimer Menu \y[>]^n^n", "10")

	menu_addblank( menu, 1)
	menu_addblank( menu, 1)
	menu_additem( menu, savemenu, "12")

	menu_setprop(menu, MPROP_NEXTNAME, "Next")
	menu_setprop(menu, MPROP_BACKNAME, "Back")
	menu_setprop(menu, MPROP_EXITNAME, "Exit")

	menu_display(id, menu, 0)
	return PLUGIN_HANDLED
}

public ConfigMenuHandler(id, menu, item)
{
	if( item == MENU_EXIT )
	{
		kz_menu(id)
		return PLUGIN_HANDLED
	}

	switch(item)
	{
		case 0:
		{
			Invis_User(id)
			ConfigMenu(id)
		}
		case 1:
		{
			Invis_Water(id)
			ConfigMenu(id)
		}
		case 2:
		{
			Invis_Full(id)
			ConfigMenu(id)
		}
		case 3:
		{
			GodMode(id)
			ConfigMenu(id)
		}
		case 4:
		{
			cmdNoTeleport(id)
			ConfigMenu(id)
		}
		case 5:
		{
			cmdIcons(id)
			ConfigMenu(id)
		}
		case 6:
		{
			SQL_ConfigSave(id);
			ConfigMenu(id);
		}
		case 7:
		{
			cmdCheckFix(id)
			ConfigMenu(id)

		}
		case 8:
		{
			cmdSpeclist(id)
			ConfigMenu(id)
		}
		case 9:
		{
			cmdSpeclistAdm(id)
			ConfigMenu(id)
		}
		case 10:
		{
			ShowTimer_Menu(id)
		}
		case 11:
		{
			SQL_ConfigSave(id);
			ConfigMenu(id)
		}
	}
	return PLUGIN_CONTINUE
}


public ClimbMenu(id)
{
	new menu = menu_create("\yClimb Menu\w", "ClimbMenuHandler")

	new msgcheck[64], msggocheck[64], msgpause[64]
	formatex(msgcheck, 63, "Checkpoint - \y#%i", checknumbers[id])
	formatex(msggocheck, 63, "Gocheck - \y#%i",  gochecknumbers[id])
	formatex(msgpause, 63, "Pause - %s^n", IsPaused[id] ? "\yON" : "\rOFF" )

	menu_additem( menu, msgcheck, "1" )
	menu_additem( menu, msggocheck, "2" )
	menu_additem( menu, "Stuck^n", "3")
	menu_additem( menu, msgpause, "4" )
	menu_additem( menu, "Start", "5")
	menu_additem( menu, "Save Start^n", "6")
	menu_additem( menu, "Usp", "7")
	menu_additem( menu, "Weapons", "8")
	menu_display(id, menu, 0)
	return PLUGIN_HANDLED
}

public ClimbMenuHandler (id, menu, item)
{
	if( item == MENU_EXIT )
	{
		kz_menu(id)
		return PLUGIN_HANDLED
	}

	switch(item)
	{
		case 0:{
			CheckPoint(id)
			ClimbMenu(id)
		}
		case 1:
		{
			if(checknumbers[id] > 0)
				GoCheck(id, 0)
			else
				ColorChat(id, RED, "^x01%s^x03 You have no checkpoints!", prefix);

			ClimbMenu(id)
		}
		case 2:{
			goto_stuck(id)
			ClimbMenu(id)
		}
		case 3:{
			Pause(id)
			ClimbMenu(id)
		}
		case 4:{
			goStart(id)
			ClimbMenu(id)
		}
		case 5:{
			SaveStart(id)
			ClimbMenu(id)
		}
		case 6:{
			give_usp_and_knife(id)
			ClimbMenu(id)
		}
		case 7:{
			weapons(id)
			ClimbMenu(id)
		}
	}
	return PLUGIN_HANDLED
}


public kz_top_menu(id)
{
	new menu = menu_create("\wKZ Tops Menu\w", "kz_top_menuHandler")

	menu_additem( menu, "KreedZ Top Menu", "1")
	menu_additem( menu, "LongJump Top Menu", "2")

	menu_display(id, menu, 0)
	return PLUGIN_HANDLED
}

public kz_top_menuHandler (id, menu, item)
{
	if( item == MENU_EXIT )
	{
		kz_menu(id)
		return PLUGIN_HANDLED
	}

	switch(item)
	{
		case 0:{
			top15menu(id)
		}
		case 1:{
			client_cmd(id,"say /ljtop")
		}
	}
	return PLUGIN_HANDLED
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Award Menu ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

public actionRewardsMenu(id,key)
{
	switch(key)
	{
		case 7:
		{
			++g_rewardsOption[id]
			g_rewardsOption[id] %= 2

			switch (g_rewardsOption[id])
			{
				case 1: g_rewardsSettings[id] = 1
				case 2: g_rewardsSettings[id] = 2
			}

			displayRewardsMenu(id, g_rewardsPosition[id])
		}
		case 8: displayRewardsMenu(id,++g_rewardsPosition[id])
		case 9: displayRewardsMenu(id,--g_rewardsPosition[id])
		default:
		{
			new player = g_rewardsPlayers[id][g_rewardsPosition[id] * 7 + key]

			if(g_rewardsOption[id]) {
				if(g_rewardsSettings[id] == 1) {
					if(canusenoclip[player]) {
						isnocliped[player] = false
						canusenoclip[player] = false
						//hide_icon_noclip(player)
					}
					else {
						canusenoclip[player] = true
						emit_sound(player,CHAN_STATIC,"give_hook.wav",1.0,ATTN_NORM,0,PITCH_NORM)
						//show_icon_noclip(player)
					}
				}
			}
			 else {
				if(canusehook[player]) {
					ishooked[player] = false
					canusehook[player] = false
					hide_icon_hook(player)
				}
				else {
					canusehook[player] = true
					emit_sound(player,CHAN_STATIC,"give_hook.wav",1.0,ATTN_NORM,0,PITCH_NORM)
					show_icon_hook(player)
				}
			}

			displayRewardsMenu(id,g_rewardsPosition[id])
		}
	}
	return PLUGIN_HANDLED
}

displayRewardsMenu(id,pos) {
	if(pos < 0)
		return

	get_players(g_rewardsPlayers[id],g_rewardsPlayersNum[id])

	new menuBody[512]
	new b = 0
	new i
	new name[32]
	new start = pos * 7

	if(start >= g_rewardsPlayersNum[id])
		start = pos = g_rewardsPosition[id] = 0

	new len = format(menuBody,511,"\yRewards Menu\R%d/%d^n\w^n",pos + 1,(g_rewardsPlayersNum[id] / 7 + ((g_rewardsPlayersNum[id] % 7) ? 1 : 0)))
	new end = start + 7
	new keys = MENU_KEY_0

	if(end > g_rewardsPlayersNum[id])
		end = g_rewardsPlayersNum[id]

	for (new a = start; a < end; ++a) {
		i = g_rewardsPlayers[id][a]
		get_user_name(i,name,31)

		if(access(i,KZ_LEVEL_1)) {
			++b

			len += format(menuBody[len],511-len,"\d%d. %s \r*^n\w",b,name)

		}
		else {
			keys |= (1<<b)

			if(g_rewardsOption[id]) {
				if(g_rewardsSettings[id] == 1) {
					if(canusenoclip[i])
						len += format(menuBody[len],511-len,"\r%d. %s^n\w",++b,name)
					else
						len += format(menuBody[len],511-len,"%d. %s^n",++b,name)
				}
			}
			else {
				if(canusehook[i])
					len += format(menuBody[len],511-len,"\r%d. %s^n\w",++b,name)
				else
					len += format(menuBody[len],511-len,"%d. %s^n",++b,name)
			}
		}
	}

	if(g_rewardsOption[id]) {
		keys |= MENU_KEY_8
		if(g_rewardsSettings[id] == 1) {
			len += format(menuBody[len],511-len,"^n8. NoClip^n")
		}
	}
	else {
		keys |= MENU_KEY_8
		len += format(menuBody[len],511-len,"^n8. Hook^n")
	}

	if(end != g_rewardsPlayersNum[id]) {
		format(menuBody[len],511-len,"^n9. More...^n0. %s",pos ? "Back" : "Exit")
		keys |= MENU_KEY_9
	}
	else
		format(menuBody[len],511-len,"^n0. %s",pos ? "Back" : "Exit")

	show_menu(id,keys,menuBody,-1,"Rewards Menu")
}

public cmdRewardsMenu(id)
{
	if(access(id,KZ_LEVEL_1))
	{
		g_rewardsOption[id] = 0
		g_rewardsSettings[id] = 0
		displayRewardsMenu(id,g_rewardsPosition[id] = 0)
	}
}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Top 15 Menu ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

public top15menu(id)
{
	new szTimerPro[14], szTimerNub[14]
	StringTimer(kz_my_protime[id], szTimerPro, sizeof(szTimerPro) - 1);
	StringTimer(kz_my_nubtime[id], szTimerNub, sizeof(szTimerNub) - 1);

	new title[512];
	formatex(title, 500, "\dCosy-Climbing Top15^nWebstats - \rKreedZ.ru^n\dMap: \y%s\d^n^n\dMy Pro time: \w%s^n\dMy Nub time: \w%s", MapName, szTimerPro, szTimerNub)

	new menu = menu_create(title, "top15handler")

	menu_additem(menu, "\rPRO\d/\yNUB \wMap Top", "1", 0)
	menu_additem(menu, "\wMy Stats","2")
	menu_additem(menu, "\wPlayers Top15^n","3")

	menu_display(id, menu, 0);
}

public top15handler(id, menu, item)
{
	if(item == MENU_EXIT)
	{
		menu_destroy(menu)
		return PLUGIN_HANDLED
	}
	switch(item)
	{
		case 0:
		{
			stats_show(id)
		}
		case 1:
		{
			kz_profile(id)
		}
		case 2:
		{
			kz_showhtml_motd(id, PLAYERS_RANKING)
		}
	}

	return PLUGIN_HANDLED;
}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Timer Funct ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
public fwdUse(ent, id)
{
	if( !ent || id > 32 )
	{
		return HAM_IGNORED;
	}

	if( !is_user_alive(id) || get_user_noclip(id) || ishooked[id])
	{
		return HAM_IGNORED;
	}

	if(Savepos_have[id])
	{
		SQL_Savepos_menu(id);
		return HAM_IGNORED
	}

	if(!g_bHealsOnMap)
	{
		set_pev(id, pev_health, 100.0);
	}

	new szTarget[32]
	pev(ent, pev_target, szTarget, 31);

	if( TrieKeyExists( g_tStarts, szTarget ) )
	{
		if ( get_gametime() - antihookcheat[id] < 3.0 )
		{
			kz_hud_message( id, "Wait 3 seconds after using the hook.");
			return PLUGIN_HANDLED
		}

		if(!mapIsSlide && !g_bHealsOnMap && GodModeOn[id]) {
			ColorChat(id, RED, "^x01%s^x03 Start impossible because enabled GodMode!", prefix)
			return PLUGIN_HANDLED
		}

		if ( reset_checkpoints(id) && !timer_started[id]  )
		{
			start_climb(id)
			// Обновляет массив с координатами для бота
        	ArrayClear(g_DemoReplay[id]);

				new clip, ammo, wpn_num, wpn[32]
				wpn_num = get_user_weapon(id, clip, ammo)
				if(wpn_num) {
					get_weaponname(wpn_num, wpn, 31)
				} else {
					format(wpn, 31, "weapon_knife")
				}
				strip_user_weapons(id)
				give_item(id, wpn)

				if(equali(wpn, "weapon_knife") || equali(wpn, "weapon_usp")) {
					give_usp_and_knife(id)
					engclient_cmd(id, wpn)
				}

			pev(id, pev_origin, SavedStart[id])
			AutoStart[id] = true;

			if( !Default_SF[0] )
			{
				SQL_StartFinish(true, SavedStart[id] )
				ColorChat(id, GREEN,  "%s^x01 Established the starting position on the map.", prefix)
			}

			remove_hook(id)
		}

	}


	if( TrieKeyExists( g_tStops, szTarget ) )
	{
		if( timer_started[id] )
		{
			if(get_user_noclip(id))
				return PLUGIN_HANDLED

			if( !Default_SF[1] )
			{
				pev(id, pev_origin, DefaultFinishPos)
				SQL_StartFinish(false, DefaultFinishPos)
				ColorChat(id, GREEN,  "%s^x01 Established the position of the finish on the map.", prefix)
			}

			finish_climb(id)
			// После завершения карты, дарит hook, noclip
			give_hook_finish(id)
			canusenoclip[id] = true
			canusehook[id] = true

			if (id == g_bot_id)
				Start_Bot();
		}
		else
			kz_hud_message(id, "The timer is not running.")

		}
	return HAM_IGNORED
}

public start_climb(id)
{
	set_pev(id, pev_gravity, 1.0);
	set_pev(id, pev_movetype, MOVETYPE_WALK)
	reset_checkpoints(id)
	IsPaused[id] = false
	timer_started[id] = true
	timer_time[id] = get_gametime()
	Savepos_activated[id] = false;
}

public finish_climb(id)
{
	if (!is_user_alive(id) || is_user_bot(id)) return;

	new Float: time, wpn
	time = get_gametime() - timer_time[id]

	if (time < 0.0)
	{
		ColorChat(id, RED, "%s ^3 CRITICAL ERROR: The timer has a negative time", prefix)
		return;
	}
	// Массив с временем для Бота
	Update_timer[id] = time
	show_finish_message(id, time, true, false) // Сообщение после нажатия на финиш
	timer_started[id] = false

	wpn = get_user_weapon( id )

	new cData[5], createinto[1001]
	// Массивы с данными которые идут для SQL_ThreadQuery
	cData[0] = id
	//cData[2] = time
	cData[3] = checknumbers[id]
	cData[4] = gochecknumbers[id]
    // условия, было ли оружие в руках
    new bool:user_weapon = false;
	new weapon = get_user_weapon(id)
	get_weaponname(weapon, weapon_name, charsmax(weapon_name))
	// Сравнивание оружия с константами
	for(new i = 0; i < 8; i++)
	{
		if(equali(other_weapons_name[i], weapon_name))
		{
			user_weapon = true;
		}
	}

    	if (gochecknumbers[id] == 0 )
			cData[1] = PRO_TOP
		else
			cData[1] = NUB_TOP

			if (user_weapon && get_pcvar_num(sv_airaccelerate) == 10)
			{
				formatex(createinto, sizeof createinto - 1, "SELECT time FROM `%s` WHERE map_id='%d' AND authid='%s' AND weapon='%s'", gochecknumbers[id] == 0 ? "kz_weapon_pro" : "kz_weapon_nub", kz_mapID, kz_authid[id], g_weaponsnames[wpn])
				SQL_ThreadQuery(g_SqlTuple, "SQL_StatsAdd", createinto, cData, 6)
			} else {
				formatex(createinto, sizeof createinto - 1, "SELECT time FROM `%s%s` WHERE map_id='%d' AND authid='%s'", gochecknumbers[id] == 0 ? "kz_pro15" : "kz_nub15", get_pcvar_num(sv_airaccelerate) == 100 ? "_100aa" : "", kz_mapID, kz_authid[id])
				SQL_ThreadQuery(g_SqlTuple, "SQL_StatsAdd", createinto, cData, 6)
			}
}

public show_finish_message(id, Float:kreedztime, bool:szfinish, bool:record)
{
	new name[32], szTime[14]
	new wpn = get_user_weapon(id)
	new speed = str_to_num(g_weaponsnames[wpn])
	get_user_name(id, name, 31)
	StringTimer(kreedztime, szTime, sizeof(szTime) - 1);
	if (szfinish)
	{
		ColorChat(0, BLUE,  "^x01%s^x03 %s^x01 finished the map in^x03 %s ^x01( CPs: ^x03%d^x01 | TPs: ^x03%d^x01 | Weapon: ^x03%s^x01)", prefix, name, szTime, checknumbers[id], gochecknumbers[id], Weapon_Converter(speed))
	} else
	{
		if (record) {
			ColorChat(id, RED,  "^x01%s^x03 You have improved your time by^x04 %s^x03 in the ^x04%s", prefix, szTime, gochecknumbers[id] == 0 ? "Professional Top" : "General Top")
		} else {
			ColorChat(id, GREY,  "^x01%s^x03 You missed your best time by^x04 %s^x03 in the ^x04%s", prefix, szTime, gochecknumbers[id] == 0 ? "Professional Top" : "General Top")
		}
	}
}

//==========================================================

public jumphelp(id) {
	kz_showhtml_motd(id, HELP)
	return PLUGIN_CONTINUE
}

public stats_show(id)
{
	kz_showhtml_motd(id, STATS_TOP)

	return PLUGIN_HANDLED
}

stock kz_showhtml_motd(id, type)
{
	new buffer[1001], namebuffer[64]

	switch( type )
	{
		case STATS_TOP:
		{
			formatex(namebuffer, 63, "Stats of %s", MapName)
			formatex(buffer, 1000, "<html><head><meta http-equiv=^"Refresh^" content=^"0;url=https://%s/stats15/%s/?&authid=%s^"></head><body><img style='' src='http://kreedz.ru/images/loading.gif'></body></html>", pgL_sql_files, MapName, kz_authid[id])
		}
		case PLAYERS_RANKING:
		{
			formatex(namebuffer, 63, "KZ Top15")
			formatex(buffer, 1000, "<html><head><meta http-equiv=^"Refresh^" content=^"0;url=https://%s/motdtop/1^"></head><body><img style='' src='http://kreedz.ru/images/loading.gif'></body></html>", pgL_sql_files)
		}
		case HELP:
		{
			formatex(namebuffer, 63, "Server Info / Help")
			formatex(buffer, 1000, "<html><head><meta http-equiv=^"Refresh^" content=^"0;url=http://%s/server-info.php^"></head><body><p>LOADING...</p></body></html>", pgL_sql_files)
		}
	}

	show_motd(id, buffer, namebuffer)
}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ SPEC INFO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

public tskShowSpec()
{
	static szHud[1102];//32*33+45
	static szName[34];
	static bool:send;

	for( new alive = 1; alive <= 32; alive++ )
	{
		new bool:sendTo[33];
		send = false;

		if( !is_user_alive(alive) )
		{
			continue;
		}

		sendTo[alive] = true;

		get_user_name(alive, szName, 32);
		format(szHud, 45, "Spectating %s:^n", szName);

		for( new dead = 1; dead <= 32; dead++ )
		{
			if( is_user_connected(dead) )
			{
				if (is_user_alive(dead))
				{
					continue;
				}

				if( pev(dead, pev_iuser2) == alive )
				{
					if (full_Invisible[alive] && !is_user_bot(alive))
					{
						if(cs_get_user_team(dead) == CS_TEAM_SPECTATOR)
						{
							if(!(get_user_flags(dead) & ADMIN_IMMUNITY) || !(get_user_flags(dead) & ACCESS_3))
							{
								set_hudmessage(255, 0, 0, -1.0, 0.3, 1, 0.2, 0.1, 0.1, 0.1, -1)
								show_hudmessage(dead, "It has enabled the user FULL INVISIBLE")
							}
						}
					}

					if( !SpecAdmImm[dead])
					{
						get_user_name(dead, szName, 32);
						add(szName, 33, "^n", 0);
						add(szHud, 1101, szName, 0);
						send = true;
					}
					sendTo[dead] = true;

				}
			}
		}

		if( send == true )
		{
			for( new i = 1; i <= 32; i++ )
			{
				if( sendTo[i] == true && SpecList[i] == 1 )
				{
					set_hudmessage(SR, SG, SB, 0.85, 0.15, 0, 0.0, UPDATEINTERVAL, 0.2, 0.2, 4);
					show_hudmessage(i, szHud);
				}
			}
		}
	}

	return PLUGIN_CONTINUE;
}

public Screen(id, bool:fade)
{
	if(is_user_connected(id))
	{
		message_begin(MSG_ONE_UNRELIABLE, 98, _, id);
		write_short(1<<0);
		write_short(1<<0);
		if(fade)
			write_short(1<<2);
		else
			write_short(1<<1);
		write_byte(0);
		write_byte(0);
		write_byte(0);
		if (fade)
			write_byte(255);
		else
			write_byte(0);
		message_end();

		if(fade)
			Screen_fade[id] = true;
		else
			Screen_fade[id] = false;
	}
}

public cmdSpeclist(id) {
	if(!SpecList[id]) {
		SpecList[id] = true
		ColorChat(id, BLUE, "^x01%s^x03 Speclist has been enabled!", prefix)
	}
	else {
		SpecList[id] = false
		ColorChat(id, RED, "^x01%s^x03 Speclist has been disabled!", prefix)
	}
	return PLUGIN_CONTINUE
}

public cmdSpeclistAdm(id) {
	if (! (get_user_flags( id ) & KZ_LEVEL_1 ))
	{
		ColorChat(id, RED, "^x01%s^x03 Not access", prefix)
		return PLUGIN_HANDLED
	}

	if(!SpecAdmImm[id]) {
		SpecAdmImm[id] = true
		ColorChat(id, BLUE, "^x01%s^x03 You not be displayed in the Speclist!", prefix)
	}
	else {
		SpecAdmImm[id] = false
		ColorChat(id, RED, "^x01%s^x03 You displays in a Speclist!", prefix)
	}
	return PLUGIN_CONTINUE
}

public fw_StartFrame()
{
	static Float:fGameTime, Float:fDelay, Float:last_check, frames;
	fGameTime = get_gametime();
	fDelay = 0.1;

	if((fShowKeyTime + fDelay) <= fGameTime)
	{
		show_keyinfo();
		fShowKeyTime = fGameTime;
	}
	static id;
	for(id = 1; id <= maxplayers; id++)
	{
		if(is_user_alive(id))
		{
			new Button = pev(id, pev_button);
			if(Button & IN_FORWARD)
				g_iPlayerKeys[id] |= IN_FORWARD;
			if(Button & IN_BACK)
				g_iPlayerKeys[id] |= IN_BACK;
			if(Button & IN_MOVELEFT)
				g_iPlayerKeys[id] |= IN_MOVELEFT;
			if(Button & IN_MOVERIGHT)
				g_iPlayerKeys[id] |= IN_MOVERIGHT;
			if(Button & IN_DUCK)
				g_iPlayerKeys[id] |= IN_DUCK;
			if(Button & IN_JUMP )
				g_iPlayerKeys[id] |= IN_JUMP;
		}
	}

	if( fGameTime - last_check > 1.0 )
	{
		g_iServerFps = frames;
		frames = 0;
		last_check = fGameTime;
	}

	frames++;
	return FMRES_IGNORED;
}

stock show_keyinfo()
{
	static id;
	for(id = 1; id <= maxplayers; id++)
	{
		if(!is_user_alive(id))
		{
			new specmode = pev(id, pev_iuser1);
			if(specmode == 2 || specmode == 4)
			{
				new target = pev(id, pev_iuser2);

				if(target != id)
				{
					if(!is_user_alive(target))
						g_iPlayerKeys[target] = 0;

					static plr_key[64]
					set_hudmessage(0, 50, 255, -1.0, -0.40, 0, _, 0.1, _, _, 3);
					formatex(plr_key, 63, "%s^n            %s   %s   %s   %s ^n %s",
						g_iPlayerKeys[target] & IN_FORWARD ? "W" : " .",
						g_iPlayerKeys[target] & IN_MOVELEFT ? "A" : ".",
						g_iPlayerKeys[target] & IN_BACK ? "S" : ".",
						g_iPlayerKeys[target] & IN_MOVERIGHT ? "D" : ".",
						g_iPlayerKeys[target] & IN_DUCK ? "DUCK" : "-      ",
						g_iPlayerKeys[target] & IN_JUMP ? "JUMP" : "  .  ");
					ShowSyncHudMsg(id, g_SyncShowKeys, "%s", plr_key);
				}
			}
		}
		else if(is_user_alive(id) && g_bShowKeys[id])
		{
			static plr_key[64]
			set_hudmessage(0, 50, 255, -1.0, -0.40, 0, _, 0.1, _, _, 3);
			formatex(plr_key, 63, "%s^n            %s   %s   %s   %s ^n %s",
				g_iPlayerKeys[id] & IN_FORWARD ? "W" : " .",
				g_iPlayerKeys[id] & IN_MOVELEFT ? "A" : ".",
				g_iPlayerKeys[id] & IN_BACK ? "S" : ".",
				g_iPlayerKeys[id] & IN_MOVERIGHT ? "D" : ".",
				g_iPlayerKeys[id] & IN_DUCK ? "DUCK" : "-      ",
				g_iPlayerKeys[id] & IN_JUMP ? "JUMP" : "  .  ");
			ShowSyncHudMsg(id, g_SyncShowKeys, "%s", plr_key);
		}
	}
	for(id = 1; id <= maxplayers; id++)
	{
		g_iPlayerKeys[id] = 0;
	}
	return PLUGIN_CONTINUE;
}

public ClientShowKeys(id)
{
	g_bShowKeys[id] = !g_bShowKeys[id];
	set_hudmessage(0, 100, 255, -1.0, 0.74, 2, 0.1, 2.5, 0.01, 0.01, 3);
	if (g_bShowKeys[id])
		show_hudmessage( id, "Showkeys: ON" );
	else
		show_hudmessage( id, "Showkeys: OFF" );
}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Reset HUD (armor,hp,radar) ~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

public onResetHUD(id)
{
	new iHideFlags = GetHudHideFlags()
	if(iHideFlags)
	{
		message_begin(MSG_ONE, g_msgHideWeapon, _, id)
		write_byte(iHideFlags)
		message_end()
	}
}

public msgHideWeapon()
{
	new iHideFlags = GetHudHideFlags()
	if(iHideFlags)
		set_msg_arg_int(1, ARG_BYTE, get_msg_arg_int(1) | iHideFlags)
}

GetHudHideFlags()
{
	new iFlags

		//iFlags |= HUD_HIDE_CAL
		iFlags |= HUD_HIDE_FLASH
		iFlags |= HUD_HIDE_RHA
		iFlags |= HUD_HIDE_TIMER
		iFlags |= HUD_HIDE_MONEY

	return iFlags
}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ FLASHLIGHT ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

public Event_DeathMsg()
{
	flashlight_reset(read_data(2))
}

flashlight_reset(id)
{
    if( 1 <= id <= maxplayers )
    {
        g_iFlashBattery[id] = 100
        g_bFlashLight[id] = false
        g_flFlashLightTime[id] = 0.0
    }
}

public Impulse_100( id )
{
	if( g_bEnabled )
	{
		if(is_user_alive(id))
		{
			if( g_bFlashLight[id] )
			{
				FlashlightTurnOff(id)
			}
			else
			{
				FlashlightTurnOn(id)
			}
		}
		return PLUGIN_HANDLED_MAIN
	}
	return PLUGIN_CONTINUE
}

Make_FlashLight(id)
{
	static iOrigin[3], iAim[3], iDist
	get_user_origin(id, iOrigin, 1)
	get_user_origin(id, iAim, 3)

	iDist = get_distance(iOrigin, iAim)

	if( iDist > g_iDistanceMax )
		return

	static iDecay, iAttn

	iDecay = iDist * 255 / g_iDistanceMax
	iAttn = 256 + iDecay * g_iAttenuation // barney/dontaskme

	message_begin(MSG_ONE_UNRELIABLE, SVC_TEMPENTITY, _, id)
	write_byte( TE_DLIGHT )
	write_coord( iAim[0] )
	write_coord( iAim[1] )
	write_coord( iAim[2] )
	write_byte( g_iRadius )
	write_byte( (g_iColor[id][Red]<<8) / iAttn )
	write_byte( (g_iColor[id][Green]<<8) / iAttn )
	write_byte( (g_iColor[id][Blue]<<8) / iAttn )
	write_byte( 1 )
	write_byte( iDecay )
	message_end()
}

FlashlightTurnOff(id)
{
	g_bFlashLight[id] = false

	FlashlightHudDraw(id, 0)

	g_flFlashLightTime[id] = g_flCharge + get_gametime()
}

FlashlightTurnOn(id)
{
	g_bFlashLight[id] = true

	FlashlightHudDraw(id, 1)

	g_iColor[id] = g_iTeamColor[2-get_user_team(id)]

	g_flFlashLightTime[id] = g_flDrain + get_gametime()
}

FlashlightHudDraw(id, iFlag)
{
		message_begin(MSG_ONE_UNRELIABLE, g_msgidFlashlight, _, id)
		write_byte(iFlag)
		write_byte(g_iFlashBattery[id])
		message_end()
}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ RECORD REPLAY ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ReadBestRunFile()
{
	new ArrayData[DemoData]

	new szFile[128], len
	format(szFile, sizeof(szFile) - 1, "%s/records", DATADIR) 		// Идем в дерикторию /configs/kz/records
	if( !dir_exists(szFile) ) mkdir(szFile);								// Если нету дериктории, создаем

	format(szFile, sizeof(szFile) - 1, "%s/%s.txt", szFile, g_szMapName)	// Конечный формат /configs/kz/records/<map>.txt

        if (file_exists(szFile)) 												// Делаем проверку на наличие файла
        {
        	g_fileRead = true
        	read_file(szFile,1,g_ReplayName,63,len)
        }
        else
        	return PLUGIN_HANDLED;

        new hFile = fopen(szFile, "r"); 										// Открываем файл с рекордом
        new szData[1024];
        new szBotAngle[2][40], szBotPos[3][60], szBotVel[3][60], szBotButtons[12];

        new line;

        while(!feof(hFile))
        {
        	fgets(hFile, szData, charsmax(szData));

        	if(!szData[0] || szData[0] == '^n')
        		continue;

        	if(!line)
        	{
        		g_ReplayBestRunTime = str_to_float(szData);
        		line++;
        		continue;
        	}

        	strtok(szData, szBotAngle[0], charsmax(szBotAngle[]), szData, charsmax(szData), ' ', true)
        	strtok(szData, szBotAngle[1], charsmax(szBotAngle[]), szData, charsmax(szData), ' ', true)

        	strtok(szData, szBotPos[0], charsmax(szBotPos[]), szData, charsmax(szData), ' ', true)
        	strtok(szData, szBotPos[1], charsmax(szBotPos[]), szData, charsmax(szData), ' ', true)
        	strtok(szData, szBotPos[2], charsmax(szBotPos[]), szData, charsmax(szData), ' ', true)

        	strtok(szData, szBotVel[0], charsmax(szBotVel[]), szData, charsmax(szData), ' ', true)
        	strtok(szData, szBotVel[1], charsmax(szBotVel[]), szData, charsmax(szData), ' ', true)
        	strtok(szData, szBotVel[2], charsmax(szBotVel[]), szData, charsmax(szData), ' ', true)

        	strtok(szData, szBotButtons, charsmax(szBotButtons), szData, charsmax(szData), ' ', true)

        	ArrayData[flBotAngle][0] = _:str_to_float(szBotAngle[0]);
        	ArrayData[flBotAngle][1] = _:str_to_float(szBotAngle[1]);

        	ArrayData[flBotPos][0] = _:str_to_float(szBotPos[0]);
        	ArrayData[flBotPos][1] = _:str_to_float(szBotPos[1]);
        	ArrayData[flBotPos][2] = _:str_to_float(szBotPos[2]);

        	ArrayData[flBotVel][0] = _:str_to_float(szBotVel[0]);
        	ArrayData[flBotVel][1] = _:str_to_float(szBotVel[1]);
        	ArrayData[flBotVel][2] = _:str_to_float(szBotVel[2]);

        	ArrayData[iButton] = _: str_to_num(szBotButtons);

        	ArrayPushArray(g_DemoPlaybot[0], ArrayData);
        	line++;
        }
        fclose(hFile);
        bot_restart();

        return PLUGIN_HANDLED;
}

public ClCmd_UpdateReplay(id, Float:timer)
{
	new szName[32];
	get_user_name(id, szName, 31)
	g_ReplayBestRunTime = timer;
	new szFile[128], szData[128];
	format(szFile, sizeof(szFile) - 1, "%s/records/%s.txt", DATADIR, g_szMapName)
	delete_file(szFile)
	new hFile = fopen(szFile, "wt");
	ArrayClear(g_DemoPlaybot[0]);
	new str[25], nick[64];
	formatex(str, charsmax(str), "%f^n", g_ReplayBestRunTime);
	formatex(nick, charsmax(nick), "%s^n", szName);
	fputs(hFile, str);
	fputs(hFile, nick);
	new ArrayData[DemoData], ArrayData2[DemoData];
	for(new i; i < ArraySize(g_DemoReplay[id]); i++)
	{
		ArrayGetArray(g_DemoReplay[id], i, ArrayData);
		ArrayData2[flBotAngle][0] = _:ArrayData[flBotAngle][0]
		ArrayData2[flBotAngle][1] = _:ArrayData[flBotAngle][1]
		ArrayData2[flBotVel][0] = _:ArrayData[flBotVel][0]
		ArrayData2[flBotVel][1] = _:ArrayData[flBotVel][1]
		ArrayData2[flBotVel][2] = _:ArrayData[flBotVel][2]
		ArrayData2[flBotPos][0] = _:ArrayData[flBotPos][0]
		ArrayData2[flBotPos][1] = _:ArrayData[flBotPos][1]
		ArrayData2[flBotPos][2] = _:ArrayData[flBotPos][2]
		ArrayData2[iButton] = ArrayData[iButton]
		if(i >= ArraySize(g_DemoReplay[id]))
		{
			ArrayPushArray(g_DemoReplay[id], ArrayData2);
		}
		else
		{
			ArraySetArray(g_DemoReplay[id], i, ArrayData2);
		}
		formatex(szData, sizeof(szData) - 1, "%f %f %f %f %f %f %f %f %d^n", ArrayData2[flBotAngle][0], ArrayData2[flBotAngle][1],
			ArrayData2[flBotPos][0], ArrayData2[flBotPos][1], ArrayData2[flBotPos][2], ArrayData2[flBotVel][0], ArrayData2[flBotVel][1], ArrayData2[flBotVel][2], ArrayData2[iButton]);
		fputs(hFile, szData);
	}
	fclose(hFile);

	set_task(2.0, "bot_overwriting")
}

public bot_restart()
{
	if (g_fileRead)
	{
		if(!g_bot_id)
     		g_bot_id = Create_Bot(); // Создает бота с id
     	else
     		Start_Bot();
	}
}

public fwd_Think( Ent )
{
    if ( !pev_valid( Ent ) )
        return(FMRES_IGNORED);

    static className[32];
    pev( Ent, pev_classname, className, 31 );

    if ( equal( className, "bot_record" ) )
    {
        BotThink( g_bot_id );
        set_pev( Ent, pev_nextthink, get_gametime() + nExttHink );
    }

    return(FMRES_IGNORED);
}

public BotThink( id )
{
	static Float:last_check, Float:game_time, nFrame;
	game_time = get_gametime();

	if( game_time - last_check > 1.0 )
	{
		if (nFrame < 100)
			nExttHink = nExttHink - 0.0001
		else if (nFrame > 100)
			nExttHink = nExttHink + 0.0001

		nFrame = 0;
		last_check = game_time;
	}

	if(g_bot_enable == 1 && g_bot_id)
	{
		g_bot_frame++;
		if ( g_bot_frame < ArraySize( g_DemoPlaybot[0] ) )
		{
			new ArrayData[DemoData], Float:ViewAngles[3];
			ArrayGetArray(g_DemoPlaybot[0], g_bot_frame, ArrayData);

			ViewAngles[0] = ArrayData[flBotAngle][0];
			ViewAngles[1] = ArrayData[flBotAngle][1];
			ViewAngles[2] = 0.0;

			if(ArrayData[iButton]&IN_ALT1) ArrayData[iButton]|=IN_JUMP;
			if(ArrayData[iButton]&IN_RUN)  ArrayData[iButton]|=IN_DUCK;

			if(ArrayData[iButton]&IN_RIGHT)
			{
				engclient_cmd(id, "weapon_usp");
				ArrayData[iButton]&=~IN_RIGHT;
			}
			if(ArrayData[iButton]&IN_LEFT)
			{
				engclient_cmd(id, "weapon_knife");
				ArrayData[iButton]&=~IN_LEFT;
			}
			//if ( ArrayData[iButton] & IN_USE )
			//{
			//	Ham_ButtonUse( id );
			//	ArrayData[iButton] &= ~IN_USE;
			//}
			engfunc(EngFunc_RunPlayerMove, id, ViewAngles, ArrayData[flBotVel][0], ArrayData[flBotVel][1], 0.0, ArrayData[iButton], 0, 10);
			set_pev(id, pev_v_angle, ViewAngles );
			ViewAngles[0] /= -3.0;
			set_pev(id, pev_velocity, ArrayData[flBotVel]);
			set_pev(id, pev_angles, ViewAngles);
			set_pev(id, pev_origin, ArrayData[flBotPos]);
			set_pev(id, pev_button, ArrayData[iButton] );
			set_pev(id, pev_health, 999.0);

			if( pev( id, pev_gaitsequence ) == 4 && ~pev( id, pev_flags ) & FL_ONGROUND )
				set_pev( id, pev_gaitsequence, 6 );

			if(nFrame == ArraySize( g_DemoPlaybot[0] ) - 1)
				Start_Bot();

		} else  {
			g_bot_frame = 0;
		}
	}
	nFrame++;
}

public Ham_PlayerPreThink(id)
{
	if(is_user_alive(id))
	{
		if(timer_started[id] && gochecknumbers[id] == 0)
		{
			if(!IsPaused[id])
			{
				new ArrayData[DemoData];
				pev(id, pev_origin, ArrayData[flBotPos]);
				new Float:angle[3];
				pev(id, pev_v_angle, angle)
				pev(id, pev_velocity, ArrayData[flBotVel]);
				ArrayData[flBotAngle][0] = _:angle[0];
				ArrayData[flBotAngle][1] = _:angle[1];
				ArrayData[iButton] = get_user_button(id)
				ArrayPushArray(g_DemoReplay[id], ArrayData);
			}
		}
	}
}

public ClCmd_ReplayMenu(id)
{
	if (!(get_user_flags( id ) & KZ_LEVEL_1 ))
		return PLUGIN_HANDLED

	ReadBestRunFile();
	new title[512], szTimer[14];
	StringTimer(g_ReplayBestRunTime, szTimer, sizeof(szTimer) - 1);

	formatex(title, 500, "\wAdmin Setting Bot Replay Menu^nRecord: \y%s", szTimer)

	new menu = menu_create(title, "ReplayMenu_Handler")

	menu_additem(menu, "Start/Reset^n", "1");
	if (g_bot_enable == 1)
		menu_additem(menu, "Pause^n", "2");
	else
		menu_additem(menu, "Play^n", "2");
	menu_additem(menu, "Kick bot", "3");

	menu_display(id, menu, 0);

	return PLUGIN_HANDLED;
}

public ReplayMenu_Handler(id, menu, item)
{
	if(item == MENU_EXIT)
	{
		return PLUGIN_HANDLED;
	}

	switch(item)
	{
		case 0:
		{
			if(!g_bot_id)
				g_bot_id = Create_Bot();
			else
				Start_Bot();
		}
		case 1:
		{
			if (g_bot_enable == 1)
			{
				Pause(g_bot_id)
				g_bot_enable = 2;
			}
			else
			{
				Pause(g_bot_id)
				g_bot_enable = 1;
			}
		}
		case 2: Remove_Bot();
	}
	ClCmd_ReplayMenu(id);
	return PLUGIN_HANDLED;
}

public bot_overwriting()
{
	ArrayClear(g_DemoPlaybot[0]);
	ReadBestRunFile();

	new txt[64]
   	StringTimer(g_ReplayBestRunTime, g_bBestTimer, sizeof(g_bBestTimer) - 1);
	formatex(txt, charsmax(txt), "[REC] %s %s", g_ReplayName, g_bBestTimer);
	set_user_info(g_bot_id, "name", txt)
}

Create_Bot()
{
	new txt[64]
	StringTimer(g_ReplayBestRunTime, g_bBestTimer, sizeof(g_bBestTimer) - 1);
	formatex(txt, charsmax(txt), "[REC] %s %s", g_ReplayName, g_bBestTimer);
	new id = engfunc(EngFunc_CreateFakeClient, txt);
	if(pev_valid(id))
	{
		set_user_info(id, "rate", "10000");
		set_user_info(id, "cl_updaterate", "60");
		set_user_info(id, "cl_cmdrate", "60");
		set_user_info(id, "cl_lw", "1");
		set_user_info(id, "cl_lc", "1");
		set_user_info(id, "cl_dlmax", "128");
		set_user_info(id, "cl_righthand", "1");
		set_user_info(id, "_vgui_menus", "0");
		set_user_info(id, "_ah", "0");
		set_user_info(id, "dm", "0");
		set_user_info(id, "tracker", "0");
		set_user_info(id, "friends", "0");
		set_user_info(id, "*bot", "1");

   	set_pev(id, pev_flags, pev(id, pev_flags) | FL_FAKECLIENT);
   	set_pev(id, pev_colormap, id);

   	dllfunc(DLLFunc_ClientConnect, id, "BOT DEMO", "127.0.0.1");
   	dllfunc(DLLFunc_ClientPutInServer, id);

		cs_set_user_team(id, CS_TEAM_CT);
		cs_set_user_model(id, "sas");

		if(!is_user_alive(id))
			dllfunc(DLLFunc_Spawn, id);

		set_pev(id, pev_takedamage, DAMAGE_NO);

		g_bot_enable = 1;
		return id;
	}
	return 0;
}

Remove_Bot()
{
	server_cmd("kick #%d", get_user_userid(g_bot_id))
	//destroy_bot_icon(g_bot_id)
	g_bot_id = 0;
	g_bot_enable = 0;
	g_bot_frame = 0;
	ArrayClear(g_DemoPlaybot[0]);
}

Start_Bot()
{
   g_bot_frame = 0;
   start_climb(g_bot_id)
}

public create_bot_icon(id)
{
	g_Bot_Icon_ent = engfunc(EngFunc_CreateNamedEntity, engfunc(EngFunc_AllocString, "env_sprite"))

	set_pev(g_Bot_Icon_ent, pev_solid, SOLID_NOT)
	set_pev(g_Bot_Icon_ent, pev_movetype, MOVETYPE_FLYMISSILE)
	set_pev(g_Bot_Icon_ent, pev_iuser2, id)
	set_pev(g_Bot_Icon_ent, pev_scale, 0.5)
	engfunc(EngFunc_SetModel, g_Bot_Icon_ent, "sprites/kzru/kzrubot.spr")
}

public destroy_bot_icon(id)
{
	if(g_Bot_Icon_ent)
		engfunc(EngFunc_RemoveEntity, g_Bot_Icon_ent)

	g_Bot_Icon_ent = 0
}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ScoreBoard ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

public MessageScoreAttrib( iMsgID, iDest, iReceiver )
{
	new iPlayer = get_msg_arg_int( 1 )
	if( is_user_alive( iPlayer ) && ( get_user_flags( iPlayer ) & KZ_LEVEL_1 ) )
	{
		set_msg_arg_int( 2, ARG_BYTE, SCOREATTRIB_VIP );
	}
}

public MessageServerName( )
{
    set_msg_arg_string( 1, g_szTitle );
}


public update_score(id)
{
	if(is_user_connected(id))
	{
		set_user_frags(id, kz_point[id])
		cs_set_user_deaths(id, kz_hash[id])
	}
}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ FPS CHECK ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
public get_fps( id )
{
	if( id > 32 ) return -1;
	if( !id ) return g_iServerFps;

	return g_iPlayerFps[id];
}

public cmdFps(id)
{
	static Players[32], PlayersNum, Name[32];
	static HudBuffer[1024], TempBuffer[64];

	set_hudmessage( 0, 255, 100, 0.02, 0.20, 0, 1.0, 8.0, 1.0, 1.0, 3 );

	format( TempBuffer, sizeof( TempBuffer ) - 1, "Server FPS: %d^n^n", get_fps( 0 ) );
    	add( HudBuffer, sizeof( HudBuffer ) - 1, TempBuffer );

	get_players( Players, PlayersNum );

	for( new i = 0; i < PlayersNum; i++ )
	{
		get_user_info( Players[i], "name", Name, sizeof( Name ) - 1 );

		format( TempBuffer, sizeof( TempBuffer ) - 1, "%s      (%d fps)^n", Name, get_fps( Players[i] ) );
    		add( HudBuffer, sizeof( HudBuffer ) - 1, TempBuffer );
	}

	show_hudmessage( id, HudBuffer );

	format( TempBuffer, sizeof( TempBuffer ) - 1, "" );
	format( HudBuffer, sizeof( HudBuffer ) - 1, "" );

	return PLUGIN_CONTINUE;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ MEASURE ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

public cmdMeasure( plr )
{
	pev( plr, pev_origin, g_vFirstLoc[plr] );
	g_vFirstLoc[plr][2] -= is_user_ducking( plr ) ? 18 : 36;
	g_vSecondLoc[plr] = g_vFirstLoc[plr];

	if( g_bShowBeams[plr] && !task_exists( plr + TASK_BEAM ) )
		set_task( 0.1, "tskBeam", plr + TASK_BEAM, _, _, "ab" );

	menuDisplay( plr );
}


public menuDisplay( plr )
{
	static menu[2048];

	new len = format( menu, 2047, "\wMeasure Menu^n^n" );

	if( g_bReturnFloat[plr] )
	{
		len += format( menu[len], 2047 - len, "\d[\r1\d]\w \wSet Loc #1 \d< %.03f | %.03f | %.03f >^n", g_vFirstLoc[plr][0], g_vFirstLoc[plr][1], g_vFirstLoc[plr][2] );
		len += format( menu[len], 2047 - len, "\d[\r2\d]\w \wSet Loc #2 \d< %.03f | %.03f | %.03f >^n^n", g_vSecondLoc[plr][0], g_vSecondLoc[plr][1], g_vSecondLoc[plr][2] );
		len += format( menu[len], 2047 - len, "\d[\r3\d]\w \wAutomatical setting of the other Loc: \d%s^n^n", g_bAutoSetting[plr] ? "on" : "off" );
		len += format( menu[len], 2047 - len, "\d[\r4\d]\w \wDetailed results: \d%s^n", g_bDetailedResults[plr] ? "on" : "off" );
		len += format( menu[len], 2047 - len, "\d[\r5\d]\w \wReturned values: \ddecimal^n^n" );
		len += format( menu[len], 2047 - len, "\r      \wResults:^n" );

		if( g_bDetailedResults[plr] )
		{
			len += format( menu[len], 2047 - len, "\r      \wX-Distance: \d%f^n", floatabs( g_vFirstLoc[plr][0] - g_vSecondLoc[plr][0] ) );
			len += format( menu[len], 2047 - len, "\r      \wY-Distance: \d%f^n", floatabs( g_vFirstLoc[plr][1] - g_vSecondLoc[plr][1] ) );
		}

		len += format( menu[len], 2047 - len, "\r      \wHeight difference: \d%f^n", floatabs( g_vFirstLoc[plr][2] - g_vSecondLoc[plr][2] ) );
		len += format( menu[len], 2047 - len, "\r      \wReal distance: \d%f^n^n", get_distance_f( g_vFirstLoc[plr], g_vSecondLoc[plr] ) );
	}
	else
	{
		len += format( menu[len], 2047 - len, "\d[\r1\d]\w \wSet Loc #1 \d< %i | %i | %i >^n", floatround( g_vFirstLoc[plr][0], floatround_round ), floatround( g_vFirstLoc[plr][1], floatround_round ), floatround( g_vFirstLoc[plr][2], floatround_round ) );
		len += format( menu[len], 2047 - len, "\d[\r2\d]\w \wSet Loc #2 \d< %i | %i | %i >^n^n", floatround( g_vSecondLoc[plr][0], floatround_round ), floatround( g_vSecondLoc[plr][1], floatround_round ), floatround( g_vSecondLoc[plr][2], floatround_round ) );
		len += format( menu[len], 2047 - len, "\d[\r3\d]\w \wAutomatical setting of the other Loc: \d%s^n^n", g_bAutoSetting[plr] ? "on" : "off" );
		len += format( menu[len], 2047 - len, "\d[\r4\d]\w \wDetailed results: \d%s^n", g_bDetailedResults[plr] ? "on" : "off" );
		len += format( menu[len], 2047 - len, "\d[\r5\d]\w \wReturned values: \drounded^n^n" );
		len += format( menu[len], 2047 - len, "\r      \wResults:^n" );

		if( g_bDetailedResults[plr] )
		{
			len += format( menu[len], 2047 - len, "\r      \wX-Distance: \d%i^n", floatround( floatabs( g_vFirstLoc[plr][0] - g_vSecondLoc[plr][0] ), floatround_round ) );
			len += format( menu[len], 2047 - len, "\r      \wY-Distance: \d%i^n", floatround( floatabs( g_vFirstLoc[plr][1] - g_vSecondLoc[plr][1] ), floatround_round ) );
		}

		len += format( menu[len], 2047 - len, "\r      \wHeight difference: \d%i^n", floatround( floatabs( g_vFirstLoc[plr][2] - g_vSecondLoc[plr][2] ), floatround_round ) );
		len += format( menu[len], 2047 - len, "\r      \wReal distance: \d%i^n^n", floatround( get_distance_f( g_vFirstLoc[plr], g_vSecondLoc[plr] ), floatround_round ) );

	}

	len += format( menu[len], 2047 - len, "\d[\r6\d]\w \wShow beams: \d%s^n^n", g_bShowBeams[plr] ? "on" : "off" );
	len += format( menu[len], 2047 - len, "\d[\r0\d]\w \wExit" );

	show_menu( plr, ( 1<<0 | 1<<1 | 1<<2 | 1<<3 | 1<<4 | 1<<9 ), menu, -1 );
}

public menuAction( plr, key )
{
	switch( key )
	{
		case 0:
		{
			fm_get_aim_origin( plr, g_vFirstLoc[plr] );

			if( g_bAutoSetting[plr] )
			{
				get_tr2( 0, TR_vecPlaneNormal, g_vSecondLoc[plr] );

				kz_vecotr_mul_scalar( g_vSecondLoc[plr], 9999.0, g_vSecondLoc[plr] );
				kz_vector_add( g_vFirstLoc[plr], g_vSecondLoc[plr], g_vSecondLoc[plr] );

				fm_trace_line( plr, g_vFirstLoc[plr], g_vSecondLoc[plr], g_vSecondLoc[plr] );
			}

			menuDisplay( plr );
		}
		case 1:
		{
			fm_get_aim_origin( plr, g_vSecondLoc[plr] );

			if( g_bAutoSetting[plr] )
			{
				get_tr2( 0, TR_vecPlaneNormal, g_vFirstLoc[plr] );

				kz_vecotr_mul_scalar( g_vFirstLoc[plr], 9999.0, g_vFirstLoc[plr] );
				kz_vector_add( g_vFirstLoc[plr], g_vSecondLoc[plr], g_vFirstLoc[plr] );

				fm_trace_line( plr, g_vSecondLoc[plr], g_vFirstLoc[plr], g_vFirstLoc[plr] );
			}

			menuDisplay( plr );
		}
		case 2:
		{
			g_bAutoSetting[plr] = !g_bAutoSetting[plr];
			menuDisplay( plr );
		}
		case 3:
		{
			g_bDetailedResults[plr] = !g_bDetailedResults[plr];
			menuDisplay( plr );
		}
		case 4:
		{
			g_bReturnFloat[plr] = !g_bReturnFloat[plr];
			menuDisplay( plr );
		}
		case 5:
		{
			g_bShowBeams[plr] = !g_bShowBeams[plr];

			if( !g_bShowBeams[plr] && task_exists( plr + TASK_BEAM ) )
			{
				remove_task( plr + TASK_BEAM );
			}
			else
			{
				set_task( 0.1, "tskBeam", plr + TASK_BEAM, _, _, "ab" );
			}

			menuDisplay( plr );
		}
		case 9:
		{
			remove_task( plr + TASK_BEAM );
			show_menu( plr, 0, "" );
		}
	}
}

public tskBeam( plr )
{
	plr -= TASK_BEAM;

	draw_beam( plr, g_vFirstLoc[plr], g_vSecondLoc[plr], DIST_R, DIST_G, DIST_B );

	if( floatabs( g_vFirstLoc[plr][2] - g_vSecondLoc[plr][2] ) >= 2 )
	{
		static Float:temp[3];
		temp[0] = g_vSecondLoc[plr][0];
		temp[1] = g_vSecondLoc[plr][1];
		temp[2] = g_vFirstLoc[plr][2];

		draw_beam( plr, g_vFirstLoc[plr], temp, DIST_R, DIST_G, DIST_B );
		draw_beam( plr, temp, g_vSecondLoc[plr], DIST_R, DIST_G, DIST_B );
	}
}

public draw_beam( plr, Float:aorigin[3], Float:borigin[3], r, g, b )
{

	message_begin( MSG_ONE_UNRELIABLE, SVC_TEMPENTITY, { 0.0, 0.0, 0.0 }, plr );
	write_byte( TE_BEAMPOINTS );
	engfunc( EngFunc_WriteCoord, aorigin[0] );
	engfunc( EngFunc_WriteCoord, aorigin[1] );
	engfunc( EngFunc_WriteCoord, aorigin[2] );
	engfunc( EngFunc_WriteCoord, borigin[0] );
	engfunc( EngFunc_WriteCoord, borigin[1] );
	engfunc( EngFunc_WriteCoord, borigin[2] );
	write_short( g_flBeam );
	write_byte( 0 );
	write_byte( 0 );
	write_byte( 2 );
	write_byte( 20 );
	write_byte( 0 );
	write_byte( r );
	write_byte( g );
	write_byte( b );
	write_byte( 150 );
	write_byte( 0 );
	message_end( );
}

is_user_ducking( plr )
{
	if( !pev_valid( plr )  )
	{
		return 0;
	}

	new Float:abs_min[3], Float:abs_max[3];
	pev( plr, pev_absmin, abs_min );
	pev( plr, pev_absmax, abs_max );

	abs_min[2] += 64.0;

	if( abs_min[2] < abs_max[2] )
	{
		return 0;
	}

	return 1;
}

fm_get_aim_origin( plr, Float:origin[3] )
{
	new Float:start[3], Float:view_ofs[3];
	pev( plr, pev_origin, start );
	pev( plr, pev_view_ofs, view_ofs );
	kz_vector_add( start, view_ofs, start );

	new Float:dest[3];
	pev( plr, pev_v_angle, dest );
	engfunc( EngFunc_MakeVectors, dest);
	global_get( glb_v_forward, dest );
	kz_vecotr_mul_scalar( dest, 9999.0, dest );
	kz_vector_add( start, dest, dest );

	engfunc( EngFunc_TraceLine, start, dest, 0, plr, 0 );
	get_tr2( 0, TR_vecEndPos, origin );

	return 1;
}

fm_trace_line( ignoreent, const Float:start[3], const Float:end[3], Float:ret[3] )
{
	engfunc( EngFunc_TraceLine, start, end, ignoreent == -1 ? 1 : 0, ignoreent, 0 );

	new ent = get_tr2( 0, TR_pHit );
	get_tr2( 0, TR_vecEndPos, ret );

	return pev_valid( ent ) ? ent : 0;
}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ DEVELOPER ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

public give_savepos(id)
{
	if(!access(id,ADMIN_IMMUNITY))
		return PLUGIN_HANDLED;

	new arg1[33], arg2[33], arg3[33], arg4[33], save_data[64], createinto[256]
	new origin[3]

	read_argv(1, arg1, 31)
	read_argv(2, arg2, 31)
	read_argv(3, arg3, 31)
	read_argv(4, arg4, 31)

	new target = cmd_target(id, arg1, 1)

	pev(target, pev_origin, origin)
	new wpn = get_user_weapon( target )
	new hp = get_user_health(target)
	get_time("%Y%m%d%H%M%S", save_data, sizeof save_data - 1)

	formatex(createinto, sizeof createinto - 1, "REPLACE INTO `kz_savepos` (`map_id`, `authid`, `time`, `x`, `y`, `z`, `weapon`, `cp`, `tp`, `hp`, `date`) VALUES ('%d', '%s', '%s', '%d', '%d', '%d', '%s', '%s', '%s', '%d', '%s');", kz_mapID, kz_authid[id], arg2, origin[0], origin[1], origin[2], g_weaponsnames[wpn], arg3, arg4, hp, save_data)
	SQL_ThreadQuery(g_SqlTuple, "SQL_WorkHandle", createinto)

	return PLUGIN_HANDLED;
}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Orpheu AXN ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

/*public OR_PMMove(OrpheuStruct:pmove, server)
{
	if(mapIsAXN)
	{
		g_ppmove = pmove;
	}
}

public OR_PMJump()
{
	if(mapIsAXN)
	{
		g_flOldMaxSpeed = Float:OrpheuGetStructMember(g_ppmove, "maxspeed");
		OrpheuSetStructMember(g_ppmove, "maxspeed", 0.0);
	}
}

public OR_PMJump_P()
{
	if(mapIsAXN)
	{
		OrpheuSetStructMember(g_ppmove, "fuser2", 0.0);
		OrpheuSetStructMember(g_ppmove, "maxspeed", g_flOldMaxSpeed);
	}
}*/
