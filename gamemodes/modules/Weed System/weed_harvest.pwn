#define COLOR_WEED_ORANGE 	0xF58E20FF
#define COLOR_WEED_YELLOW 	0xEDE02BFF
#define COLOR_WEED_GREEN 	0x9DED2DFF
#define COLOR_LIGHT_BLUE 0x6feddcFF

#define MAX_WEED_PLANT 1000

new Flint_WeedField;

new WeedFieldTimer[MAX_WEED_PLANT];
new STREAMER_TAG_OBJECT:WeedFieldObject[MAX_WEED_PLANT];
new TotalWeedCount = 0;
new Text3D:WeedField3D[MAX_WEED_PLANT];

forward IsPlayerAtWeedField(playerid);
public IsPlayerAtWeedField(playerid){
    if(IsPlayerInDynamicArea(playerid, Flint_WeedField))
    {
        return true;
    }
    return false;
}

forward OnWeedCheckState();
public OnWeedCheckState()
{
	for(new i=0; i<TotalWeedCount; i++)
	{
		if(WeedFieldTimer [i] == 1)
		{
			UpdateDynamic3DTextLabelText(WeedField3D[i] , COLOR_WEED_ORANGE, "Seeding\nStage: 5\%");
			WeedFieldTimer[i] ++;
		}
		else if(WeedFieldTimer [i] == 2)
		{
			UpdateDynamic3DTextLabelText(WeedField3D[i] , COLOR_WEED_ORANGE, "Seeding\nStage: 10\%");
			WeedFieldTimer[i] ++;
		}
		else if(WeedFieldTimer [i] == 3)
		{
			UpdateDynamic3DTextLabelText(WeedField3D[i] , COLOR_WEED_ORANGE, "Seeding\nStage: 15\%");
			WeedFieldTimer[i] ++;
		}
		else if(WeedFieldTimer [i] == 4)
		{
			UpdateDynamic3DTextLabelText(WeedField3D[i] , COLOR_WEED_ORANGE, "Seeding\nStage: 20\%");
			WeedFieldTimer[i] ++;
		}
		else if(WeedFieldTimer [i] == 5)
		{
			UpdateDynamic3DTextLabelText(WeedField3D[i] , COLOR_WEED_ORANGE, "Seeding\nStage: 25%");
			WeedFieldTimer[i] ++;
		}
		else if(WeedFieldTimer [i] == 6)
		{
			UpdateDynamic3DTextLabelText(WeedField3D[i] , COLOR_WEED_ORANGE, "Seeding\nStage: 30%");
			WeedFieldTimer[i] ++;
		}
		else if(WeedFieldTimer [i] == 7)
		{
			UpdateDynamic3DTextLabelText(WeedField3D[i] , COLOR_WEED_ORANGE, "Seeding\nStage: 35%");
			WeedFieldTimer[i] ++;
		}
		else if(WeedFieldTimer [i] == 8)
		{
			UpdateDynamic3DTextLabelText(WeedField3D[i] , COLOR_WEED_ORANGE, "Seeding\nStage: 40%");
			WeedFieldTimer[i] ++;
		}
		else if(WeedFieldTimer [i] == 9)
		{
			UpdateDynamic3DTextLabelText(WeedField3D[i] , COLOR_WEED_ORANGE, "Seeding\nStage: 45%");
			WeedFieldTimer[i] ++;
		}
		else if(WeedFieldTimer [i] == 10)
		{
			UpdateDynamic3DTextLabelText(WeedField3D[i] , COLOR_WEED_ORANGE, "Seeding\nStage: 50%");
			WeedFieldTimer[i] ++;
		}
		else if(WeedFieldTimer [i] == 11)
		{
			UpdateDynamic3DTextLabelText(WeedField3D[i] , COLOR_WEED_ORANGE, "Seeding\nStage: 55%");
			WeedFieldTimer[i] ++;
		}
		else if(WeedFieldTimer [i] == 12)
		{
			UpdateDynamic3DTextLabelText(WeedField3D[i] , COLOR_WEED_ORANGE, "Seeding\nStage: 60%");
			WeedFieldTimer[i] ++;
		}
		else if(WeedFieldTimer [i] == 13)
		{
			UpdateDynamic3DTextLabelText(WeedField3D[i] , COLOR_WEED_ORANGE, "Seeding\nStage: 65%");
			WeedFieldTimer[i] ++;
		}
		else if(WeedFieldTimer [i] == 14)
		{
			UpdateDynamic3DTextLabelText(WeedField3D[i] , COLOR_WEED_ORANGE, "Seeding\nStage: 70%");
			WeedFieldTimer[i] ++;
		}
		else if(WeedFieldTimer [i] == 15)
		{
			UpdateDynamic3DTextLabelText(WeedField3D[i] , COLOR_WEED_ORANGE, "Seeding\nStage: 75%");
			WeedFieldTimer[i] ++;
		}
		else if(WeedFieldTimer [i] == 16)
		{
			UpdateDynamic3DTextLabelText(WeedField3D[i] , COLOR_WEED_ORANGE, "Seeding\nStage: 80%");
			WeedFieldTimer[i] ++;
		}
		else if(WeedFieldTimer [i] == 17)
		{
			UpdateDynamic3DTextLabelText(WeedField3D[i] , COLOR_WEED_ORANGE, "Seeding\nStage: 85%");
			WeedFieldTimer[i] ++;
		}
		else if(WeedFieldTimer [i] == 18)
		{
			UpdateDynamic3DTextLabelText(WeedField3D[i] , COLOR_WEED_ORANGE, "Seeding\nStage: 90%");
			WeedFieldTimer[i] ++;
		}
		else if(WeedFieldTimer [i] == 19)
		{
			UpdateDynamic3DTextLabelText(WeedField3D[i] , COLOR_WEED_ORANGE, "Seeding\nStage: 95%");
			WeedFieldTimer[i] ++;
		}
		else if(WeedFieldTimer [i] == 20)
		{
			UpdateDynamic3DTextLabelText(WeedField3D[i] , COLOR_WEED_ORANGE, "Seeding\nStage: 100%");
			WeedFieldTimer[i] ++;
		}
		else if(WeedFieldTimer [i] == 21)
		{
		new Float:x, Float:y, Float:z;
		GetDynamicObjectPos(WeedFieldObject[i], x, y, z);
		DestroyDynamicObject(WeedFieldObject[i]);
		WeedFieldObject[i] = CreateDynamicObject(806, x, y, z, 0, 0, 0);
		UpdateDynamic3DTextLabelText(WeedField3D[i] , COLOR_WEED_YELLOW, "Put Water");
		}
		else if(WeedFieldTimer [i] == 22)
		{
			UpdateDynamic3DTextLabelText(WeedField3D[i] , COLOR_WEED_YELLOW, "Watering\nStage: 10%");
			WeedFieldTimer[i] ++;
		}
		else if(WeedFieldTimer [i] == 23)
		{
			UpdateDynamic3DTextLabelText(WeedField3D[i] , COLOR_WEED_YELLOW, "Watering\nStage: 15%");
			WeedFieldTimer[i] ++;
		}
		else if(WeedFieldTimer [i] == 24)
		{
			UpdateDynamic3DTextLabelText(WeedField3D[i] , COLOR_WEED_YELLOW, "Watering\nStage: 20%");
			WeedFieldTimer[i] ++;
		}
		else if(WeedFieldTimer [i] == 25)
		{
			UpdateDynamic3DTextLabelText(WeedField3D[i] , COLOR_WEED_YELLOW, "Watering\nStage: 25%");
			WeedFieldTimer[i] ++;
		}
		else if(WeedFieldTimer [i] == 26)
		{
			UpdateDynamic3DTextLabelText(WeedField3D[i] , COLOR_WEED_YELLOW, "Watering\nStage: 30%");
			WeedFieldTimer[i] ++;
		}
		else if(WeedFieldTimer [i] == 27)
		{
			UpdateDynamic3DTextLabelText(WeedField3D[i] , COLOR_WEED_YELLOW, "Watering\nStage: 35%");
			WeedFieldTimer[i] ++;
		}
		else if(WeedFieldTimer [i] == 28)
		{
			UpdateDynamic3DTextLabelText(WeedField3D[i] , COLOR_WEED_YELLOW, "Watering\nStage: 40%");
			WeedFieldTimer[i] ++;
		}
		else if(WeedFieldTimer [i] == 29)
		{
			UpdateDynamic3DTextLabelText(WeedField3D[i] , COLOR_WEED_YELLOW, "Watering\nStage: 45%");
			WeedFieldTimer[i] ++;
		}
		else if(WeedFieldTimer [i] == 30)
		{
			UpdateDynamic3DTextLabelText(WeedField3D[i] , COLOR_WEED_YELLOW, "Watering\nStage: 50%");
			WeedFieldTimer[i] ++;
		}
		else if(WeedFieldTimer [i] == 31)
		{
			UpdateDynamic3DTextLabelText(WeedField3D[i] , COLOR_WEED_YELLOW, "Watering\nStage: 55%");
			WeedFieldTimer[i] ++;
		}
		else if(WeedFieldTimer [i] == 32)
		{
			UpdateDynamic3DTextLabelText(WeedField3D[i] , COLOR_WEED_YELLOW, "Watering\nStage: 60%");
			WeedFieldTimer[i] ++;
		}
		else if(WeedFieldTimer [i] == 33)
		{
			UpdateDynamic3DTextLabelText(WeedField3D[i] , COLOR_WEED_YELLOW, "Watering\nStage: 65%");
			WeedFieldTimer[i] ++;
		}
		else if(WeedFieldTimer [i] == 34)
		{
			UpdateDynamic3DTextLabelText(WeedField3D[i] , COLOR_WEED_YELLOW, "Watering\nStage: 70%");
			WeedFieldTimer[i] ++;
		}
		else if(WeedFieldTimer [i] == 35)
		{
			UpdateDynamic3DTextLabelText(WeedField3D[i] , COLOR_WEED_YELLOW, "Watering\nStage: 75%");
			WeedFieldTimer[i] ++;
		}
		else if(WeedFieldTimer [i] == 36)
		{
			UpdateDynamic3DTextLabelText(WeedField3D[i] , COLOR_WEED_YELLOW, "Watering\nStage: 80%");
			WeedFieldTimer[i] ++;
		}
		else if(WeedFieldTimer [i] == 37)
		{
			UpdateDynamic3DTextLabelText(WeedField3D[i] , COLOR_WEED_YELLOW, "Watering\nStage: 85%");
			WeedFieldTimer[i] ++;
		}
		else if(WeedFieldTimer [i] == 38)
		{
			UpdateDynamic3DTextLabelText(WeedField3D[i] , COLOR_WEED_YELLOW, "Watering\nStage: 90%");
			WeedFieldTimer[i] ++;
		}
		else if(WeedFieldTimer [i] == 39)
		{
			UpdateDynamic3DTextLabelText(WeedField3D[i] , COLOR_WEED_YELLOW, "Watering\nStage: 95%");
			WeedFieldTimer[i] ++;
		}
		else if(WeedFieldTimer [i] == 40)
		{
			UpdateDynamic3DTextLabelText(WeedField3D[i] , COLOR_WEED_YELLOW, "Watering\nStage: 100%");
			WeedFieldTimer[i] ++;
		}
		else if(WeedFieldTimer [i] == 41)
		{
		new Float:x2, Float:y2, Float:z2;
		GetDynamicObjectPos(WeedFieldObject[i], x2, y2, z2);
		DestroyDynamicObject(WeedFieldObject[i]);
		WeedFieldObject[i] = 0;
		WeedFieldObject[i] = CreateDynamicObject(19473, x2, y2, z2, 0, 0, 0);
		UpdateDynamic3DTextLabelText(WeedField3D[i] , COLOR_WEED_GREEN, "Flowering\nStage: 5%");
		WeedFieldTimer[i] ++;
		}
		else if(WeedFieldTimer [i] == 42)
		{
			UpdateDynamic3DTextLabelText(WeedField3D[i] , COLOR_WEED_GREEN, "Flowering\nStage: 10%");
			WeedFieldTimer[i] ++;
		}
		else if(WeedFieldTimer [i] == 43)
		{
			UpdateDynamic3DTextLabelText(WeedField3D[i] , COLOR_WEED_GREEN, "Flowering\nStage: 15%");
			WeedFieldTimer[i] ++;
		}
		else if(WeedFieldTimer [i] == 44)
		{
			UpdateDynamic3DTextLabelText(WeedField3D[i] , COLOR_WEED_GREEN, "Flowering\nStage: 20%");
			WeedFieldTimer[i] ++;
		}
		else if(WeedFieldTimer [i] == 45)
		{
			UpdateDynamic3DTextLabelText(WeedField3D[i] , COLOR_WEED_GREEN, "Flowering\nStage: 25%");
			WeedFieldTimer[i] ++;
		}
		else if(WeedFieldTimer [i] == 46)
		{
			UpdateDynamic3DTextLabelText(WeedField3D[i] , COLOR_WEED_GREEN, "Flowering\nStage: 30%");
			WeedFieldTimer[i] ++;
		}
		else if(WeedFieldTimer [i] == 47)
		{
			UpdateDynamic3DTextLabelText(WeedField3D[i] , COLOR_WEED_GREEN, "Flowering\nStage: 35%");
			WeedFieldTimer[i] ++;
		}
		else if(WeedFieldTimer [i] == 48)
		{
			UpdateDynamic3DTextLabelText(WeedField3D[i] , COLOR_WEED_GREEN, "Flowering\nStage: 40%");
			WeedFieldTimer[i] ++;
		}
		else if(WeedFieldTimer [i] == 49)
		{
			UpdateDynamic3DTextLabelText(WeedField3D[i] , COLOR_WEED_GREEN, "Flowering\nStage: 45%");
			WeedFieldTimer[i] ++;
		}
		else if(WeedFieldTimer [i] == 50)
		{
			UpdateDynamic3DTextLabelText(WeedField3D[i] , COLOR_WEED_GREEN, "Flowering\nStage: 50%");
			WeedFieldTimer[i] ++;
		}
		else if(WeedFieldTimer [i] == 51)
		{
			UpdateDynamic3DTextLabelText(WeedField3D[i] , COLOR_WEED_GREEN, "Flowering\nStage: 55%");
			WeedFieldTimer[i] ++;
		}
		else if(WeedFieldTimer [i] == 52)
		{
			UpdateDynamic3DTextLabelText(WeedField3D[i] , COLOR_WEED_GREEN, "Flowering\nStage: 60%");
			WeedFieldTimer[i] ++;
		}
		else if(WeedFieldTimer [i] == 53)
		{
			UpdateDynamic3DTextLabelText(WeedField3D[i] , COLOR_WEED_GREEN, "Flowering\nStage: 65%");
			WeedFieldTimer[i] ++;
		}
		else if(WeedFieldTimer [i] == 54)
		{
			UpdateDynamic3DTextLabelText(WeedField3D[i] , COLOR_WEED_GREEN, "Flowering\nStage: 70%");
			WeedFieldTimer[i] ++;
		}
		else if(WeedFieldTimer [i] == 55)
		{
			UpdateDynamic3DTextLabelText(WeedField3D[i] , COLOR_WEED_GREEN, "Flowering\nStage: 75%");
			WeedFieldTimer[i] ++;
		}
		else if(WeedFieldTimer [i] == 56)
		{
			UpdateDynamic3DTextLabelText(WeedField3D[i] , COLOR_WEED_GREEN, "Flowering\nStage: 80%");
			WeedFieldTimer[i] ++;
		}
		else if(WeedFieldTimer [i] == 57)
		{
			UpdateDynamic3DTextLabelText(WeedField3D[i] , COLOR_WEED_GREEN, "Flowering\nStage: 85%");
			WeedFieldTimer[i] ++;
		}
		else if(WeedFieldTimer [i] == 58)
		{
			UpdateDynamic3DTextLabelText(WeedField3D[i] , COLOR_WEED_GREEN, "Flowering\nStage: 90%");
			WeedFieldTimer[i] ++;
		}
		else if(WeedFieldTimer [i] == 59)
		{
			UpdateDynamic3DTextLabelText(WeedField3D[i] , COLOR_WEED_GREEN, "Flowering\nStage: 95%");
			WeedFieldTimer[i] ++;
		}
		else if(WeedFieldTimer [i] == 60)
		{
			UpdateDynamic3DTextLabelText(WeedField3D[i] , COLOR_WEED_GREEN, "Done\nStage: Ready");
			WeedFieldTimer[i] ++;
		}
	}
	return 1;
}

CMD:weed(playerid, params[])
{
	new select[12];
	if(sscanf(params, "s[12]", select))
		return SendClientMessage(playerid, COLOR_SYNTAX, "[Usage]: /weed [plant/harvest/rip]");
	else if(!IsPlayerAtWeedField(playerid))
	{
		return SendClientMessage(playerid, COLOR_SYNTAX, "You are not at weed field to plant weed.");
	}
	else
	{
		if(strfind(select, "plant", true) != -1)
		{
			new Float:x, Float:y, Float:z;
			new Float:x1, Float:y1, Float:z1;
			GetPlayerPos(playerid, x, y, z);
			if(TotalWeedCount > 10000)
			{
				return SendClientMessage(playerid, COLOR_SYNTAX, "You can't plant more weed seed at this field.");
			}
			else if(PlayerInfo[playerid][pSeeds] == 0)
			{
				return SCM(playerid, COLOR_SYNTAX, "You don't have enough weed seed to plant weed.");
			}
			for(new i=0; i < 10000; i++)
			{
				GetDynamicObjectPos(WeedFieldObject[i], x1, y1, z1);
				if(IsPlayerInRangeOfPoint(playerid, 2.0, x1, y1, z1))
				{
					return SendClientMessage(playerid, COLOR_SYNTAX, "You cannot plant a weed seed near a weed plant.");
				}
				else if( WeedField3D[i] == Text3D:0 && WeedFieldObject[i] == 0)
				{
					WeedFieldTimer[i] = 1;
					PlayerInfo[playerid][pSeeds] -= 1;
					ApplyAnimation(playerid, "BOMBER", "BOM_PLANT", 4.1, 0, 1, 1, 0, 0, 1);
					WeedField3D[i] = CreateDynamic3DTextLabel("Seeding", COLOR_WEED_ORANGE, x, y, z, 5.0);
					TotalWeedCount += 1;
					WeedFieldObject[i] = CreateDynamicObject(2247, x, y, z-1, 0, 0, 0);
					return SendClientMessage(playerid, COLOR_LIGHT_BLUE, "You just plant a weed seed.");
				}
			}
			return SendClientMessage(playerid, COLOR_SYNTAX, "You cannot plant more weed seed at this weed field.");
		}
		else if(strfind(select, "water", true) != -1)
		{
			if(PlayerInfo[playerid][pDrinks] == 0)
			{
				return SCM(playerid, COLOR_SYNTAX, "You don't have enough water.");
			}
			for(new i=0; i < 10000; i++)
			{
				new Float:x2, Float:y2, Float:z2;
				GetDynamicObjectPos(WeedFieldObject[i], x2, y2, z2);
				if(IsPlayerInRangeOfPoint(playerid, 2.0, x2, y2, z2))
				{
					if(WeedFieldTimer[i] != 21)
					{
						return SCM(playerid, COLOR_SYNTAX, "Plant won't need water.");
					}
					else
					{
						PlayerInfo[playerid][pDrinks] -= 1;
						WeedFieldTimer[i]++;
						UpdateDynamic3DTextLabelText(WeedField3D[i], COLOR_WEED_YELLOW, "Watering\nStage: 5\%");
						return SendClientMessage(playerid, COLOR_LIGHT_BLUE, "You just give water to weed plant.");
					}
				}
			}
			return SCM(playerid, COLOR_SYNTAX, "You are not near at weed plant to watering.");
		}
		else if(strfind(select, "harvest", true) != -1)
		{
			for(new i=0; i < 10000; i++)
			{
				PlayerInfo[i][pPotGrams] = 1;
				new Float:x3,Float:y3,Float:z3;
				GetDynamicObjectPos(WeedFieldObject[i], x3, y3, z3);
				if(PlayerInfo[playerid][pPot] + PlayerInfo[i][pPotGrams] > GetPlayerCapacity(playerid, CAPACITY_WEED))
				{
					return SM(playerid, COLOR_SYNTAX, "You currently have %i/%i pot. You can't carry anymore until you upgrade your inventory skill.", PlayerInfo[playerid][pPot], GetPlayerCapacity(playerid, CAPACITY_WEED));
				}
				if(IsPlayerInRangeOfPoint(playerid, 2.0, x3, y3, z3))
				{
					if(WeedFieldTimer[i] == 61)
					{
						ApplyAnimation(playerid, "BOMBER", "BOM_PLANT", 4.1, 0, 1, 1, 0, 0, 1);
						DestroyDynamicObject(WeedFieldObject[i]);
						DestroyDynamic3DTextLabel(WeedField3D[i]);
						PlayerInfo[playerid][pPot] += PlayerInfo[i][pPotGrams];
						WeedFieldObject[i] = 0;
						WeedField3D[i] = Text3D:0;
						WeedFieldTimer[i] = 0;
						TotalWeedCount -= 1;
						mysql_format(connectionID, queryBuffer, sizeof(queryBuffer), "UPDATE users SET pot = %i WHERE uid = %i", PlayerInfo[playerid][pPot], PlayerInfo[playerid][pID]);
						mysql_tquery(connectionID, queryBuffer);
						return SM(playerid, COLOR_LIGHT_BLUE, "You harvest a weed plant and got %i gram weed.", PlayerInfo[i][pPotGrams]);
					}
					else
					{
						return SCM(playerid, COLOR_SYNTAX, "Plant has not ready yet to harvest.");
					}
				}
			}
			return SCM(playerid, COLOR_SYNTAX, "You are not near a weed plant to harvest.");
		}
		else if(strfind(select, "rip", true) != -1)
		{
			for(new i=0;i<10000;i++)
			{
				new Float:x4, Float:y4, Float:z4;
				GetDynamicObjectPos(WeedFieldObject[i], x4, y4, z4);
				if(IsPlayerInRangeOfPoint(playerid, 2.0, x4, y4, z4))
				{
					ApplyAnimation(playerid, "BOMBER", "BOM_PLANT", 4.1, 0, 1, 1, 0, 0, 1);
					DestroyDynamicObject(WeedFieldObject[i]);
					DestroyDynamic3DTextLabel(WeedField3D[i]);
					WeedFieldObject[i] = 0;
					WeedField3D[i] = Text3D:0;
					WeedFieldTimer[i] = 0;
					TotalWeedCount -= 1;
					return SendClientMessage(playerid, COLOR_LIGHT_BLUE, "You just ripped weed plant.");
				}
			}
			return SendClientMessage(playerid, COLOR_SYNTAX, "You are not near a weed plant to rip.");
		}
	}
	return 1;
}
