#include <a_samp>
#if defined h_driveby_included
	#endinput
#endif
#define h_driveby_included
new bool:h_drivebying[MAX_PLAYERS];

/*
native IsPlayerDrivebying(playerid);
*/

forward OnPlayerStartDriveby(playerid);
forward OnPlayerStopDriveby(playerid);

public OnPlayerDisconnect(playerid, reason)
{
	h_drivebying[playerid] = false;

    #if defined H_db_OnPlayerDisconnect
        return H_db_OnPlayerDisconnect(playerid, reason);
    #else
        return 1;
    #endif
}


#if defined _ALS_OnPlayerDisconnect
    #undef OnPlayerDisconnect
#else
    #define _ALS_OnPlayerDisconnect
#endif

#define OnPlayerDisconnect H_db_OnPlayerDisconnect
#if defined H_db_OnPlayerDisconnect
    forward H_db_OnPlayerDisconnect(playerid, reason);
#endif

public OnPlayerUpdate(playerid)
{
	if(GetPlayerCameraMode(playerid) == 55 && h_drivebying[playerid] == false)
	{
		h_drivebying[playerid] = true;
		CallLocalFunction("OnPlayerStartDriveby", "i", playerid);
	}
	else if(GetPlayerCameraMode(playerid) != 55 && h_drivebying[playerid] == true)
	{
		h_drivebying[playerid] = false;
		CallLocalFunction("OnPlayerStopDriveby", "i", playerid);
	}

    #if defined H_db_OnPlayerUpdate
        return H_db_OnPlayerUpdate(playerid);
    #else
        return 1;
    #endif
}

stock IsPlayerDrivebying(playerid)
{
	return h_drivebying[playerid] == true ? 1 : 0;
}

#if defined _ALS_OnPlayerUpdate
    #undef OnPlayerUpdate
#else
    #define _ALS_OnPlayerUpdate
#endif

#define OnPlayerUpdate H_db_OnPlayerUpdate
#if defined H_db_OnPlayerUpdate
    forward H_db_OnPlayerUpdate(playerid);
#endif