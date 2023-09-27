forward DCC_OnAdminCheckBan(channelid[]);
forward DCC_FetchUser(channelid[]);
forward DCC_OnAdminFlag(userid[], channelid[], username[], desc[]);
forward DCC_IDUpdate(playerid);
forward DCC_SendText(type, playerid, const string[], channelid[], extraid, extraint);

public OnDiscordCommandAttempt(DCC_User:user, DCC_Channel:channel, cmdtext[])
{
	new id[DCC_ID_SIZE];
	DCC_GetChannelId(channel, id);
	if(!strcmp(id, "1145306506804350986", true) || !strcmp(id, "1148941899198103654", true))
	{
		return 1;
	}
	return 0;
}

#define DCC_TEXT_REPORT 1
#define DCC_TEXT_DMREPORT 2
#define DCC_TEXT_HELP 3
#define DCC_TEXT_LOGOUT 4
#define DCC_TEXT_LOGIN 5
#define DCC_TEXT_KIDNAP 6
#define DCC_TEXT_LOG 7
#define DCC_TEXT_REG 8
#define DCC_TEXT_KILL 9
#define DCC_TEXT_BANK 10
#define DCC_TEXT_ROB_BIZ 11
#define DCC_TEXT_ROB_HOS 12
#define DCC_TEXT_ROB_ATM 13

public DCC_OnGuildMemberAdd(DCC_Guild:guild, DCC_User:user)
{
	new count, string[256];
	DCC_GetGuildMemberCount(guild, count);
	format(string, sizeof(string), "Family: %s", AddCommasEx(count));
	DCC_SetChannelName(DCC_FindChannelById("1150059184180690974"), string);
	return 1;
}

public DCC_OnGuildMemberRemove(DCC_Guild:guild, DCC_User:user)
{
	new count, string[256];
	DCC_GetGuildMemberCount(guild, count);
	format(string, sizeof(string), "Family: %s", AddCommasEx(count));
	DCC_SetChannelName(DCC_FindChannelById("1150059184180690974"), string);
	return 1;
}

public DCC_OnAdminFlag(userid[], channelid[], username[], desc[])
{
	new rows;
	if(!cache_get_row_count(rows))
	{
	    DCC_SendChannelMessage(DCC_FindChannelById(channelid), ":x: That specified player doesn't exists!");
	}
	else
	{
		new dusername[DCC_USERNAME_SIZE], discrim[DCC_USERNAME_SIZE], string[2000];

		DCC_GetUserName(DCC_FindUserById(userid), dusername, sizeof(dusername));
		DCC_GetUserDiscriminator(DCC_FindUserById(userid), discrim, sizeof(discrim));
		format(string, sizeof(string), "Discord: %s#%s", dusername, discrim);
		new uid;
		cache_get_value_name_int(0, "uid", uid);
	    mysql_format(connectionID, queryBuffer, sizeof(queryBuffer), "INSERT INTO flags VALUES(null, %i, \"%s\", NOW(), \"%e\")", string, desc);
		mysql_tquery(connectionID, queryBuffer);

		format(string, sizeof(string), ":white_check_mark: `%s` has been flagged, reason: `%s`", username, desc);
	    DCC_SendChannelMessage(DCC_FindChannelById(channelid), string);
	}
}

public DCC_IDUpdate(playerid)
{
	cache_get_value_name(0, "discord", PlayerInfo[playerid][pDiscord], DCC_ID_SIZE);
	mysql_format(connectionID, queryBuffer, sizeof(queryBuffer), "UPDATE users SET discord = \"%s\" WHERE uid = %i", PlayerInfo[playerid][pDiscord], PlayerInfo[playerid][pID]);
	mysql_tquery(connectionID, queryBuffer);
	return 1;
}

public DCC_OnAdminCheckBan(channelid[])
{
	new bannedby[MAX_PLAYER_NAME], username[MAX_PLAYER_NAME], ip[MAX_IP_SIZE], date[24], reason[128], string[2000];

	new DCC_Embed:embed = DCC_CreateEmbed();
	DCC_SetEmbedColor(embed, 0xFFFFFF);
	new rows;
	if(!cache_get_row_count(rows))
	{
	    strcpy(string, "There are no bans that match your criteria.");
	}
	else
	{
	    cache_get_value_name(0, "bannedby", bannedby);
	    cache_get_value_name(0, "username", username);
	    cache_get_value_name(0, "ip", ip);
	    cache_get_value_name(0, "date", date);
	    cache_get_value_name(0, "reason", reason);

		if(!strcmp(username, "n/a", true)) {
		    if(strfind(ip, "*", true) != -1) {
		    	format(string, sizeof(string), "[%s] IP address \"%s\" was rangebanned by %s, reason: %s", date, ip, bannedby, reason);
	        } else {
	            format(string, sizeof(string), "[%s] IP address \"%s\" was banned by %s, reason: %s", date, ip, bannedby, reason);
	        }
		}
		else {
			new prem;
			cache_get_value_name_int(0, "permanent", prem);
		    if(strfind(ip, "*", true) != -1) {
		    	format(string, sizeof(string), "[%s] %s (IP: %s) was rangebanned by %s, reason: %s", date, username, ip, bannedby, reason);
	        } else if(prem) {
	            format(string, sizeof(string), "[%s] %s (IP: %s) was permanently banned by %s, reason: %s", date, username, ip, bannedby, reason);
	        } else {
	            format(string, sizeof(string), "[%s] %s (IP: %s) was banned by %s, reason: %s", date, username, ip, bannedby, reason);
	        }
		}
	}
	DCC_SetEmbedTitle(embed, string);
	DCC_SendChannelEmbedMessage(DCC_FindChannelById(channelid), embed);
	return 1;
}

public DCC_SendText(type, playerid, const string[], channelid[], extraid, extraint)
{
	new DCC_Embed:embed = DCC_CreateEmbed();
	new timestamp[256], date[6];
	getdate(date[0], date[1], date[2]);
	gettime(date[3], date[4], date[5]);
	format(timestamp, sizeof(timestamp), "%i-%02d-%02dT%02d:%02d:%02d.000Z", date[0], date[1], date[2], date[3], date[4], date[5]);
	DCC_SetEmbedTimestamp(embed, timestamp);
	switch(type)
	{
		case DCC_TEXT_REPORT:
		{
			new from[MAX_PLAYER_NAME+10];
			format(from, sizeof(from), "From %s", GetPlayerNameEx(playerid));

			DCC_SetEmbedTitle(embed, "New Report");
			DCC_SetEmbedDescription(embed, from);

			DCC_AddEmbedField(embed, "Details:", string, false);
			DCC_SetEmbedColor(embed, 0x00FF00);

			DCC_SendChannelEmbedMessage(DCC_FindChannelById(channelid), embed);
		}
		case DCC_TEXT_DMREPORT:
		{
			new text[256+MAX_PLAYER_NAME];
			format(text, sizeof(text), ":warning: from **%s** against **%s**", GetPlayerNameEx(playerid), GetPlayerNameEx(extraid));

			DCC_SetEmbedTitle(embed, "DM Report");
			DCC_SetEmbedDescription(embed, text);

			DCC_SetEmbedColor(embed, 0xFF0000);

			DCC_SendChannelEmbedMessage(DCC_FindChannelById(channelid), embed);
		}
		case DCC_TEXT_HELP:
		{
			new from[256];
			format(from, sizeof(from), "From **%s**", GetPlayerNameEx(playerid));

			DCC_SetEmbedTitle(embed, "Help Request");
			DCC_SetEmbedDescription(embed, from);

			DCC_AddEmbedField(embed, "Details:", string, false);
			DCC_SetEmbedColor(embed, 0x00FF00);

			DCC_SendChannelEmbedMessage(DCC_FindChannelById(channelid), embed);
		}
		case DCC_TEXT_LOGOUT:
		{
			DCC_SetEmbedTitle(embed, "Player Logged Out:");
			DCC_AddEmbedField(embed, "Name:", GetPlayerNameEx(playerid), true);
			DCC_AddEmbedField(embed, "IP:", GetPlayerIP(playerid), true);
			DCC_AddEmbedField(embed, "Ping:", GetPlayerPingEx(playerid), true);
			DCC_AddEmbedField(embed, "Platform:", (IsPlayerMobile(playerid)) ? ("Mobile") : ("PC"), true);
			DCC_AddEmbedField(embed, "Logout Reason:", string, true);

			DCC_SendChannelEmbedMessage(DCC_FindChannelById(channelid), embed);
		}
		case DCC_TEXT_LOGIN:
		{
			DCC_SetEmbedTitle(embed, "New player login:");
			DCC_AddEmbedField(embed, "Name:", GetPlayerNameEx(playerid), true);
			DCC_AddEmbedField(embed, "IP:", GetPlayerIP(playerid), true);
			new level[4];
			format(level, sizeof(level), "%i", extraint);
			DCC_AddEmbedField(embed, "Level:", level, true);
			DCC_AddEmbedField(embed, "Ping:", GetPlayerPingEx(playerid), true);
			DCC_AddEmbedField(embed, "Platform:", (IsPlayerMobile(playerid)) ? ("Mobile") : ("PC"), true);
			if(!IsPlayerMobile(playerid))
				DCC_AddEmbedField(embed, "Hardware Serial:", string, true);

			DCC_SendChannelEmbedMessage(DCC_FindChannelById(channelid), embed);
		}
		case DCC_TEXT_KIDNAP:
		{
			new convert[256];

			DCC_SetEmbedTitle(embed, "Player Robbery");
			DCC_AddEmbedField(embed, "Robber:", GetPlayerNameEx(playerid));
			DCC_AddEmbedField(embed, "Target:", GetPlayerNameEx(extraid));
			DCC_AddEmbedField(embed, "Robbed Item:", string);

			format(convert, sizeof(convert), "%s", AddCommasEx(extraint));
			DCC_AddEmbedField(embed, "Robbed Amount:", convert);

			new Float:x, Float:y, Float:z;
			GetPlayerPos(extraid, x, y, z);
			format(convert, sizeof(convert), "%f, %f, %f, V: %i, I: %i", x, y, z, GetPlayerVirtualWorld(extraid), GetPlayerInterior(extraid));
			DCC_AddEmbedField(embed, "Victim Pos:", convert);

			DCC_SendChannelEmbedMessage(DCC_FindChannelById(channelid), embed);
		}
		case DCC_TEXT_LOG:
		{
			DCC_SetEmbedTitle(embed, "CX:RP Logger");
			DCC_SetEmbedDescription(embed, string);

			DCC_SetEmbedColor(embed, 0xFF0000);

			DCC_SendChannelEmbedMessage(DCC_FindChannelByName(channelid), embed);
		}
		case DCC_TEXT_REG:
		{
			new string2[256];
			DCC_SetEmbedTitle(embed, "New Registration");
			format(string2, sizeof(string2),"%s [%i] has registered on the server at %02d:%02d:%02d on %02d - %s - %i", GetPlayerNameEx(playerid), playerid, date[3], date[4], date[5], date[2], GetMonthName(date[1]), date[0]);
			DCC_SetEmbedDescription(embed, string2);
			DCC_SendChannelEmbedMessage(DCC_FindChannelById(channelid), embed);
		}
		case DCC_TEXT_KILL:
		{
			new count=0, gun[256], tempgun[40], pos[256], string2[256];

			format(string2, sizeof(string2), "**%s** -> **%s**", GetPlayerNameEx(playerid), GetPlayerNameEx(extraid));

			DCC_SetEmbedTitle(embed, "Kill Log");
			DCC_SetEmbedDescription(embed, string2);

			DCC_AddEmbedField(embed, "Reason", GetDeathReason(extraint));

			DCC_AddEmbedField(embed, "Masked Victim?", (Maskara[extraid]) ? (":white_check_mark:") : (":x:"));
			DCC_AddEmbedField(embed, "Masked Killer?", (Maskara[playerid]) ? (":white_check_mark:") : (":x:"));

			for(new i = 0; i < 13; i ++)
			{
				if(PlayerInfo[extraid][pWeapons][i] > 0)
				{
					count++;
				}
			}
			if(count==0)
			{
				strcpy(gun, "no weapons", sizeof(gun));
			}
			else
			{
				for(new i = 0; i < 13; i ++)
				{
					if(PlayerInfo[extraid][pWeapons][i] > 0)
					{
						format(tempgun, sizeof(tempgun), "- %s", GetWeaponNameEx(PlayerInfo[extraid][pWeapons][i]));
						strcat(gun, tempgun);
					}
				}
			}
			DCC_AddEmbedField(embed, "Victim's Weapons", gun);

			strcpy(gun, "", sizeof(gun));
			strcpy(tempgun, "", sizeof(tempgun));
			count = 0;
			for(new i = 0; i < 13; i ++)
			{
				if(PlayerInfo[playerid][pWeapons][i] > 0)
				{
					count++;
				}
			}
			if(count==0)
			{
				strcpy(gun, "no weapons", sizeof(gun));
			}
			else
			{
				for(new i = 0; i < 13; i ++)
				{
					if(PlayerInfo[playerid][pWeapons][i] > 0)
					{
						format(tempgun, sizeof(tempgun), "%s, ", GetWeaponNameEx(PlayerInfo[playerid][pWeapons][i]));
						strcat(gun, tempgun);
					}
				}
			}
			DCC_AddEmbedField(embed, "Killer's Weapons", gun);

			new Float:x, Float:y, Float:z;
			GetPlayerPos(extraid, x, y, z);
			format(pos, sizeof(pos), "%f, %f, %f - V: %i - Int: %i", x, y, z, GetPlayerVirtualWorld(extraid), GetPlayerInterior(extraid));
			DCC_AddEmbedField(embed, "Victim's Pos", pos);

			GetPlayerPos(playerid, x, y, z);
			format(pos, sizeof(pos), "%f, %f, %f - V: %i - Int: %i", x, y, z, GetPlayerVirtualWorld(playerid), GetPlayerInterior(playerid));
			DCC_AddEmbedField(embed, "Killer's Pos", pos);

			DCC_SetEmbedColor(embed, 0xFF0000);

			DCC_SendChannelEmbedMessage(DCC_FindChannelById(channelid), embed);
		}
		case DCC_TEXT_BANK:
		{
			new robbers[256], robbers2[MAX_PLAYER_NAME+3];
			DCC_SetEmbedTitle(embed, "Bank Robbery");

			DCC_AddEmbedField(embed, "Leader:", GetPlayerNameEx(playerid));

			for(new id = 0; id < MAX_BANK_ROBBERS; id ++)
			{
				if(RobberyInfo[rRobbers][id] != INVALID_PLAYER_ID && IsPlayerConnected(id))
				{
					format(robbers2, sizeof(robbers2), "%s, ", GetPlayerNameEx(id));
					strcat(robbers, robbers2);
				}
			}
			DCC_AddEmbedField(embed, "Robbers:", robbers);

			new convert[256];
			format(convert, sizeof(convert), "$%s", AddCommasEx(Settings[gVault]));
			DCC_AddEmbedField(embed, "Bank Vault:", convert);

			DCC_SendChannelEmbedMessage(DCC_FindChannelById(channelid), embed);
		}
		case DCC_TEXT_ROB_BIZ:
		{
			DCC_SetEmbedTitle(embed, "Business Robbery");
			DCC_AddEmbedField(embed, "Started By:", GetPlayerNameEx(playerid));

			new convert[256];
			format(convert, sizeof(convert), "%i", extraid);
			DCC_AddEmbedField(embed, "Business ID:", convert);

			format(convert, sizeof(convert), "$%s", AddCommasEx(BusinessInfo[extraid][bCash]));
			DCC_AddEmbedField(embed, "Business Vault:", convert);

			DCC_SendChannelEmbedMessage(DCC_FindChannelById(channelid), embed);
		}
		case DCC_TEXT_ROB_HOS:
		{
			DCC_SetEmbedTitle(embed, "House Robbery");
			DCC_AddEmbedField(embed, "Started By:", GetPlayerNameEx(playerid));
			
			new convert[256];
			format(convert, sizeof(convert), "%i", extraid);
			DCC_AddEmbedField(embed, "House ID:", convert);
			
			format(convert, sizeof(convert), "$%s", AddCommasEx(HouseInfo[extraid][hCash]));
			DCC_AddEmbedField(embed, "House Vault:", convert);

			DCC_SendChannelEmbedMessage(DCC_FindChannelById(channelid), embed);
		}
		case DCC_TEXT_ROB_ATM:
		{
			DCC_SetEmbedTitle(embed, "ATM Robbery");
			DCC_AddEmbedField(embed, "Started By:", GetPlayerNameEx(playerid));

			new convert[256], Float:x, Float:y, Float:z;
			format(convert, sizeof(convert), "%i", extraid);
			DCC_AddEmbedField(embed, "ATM ID:", convert);

			GetDynamicObjectPos(extraid, x, y, z);
			format(convert, sizeof(convert), "%f, %f, %f - VW: %i, Int: %i", x, y, z, ObjectData[extraid][mobjWorld], ObjectData[extraid][mobjInterior]);
			DCC_AddEmbedField(embed, "ATM Position:", convert);

			DCC_SendChannelEmbedMessage(DCC_FindChannelById(channelid), embed);
		}
		case -1:
		{
			DCC_SetEmbedTitle(embed, GetPlayerNameEx(playerid));
			DCC_SetEmbedDescription(embed, string);

			DCC_SendChannelEmbedMessage(DCC_FindChannelById(channelid), embed);
		}
	}
	return 1;
}

DCMD:gmx(user, channel, params[])
{
	new bool:hasrole, time, reason[256];
	DCC_HasGuildMemberRole(DCC_FindGuildById("1098551679768604752"), user, DCC_FindRoleById("1111349269484535888"), hasrole);
	if(!hasrole)
	{
		return 1;
	}
    if(sscanf(params, "is[256]", time, reason))
	{
		DCC_SendChannelMessage(channel, "Usage: -gmx [time] [reason]");
		return 1;
	}
	SMA(COLOR_WHITE, ""WHITE"An admin has initiated a server restart! Server will restart after "CXRP"%i"WHITE" minute(s).", time);
	new string[256];
	format(string, sizeof(string), "~r~Reason: ~w~%s", reason);
	foreach(new i : Player)
	{
		Dyuze(i, "Server Restart", string);	
	}
	time = time*60;
	time = time*1000;
	DCC_SendChannelMessage(channel, ":white_check_mark: **You've initiated a server restart!**");
    SetTimer("GmxEx", time, false);
	return 1;
}

DCMD:helpers(user, channel, params[])
{
	new string[2000], tString[2000], count = 0;
	foreach(new i : Player)
	{
		if(IsPlayerConnected(i) && PlayerInfo[i][pHelper] >= 1 && PlayerInfo[i][pPassport] == 0)
		{
			format(tString, sizeof(tString), "(%i) - **%s** %s.\n", i, GetHelperRank(i), GetPlayerNameEx(i));
			strcat(string, tString);
			count++;
		}
	}
	new DCC_Embed:embed = DCC_CreateEmbed();
	DCC_SetEmbedTitle(embed, "Current online in-game helpers:");
	DCC_SetEmbedColor(embed, 0xFFFFFF);
	if(count == 0)
	{
		DCC_SetEmbedDescription(embed, "No helpers online right now.");
	}
	else
	{
		DCC_SetEmbedDescription(embed, string);
	}
	DCC_SendChannelEmbedMessage(channel, embed);
	return 1;
}

DCMD:admins(user, channel, params[])
{
	new string[2000], tString[2000], count = 0;
	foreach(new i : Player)
	{
		if(IsPlayerConnected(i) && PlayerInfo[i][pAdmin] >= 2 && PlayerInfo[i][pPassport] == 0)
		{
			format(tString, sizeof(tString), "(%i) - **%s** %s.\n", i, GetAdminRank(i), GetPlayerNameEx(i));
			strcat(string, tString);
			count++;
		}
	}
	new DCC_Embed:embed = DCC_CreateEmbed();
	DCC_SetEmbedTitle(embed, "Current online in-game admins:");
	DCC_SetEmbedColor(embed, 0xFFFFFF);
	if(count == 0)
	{
		DCC_SetEmbedDescription(embed, "No admins online right now.");
	}
	else
	{
		DCC_SetEmbedDescription(embed, string);
	}
	DCC_SendChannelEmbedMessage(channel, embed);
	return 1;
}

DCMD:time(user, channel, params[])
{
	new adata[3];
	new string[2000];
	gettime(adata[0], adata[1], adata[2]);
	format(string, sizeof(string), "Current Time: %02d:%02d:%02d\nWeather: %s", adata[0], adata[1], adata[2], GetWeatherName(gWeather));
	new DCC_Embed:embed = DCC_CreateEmbed();
	DCC_SetEmbedTitle(embed, "Current Server Time & Weather:");
	DCC_SetEmbedDescription(embed, string);
	DCC_SetEmbedColor(embed, 0xFFFFFF);
	DCC_SendChannelEmbedMessage(channel, embed);
	return 1;
}

DCMD:info(user, channel, params[])
{
	new count = 0;
	foreach(new i : Player)
	{
		if(IsPlayerConnected(i) && !IsPlayerNPC(i))
		{
			count++;
		}
	}

	new string[2000];
	new DCC_Embed:embed = DCC_CreateEmbed("**CyberX RolePlay** | IP: 149.18.62.253:30004", "> :green_circle: **Online!**");

	format(string, sizeof(string), "> `%s`", REVISION);
	DCC_AddEmbedField(embed, "Version:", string, true);

	format(string, sizeof(string), "> %s/500", AddCommasEx(count));
	DCC_AddEmbedField(embed, "Player Count:", string, true);

	DCC_SetEmbedColor(embed, 0x005522);
	DCC_SendChannelEmbedMessage(channel, embed);
}

DCMD:baninfo(user, channel, params[])
{
	new target[MAX_PLAYER_NAME], channelid[DCC_ID_SIZE];
	DCC_GetChannelId(channel, channelid, sizeof(channelid));
	if(!strcmp(channelid, "1148941899198103654", true))
	{
		if(sscanf(params, "s[64]", target))
		{
	    	DCC_SendChannelMessage(channel, "Usage: -baninfo [username/ip]");
			return 1;
		}
		new userid[DCC_ID_SIZE];
		DCC_GetUserId(user, userid, sizeof(userid));
		mysql_format(connectionID, queryBuffer, sizeof(queryBuffer), "SELECT * FROM bans WHERE username = \"%e\" OR ip = \"%e\"", target);
		mysql_tquery(connectionID, queryBuffer, "DCC_OnAdminCheckBan", "s", channelid);
	}
	return 1;
}

DCMD:user(user, channel, params[])
{
	new target[MAX_PLAYER_NAME], channelid[DCC_ID_SIZE];
	DCC_GetChannelId(channel, channelid);
	if(sscanf(params, "s[24]", target))
	{
	   	DCC_SendChannelMessage(channel, "Usage: -user [firstname_lastname]");
		return 1;
	}
	mysql_format(connectionID, queryBuffer, sizeof(queryBuffer), "SELECT username, level, number, faction, gang, hours, skin, vippackage, passport, passportname, passportskin, passportlevel, passportphone FROM users WHERE username = \"%e\" OR passportname = \"%e\"", target, target);
	mysql_tquery(connectionID, queryBuffer, "DCC_FetchUser", "s", channelid);
	return 1;
}

DCMD:flag(user, channel, params[])
{
	new username[MAX_PLAYER_NAME], desc[256], channelid[DCC_ID_SIZE];
	DCC_GetChannelId(channel, channelid, sizeof(channelid));
	if(!strcmp(channelid, "1148941899198103654", true))
	{
		if(sscanf(params, "s[24]s[256]", username, desc))
		{
	    	DCC_SendChannelMessage(channel, "Usage: -flag [username] [description]");
			return 1;
		}
		new userid[DCC_ID_SIZE];
		DCC_GetUserId(user, userid, sizeof(userid));
		mysql_format(connectionID, queryBuffer, sizeof(queryBuffer), "SELECT uid FROM users WHERE username = \"%e\"", username);
		mysql_tquery(connectionID, queryBuffer, "DCC_OnAdminFlag", "ssss", userid, channelid, username, desc);
	}
	return 1;
}

DCMD:top(user, channel, params[])
{
	new DCC_Embed:embed = DCC_CreateEmbed();
	new Cache:Result, Name[MAX_PLAYER_NAME], Count, fString[128], cString[2048];
	if(isnull(params))
	{
		new str[2000];
		strcat(str, "**-** `-top money`\n");
		strcat(str, "**-** `-top poor`\n");
		strcat(str, "**-** `-top hours`\n\n");
		strcat(str, "**-** `-top diamonds`\n");
		strcat(str, "**-** `-top gangmoney`");
		DCC_SetEmbedTitle(embed, "Command Usage:");
		DCC_SetEmbedDescription(embed, ":x: Wrong usage!");
		DCC_AddEmbedField(embed, "List of Available Usage:", str);
		DCC_SetEmbedColor(embed, 0xFF0000);
		DCC_SendChannelEmbedMessage(channel, embed);
		return 1;
	}
	if(!strcmp(params, "money", true))
	{
		new count2;
		Result = mysql_query(connectionID, "SELECT bank, cash, username FROM users ORDER BY bank+cash DESC LIMIT 20");
		if(cache_num_rows())
		{
			for(new i = 0; i < cache_num_rows(); ++ i)
			{
				cache_get_value_name(i, "username", Name);
				cache_get_value_name_int(i, "bank", Count);
				cache_get_value_name_int(i, "cash", count2);

				format(fString, sizeof(fString), "%i) **%s** - $%s\n", i+1, Name, AddCommasEx(Count+count2));
				strcat(cString, fString);
			}
		}
		cache_delete(Result);
		DCC_SetEmbedTitle(embed, "Top 20 richest players:");
		DCC_SetEmbedDescription(embed, cString);
		DCC_SetEmbedColor(embed, 0xFF0000);
		DCC_SendChannelEmbedMessage(channel, embed);
	}
	else if(!strcmp(params, "poor", true))
	{
		new count2;
		Result = mysql_query(connectionID, "SELECT bank, cash, username FROM users ORDER BY bank+cash ASC LIMIT 20");
		if(cache_num_rows())
		{
			for(new i = 0; i < cache_num_rows(); ++ i)
			{
				cache_get_value_name(i, "username", Name);
				cache_get_value_name_int(i, "bank", Count);
				cache_get_value_name_int(i, "cash", count2);

				format(fString, sizeof(fString), "%i) **%s** - $%s\n", i+1, Name, AddCommasEx(Count+count2));
				strcat(cString, fString);
			}
		}
		cache_delete(Result);
		DCC_SetEmbedTitle(embed, "Top 20 poor players:");
		DCC_SetEmbedDescription(embed, cString);
		DCC_SetEmbedColor(embed, 0xFF0000);
		DCC_SendChannelEmbedMessage(channel, embed);
	}
	else if(!strcmp(params, "hours", true))
	{
		Result = mysql_query(connectionID, "SELECT hours, username FROM users ORDER BY hours DESC LIMIT 20");
		if(cache_num_rows())
		{
			for(new i = 0; i < cache_num_rows(); ++ i)
			{
				cache_get_value_name(i, "username", Name);
				cache_get_value_name_int(i, "hours", Count);

				format(fString, sizeof fString, "%i) **%s** - %s Hours\n", i+1, Name, AddCommasEx(Count));
				strcat(cString, fString);
			}
		}
		cache_delete(Result);
		DCC_SetEmbedTitle(embed, "Top 20 players with most playing hours:");
		DCC_SetEmbedDescription(embed, cString);
		DCC_SetEmbedColor(embed, 0xFF0000);
		DCC_SendChannelEmbedMessage(channel, embed);
	}
	else if(!strcmp(params, "diamonds", true))
	{
		Result = mysql_query(connectionID, "SELECT diamonds, username FROM users ORDER BY diamonds DESC LIMIT 20");
		if(cache_num_rows())
		{
			for(new i = 0; i < cache_num_rows(); ++ i)
			{
				cache_get_value_name(i, "username", Name);
				cache_get_value_name_int(i, "diamonds", Count);

				format(fString, sizeof fString, "%i) **%s** - %s Diamonds\n", i+1, Name, AddCommasEx(Count));
				strcat(cString, fString);
			}
		}
		cache_delete(Result);
		DCC_SetEmbedTitle(embed, "Top 20 players with most Diamonds:");
		DCC_SetEmbedDescription(embed, cString);
		DCC_SetEmbedColor(embed, 0xFF0000);
		DCC_SendChannelEmbedMessage(channel, embed);
	}
	else if(!strcmp(params, "gangmoney", true))
	{
		Result = mysql_query(connectionID, "SELECT name, cash FROM gangs ORDER BY cash DESC");
		if(cache_num_rows())
		{
			for(new i = 0; i < cache_num_rows(); ++ i)
			{
				cache_get_value_name(i, "name", Name);
				cache_get_value_name_int(i, "cash", Count);

				format(fString, sizeof fString, "%i) **%s** - $%s\n", i+1, Name, AddCommasEx(Count));
				strcat(cString, fString);
			}
		}
		cache_delete(Result);
		DCC_SetEmbedTitle(embed, "Top richest gangs");
		DCC_SetEmbedDescription(embed, cString);
		DCC_SetEmbedColor(embed, 0xFF0000);
		DCC_SendChannelEmbedMessage(channel, embed);
	}

	else
	{
		new str[2000];
		strcat(str, "**-** `-top money`\n");
		strcat(str, "**-** `-top poor`\n");
		strcat(str, "**-** `-top hours`\n\n");
		strcat(str, "**-** `-top diamonds`\n");
		strcat(str, "**-** `-top gangmoney`");
		DCC_SetEmbedTitle(embed, "Command Usage:");
		DCC_SetEmbedDescription(embed, ":x: Wrong usage!");
		DCC_AddEmbedField(embed, "List of Available Usage:", str);
		DCC_SetEmbedColor(embed, 0xFF0000);
		DCC_SendChannelEmbedMessage(channel, embed);
	}
	return 1;
}

AddCommasEx(number, const separator[] = ",")
{
	new output[15];
	format(output, sizeof(output), "%d", number);

	for(new i = strlen(output) - 3; i > 0 && output[i-1] != '-'; i -= 3)
	{
		strins(output, separator, i);
	}

	return output;
}

GetDeathReason(reason)
{
	new
	    string[24];

	switch(reason)
	{
	    case 0: string = "Fists";
	    case 18: string = "Molotov Cocktail";
	    case 44: string = "Nightvision Goggles";
	    case 45: string = "Infrared Goggles";
	    case 49: string = "Vehicle";
	    case 50: string = "Helicopter Blades";
	    case 51: string = "Explosion";
	    case 53: string = "Drowned";
	    case 54: string = "Splat";
	    default: GetWeaponName(reason, string, sizeof(string));
	}

	return string;
}