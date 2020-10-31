native g_ArrayMapList();

#define prefix "[CC]"
new sv_airaccelerate, sv_gravity;

public VIP_ACCESS(id)
{
	new access[32];
	if(id > 0)
	{
		if( get_user_flags(id) & ADMIN_IMMUNITY )
			access = "Head Admin";

		if (get_user_flags(id) & ADMIN_LEVEL_E)
			access = "Honorary";

		if (get_user_flags(id) & ADMIN_LEVEL_H)
			access = "VIP LVL 3";

		if (get_user_flags(id) & ADMIN_LEVEL_G)
			access = "VIP LVL 2";

		if (get_user_flags(id) & ADMIN_LEVEL_F)
			access = "VIP LVL 1";

		if (get_user_flags(id) & ADMIN_USER)
			access = "User";
	}
	else
	{
		access = "Server";
	}

	return access;
}

stock StringTimer(const Float:flRealTime, szOutPut[], const iSizeOutPut)
{
    static Float:flTime, iMinutes, iSeconds, iMiliSeconds, Float:iMili;
    new string[12]

    flTime = flRealTime;

    if(flTime < 0.0) flTime = 0.0;

    iMinutes = floatround(flTime / 60, floatround_floor);
    iSeconds = floatround(flTime - (iMinutes * 60), floatround_floor);
    iMili = floatfract(flRealTime)
    formatex(string, 11, "%.02f", iMili >= 0 ? iMili + 0.005 : iMili - 0.005);
    iMiliSeconds = floatround(str_to_float(string) * 100, floatround_floor);

    formatex(szOutPut, iSizeOutPut, "%02d:%02d.%02d", iMinutes, iSeconds, iMiliSeconds);
}

stock Weapon_Converter(speed)
{
	new weapon_name[15];
	if (speed == 250) weapon_name = "USP [250]";
	if (speed == 245) weapon_name = "P90 [245]";
	if (speed == 240) weapon_name = "FAMAS [240]";
	if (speed == 235) weapon_name = "SG550 [235]";
	if (speed == 230) weapon_name = "M4A1 [230]";
	if (speed == 221) weapon_name = "AK47 [221]";
	if (speed == 220) weapon_name = "M249 [220]";
	if (speed == 210) weapon_name = "AWP [210]";

	return weapon_name;
}

stock Weapon_ID_Converter(speed)
{
	new weapon_name[15];
	if (speed == 250) weapon_name = "weapon_usp";
	if (speed == 245) weapon_name = "weapon_p90";
	if (speed == 240) weapon_name = "weapon_famas";
	if (speed == 235) weapon_name = "weapon_sg550";
	if (speed == 230) weapon_name = "weapon_m4a1";
	if (speed == 221) weapon_name = "weapon_ak47";
	if (speed == 220) weapon_name = "weapon_m249";
	if (speed == 210) weapon_name = "weapon_awp";

	return weapon_name;
}

stock ham_give_weapon(id,weapon[])
{
	if(!equal(weapon,"weapon_",7))
		return 0

	new wEnt = engfunc(EngFunc_CreateNamedEntity,engfunc(EngFunc_AllocString,weapon));

	if(!pev_valid(wEnt))
		return 0

	set_pev(wEnt,pev_spawnflags,SF_NORESPAWN);
	dllfunc(DLLFunc_Spawn,wEnt)

	if(!ExecuteHamB(Ham_AddPlayerItem,id,wEnt))
	{
		if(pev_valid(wEnt)) set_pev(wEnt,pev_flags,pev(wEnt,pev_flags) | FL_KILLME);
		return 0
	}

	ExecuteHamB(Ham_Item_AttachToPlayer,wEnt,id)
	return 1
}

stock kz_vector_add(const Float:in1[], const Float:in2[], Float:out[])
{
	out[0] = in1[0] + in2[0];
	out[1] = in1[1] + in2[1];
	out[2] = in1[2] + in2[2];
}

stock kz_vecotr_mul_scalar(const Float:vec[], Float:scalar, Float:out[])
{
	out[0] = vec[0] * scalar;
	out[1] = vec[1] * scalar;
	out[2] = vec[2] * scalar;
}