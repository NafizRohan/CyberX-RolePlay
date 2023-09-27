// Rent By Nafiz
#define MAX_RENTS       500
#define MAX_CHAR        32
new rentveh[MAX_PLAYERS];
new renttimer[MAX_PLAYERS];
new listrent[MAX_PLAYERS][10];
new chooserentId[MAX_PLAYERS];
new PlayerText: RENT_TIMER[MAX_PLAYERS][4];

// Rent types
#define RENT_TYPE_BIKE      1
#define RENT_TYPE_CAR       2
#define RENT_TYPE_BOAT      3

enum RentEnum
{
    rId,
    rExists,
    rType,
    rName[MAX_CHAR],
    rSetup,
    Float:rPosX,
    Float:rPosY,
    Float:rPosZ,
    Float:rVehX,
    Float:rVehY,
    Float:rVehZ,
    Float:rVehA,
    rPickup,
    Text3D:rText,
    v_model[10],
    v_price[10]
};
new RentInfo[MAX_RENTS][RentEnum];

RentModel(id, type, rid)
{
    if(type == RENT_TYPE_BIKE)
    {
        RentInfo[id][v_model][0] = 481;
        RentInfo[id][v_model][1] = 509;
        RentInfo[id][v_model][2] = 510;
        RentInfo[id][v_model][3] = 462;
        RentInfo[id][v_model][4] = 461;
        RentInfo[id][v_model][5] = 463;
        RentInfo[id][v_model][6] = 581;
        RentInfo[id][v_model][7] = 586;
        RentInfo[id][v_model][8] = 471;

        mysql_format(connectionID, queryBuffer, sizeof(queryBuffer), "UPDATE  rents SET v_model_1 = %i, v_model_2 = %i, v_model_3 = %i, v_model_4 = %i, v_model_5 = %i, v_model_6 = %i, v_model_7 = %i, v_model_8 = %i, v_model_9 = %i WHERE rid = %i", RentInfo[id][v_model][0], RentInfo[id][v_model][1], RentInfo[id][v_model][2], RentInfo[id][v_model][3], RentInfo[id][v_model][4], RentInfo[id][v_model][5], RentInfo[id][v_model][6], RentInfo[id][v_model][7], RentInfo[id][v_model][8], rid);
	    mysql_tquery(connectionID, queryBuffer);
    }
    if(type == RENT_TYPE_CAR)
    {
        RentInfo[id][v_model][0] = 405;
        RentInfo[id][v_model][1] = 410;
        RentInfo[id][v_model][2] = 419;
        RentInfo[id][v_model][3] = 426;
        RentInfo[id][v_model][4] = 436;
        RentInfo[id][v_model][5] = 445;
        RentInfo[id][v_model][6] = 466;
        RentInfo[id][v_model][7] = 492;
        RentInfo[id][v_model][8] = 504;
        RentInfo[id][v_model][9] = 517;
        mysql_format(connectionID, queryBuffer, sizeof(queryBuffer), "UPDATE  rents SET v_model_1 = %i, v_model_2 = %i, v_model_3 = %i, v_model_4 = %i, v_model_5 = %i, v_model_6 = %i, v_model_7 = %i, v_model_8 = %i, v_model_9 = %i, v_model_10 = %i WHERE rid = %i", RentInfo[id][v_model][0], RentInfo[id][v_model][1], RentInfo[id][v_model][2], RentInfo[id][v_model][3], RentInfo[id][v_model][4], RentInfo[id][v_model][5], RentInfo[id][v_model][6], RentInfo[id][v_model][7], RentInfo[id][v_model][8], RentInfo[id][v_model][9], rid);
	    mysql_tquery(connectionID, queryBuffer);
    }
    if(type == RENT_TYPE_BOAT)
    {
        RentInfo[id][v_model][0] = 430;
        RentInfo[id][v_model][1] = 446;
        RentInfo[id][v_model][2] = 472;
        RentInfo[id][v_model][3] = 473;
        RentInfo[id][v_model][4] = 493;
        RentInfo[id][v_model][5] = 453;
        RentInfo[id][v_model][6] = 452;
        mysql_format(connectionID, queryBuffer, sizeof(queryBuffer), "UPDATE  rents SET v_model_1 = %i, v_model_2 = %i, v_model_3 = %i, v_model_4 = %i, v_model_5 = %i, v_model_6 = %i, v_model_7 = %i WHERE rid = %i", RentInfo[id][v_model][0], RentInfo[id][v_model][1], RentInfo[id][v_model][2], RentInfo[id][v_model][3], RentInfo[id][v_model][4], RentInfo[id][v_model][5], RentInfo[id][v_model][6], rid);
	    mysql_tquery(connectionID, queryBuffer);
    }

}

RentPrice(id, type, rid)
{
    if(type == RENT_TYPE_BIKE)
    {
        RentInfo[id][v_price][0] = 30;
        RentInfo[id][v_price][1] = 30;
        RentInfo[id][v_price][2] = 30;
        RentInfo[id][v_price][3] = 50;
        RentInfo[id][v_price][4] = 50;
        RentInfo[id][v_price][5] = 50;
        RentInfo[id][v_price][6] = 50;
        RentInfo[id][v_price][7] = 50;
        RentInfo[id][v_price][8] = 50;

        mysql_format(connectionID, queryBuffer, sizeof(queryBuffer), "UPDATE  rents SET v_price_1 = %i, v_price_2 = %i, v_price_3 = %i, v_price_4 = %i, v_price_5 = %i, v_price_6 = %i, v_price_7 = %i, v_price_8 = %i, v_price_9 = %i WHERE rid = %i", RentInfo[id][v_price][0], RentInfo[id][v_price][1], RentInfo[id][v_price][2], RentInfo[id][v_price][3], RentInfo[id][v_price][4], RentInfo[id][v_price][5], RentInfo[id][v_price][6], RentInfo[id][v_price][7], RentInfo[id][v_price][8], rid);
	    mysql_tquery(connectionID, queryBuffer);
    }
    if(type == RENT_TYPE_CAR)
    {
        RentInfo[id][v_price][0] = 60;
        RentInfo[id][v_price][1] = 60;
        RentInfo[id][v_price][2] = 60;
        RentInfo[id][v_price][3] = 60;
        RentInfo[id][v_price][4] = 60;
        RentInfo[id][v_price][5] = 60;
        RentInfo[id][v_price][6] = 60;
        RentInfo[id][v_price][7] = 60;
        RentInfo[id][v_price][8] = 60;
        RentInfo[id][v_price][9] = 60;
        mysql_format(connectionID, queryBuffer, sizeof(queryBuffer), "UPDATE  rents SET v_price_1 = %i, v_price_2 = %i, v_price_3 = %i, v_price_4 = %i, v_price_5 = %i, v_price_6 = %i, v_price_7 = %i, v_price_8 = %i, v_price_9 = %i, v_price_10 = %i WHERE rid = %i", RentInfo[id][v_price][0], RentInfo[id][v_price][1], RentInfo[id][v_price][2], RentInfo[id][v_price][3], RentInfo[id][v_price][4], RentInfo[id][v_price][5], RentInfo[id][v_price][6], RentInfo[id][v_price][7], RentInfo[id][v_price][8], RentInfo[id][v_price][9], rid);
	    mysql_tquery(connectionID, queryBuffer);
    }
    if(type == RENT_TYPE_BOAT)
    {
        RentInfo[id][v_price][0] = 100;
        RentInfo[id][v_price][1] = 100;
        RentInfo[id][v_price][2] = 100;
        RentInfo[id][v_price][3] = 100;
        RentInfo[id][v_price][4] = 100;
        RentInfo[id][v_price][5] = 100;
        RentInfo[id][v_price][6] = 100;
        mysql_format(connectionID, queryBuffer, sizeof(queryBuffer), "UPDATE  rents SET v_price_1 = %i, v_price_2 = %i, v_price_3 = %i, v_price_4 = %i, v_price_5 = %i, v_price_6 = %i, v_price_7 = %i WHERE rid = %i", RentInfo[id][v_price][0], RentInfo[id][v_price][1], RentInfo[id][v_price][2], RentInfo[id][v_price][3], RentInfo[id][v_price][4], RentInfo[id][v_price][5], RentInfo[id][v_price][6], rid);
	    mysql_tquery(connectionID, queryBuffer);
    }

}

GetNearestRentId(playerid)
{
    for(new i = 0; i < MAX_RENTS; i ++)
    {
        if(IsPlayerInRangeOfPoint(playerid, 3.5, RentInfo[i][rPosX], RentInfo[i][rPosY], RentInfo[i][rPosZ])) return i;
    }
    return -1;
}

GetRentPrice(rentid, modelid)
{
    new price = -1;
    for(new i = 0; i < 10; i ++)
    {
        if(RentInfo[rentid][v_model][i] == modelid)
        {
            price = RentInfo[rentid][v_price][i];
            break;
        }
    }
    return price;
}
CreateRentTimer(playerid)
{
    RENT_TIMER[playerid][0] = CreatePlayerTextDraw(playerid, 527.000, 120.000, "RENT_LEFT");
    PlayerTextDrawLetterSize(playerid, RENT_TIMER[playerid][0], 0.280, 1.500);
    PlayerTextDrawTextSize(playerid, RENT_TIMER[playerid][0], 3.000, -19.000);
    PlayerTextDrawAlignment(playerid, RENT_TIMER[playerid][0], 1);
    PlayerTextDrawColor(playerid, RENT_TIMER[playerid][0], 12582911);
    PlayerTextDrawSetShadow(playerid, RENT_TIMER[playerid][0], 1);
    PlayerTextDrawSetOutline(playerid, RENT_TIMER[playerid][0], 1);
    PlayerTextDrawBackgroundColor(playerid, RENT_TIMER[playerid][0], 150);
    PlayerTextDrawFont(playerid, RENT_TIMER[playerid][0], 2);
    PlayerTextDrawSetProportional(playerid, RENT_TIMER[playerid][0], 1);

    RENT_TIMER[playerid][1] = CreatePlayerTextDraw(playerid, 557.000, 135.000, "__");
    PlayerTextDrawLetterSize(playerid, RENT_TIMER[playerid][1], 1.149, 1.297);
    PlayerTextDrawTextSize(playerid, RENT_TIMER[playerid][1], 66.000, -86.000);
    PlayerTextDrawAlignment(playerid, RENT_TIMER[playerid][1], 2);
    PlayerTextDrawColor(playerid, RENT_TIMER[playerid][1], -65281);
    PlayerTextDrawUseBox(playerid, RENT_TIMER[playerid][1], 1);
    PlayerTextDrawBoxColor(playerid, RENT_TIMER[playerid][1], 255);
    PlayerTextDrawSetShadow(playerid, RENT_TIMER[playerid][1], 1);
    PlayerTextDrawSetOutline(playerid, RENT_TIMER[playerid][1], 1);
    PlayerTextDrawBackgroundColor(playerid, RENT_TIMER[playerid][1], -65281);
    PlayerTextDrawFont(playerid, RENT_TIMER[playerid][1], 2);
    PlayerTextDrawSetProportional(playerid, RENT_TIMER[playerid][1], 1);

    RENT_TIMER[playerid][2] = CreatePlayerTextDraw(playerid, 517.000, 134.000, "Time:");
    PlayerTextDrawLetterSize(playerid, RENT_TIMER[playerid][2], 0.300, 1.299);
    PlayerTextDrawTextSize(playerid, RENT_TIMER[playerid][2], -86.000, -8.000);
    PlayerTextDrawAlignment(playerid, RENT_TIMER[playerid][2], 1);
    PlayerTextDrawColor(playerid, RENT_TIMER[playerid][2], 12582911);
    PlayerTextDrawSetShadow(playerid, RENT_TIMER[playerid][2], 1);
    PlayerTextDrawSetOutline(playerid, RENT_TIMER[playerid][2], 1);
    PlayerTextDrawBackgroundColor(playerid, RENT_TIMER[playerid][2], 255);
    PlayerTextDrawFont(playerid, RENT_TIMER[playerid][2], 2);
    PlayerTextDrawSetProportional(playerid, RENT_TIMER[playerid][2], 1);

    RENT_TIMER[playerid][3] = CreatePlayerTextDraw(playerid, 552.000, 133.000, "1390_sec");
    PlayerTextDrawLetterSize(playerid, RENT_TIMER[playerid][3], 0.209, 1.500);
    PlayerTextDrawTextSize(playerid, RENT_TIMER[playerid][3], 13.000, -8.000);
    PlayerTextDrawAlignment(playerid, RENT_TIMER[playerid][3], 1);
    PlayerTextDrawColor(playerid, RENT_TIMER[playerid][3], 12582911);
    PlayerTextDrawSetShadow(playerid, RENT_TIMER[playerid][3], 1);
    PlayerTextDrawSetOutline(playerid, RENT_TIMER[playerid][3], 1);
    PlayerTextDrawBackgroundColor(playerid, RENT_TIMER[playerid][3], 255);
    PlayerTextDrawFont(playerid, RENT_TIMER[playerid][3], 2);
    PlayerTextDrawSetProportional(playerid, RENT_TIMER[playerid][3], 1);

}

ShowRentTimerTD(playerid)
{
    PlayerTextDrawShow(playerid, RENT_TIMER[playerid][0]);
	PlayerTextDrawShow(playerid, RENT_TIMER[playerid][1]);
	PlayerTextDrawShow(playerid, RENT_TIMER[playerid][2]);
	PlayerTextDrawShow(playerid, RENT_TIMER[playerid][3]);
}

HideRentTimerTD(playerid)
{
    PlayerTextDrawHide(playerid, RENT_TIMER[playerid][0]);
	PlayerTextDrawHide(playerid, RENT_TIMER[playerid][1]);
	PlayerTextDrawHide(playerid, RENT_TIMER[playerid][2]);
	PlayerTextDrawHide(playerid, RENT_TIMER[playerid][3]);
}

ReloadRent(rentid)
{

    new string[128*2];
    DestroyDynamic3DTextLabel(RentInfo[rentid][rText]);
    DestroyDynamicPickup(RentInfo[rentid][rPickup]);
    format(string, sizeof(string), "[%s]\nID: %i\n "AQUA"Press 'N'", RentInfo[rentid][rName], rentid);
    RentInfo[rentid][rText] = CreateDynamic3DTextLabel(string, COLOR_YELLOW, RentInfo[rentid][rPosX], RentInfo[rentid][rPosY], RentInfo[rentid][rPosZ] + 0.1, 10.0);
    RentInfo[rentid][rPickup] = CreateDynamicPickup(19134, 1, RentInfo[rentid][rPosX], RentInfo[rentid][rPosY], RentInfo[rentid][rPosZ]);
    
}


forward OnRentCreate(playerid, rentid,  type, Float:x, Float:y, Float:z);
public OnRentCreate(playerid, rentid,  type, Float:x, Float:y, Float:z)
{
    strcpy(RentInfo[rentid][rName], "Vehicle Station", 32);

    RentInfo[rentid][rExists] = 1;
    RentInfo[rentid][rId] = cache_insert_id();
    RentInfo[rentid][rType] = type;
    RentInfo[rentid][rPosX] = x;
    RentInfo[rentid][rPosY] = y;
    RentInfo[rentid][rPosZ] = z;
    RentInfo[rentid][rText] = Text3D:INVALID_3DTEXT_ID;
    RentInfo[rentid][rPickup] = -1;
    RentInfo[rentid][rSetup] = 0;
    RentModel(rentid, type, RentInfo[rentid][rId]);
    RentPrice(rentid, type, RentInfo[rentid][rId]);

    ReloadRent(rentid);
    SM(playerid, COLOR_AQUA, "Rent Station %i created successfully.", rentid);
}

CMD:createrent(playerid, params[])
{
    new Float:x, Float:y, Float:z, type;
    if(PlayerInfo[playerid][pAdmin] < 6)
	{
	    return NotAuth(playerid);
	}
    if(sscanf(params, "i", type))
	{
	    SM(playerid, COLOR_SYNTAX, "U111111111111111111111111111111111111sage: /createrent [type (1-3)] ");
		SCM(playerid, COLOR_SYNTAX, "Types: 1 - Bikes | 2 - Cars | 3 - Boats");
		return 1;
	}
    if(type > 3 || type < 1)
	{
	    return SCM(playerid, COLOR_SYNTAX, "Invalid type.");
	}
    GetPlayerPos(playerid, x, y, z);

    for(new i = 0; i < MAX_RENTS; i ++)
    {
        if(!RentInfo[i][rExists])
	    {
			mysql_format(connectionID, queryBuffer, sizeof(queryBuffer), "INSERT INTO rents ( rtype, rpos_x, rpos_y, rpos_z) VALUES(%i, '%f', '%f', '%f')", type, x, y, z);
			mysql_tquery(connectionID, queryBuffer, "OnRentCreate", "iiifff", playerid, i,  type, x, y, z);
			return 1;
		}
    }
    SCM(playerid, COLOR_SYNTAX, "Rent slots are currently full. Ask managements to increase the internal limit.");
    return 1;
}

CMD:setvehpos(playerid, params[])
{
    new rentid, vehicleid, id;
    if(PlayerInfo[playerid][pAdmin] < 5)
	{
	    return NotAuth(playerid);
	}
	if(!PlayerInfo[playerid][pAdminDuty] && PlayerInfo[playerid][pAdmin] < 6)
	{
	    return SCM(playerid, COLOR_SYNTAX, "This command requires you to be on admin duty. /aduty to go on duty.");
	}
    if(sscanf(params, "i", rentid))
	{
	    return SCM(playerid, COLOR_SYNTAX, "Usage: /setvehpos [rentid]");
	}
    if(!(0 <= rentid < MAX_RENTS) || !RentInfo[rentid][rExists])
	{
	    return SCM(playerid, COLOR_SYNTAX, "Invalid rent station.");
	}
    if(!IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_SYNTAX, "You must be in a vehicle.");
    vehicleid = GetPlayerVehicleID( playerid );
    new Float:X, Float:Y, Float:Z, Float:angle;
	GetVehiclePos( vehicleid, X, Y, Z );
	GetVehicleZAngle( vehicleid, angle );

    RentInfo[rentid][rVehX] = X;
    RentInfo[rentid][rVehY] = Y;
    RentInfo[rentid][rVehZ] = Z;
    RentInfo[rentid][rVehA] = angle;
    id = RentInfo[rentid][rId];
    mysql_format(connectionID, queryBuffer, sizeof(queryBuffer), "UPDATE rents SET vpos_x = %f, vpos_y = %f, vpos_z = %f, vpos_a = %f, rsetup = 1 WHERE rid = %i", X, Y, Z, angle, id);
	mysql_tquery(connectionID, queryBuffer);
    RentInfo[rentid][rSetup] = 1;
    SM(playerid, COLOR_YELLOW, "You set vehicle possition for ID: %d", rentid);

    ReloadRent(rentid);
    return 1;

}

CMD:extendrent(playerid, params[])
{
    new time;
    if(!rentveh[playerid])
    {
        return SM(playerid, COLOR_SYNTAX, "You do not have any rented vehicle. Rent a vehicle first.");
    }
    if(sscanf(params, "i", time))
	{
	    return SCM(playerid, COLOR_SYNTAX, "Usage: /extendrent [minutes]");
	}
    if(time < 1 || time > 50) return SCM(playerid, COLOR_SYNTAX, "You can extend rent of a vehicle for minimum 1 minutes and maximum 50 minutes.");
    renttimer[playerid] += time*60;
    SM(playerid, COLOR_AQUA, "You extend your rent for %d", time);
    return true;

}

CMD:lockrent(playerid, params[])
{
    if(!rentveh[playerid])
    {
        return SM(playerid, COLOR_SYNTAX, "You do not have any rented vehicle. Rent a vehicle first.");
    }
    new  engine, lights, alarm, doors, bonnet, boot, objective;
	GetVehicleParamsEx(rentveh[playerid], engine, lights, alarm, doors, bonnet, boot, objective);
	if(doors == 0)
	{
		SCM(playerid, -1, "Rented Vehicle: Door locked!");
		SetVehicleParamsEx(rentveh[playerid], engine, lights, alarm, 1, bonnet, boot, objective);
	}
	else
	{
		SCM(playerid, -1, "Rented Vehicle: Door unlocked!");
		SetVehicleParamsEx(rentveh[playerid], engine, lights, alarm, 0, bonnet, boot, objective);
	}
	return 1;
}

CMD:removerent(playerid, params[])
{
    new rentid;
    if(PlayerInfo[playerid][pAdmin] < 5)
	{
	    return NotAuth(playerid);
	}
	if(!PlayerInfo[playerid][pAdminDuty] && PlayerInfo[playerid][pAdmin] < 6)
	{
	    return SCM(playerid, COLOR_SYNTAX, "This command requires you to be on admin duty. /aduty to go on duty.");
	}
	if(sscanf(params, "i", rentid))
	{
	    return SCM(playerid, COLOR_SYNTAX, "Usage: /removerent [rentid]");
	}
	if(!(0 <= rentid < MAX_RENTS) || !RentInfo[rentid][rExists])
	{
	    return SCM(playerid, COLOR_SYNTAX, "Invalid rent station.");
	}
    DestroyDynamic3DTextLabel(RentInfo[rentid][rText]);
	DestroyDynamicPickup(RentInfo[rentid][rPickup]);

    mysql_format(connectionID, queryBuffer, sizeof(queryBuffer), "DELETE FROM rents WHERE rid = %i", RentInfo[rentid][rId]);
	mysql_tquery(connectionID, queryBuffer);
    RentInfo[rentid][rExists] = 0;
    RentInfo[rentid][rId] = -1;
    RentInfo[rentid][rSetup] = 0;

    return 1;
}
