/**
*
*	Regasen Play
*	Airbreak/TP/Fly
*
**/
forward OnCheatDetected(playerid);

new 
    Float:ac_fly_x[MAX_PLAYERS],
    Float:ac_fly_y[MAX_PLAYERS],
    Float:ac_fly_z[MAX_PLAYERS];

stock DistancePointToPoint(Float: x, Float: y, Float: z, Float: fx, Float:fy, Float: fz) return floatround(floatsqroot(floatpower(fx - x, 2) + floatpower(fy - y, 2) + floatpower(fz - z, 2)));

stock GetPlayerSpeed(playerid)
{
    if(playerid != INVALID_PLAYER_ID)
    {
        new Float:Pos[3],Float:PS;
        GetPlayerVelocity(playerid, Pos[0], Pos[1], Pos[2]);
        PS = floatsqroot(Pos[0]*Pos[0] + Pos[1]*Pos[1] + Pos[2]*Pos[2])*200;
        return floatround(PS,floatround_round);
    }
    return INVALID_PLAYER_ID;
}

stock ac_fly_SetPlayerPos(playerid, Float:x, Float:y, Float:z)
{
    new 
        Float:_x, Float:_y, Float:_z;

    SetPVarInt(playerid, "ac-ignore", gettime() + 1);
    GetPlayerPos(playerid, _x, _y, _z);

    ac_fly_x[playerid] = _x;
    ac_fly_y[playerid] = _y;
    ac_fly_z[playerid] = _z;

    return SetPlayerPos(playerid, x, y, z);
}
#if defined _ALS_SetPlayerPos
    #undef SetPlayerPos
#else
    #define _ALS_SetPlayerPos
#endif

#define SetPlayerPos ac_fly_SetPlayerPos

forward ac_timer(playerid); 
public ac_timer(playerid)
{
	
    new 
        Float:_x, Float:_y, Float:_z,
        distance;

	switch(GetPlayerState(playerid))
	{
		case PLAYER_STATE_DRIVER:
		{
			GetVehiclePos(GetPlayerVehicleID(playerid), _x, _y, _z);
			distance = floatround(DistancePointToPoint(_x, _y, _z, ac_fly_x[playerid], ac_fly_y[playerid], ac_fly_z[playerid]));
			if((GetVehicleSpeed(GetPlayerVehicleID(playerid)) == 0 && floatround(_z - ac_fly_z[playerid]) == 0 && distance >= 20) && gettime() > GetPVarInt(playerid, "ac-ignore") || distance > 200)
			{
				OnCheatDetected(playerid);
			}
		}
		case PLAYER_STATE_ONFOOT:
		{
			GetPlayerPos(playerid, _x, _y, _z);
			distance = floatround(DistancePointToPoint(_x, _y, _z, ac_fly_x[playerid], ac_fly_y[playerid], ac_fly_z[playerid]));
			if(gettime() > GetPVarInt(playerid, "ac-ignore") && ((GetPlayerSpeed(playerid) == 0 && floatround(_z - ac_fly_z[playerid]) == 0 && distance >= 2) || distance > 12))
			{
				switch(GetPlayerAnimationIndex(playerid))
				{
					case 1130, 1060, 1061, 1062, 1063, 1064, 1065, 1066, 1067, 1097: {}
					default: 
					{
						OnCheatDetected(playerid);
					}
				}
			}
		}
	}
    
    ac_fly_x[playerid] = _x;
    ac_fly_y[playerid] = _y;
    ac_fly_z[playerid] = _z;
	
    #if defined ac_fly_ac_timer
        return ac_fly_ac_timer(playerid);
    #else
        return 1;
    #endif
}
#if defined _ALS_ac_timer
    #undef ac_timer
#else
    #define _ALS_ac_timer
#endif

#define ac_timer ac_fly_ac_timer
#if defined ac_fly_ac_timer
    forward ac_fly_ac_timer(playerid);
#endif

public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger)
{
	SetPVarInt(playerid, "ac-ignore", gettime() + 1);
	
    #if defined ac_fly_OnPlayerEnterVehicle
        return ac_fly_OnPlayerEnterVehicle(playerid, vehicleid, ispassenger);
    #else
        return 1;
    #endif
}
#if defined _ALS_OnPlayerEnterVehicle
    #undef OnPlayerEnterVehicle
#else
    #define _ALS_OnPlayerEnterVehicle
#endif

#define OnPlayerEnterVehicle ac_fly_OnPlayerEnterVehicle
#if defined ac_fly_OnPlayerEnterVehicle
    forward ac_fly_OnPlayerEnterVehicle(playerid, vehicleid, ispassenger);
#endif

public OnPlayerExitVehicle(playerid, vehicleid)
{
	SetPVarInt(playerid, "ac-ignore", gettime() + 1);
	
    #if defined ac_fly_OnPlayerExitVehicle
        return ac_fly_OnPlayerExitVehicle(playerid, vehicleid);
    #else
        return 1;
    #endif
}
#if defined _ALS_OnPlayerExitVehicle
    #undef OnPlayerExitVehicle
#else
    #define _ALS_OnPlayerExitVehicle
#endif

#define OnPlayerExitVehicle ac_fly_OnPlayerExitVehicle
#if defined ac_fly_OnPlayerExitVehicle
    forward ac_fly_OnPlayerExitVehicle(playerid, vehicleid);
#endif
