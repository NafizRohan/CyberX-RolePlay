new PlayerText: Register_TD[MAX_PLAYERS][6];
new Text: RegisterGlobal[17];

/*new PlayerText: InventorySlot[MAX_PLAYERS][30];
new PlayerText: InvItemAmount[MAX_PLAYERS][24];
new PlayerText: InvItemInfo[MAX_PLAYERS][8];*/
new Text: LoginGlobal[23];
new Text: Banned_TD[23];
new Text: VST_TD[25];
new PlayerText: VST_TD_Player[MAX_PLAYERS][8];
/*
//Inventory TD
new Text: InventoryGlobal[32]; //Global TD
new PlayerText: InventoryPlayer[MAX_PLAYERS][19]; //Player TD
*/
new Text: GROTTI_TD[12];
new PlayerText: GROTTI_TD_PLAYER[MAX_PLAYERS][6];
CreateBannedTD()
{
    Banned_TD[0] = TextDrawCreate(314.000, 1.000, "_");
    TextDrawLetterSize(Banned_TD[0], 0.600, 51.750);
    TextDrawTextSize(Banned_TD[0], 298.500, 699.500);
    TextDrawAlignment(Banned_TD[0], 2);
    TextDrawColor(Banned_TD[0], -1);
    TextDrawUseBox(Banned_TD[0], 1);
    TextDrawBoxColor(Banned_TD[0], 255);
    TextDrawSetShadow(Banned_TD[0], 0);
    TextDrawSetOutline(Banned_TD[0], 1);
    TextDrawBackgroundColor(Banned_TD[0], 255);
    TextDrawFont(Banned_TD[0], 1);
    TextDrawSetProportional(Banned_TD[0], 1);

    Banned_TD[1] = TextDrawCreate(22.000, 17.000, "CONNECTION_FAILED");
    TextDrawLetterSize(Banned_TD[1], 0.354, 1.600);
    TextDrawTextSize(Banned_TD[1], 400.000, 17.000);
    TextDrawAlignment(Banned_TD[1], 1);
    TextDrawColor(Banned_TD[1], -1);
    TextDrawSetShadow(Banned_TD[1], 0);
    TextDrawSetOutline(Banned_TD[1], 1);
    TextDrawBackgroundColor(Banned_TD[1], 255);
    TextDrawFont(Banned_TD[1], 2);
    TextDrawSetProportional(Banned_TD[1], 1);

    Banned_TD[2] = TextDrawCreate(258.000, 57.000, "Preview_Model");
    TextDrawLetterSize(Banned_TD[2], 0.600, 2.000);
    TextDrawTextSize(Banned_TD[2], 112.500, 150.000);
    TextDrawAlignment(Banned_TD[2], 1);
    TextDrawColor(Banned_TD[2], -1);
    TextDrawSetShadow(Banned_TD[2], 0);
    TextDrawSetOutline(Banned_TD[2], 0);
    TextDrawBackgroundColor(Banned_TD[2], 0);
    TextDrawFont(Banned_TD[2], 5);
    TextDrawSetProportional(Banned_TD[2], 1);
    TextDrawSetPreviewModel(Banned_TD[2], 18749);
    TextDrawSetPreviewRot(Banned_TD[2], -10.000, 0.000, 178.000, 0.970);
    TextDrawSetPreviewVehCol(Banned_TD[2], 1, 1);

    Banned_TD[3] = TextDrawCreate(92.000, 106.000, "_");
    TextDrawLetterSize(Banned_TD[3], 0.287, 6.299);
    TextDrawTextSize(Banned_TD[3], 284.000, 54.000);
    TextDrawAlignment(Banned_TD[3], 2);
    TextDrawColor(Banned_TD[3], -1);
    TextDrawUseBox(Banned_TD[3], 1);
    TextDrawBoxColor(Banned_TD[3], 1687547391);
    TextDrawSetShadow(Banned_TD[3], 0);
    TextDrawSetOutline(Banned_TD[3], 2);
    TextDrawBackgroundColor(Banned_TD[3], 255);
    TextDrawFont(Banned_TD[3], 1);
    TextDrawSetProportional(Banned_TD[3], 1);

    Banned_TD[4] = TextDrawCreate(83.000, 113.000, "Y");
    TextDrawLetterSize(Banned_TD[4], 0.837, 4.349);
    TextDrawTextSize(Banned_TD[4], 400.000, 17.000);
    TextDrawAlignment(Banned_TD[4], 1);
    TextDrawColor(Banned_TD[4], -1);
    TextDrawSetShadow(Banned_TD[4], 0);
    TextDrawSetOutline(Banned_TD[4], 0);
    TextDrawBackgroundColor(Banned_TD[4], 255);
    TextDrawFont(Banned_TD[4], 1);
    TextDrawSetProportional(Banned_TD[4], 1);

    Banned_TD[5] = TextDrawCreate(75.000, 171.000, "YOU");
    TextDrawLetterSize(Banned_TD[5], 0.541, 1.600);
    TextDrawTextSize(Banned_TD[5], 400.000, 17.000);
    TextDrawAlignment(Banned_TD[5], 1);
    TextDrawColor(Banned_TD[5], -1);
    TextDrawSetShadow(Banned_TD[5], 0);
    TextDrawSetOutline(Banned_TD[5], 0);
    TextDrawBackgroundColor(Banned_TD[5], 255);
    TextDrawFont(Banned_TD[5], 1);
    TextDrawSetProportional(Banned_TD[5], 1);

    Banned_TD[6] = TextDrawCreate(125.000, 125.000, "--------");
    TextDrawLetterSize(Banned_TD[6], 0.600, 2.000);
    TextDrawTextSize(Banned_TD[6], 400.000, 17.000);
    TextDrawAlignment(Banned_TD[6], 1);
    TextDrawColor(Banned_TD[6], -1);
    TextDrawSetShadow(Banned_TD[6], 0);
    TextDrawSetOutline(Banned_TD[6], 1);
    TextDrawBackgroundColor(Banned_TD[6], 255);
    TextDrawFont(Banned_TD[6], 1);
    TextDrawSetProportional(Banned_TD[6], 1);

    Banned_TD[7] = TextDrawCreate(199.000, 127.000, "ld_chat:thumbup");
    TextDrawLetterSize(Banned_TD[7], 0.600, 2.000);
    TextDrawTextSize(Banned_TD[7], 16.500, 17.000);
    TextDrawAlignment(Banned_TD[7], 1);
    TextDrawColor(Banned_TD[7], 1433087999);
    TextDrawUseBox(Banned_TD[7], 1);
    TextDrawBoxColor(Banned_TD[7], 50);
    TextDrawSetShadow(Banned_TD[7], 0);
    TextDrawSetOutline(Banned_TD[7], 1);
    TextDrawBackgroundColor(Banned_TD[7], 255);
    TextDrawFont(Banned_TD[7], 4);
    TextDrawSetProportional(Banned_TD[7], 1);

    Banned_TD[8] = TextDrawCreate(218.000, 125.000, "------");
    TextDrawLetterSize(Banned_TD[8], 0.600, 2.000);
    TextDrawTextSize(Banned_TD[8], 400.000, 17.000);
    TextDrawAlignment(Banned_TD[8], 1);
    TextDrawColor(Banned_TD[8], -1);
    TextDrawSetShadow(Banned_TD[8], 0);
    TextDrawSetOutline(Banned_TD[8], 1);
    TextDrawBackgroundColor(Banned_TD[8], 255);
    TextDrawFont(Banned_TD[8], 1);
    TextDrawSetProportional(Banned_TD[8], 1);

    Banned_TD[9] = TextDrawCreate(358.000, 125.000, "--------");
    TextDrawLetterSize(Banned_TD[9], 0.600, 2.000);
    TextDrawTextSize(Banned_TD[9], 400.000, 17.000);
    TextDrawAlignment(Banned_TD[9], 1);
    TextDrawColor(Banned_TD[9], -1);
    TextDrawSetShadow(Banned_TD[9], 0);
    TextDrawSetOutline(Banned_TD[9], 1);
    TextDrawBackgroundColor(Banned_TD[9], 255);
    TextDrawFont(Banned_TD[9], 1);
    TextDrawSetProportional(Banned_TD[9], 1);

    Banned_TD[10] = TextDrawCreate(432.000, 127.000, "ld_chat:thumbdn");
    TextDrawLetterSize(Banned_TD[10], 0.600, 2.000);
    TextDrawTextSize(Banned_TD[10], 16.500, 17.000);
    TextDrawAlignment(Banned_TD[10], 1);
    TextDrawColor(Banned_TD[10], -1962934017);
    TextDrawUseBox(Banned_TD[10], 1);
    TextDrawBoxColor(Banned_TD[10], 50);
    TextDrawSetShadow(Banned_TD[10], 0);
    TextDrawSetOutline(Banned_TD[10], 1);
    TextDrawBackgroundColor(Banned_TD[10], 0);
    TextDrawFont(Banned_TD[10], 4);
    TextDrawSetProportional(Banned_TD[10], 1);

    Banned_TD[11] = TextDrawCreate(452.000, 125.000, "------");
    TextDrawLetterSize(Banned_TD[11], 0.600, 2.000);
    TextDrawTextSize(Banned_TD[11], 400.000, 17.000);
    TextDrawAlignment(Banned_TD[11], 1);
    TextDrawColor(Banned_TD[11], -1);
    TextDrawSetShadow(Banned_TD[11], 0);
    TextDrawSetOutline(Banned_TD[11], 1);
    TextDrawBackgroundColor(Banned_TD[11], 255);
    TextDrawFont(Banned_TD[11], 1);
    TextDrawSetProportional(Banned_TD[11], 1);

    Banned_TD[12] = TextDrawCreate(495.000, 58.000, "ld_beat:chit");
    TextDrawLetterSize(Banned_TD[12], 0.600, 2.000);
    TextDrawTextSize(Banned_TD[12], 136.500, 144.000);
    TextDrawAlignment(Banned_TD[12], 1);
    TextDrawColor(Banned_TD[12], 1296911871);
    TextDrawUseBox(Banned_TD[12], 1);
    TextDrawBoxColor(Banned_TD[12], 50);
    TextDrawSetShadow(Banned_TD[12], 0);
    TextDrawSetOutline(Banned_TD[12], 1);
    TextDrawBackgroundColor(Banned_TD[12], 255);
    TextDrawFont(Banned_TD[12], 4);
    TextDrawSetProportional(Banned_TD[12], 1);

    Banned_TD[13] = TextDrawCreate(521.000, 120.000, "CyberX_RolePlay");
    TextDrawLetterSize(Banned_TD[13], 0.321, 2.099);
    TextDrawTextSize(Banned_TD[13], 400.000, 17.000);
    TextDrawAlignment(Banned_TD[13], 1);
    TextDrawColor(Banned_TD[13], -65281);
    TextDrawSetShadow(Banned_TD[13], 0);
    TextDrawSetOutline(Banned_TD[13], 0);
    TextDrawBackgroundColor(Banned_TD[13], 255);
    TextDrawFont(Banned_TD[13], 3);
    TextDrawSetProportional(Banned_TD[13], 1);

    Banned_TD[14] = TextDrawCreate(537.000, 136.000, "");
    TextDrawLetterSize(Banned_TD[14], 0.379, 1.600);
    TextDrawTextSize(Banned_TD[14], 400.000, 17.000);
    TextDrawAlignment(Banned_TD[14], 1);
    TextDrawColor(Banned_TD[14], 16777215);
    TextDrawSetShadow(Banned_TD[14], 0);
    TextDrawSetOutline(Banned_TD[14], 0);
    TextDrawBackgroundColor(Banned_TD[14], 255);
    TextDrawFont(Banned_TD[14], 3);
    TextDrawSetProportional(Banned_TD[14], 1);

    Banned_TD[15] = TextDrawCreate(14.000, 216.000, "WHAT_CAN_YOU_DO?");
    TextDrawLetterSize(Banned_TD[15], 0.329, 1.549);
    TextDrawTextSize(Banned_TD[15], 400.000, 17.000);
    TextDrawAlignment(Banned_TD[15], 1);
    TextDrawColor(Banned_TD[15], -1);
    TextDrawSetShadow(Banned_TD[15], 0);
    TextDrawSetOutline(Banned_TD[15], 1);
    TextDrawBackgroundColor(Banned_TD[15], 255);
    TextDrawFont(Banned_TD[15], 2);
    TextDrawSetProportional(Banned_TD[15], 1);

    Banned_TD[16] = TextDrawCreate(14.000, 238.000, "-_Rejoin_The_Game");
    TextDrawLetterSize(Banned_TD[16], 0.270, 1.450);
    TextDrawTextSize(Banned_TD[16], 400.000, 17.000);
    TextDrawAlignment(Banned_TD[16], 1);
    TextDrawColor(Banned_TD[16], -1);
    TextDrawSetShadow(Banned_TD[16], 0);
    TextDrawSetOutline(Banned_TD[16], 1);
    TextDrawBackgroundColor(Banned_TD[16], 255);
    TextDrawFont(Banned_TD[16], 2);
    TextDrawSetProportional(Banned_TD[16], 1);

    Banned_TD[17] = TextDrawCreate(14.000, 252.000, "-_Try_Request_Help_From_Admin");
    TextDrawLetterSize(Banned_TD[17], 0.245, 1.450);
    TextDrawTextSize(Banned_TD[17], 400.000, 17.000);
    TextDrawAlignment(Banned_TD[17], 1);
    TextDrawColor(Banned_TD[17], -1);
    TextDrawSetShadow(Banned_TD[17], 0);
    TextDrawSetOutline(Banned_TD[17], 1);
    TextDrawBackgroundColor(Banned_TD[17], 255);
    TextDrawFont(Banned_TD[17], 2);
    TextDrawSetProportional(Banned_TD[17], 1);

    Banned_TD[18] = TextDrawCreate(14.000, 287.000, "ERROR_DETAILS");
    TextDrawLetterSize(Banned_TD[18], 0.329, 1.549);
    TextDrawTextSize(Banned_TD[18], 400.000, 17.000);
    TextDrawAlignment(Banned_TD[18], 1);
    TextDrawColor(Banned_TD[18], -1);
    TextDrawSetShadow(Banned_TD[18], 0);
    TextDrawSetOutline(Banned_TD[18], 1);
    TextDrawBackgroundColor(Banned_TD[18], 255);
    TextDrawFont(Banned_TD[18], 2);
    TextDrawSetProportional(Banned_TD[18], 1);

    Banned_TD[19] = TextDrawCreate(14.000, 309.000, "-_Connection_Rejected_By_CyberX_RolePlay");
    TextDrawLetterSize(Banned_TD[19], 0.270, 1.450);
    TextDrawTextSize(Banned_TD[19], 400.000, 17.000);
    TextDrawAlignment(Banned_TD[19], 1);
    TextDrawColor(Banned_TD[19], -1);
    TextDrawSetShadow(Banned_TD[19], 0);
    TextDrawSetOutline(Banned_TD[19], 1);
    TextDrawBackgroundColor(Banned_TD[19], 255);
    TextDrawFont(Banned_TD[19], 2);
    TextDrawSetProportional(Banned_TD[19], 1);

    Banned_TD[20] = TextDrawCreate(14.000, 341.000, "-_Banned_By_Administrator");
    TextDrawLetterSize(Banned_TD[20], 0.270, 1.450);
    TextDrawTextSize(Banned_TD[20], 400.000, 17.000);
    TextDrawAlignment(Banned_TD[20], 1);
    TextDrawColor(Banned_TD[20], -1);
    TextDrawSetShadow(Banned_TD[20], 0);
    TextDrawSetOutline(Banned_TD[20], 1);
    TextDrawBackgroundColor(Banned_TD[20], 255);
    TextDrawFont(Banned_TD[20], 2);
    TextDrawSetProportional(Banned_TD[20], 1);

    Banned_TD[21] = TextDrawCreate(14.000, 325.000, "-_You_Have_Been_Banned_From_The_Server");
    TextDrawLetterSize(Banned_TD[21], 0.270, 1.450);
    TextDrawTextSize(Banned_TD[21], 400.000, 17.000);
    TextDrawAlignment(Banned_TD[21], 1);
    TextDrawColor(Banned_TD[21], -1);
    TextDrawSetShadow(Banned_TD[21], 0);
    TextDrawSetOutline(Banned_TD[21], 1);
    TextDrawBackgroundColor(Banned_TD[21], 255);
    TextDrawFont(Banned_TD[21], 2);
    TextDrawSetProportional(Banned_TD[21], 1);

    Banned_TD[22] = TextDrawCreate(9.000, 366.000, "THIS_IS_NOT_A_MESSAGE_FROM_SA-MP");
    TextDrawLetterSize(Banned_TD[22], 0.412, 1.899);
    TextDrawTextSize(Banned_TD[22], 400.000, 17.000);
    TextDrawAlignment(Banned_TD[22], 1);
    TextDrawColor(Banned_TD[22], -1);
    TextDrawSetShadow(Banned_TD[22], 0);
    TextDrawSetOutline(Banned_TD[22], 1);
    TextDrawBackgroundColor(Banned_TD[22], 255);
    TextDrawFont(Banned_TD[22], 2);
    TextDrawSetProportional(Banned_TD[22], 1);   
}

CreatePlayerRegisterTD(playerid)
{
	Register_TD[playerid][0] = CreatePlayerTextDraw(playerid, 113.000, 149.000, "Character_Name");
    PlayerTextDrawLetterSize(playerid, Register_TD[playerid][0], 0.291, 1.299);
    PlayerTextDrawTextSize(playerid, Register_TD[playerid][0], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, Register_TD[playerid][0], 2);
    PlayerTextDrawColor(playerid, Register_TD[playerid][0], -1);
    PlayerTextDrawSetShadow(playerid, Register_TD[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, Register_TD[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, Register_TD[playerid][0], 255);
    PlayerTextDrawFont(playerid, Register_TD[playerid][0], 1);
    PlayerTextDrawSetProportional(playerid, Register_TD[playerid][0], 1);

    Register_TD[playerid][1] = CreatePlayerTextDraw(playerid, 133.000, 177.000, "Password");
    PlayerTextDrawLetterSize(playerid, Register_TD[playerid][1], 0.291, 1.299);
    PlayerTextDrawTextSize(playerid, Register_TD[playerid][1], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, Register_TD[playerid][1], 3);
    PlayerTextDrawColor(playerid, Register_TD[playerid][1], -1);
    PlayerTextDrawSetShadow(playerid, Register_TD[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, Register_TD[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, Register_TD[playerid][1], 255);
    PlayerTextDrawFont(playerid, Register_TD[playerid][1], 1);
    PlayerTextDrawSetProportional(playerid, Register_TD[playerid][1], 1);
    PlayerTextDrawSetSelectable(playerid, Register_TD[playerid][1], 1);

    Register_TD[playerid][2] = CreatePlayerTextDraw(playerid, 120.000, 204.000, "Age");
    PlayerTextDrawLetterSize(playerid, Register_TD[playerid][2], 0.291, 1.299);
    PlayerTextDrawTextSize(playerid, Register_TD[playerid][2], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, Register_TD[playerid][2], 3);
    PlayerTextDrawColor(playerid, Register_TD[playerid][2], -1);
    PlayerTextDrawSetShadow(playerid, Register_TD[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, Register_TD[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, Register_TD[playerid][2], 255);
    PlayerTextDrawFont(playerid, Register_TD[playerid][2], 1);
    PlayerTextDrawSetProportional(playerid, Register_TD[playerid][2], 1);
    PlayerTextDrawSetSelectable(playerid, Register_TD[playerid][2], 1);

    Register_TD[playerid][3] = CreatePlayerTextDraw(playerid, 128.000, 231.000, "Gender");
    PlayerTextDrawLetterSize(playerid, Register_TD[playerid][3], 0.291, 1.299);
    PlayerTextDrawTextSize(playerid, Register_TD[playerid][3], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, Register_TD[playerid][3], 3);
    PlayerTextDrawColor(playerid, Register_TD[playerid][3], -1);
    PlayerTextDrawSetShadow(playerid, Register_TD[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, Register_TD[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, Register_TD[playerid][3], 255);
    PlayerTextDrawFont(playerid, Register_TD[playerid][3], 1);
    PlayerTextDrawSetProportional(playerid, Register_TD[playerid][3], 1);
    PlayerTextDrawSetSelectable(playerid, Register_TD[playerid][3], 1);

    Register_TD[playerid][4] = CreatePlayerTextDraw(playerid, 136.000, 258.000, "Reference");
    PlayerTextDrawLetterSize(playerid, Register_TD[playerid][4], 0.291, 1.299);
    PlayerTextDrawTextSize(playerid, Register_TD[playerid][4], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, Register_TD[playerid][4], 3);
    PlayerTextDrawColor(playerid, Register_TD[playerid][4], -1);
    PlayerTextDrawSetShadow(playerid, Register_TD[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, Register_TD[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, Register_TD[playerid][4], 255);
    PlayerTextDrawFont(playerid, Register_TD[playerid][4], 1);
    PlayerTextDrawSetProportional(playerid, Register_TD[playerid][4], 1);
    PlayerTextDrawSetSelectable(playerid, Register_TD[playerid][4], 1);

	Register_TD[playerid][5] = CreatePlayerTextDraw(playerid, 135.000, 298.000, "Register_TDentity");
	PlayerTextDrawLetterSize(playerid, Register_TD[playerid][5], 0.194, 0.898);
	PlayerTextDrawTextSize(playerid, Register_TD[playerid][5], 400.000, 17.000);
	PlayerTextDrawAlignment(playerid, Register_TD[playerid][5], 3);
	PlayerTextDrawColor(playerid, Register_TD[playerid][5], -1);
	PlayerTextDrawSetShadow(playerid, Register_TD[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, Register_TD[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, Register_TD[playerid][5], 255);
	PlayerTextDrawFont(playerid, Register_TD[playerid][5], 1);
	PlayerTextDrawSetProportional(playerid, Register_TD[playerid][5], 1);
	PlayerTextDrawSetSelectable(playerid, Register_TD[playerid][5], 1);
}

CreateRegisterTD()
{
	RegisterGlobal[0] = TextDrawCreate(38.000, 1.000, "_");
    TextDrawLetterSize(RegisterGlobal[0], 0.000, 49.646);
    TextDrawTextSize(RegisterGlobal[0], 333.500, 352.500);
    TextDrawAlignment(RegisterGlobal[0], 2);
    TextDrawColor(RegisterGlobal[0], -1);
    TextDrawUseBox(RegisterGlobal[0], 1);
    TextDrawBoxColor(RegisterGlobal[0], 572662527);
    TextDrawSetShadow(RegisterGlobal[0], 0);
    TextDrawSetOutline(RegisterGlobal[0], 1);
    TextDrawBackgroundColor(RegisterGlobal[0], 255);
    TextDrawFont(RegisterGlobal[0], 1);
    TextDrawSetProportional(RegisterGlobal[0], 1);

    RegisterGlobal[1] = TextDrawCreate(99.000, 124.000, "Create Your");
    TextDrawLetterSize(RegisterGlobal[1], 0.208, 0.800);
    TextDrawTextSize(RegisterGlobal[1], 400.000, 17.000);
    TextDrawAlignment(RegisterGlobal[1], 3);
    TextDrawColor(RegisterGlobal[1], -1);
    TextDrawSetShadow(RegisterGlobal[1], 0);
    TextDrawSetOutline(RegisterGlobal[1], 0);
    TextDrawBackgroundColor(RegisterGlobal[1], 255);
    TextDrawFont(RegisterGlobal[1], 1);
    TextDrawSetProportional(RegisterGlobal[1], 1);

    RegisterGlobal[2] = TextDrawCreate(164.000, 124.000, "Character Identity");
    TextDrawLetterSize(RegisterGlobal[2], 0.208, 0.800);
    TextDrawTextSize(RegisterGlobal[2], 400.000, 17.000);
    TextDrawAlignment(RegisterGlobal[2], 3);
    TextDrawColor(RegisterGlobal[2], -1);
    TextDrawSetShadow(RegisterGlobal[2], 0);
    TextDrawSetOutline(RegisterGlobal[2], 0);
    TextDrawBackgroundColor(RegisterGlobal[2], 255);
    TextDrawFont(RegisterGlobal[2], 1);
    TextDrawSetProportional(RegisterGlobal[2], 1);

    RegisterGlobal[3] = TextDrawCreate(-50.000, 132.000, "Preview_Model");
    TextDrawLetterSize(RegisterGlobal[3], 0.600, 2.000);
    TextDrawTextSize(RegisterGlobal[3], 323.000, 47.000);
    TextDrawAlignment(RegisterGlobal[3], 1);
    TextDrawColor(RegisterGlobal[3], 645986303);
    TextDrawSetShadow(RegisterGlobal[3], 0);
    TextDrawSetOutline(RegisterGlobal[3], 0);
    TextDrawBackgroundColor(RegisterGlobal[3], 0);
    TextDrawFont(RegisterGlobal[3], 5);
    TextDrawSetProportional(RegisterGlobal[3], 1);
    TextDrawSetPreviewModel(RegisterGlobal[3], 19873);
    TextDrawSetPreviewRot(RegisterGlobal[3], 90.000, 90.000, 90.000, 1.189);
    TextDrawSetPreviewVehCol(RegisterGlobal[3], 1, 1);

    RegisterGlobal[4] = TextDrawCreate(-50.000, 160.000, "Preview_Model");
    TextDrawLetterSize(RegisterGlobal[4], 0.600, 2.000);
    TextDrawTextSize(RegisterGlobal[4], 323.000, 47.000);
    TextDrawAlignment(RegisterGlobal[4], 1);
    TextDrawColor(RegisterGlobal[4], 645986303);
    TextDrawSetShadow(RegisterGlobal[4], 0);
    TextDrawSetOutline(RegisterGlobal[4], 0);
    TextDrawBackgroundColor(RegisterGlobal[4], 0);
    TextDrawFont(RegisterGlobal[4], 5);
    TextDrawSetProportional(RegisterGlobal[4], 1);
    TextDrawSetPreviewModel(RegisterGlobal[4], 19873);
    TextDrawSetPreviewRot(RegisterGlobal[4], 90.000, 90.000, 90.000, 1.189);
    TextDrawSetPreviewVehCol(RegisterGlobal[4], 1, 1);

    RegisterGlobal[5] = TextDrawCreate(-50.000, 187.000, "Preview_Model");
    TextDrawLetterSize(RegisterGlobal[5], 0.600, 2.000);
    TextDrawTextSize(RegisterGlobal[5], 323.000, 47.000);
    TextDrawAlignment(RegisterGlobal[5], 1);
    TextDrawColor(RegisterGlobal[5], 645986303);
    TextDrawSetShadow(RegisterGlobal[5], 0);
    TextDrawSetOutline(RegisterGlobal[5], 0);
    TextDrawBackgroundColor(RegisterGlobal[5], 0);
    TextDrawFont(RegisterGlobal[5], 5);
    TextDrawSetProportional(RegisterGlobal[5], 1);
    TextDrawSetPreviewModel(RegisterGlobal[5], 19873);
    TextDrawSetPreviewRot(RegisterGlobal[5], 90.000, 90.000, 90.000, 1.189);
    TextDrawSetPreviewVehCol(RegisterGlobal[5], 1, 1);

    RegisterGlobal[6] = TextDrawCreate(-50.000, 214.000, "Preview_Model");
    TextDrawLetterSize(RegisterGlobal[6], 0.600, 2.000);
    TextDrawTextSize(RegisterGlobal[6], 323.000, 47.000);
    TextDrawAlignment(RegisterGlobal[6], 1);
    TextDrawColor(RegisterGlobal[6], 645986303);
    TextDrawSetShadow(RegisterGlobal[6], 0);
    TextDrawSetOutline(RegisterGlobal[6], 0);
    TextDrawBackgroundColor(RegisterGlobal[6], 0);
    TextDrawFont(RegisterGlobal[6], 5);
    TextDrawSetProportional(RegisterGlobal[6], 1);
    TextDrawSetPreviewModel(RegisterGlobal[6], 19873);
    TextDrawSetPreviewRot(RegisterGlobal[6], 90.000, 90.000, 90.000, 1.189);
    TextDrawSetPreviewVehCol(RegisterGlobal[6], 1, 1);

    RegisterGlobal[7] = TextDrawCreate(-50.000, 241.000, "Preview_Model");
    TextDrawLetterSize(RegisterGlobal[7], 0.600, 2.000);
    TextDrawTextSize(RegisterGlobal[7], 323.000, 47.000);
    TextDrawAlignment(RegisterGlobal[7], 1);
    TextDrawColor(RegisterGlobal[7], 645986303);
    TextDrawSetShadow(RegisterGlobal[7], 0);
    TextDrawSetOutline(RegisterGlobal[7], 0);
    TextDrawBackgroundColor(RegisterGlobal[7], 0);
    TextDrawFont(RegisterGlobal[7], 5);
    TextDrawSetProportional(RegisterGlobal[7], 1);
    TextDrawSetPreviewModel(RegisterGlobal[7], 19873);
    TextDrawSetPreviewRot(RegisterGlobal[7], 90.000, 90.000, 90.000, 1.189);
    TextDrawSetPreviewVehCol(RegisterGlobal[7], 1, 1);

    RegisterGlobal[8] = TextDrawCreate(-141.000, 167.000, "Preview_Model");
    TextDrawLetterSize(RegisterGlobal[8], 0.600, 2.000);
    TextDrawTextSize(RegisterGlobal[8], 492.000, 4.500);
    TextDrawAlignment(RegisterGlobal[8], 1);
    TextDrawColor(RegisterGlobal[8], -1);
    TextDrawSetShadow(RegisterGlobal[8], 0);
    TextDrawSetOutline(RegisterGlobal[8], 0);
    TextDrawBackgroundColor(RegisterGlobal[8], 0);
    TextDrawFont(RegisterGlobal[8], 5);
    TextDrawSetProportional(RegisterGlobal[8], 1);
    TextDrawSetPreviewModel(RegisterGlobal[8], 3003);
    TextDrawSetPreviewRot(RegisterGlobal[8], 90.000, 90.000, 90.000, 1.008);
    TextDrawSetPreviewVehCol(RegisterGlobal[8], 1, 1);

    RegisterGlobal[9] = TextDrawCreate(-141.000, 195.000, "Preview_Model");
    TextDrawLetterSize(RegisterGlobal[9], 0.600, 2.000);
    TextDrawTextSize(RegisterGlobal[9], 492.000, 4.500);
    TextDrawAlignment(RegisterGlobal[9], 1);
    TextDrawColor(RegisterGlobal[9], -1);
    TextDrawSetShadow(RegisterGlobal[9], 0);
    TextDrawSetOutline(RegisterGlobal[9], 0);
    TextDrawBackgroundColor(RegisterGlobal[9], 0);
    TextDrawFont(RegisterGlobal[9], 5);
    TextDrawSetProportional(RegisterGlobal[9], 1);
    TextDrawSetPreviewModel(RegisterGlobal[9], 3003);
    TextDrawSetPreviewRot(RegisterGlobal[9], 90.000, 90.000, 90.000, 1.008);
    TextDrawSetPreviewVehCol(RegisterGlobal[9], 1, 1);

    RegisterGlobal[10] = TextDrawCreate(-141.000, 221.000, "Preview_Model");
    TextDrawLetterSize(RegisterGlobal[10], 0.600, 2.000);
    TextDrawTextSize(RegisterGlobal[10], 492.000, 4.500);
    TextDrawAlignment(RegisterGlobal[10], 1);
    TextDrawColor(RegisterGlobal[10], -1);
    TextDrawSetShadow(RegisterGlobal[10], 0);
    TextDrawSetOutline(RegisterGlobal[10], 0);
    TextDrawBackgroundColor(RegisterGlobal[10], 0);
    TextDrawFont(RegisterGlobal[10], 5);
    TextDrawSetProportional(RegisterGlobal[10], 1);
    TextDrawSetPreviewModel(RegisterGlobal[10], 3003);
    TextDrawSetPreviewRot(RegisterGlobal[10], 90.000, 90.000, 90.000, 1.008);
    TextDrawSetPreviewVehCol(RegisterGlobal[10], 1, 1);

    RegisterGlobal[11] = TextDrawCreate(-141.000, 248.000, "Preview_Model");
    TextDrawLetterSize(RegisterGlobal[11], 0.600, 2.000);
    TextDrawTextSize(RegisterGlobal[11], 492.000, 4.500);
    TextDrawAlignment(RegisterGlobal[11], 1);
    TextDrawColor(RegisterGlobal[11], -1);
    TextDrawSetShadow(RegisterGlobal[11], 0);
    TextDrawSetOutline(RegisterGlobal[11], 0);
    TextDrawBackgroundColor(RegisterGlobal[11], 0);
    TextDrawFont(RegisterGlobal[11], 5);
    TextDrawSetProportional(RegisterGlobal[11], 1);
    TextDrawSetPreviewModel(RegisterGlobal[11], 3003);
    TextDrawSetPreviewRot(RegisterGlobal[11], 90.000, 90.000, 90.000, 1.008);
    TextDrawSetPreviewVehCol(RegisterGlobal[11], 1, 1);

    RegisterGlobal[12] = TextDrawCreate(-141.000, 276.000, "Preview_Model");
    TextDrawLetterSize(RegisterGlobal[12], 0.600, 2.000);
    TextDrawTextSize(RegisterGlobal[12], 492.000, 4.500);
    TextDrawAlignment(RegisterGlobal[12], 1);
    TextDrawColor(RegisterGlobal[12], -1);
    TextDrawSetShadow(RegisterGlobal[12], 0);
    TextDrawSetOutline(RegisterGlobal[12], 0);
    TextDrawBackgroundColor(RegisterGlobal[12], 0);
    TextDrawFont(RegisterGlobal[12], 5);
    TextDrawSetProportional(RegisterGlobal[12], 1);
    TextDrawSetPreviewModel(RegisterGlobal[12], 3003);
    TextDrawSetPreviewRot(RegisterGlobal[12], 90.000, 90.000, 90.000, 1.008);
    TextDrawSetPreviewVehCol(RegisterGlobal[12], 1, 1);

    RegisterGlobal[13] = TextDrawCreate(-12.000, 339.000, "Preview_Model");
    TextDrawLetterSize(RegisterGlobal[13], 0.600, 2.000);
    TextDrawTextSize(RegisterGlobal[13], 245.000, -71.500);
    TextDrawAlignment(RegisterGlobal[13], 1);
    TextDrawColor(RegisterGlobal[13], 513538047);
    TextDrawSetShadow(RegisterGlobal[13], 0);
    TextDrawSetOutline(RegisterGlobal[13], 0);
    TextDrawBackgroundColor(RegisterGlobal[13], 0);
    TextDrawFont(RegisterGlobal[13], 5);
    TextDrawSetProportional(RegisterGlobal[13], 1);
    TextDrawSetPreviewModel(RegisterGlobal[13], 19827);
    TextDrawSetPreviewRot(RegisterGlobal[13], 270.000, 90.000, 90.000, 1.008);
    TextDrawSetPreviewVehCol(RegisterGlobal[13], 1, 1);

    RegisterGlobal[14] = TextDrawCreate(61.000, 84.000, "CyberX");
    TextDrawLetterSize(RegisterGlobal[14], 0.300, 1.500);
    TextDrawAlignment(RegisterGlobal[14], 1);
    TextDrawColor(RegisterGlobal[14], -65281);
    TextDrawSetShadow(RegisterGlobal[14], 1);
    TextDrawSetOutline(RegisterGlobal[14], 1);
    TextDrawBackgroundColor(RegisterGlobal[14], 150);
    TextDrawFont(RegisterGlobal[14], 2);
    TextDrawSetProportional(RegisterGlobal[14], 1);

    RegisterGlobal[15] = TextDrawCreate(81.000, 99.000, " ");
    TextDrawLetterSize(RegisterGlobal[15], 0.300, 1.500);
    TextDrawAlignment(RegisterGlobal[15], 1);
    TextDrawColor(RegisterGlobal[15], 16711935);
    TextDrawSetShadow(RegisterGlobal[15], 1);
    TextDrawSetOutline(RegisterGlobal[15], 1);
    TextDrawBackgroundColor(RegisterGlobal[15], 150);
    TextDrawFont(RegisterGlobal[15], 2);
    TextDrawSetProportional(RegisterGlobal[15], 1);

    RegisterGlobal[16] = TextDrawCreate(117.000, 84.000, "RolePlay");
    TextDrawLetterSize(RegisterGlobal[16], 0.300, 1.500);
    TextDrawAlignment(RegisterGlobal[16], 1);
    TextDrawColor(RegisterGlobal[16], 16777215);
    TextDrawSetShadow(RegisterGlobal[16], 1);
    TextDrawSetOutline(RegisterGlobal[16], 1);
    TextDrawBackgroundColor(RegisterGlobal[16], 150);
    TextDrawFont(RegisterGlobal[16], 2);
    TextDrawSetProportional(RegisterGlobal[16], 1);

}


CreateTextDraws() {
	
	/*****************
	* PLAYER INFO FRAME
    *****************/
	playerInfoFrameTD[0] = TextDrawCreate(218.0000, 330.0000, "LD_SPAC:WHITE");
	TextDrawFont(playerInfoFrameTD[0], 4);
	TextDrawLetterSize(playerInfoFrameTD[0], 0.5000, 1.0000);
	TextDrawColor(playerInfoFrameTD[0], 1094795775);
	TextDrawSetShadow(playerInfoFrameTD[0], 0);
	TextDrawSetOutline(playerInfoFrameTD[0], 0);
	TextDrawBackgroundColor(playerInfoFrameTD[0], 255);
	TextDrawSetProportional(playerInfoFrameTD[0], 1);
	TextDrawTextSize(playerInfoFrameTD[0], 200.0000, 70.0000);

	playerInfoFrameTD[1] = TextDrawCreate(219.0000, 331.0000, "LD_SPAC:WHITE");
	TextDrawFont(playerInfoFrameTD[1], 4);
	TextDrawLetterSize(playerInfoFrameTD[1], 0.5000, 1.0000);
	TextDrawColor(playerInfoFrameTD[1], 589505535);
	TextDrawSetShadow(playerInfoFrameTD[1], 0);
	TextDrawSetOutline(playerInfoFrameTD[1], 0);
	TextDrawBackgroundColor(playerInfoFrameTD[1], 255);
	TextDrawSetProportional(playerInfoFrameTD[1], 1);
	TextDrawTextSize(playerInfoFrameTD[1], 30.0000, 68.0000);
	TextDrawSetSelectable(playerInfoFrameTD[1], 1);

	playerInfoFrameTD[2] = TextDrawCreate(387.0000, 331.0000, "LD_SPAC:WHITE");
	TextDrawFont(playerInfoFrameTD[2], 4);
	TextDrawLetterSize(playerInfoFrameTD[2], 0.5000, 1.0000);
	TextDrawColor(playerInfoFrameTD[2], 589505535);
	TextDrawSetShadow(playerInfoFrameTD[2], 0);
	TextDrawSetOutline(playerInfoFrameTD[2], 0);
	TextDrawBackgroundColor(playerInfoFrameTD[2], 255);
	TextDrawSetProportional(playerInfoFrameTD[2], 1);
	TextDrawTextSize(playerInfoFrameTD[2], 30.0000, 68.0000);
	TextDrawSetSelectable(playerInfoFrameTD[2], 1);

	playerInfoFrameTD[3] = TextDrawCreate(250.0000, 331.0000, "LD_SPAC:WHITE");
	TextDrawFont(playerInfoFrameTD[3], 4);
	TextDrawLetterSize(playerInfoFrameTD[3], 0.5000, 1.0000);
	TextDrawColor(playerInfoFrameTD[3], 589505535);
	TextDrawSetShadow(playerInfoFrameTD[3], 0);
	TextDrawSetOutline(playerInfoFrameTD[3], 0);
	TextDrawBackgroundColor(playerInfoFrameTD[3], 255);
	TextDrawSetProportional(playerInfoFrameTD[3], 1);
	TextDrawTextSize(playerInfoFrameTD[3], 136.0000, 68.0000);

	playerInfoFrameTD[4] = TextDrawCreate(224.5000, 349.5000, "LD_BEAT:LEFT");
	TextDrawFont(playerInfoFrameTD[4], 4);
	TextDrawLetterSize(playerInfoFrameTD[4], 0.5000, 1.0000);
	TextDrawColor(playerInfoFrameTD[4], 1684301055);
	TextDrawSetShadow(playerInfoFrameTD[4], 0);
	TextDrawSetOutline(playerInfoFrameTD[4], 0);
	TextDrawBackgroundColor(playerInfoFrameTD[4], 255);
	TextDrawSetProportional(playerInfoFrameTD[4], 1);
	TextDrawTextSize(playerInfoFrameTD[4], 20.0000, 28.0000);

	playerInfoFrameTD[5] = TextDrawCreate(393.5000, 349.5000, "LD_BEAT:RIGHT");
	TextDrawFont(playerInfoFrameTD[5], 4);
	TextDrawLetterSize(playerInfoFrameTD[5], 0.5000, 1.0000);
	TextDrawColor(playerInfoFrameTD[5], 1684301055);
	TextDrawSetShadow(playerInfoFrameTD[5], 0);
	TextDrawSetOutline(playerInfoFrameTD[5], 0);
	TextDrawBackgroundColor(playerInfoFrameTD[5], 255);
	TextDrawSetProportional(playerInfoFrameTD[5], 1);
	TextDrawTextSize(playerInfoFrameTD[5], 20.0000, 28.0000);

	/*****************
	* PLAYER INFO TEXTS
    *****************/
	playerInfoTD[0] = TextDrawCreate(302.0000, 333.5000, "NOW SPECTATING:");
	TextDrawFont(playerInfoTD[0], 1);
	TextDrawLetterSize(playerInfoTD[0], 0.1399, 0.7999);
	TextDrawColor(playerInfoTD[0], -1768515841);
	TextDrawSetShadow(playerInfoTD[0], 0);
	TextDrawSetOutline(playerInfoTD[0], 0);
	TextDrawBackgroundColor(playerInfoTD[0], 255);
	TextDrawSetProportional(playerInfoTD[0], 1);
	TextDrawTextSize(playerInfoTD[0], 640.0000, 0.0000);

	playerInfoTD[1] = TextDrawCreate(252.0000, 333.5000, "PLAYER_MODEL");
	TextDrawFont(playerInfoTD[1], 5);
	TextDrawLetterSize(playerInfoTD[1], 0.2099, 1.1000);
	TextDrawColor(playerInfoTD[1], -1768515841);
	TextDrawSetShadow(playerInfoTD[1], 0);
	TextDrawSetOutline(playerInfoTD[1], 0);
	TextDrawBackgroundColor(playerInfoTD[1], 1684301055);
	TextDrawSetProportional(playerInfoTD[1], 1);
	TextDrawTextSize(playerInfoTD[1], 49.0000, 49.0000);
	TextDrawSetPreviewModel(playerInfoTD[1], 0);
	TextDrawSetPreviewRot(playerInfoTD[1], 0.0000, 0.0000, 0.0000, 1.0000);

	playerInfoTD[2] = TextDrawCreate(252.0000, 392.0000, "LD_SPAC:WHITE");
	TextDrawFont(playerInfoTD[2], 4);
	TextDrawLetterSize(playerInfoTD[2], 0.2099, 1.1000);
	TextDrawColor(playerInfoTD[2], -1768515841);
	TextDrawSetShadow(playerInfoTD[2], 0);
	TextDrawSetOutline(playerInfoTD[2], 0);
	TextDrawBackgroundColor(playerInfoTD[2], 255);
	TextDrawSetProportional(playerInfoTD[2], 1);
	TextDrawTextSize(playerInfoTD[2], 64.0000, 3.0000);

	playerInfoTD[3] = TextDrawCreate(252.0000, 392.0000, "LD_SPAC:WHITE");
	TextDrawFont(playerInfoTD[3], 4);
	TextDrawLetterSize(playerInfoTD[3], 0.2099, 1.1000);
	TextDrawColor(playerInfoTD[3], -16776961);
	TextDrawSetShadow(playerInfoTD[3], 0);
	TextDrawSetOutline(playerInfoTD[3], 0);
	TextDrawBackgroundColor(playerInfoTD[3], 255);
	TextDrawSetProportional(playerInfoTD[3], 1);
	TextDrawTextSize(playerInfoTD[3], 55.0000, 3.0000);

	playerInfoTD[4] = TextDrawCreate(320.5000, 392.0000, "LD_SPAC:WHITE");
	TextDrawFont(playerInfoTD[4], 4);
	TextDrawLetterSize(playerInfoTD[4], 0.2099, 1.1000);
	TextDrawColor(playerInfoTD[4], -1768515841);
	TextDrawSetShadow(playerInfoTD[4], 0);
	TextDrawSetOutline(playerInfoTD[4], 0);
	TextDrawBackgroundColor(playerInfoTD[4], 255);
	TextDrawSetProportional(playerInfoTD[4], 1);
	TextDrawTextSize(playerInfoTD[4], 64.0000, 3.0000);

	playerInfoTD[5] = TextDrawCreate(321.0000, 392.0000, "LD_SPAC:WHITE");
	TextDrawFont(playerInfoTD[5], 4);
	TextDrawLetterSize(playerInfoTD[5], 0.2099, 1.1000);
	TextDrawColor(playerInfoTD[5], -1);
	TextDrawSetShadow(playerInfoTD[5], 0);
	TextDrawSetOutline(playerInfoTD[5], 0);
	TextDrawBackgroundColor(playerInfoTD[5], 255);
	TextDrawSetProportional(playerInfoTD[5], 1);
	TextDrawTextSize(playerInfoTD[5], 10.5000, 3.0000);

	playerInfoTD[6] = TextDrawCreate(341.0000, 376.0000, "[maximum: 35.0 MPH]");
	TextDrawFont(playerInfoTD[6], 1);
	TextDrawLetterSize(playerInfoTD[6], 0.1199, 0.5999);
	TextDrawColor(playerInfoTD[6], 1684301055);
	TextDrawSetShadow(playerInfoTD[6], 0);
	TextDrawSetOutline(playerInfoTD[6], 0);
	TextDrawBackgroundColor(playerInfoTD[6], 255);
	TextDrawSetProportional(playerInfoTD[6], 1);
	TextDrawTextSize(playerInfoTD[6], 640.0000, 0.0000);

	/*****************
	* VEHICLE INFO FRAME
    *****************/
	vehicleInfoFrameTD[0] = TextDrawCreate(218.0000, 403.5000, "LD_SPAC:WHITE");
	TextDrawFont(vehicleInfoFrameTD[0], 4);
	TextDrawLetterSize(vehicleInfoFrameTD[0], 0.5000, 1.0000);
	TextDrawColor(vehicleInfoFrameTD[0], 1094795775);
	TextDrawSetShadow(vehicleInfoFrameTD[0], 0);
	TextDrawSetOutline(vehicleInfoFrameTD[0], 0);
	TextDrawBackgroundColor(vehicleInfoFrameTD[0], 255);
	TextDrawSetProportional(vehicleInfoFrameTD[0], 1);
	TextDrawTextSize(vehicleInfoFrameTD[0], 200.0000, 32.0000);

	vehicleInfoFrameTD[1] = TextDrawCreate(219.0000, 404.5000, "LD_SPAC:WHITE");
	TextDrawFont(vehicleInfoFrameTD[1], 4);
	TextDrawLetterSize(vehicleInfoFrameTD[1], 0.5000, 1.0000);
	TextDrawColor(vehicleInfoFrameTD[1], 589505535);
	TextDrawSetShadow(vehicleInfoFrameTD[1], 0);
	TextDrawSetOutline(vehicleInfoFrameTD[1], 0);
	TextDrawBackgroundColor(vehicleInfoFrameTD[1], 255);
	TextDrawSetProportional(vehicleInfoFrameTD[1], 1);
	TextDrawTextSize(vehicleInfoFrameTD[1], 198.0000, 30.0000);

	/*****************
	* VEHICLE INFO TEXTS
    *****************/
	vehicleInfoTD[0] = TextDrawCreate(252.0000, 406.0000, "PLAYER VEHICLE INFO:");
	TextDrawFont(vehicleInfoTD[0], 1);
	TextDrawLetterSize(vehicleInfoTD[0], 0.1399, 0.7999);
	TextDrawColor(vehicleInfoTD[0], -1768515841);
	TextDrawSetShadow(vehicleInfoTD[0], 0);
	TextDrawSetOutline(vehicleInfoTD[0], 0);
	TextDrawBackgroundColor(vehicleInfoTD[0], 255);
	TextDrawSetProportional(vehicleInfoTD[0], 1);
	TextDrawTextSize(vehicleInfoTD[0], 640.0000, 0.0000);

	vehicleInfoTD[1] = TextDrawCreate(220.5000, 406.5000, "PLAYER_MODEL");
	TextDrawFont(vehicleInfoTD[1], 5);
	TextDrawLetterSize(vehicleInfoTD[1], 0.2099, 1.1000);
	TextDrawColor(vehicleInfoTD[1], -1);
	TextDrawSetShadow(vehicleInfoTD[1], 0);
	TextDrawSetOutline(vehicleInfoTD[1], 0);
	TextDrawBackgroundColor(vehicleInfoTD[1], 842150655);
	TextDrawSetProportional(vehicleInfoTD[1], 1);
	TextDrawTextSize(vehicleInfoTD[1], 30.0000, 26.0000);
	TextDrawSetPreviewModel(vehicleInfoTD[1], 456);
	TextDrawSetPreviewRot(vehicleInfoTD[1], 0.0000, 0.0000, -50.0000, 1.0000);

	vehicleInfoTD[2] = TextDrawCreate(320.5000, 429.0000, "LD_SPAC:WHITE");
	TextDrawFont(vehicleInfoTD[2], 4);
	TextDrawLetterSize(vehicleInfoTD[2], 0.2099, 1.1000);
	TextDrawColor(vehicleInfoTD[2], -1768515841);
	TextDrawSetShadow(vehicleInfoTD[2], 0);
	TextDrawSetOutline(vehicleInfoTD[2], 0);
	TextDrawBackgroundColor(vehicleInfoTD[2], 255);
	TextDrawSetProportional(vehicleInfoTD[2], 1);
	TextDrawTextSize(vehicleInfoTD[2], 94.5000, 3.0000);

	vehicleInfoTD[3] = TextDrawCreate(320.5000, 429.0000, "LD_SPAC:WHITE");
	TextDrawFont(vehicleInfoTD[3], 4);
	TextDrawLetterSize(vehicleInfoTD[3], 0.2099, 1.1000);
	TextDrawColor(vehicleInfoTD[3], -16776961);
	TextDrawSetShadow(vehicleInfoTD[3], 0);
	TextDrawSetOutline(vehicleInfoTD[3], 0);
	TextDrawBackgroundColor(vehicleInfoTD[3], 255);
	TextDrawSetProportional(vehicleInfoTD[3], 1);
	TextDrawTextSize(vehicleInfoTD[3], 94.5000, 3.0000);
}

CreatePlayerTextDraws(playerid) {
	/*****************
	* PLAYER INFO TEXTS
    *****************/
	playerInfoPTD[playerid][0] = CreatePlayerTextDraw(playerid, 302.0000, 340.0000, "Username");
	PlayerTextDrawFont(playerid, playerInfoPTD[playerid][0], 1);
	PlayerTextDrawLetterSize(playerid, playerInfoPTD[playerid][0], 0.2399, 1.3000);
	PlayerTextDrawColor(playerid, playerInfoPTD[playerid][0], -7601921);
	PlayerTextDrawSetShadow(playerid, playerInfoPTD[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, playerInfoPTD[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, playerInfoPTD[playerid][0], 255);
	PlayerTextDrawSetProportional(playerid, playerInfoPTD[playerid][0], 1);
	PlayerTextDrawTextSize(playerid, playerInfoPTD[playerid][0], 640.0000, 0.0000);

	playerInfoPTD[playerid][1] = CreatePlayerTextDraw(playerid, 302.0000, 351.0000, "ID: 13");
	PlayerTextDrawFont(playerid, playerInfoPTD[playerid][1], 1);
	PlayerTextDrawLetterSize(playerid, playerInfoPTD[playerid][1], 0.1199, 0.5999);
	PlayerTextDrawColor(playerid, playerInfoPTD[playerid][1], 1684301055);
	PlayerTextDrawSetShadow(playerid, playerInfoPTD[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, playerInfoPTD[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, playerInfoPTD[playerid][1], 255);
	PlayerTextDrawSetProportional(playerid, playerInfoPTD[playerid][1], 1);
	PlayerTextDrawTextSize(playerid, playerInfoPTD[playerid][1], 640.0000, 0.0000);

	playerInfoPTD[playerid][2] = CreatePlayerTextDraw(playerid, 251.5000, 384.0000, "HEALTH: ~w~80");
	PlayerTextDrawFont(playerid, playerInfoPTD[playerid][2], 1);
	PlayerTextDrawLetterSize(playerid, playerInfoPTD[playerid][2], 0.1399, 0.7999);
	PlayerTextDrawColor(playerid, playerInfoPTD[playerid][2], -1768515841);
	PlayerTextDrawSetShadow(playerid, playerInfoPTD[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, playerInfoPTD[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, playerInfoPTD[playerid][2], 255);
	PlayerTextDrawSetProportional(playerid, playerInfoPTD[playerid][2], 1);
	PlayerTextDrawTextSize(playerid, playerInfoPTD[playerid][2], 640.0000, 0.0000);

	playerInfoPTD[playerid][3] = CreatePlayerTextDraw(playerid, 320.5000, 384.0000, "ARMOUR: ~w~10");
	PlayerTextDrawFont(playerid, playerInfoPTD[playerid][3], 1);
	PlayerTextDrawLetterSize(playerid, playerInfoPTD[playerid][3], 0.1399, 0.7999);
	PlayerTextDrawColor(playerid, playerInfoPTD[playerid][3], -1768515841);
	PlayerTextDrawSetShadow(playerid, playerInfoPTD[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, playerInfoPTD[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, playerInfoPTD[playerid][3], 255);
	PlayerTextDrawSetProportional(playerid, playerInfoPTD[playerid][3], 1);
	PlayerTextDrawTextSize(playerid, playerInfoPTD[playerid][3], 640.0000, 0.0000);

	playerInfoPTD[playerid][4] = CreatePlayerTextDraw(playerid, 302.0000, 360.5000, "WEAPON: ~w~M4 (144)");
	PlayerTextDrawFont(playerid, playerInfoPTD[playerid][4], 1);
	PlayerTextDrawLetterSize(playerid, playerInfoPTD[playerid][4], 0.1399, 0.7999);
	PlayerTextDrawColor(playerid, playerInfoPTD[playerid][4], -1768515841);
	PlayerTextDrawSetShadow(playerid, playerInfoPTD[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, playerInfoPTD[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, playerInfoPTD[playerid][4], 255);
	PlayerTextDrawSetProportional(playerid, playerInfoPTD[playerid][4], 1);
	PlayerTextDrawTextSize(playerid, playerInfoPTD[playerid][4], 640.0000, 0.0000);

	playerInfoPTD[playerid][5] = CreatePlayerTextDraw(playerid, 302.0000, 368.0000, "MONEY: ~g~$~w~99,242,221");
	PlayerTextDrawFont(playerid, playerInfoPTD[playerid][5], 1);
	PlayerTextDrawLetterSize(playerid, playerInfoPTD[playerid][5], 0.1399, 0.7999);
	PlayerTextDrawColor(playerid, playerInfoPTD[playerid][5], -1768515841);
	PlayerTextDrawSetShadow(playerid, playerInfoPTD[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, playerInfoPTD[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, playerInfoPTD[playerid][5], 255);
	PlayerTextDrawSetProportional(playerid, playerInfoPTD[playerid][5], 1);
	PlayerTextDrawTextSize(playerid, playerInfoPTD[playerid][5], 640.0000, 0.0000);

	playerInfoPTD[playerid][6] = CreatePlayerTextDraw(playerid, 302.0000, 375.0000, "SPEED: ~w~0.2 mps");
	PlayerTextDrawFont(playerid, playerInfoPTD[playerid][6], 1);
	PlayerTextDrawLetterSize(playerid, playerInfoPTD[playerid][6], 0.1399, 0.7999);
	PlayerTextDrawColor(playerid, playerInfoPTD[playerid][6], -1768515841);
	PlayerTextDrawSetShadow(playerid, playerInfoPTD[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, playerInfoPTD[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, playerInfoPTD[playerid][6], 255);
	PlayerTextDrawSetProportional(playerid, playerInfoPTD[playerid][6], 1);
	PlayerTextDrawTextSize(playerid, playerInfoPTD[playerid][6], 640.0000, 0.0000);

	playerInfoPTD[playerid][7] = CreatePlayerTextDraw(playerid, 384.0000, 333.5000, "1/15");
	PlayerTextDrawFont(playerid, playerInfoPTD[playerid][7], 1);
	PlayerTextDrawLetterSize(playerid, playerInfoPTD[playerid][7], 0.1399, 0.7999);
	PlayerTextDrawAlignment(playerid, playerInfoPTD[playerid][7], 3);
	PlayerTextDrawColor(playerid, playerInfoPTD[playerid][7], -1768515841);
	PlayerTextDrawSetShadow(playerid, playerInfoPTD[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, playerInfoPTD[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, playerInfoPTD[playerid][7], 255);
	PlayerTextDrawSetProportional(playerid, playerInfoPTD[playerid][7], 1);
	PlayerTextDrawTextSize(playerid, playerInfoPTD[playerid][7], 640.0000, 0.0000);

	/*****************
	* VEHICLE INFO TEXTS
    *****************/
	vehicleInfoPTD[playerid][0] = CreatePlayerTextDraw(playerid, 251.5000, 412.0000, "Truck");
	PlayerTextDrawFont(playerid, vehicleInfoPTD[playerid][0], 1);
	PlayerTextDrawLetterSize(playerid, vehicleInfoPTD[playerid][0], 0.2399, 1.3000);
	PlayerTextDrawColor(playerid, vehicleInfoPTD[playerid][0], -1768515841);
	PlayerTextDrawSetShadow(playerid, vehicleInfoPTD[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, vehicleInfoPTD[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, vehicleInfoPTD[playerid][0], 255);
	PlayerTextDrawSetProportional(playerid, vehicleInfoPTD[playerid][0], 1);
	PlayerTextDrawTextSize(playerid, vehicleInfoPTD[playerid][0], 640.0000, 0.0000);

	vehicleInfoPTD[playerid][1] = CreatePlayerTextDraw(playerid, 251.5000, 423.5000, "MODELID: 456");
	PlayerTextDrawFont(playerid, vehicleInfoPTD[playerid][1], 1);
	PlayerTextDrawLetterSize(playerid, vehicleInfoPTD[playerid][1], 0.1199, 0.5999);
	PlayerTextDrawColor(playerid, vehicleInfoPTD[playerid][1], 1684301055);
	PlayerTextDrawSetShadow(playerid, vehicleInfoPTD[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, vehicleInfoPTD[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, vehicleInfoPTD[playerid][1], 255);
	PlayerTextDrawSetProportional(playerid, vehicleInfoPTD[playerid][1], 1);
	PlayerTextDrawTextSize(playerid, vehicleInfoPTD[playerid][1], 640.0000, 0.0000);

	vehicleInfoPTD[playerid][2] = CreatePlayerTextDraw(playerid, 320.5000, 421.0000, "HEALTH: ~w~1000/1000");
	PlayerTextDrawFont(playerid, vehicleInfoPTD[playerid][2], 1);
	PlayerTextDrawLetterSize(playerid, vehicleInfoPTD[playerid][2], 0.1399, 0.7999);
	PlayerTextDrawColor(playerid, vehicleInfoPTD[playerid][2], -1768515841);
	PlayerTextDrawSetShadow(playerid, vehicleInfoPTD[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, vehicleInfoPTD[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, vehicleInfoPTD[playerid][2], 255);
	PlayerTextDrawSetProportional(playerid, vehicleInfoPTD[playerid][2], 1);
	PlayerTextDrawTextSize(playerid, vehicleInfoPTD[playerid][2], 640.0000, 0.0000);

	vehicleInfoPTD[playerid][3] = CreatePlayerTextDraw(playerid, 320.5000, 406.0000, "SPEED: ~w~60 kps");
	PlayerTextDrawFont(playerid, vehicleInfoPTD[playerid][3], 1);
	PlayerTextDrawLetterSize(playerid, vehicleInfoPTD[playerid][3], 0.1399, 0.7999);
	PlayerTextDrawColor(playerid, vehicleInfoPTD[playerid][3], -1768515841);
	PlayerTextDrawSetShadow(playerid, vehicleInfoPTD[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, vehicleInfoPTD[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, vehicleInfoPTD[playerid][3], 255);
	PlayerTextDrawSetProportional(playerid, vehicleInfoPTD[playerid][3], 1);
	PlayerTextDrawTextSize(playerid, vehicleInfoPTD[playerid][3], 640.0000, 0.0000);

	vehicleInfoPTD[playerid][4] = CreatePlayerTextDraw(playerid, 320.5000, 413.5000, "[maximum: 120 kps]");
	PlayerTextDrawFont(playerid, vehicleInfoPTD[playerid][4], 1);
	PlayerTextDrawLetterSize(playerid, vehicleInfoPTD[playerid][4], 0.1199, 0.5999);
	PlayerTextDrawColor(playerid, vehicleInfoPTD[playerid][4], 1684301055);
	PlayerTextDrawSetShadow(playerid, vehicleInfoPTD[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, vehicleInfoPTD[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, vehicleInfoPTD[playerid][4], 255);
	PlayerTextDrawSetProportional(playerid, vehicleInfoPTD[playerid][4], 1);
	PlayerTextDrawTextSize(playerid, vehicleInfoPTD[playerid][4], 640.0000, 0.0000);
}


//Sports vehicle
new PlayerText:SpeedoTD[MAX_PLAYERS][25];
//Normal EDM Vehicle
new PlayerText: SpeedoMeter_2[MAX_PLAYERS][30];
//SpeedoMeter_3
new PlayerText:SpeedoMeter_3[MAX_PLAYERS][16];
//SpeedoCheck
new PlayerText:SpeedoMeter_1[MAX_PLAYERS][5];

new Text: SpeedMeter_1G[22];

new Text: SpeedoMeter_2G[25];

CreateSpeedoGlobal()
{
    SpeedMeter_1G[0] = TextDrawCreate(473.500, 395.625, "LD_SPAC:white");
    TextDrawTextSize(SpeedMeter_1G[0], 54.000, 42.000);
    TextDrawAlignment(SpeedMeter_1G[0], 1);
    TextDrawColor(SpeedMeter_1G[0], 1566399999);
    TextDrawSetShadow(SpeedMeter_1G[0], 0);
    TextDrawSetOutline(SpeedMeter_1G[0], 0);
    TextDrawBackgroundColor(SpeedMeter_1G[0], 255);
    TextDrawFont(SpeedMeter_1G[0], 4);
    TextDrawSetProportional(SpeedMeter_1G[0], 0);

    SpeedMeter_1G[1] = TextDrawCreate(447.500, 395.562, "LD_SPAC:white");
    TextDrawTextSize(SpeedMeter_1G[1], 22.000, 42.000);
    TextDrawAlignment(SpeedMeter_1G[1], 1);
    TextDrawColor(SpeedMeter_1G[1], 1566399999);
    TextDrawSetShadow(SpeedMeter_1G[1], 0);
    TextDrawSetOutline(SpeedMeter_1G[1], 0);
    TextDrawBackgroundColor(SpeedMeter_1G[1], 255);
    TextDrawFont(SpeedMeter_1G[1], 4);
    TextDrawSetProportional(SpeedMeter_1G[1], 0);

    SpeedMeter_1G[2] = TextDrawCreate(420.704, 395.562, "LD_SPAC:white");
    TextDrawTextSize(SpeedMeter_1G[2], 22.000, 42.000);
    TextDrawAlignment(SpeedMeter_1G[2], 1);
    TextDrawColor(SpeedMeter_1G[2], 1566399999);
    TextDrawSetShadow(SpeedMeter_1G[2], 0);
    TextDrawSetOutline(SpeedMeter_1G[2], 0);
    TextDrawBackgroundColor(SpeedMeter_1G[2], 255);
    TextDrawFont(SpeedMeter_1G[2], 4);
    TextDrawSetProportional(SpeedMeter_1G[2], 0);

    SpeedMeter_1G[3] = TextDrawCreate(388.704, 385.786, "Ld_beat:chit");
    TextDrawTextSize(SpeedMeter_1G[3], 64.000, 62.118);
    TextDrawAlignment(SpeedMeter_1G[3], 1);
    TextDrawColor(SpeedMeter_1G[3], 1566399999);
    TextDrawSetShadow(SpeedMeter_1G[3], 0);
    TextDrawSetOutline(SpeedMeter_1G[3], 0);
    TextDrawBackgroundColor(SpeedMeter_1G[3], 255);
    TextDrawFont(SpeedMeter_1G[3], 4);
    TextDrawSetProportional(SpeedMeter_1G[3], 0);

    SpeedMeter_1G[4] = TextDrawCreate(473.899, 396.299, "LD_SPAC:white");
    TextDrawTextSize(SpeedMeter_1G[4], 53.000, 40.917);
    TextDrawAlignment(SpeedMeter_1G[4], 1);
    TextDrawColor(SpeedMeter_1G[4], 255);
    TextDrawSetShadow(SpeedMeter_1G[4], 0);
    TextDrawSetOutline(SpeedMeter_1G[4], 0);
    TextDrawBackgroundColor(SpeedMeter_1G[4], 255);
    TextDrawFont(SpeedMeter_1G[4], 4);
    TextDrawSetProportional(SpeedMeter_1G[4], 0);

    SpeedMeter_1G[5] = TextDrawCreate(447.700, 396.148, "LD_SPAC:white");
    TextDrawTextSize(SpeedMeter_1G[5], 21.000, 41.240);
    TextDrawAlignment(SpeedMeter_1G[5], 1);
    TextDrawColor(SpeedMeter_1G[5], 255);
    TextDrawSetShadow(SpeedMeter_1G[5], 0);
    TextDrawSetOutline(SpeedMeter_1G[5], 0);
    TextDrawBackgroundColor(SpeedMeter_1G[5], 255);
    TextDrawFont(SpeedMeter_1G[5], 4);
    TextDrawSetProportional(SpeedMeter_1G[5], 0);

    SpeedMeter_1G[6] = TextDrawCreate(421.006, 396.148, "LD_SPAC:white");
    TextDrawTextSize(SpeedMeter_1G[6], 21.000, 41.240);
    TextDrawAlignment(SpeedMeter_1G[6], 1);
    TextDrawColor(SpeedMeter_1G[6], 255);
    TextDrawSetShadow(SpeedMeter_1G[6], 0);
    TextDrawSetOutline(SpeedMeter_1G[6], 0);
    TextDrawBackgroundColor(SpeedMeter_1G[6], 255);
    TextDrawFont(SpeedMeter_1G[6], 4);
    TextDrawSetProportional(SpeedMeter_1G[6], 0);

    SpeedMeter_1G[7] = TextDrawCreate(390.506, 386.087, "Ld_beat:chit");
    TextDrawTextSize(SpeedMeter_1G[7], 61.000, 61.610);
    TextDrawAlignment(SpeedMeter_1G[7], 1);
    TextDrawColor(SpeedMeter_1G[7], 255);
    TextDrawSetShadow(SpeedMeter_1G[7], 0);
    TextDrawSetOutline(SpeedMeter_1G[7], 0);
    TextDrawBackgroundColor(SpeedMeter_1G[7], 255);
    TextDrawFont(SpeedMeter_1G[7], 4);
    TextDrawSetProportional(SpeedMeter_1G[7], 0);

    SpeedMeter_1G[8] = TextDrawCreate(438.500, 408.750, "000");
    TextDrawLetterSize(SpeedMeter_1G[8], 0.400, 1.600);
    TextDrawAlignment(SpeedMeter_1G[8], 3);
    TextDrawColor(SpeedMeter_1G[8], 1566400832);
    TextDrawSetShadow(SpeedMeter_1G[8], 0);
    TextDrawSetOutline(SpeedMeter_1G[8], 0);
    TextDrawBackgroundColor(SpeedMeter_1G[8], 255);
    TextDrawFont(SpeedMeter_1G[8], 2);
    TextDrawSetProportional(SpeedMeter_1G[8], 1);

    SpeedMeter_1G[9] = TextDrawCreate(480.500, 403.097, "ENGINE");
    TextDrawLetterSize(SpeedMeter_1G[9], 0.180, 0.851);
    TextDrawAlignment(SpeedMeter_1G[9], 1);
    TextDrawColor(SpeedMeter_1G[9], 1566399999);
    TextDrawSetShadow(SpeedMeter_1G[9], 0);
    TextDrawSetOutline(SpeedMeter_1G[9], 0);
    TextDrawBackgroundColor(SpeedMeter_1G[9], 255);
    TextDrawFont(SpeedMeter_1G[9], 2);
    TextDrawSetProportional(SpeedMeter_1G[9], 1);

    SpeedMeter_1G[10] = TextDrawCreate(480.799, 413.100, "LOCK");
    TextDrawLetterSize(SpeedMeter_1G[10], 0.180, 0.851);
    TextDrawAlignment(SpeedMeter_1G[10], 1);
    TextDrawColor(SpeedMeter_1G[10], 1566399999);
    TextDrawSetShadow(SpeedMeter_1G[10], 0);
    TextDrawSetOutline(SpeedMeter_1G[10], 0);
    TextDrawBackgroundColor(SpeedMeter_1G[10], 255);
    TextDrawFont(SpeedMeter_1G[10], 2);
    TextDrawSetProportional(SpeedMeter_1G[10], 1);

    SpeedMeter_1G[11] = TextDrawCreate(480.700, 423.401, "LIGHT");
    TextDrawLetterSize(SpeedMeter_1G[11], 0.180, 0.851);
    TextDrawAlignment(SpeedMeter_1G[11], 1);
    TextDrawColor(SpeedMeter_1G[11], 1566399999);
    TextDrawSetShadow(SpeedMeter_1G[11], 0);
    TextDrawSetOutline(SpeedMeter_1G[11], 0);
    TextDrawBackgroundColor(SpeedMeter_1G[11], 255);
    TextDrawFont(SpeedMeter_1G[11], 2);
    TextDrawSetProportional(SpeedMeter_1G[11], 1);

    SpeedMeter_1G[12] = TextDrawCreate(449.704, 404.411, "Ld_beat:chit");
    TextDrawTextSize(SpeedMeter_1G[12], 6.000, 5.000);
    TextDrawAlignment(SpeedMeter_1G[12], 1);
    TextDrawColor(SpeedMeter_1G[12], 1566399999);
    TextDrawSetShadow(SpeedMeter_1G[12], 0);
    TextDrawSetOutline(SpeedMeter_1G[12], 0);
    TextDrawBackgroundColor(SpeedMeter_1G[12], 255);
    TextDrawFont(SpeedMeter_1G[12], 4);
    TextDrawSetProportional(SpeedMeter_1G[12], 0);

    SpeedMeter_1G[13] = TextDrawCreate(458.303, 404.411, "Ld_beat:chit");
    TextDrawTextSize(SpeedMeter_1G[13], 6.000, 5.000);
    TextDrawAlignment(SpeedMeter_1G[13], 1);
    TextDrawColor(SpeedMeter_1G[13], 1566399999);
    TextDrawSetShadow(SpeedMeter_1G[13], 0);
    TextDrawSetOutline(SpeedMeter_1G[13], 0);
    TextDrawBackgroundColor(SpeedMeter_1G[13], 255);
    TextDrawFont(SpeedMeter_1G[13], 4);
    TextDrawSetProportional(SpeedMeter_1G[13], 0);

    SpeedMeter_1G[14] = TextDrawCreate(458.604, 419.213, "Ld_beat:chit");
    TextDrawTextSize(SpeedMeter_1G[14], 6.000, 5.000);
    TextDrawAlignment(SpeedMeter_1G[14], 1);
    TextDrawColor(SpeedMeter_1G[14], 1566399999);
    TextDrawSetShadow(SpeedMeter_1G[14], 0);
    TextDrawSetOutline(SpeedMeter_1G[14], 0);
    TextDrawBackgroundColor(SpeedMeter_1G[14], 255);
    TextDrawFont(SpeedMeter_1G[14], 4);
    TextDrawSetProportional(SpeedMeter_1G[14], 0);

    SpeedMeter_1G[15] = TextDrawCreate(449.906, 419.213, "Ld_beat:chit");
    TextDrawTextSize(SpeedMeter_1G[15], 6.000, 5.000);
    TextDrawAlignment(SpeedMeter_1G[15], 1);
    TextDrawColor(SpeedMeter_1G[15], 1566399999);
    TextDrawSetShadow(SpeedMeter_1G[15], 0);
    TextDrawSetOutline(SpeedMeter_1G[15], 0);
    TextDrawBackgroundColor(SpeedMeter_1G[15], 255);
    TextDrawFont(SpeedMeter_1G[15], 4);
    TextDrawSetProportional(SpeedMeter_1G[15], 0);

    SpeedMeter_1G[16] = TextDrawCreate(452.700, 405.235, "LD_SPAC:white");
    TextDrawTextSize(SpeedMeter_1G[16], 10.000, 3.078);
    TextDrawAlignment(SpeedMeter_1G[16], 1);
    TextDrawColor(SpeedMeter_1G[16], 1566399999);
    TextDrawSetShadow(SpeedMeter_1G[16], 0);
    TextDrawSetOutline(SpeedMeter_1G[16], 0);
    TextDrawBackgroundColor(SpeedMeter_1G[16], 255);
    TextDrawFont(SpeedMeter_1G[16], 4);
    TextDrawSetProportional(SpeedMeter_1G[16], 0);

    SpeedMeter_1G[17] = TextDrawCreate(450.799, 406.337, "LD_SPAC:white");
    TextDrawTextSize(SpeedMeter_1G[17], 3.838, 15.159);
    TextDrawAlignment(SpeedMeter_1G[17], 1);
    TextDrawColor(SpeedMeter_1G[17], 1566399999);
    TextDrawSetShadow(SpeedMeter_1G[17], 0);
    TextDrawSetOutline(SpeedMeter_1G[17], 0);
    TextDrawBackgroundColor(SpeedMeter_1G[17], 255);
    TextDrawFont(SpeedMeter_1G[17], 4);
    TextDrawSetProportional(SpeedMeter_1G[17], 0);

    SpeedMeter_1G[18] = TextDrawCreate(452.700, 420.238, "LD_SPAC:white");
    TextDrawTextSize(SpeedMeter_1G[18], 10.000, 3.078);
    TextDrawAlignment(SpeedMeter_1G[18], 1);
    TextDrawColor(SpeedMeter_1G[18], 1566399999);
    TextDrawSetShadow(SpeedMeter_1G[18], 0);
    TextDrawSetOutline(SpeedMeter_1G[18], 0);
    TextDrawBackgroundColor(SpeedMeter_1G[18], 255);
    TextDrawFont(SpeedMeter_1G[18], 4);
    TextDrawSetProportional(SpeedMeter_1G[18], 0);

    SpeedMeter_1G[19] = TextDrawCreate(459.796, 406.337, "LD_SPAC:white");
    TextDrawTextSize(SpeedMeter_1G[19], 3.569, 15.159);
    TextDrawAlignment(SpeedMeter_1G[19], 1);
    TextDrawColor(SpeedMeter_1G[19], 1566399999);
    TextDrawSetShadow(SpeedMeter_1G[19], 0);
    TextDrawSetOutline(SpeedMeter_1G[19], 0);
    TextDrawBackgroundColor(SpeedMeter_1G[19], 255);
    TextDrawFont(SpeedMeter_1G[19], 4);
    TextDrawSetProportional(SpeedMeter_1G[19], 0);

    SpeedMeter_1G[20] = TextDrawCreate(452.700, 411.337, "LD_SPAC:white");
    TextDrawTextSize(SpeedMeter_1G[20], 10.000, 10.000);
    TextDrawAlignment(SpeedMeter_1G[20], 1);
    TextDrawColor(SpeedMeter_1G[20], 1566399999);
    TextDrawSetShadow(SpeedMeter_1G[20], 0);
    TextDrawSetOutline(SpeedMeter_1G[20], 0);
    TextDrawBackgroundColor(SpeedMeter_1G[20], 255);
    TextDrawFont(SpeedMeter_1G[20], 4);
    TextDrawSetProportional(SpeedMeter_1G[20], 0);

    SpeedMeter_1G[21] = TextDrawCreate(460.500, 407.286, "S");
    TextDrawLetterSize(SpeedMeter_1G[21], 0.400, 1.600);
    TextDrawAlignment(SpeedMeter_1G[21], 1);
    TextDrawColor(SpeedMeter_1G[21], 1566399999);
    TextDrawSetShadow(SpeedMeter_1G[21], 0);
    TextDrawSetOutline(SpeedMeter_1G[21], 0);
    TextDrawBackgroundColor(SpeedMeter_1G[21], 255);
    TextDrawFont(SpeedMeter_1G[21], 1);
    TextDrawSetProportional(SpeedMeter_1G[21], 1);
    SpeedoMeter_2G[0] = TextDrawCreate(396.165, 374.665, "particle:lamp_shad_64");
    TextDrawTextSize(SpeedoMeter_2G[0], 76.000, 33.000);
    TextDrawAlignment(SpeedoMeter_2G[0], 1);
    TextDrawColor(SpeedoMeter_2G[0], 673720351);
    TextDrawSetShadow(SpeedoMeter_2G[0], 0);
    TextDrawSetOutline(SpeedoMeter_2G[0], 0);
    TextDrawBackgroundColor(SpeedoMeter_2G[0], 255);
    TextDrawFont(SpeedoMeter_2G[0], 4);
    TextDrawSetProportional(SpeedoMeter_2G[0], 0);

    SpeedoMeter_2G[1] = TextDrawCreate(454.803, 352.250, "_");
    TextDrawTextSize(SpeedoMeter_2G[1], 69.000, 51.000);
    TextDrawAlignment(SpeedoMeter_2G[1], 1);
    TextDrawColor(SpeedoMeter_2G[1], -40817153);
    TextDrawSetShadow(SpeedoMeter_2G[1], 0);
    TextDrawSetOutline(SpeedoMeter_2G[1], 0);
    TextDrawBackgroundColor(SpeedoMeter_2G[1], 0);
    TextDrawFont(SpeedoMeter_2G[1], 5);
    TextDrawSetProportional(SpeedoMeter_2G[1], 0);
    TextDrawSetPreviewModel(SpeedoMeter_2G[1], 2153);
    TextDrawSetPreviewRot(SpeedoMeter_2G[1], 0.000, -15.000, 90.000, 1.000);
    TextDrawSetPreviewVehCol(SpeedoMeter_2G[1], 0, 0);

    SpeedoMeter_2G[2] = TextDrawCreate(474.584, 389.583, "ld_beat:chit");
    TextDrawTextSize(SpeedoMeter_2G[2], 20.000, 20.000);
    TextDrawAlignment(SpeedoMeter_2G[2], 1);
    TextDrawColor(SpeedoMeter_2G[2], -40817153);
    TextDrawSetShadow(SpeedoMeter_2G[2], 0);
    TextDrawSetOutline(SpeedoMeter_2G[2], 0);
    TextDrawBackgroundColor(SpeedoMeter_2G[2], 255);
    TextDrawFont(SpeedoMeter_2G[2], 4);
    TextDrawSetProportional(SpeedoMeter_2G[2], 0);

    SpeedoMeter_2G[3] = TextDrawCreate(436.065, 348.747, "_");
    TextDrawTextSize(SpeedoMeter_2G[3], 67.000, 55.000);
    TextDrawAlignment(SpeedoMeter_2G[3], 1);
    TextDrawColor(SpeedoMeter_2G[3], -40817153);
    TextDrawSetShadow(SpeedoMeter_2G[3], 0);
    TextDrawSetOutline(SpeedoMeter_2G[3], 0);
    TextDrawBackgroundColor(SpeedoMeter_2G[3], 0);
    TextDrawFont(SpeedoMeter_2G[3], 5);
    TextDrawSetProportional(SpeedoMeter_2G[3], 0);
    TextDrawSetPreviewModel(SpeedoMeter_2G[3], 2153);
    TextDrawSetPreviewRot(SpeedoMeter_2G[3], 0.000, -15.000, 90.000, 1.000);
    TextDrawSetPreviewVehCol(SpeedoMeter_2G[3], 0, 0);

    SpeedoMeter_2G[4] = TextDrawCreate(460.433, 395.415, "LD_SPAC:white");
    TextDrawTextSize(SpeedoMeter_2G[4], 24.000, 11.000);
    TextDrawAlignment(SpeedoMeter_2G[4], 1);
    TextDrawColor(SpeedoMeter_2G[4], -40817153);
    TextDrawSetShadow(SpeedoMeter_2G[4], 0);
    TextDrawSetOutline(SpeedoMeter_2G[4], 0);
    TextDrawBackgroundColor(SpeedoMeter_2G[4], 255);
    TextDrawFont(SpeedoMeter_2G[4], 4);
    TextDrawSetProportional(SpeedoMeter_2G[4], 0);

    SpeedoMeter_2G[5] = TextDrawCreate(452.000, 390.000, "ld_beat:chit");
    TextDrawTextSize(SpeedoMeter_2G[5], 20.000, 20.000);
    TextDrawAlignment(SpeedoMeter_2G[5], 1);
    TextDrawColor(SpeedoMeter_2G[5], -40817153);
    TextDrawSetShadow(SpeedoMeter_2G[5], 0);
    TextDrawSetOutline(SpeedoMeter_2G[5], 0);
    TextDrawBackgroundColor(SpeedoMeter_2G[5], 255);
    TextDrawFont(SpeedoMeter_2G[5], 4);
    TextDrawSetProportional(SpeedoMeter_2G[5], 0);

    SpeedoMeter_2G[6] = TextDrawCreate(476.359, 349.333, "LD_SPAC:white");
    TextDrawTextSize(SpeedoMeter_2G[6], 24.000, 11.000);
    TextDrawAlignment(SpeedoMeter_2G[6], 1);
    TextDrawColor(SpeedoMeter_2G[6], -40817153);
    TextDrawSetShadow(SpeedoMeter_2G[6], 0);
    TextDrawSetOutline(SpeedoMeter_2G[6], 0);
    TextDrawBackgroundColor(SpeedoMeter_2G[6], 255);
    TextDrawFont(SpeedoMeter_2G[6], 4);
    TextDrawSetProportional(SpeedoMeter_2G[6], 0);

    SpeedoMeter_2G[7] = TextDrawCreate(466.622, 345.833, "ld_beat:chit");
    TextDrawTextSize(SpeedoMeter_2G[7], 20.000, 20.000);
    TextDrawAlignment(SpeedoMeter_2G[7], 1);
    TextDrawColor(SpeedoMeter_2G[7], -40817153);
    TextDrawSetShadow(SpeedoMeter_2G[7], 0);
    TextDrawSetOutline(SpeedoMeter_2G[7], 0);
    TextDrawBackgroundColor(SpeedoMeter_2G[7], 255);
    TextDrawFont(SpeedoMeter_2G[7], 4);
    TextDrawSetProportional(SpeedoMeter_2G[7], 0);

    SpeedoMeter_2G[8] = TextDrawCreate(473.549, 356.333, "LD_SPAC:white");
    TextDrawTextSize(SpeedoMeter_2G[8], 17.000, 44.000);
    TextDrawAlignment(SpeedoMeter_2G[8], 1);
    TextDrawColor(SpeedoMeter_2G[8], -40817153);
    TextDrawSetShadow(SpeedoMeter_2G[8], 0);
    TextDrawSetOutline(SpeedoMeter_2G[8], 0);
    TextDrawBackgroundColor(SpeedoMeter_2G[8], 255);
    TextDrawFont(SpeedoMeter_2G[8], 4);
    TextDrawSetProportional(SpeedoMeter_2G[8], 0);

    SpeedoMeter_2G[9] = TextDrawCreate(490.000, 346.549, "ld_beat:chit");
    TextDrawTextSize(SpeedoMeter_2G[9], 20.000, 20.000);
    TextDrawAlignment(SpeedoMeter_2G[9], 1);
    TextDrawColor(SpeedoMeter_2G[9], -40817153);
    TextDrawSetShadow(SpeedoMeter_2G[9], 0);
    TextDrawSetOutline(SpeedoMeter_2G[9], 0);
    TextDrawBackgroundColor(SpeedoMeter_2G[9], 255);
    TextDrawFont(SpeedoMeter_2G[9], 4);
    TextDrawSetProportional(SpeedoMeter_2G[9], 0);

    SpeedoMeter_2G[10] = TextDrawCreate(501.114, 416.083, "particle:lamp_shad_64");
    TextDrawTextSize(SpeedoMeter_2G[10], -131.000, -67.000);
    TextDrawAlignment(SpeedoMeter_2G[10], 1);
    TextDrawColor(SpeedoMeter_2G[10], 673720436);
    TextDrawSetShadow(SpeedoMeter_2G[10], 0);
    TextDrawSetOutline(SpeedoMeter_2G[10], 0);
    TextDrawBackgroundColor(SpeedoMeter_2G[10], 255);
    TextDrawFont(SpeedoMeter_2G[10], 4);
    TextDrawSetProportional(SpeedoMeter_2G[10], 0);

    SpeedoMeter_2G[11] = TextDrawCreate(446.006, 369.165, "ld_beat:chit");
    TextDrawTextSize(SpeedoMeter_2G[11], 15.000, 15.000);
    TextDrawAlignment(SpeedoMeter_2G[11], 1);
    TextDrawColor(SpeedoMeter_2G[11], 336860415);
    TextDrawSetShadow(SpeedoMeter_2G[11], 0);
    TextDrawSetOutline(SpeedoMeter_2G[11], 0);
    TextDrawBackgroundColor(SpeedoMeter_2G[11], 255);
    TextDrawFont(SpeedoMeter_2G[11], 4);
    TextDrawSetProportional(SpeedoMeter_2G[11], 0);

    SpeedoMeter_2G[12] = TextDrawCreate(451.058, 377.333, "_");
    TextDrawTextSize(SpeedoMeter_2G[12], 10.000, 9.000);
    TextDrawAlignment(SpeedoMeter_2G[12], 1);
    TextDrawColor(SpeedoMeter_2G[12], 336860415);
    TextDrawSetShadow(SpeedoMeter_2G[12], 0);
    TextDrawSetOutline(SpeedoMeter_2G[12], 0);
    TextDrawBackgroundColor(SpeedoMeter_2G[12], 336860160);
    TextDrawFont(SpeedoMeter_2G[12], 5);
    TextDrawSetProportional(SpeedoMeter_2G[12], 0);
    TextDrawSetPreviewModel(SpeedoMeter_2G[12], 2153);
    TextDrawSetPreviewRot(SpeedoMeter_2G[12], 0.000, -15.000, 90.000, 1.000);
    TextDrawSetPreviewVehCol(SpeedoMeter_2G[12], 0, 0);

    SpeedoMeter_2G[13] = TextDrawCreate(444.131, 376.165, "ld_beat:chit");
    TextDrawTextSize(SpeedoMeter_2G[13], 15.000, 15.000);
    TextDrawAlignment(SpeedoMeter_2G[13], 1);
    TextDrawColor(SpeedoMeter_2G[13], 336860415);
    TextDrawSetShadow(SpeedoMeter_2G[13], 0);
    TextDrawSetOutline(SpeedoMeter_2G[13], 0);
    TextDrawBackgroundColor(SpeedoMeter_2G[13], 255);
    TextDrawFont(SpeedoMeter_2G[13], 4);
    TextDrawSetProportional(SpeedoMeter_2G[13], 0);

    SpeedoMeter_2G[14] = TextDrawCreate(393.433, 371.500, "LD_SPAC:white");
    TextDrawTextSize(SpeedoMeter_2G[14], 59.000, 17.500);
    TextDrawAlignment(SpeedoMeter_2G[14], 1);
    TextDrawColor(SpeedoMeter_2G[14], 336860415);
    TextDrawSetShadow(SpeedoMeter_2G[14], 0);
    TextDrawSetOutline(SpeedoMeter_2G[14], 0);
    TextDrawBackgroundColor(SpeedoMeter_2G[14], 255);
    TextDrawFont(SpeedoMeter_2G[14], 4);
    TextDrawSetProportional(SpeedoMeter_2G[14], 0);

    SpeedoMeter_2G[15] = TextDrawCreate(387.441, 369.165, "ld_beat:chit");
    TextDrawTextSize(SpeedoMeter_2G[15], 15.000, 15.000);
    TextDrawAlignment(SpeedoMeter_2G[15], 1);
    TextDrawColor(SpeedoMeter_2G[15], 336860415);
    TextDrawSetShadow(SpeedoMeter_2G[15], 0);
    TextDrawSetOutline(SpeedoMeter_2G[15], 0);
    TextDrawBackgroundColor(SpeedoMeter_2G[15], 255);
    TextDrawFont(SpeedoMeter_2G[15], 4);
    TextDrawSetProportional(SpeedoMeter_2G[15], 0);

    SpeedoMeter_2G[16] = TextDrawCreate(395.303, 383.165, "_");
    TextDrawTextSize(SpeedoMeter_2G[16], -10.000, -9.000);
    TextDrawAlignment(SpeedoMeter_2G[16], 1);
    TextDrawColor(SpeedoMeter_2G[16], 336860415);
    TextDrawSetShadow(SpeedoMeter_2G[16], 0);
    TextDrawSetOutline(SpeedoMeter_2G[16], 0);
    TextDrawBackgroundColor(SpeedoMeter_2G[16], 336860160);
    TextDrawFont(SpeedoMeter_2G[16], 5);
    TextDrawSetProportional(SpeedoMeter_2G[16], 0);
    TextDrawSetPreviewModel(SpeedoMeter_2G[16], 2153);
    TextDrawSetPreviewRot(SpeedoMeter_2G[16], 0.000, -15.000, 90.000, 1.000);
    TextDrawSetPreviewVehCol(SpeedoMeter_2G[16], 0, 0);

    SpeedoMeter_2G[17] = TextDrawCreate(385.096, 376.165, "ld_beat:chit");
    TextDrawTextSize(SpeedoMeter_2G[17], 15.000, 15.000);
    TextDrawAlignment(SpeedoMeter_2G[17], 1);
    TextDrawColor(SpeedoMeter_2G[17], 336860415);
    TextDrawSetShadow(SpeedoMeter_2G[17], 0);
    TextDrawSetOutline(SpeedoMeter_2G[17], 0);
    TextDrawBackgroundColor(SpeedoMeter_2G[17], 255);
    TextDrawFont(SpeedoMeter_2G[17], 4);
    TextDrawSetProportional(SpeedoMeter_2G[17], 0);

    SpeedoMeter_2G[18] = TextDrawCreate(394.001, 382.000, "_");
    TextDrawTextSize(SpeedoMeter_2G[18], 57.000, 3.000);
    TextDrawAlignment(SpeedoMeter_2G[18], 1);
    TextDrawColor(SpeedoMeter_2G[18], -7601921);
    TextDrawSetShadow(SpeedoMeter_2G[18], 0);
    TextDrawSetOutline(SpeedoMeter_2G[18], 0);
    TextDrawBackgroundColor(SpeedoMeter_2G[18], 255);
    TextDrawFont(SpeedoMeter_2G[18], 4);
    TextDrawSetProportional(SpeedoMeter_2G[18], 0);

    SpeedoMeter_2G[19] = TextDrawCreate(395.000, 384.000, "_");
    TextDrawLetterSize(SpeedoMeter_2G[19], 3.479, -0.200);
    TextDrawTextSize(SpeedoMeter_2G[19], 451.000, 3.000);
    TextDrawAlignment(SpeedoMeter_2G[19], 1);
    TextDrawColor(SpeedoMeter_2G[19], -1);
    TextDrawUseBox(SpeedoMeter_2G[19], 1);
    TextDrawBoxColor(SpeedoMeter_2G[19], -1);
    TextDrawSetShadow(SpeedoMeter_2G[19], 1);
    TextDrawSetOutline(SpeedoMeter_2G[19], 1);
    TextDrawBackgroundColor(SpeedoMeter_2G[19], 150);
    TextDrawFont(SpeedoMeter_2G[19], 2);
    TextDrawSetProportional(SpeedoMeter_2G[19], 1);

    SpeedoMeter_2G[20] = TextDrawCreate(452.000, 389.500, "ld_beat:chit");
    TextDrawTextSize(SpeedoMeter_2G[20], 20.000, 20.500);
    TextDrawAlignment(SpeedoMeter_2G[20], 1);
    TextDrawColor(SpeedoMeter_2G[20], 336860415);
    TextDrawSetShadow(SpeedoMeter_2G[20], 0);
    TextDrawSetOutline(SpeedoMeter_2G[20], 0);
    TextDrawBackgroundColor(SpeedoMeter_2G[20], 255);
    TextDrawFont(SpeedoMeter_2G[20], 4);
    TextDrawSetProportional(SpeedoMeter_2G[20], 0);

    SpeedoMeter_2G[21] = TextDrawCreate(465.000, 394.000, "KM/H");
    TextDrawLetterSize(SpeedoMeter_2G[21], 0.128, 1.156);
    TextDrawAlignment(SpeedoMeter_2G[21], 1);
    TextDrawColor(SpeedoMeter_2G[21], -1);
    TextDrawSetShadow(SpeedoMeter_2G[21], 0);
    TextDrawSetOutline(SpeedoMeter_2G[21], 0);
    TextDrawBackgroundColor(SpeedoMeter_2G[21], 255);
    TextDrawFont(SpeedoMeter_2G[21], 2);
    TextDrawSetProportional(SpeedoMeter_2G[21], 1);

    SpeedoMeter_2G[22] = TextDrawCreate(474.584, 389.583, "ld_beat:chit");
    TextDrawTextSize(SpeedoMeter_2G[22], 20.000, 20.000);
    TextDrawAlignment(SpeedoMeter_2G[22], 1);
    TextDrawColor(SpeedoMeter_2G[22], 336860415);
    TextDrawSetShadow(SpeedoMeter_2G[22], 0);
    TextDrawSetOutline(SpeedoMeter_2G[22], 0);
    TextDrawBackgroundColor(SpeedoMeter_2G[22], 255);
    TextDrawFont(SpeedoMeter_2G[22], 4);
    TextDrawSetProportional(SpeedoMeter_2G[22], 0);

    SpeedoMeter_2G[23] = TextDrawCreate(461.467, 393.083, "ld_spac:white");
    TextDrawTextSize(SpeedoMeter_2G[23], 23.000, 13.500);
    TextDrawAlignment(SpeedoMeter_2G[23], 1);
    TextDrawColor(SpeedoMeter_2G[23], 336860415);
    TextDrawSetShadow(SpeedoMeter_2G[23], 0);
    TextDrawSetOutline(SpeedoMeter_2G[23], 0);
    TextDrawBackgroundColor(SpeedoMeter_2G[23], 255);
    TextDrawFont(SpeedoMeter_2G[23], 4);
    TextDrawSetProportional(SpeedoMeter_2G[23], 0);

    SpeedoMeter_2G[24] = TextDrawCreate(395.000, 384.000, "_");
    TextDrawLetterSize(SpeedoMeter_2G[24], 3.479, -0.200);
    TextDrawTextSize(SpeedoMeter_2G[24], 451.000, 3.000);
    TextDrawAlignment(SpeedoMeter_2G[24], 1);
    TextDrawColor(SpeedoMeter_2G[24], -1);
    TextDrawUseBox(SpeedoMeter_2G[24], 1);
    TextDrawBoxColor(SpeedoMeter_2G[24], -7601921);
    TextDrawSetShadow(SpeedoMeter_2G[24], 1);
    TextDrawSetOutline(SpeedoMeter_2G[24], 1);
    TextDrawBackgroundColor(SpeedoMeter_2G[24], 150);
    TextDrawFont(SpeedoMeter_2G[24], 2);
    TextDrawSetProportional(SpeedoMeter_2G[24], 1);     
}

CreateSpeedoTD(playerid)
{
	//Speedo Meters 

	cWspeedo[playerid][0] = CreatePlayerTextDraw(playerid, 525.111389, 394.088836, "box");
	PlayerTextDrawLetterSize(playerid, cWspeedo[playerid][0], 0.000000, -0.044444);
	PlayerTextDrawTextSize(playerid, cWspeedo[playerid][0], 623.000000, 0.000000);
	PlayerTextDrawAlignment(playerid, cWspeedo[playerid][0], 1);
	PlayerTextDrawColor(playerid, cWspeedo[playerid][0], -1);
	PlayerTextDrawUseBox(playerid, cWspeedo[playerid][0], 1);
	PlayerTextDrawBoxColor(playerid, cWspeedo[playerid][0], 0x000000AA);
	PlayerTextDrawSetShadow(playerid, cWspeedo[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, cWspeedo[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, cWspeedo[playerid][0], 255);
	PlayerTextDrawFont(playerid, cWspeedo[playerid][0], 1);
	PlayerTextDrawSetProportional(playerid, cWspeedo[playerid][0], 1);
	PlayerTextDrawSetShadow(playerid, cWspeedo[playerid][0], 0);

	cWspeedo[playerid][1] = CreatePlayerTextDraw(playerid, 565.889099, 341.168945, "");
	PlayerTextDrawLetterSize(playerid, cWspeedo[playerid][1], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, cWspeedo[playerid][1], 60.000000, 73.000000);
	PlayerTextDrawAlignment(playerid, cWspeedo[playerid][1], 1);
	PlayerTextDrawColor(playerid, cWspeedo[playerid][1], -1);
	PlayerTextDrawSetShadow(playerid, cWspeedo[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, cWspeedo[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, cWspeedo[playerid][1], 0);
	PlayerTextDrawFont(playerid, cWspeedo[playerid][1], 5);
	PlayerTextDrawSetProportional(playerid, cWspeedo[playerid][1], 0);
	PlayerTextDrawSetShadow(playerid, cWspeedo[playerid][1], 0);
	PlayerTextDrawSetPreviewModel(playerid, cWspeedo[playerid][1], 411);
	PlayerTextDrawSetPreviewRot(playerid, cWspeedo[playerid][1], 0.000000, 0.000000, -30.000000, 1.000000);
	PlayerTextDrawSetPreviewVehCol(playerid, cWspeedo[playerid][1], 1, 1);

	cWspeedo[playerid][2] = CreatePlayerTextDraw(playerid, 524.222167, 395.582153, "220");
	PlayerTextDrawLetterSize(playerid, cWspeedo[playerid][2], 0.342222, 1.316266);
	PlayerTextDrawAlignment(playerid, cWspeedo[playerid][2], 1);
	PlayerTextDrawColor(playerid, cWspeedo[playerid][2], -1);
	PlayerTextDrawSetShadow(playerid, cWspeedo[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, cWspeedo[playerid][2], 1);
	PlayerTextDrawBackgroundColor(playerid, cWspeedo[playerid][2], 255);
	PlayerTextDrawFont(playerid, cWspeedo[playerid][2], 3);
	PlayerTextDrawSetProportional(playerid, cWspeedo[playerid][2], 1);
	PlayerTextDrawSetShadow(playerid, cWspeedo[playerid][2], 0);

	cWspeedo[playerid][3] = CreatePlayerTextDraw(playerid, 523.777770, 382.142395, "infernus");
	PlayerTextDrawLetterSize(playerid, cWspeedo[playerid][3], 0.172888, 0.903111);
	PlayerTextDrawAlignment(playerid, cWspeedo[playerid][3], 1);
	PlayerTextDrawColor(playerid, cWspeedo[playerid][3], -1);
	PlayerTextDrawSetShadow(playerid, cWspeedo[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, cWspeedo[playerid][3], 1);
	PlayerTextDrawBackgroundColor(playerid, cWspeedo[playerid][3], 255);
	PlayerTextDrawFont(playerid, cWspeedo[playerid][3], 2);
	PlayerTextDrawSetProportional(playerid, cWspeedo[playerid][3], 1);
	PlayerTextDrawSetShadow(playerid, cWspeedo[playerid][3], 0);

	cWspeedo[playerid][4] = CreatePlayerTextDraw(playerid, 526.000244, 408.026733, "KM/H");
	PlayerTextDrawLetterSize(playerid, cWspeedo[playerid][4], 0.175555, 0.669155);
	PlayerTextDrawAlignment(playerid, cWspeedo[playerid][4], 1);
	PlayerTextDrawColor(playerid, cWspeedo[playerid][4], -1378294017);
	PlayerTextDrawSetShadow(playerid, cWspeedo[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, cWspeedo[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, cWspeedo[playerid][4], 255);
	PlayerTextDrawFont(playerid, cWspeedo[playerid][4], 1);
	PlayerTextDrawSetProportional(playerid, cWspeedo[playerid][4], 1);
	PlayerTextDrawSetShadow(playerid, cWspeedo[playerid][4], 0);

	cWspeedo[playerid][5] = CreatePlayerTextDraw(playerid, 572.933105, 396.080047, "100");
	PlayerTextDrawLetterSize(playerid, cWspeedo[playerid][5], 0.301333, 1.171911);
	PlayerTextDrawAlignment(playerid, cWspeedo[playerid][5], 2);
	PlayerTextDrawColor(playerid, cWspeedo[playerid][5], -1);
	PlayerTextDrawSetShadow(playerid, cWspeedo[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, cWspeedo[playerid][5], 1);
	PlayerTextDrawBackgroundColor(playerid, cWspeedo[playerid][5], 255);
	PlayerTextDrawFont(playerid, cWspeedo[playerid][5], 3);
	PlayerTextDrawSetProportional(playerid, cWspeedo[playerid][5], 1);
	PlayerTextDrawSetShadow(playerid, cWspeedo[playerid][5], 0);

	cWspeedo[playerid][6] = CreatePlayerTextDraw(playerid, 572.509460, 407.528869, "FUEL");
	PlayerTextDrawLetterSize(playerid, cWspeedo[playerid][6], 0.151111, 0.689067);
	PlayerTextDrawAlignment(playerid, cWspeedo[playerid][6], 2);
	PlayerTextDrawColor(playerid, cWspeedo[playerid][6], -1378294017);
	PlayerTextDrawSetShadow(playerid, cWspeedo[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, cWspeedo[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, cWspeedo[playerid][6], 255);
	PlayerTextDrawFont(playerid, cWspeedo[playerid][6], 1);
	PlayerTextDrawSetProportional(playerid, cWspeedo[playerid][6], 1);
	PlayerTextDrawSetShadow(playerid, cWspeedo[playerid][6], 0);

	cWspeedo[playerid][7] = CreatePlayerTextDraw(playerid, 621.111633, 396.080108, "999.0");
	PlayerTextDrawLetterSize(playerid, cWspeedo[playerid][7], 0.231555, 1.052444);
	PlayerTextDrawAlignment(playerid, cWspeedo[playerid][7], 3);
	PlayerTextDrawColor(playerid, cWspeedo[playerid][7], -1);
	PlayerTextDrawSetShadow(playerid, cWspeedo[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, cWspeedo[playerid][7], 1);
	PlayerTextDrawBackgroundColor(playerid, cWspeedo[playerid][7], 255);
	PlayerTextDrawFont(playerid, cWspeedo[playerid][7], 3);
	PlayerTextDrawSetProportional(playerid, cWspeedo[playerid][7], 1);
	PlayerTextDrawSetShadow(playerid, cWspeedo[playerid][7], 0);

	cWspeedo[playerid][8] = CreatePlayerTextDraw(playerid, 618.444335, 406.533325, "HEALTH");
	PlayerTextDrawLetterSize(playerid, cWspeedo[playerid][8], 0.145778, 0.699022);
	PlayerTextDrawAlignment(playerid, cWspeedo[playerid][8], 3);
	PlayerTextDrawColor(playerid, cWspeedo[playerid][8], -1378294017);
	PlayerTextDrawSetShadow(playerid, cWspeedo[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, cWspeedo[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, cWspeedo[playerid][8], 255);
	PlayerTextDrawFont(playerid, cWspeedo[playerid][8], 1);
	PlayerTextDrawSetProportional(playerid, cWspeedo[playerid][8], 1);
	PlayerTextDrawSetShadow(playerid, cWspeedo[playerid][8], 0);

	SpeedoMeter_1[playerid][0] = CreatePlayerTextDraw(playerid, 438.500, 408.750, "79");
    PlayerTextDrawLetterSize(playerid, SpeedoMeter_1[playerid][0], 0.400, 1.600);
    PlayerTextDrawAlignment(playerid, SpeedoMeter_1[playerid][0], 3);
    PlayerTextDrawColor(playerid, SpeedoMeter_1[playerid][0], 1566399999);
    PlayerTextDrawSetShadow(playerid, SpeedoMeter_1[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, SpeedoMeter_1[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, SpeedoMeter_1[playerid][0], 255);
    PlayerTextDrawFont(playerid, SpeedoMeter_1[playerid][0], 2);
    PlayerTextDrawSetProportional(playerid, SpeedoMeter_1[playerid][0], 1);

    SpeedoMeter_1[playerid][1] = CreatePlayerTextDraw(playerid, 519.806, 404.286, "Ld_beat:chit");
    PlayerTextDrawTextSize(playerid, SpeedoMeter_1[playerid][1], -7.000, 7.000);
    PlayerTextDrawAlignment(playerid, SpeedoMeter_1[playerid][1], 1);
    PlayerTextDrawColor(playerid, SpeedoMeter_1[playerid][1], 5391615);
    PlayerTextDrawSetShadow(playerid, SpeedoMeter_1[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, SpeedoMeter_1[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, SpeedoMeter_1[playerid][1], 255);
    PlayerTextDrawFont(playerid, SpeedoMeter_1[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, SpeedoMeter_1[playerid][1], 0);

    SpeedoMeter_1[playerid][2] = CreatePlayerTextDraw(playerid, 519.806, 414.388, "Ld_beat:chit");
    PlayerTextDrawTextSize(playerid, SpeedoMeter_1[playerid][2], -7.000, 7.000);
    PlayerTextDrawAlignment(playerid, SpeedoMeter_1[playerid][2], 1);
    PlayerTextDrawColor(playerid, SpeedoMeter_1[playerid][2], 5391615);
    PlayerTextDrawSetShadow(playerid, SpeedoMeter_1[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, SpeedoMeter_1[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, SpeedoMeter_1[playerid][2], 255);
    PlayerTextDrawFont(playerid, SpeedoMeter_1[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, SpeedoMeter_1[playerid][2], 0);

    SpeedoMeter_1[playerid][3] = CreatePlayerTextDraw(playerid, 519.806, 424.088, "Ld_beat:chit");
    PlayerTextDrawTextSize(playerid, SpeedoMeter_1[playerid][3], -7.000, 7.000);
    PlayerTextDrawAlignment(playerid, SpeedoMeter_1[playerid][3], 1);
    PlayerTextDrawColor(playerid, SpeedoMeter_1[playerid][3], 1828716799);
    PlayerTextDrawSetShadow(playerid, SpeedoMeter_1[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, SpeedoMeter_1[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, SpeedoMeter_1[playerid][3], 255);
    PlayerTextDrawFont(playerid, SpeedoMeter_1[playerid][3], 4);
    PlayerTextDrawSetProportional(playerid, SpeedoMeter_1[playerid][3], 0);

    SpeedoMeter_1[playerid][4] = CreatePlayerTextDraw(playerid, 458.799, 427.299, "27%");
    PlayerTextDrawLetterSize(playerid, SpeedoMeter_1[playerid][4], 0.140, 0.865);
    PlayerTextDrawAlignment(playerid, SpeedoMeter_1[playerid][4], 2);
    PlayerTextDrawColor(playerid, SpeedoMeter_1[playerid][4], 1566399999);
    PlayerTextDrawSetShadow(playerid, SpeedoMeter_1[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, SpeedoMeter_1[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, SpeedoMeter_1[playerid][4], 255);
    PlayerTextDrawFont(playerid, SpeedoMeter_1[playerid][4], 2);
    PlayerTextDrawSetProportional(playerid, SpeedoMeter_1[playerid][4], 1);

    SpeedoMeter_2[playerid][0] = CreatePlayerTextDraw(playerid, 411.971, 370.915, "FILL_146");
    PlayerTextDrawLetterSize(playerid, SpeedoMeter_2[playerid][0], 0.115, 1.080);
    PlayerTextDrawAlignment(playerid, SpeedoMeter_2[playerid][0], 1);
    PlayerTextDrawColor(playerid, SpeedoMeter_2[playerid][0], -1);
    PlayerTextDrawSetShadow(playerid, SpeedoMeter_2[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, SpeedoMeter_2[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, SpeedoMeter_2[playerid][0], 255);
    PlayerTextDrawFont(playerid, SpeedoMeter_2[playerid][0], 2);
    PlayerTextDrawSetProportional(playerid, SpeedoMeter_2[playerid][0], 1);

    SpeedoMeter_2[playerid][1] = CreatePlayerTextDraw(playerid, 392.000, 354.000, "LOCK");
    PlayerTextDrawLetterSize(playerid, SpeedoMeter_2[playerid][1], 0.180, 1.190);
    PlayerTextDrawAlignment(playerid, SpeedoMeter_2[playerid][1], 1);
    PlayerTextDrawColor(playerid, SpeedoMeter_2[playerid][1], -459199745);
    PlayerTextDrawSetShadow(playerid, SpeedoMeter_2[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, SpeedoMeter_2[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, SpeedoMeter_2[playerid][1], 255);
    PlayerTextDrawFont(playerid, SpeedoMeter_2[playerid][1], 1);
    PlayerTextDrawSetProportional(playerid, SpeedoMeter_2[playerid][1], 1);

    SpeedoMeter_2[playerid][2] = CreatePlayerTextDraw(playerid, 414.000, 354.000, "ENGINE");
    PlayerTextDrawLetterSize(playerid, SpeedoMeter_2[playerid][2], 0.180, 1.190);
    PlayerTextDrawAlignment(playerid, SpeedoMeter_2[playerid][2], 1);
    PlayerTextDrawColor(playerid, SpeedoMeter_2[playerid][2], -1);
    PlayerTextDrawSetShadow(playerid, SpeedoMeter_2[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, SpeedoMeter_2[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, SpeedoMeter_2[playerid][2], 255);
    PlayerTextDrawFont(playerid, SpeedoMeter_2[playerid][2], 1);
    PlayerTextDrawSetProportional(playerid, SpeedoMeter_2[playerid][2], 1);

    SpeedoMeter_2[playerid][3] = CreatePlayerTextDraw(playerid, 442.000, 354.000, "LIGHT");
    PlayerTextDrawLetterSize(playerid, SpeedoMeter_2[playerid][3], 0.180, 1.190);
    PlayerTextDrawAlignment(playerid, SpeedoMeter_2[playerid][3], 1);
    PlayerTextDrawColor(playerid, SpeedoMeter_2[playerid][3], -1);
    PlayerTextDrawSetShadow(playerid, SpeedoMeter_2[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, SpeedoMeter_2[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, SpeedoMeter_2[playerid][3], 255);
    PlayerTextDrawFont(playerid, SpeedoMeter_2[playerid][3], 1);
    PlayerTextDrawSetProportional(playerid, SpeedoMeter_2[playerid][3], 1);

    SpeedoMeter_2[playerid][4] = CreatePlayerTextDraw(playerid, 473.000, 367.000, "255");
    PlayerTextDrawLetterSize(playerid, SpeedoMeter_2[playerid][4], 0.273, 1.500);
    PlayerTextDrawTextSize(playerid, SpeedoMeter_2[playerid][4], -22.000, 0.000);
    PlayerTextDrawAlignment(playerid, SpeedoMeter_2[playerid][4], 1);
    PlayerTextDrawColor(playerid, SpeedoMeter_2[playerid][4], -1);
    PlayerTextDrawSetShadow(playerid, SpeedoMeter_2[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, SpeedoMeter_2[playerid][4], 1);
    PlayerTextDrawBackgroundColor(playerid, SpeedoMeter_2[playerid][4], 134);
    PlayerTextDrawFont(playerid, SpeedoMeter_2[playerid][4], 3);
    PlayerTextDrawSetProportional(playerid, SpeedoMeter_2[playerid][4], 1);

	SpeedoMeter_3[playerid][0] = CreatePlayerTextDraw(playerid, 238.666, 369.864, "usebox");
	PlayerTextDrawLetterSize(playerid, SpeedoMeter_3[playerid][0], 0.000, 5.759);
	PlayerTextDrawTextSize(playerid, SpeedoMeter_3[playerid][0], 375.444, 0.000);
	PlayerTextDrawAlignment(playerid, SpeedoMeter_3[playerid][0], 1);
	PlayerTextDrawColor(playerid, SpeedoMeter_3[playerid][0], 0);
	PlayerTextDrawUseBox(playerid, SpeedoMeter_3[playerid][0], 1);
	PlayerTextDrawBoxColor(playerid, SpeedoMeter_3[playerid][0], 471604424);
	PlayerTextDrawSetShadow(playerid, SpeedoMeter_3[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, SpeedoMeter_3[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, SpeedoMeter_3[playerid][0], 0);
	PlayerTextDrawFont(playerid, SpeedoMeter_3[playerid][0], 0);
	PlayerTextDrawSetProportional(playerid, SpeedoMeter_3[playerid][0], 0);

	SpeedoMeter_3[playerid][1] = CreatePlayerTextDraw(playerid, 238.666, 369.864, "usebox");
	PlayerTextDrawLetterSize(playerid, SpeedoMeter_3[playerid][1], 0.000, -0.095);
	PlayerTextDrawTextSize(playerid, SpeedoMeter_3[playerid][1], 375.444, 0.000);
	PlayerTextDrawAlignment(playerid, SpeedoMeter_3[playerid][1], 1);
	PlayerTextDrawColor(playerid, SpeedoMeter_3[playerid][1], 0);
	PlayerTextDrawUseBox(playerid, SpeedoMeter_3[playerid][1], 1);
	PlayerTextDrawBoxColor(playerid, SpeedoMeter_3[playerid][1], 1414196223);
	PlayerTextDrawSetShadow(playerid, SpeedoMeter_3[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, SpeedoMeter_3[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, SpeedoMeter_3[playerid][1], 0);
	PlayerTextDrawFont(playerid, SpeedoMeter_3[playerid][1], 0);
	PlayerTextDrawSetProportional(playerid, SpeedoMeter_3[playerid][1], 0);

	SpeedoMeter_3[playerid][2] = CreatePlayerTextDraw(playerid, 243.999, 377.822, "hud:radar_girlfriend");
	PlayerTextDrawTextSize(playerid, SpeedoMeter_3[playerid][2], 9.777, 9.955);
	PlayerTextDrawAlignment(playerid, SpeedoMeter_3[playerid][2], 1);
	PlayerTextDrawColor(playerid, SpeedoMeter_3[playerid][2], -1);
	PlayerTextDrawSetShadow(playerid, SpeedoMeter_3[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, SpeedoMeter_3[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, SpeedoMeter_3[playerid][2], 0);
	PlayerTextDrawFont(playerid, SpeedoMeter_3[playerid][2], 4);
	PlayerTextDrawSetProportional(playerid, SpeedoMeter_3[playerid][2], 0);

	SpeedoMeter_3[playerid][3] = CreatePlayerTextDraw(playerid, 243.666, 391.266, "hud:radar_impound");
	PlayerTextDrawTextSize(playerid, SpeedoMeter_3[playerid][3], 10.222, 11.946);
	PlayerTextDrawAlignment(playerid, SpeedoMeter_3[playerid][3], 1);
	PlayerTextDrawColor(playerid, SpeedoMeter_3[playerid][3], -1);
	PlayerTextDrawSetShadow(playerid, SpeedoMeter_3[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, SpeedoMeter_3[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, SpeedoMeter_3[playerid][3], 0);
	PlayerTextDrawFont(playerid, SpeedoMeter_3[playerid][3], 4);
	PlayerTextDrawSetProportional(playerid, SpeedoMeter_3[playerid][3], 0);

	SpeedoMeter_3[playerid][4] = CreatePlayerTextDraw(playerid, 243.333, 409.688, "hud:radar_centre");
	PlayerTextDrawTextSize(playerid, SpeedoMeter_3[playerid][4], 10.666, 10.951);
	PlayerTextDrawAlignment(playerid, SpeedoMeter_3[playerid][4], 1);
	PlayerTextDrawColor(playerid, SpeedoMeter_3[playerid][4], -1);
	PlayerTextDrawSetShadow(playerid, SpeedoMeter_3[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, SpeedoMeter_3[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, SpeedoMeter_3[playerid][4], 0);
	PlayerTextDrawFont(playerid, SpeedoMeter_3[playerid][4], 4);
	PlayerTextDrawSetProportional(playerid, SpeedoMeter_3[playerid][4], 0);

	SpeedoMeter_3[playerid][5] = CreatePlayerTextDraw(playerid, 258.555, 376.342, "1000 hp");
	PlayerTextDrawLetterSize(playerid, SpeedoMeter_3[playerid][5], 0.191, 1.216);
	PlayerTextDrawAlignment(playerid, SpeedoMeter_3[playerid][5], 1);
	PlayerTextDrawColor(playerid, SpeedoMeter_3[playerid][5], -1);
	PlayerTextDrawSetShadow(playerid, SpeedoMeter_3[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, SpeedoMeter_3[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, SpeedoMeter_3[playerid][5], 51);
	PlayerTextDrawFont(playerid, SpeedoMeter_3[playerid][5], 2);
	PlayerTextDrawSetProportional(playerid, SpeedoMeter_3[playerid][5], 1);

	SpeedoMeter_3[playerid][6] = CreatePlayerTextDraw(playerid, 343.888, 376.840, "120");
	PlayerTextDrawLetterSize(playerid, SpeedoMeter_3[playerid][6], 0.495, 3.013);
	PlayerTextDrawAlignment(playerid, SpeedoMeter_3[playerid][6], 1);
	PlayerTextDrawColor(playerid, SpeedoMeter_3[playerid][6], -1);
	PlayerTextDrawSetShadow(playerid, SpeedoMeter_3[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, SpeedoMeter_3[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, SpeedoMeter_3[playerid][6], 51);
	PlayerTextDrawFont(playerid, SpeedoMeter_3[playerid][6], 2);
	PlayerTextDrawSetProportional(playerid, SpeedoMeter_3[playerid][6], 1);

	SpeedoMeter_3[playerid][7] = CreatePlayerTextDraw(playerid, 258.444, 392.266, "9999 km");
	PlayerTextDrawLetterSize(playerid, SpeedoMeter_3[playerid][7], 0.191, 1.216);
	PlayerTextDrawAlignment(playerid, SpeedoMeter_3[playerid][7], 1);
	PlayerTextDrawColor(playerid, SpeedoMeter_3[playerid][7], -1);
	PlayerTextDrawSetShadow(playerid, SpeedoMeter_3[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, SpeedoMeter_3[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, SpeedoMeter_3[playerid][7], 51);
	PlayerTextDrawFont(playerid, SpeedoMeter_3[playerid][7], 2);
	PlayerTextDrawSetProportional(playerid, SpeedoMeter_3[playerid][7], 1);

	SpeedoMeter_3[playerid][8] = CreatePlayerTextDraw(playerid, 259.333, 408.693, "79 %");
	PlayerTextDrawLetterSize(playerid, SpeedoMeter_3[playerid][8], 0.191, 1.216);
	PlayerTextDrawAlignment(playerid, SpeedoMeter_3[playerid][8], 1);
	PlayerTextDrawColor(playerid, SpeedoMeter_3[playerid][8], -1);
	PlayerTextDrawSetShadow(playerid, SpeedoMeter_3[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, SpeedoMeter_3[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, SpeedoMeter_3[playerid][8], 51);
	PlayerTextDrawFont(playerid, SpeedoMeter_3[playerid][8], 2);
	PlayerTextDrawSetProportional(playerid, SpeedoMeter_3[playerid][8], 1);

	SpeedoMeter_3[playerid][9] = CreatePlayerTextDraw(playerid, 346.222, 397.751, "KM/H");
	PlayerTextDrawLetterSize(playerid, SpeedoMeter_3[playerid][9], 0.284, 1.649);
	PlayerTextDrawAlignment(playerid, SpeedoMeter_3[playerid][9], 1);
	PlayerTextDrawColor(playerid, SpeedoMeter_3[playerid][9], 1414196223);
	PlayerTextDrawSetShadow(playerid, SpeedoMeter_3[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, SpeedoMeter_3[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, SpeedoMeter_3[playerid][9], 51);
	PlayerTextDrawFont(playerid, SpeedoMeter_3[playerid][9], 2);
	PlayerTextDrawSetProportional(playerid, SpeedoMeter_3[playerid][9], 1);

	SpeedoMeter_3[playerid][10] = CreatePlayerTextDraw(playerid, 324.888, 373.857, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, SpeedoMeter_3[playerid][10], 15.111, 17.422);
	PlayerTextDrawAlignment(playerid, SpeedoMeter_3[playerid][10], 1);
	PlayerTextDrawColor(playerid, SpeedoMeter_3[playerid][10], 780799999);
	PlayerTextDrawSetShadow(playerid, SpeedoMeter_3[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, SpeedoMeter_3[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, SpeedoMeter_3[playerid][10], 0);
	PlayerTextDrawFont(playerid, SpeedoMeter_3[playerid][10], 4);
	PlayerTextDrawSetProportional(playerid, SpeedoMeter_3[playerid][10], 0);

	SpeedoMeter_3[playerid][11] = CreatePlayerTextDraw(playerid, 324.777, 405.711, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, SpeedoMeter_3[playerid][11], 15.111, 17.422);
	PlayerTextDrawAlignment(playerid, SpeedoMeter_3[playerid][11], 1);
	PlayerTextDrawColor(playerid, SpeedoMeter_3[playerid][11], 780799999);
	PlayerTextDrawSetShadow(playerid, SpeedoMeter_3[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, SpeedoMeter_3[playerid][11], 0);
	PlayerTextDrawBackgroundColor(playerid, SpeedoMeter_3[playerid][11], 0);
	PlayerTextDrawFont(playerid, SpeedoMeter_3[playerid][11], 4);
	PlayerTextDrawSetProportional(playerid, SpeedoMeter_3[playerid][11], 0);

	SpeedoMeter_3[playerid][12] = CreatePlayerTextDraw(playerid, 303.111, 408.204, "LIGHT");
	PlayerTextDrawLetterSize(playerid, SpeedoMeter_3[playerid][12], 0.191, 1.216);
	PlayerTextDrawAlignment(playerid, SpeedoMeter_3[playerid][12], 1);
	PlayerTextDrawColor(playerid, SpeedoMeter_3[playerid][12], -2139062017);
	PlayerTextDrawSetShadow(playerid, SpeedoMeter_3[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, SpeedoMeter_3[playerid][12], 0);
	PlayerTextDrawBackgroundColor(playerid, SpeedoMeter_3[playerid][12], 51);
	PlayerTextDrawFont(playerid, SpeedoMeter_3[playerid][12], 2);
	PlayerTextDrawSetProportional(playerid, SpeedoMeter_3[playerid][12], 1);

	SpeedoMeter_3[playerid][13] = CreatePlayerTextDraw(playerid, 297.888, 376.351, "ENGINE");
	PlayerTextDrawLetterSize(playerid, SpeedoMeter_3[playerid][13], 0.191, 1.216);
	PlayerTextDrawAlignment(playerid, SpeedoMeter_3[playerid][13], 1);
	PlayerTextDrawColor(playerid, SpeedoMeter_3[playerid][13], -2139062017);
	PlayerTextDrawSetShadow(playerid, SpeedoMeter_3[playerid][13], 0);
	PlayerTextDrawSetOutline(playerid, SpeedoMeter_3[playerid][13], 0);
	PlayerTextDrawBackgroundColor(playerid, SpeedoMeter_3[playerid][13], 51);
	PlayerTextDrawFont(playerid, SpeedoMeter_3[playerid][13], 2);
	PlayerTextDrawSetProportional(playerid, SpeedoMeter_3[playerid][13], 1);

	SpeedoMeter_3[playerid][14] = CreatePlayerTextDraw(playerid, 303.333, 392.284, "door");
	PlayerTextDrawLetterSize(playerid, SpeedoMeter_3[playerid][14], 0.191, 1.216);
	PlayerTextDrawAlignment(playerid, SpeedoMeter_3[playerid][14], 1);
	PlayerTextDrawColor(playerid, SpeedoMeter_3[playerid][14], -2139062017);
	PlayerTextDrawSetShadow(playerid, SpeedoMeter_3[playerid][14], 0);
	PlayerTextDrawSetOutline(playerid, SpeedoMeter_3[playerid][14], 0);
	PlayerTextDrawBackgroundColor(playerid, SpeedoMeter_3[playerid][14], 51);
	PlayerTextDrawFont(playerid, SpeedoMeter_3[playerid][14], 2);
	PlayerTextDrawSetProportional(playerid, SpeedoMeter_3[playerid][14], 1);

	SpeedoMeter_3[playerid][15] = CreatePlayerTextDraw(playerid, 324.889, 389.786, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, SpeedoMeter_3[playerid][15], 15.111, 17.422);
	PlayerTextDrawAlignment(playerid, SpeedoMeter_3[playerid][15], 1);
	PlayerTextDrawColor(playerid, SpeedoMeter_3[playerid][15], -1523963137);
	PlayerTextDrawSetShadow(playerid, SpeedoMeter_3[playerid][15], 0);
	PlayerTextDrawSetOutline(playerid, SpeedoMeter_3[playerid][15], 0);
	PlayerTextDrawBackgroundColor(playerid, SpeedoMeter_3[playerid][15], -1523963137);
	PlayerTextDrawFont(playerid, SpeedoMeter_3[playerid][15], 4);
	PlayerTextDrawSetProportional(playerid, SpeedoMeter_3[playerid][15], 0);

	SpeedoTD[playerid][0] = CreatePlayerTextDraw(playerid, 287.000000, 391.000000, "ld_bum:blkdot");
	PlayerTextDrawFont(playerid, SpeedoTD[playerid][0], 4);
	PlayerTextDrawLetterSize(playerid, SpeedoTD[playerid][0], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, SpeedoTD[playerid][0], 85.000000, 46.500000);
	PlayerTextDrawSetOutline(playerid, SpeedoTD[playerid][0], 1);
	PlayerTextDrawSetShadow(playerid, SpeedoTD[playerid][0], 0);
	PlayerTextDrawAlignment(playerid, SpeedoTD[playerid][0], 1);
	PlayerTextDrawColor(playerid, SpeedoTD[playerid][0], 255);
	PlayerTextDrawBackgroundColor(playerid, SpeedoTD[playerid][0], 255);
	PlayerTextDrawBoxColor(playerid, SpeedoTD[playerid][0], 50);
	PlayerTextDrawUseBox(playerid, SpeedoTD[playerid][0], 0);
	PlayerTextDrawSetProportional(playerid, SpeedoTD[playerid][0], 1);
	PlayerTextDrawSetSelectable(playerid, SpeedoTD[playerid][0], 0);

	SpeedoTD[playerid][1] = CreatePlayerTextDraw(playerid, 262.000000, 391.000000, "ld_bum:blkdot");
	PlayerTextDrawFont(playerid, SpeedoTD[playerid][1], 4);
	PlayerTextDrawLetterSize(playerid, SpeedoTD[playerid][1], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, SpeedoTD[playerid][1], 22.500000, 46.000000);
	PlayerTextDrawSetOutline(playerid, SpeedoTD[playerid][1], 1);
	PlayerTextDrawSetShadow(playerid, SpeedoTD[playerid][1], 0);
	PlayerTextDrawAlignment(playerid, SpeedoTD[playerid][1], 1);
	PlayerTextDrawColor(playerid, SpeedoTD[playerid][1], 16777215);
	PlayerTextDrawBackgroundColor(playerid, SpeedoTD[playerid][1], -764862721);
	PlayerTextDrawBoxColor(playerid, SpeedoTD[playerid][1], 50);
	PlayerTextDrawUseBox(playerid, SpeedoTD[playerid][1], 0);
	PlayerTextDrawSetProportional(playerid, SpeedoTD[playerid][1], 1);
	PlayerTextDrawSetSelectable(playerid, SpeedoTD[playerid][1], 0);

	SpeedoTD[playerid][2] = CreatePlayerTextDraw(playerid, 329.000000, 404.000000, "_");
	PlayerTextDrawFont(playerid, SpeedoTD[playerid][2], 1);
	PlayerTextDrawLetterSize(playerid, SpeedoTD[playerid][2], 0.600000, 1.799995);
	PlayerTextDrawTextSize(playerid, SpeedoTD[playerid][2], 301.000000, 76.000000);
	PlayerTextDrawSetOutline(playerid, SpeedoTD[playerid][2], 1);
	PlayerTextDrawSetShadow(playerid, SpeedoTD[playerid][2], 0);
	PlayerTextDrawAlignment(playerid, SpeedoTD[playerid][2], 2);
	PlayerTextDrawColor(playerid, SpeedoTD[playerid][2], -1);
	PlayerTextDrawBackgroundColor(playerid, SpeedoTD[playerid][2], 255);
	PlayerTextDrawBoxColor(playerid, SpeedoTD[playerid][2], 1296911751);
	PlayerTextDrawUseBox(playerid, SpeedoTD[playerid][2], 1);
	PlayerTextDrawSetProportional(playerid, SpeedoTD[playerid][2], 1);
	PlayerTextDrawSetSelectable(playerid, SpeedoTD[playerid][2], 0);

	SpeedoTD[playerid][3] = CreatePlayerTextDraw(playerid, 374.000000, 401.000000, "ld_bum:blkdot");
	PlayerTextDrawFont(playerid, SpeedoTD[playerid][3], 4);
	PlayerTextDrawLetterSize(playerid, SpeedoTD[playerid][3], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, SpeedoTD[playerid][3], 32.500000, 26.500000);
	PlayerTextDrawSetOutline(playerid, SpeedoTD[playerid][3], 1);
	PlayerTextDrawSetShadow(playerid, SpeedoTD[playerid][3], 0);
	PlayerTextDrawAlignment(playerid, SpeedoTD[playerid][3], 1);
	PlayerTextDrawColor(playerid, SpeedoTD[playerid][3], 16777215);
	PlayerTextDrawBackgroundColor(playerid, SpeedoTD[playerid][3], 255);
	PlayerTextDrawBoxColor(playerid, SpeedoTD[playerid][3], 50);
	PlayerTextDrawUseBox(playerid, SpeedoTD[playerid][3], 0);
	PlayerTextDrawSetProportional(playerid, SpeedoTD[playerid][3], 1);
	PlayerTextDrawSetSelectable(playerid, SpeedoTD[playerid][3], 0);

	SpeedoTD[playerid][4] = CreatePlayerTextDraw(playerid, 374.000000, 391.000000, "ld_bum:blkdot");
	PlayerTextDrawFont(playerid, SpeedoTD[playerid][4], 4);
	PlayerTextDrawLetterSize(playerid, SpeedoTD[playerid][4], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, SpeedoTD[playerid][4], 22.500000, 46.000000);
	PlayerTextDrawSetOutline(playerid, SpeedoTD[playerid][4], 1);
	PlayerTextDrawSetShadow(playerid, SpeedoTD[playerid][4], 0);
	PlayerTextDrawAlignment(playerid, SpeedoTD[playerid][4], 1);
	PlayerTextDrawColor(playerid, SpeedoTD[playerid][4], 16777215);
	PlayerTextDrawBackgroundColor(playerid, SpeedoTD[playerid][4], -764862721);
	PlayerTextDrawBoxColor(playerid, SpeedoTD[playerid][4], 50);
	PlayerTextDrawUseBox(playerid, SpeedoTD[playerid][4], 0);
	PlayerTextDrawSetProportional(playerid, SpeedoTD[playerid][4], 1);
	PlayerTextDrawSetSelectable(playerid, SpeedoTD[playerid][4], 0);

	SpeedoTD[playerid][5] = CreatePlayerTextDraw(playerid, 385.000000, 416.000000, "ld_beat:chit");
	PlayerTextDrawFont(playerid, SpeedoTD[playerid][5], 4);
	PlayerTextDrawLetterSize(playerid, SpeedoTD[playerid][5], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, SpeedoTD[playerid][5], 25.500000, 25.500000);
	PlayerTextDrawSetOutline(playerid, SpeedoTD[playerid][5], 1);
	PlayerTextDrawSetShadow(playerid, SpeedoTD[playerid][5], 0);
	PlayerTextDrawAlignment(playerid, SpeedoTD[playerid][5], 1);
	PlayerTextDrawColor(playerid, SpeedoTD[playerid][5], 16777215);
	PlayerTextDrawBackgroundColor(playerid, SpeedoTD[playerid][5], 255);
	PlayerTextDrawBoxColor(playerid, SpeedoTD[playerid][5], 50);
	PlayerTextDrawUseBox(playerid, SpeedoTD[playerid][5], 0);
	PlayerTextDrawSetProportional(playerid, SpeedoTD[playerid][5], 1);
	PlayerTextDrawSetSelectable(playerid, SpeedoTD[playerid][5], 0);

	SpeedoTD[playerid][6] = CreatePlayerTextDraw(playerid, 385.000000, 387.000000, "ld_beat:chit");
	PlayerTextDrawFont(playerid, SpeedoTD[playerid][6], 4);
	PlayerTextDrawLetterSize(playerid, SpeedoTD[playerid][6], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, SpeedoTD[playerid][6], 25.500000, 27.500000);
	PlayerTextDrawSetOutline(playerid, SpeedoTD[playerid][6], 1);
	PlayerTextDrawSetShadow(playerid, SpeedoTD[playerid][6], 0);
	PlayerTextDrawAlignment(playerid, SpeedoTD[playerid][6], 1);
	PlayerTextDrawColor(playerid, SpeedoTD[playerid][6], 16777215);
	PlayerTextDrawBackgroundColor(playerid, SpeedoTD[playerid][6], 255);
	PlayerTextDrawBoxColor(playerid, SpeedoTD[playerid][6], -764862926);
	PlayerTextDrawUseBox(playerid, SpeedoTD[playerid][6], 0);
	PlayerTextDrawSetProportional(playerid, SpeedoTD[playerid][6], 1);
	PlayerTextDrawSetSelectable(playerid, SpeedoTD[playerid][6], 0);

	SpeedoTD[playerid][7] = CreatePlayerTextDraw(playerid, 291.000000, 423.000000, "Health:");
	PlayerTextDrawFont(playerid, SpeedoTD[playerid][7], 2);
	PlayerTextDrawLetterSize(playerid, SpeedoTD[playerid][7], 0.129166, 1.000000);
	PlayerTextDrawTextSize(playerid, SpeedoTD[playerid][7], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, SpeedoTD[playerid][7], 1);
	PlayerTextDrawSetShadow(playerid, SpeedoTD[playerid][7], 0);
	PlayerTextDrawAlignment(playerid, SpeedoTD[playerid][7], 1);
	PlayerTextDrawColor(playerid, SpeedoTD[playerid][7], -1);
	PlayerTextDrawBackgroundColor(playerid, SpeedoTD[playerid][7], 255);
	PlayerTextDrawBoxColor(playerid, SpeedoTD[playerid][7], 50);
	PlayerTextDrawUseBox(playerid, SpeedoTD[playerid][7], 0);
	PlayerTextDrawSetProportional(playerid, SpeedoTD[playerid][7], 1);
	PlayerTextDrawSetSelectable(playerid, SpeedoTD[playerid][7], 0);

	SpeedoTD[playerid][8] = CreatePlayerTextDraw(playerid, 336.000000, 424.000000, "fuel:");
	PlayerTextDrawFont(playerid, SpeedoTD[playerid][8], 2);
	PlayerTextDrawLetterSize(playerid, SpeedoTD[playerid][8], 0.145833, 0.899999);
	PlayerTextDrawTextSize(playerid, SpeedoTD[playerid][8], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, SpeedoTD[playerid][8], 2);
	PlayerTextDrawSetShadow(playerid, SpeedoTD[playerid][8], 0);
	PlayerTextDrawAlignment(playerid, SpeedoTD[playerid][8], 1);
	PlayerTextDrawColor(playerid, SpeedoTD[playerid][8], -1);
	PlayerTextDrawBackgroundColor(playerid, SpeedoTD[playerid][8], 255);
	PlayerTextDrawBoxColor(playerid, SpeedoTD[playerid][8], 50);
	PlayerTextDrawUseBox(playerid, SpeedoTD[playerid][8], 0);
	PlayerTextDrawSetProportional(playerid, SpeedoTD[playerid][8], 1);
	PlayerTextDrawSetSelectable(playerid, SpeedoTD[playerid][8], 0);

	SpeedoTD[playerid][9] = CreatePlayerTextDraw(playerid, 377.000000, 395.000000, "Speed");
	PlayerTextDrawFont(playerid, SpeedoTD[playerid][9], 2);
	PlayerTextDrawLetterSize(playerid, SpeedoTD[playerid][9], 0.170827, 0.899999);
	PlayerTextDrawTextSize(playerid, SpeedoTD[playerid][9], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, SpeedoTD[playerid][9], 0);
	PlayerTextDrawSetShadow(playerid, SpeedoTD[playerid][9], 0);
	PlayerTextDrawAlignment(playerid, SpeedoTD[playerid][9], 1);
	PlayerTextDrawColor(playerid, SpeedoTD[playerid][9], COLOR_BLACK);
	PlayerTextDrawBackgroundColor(playerid, SpeedoTD[playerid][9], 255);
	PlayerTextDrawBoxColor(playerid, SpeedoTD[playerid][9], 50);
	PlayerTextDrawUseBox(playerid, SpeedoTD[playerid][9], 0);
	PlayerTextDrawSetProportional(playerid, SpeedoTD[playerid][9], 1);
	PlayerTextDrawSetSelectable(playerid, SpeedoTD[playerid][9], 0);

	SpeedoTD[playerid][10] = CreatePlayerTextDraw(playerid, 314.000000, 422.000000, "1000");
	PlayerTextDrawFont(playerid, SpeedoTD[playerid][10], 1);
	PlayerTextDrawLetterSize(playerid, SpeedoTD[playerid][10], 0.174998, 1.299998);
	PlayerTextDrawTextSize(playerid, SpeedoTD[playerid][10], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, SpeedoTD[playerid][10], 0);
	PlayerTextDrawSetShadow(playerid, SpeedoTD[playerid][10], 0);
	PlayerTextDrawAlignment(playerid, SpeedoTD[playerid][10], 1);
	PlayerTextDrawColor(playerid, SpeedoTD[playerid][10], -1);
	PlayerTextDrawBackgroundColor(playerid, SpeedoTD[playerid][10], 255);
	PlayerTextDrawBoxColor(playerid, SpeedoTD[playerid][10], 50);
	PlayerTextDrawUseBox(playerid, SpeedoTD[playerid][10], 0);
	PlayerTextDrawSetProportional(playerid, SpeedoTD[playerid][10], 1);
	PlayerTextDrawSetSelectable(playerid, SpeedoTD[playerid][10], 0);

	SpeedoTD[playerid][11] = CreatePlayerTextDraw(playerid, 355.000000, 422.000000, "100");
	PlayerTextDrawFont(playerid, SpeedoTD[playerid][11], 1);
	PlayerTextDrawLetterSize(playerid, SpeedoTD[playerid][11], 0.195831, 1.299998);
	PlayerTextDrawTextSize(playerid, SpeedoTD[playerid][11], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, SpeedoTD[playerid][11], 0);
	PlayerTextDrawSetShadow(playerid, SpeedoTD[playerid][11], 0);
	PlayerTextDrawAlignment(playerid, SpeedoTD[playerid][11], 1);
	PlayerTextDrawColor(playerid, SpeedoTD[playerid][11], -1);
	PlayerTextDrawBackgroundColor(playerid, SpeedoTD[playerid][11], 255);
	PlayerTextDrawBoxColor(playerid, SpeedoTD[playerid][11], 50);
	PlayerTextDrawUseBox(playerid, SpeedoTD[playerid][11], 0);
	PlayerTextDrawSetProportional(playerid, SpeedoTD[playerid][11], 1);
	PlayerTextDrawSetSelectable(playerid, SpeedoTD[playerid][11], 0);

	SpeedoTD[playerid][12] = CreatePlayerTextDraw(playerid, 328.000000, 394.000000, "buffalo");
	PlayerTextDrawFont(playerid, SpeedoTD[playerid][12], 2);
	PlayerTextDrawLetterSize(playerid, SpeedoTD[playerid][12], 0.145833, 0.899999);
	PlayerTextDrawTextSize(playerid, SpeedoTD[playerid][12], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, SpeedoTD[playerid][12], 0);
	PlayerTextDrawSetShadow(playerid, SpeedoTD[playerid][12], 0);
	PlayerTextDrawAlignment(playerid, SpeedoTD[playerid][12], 2);
	PlayerTextDrawColor(playerid, SpeedoTD[playerid][12], -1);
	PlayerTextDrawBackgroundColor(playerid, SpeedoTD[playerid][12], 255);
	PlayerTextDrawBoxColor(playerid, SpeedoTD[playerid][12], 50);
	PlayerTextDrawUseBox(playerid, SpeedoTD[playerid][12], 0);
	PlayerTextDrawSetProportional(playerid, SpeedoTD[playerid][12], 1);
	PlayerTextDrawSetSelectable(playerid, SpeedoTD[playerid][12], 0);

	SpeedoTD[playerid][13] = CreatePlayerTextDraw(playerid, 252.000000, 401.000000, "ld_bum:blkdot");
	PlayerTextDrawFont(playerid, SpeedoTD[playerid][13], 4);
	PlayerTextDrawLetterSize(playerid, SpeedoTD[playerid][13], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, SpeedoTD[playerid][13], 32.500000, 26.500000);
	PlayerTextDrawSetOutline(playerid, SpeedoTD[playerid][13], 1);
	PlayerTextDrawSetShadow(playerid, SpeedoTD[playerid][13], 0);
	PlayerTextDrawAlignment(playerid, SpeedoTD[playerid][13], 1);
	PlayerTextDrawColor(playerid, SpeedoTD[playerid][13], 16777215);
	PlayerTextDrawBackgroundColor(playerid, SpeedoTD[playerid][13], 255);
	PlayerTextDrawBoxColor(playerid, SpeedoTD[playerid][13], 50);
	PlayerTextDrawUseBox(playerid, SpeedoTD[playerid][13], 0);
	PlayerTextDrawSetProportional(playerid, SpeedoTD[playerid][13], 1);
	PlayerTextDrawSetSelectable(playerid, SpeedoTD[playerid][13], 0);

	SpeedoTD[playerid][14] = CreatePlayerTextDraw(playerid, 248.000000, 416.000000, "ld_beat:chit");
	PlayerTextDrawFont(playerid, SpeedoTD[playerid][14], 4);
	PlayerTextDrawLetterSize(playerid, SpeedoTD[playerid][14], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, SpeedoTD[playerid][14], 25.500000, 25.500000);
	PlayerTextDrawSetOutline(playerid, SpeedoTD[playerid][14], 1);
	PlayerTextDrawSetShadow(playerid, SpeedoTD[playerid][14], 0);
	PlayerTextDrawAlignment(playerid, SpeedoTD[playerid][14], 1);
	PlayerTextDrawColor(playerid, SpeedoTD[playerid][14], 16777215);
	PlayerTextDrawBackgroundColor(playerid, SpeedoTD[playerid][14], 255);
	PlayerTextDrawBoxColor(playerid, SpeedoTD[playerid][14], 50);
	PlayerTextDrawUseBox(playerid, SpeedoTD[playerid][14], 0);
	PlayerTextDrawSetProportional(playerid, SpeedoTD[playerid][14], 1);
	PlayerTextDrawSetSelectable(playerid, SpeedoTD[playerid][14], 0);

	SpeedoTD[playerid][15] = CreatePlayerTextDraw(playerid, 272.000000, 423.000000, "off");
	PlayerTextDrawFont(playerid, SpeedoTD[playerid][15], 2);
	PlayerTextDrawLetterSize(playerid, SpeedoTD[playerid][15], 0.154164, 0.800000);
	PlayerTextDrawTextSize(playerid, SpeedoTD[playerid][15], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, SpeedoTD[playerid][15], 0);
	PlayerTextDrawSetShadow(playerid, SpeedoTD[playerid][15], 0);
	PlayerTextDrawAlignment(playerid, SpeedoTD[playerid][15], 1);
	PlayerTextDrawColor(playerid, SpeedoTD[playerid][15], -1);
	PlayerTextDrawBackgroundColor(playerid, SpeedoTD[playerid][15], 255);
	PlayerTextDrawBoxColor(playerid, SpeedoTD[playerid][15], 50);
	PlayerTextDrawUseBox(playerid, SpeedoTD[playerid][15], 0);
	PlayerTextDrawSetProportional(playerid, SpeedoTD[playerid][15], 1);
	PlayerTextDrawSetSelectable(playerid, SpeedoTD[playerid][15], 0);

	SpeedoTD[playerid][16] = CreatePlayerTextDraw(playerid, 248.000000, 387.000000, "ld_beat:chit");
	PlayerTextDrawFont(playerid, SpeedoTD[playerid][16], 4);
	PlayerTextDrawLetterSize(playerid, SpeedoTD[playerid][16], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, SpeedoTD[playerid][16], 25.500000, 27.500000);
	PlayerTextDrawSetOutline(playerid, SpeedoTD[playerid][16], 1);
	PlayerTextDrawSetShadow(playerid, SpeedoTD[playerid][16], 0);
	PlayerTextDrawAlignment(playerid, SpeedoTD[playerid][16], 1);
	PlayerTextDrawColor(playerid, SpeedoTD[playerid][16], 16777215);
	PlayerTextDrawBackgroundColor(playerid, SpeedoTD[playerid][16], 255);
	PlayerTextDrawBoxColor(playerid, SpeedoTD[playerid][16], 50);
	PlayerTextDrawUseBox(playerid, SpeedoTD[playerid][16], 0);
	PlayerTextDrawSetProportional(playerid, SpeedoTD[playerid][16], 1);
	PlayerTextDrawSetSelectable(playerid, SpeedoTD[playerid][16], 0);

	SpeedoTD[playerid][17] = CreatePlayerTextDraw(playerid, 253.000000, 411.000000, "lock:");
	PlayerTextDrawFont(playerid, SpeedoTD[playerid][17], 2);
	PlayerTextDrawLetterSize(playerid, SpeedoTD[playerid][17], 0.158333, 1.100000);
	PlayerTextDrawTextSize(playerid, SpeedoTD[playerid][17], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, SpeedoTD[playerid][17], 0);
	PlayerTextDrawSetShadow(playerid, SpeedoTD[playerid][17], 0);
	PlayerTextDrawAlignment(playerid, SpeedoTD[playerid][17], 1);
	PlayerTextDrawColor(playerid, SpeedoTD[playerid][17], COLOR_BLACK);
	PlayerTextDrawBackgroundColor(playerid, SpeedoTD[playerid][17], 255);
	PlayerTextDrawBoxColor(playerid, SpeedoTD[playerid][17], 50);
	PlayerTextDrawUseBox(playerid, SpeedoTD[playerid][17], 0);
	PlayerTextDrawSetProportional(playerid, SpeedoTD[playerid][17], 1);
	PlayerTextDrawSetSelectable(playerid, SpeedoTD[playerid][17], 0);

	SpeedoTD[playerid][18] = CreatePlayerTextDraw(playerid, 253.000000, 400.000000, "engine:");
	PlayerTextDrawFont(playerid, SpeedoTD[playerid][18], 2);
	PlayerTextDrawLetterSize(playerid, SpeedoTD[playerid][18], 0.116663, 1.149999);
	PlayerTextDrawTextSize(playerid, SpeedoTD[playerid][18], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, SpeedoTD[playerid][18], 0);
	PlayerTextDrawSetShadow(playerid, SpeedoTD[playerid][18], 0);
	PlayerTextDrawAlignment(playerid, SpeedoTD[playerid][18], 1);
	PlayerTextDrawColor(playerid, SpeedoTD[playerid][18], COLOR_BLACK);
	PlayerTextDrawBackgroundColor(playerid, SpeedoTD[playerid][18], 255);
	PlayerTextDrawBoxColor(playerid, SpeedoTD[playerid][18], 50);
	PlayerTextDrawUseBox(playerid, SpeedoTD[playerid][18], 0);
	PlayerTextDrawSetProportional(playerid, SpeedoTD[playerid][18], 1);
	PlayerTextDrawSetSelectable(playerid, SpeedoTD[playerid][18], 0);

	SpeedoTD[playerid][19] = CreatePlayerTextDraw(playerid, 253.000000, 422.000000, "light:");
	PlayerTextDrawFont(playerid, SpeedoTD[playerid][19], 2);
	PlayerTextDrawLetterSize(playerid, SpeedoTD[playerid][19], 0.141662, 0.949998);
	PlayerTextDrawTextSize(playerid, SpeedoTD[playerid][19], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, SpeedoTD[playerid][19], 0);
	PlayerTextDrawSetShadow(playerid, SpeedoTD[playerid][19], 0);
	PlayerTextDrawAlignment(playerid, SpeedoTD[playerid][19], 1);
	PlayerTextDrawColor(playerid, SpeedoTD[playerid][19],COLOR_BLACK);
	PlayerTextDrawBackgroundColor(playerid, SpeedoTD[playerid][19], 255);
	PlayerTextDrawBoxColor(playerid, SpeedoTD[playerid][19], 50);
	PlayerTextDrawUseBox(playerid, SpeedoTD[playerid][19], 0);
	PlayerTextDrawSetProportional(playerid, SpeedoTD[playerid][19], 1);
	PlayerTextDrawSetSelectable(playerid, SpeedoTD[playerid][19], 0);

	SpeedoTD[playerid][20] = CreatePlayerTextDraw(playerid, 272.000000, 413.000000, "yes");
	PlayerTextDrawFont(playerid, SpeedoTD[playerid][20], 2);
	PlayerTextDrawLetterSize(playerid, SpeedoTD[playerid][20], 0.154164, 0.800000);
	PlayerTextDrawTextSize(playerid, SpeedoTD[playerid][20], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, SpeedoTD[playerid][20], 0);
	PlayerTextDrawSetShadow(playerid, SpeedoTD[playerid][20], 0);
	PlayerTextDrawAlignment(playerid, SpeedoTD[playerid][20], 1);
	PlayerTextDrawColor(playerid, SpeedoTD[playerid][20], -1);
	PlayerTextDrawBackgroundColor(playerid, SpeedoTD[playerid][20], 255);
	PlayerTextDrawBoxColor(playerid, SpeedoTD[playerid][20], 50);
	PlayerTextDrawUseBox(playerid, SpeedoTD[playerid][20], 0);
	PlayerTextDrawSetProportional(playerid, SpeedoTD[playerid][20], 1);
	PlayerTextDrawSetSelectable(playerid, SpeedoTD[playerid][20], 0);

	SpeedoTD[playerid][21] = CreatePlayerTextDraw(playerid, 273.000000, 402.000000, "off");
	PlayerTextDrawFont(playerid, SpeedoTD[playerid][21], 2);
	PlayerTextDrawLetterSize(playerid, SpeedoTD[playerid][21], 0.141662, 0.800000);
	PlayerTextDrawTextSize(playerid, SpeedoTD[playerid][21], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, SpeedoTD[playerid][21], 0);
	PlayerTextDrawSetShadow(playerid, SpeedoTD[playerid][21], 0);
	PlayerTextDrawAlignment(playerid, SpeedoTD[playerid][21], 1);
	PlayerTextDrawColor(playerid, SpeedoTD[playerid][21], -1);
	PlayerTextDrawBackgroundColor(playerid, SpeedoTD[playerid][21], 255);
	PlayerTextDrawBoxColor(playerid, SpeedoTD[playerid][21], 50);
	PlayerTextDrawUseBox(playerid, SpeedoTD[playerid][21], 0);
	PlayerTextDrawSetProportional(playerid, SpeedoTD[playerid][21], 1);
	PlayerTextDrawSetSelectable(playerid, SpeedoTD[playerid][21], 0);

	SpeedoTD[playerid][22] = CreatePlayerTextDraw(playerid, 379.000000, 405.000000, "999");
	PlayerTextDrawFont(playerid, SpeedoTD[playerid][22], 3);
	PlayerTextDrawLetterSize(playerid, SpeedoTD[playerid][22], 0.387499, 1.850000);
	PlayerTextDrawTextSize(playerid, SpeedoTD[playerid][22], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, SpeedoTD[playerid][22], 1);
	PlayerTextDrawSetShadow(playerid, SpeedoTD[playerid][22], 0);
	PlayerTextDrawAlignment(playerid, SpeedoTD[playerid][22], 1);
	PlayerTextDrawColor(playerid, SpeedoTD[playerid][22], -1);
	PlayerTextDrawBackgroundColor(playerid, SpeedoTD[playerid][22], 255);
	PlayerTextDrawBoxColor(playerid, SpeedoTD[playerid][22], 50);
	PlayerTextDrawUseBox(playerid, SpeedoTD[playerid][22], 0);
	PlayerTextDrawSetProportional(playerid, SpeedoTD[playerid][22], 1);
	PlayerTextDrawSetSelectable(playerid, SpeedoTD[playerid][22], 0);

	SpeedoTD[playerid][23] = CreatePlayerTextDraw(playerid, 380.000000, 421.000000, "KM/H");
	PlayerTextDrawFont(playerid, SpeedoTD[playerid][23], 2);
	PlayerTextDrawLetterSize(playerid, SpeedoTD[playerid][23], 0.200000, 1.200000);
	PlayerTextDrawTextSize(playerid, SpeedoTD[playerid][23], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, SpeedoTD[playerid][23], 0);
	PlayerTextDrawSetShadow(playerid, SpeedoTD[playerid][23], 0);
	PlayerTextDrawAlignment(playerid, SpeedoTD[playerid][23], 1);
	PlayerTextDrawColor(playerid, SpeedoTD[playerid][23], COLOR_BLACK);
	PlayerTextDrawBackgroundColor(playerid, SpeedoTD[playerid][23], 255);
	PlayerTextDrawBoxColor(playerid, SpeedoTD[playerid][23], 50);
	PlayerTextDrawUseBox(playerid, SpeedoTD[playerid][23], 0);
	PlayerTextDrawSetProportional(playerid, SpeedoTD[playerid][23], 1);
	PlayerTextDrawSetSelectable(playerid, SpeedoTD[playerid][23], 0);

	SpeedoTD[playerid][24] = CreatePlayerTextDraw(playerid, 292.000000, 406.500000, "_");
	PlayerTextDrawFont(playerid, SpeedoTD[playerid][24], 1);
	PlayerTextDrawLetterSize(playerid, SpeedoTD[playerid][24], 0.624999, 1.349996);
	PlayerTextDrawTextSize(playerid, SpeedoTD[playerid][24], 374.000000, -5.000000);
	PlayerTextDrawSetOutline(playerid, SpeedoTD[playerid][24], 1);
	PlayerTextDrawSetShadow(playerid, SpeedoTD[playerid][24], 0);
	PlayerTextDrawColor(playerid, SpeedoTD[playerid][24], 0x00FF00FF);
	PlayerTextDrawBackgroundColor(playerid, SpeedoTD[playerid][24], 255);
	PlayerTextDrawBoxColor(playerid, SpeedoTD[playerid][24], 0x00FF00FF);
	PlayerTextDrawUseBox(playerid, SpeedoTD[playerid][24], 1);
	PlayerTextDrawSetProportional(playerid, SpeedoTD[playerid][24], 1);
	PlayerTextDrawSetSelectable(playerid, SpeedoTD[playerid][24], 0);
}


/*CreateInventoryTDGlobal()
{
    InventoryGlobal[0] = TextDrawCreate(303.587, 119.999, "Box");
    TextDrawLetterSize(InventoryGlobal[0], 0.000, 24.288);
    TextDrawTextSize(InventoryGlobal[0], 495.000, 0.000);
    TextDrawAlignment(InventoryGlobal[0], 1);
    TextDrawColor(InventoryGlobal[0], -1);
    TextDrawUseBox(InventoryGlobal[0], 1);
    TextDrawBoxColor(InventoryGlobal[0], 320017407);
    TextDrawSetShadow(InventoryGlobal[0], 0);
    TextDrawSetOutline(InventoryGlobal[0], 0);
    TextDrawBackgroundColor(InventoryGlobal[0], 255);
    TextDrawFont(InventoryGlobal[0], 1);
    TextDrawSetProportional(InventoryGlobal[0], 1);

    InventoryGlobal[1] = TextDrawCreate(174.880, 119.999, "Box");
    TextDrawLetterSize(InventoryGlobal[1], 0.000, 24.381);
    TextDrawTextSize(InventoryGlobal[1], 292.199, 0.000);
    TextDrawAlignment(InventoryGlobal[1], 1);
    TextDrawColor(InventoryGlobal[1], -1);
    TextDrawUseBox(InventoryGlobal[1], 1);
    TextDrawBoxColor(InventoryGlobal[1], 320017407);
    TextDrawSetShadow(InventoryGlobal[1], 0);
    TextDrawSetOutline(InventoryGlobal[1], 0);
    TextDrawBackgroundColor(InventoryGlobal[1], 255);
    TextDrawFont(InventoryGlobal[1], 1);
    TextDrawSetProportional(InventoryGlobal[1], 1);

    InventoryGlobal[2] = TextDrawCreate(276.888, 97.133, "_");
    TextDrawTextSize(InventoryGlobal[2], 38.000, 46.000);
    TextDrawAlignment(InventoryGlobal[2], 1);
    TextDrawColor(InventoryGlobal[2], 1848345343);
    TextDrawSetShadow(InventoryGlobal[2], 0);
    TextDrawSetOutline(InventoryGlobal[2], 0);
    TextDrawBackgroundColor(InventoryGlobal[2], 0);
    TextDrawFont(InventoryGlobal[2], 5);
    TextDrawSetProportional(InventoryGlobal[2], 0);
    TextDrawSetPreviewModel(InventoryGlobal[2], 19177);
    TextDrawSetPreviewRot(InventoryGlobal[2], 0.000, -90.000, 0.000, 1.000);
    TextDrawSetPreviewVehCol(InventoryGlobal[2], 0, 0);

    InventoryGlobal[3] = TextDrawCreate(280.588, 97.133, "_");
    TextDrawTextSize(InventoryGlobal[3], 38.000, 46.000);
    TextDrawAlignment(InventoryGlobal[3], 1);
    TextDrawColor(InventoryGlobal[3], 1848345343);
    TextDrawSetShadow(InventoryGlobal[3], 0);
    TextDrawSetOutline(InventoryGlobal[3], 0);
    TextDrawBackgroundColor(InventoryGlobal[3], 0);
    TextDrawFont(InventoryGlobal[3], 5);
    TextDrawSetProportional(InventoryGlobal[3], 0);
    TextDrawSetPreviewModel(InventoryGlobal[3], 19177);
    TextDrawSetPreviewRot(InventoryGlobal[3], 0.000, 90.000, 0.000, 1.000);
    TextDrawSetPreviewVehCol(InventoryGlobal[3], 0, 0);

    InventoryGlobal[4] = TextDrawCreate(152.179, 97.133, "_");
    TextDrawTextSize(InventoryGlobal[4], 38.000, 46.000);
    TextDrawAlignment(InventoryGlobal[4], 1);
    TextDrawColor(InventoryGlobal[4], 1848345343);
    TextDrawSetShadow(InventoryGlobal[4], 0);
    TextDrawSetOutline(InventoryGlobal[4], 0);
    TextDrawBackgroundColor(InventoryGlobal[4], 0);
    TextDrawFont(InventoryGlobal[4], 5);
    TextDrawSetProportional(InventoryGlobal[4], 0);
    TextDrawSetPreviewModel(InventoryGlobal[4], 19177);
    TextDrawSetPreviewRot(InventoryGlobal[4], 0.000, 90.000, 0.000, 1.000);
    TextDrawSetPreviewVehCol(InventoryGlobal[4], 0, 0);

    InventoryGlobal[5] = TextDrawCreate(479.700, 97.133, "_");
    TextDrawTextSize(InventoryGlobal[5], 38.000, 46.000);
    TextDrawAlignment(InventoryGlobal[5], 1);
    TextDrawColor(InventoryGlobal[5], 1848345343);
    TextDrawSetShadow(InventoryGlobal[5], 0);
    TextDrawSetOutline(InventoryGlobal[5], 0);
    TextDrawBackgroundColor(InventoryGlobal[5], 0);
    TextDrawFont(InventoryGlobal[5], 5);
    TextDrawSetProportional(InventoryGlobal[5], 0);
    TextDrawSetPreviewModel(InventoryGlobal[5], 19177);
    TextDrawSetPreviewRot(InventoryGlobal[5], 0.000, -90.000, 0.000, 1.000);
    TextDrawSetPreviewVehCol(InventoryGlobal[5], 0, 0);

    InventoryGlobal[6] = TextDrawCreate(171.100, 112.150, "Box");
    TextDrawLetterSize(InventoryGlobal[6], 0.000, 0.582);
    TextDrawTextSize(InventoryGlobal[6], 295.290, 0.000);
    TextDrawAlignment(InventoryGlobal[6], 1);
    TextDrawColor(InventoryGlobal[6], -1);
    TextDrawUseBox(InventoryGlobal[6], 1);
    TextDrawBoxColor(InventoryGlobal[6], 1848345343);
    TextDrawSetShadow(InventoryGlobal[6], 0);
    TextDrawSetOutline(InventoryGlobal[6], 0);
    TextDrawBackgroundColor(InventoryGlobal[6], 255);
    TextDrawFont(InventoryGlobal[6], 1);
    TextDrawSetProportional(InventoryGlobal[6], 1);

    InventoryGlobal[7] = TextDrawCreate(299.842, 112.531, "Box");
    TextDrawLetterSize(InventoryGlobal[7], 0.000, 0.535);
    TextDrawTextSize(InventoryGlobal[7], 499.000, 0.000);
    TextDrawAlignment(InventoryGlobal[7], 1);
    TextDrawColor(InventoryGlobal[7], -1);
    TextDrawUseBox(InventoryGlobal[7], 1);
    TextDrawBoxColor(InventoryGlobal[7], 1848345343);
    TextDrawSetShadow(InventoryGlobal[7], 0);
    TextDrawSetOutline(InventoryGlobal[7], 0);
    TextDrawBackgroundColor(InventoryGlobal[7], 255);
    TextDrawFont(InventoryGlobal[7], 1);
    TextDrawSetProportional(InventoryGlobal[7], 1);

    InventoryGlobal[8] = TextDrawCreate(382.893, 110.930, "INVENTORY");
    TextDrawLetterSize(InventoryGlobal[8], 0.207, 0.841);
    TextDrawAlignment(InventoryGlobal[8], 1);
    TextDrawColor(InventoryGlobal[8], -1);
    TextDrawSetShadow(InventoryGlobal[8], 0);
    TextDrawSetOutline(InventoryGlobal[8], 0);
    TextDrawBackgroundColor(InventoryGlobal[8], 255);
    TextDrawFont(InventoryGlobal[8], 1);
    TextDrawSetProportional(InventoryGlobal[8], 1);

    InventoryGlobal[9] = TextDrawCreate(213.582, 110.930, "ACCESSORIES");
    TextDrawLetterSize(InventoryGlobal[9], 0.207, 0.841);
    TextDrawAlignment(InventoryGlobal[9], 1);
    TextDrawColor(InventoryGlobal[9], -1);
    TextDrawSetShadow(InventoryGlobal[9], 0);
    TextDrawSetOutline(InventoryGlobal[9], 0);
    TextDrawBackgroundColor(InventoryGlobal[9], 255);
    TextDrawFont(InventoryGlobal[9], 1);
    TextDrawSetProportional(InventoryGlobal[9], 1);

    InventoryGlobal[10] = TextDrawCreate(181.770, 240.832, "Box");
    TextDrawLetterSize(InventoryGlobal[10], 0.000, -0.680);
    TextDrawTextSize(InventoryGlobal[10], 287.000, 0.000);
    TextDrawAlignment(InventoryGlobal[10], 1);
    TextDrawColor(InventoryGlobal[10], -1);
    TextDrawUseBox(InventoryGlobal[10], 1);
    TextDrawBoxColor(InventoryGlobal[10], 471604479);
    TextDrawSetShadow(InventoryGlobal[10], 0);
    TextDrawSetOutline(InventoryGlobal[10], 0);
    TextDrawBackgroundColor(InventoryGlobal[10], 255);
    TextDrawFont(InventoryGlobal[10], 1);
    TextDrawSetProportional(InventoryGlobal[10], 1);

    InventoryGlobal[11] = TextDrawCreate(181.770, 294.536, "Box");
    TextDrawLetterSize(InventoryGlobal[11], 0.000, -0.680);
    TextDrawTextSize(InventoryGlobal[11], 287.000, 0.000);
    TextDrawAlignment(InventoryGlobal[11], 1);
    TextDrawColor(InventoryGlobal[11], -1);
    TextDrawUseBox(InventoryGlobal[11], 1);
    TextDrawBoxColor(InventoryGlobal[11], 471604479);
    TextDrawSetShadow(InventoryGlobal[11], 0);
    TextDrawSetOutline(InventoryGlobal[11], 0);
    TextDrawBackgroundColor(InventoryGlobal[11], 255);
    TextDrawFont(InventoryGlobal[11], 1);
    TextDrawSetProportional(InventoryGlobal[11], 1);

    InventoryGlobal[12] = TextDrawCreate(181.770, 247.815, "Box");
    TextDrawLetterSize(InventoryGlobal[12], 0.000, 0.395);
    TextDrawTextSize(InventoryGlobal[12], 276.000, 0.000);
    TextDrawAlignment(InventoryGlobal[12], 1);
    TextDrawColor(InventoryGlobal[12], -1);
    TextDrawUseBox(InventoryGlobal[12], 1);
    TextDrawBoxColor(InventoryGlobal[12], 471604479);
    TextDrawSetShadow(InventoryGlobal[12], 0);
    TextDrawSetOutline(InventoryGlobal[12], 0);
    TextDrawBackgroundColor(InventoryGlobal[12], 255);
    TextDrawFont(InventoryGlobal[12], 1);
    TextDrawSetProportional(InventoryGlobal[12], 1);

    InventoryGlobal[13] = TextDrawCreate(181.770, 263.515, "Box");
    TextDrawLetterSize(InventoryGlobal[13], 0.000, 0.395);
    TextDrawTextSize(InventoryGlobal[13], 276.000, 0.000);
    TextDrawAlignment(InventoryGlobal[13], 1);
    TextDrawColor(InventoryGlobal[13], -1);
    TextDrawUseBox(InventoryGlobal[13], 1);
    TextDrawBoxColor(InventoryGlobal[13], 471604479);
    TextDrawSetShadow(InventoryGlobal[13], 0);
    TextDrawSetOutline(InventoryGlobal[13], 0);
    TextDrawBackgroundColor(InventoryGlobal[13], 255);
    TextDrawFont(InventoryGlobal[13], 1);
    TextDrawSetProportional(InventoryGlobal[13], 1);

    InventoryGlobal[14] = TextDrawCreate(181.302, 278.717, "Box");
    TextDrawLetterSize(InventoryGlobal[14], 0.000, 0.395);
    TextDrawTextSize(InventoryGlobal[14], 276.000, 0.000);
    TextDrawAlignment(InventoryGlobal[14], 1);
    TextDrawColor(InventoryGlobal[14], -1);
    TextDrawUseBox(InventoryGlobal[14], 1);
    TextDrawBoxColor(InventoryGlobal[14], 471604479);
    TextDrawSetShadow(InventoryGlobal[14], 0);
    TextDrawSetOutline(InventoryGlobal[14], 0);
    TextDrawBackgroundColor(InventoryGlobal[14], 255);
    TextDrawFont(InventoryGlobal[14], 1);
    TextDrawSetProportional(InventoryGlobal[14], 1);

    InventoryGlobal[15] = TextDrawCreate(180.328, 269.250, "DRUNK");
    TextDrawLetterSize(InventoryGlobal[15], 0.130, 0.754);
    TextDrawAlignment(InventoryGlobal[15], 1);
    TextDrawColor(InventoryGlobal[15], -1);
    TextDrawSetShadow(InventoryGlobal[15], 0);
    TextDrawSetOutline(InventoryGlobal[15], 0);
    TextDrawBackgroundColor(InventoryGlobal[15], 255);
    TextDrawFont(InventoryGlobal[15], 1);
    TextDrawSetProportional(InventoryGlobal[15], 1);

    InventoryGlobal[16] = TextDrawCreate(179.897, 254.048, "ARMOUR");
    TextDrawLetterSize(InventoryGlobal[16], 0.130, 0.754);
    TextDrawAlignment(InventoryGlobal[16], 1);
    TextDrawColor(InventoryGlobal[16], -1);
    TextDrawSetShadow(InventoryGlobal[16], 0);
    TextDrawSetOutline(InventoryGlobal[16], 0);
    TextDrawBackgroundColor(InventoryGlobal[16], 255);
    TextDrawFont(InventoryGlobal[16], 1);
    TextDrawSetProportional(InventoryGlobal[16], 1);

    InventoryGlobal[17] = TextDrawCreate(179.929, 238.447, "HEAL");
    TextDrawLetterSize(InventoryGlobal[17], 0.130, 0.754);
    TextDrawAlignment(InventoryGlobal[17], 1);
    TextDrawColor(InventoryGlobal[17], -1);
    TextDrawSetShadow(InventoryGlobal[17], 0);
    TextDrawSetOutline(InventoryGlobal[17], 0);
    TextDrawBackgroundColor(InventoryGlobal[17], 255);
    TextDrawFont(InventoryGlobal[17], 1);
    TextDrawSetProportional(InventoryGlobal[17], 1);

    InventoryGlobal[18] = TextDrawCreate(182.408, 248.832, "Box");
    TextDrawLetterSize(InventoryGlobal[18], 0.000, 0.144);
    TextDrawTextSize(InventoryGlobal[18], 275.368, 0.000);
    TextDrawAlignment(InventoryGlobal[18], 1);
    TextDrawColor(InventoryGlobal[18], -1);
    TextDrawUseBox(InventoryGlobal[18], 1);
    TextDrawBoxColor(InventoryGlobal[18], 320017407);
    TextDrawSetShadow(InventoryGlobal[18], 0);
    TextDrawSetOutline(InventoryGlobal[18], 0);
    TextDrawBackgroundColor(InventoryGlobal[18], 255);
    TextDrawFont(InventoryGlobal[18], 1);
    TextDrawSetProportional(InventoryGlobal[18], 1);

    InventoryGlobal[19] = TextDrawCreate(182.608, 264.515, "Box");
    TextDrawLetterSize(InventoryGlobal[19], 0.000, 0.144);
    TextDrawTextSize(InventoryGlobal[19], 275.200, 0.000);
    TextDrawAlignment(InventoryGlobal[19], 1);
    TextDrawColor(InventoryGlobal[19], -1);
    TextDrawUseBox(InventoryGlobal[19], 1);
    TextDrawBoxColor(InventoryGlobal[19], 320017407);
    TextDrawSetShadow(InventoryGlobal[19], 0);
    TextDrawSetOutline(InventoryGlobal[19], 0);
    TextDrawBackgroundColor(InventoryGlobal[19], 255);
    TextDrawFont(InventoryGlobal[19], 1);
    TextDrawSetProportional(InventoryGlobal[19], 1);

    InventoryGlobal[20] = TextDrawCreate(182.108, 279.717, "Box");
    TextDrawLetterSize(InventoryGlobal[20], 0.000, 0.144);
    TextDrawTextSize(InventoryGlobal[20], 275.130, 0.000);
    TextDrawAlignment(InventoryGlobal[20], 1);
    TextDrawColor(InventoryGlobal[20], -1);
    TextDrawUseBox(InventoryGlobal[20], 1);
    TextDrawBoxColor(InventoryGlobal[20], 320017407);
    TextDrawSetShadow(InventoryGlobal[20], 0);
    TextDrawSetOutline(InventoryGlobal[20], 0);
    TextDrawBackgroundColor(InventoryGlobal[20], 255);
    TextDrawFont(InventoryGlobal[20], 1);
    TextDrawSetProportional(InventoryGlobal[20], 1);

    InventoryGlobal[21] = TextDrawCreate(181.770, 315.634, "Box");
    TextDrawLetterSize(InventoryGlobal[21], 0.000, 0.488);
    TextDrawTextSize(InventoryGlobal[21], 211.000, 0.000);
    TextDrawAlignment(InventoryGlobal[21], 1);
    TextDrawColor(InventoryGlobal[21], -1);
    TextDrawUseBox(InventoryGlobal[21], 1);
    TextDrawBoxColor(InventoryGlobal[21], 471604479);
    TextDrawSetShadow(InventoryGlobal[21], 0);
    TextDrawSetOutline(InventoryGlobal[21], 0);
    TextDrawBackgroundColor(InventoryGlobal[21], 255);
    TextDrawFont(InventoryGlobal[21], 1);
    TextDrawSetProportional(InventoryGlobal[21], 1);

    InventoryGlobal[22] = TextDrawCreate(219.473, 315.634, "Box");
    TextDrawLetterSize(InventoryGlobal[22], 0.000, 0.488);
    TextDrawTextSize(InventoryGlobal[22], 248.701, 0.000);
    TextDrawAlignment(InventoryGlobal[22], 1);
    TextDrawColor(InventoryGlobal[22], -1);
    TextDrawUseBox(InventoryGlobal[22], 1);
    TextDrawBoxColor(InventoryGlobal[22], 471604479);
    TextDrawSetShadow(InventoryGlobal[22], 0);
    TextDrawSetOutline(InventoryGlobal[22], 0);
    TextDrawBackgroundColor(InventoryGlobal[22], 255);
    TextDrawFont(InventoryGlobal[22], 1);
    TextDrawSetProportional(InventoryGlobal[22], 1);

    InventoryGlobal[23] = TextDrawCreate(256.876, 315.634, "Box");
    TextDrawLetterSize(InventoryGlobal[23], 0.000, 0.488);
    TextDrawTextSize(InventoryGlobal[23], 286.104, 0.000);
    TextDrawAlignment(InventoryGlobal[23], 1);
    TextDrawColor(InventoryGlobal[23], -1);
    TextDrawUseBox(InventoryGlobal[23], 1);
    TextDrawBoxColor(InventoryGlobal[23], 471604479);
    TextDrawSetShadow(InventoryGlobal[23], 0);
    TextDrawSetOutline(InventoryGlobal[23], 0);
    TextDrawBackgroundColor(InventoryGlobal[23], 255);
    TextDrawFont(InventoryGlobal[23], 1);
    TextDrawSetProportional(InventoryGlobal[23], 1);

    InventoryGlobal[24] = TextDrawCreate(181.770, 300.833, "Box");
    TextDrawLetterSize(InventoryGlobal[24], 0.000, 0.488);
    TextDrawTextSize(InventoryGlobal[24], 211.000, 0.000);
    TextDrawAlignment(InventoryGlobal[24], 1);
    TextDrawColor(InventoryGlobal[24], -1);
    TextDrawUseBox(InventoryGlobal[24], 1);
    TextDrawBoxColor(InventoryGlobal[24], 471604479);
    TextDrawSetShadow(InventoryGlobal[24], 0);
    TextDrawSetOutline(InventoryGlobal[24], 0);
    TextDrawBackgroundColor(InventoryGlobal[24], 255);
    TextDrawFont(InventoryGlobal[24], 1);
    TextDrawSetProportional(InventoryGlobal[24], 1);

    InventoryGlobal[25] = TextDrawCreate(219.473, 300.833, "Box");
    TextDrawLetterSize(InventoryGlobal[25], 0.000, 0.488);
    TextDrawTextSize(InventoryGlobal[25], 248.701, 0.000);
    TextDrawAlignment(InventoryGlobal[25], 1);
    TextDrawColor(InventoryGlobal[25], -1);
    TextDrawUseBox(InventoryGlobal[25], 1);
    TextDrawBoxColor(InventoryGlobal[25], 471604479);
    TextDrawSetShadow(InventoryGlobal[25], 0);
    TextDrawSetOutline(InventoryGlobal[25], 0);
    TextDrawBackgroundColor(InventoryGlobal[25], 255);
    TextDrawFont(InventoryGlobal[25], 1);
    TextDrawSetProportional(InventoryGlobal[25], 1);

    InventoryGlobal[26] = TextDrawCreate(256.876, 300.833, "Box");
    TextDrawLetterSize(InventoryGlobal[26], 0.000, 0.488);
    TextDrawTextSize(InventoryGlobal[26], 286.104, 0.000);
    TextDrawAlignment(InventoryGlobal[26], 1);
    TextDrawColor(InventoryGlobal[26], -1);
    TextDrawUseBox(InventoryGlobal[26], 1);
    TextDrawBoxColor(InventoryGlobal[26], 471604479);
    TextDrawSetShadow(InventoryGlobal[26], 0);
    TextDrawSetOutline(InventoryGlobal[26], 0);
    TextDrawBackgroundColor(InventoryGlobal[26], 255);
    TextDrawFont(InventoryGlobal[26], 1);
    TextDrawSetProportional(InventoryGlobal[26], 1);

    InventoryGlobal[27] = TextDrawCreate(219.272, 330.334, "Box");
    TextDrawLetterSize(InventoryGlobal[27], 0.000, 0.488);
    TextDrawTextSize(InventoryGlobal[27], 248.501, 0.000);
    TextDrawAlignment(InventoryGlobal[27], 1);
    TextDrawColor(InventoryGlobal[27], -1);
    TextDrawUseBox(InventoryGlobal[27], 1);
    TextDrawBoxColor(InventoryGlobal[27], 1848345343);
    TextDrawSetShadow(InventoryGlobal[27], 0);
    TextDrawSetOutline(InventoryGlobal[27], 0);
    TextDrawBackgroundColor(InventoryGlobal[27], 255);
    TextDrawFont(InventoryGlobal[27], 1);
    TextDrawSetProportional(InventoryGlobal[27], 1);

    InventoryGlobal[28] = TextDrawCreate(305.950, 312.433, "Box");
    TextDrawLetterSize(InventoryGlobal[28], 0.000, 1.098);
    TextDrawTextSize(InventoryGlobal[28], 343.000, 0.000);
    TextDrawAlignment(InventoryGlobal[28], 1);
    TextDrawColor(InventoryGlobal[28], -1);
    TextDrawUseBox(InventoryGlobal[28], 1);
    TextDrawBoxColor(InventoryGlobal[28], 1848345343);
    TextDrawSetShadow(InventoryGlobal[28], 0);
    TextDrawSetOutline(InventoryGlobal[28], 0);
    TextDrawBackgroundColor(InventoryGlobal[28], 255);
    TextDrawFont(InventoryGlobal[28], 1);
    TextDrawSetProportional(InventoryGlobal[28], 1);

    InventoryGlobal[29] = TextDrawCreate(356.153, 312.433, "Box");
    TextDrawLetterSize(InventoryGlobal[29], 0.000, 1.098);
    TextDrawTextSize(InventoryGlobal[29], 393.203, 0.000);
    TextDrawAlignment(InventoryGlobal[29], 1);
    TextDrawColor(InventoryGlobal[29], -1);
    TextDrawUseBox(InventoryGlobal[29], 1);
    TextDrawBoxColor(InventoryGlobal[29], 1848345343);
    TextDrawSetShadow(InventoryGlobal[29], 0);
    TextDrawSetOutline(InventoryGlobal[29], 0);
    TextDrawBackgroundColor(InventoryGlobal[29], 255);
    TextDrawFont(InventoryGlobal[29], 1);
    TextDrawSetProportional(InventoryGlobal[29], 1);

    InventoryGlobal[30] = TextDrawCreate(406.054, 312.433, "Box");
    TextDrawLetterSize(InventoryGlobal[30], 0.000, 1.098);
    TextDrawTextSize(InventoryGlobal[30], 443.105, 0.000);
    TextDrawAlignment(InventoryGlobal[30], 1);
    TextDrawColor(InventoryGlobal[30], -1);
    TextDrawUseBox(InventoryGlobal[30], 1);
    TextDrawBoxColor(InventoryGlobal[30], 1848345343);
    TextDrawSetShadow(InventoryGlobal[30], 0);
    TextDrawSetOutline(InventoryGlobal[30], 0);
    TextDrawBackgroundColor(InventoryGlobal[30], 255);
    TextDrawFont(InventoryGlobal[30], 1);
    TextDrawSetProportional(InventoryGlobal[30], 1);

    InventoryGlobal[31] = TextDrawCreate(455.157, 312.433, "Box");
    TextDrawLetterSize(InventoryGlobal[31], 0.000, 1.098);
    TextDrawTextSize(InventoryGlobal[31], 492.209, 0.000);
    TextDrawAlignment(InventoryGlobal[31], 1);
    TextDrawColor(InventoryGlobal[31], -1);
    TextDrawUseBox(InventoryGlobal[31], 1);
    TextDrawBoxColor(InventoryGlobal[31], 1848345343);
    TextDrawSetShadow(InventoryGlobal[31], 0);
    TextDrawSetOutline(InventoryGlobal[31], 0);
    TextDrawBackgroundColor(InventoryGlobal[31], 255);
    TextDrawFont(InventoryGlobal[31], 1);
    TextDrawSetProportional(InventoryGlobal[31], 1);

}

CreateInventoryTDPlayer(playerid)
{
    InventorySlot[playerid][0] = CreatePlayerTextDraw(playerid, 184.113, 130.466, "_");
    PlayerTextDrawTextSize(playerid, InventorySlot[playerid][0], 26.000, 31.000);
    PlayerTextDrawAlignment(playerid, InventorySlot[playerid][0], 1);
    PlayerTextDrawColor(playerid, InventorySlot[playerid][0], -1);
    PlayerTextDrawSetShadow(playerid, InventorySlot[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, InventorySlot[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, InventorySlot[playerid][0], 471604666);
    PlayerTextDrawFont(playerid, InventorySlot[playerid][0], 5);
    PlayerTextDrawSetProportional(playerid, InventorySlot[playerid][0], 0);
    PlayerTextDrawSetPreviewModel(playerid, InventorySlot[playerid][0], 1649);
    PlayerTextDrawSetPreviewRot(playerid, InventorySlot[playerid][0], 0.000, 0.000, 90.000, 1.000);
    PlayerTextDrawSetPreviewVehCol(playerid, InventorySlot[playerid][0], 0, 0);
    PlayerTextDrawSetSelectable(playerid, InventorySlot[playerid][0], 1);

    InventorySlot[playerid][1] = CreatePlayerTextDraw(playerid, 184.113, 163.667, "_");
    PlayerTextDrawTextSize(playerid, InventorySlot[playerid][1], 26.000, 31.000);
    PlayerTextDrawAlignment(playerid, InventorySlot[playerid][1], 1);
    PlayerTextDrawColor(playerid, InventorySlot[playerid][1], -1);
    PlayerTextDrawSetShadow(playerid, InventorySlot[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, InventorySlot[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, InventorySlot[playerid][1], 471604666);
    PlayerTextDrawFont(playerid, InventorySlot[playerid][1], 5);
    PlayerTextDrawSetProportional(playerid, InventorySlot[playerid][1], 0);
    PlayerTextDrawSetPreviewModel(playerid, InventorySlot[playerid][1], 1649);
    PlayerTextDrawSetPreviewRot(playerid, InventorySlot[playerid][1], 0.000, 0.000, 90.000, 1.000);
    PlayerTextDrawSetPreviewVehCol(playerid, InventorySlot[playerid][1], 0, 0);
    PlayerTextDrawSetSelectable(playerid, InventorySlot[playerid][1], 1);

    InventorySlot[playerid][2] = CreatePlayerTextDraw(playerid, 184.113, 196.970, "_");
    PlayerTextDrawTextSize(playerid, InventorySlot[playerid][2], 26.000, 31.000);
    PlayerTextDrawAlignment(playerid, InventorySlot[playerid][2], 1);
    PlayerTextDrawColor(playerid, InventorySlot[playerid][2], -1);
    PlayerTextDrawSetShadow(playerid, InventorySlot[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, InventorySlot[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, InventorySlot[playerid][2], 471604666);
    PlayerTextDrawFont(playerid, InventorySlot[playerid][2], 5);
    PlayerTextDrawSetProportional(playerid, InventorySlot[playerid][2], 0);
    PlayerTextDrawSetPreviewModel(playerid, InventorySlot[playerid][2], 1649);
    PlayerTextDrawSetPreviewRot(playerid, InventorySlot[playerid][2], 0.000, 0.000, 90.000, 1.000);
    PlayerTextDrawSetPreviewVehCol(playerid, InventorySlot[playerid][2], 0, 0);
    PlayerTextDrawSetSelectable(playerid, InventorySlot[playerid][2], 1);

    InventorySlot[playerid][3] = CreatePlayerTextDraw(playerid, 257.618, 130.466, "_");
    PlayerTextDrawTextSize(playerid, InventorySlot[playerid][3], 26.000, 31.000);
    PlayerTextDrawAlignment(playerid, InventorySlot[playerid][3], 1);
    PlayerTextDrawColor(playerid, InventorySlot[playerid][3], -1);
    PlayerTextDrawSetShadow(playerid, InventorySlot[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, InventorySlot[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, InventorySlot[playerid][3], 471604666);
    PlayerTextDrawFont(playerid, InventorySlot[playerid][3], 5);
    PlayerTextDrawSetProportional(playerid, InventorySlot[playerid][3], 0);
    PlayerTextDrawSetPreviewModel(playerid, InventorySlot[playerid][3], 1649);
    PlayerTextDrawSetPreviewRot(playerid, InventorySlot[playerid][3], 0.000, 0.000, 90.000, 1.000);
    PlayerTextDrawSetPreviewVehCol(playerid, InventorySlot[playerid][3], 0, 0);
    PlayerTextDrawSetSelectable(playerid, InventorySlot[playerid][3], 1);

    InventorySlot[playerid][4] = CreatePlayerTextDraw(playerid, 257.618, 163.667, "_");
    PlayerTextDrawTextSize(playerid, InventorySlot[playerid][4], 26.000, 31.000);
    PlayerTextDrawAlignment(playerid, InventorySlot[playerid][4], 1);
    PlayerTextDrawColor(playerid, InventorySlot[playerid][4], -1);
    PlayerTextDrawSetShadow(playerid, InventorySlot[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, InventorySlot[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, InventorySlot[playerid][4], 471604666);
    PlayerTextDrawFont(playerid, InventorySlot[playerid][4], 5);
    PlayerTextDrawSetProportional(playerid, InventorySlot[playerid][4], 0);
    PlayerTextDrawSetPreviewModel(playerid, InventorySlot[playerid][4], 1649);
    PlayerTextDrawSetPreviewRot(playerid, InventorySlot[playerid][4], 0.000, 0.000, 90.000, 1.000);
    PlayerTextDrawSetPreviewVehCol(playerid, InventorySlot[playerid][4], 0, 0);
    PlayerTextDrawSetSelectable(playerid, InventorySlot[playerid][4], 1);

    InventorySlot[playerid][5] = CreatePlayerTextDraw(playerid, 257.618, 196.970, "_");
    PlayerTextDrawTextSize(playerid, InventorySlot[playerid][5], 26.000, 31.000);
    PlayerTextDrawAlignment(playerid, InventorySlot[playerid][5], 1);
    PlayerTextDrawColor(playerid, InventorySlot[playerid][5], -1);
    PlayerTextDrawSetShadow(playerid, InventorySlot[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, InventorySlot[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, InventorySlot[playerid][5], 471604666);
    PlayerTextDrawFont(playerid, InventorySlot[playerid][5], 5);
    PlayerTextDrawSetProportional(playerid, InventorySlot[playerid][5], 0);
    PlayerTextDrawSetPreviewModel(playerid, InventorySlot[playerid][5], 1649);
    PlayerTextDrawSetPreviewRot(playerid, InventorySlot[playerid][5], 0.000, 0.000, 90.000, 1.000);
    PlayerTextDrawSetPreviewVehCol(playerid, InventorySlot[playerid][5], 0, 0);
    PlayerTextDrawSetSelectable(playerid, InventorySlot[playerid][5], 1);

    InventorySlot[playerid][6] = CreatePlayerTextDraw(playerid, 305.087, 126.970, "_");
    PlayerTextDrawTextSize(playerid, InventorySlot[playerid][6], 28.000, 38.000);
    PlayerTextDrawAlignment(playerid, InventorySlot[playerid][6], 1);
    PlayerTextDrawColor(playerid, InventorySlot[playerid][6], -1);
    PlayerTextDrawSetShadow(playerid, InventorySlot[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, InventorySlot[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, InventorySlot[playerid][6], 471604666);
    PlayerTextDrawFont(playerid, InventorySlot[playerid][6], 5);
    PlayerTextDrawSetProportional(playerid, InventorySlot[playerid][6], 0);
    PlayerTextDrawSetPreviewModel(playerid, InventorySlot[playerid][6], 1649);
    PlayerTextDrawSetPreviewRot(playerid, InventorySlot[playerid][6], 1.000, 0.000, 90.000, 1.000);
    PlayerTextDrawSetPreviewVehCol(playerid, InventorySlot[playerid][6], 0, 0);
    PlayerTextDrawSetSelectable(playerid, InventorySlot[playerid][6], 1);

    InventorySlot[playerid][7] = CreatePlayerTextDraw(playerid, 336.415, 126.970, "_");
    PlayerTextDrawTextSize(playerid, InventorySlot[playerid][7], 28.000, 37.000);
    PlayerTextDrawAlignment(playerid, InventorySlot[playerid][7], 1);
    PlayerTextDrawColor(playerid, InventorySlot[playerid][7], -1);
    PlayerTextDrawSetShadow(playerid, InventorySlot[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, InventorySlot[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, InventorySlot[playerid][7], 471604666);
    PlayerTextDrawFont(playerid, InventorySlot[playerid][7], 5);
    PlayerTextDrawSetProportional(playerid, InventorySlot[playerid][7], 0);
    PlayerTextDrawSetPreviewModel(playerid, InventorySlot[playerid][7], 1649);
    PlayerTextDrawSetPreviewRot(playerid, InventorySlot[playerid][7], 0.000, 0.000, 90.000, 1.000);
    PlayerTextDrawSetPreviewVehCol(playerid, InventorySlot[playerid][7], 0, 0);
    PlayerTextDrawSetSelectable(playerid, InventorySlot[playerid][7], 1);

    InventorySlot[playerid][8] = CreatePlayerTextDraw(playerid, 368.743, 126.970, "_");
    PlayerTextDrawTextSize(playerid, InventorySlot[playerid][8], 28.000, 37.000);
    PlayerTextDrawAlignment(playerid, InventorySlot[playerid][8], 1);
    PlayerTextDrawColor(playerid, InventorySlot[playerid][8], -1);
    PlayerTextDrawSetShadow(playerid, InventorySlot[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, InventorySlot[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, InventorySlot[playerid][8], 471604666);
    PlayerTextDrawFont(playerid, InventorySlot[playerid][8], 5);
    PlayerTextDrawSetProportional(playerid, InventorySlot[playerid][8], 0);
    PlayerTextDrawSetPreviewModel(playerid, InventorySlot[playerid][8], 1649);
    PlayerTextDrawSetPreviewRot(playerid, InventorySlot[playerid][8], 0.000, 0.000, 90.000, 1.000);
    PlayerTextDrawSetPreviewVehCol(playerid, InventorySlot[playerid][8], 0, 0);
    PlayerTextDrawSetSelectable(playerid, InventorySlot[playerid][8], 1);

    InventorySlot[playerid][9] = CreatePlayerTextDraw(playerid, 401.071, 126.970, "_");
    PlayerTextDrawTextSize(playerid, InventorySlot[playerid][9], 28.000, 37.000);
    PlayerTextDrawAlignment(playerid, InventorySlot[playerid][9], 1);
    PlayerTextDrawColor(playerid, InventorySlot[playerid][9], -1);
    PlayerTextDrawSetShadow(playerid, InventorySlot[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, InventorySlot[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, InventorySlot[playerid][9], 471604666);
    PlayerTextDrawFont(playerid, InventorySlot[playerid][9], 5);
    PlayerTextDrawSetProportional(playerid, InventorySlot[playerid][9], 0);
    PlayerTextDrawSetPreviewModel(playerid, InventorySlot[playerid][9], 1649);
    PlayerTextDrawSetPreviewRot(playerid, InventorySlot[playerid][9], 0.000, 0.000, 90.000, 1.000);
    PlayerTextDrawSetPreviewVehCol(playerid, InventorySlot[playerid][9], 0, 0);
    PlayerTextDrawSetSelectable(playerid, InventorySlot[playerid][9], 1);

    InventorySlot[playerid][10] = CreatePlayerTextDraw(playerid, 433.429, 126.970, "_");
    PlayerTextDrawTextSize(playerid, InventorySlot[playerid][10], 28.000, 37.000);
    PlayerTextDrawAlignment(playerid, InventorySlot[playerid][10], 1);
    PlayerTextDrawColor(playerid, InventorySlot[playerid][10], -1);
    PlayerTextDrawSetShadow(playerid, InventorySlot[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, InventorySlot[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, InventorySlot[playerid][10], 471604666);
    PlayerTextDrawFont(playerid, InventorySlot[playerid][10], 5);
    PlayerTextDrawSetProportional(playerid, InventorySlot[playerid][10], 0);
    PlayerTextDrawSetPreviewModel(playerid, InventorySlot[playerid][10], 1649);
    PlayerTextDrawSetPreviewRot(playerid, InventorySlot[playerid][10], 0.000, 0.000, 90.000, 1.000);
    PlayerTextDrawSetPreviewVehCol(playerid, InventorySlot[playerid][10], 0, 0);
    PlayerTextDrawSetSelectable(playerid, InventorySlot[playerid][10], 1);

    InventorySlot[playerid][11] = CreatePlayerTextDraw(playerid, 465.959, 127.053, "_");
    PlayerTextDrawTextSize(playerid, InventorySlot[playerid][11], 28.000, 37.000);
    PlayerTextDrawAlignment(playerid, InventorySlot[playerid][11], 1);
    PlayerTextDrawColor(playerid, InventorySlot[playerid][11], -1);
    PlayerTextDrawSetShadow(playerid, InventorySlot[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, InventorySlot[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, InventorySlot[playerid][11], 471604666);
    PlayerTextDrawFont(playerid, InventorySlot[playerid][11], 5);
    PlayerTextDrawSetProportional(playerid, InventorySlot[playerid][11], 0);
    PlayerTextDrawSetPreviewModel(playerid, InventorySlot[playerid][11], 1649);
    PlayerTextDrawSetPreviewRot(playerid, InventorySlot[playerid][11], 0.000, 0.000, 90.000, 1.000);
    PlayerTextDrawSetPreviewVehCol(playerid, InventorySlot[playerid][11], 0, 0);
    PlayerTextDrawSetSelectable(playerid, InventorySlot[playerid][11], 1);

    InventorySlot[playerid][12] = CreatePlayerTextDraw(playerid, 304.087, 171.302, "_");
    PlayerTextDrawTextSize(playerid, InventorySlot[playerid][12], 28.000, 37.000);
    PlayerTextDrawAlignment(playerid, InventorySlot[playerid][12], 1);
    PlayerTextDrawColor(playerid, InventorySlot[playerid][12], -1);
    PlayerTextDrawSetShadow(playerid, InventorySlot[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, InventorySlot[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, InventorySlot[playerid][12], 471604666);
    PlayerTextDrawFont(playerid, InventorySlot[playerid][12], 5);
    PlayerTextDrawSetProportional(playerid, InventorySlot[playerid][12], 0);
    PlayerTextDrawSetPreviewModel(playerid, InventorySlot[playerid][12], 1649);
    PlayerTextDrawSetPreviewRot(playerid, InventorySlot[playerid][12], 0.000, 0.000, 90.000, 1.000);
    PlayerTextDrawSetPreviewVehCol(playerid, InventorySlot[playerid][12], 0, 0);
    PlayerTextDrawSetSelectable(playerid, InventorySlot[playerid][12], 1);

    InventorySlot[playerid][13] = CreatePlayerTextDraw(playerid, 336.415, 171.302, "_");
    PlayerTextDrawTextSize(playerid, InventorySlot[playerid][13], 28.000, 37.000);
    PlayerTextDrawAlignment(playerid, InventorySlot[playerid][13], 1);
    PlayerTextDrawColor(playerid, InventorySlot[playerid][13], -1);
    PlayerTextDrawSetShadow(playerid, InventorySlot[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, InventorySlot[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, InventorySlot[playerid][13], 471604666);
    PlayerTextDrawFont(playerid, InventorySlot[playerid][13], 5);
    PlayerTextDrawSetProportional(playerid, InventorySlot[playerid][13], 0);
    PlayerTextDrawSetPreviewModel(playerid, InventorySlot[playerid][13], 1649);
    PlayerTextDrawSetPreviewRot(playerid, InventorySlot[playerid][13], 0.000, 0.000, 90.000, 1.000);
    PlayerTextDrawSetPreviewVehCol(playerid, InventorySlot[playerid][13], 0, 0);
    PlayerTextDrawSetSelectable(playerid, InventorySlot[playerid][13], 1);

    InventorySlot[playerid][14] = CreatePlayerTextDraw(playerid, 368.743, 171.302, "_");
    PlayerTextDrawTextSize(playerid, InventorySlot[playerid][14], 28.000, 37.000);
    PlayerTextDrawAlignment(playerid, InventorySlot[playerid][14], 1);
    PlayerTextDrawColor(playerid, InventorySlot[playerid][14], -1);
    PlayerTextDrawSetShadow(playerid, InventorySlot[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, InventorySlot[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, InventorySlot[playerid][14], 471604666);
    PlayerTextDrawFont(playerid, InventorySlot[playerid][14], 5);
    PlayerTextDrawSetProportional(playerid, InventorySlot[playerid][14], 0);
    PlayerTextDrawSetPreviewModel(playerid, InventorySlot[playerid][14], 1649);
    PlayerTextDrawSetPreviewRot(playerid, InventorySlot[playerid][14], 0.000, 0.000, 90.000, 1.000);
    PlayerTextDrawSetPreviewVehCol(playerid, InventorySlot[playerid][14], 0, 0);
    PlayerTextDrawSetSelectable(playerid, InventorySlot[playerid][14], 1);

    InventorySlot[playerid][15] = CreatePlayerTextDraw(playerid, 401.071, 171.302, "_");
    PlayerTextDrawTextSize(playerid, InventorySlot[playerid][15], 28.000, 37.000);
    PlayerTextDrawAlignment(playerid, InventorySlot[playerid][15], 1);
    PlayerTextDrawColor(playerid, InventorySlot[playerid][15], -1);
    PlayerTextDrawSetShadow(playerid, InventorySlot[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, InventorySlot[playerid][15], 0);
    PlayerTextDrawBackgroundColor(playerid, InventorySlot[playerid][15], 471604666);
    PlayerTextDrawFont(playerid, InventorySlot[playerid][15], 5);
    PlayerTextDrawSetProportional(playerid, InventorySlot[playerid][15], 0);
    PlayerTextDrawSetPreviewModel(playerid, InventorySlot[playerid][15], 1649);
    PlayerTextDrawSetPreviewRot(playerid, InventorySlot[playerid][15], 0.000, 0.000, 90.000, 1.000);
    PlayerTextDrawSetPreviewVehCol(playerid, InventorySlot[playerid][15], 0, 0);
    PlayerTextDrawSetSelectable(playerid, InventorySlot[playerid][15], 1);

    InventorySlot[playerid][16] = CreatePlayerTextDraw(playerid, 433.429, 171.302, "_");
    PlayerTextDrawTextSize(playerid, InventorySlot[playerid][16], 28.000, 37.000);
    PlayerTextDrawAlignment(playerid, InventorySlot[playerid][16], 1);
    PlayerTextDrawColor(playerid, InventorySlot[playerid][16], -1);
    PlayerTextDrawSetShadow(playerid, InventorySlot[playerid][16], 0);
    PlayerTextDrawSetOutline(playerid, InventorySlot[playerid][16], 0);
    PlayerTextDrawBackgroundColor(playerid, InventorySlot[playerid][16], 471604666);
    PlayerTextDrawFont(playerid, InventorySlot[playerid][16], 5);
    PlayerTextDrawSetProportional(playerid, InventorySlot[playerid][16], 0);
    PlayerTextDrawSetPreviewModel(playerid, InventorySlot[playerid][16], 1649);
    PlayerTextDrawSetPreviewRot(playerid, InventorySlot[playerid][16], 0.000, 0.000, 90.000, 1.000);
    PlayerTextDrawSetPreviewVehCol(playerid, InventorySlot[playerid][16], 0, 0);
    PlayerTextDrawSetSelectable(playerid, InventorySlot[playerid][16], 1);

    InventorySlot[playerid][17] = CreatePlayerTextDraw(playerid, 465.959, 171.386, "_");
    PlayerTextDrawTextSize(playerid, InventorySlot[playerid][17], 28.000, 37.000);
    PlayerTextDrawAlignment(playerid, InventorySlot[playerid][17], 1);
    PlayerTextDrawColor(playerid, InventorySlot[playerid][17], -1);
    PlayerTextDrawSetShadow(playerid, InventorySlot[playerid][17], 0);
    PlayerTextDrawSetOutline(playerid, InventorySlot[playerid][17], 0);
    PlayerTextDrawBackgroundColor(playerid, InventorySlot[playerid][17], 471604666);
    PlayerTextDrawFont(playerid, InventorySlot[playerid][17], 5);
    PlayerTextDrawSetProportional(playerid, InventorySlot[playerid][17], 0);
    PlayerTextDrawSetPreviewModel(playerid, InventorySlot[playerid][17], 1649);
    PlayerTextDrawSetPreviewRot(playerid, InventorySlot[playerid][17], 0.000, 0.000, 90.000, 1.000);
    PlayerTextDrawSetPreviewVehCol(playerid, InventorySlot[playerid][17], 0, 0);
    PlayerTextDrawSetSelectable(playerid, InventorySlot[playerid][17], 1);

    InventorySlot[playerid][18] = CreatePlayerTextDraw(playerid, 304.087, 215.820, "_");
    PlayerTextDrawTextSize(playerid, InventorySlot[playerid][18], 28.000, 37.000);
    PlayerTextDrawAlignment(playerid, InventorySlot[playerid][18], 1);
    PlayerTextDrawColor(playerid, InventorySlot[playerid][18], -1);
    PlayerTextDrawSetShadow(playerid, InventorySlot[playerid][18], 0);
    PlayerTextDrawSetOutline(playerid, InventorySlot[playerid][18], 0);
    PlayerTextDrawBackgroundColor(playerid, InventorySlot[playerid][18], 471604666);
    PlayerTextDrawFont(playerid, InventorySlot[playerid][18], 5);
    PlayerTextDrawSetProportional(playerid, InventorySlot[playerid][18], 0);
    PlayerTextDrawSetPreviewModel(playerid, InventorySlot[playerid][18], 1649);
    PlayerTextDrawSetPreviewRot(playerid, InventorySlot[playerid][18], 0.000, 0.000, 90.000, 1.000);
    PlayerTextDrawSetPreviewVehCol(playerid, InventorySlot[playerid][18], 0, 0);
    PlayerTextDrawSetSelectable(playerid, InventorySlot[playerid][18], 1);

    InventorySlot[playerid][19] = CreatePlayerTextDraw(playerid, 336.415, 215.820, "_");
    PlayerTextDrawTextSize(playerid, InventorySlot[playerid][19], 28.000, 37.000);
    PlayerTextDrawAlignment(playerid, InventorySlot[playerid][19], 1);
    PlayerTextDrawColor(playerid, InventorySlot[playerid][19], -1);
    PlayerTextDrawSetShadow(playerid, InventorySlot[playerid][19], 0);
    PlayerTextDrawSetOutline(playerid, InventorySlot[playerid][19], 0);
    PlayerTextDrawBackgroundColor(playerid, InventorySlot[playerid][19], 471604666);
    PlayerTextDrawFont(playerid, InventorySlot[playerid][19], 5);
    PlayerTextDrawSetProportional(playerid, InventorySlot[playerid][19], 0);
    PlayerTextDrawSetPreviewModel(playerid, InventorySlot[playerid][19], 1649);
    PlayerTextDrawSetPreviewRot(playerid, InventorySlot[playerid][19], 0.000, 0.000, 90.000, 1.000);
    PlayerTextDrawSetPreviewVehCol(playerid, InventorySlot[playerid][19], 0, 0);
    PlayerTextDrawSetSelectable(playerid, InventorySlot[playerid][19], 1);

    InventorySlot[playerid][20] = CreatePlayerTextDraw(playerid, 368.743, 215.820, "_");
    PlayerTextDrawTextSize(playerid, InventorySlot[playerid][20], 28.000, 37.000);
    PlayerTextDrawAlignment(playerid, InventorySlot[playerid][20], 1);
    PlayerTextDrawColor(playerid, InventorySlot[playerid][20], -1);
    PlayerTextDrawSetShadow(playerid, InventorySlot[playerid][20], 0);
    PlayerTextDrawSetOutline(playerid, InventorySlot[playerid][20], 0);
    PlayerTextDrawBackgroundColor(playerid, InventorySlot[playerid][20], 471604666);
    PlayerTextDrawFont(playerid, InventorySlot[playerid][20], 5);
    PlayerTextDrawSetProportional(playerid, InventorySlot[playerid][20], 0);
    PlayerTextDrawSetPreviewModel(playerid, InventorySlot[playerid][20], 1649);
    PlayerTextDrawSetPreviewRot(playerid, InventorySlot[playerid][20], 0.000, 0.000, 90.000, 1.000);
    PlayerTextDrawSetPreviewVehCol(playerid, InventorySlot[playerid][20], 0, 0);
    PlayerTextDrawSetSelectable(playerid, InventorySlot[playerid][20], 1);

    InventorySlot[playerid][21] = CreatePlayerTextDraw(playerid, 401.071, 215.820, "_");
    PlayerTextDrawTextSize(playerid, InventorySlot[playerid][21], 28.000, 37.000);
    PlayerTextDrawAlignment(playerid, InventorySlot[playerid][21], 1);
    PlayerTextDrawColor(playerid, InventorySlot[playerid][21], -1);
    PlayerTextDrawSetShadow(playerid, InventorySlot[playerid][21], 0);
    PlayerTextDrawSetOutline(playerid, InventorySlot[playerid][21], 0);
    PlayerTextDrawBackgroundColor(playerid, InventorySlot[playerid][21], 471604666);
    PlayerTextDrawFont(playerid, InventorySlot[playerid][21], 5);
    PlayerTextDrawSetProportional(playerid, InventorySlot[playerid][21], 0);
    PlayerTextDrawSetPreviewModel(playerid, InventorySlot[playerid][21], 1649);
    PlayerTextDrawSetPreviewRot(playerid, InventorySlot[playerid][21], 0.000, 0.000, 90.000, 1.000);
    PlayerTextDrawSetPreviewVehCol(playerid, InventorySlot[playerid][21], 0, 0);
    PlayerTextDrawSetSelectable(playerid, InventorySlot[playerid][21], 1);

    InventorySlot[playerid][22] = CreatePlayerTextDraw(playerid, 433.429, 215.820, "_");
    PlayerTextDrawTextSize(playerid, InventorySlot[playerid][22], 28.000, 37.000);
    PlayerTextDrawAlignment(playerid, InventorySlot[playerid][22], 1);
    PlayerTextDrawColor(playerid, InventorySlot[playerid][22], -1);
    PlayerTextDrawSetShadow(playerid, InventorySlot[playerid][22], 0);
    PlayerTextDrawSetOutline(playerid, InventorySlot[playerid][22], 0);
    PlayerTextDrawBackgroundColor(playerid, InventorySlot[playerid][22], 471604666);
    PlayerTextDrawFont(playerid, InventorySlot[playerid][22], 5);
    PlayerTextDrawSetProportional(playerid, InventorySlot[playerid][22], 0);
    PlayerTextDrawSetPreviewModel(playerid, InventorySlot[playerid][22], 1649);
    PlayerTextDrawSetPreviewRot(playerid, InventorySlot[playerid][22], 0.000, 0.000, 90.000, 1.000);
    PlayerTextDrawSetPreviewVehCol(playerid, InventorySlot[playerid][22], 0, 0);
    PlayerTextDrawSetSelectable(playerid, InventorySlot[playerid][22], 1);

    InventorySlot[playerid][23] = CreatePlayerTextDraw(playerid, 465.959, 215.901, "_");
    PlayerTextDrawTextSize(playerid, InventorySlot[playerid][23], 28.000, 37.000);
    PlayerTextDrawAlignment(playerid, InventorySlot[playerid][23], 1);
    PlayerTextDrawColor(playerid, InventorySlot[playerid][23], -1);
    PlayerTextDrawSetShadow(playerid, InventorySlot[playerid][23], 0);
    PlayerTextDrawSetOutline(playerid, InventorySlot[playerid][23], 0);
    PlayerTextDrawBackgroundColor(playerid, InventorySlot[playerid][23], 471604666);
    PlayerTextDrawFont(playerid, InventorySlot[playerid][23], 5);
    PlayerTextDrawSetProportional(playerid, InventorySlot[playerid][23], 0);
    PlayerTextDrawSetPreviewModel(playerid, InventorySlot[playerid][23], 1649);
    PlayerTextDrawSetPreviewRot(playerid, InventorySlot[playerid][23], 0.000, 0.000, 90.000, 1.000);
    PlayerTextDrawSetPreviewVehCol(playerid, InventorySlot[playerid][23], 0, 0);
    PlayerTextDrawSetSelectable(playerid, InventorySlot[playerid][23], 1);

    InventorySlot[playerid][24] = CreatePlayerTextDraw(playerid, 304.087, 260.735, "_");
    PlayerTextDrawTextSize(playerid, InventorySlot[playerid][24], 28.000, 37.000);
    PlayerTextDrawAlignment(playerid, InventorySlot[playerid][24], 1);
    PlayerTextDrawColor(playerid, InventorySlot[playerid][24], -1);
    PlayerTextDrawSetShadow(playerid, InventorySlot[playerid][24], 0);
    PlayerTextDrawSetOutline(playerid, InventorySlot[playerid][24], 0);
    PlayerTextDrawBackgroundColor(playerid, InventorySlot[playerid][24], 471604666);
    PlayerTextDrawFont(playerid, InventorySlot[playerid][24], 5);
    PlayerTextDrawSetProportional(playerid, InventorySlot[playerid][24], 0);
    PlayerTextDrawSetPreviewModel(playerid, InventorySlot[playerid][24], 1649);
    PlayerTextDrawSetPreviewRot(playerid, InventorySlot[playerid][24], 0.000, 0.000, 90.000, 1.000);
    PlayerTextDrawSetPreviewVehCol(playerid, InventorySlot[playerid][24], 0, 0);
    PlayerTextDrawSetSelectable(playerid, InventorySlot[playerid][24], 1);

    InventorySlot[playerid][25] = CreatePlayerTextDraw(playerid, 336.415, 260.735, "_");
    PlayerTextDrawTextSize(playerid, InventorySlot[playerid][25], 28.000, 37.000);
    PlayerTextDrawAlignment(playerid, InventorySlot[playerid][25], 1);
    PlayerTextDrawColor(playerid, InventorySlot[playerid][25], -1);
    PlayerTextDrawSetShadow(playerid, InventorySlot[playerid][25], 0);
    PlayerTextDrawSetOutline(playerid, InventorySlot[playerid][25], 0);
    PlayerTextDrawBackgroundColor(playerid, InventorySlot[playerid][25], 471604666);
    PlayerTextDrawFont(playerid, InventorySlot[playerid][25], 5);
    PlayerTextDrawSetProportional(playerid, InventorySlot[playerid][25], 0);
    PlayerTextDrawSetPreviewModel(playerid, InventorySlot[playerid][25], 1649);
    PlayerTextDrawSetPreviewRot(playerid, InventorySlot[playerid][25], 0.000, 0.000, 90.000, 1.000);
    PlayerTextDrawSetPreviewVehCol(playerid, InventorySlot[playerid][25], 0, 0);
    PlayerTextDrawSetSelectable(playerid, InventorySlot[playerid][25], 1);

    InventorySlot[playerid][26] = CreatePlayerTextDraw(playerid, 368.743, 260.735, "_");
    PlayerTextDrawTextSize(playerid, InventorySlot[playerid][26], 28.000, 37.000);
    PlayerTextDrawAlignment(playerid, InventorySlot[playerid][26], 1);
    PlayerTextDrawColor(playerid, InventorySlot[playerid][26], -1);
    PlayerTextDrawSetShadow(playerid, InventorySlot[playerid][26], 0);
    PlayerTextDrawSetOutline(playerid, InventorySlot[playerid][26], 0);
    PlayerTextDrawBackgroundColor(playerid, InventorySlot[playerid][26], 471604666);
    PlayerTextDrawFont(playerid, InventorySlot[playerid][26], 5);
    PlayerTextDrawSetProportional(playerid, InventorySlot[playerid][26], 0);
    PlayerTextDrawSetPreviewModel(playerid, InventorySlot[playerid][26], 1649);
    PlayerTextDrawSetPreviewRot(playerid, InventorySlot[playerid][26], 0.000, 0.000, 90.000, 1.000);
    PlayerTextDrawSetPreviewVehCol(playerid, InventorySlot[playerid][26], 0, 0);
    PlayerTextDrawSetSelectable(playerid, InventorySlot[playerid][26], 1);

    InventorySlot[playerid][27] = CreatePlayerTextDraw(playerid, 401.071, 260.735, "_");
    PlayerTextDrawTextSize(playerid, InventorySlot[playerid][27], 28.000, 37.000);
    PlayerTextDrawAlignment(playerid, InventorySlot[playerid][27], 1);
    PlayerTextDrawColor(playerid, InventorySlot[playerid][27], -1);
    PlayerTextDrawSetShadow(playerid, InventorySlot[playerid][27], 0);
    PlayerTextDrawSetOutline(playerid, InventorySlot[playerid][27], 0);
    PlayerTextDrawBackgroundColor(playerid, InventorySlot[playerid][27], 471604666);
    PlayerTextDrawFont(playerid, InventorySlot[playerid][27], 5);
    PlayerTextDrawSetProportional(playerid, InventorySlot[playerid][27], 0);
    PlayerTextDrawSetPreviewModel(playerid, InventorySlot[playerid][27], 1649);
    PlayerTextDrawSetPreviewRot(playerid, InventorySlot[playerid][27], 0.000, 0.000, 90.000, 1.000);
    PlayerTextDrawSetPreviewVehCol(playerid, InventorySlot[playerid][27], 0, 0);
    PlayerTextDrawSetSelectable(playerid, InventorySlot[playerid][27], 1);

    InventorySlot[playerid][28] = CreatePlayerTextDraw(playerid, 433.429, 260.735, "_");
    PlayerTextDrawTextSize(playerid, InventorySlot[playerid][28], 28.000, 37.000);
    PlayerTextDrawAlignment(playerid, InventorySlot[playerid][28], 1);
    PlayerTextDrawColor(playerid, InventorySlot[playerid][28], -1);
    PlayerTextDrawSetShadow(playerid, InventorySlot[playerid][28], 0);
    PlayerTextDrawSetOutline(playerid, InventorySlot[playerid][28], 0);
    PlayerTextDrawBackgroundColor(playerid, InventorySlot[playerid][28], 471604666);
    PlayerTextDrawFont(playerid, InventorySlot[playerid][28], 5);
    PlayerTextDrawSetProportional(playerid, InventorySlot[playerid][28], 0);
    PlayerTextDrawSetPreviewModel(playerid, InventorySlot[playerid][28], 1649);
    PlayerTextDrawSetPreviewRot(playerid, InventorySlot[playerid][28], 0.000, 0.000, 90.000, 1.000);
    PlayerTextDrawSetPreviewVehCol(playerid, InventorySlot[playerid][28], 0, 0);
    PlayerTextDrawSetSelectable(playerid, InventorySlot[playerid][28], 1);

    InventorySlot[playerid][29] = CreatePlayerTextDraw(playerid, 465.959, 260.820, "_");
    PlayerTextDrawTextSize(playerid, InventorySlot[playerid][29], 28.000, 37.000);
    PlayerTextDrawAlignment(playerid, InventorySlot[playerid][29], 1);
    PlayerTextDrawColor(playerid, InventorySlot[playerid][29], -1);
    PlayerTextDrawSetShadow(playerid, InventorySlot[playerid][29], 0);
    PlayerTextDrawSetOutline(playerid, InventorySlot[playerid][29], 0);
    PlayerTextDrawBackgroundColor(playerid, InventorySlot[playerid][29], 471604666);
    PlayerTextDrawFont(playerid, InventorySlot[playerid][29], 5);
    PlayerTextDrawSetProportional(playerid, InventorySlot[playerid][29], 0);
    PlayerTextDrawSetPreviewModel(playerid, InventorySlot[playerid][29], 1649);
    PlayerTextDrawSetPreviewRot(playerid, InventorySlot[playerid][29], 0.000, 0.000, 90.000, 1.000);
    PlayerTextDrawSetPreviewVehCol(playerid, InventorySlot[playerid][29], 0, 0);
    PlayerTextDrawSetSelectable(playerid, InventorySlot[playerid][29], 1);

    InventoryPlayer[playerid][0] = CreatePlayerTextDraw(playerid, 188.162, 122.333, "_");
    PlayerTextDrawTextSize(playerid, InventoryPlayer[playerid][0], 90.000, 110.000);
    PlayerTextDrawAlignment(playerid, InventoryPlayer[playerid][0], 1);
    PlayerTextDrawColor(playerid, InventoryPlayer[playerid][0], -1);
    PlayerTextDrawSetShadow(playerid, InventoryPlayer[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, InventoryPlayer[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, InventoryPlayer[playerid][0], 0);
    PlayerTextDrawFont(playerid, InventoryPlayer[playerid][0], 5);
    PlayerTextDrawSetProportional(playerid, InventoryPlayer[playerid][0], 0);
    PlayerTextDrawSetPreviewModel(playerid, InventoryPlayer[playerid][0], 293);
    PlayerTextDrawSetPreviewRot(playerid, InventoryPlayer[playerid][0], 0.000, 0.000, 0.000, 1.000);
    PlayerTextDrawSetPreviewVehCol(playerid, InventoryPlayer[playerid][0], 0, 0);

    InventoryPlayer[playerid][1] = CreatePlayerTextDraw(playerid, 279.221, 246.100, "90%");
    PlayerTextDrawLetterSize(playerid, InventoryPlayer[playerid][1], 0.112, 0.684);
    PlayerTextDrawAlignment(playerid, InventoryPlayer[playerid][1], 1);
    PlayerTextDrawColor(playerid, InventoryPlayer[playerid][1], -1);
    PlayerTextDrawSetShadow(playerid, InventoryPlayer[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, InventoryPlayer[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, InventoryPlayer[playerid][1], 255);
    PlayerTextDrawFont(playerid, InventoryPlayer[playerid][1], 1);
    PlayerTextDrawSetProportional(playerid, InventoryPlayer[playerid][1], 1);

    InventoryPlayer[playerid][2] = CreatePlayerTextDraw(playerid, 279.221, 261.700, "90%");
    PlayerTextDrawLetterSize(playerid, InventoryPlayer[playerid][2], 0.112, 0.684);
    PlayerTextDrawAlignment(playerid, InventoryPlayer[playerid][2], 1);
    PlayerTextDrawColor(playerid, InventoryPlayer[playerid][2], -1);
    PlayerTextDrawSetShadow(playerid, InventoryPlayer[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, InventoryPlayer[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, InventoryPlayer[playerid][2], 255);
    PlayerTextDrawFont(playerid, InventoryPlayer[playerid][2], 1);
    PlayerTextDrawSetProportional(playerid, InventoryPlayer[playerid][2], 1);

    InventoryPlayer[playerid][3] = CreatePlayerTextDraw(playerid, 279.221, 276.799, "90%");
    PlayerTextDrawLetterSize(playerid, InventoryPlayer[playerid][3], 0.112, 0.684);
    PlayerTextDrawAlignment(playerid, InventoryPlayer[playerid][3], 1);
    PlayerTextDrawColor(playerid, InventoryPlayer[playerid][3], -1);
    PlayerTextDrawSetShadow(playerid, InventoryPlayer[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, InventoryPlayer[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, InventoryPlayer[playerid][3], 255);
    PlayerTextDrawFont(playerid, InventoryPlayer[playerid][3], 1);
    PlayerTextDrawSetProportional(playerid, InventoryPlayer[playerid][3], 1);

    InventoryPlayer[playerid][4] = CreatePlayerTextDraw(playerid, 180.934, 246.666, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, InventoryPlayer[playerid][4], 0.017, 5.447);
    PlayerTextDrawAlignment(playerid, InventoryPlayer[playerid][4], 4);
    PlayerTextDrawColor(playerid, InventoryPlayer[playerid][4], 1848345343);
    PlayerTextDrawSetShadow(playerid, InventoryPlayer[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, InventoryPlayer[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, InventoryPlayer[playerid][4], 255);
    PlayerTextDrawFont(playerid, InventoryPlayer[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, InventoryPlayer[playerid][4], 0);

    InventoryPlayer[playerid][5] = CreatePlayerTextDraw(playerid, 180.934, 262.467, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, InventoryPlayer[playerid][5], 96.017, 5.447);
    PlayerTextDrawAlignment(playerid, InventoryPlayer[playerid][5], 1);
    PlayerTextDrawColor(playerid, InventoryPlayer[playerid][5], 1848345343);
    PlayerTextDrawSetShadow(playerid, InventoryPlayer[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, InventoryPlayer[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, InventoryPlayer[playerid][5], 255);
    PlayerTextDrawFont(playerid, InventoryPlayer[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, InventoryPlayer[playerid][5], 0);

    InventoryPlayer[playerid][6] = CreatePlayerTextDraw(playerid, 180.733, 277.566, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, InventoryPlayer[playerid][6], 96.197, 5.447);
    PlayerTextDrawAlignment(playerid, InventoryPlayer[playerid][6], 1);
    PlayerTextDrawColor(playerid, InventoryPlayer[playerid][6], 1848345343);
    PlayerTextDrawSetShadow(playerid, InventoryPlayer[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, InventoryPlayer[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, InventoryPlayer[playerid][6], 255);
    PlayerTextDrawFont(playerid, InventoryPlayer[playerid][6], 4);
    PlayerTextDrawSetProportional(playerid, InventoryPlayer[playerid][6], 0);

    InventoryPlayer[playerid][7] = CreatePlayerTextDraw(playerid, 381.368, 336.410, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, InventoryPlayer[playerid][7], 40.000, 2.000);
    PlayerTextDrawAlignment(playerid, InventoryPlayer[playerid][7], 1);
    PlayerTextDrawColor(playerid, InventoryPlayer[playerid][7], 1848345343);
    PlayerTextDrawSetShadow(playerid, InventoryPlayer[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, InventoryPlayer[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, InventoryPlayer[playerid][7], 255);
    PlayerTextDrawFont(playerid, InventoryPlayer[playerid][7], 7);
    PlayerTextDrawSetProportional(playerid, InventoryPlayer[playerid][7], 0);
    PlayerTextDrawSetSelectable(playerid, InventoryPlayer[playerid][7], 1);

    InventoryPlayer[playerid][8] = CreatePlayerTextDraw(playerid, 188.330, 299.648, "MENU");
    PlayerTextDrawLetterSize(playerid, InventoryPlayer[playerid][8], 0.171, 0.717);
    PlayerTextDrawTextSize(playerid, InventoryPlayer[playerid][8], 202.000, 3.500);
    PlayerTextDrawAlignment(playerid, InventoryPlayer[playerid][8], 1);
    PlayerTextDrawColor(playerid, InventoryPlayer[playerid][8], -1);
    PlayerTextDrawUseBox(playerid, InventoryPlayer[playerid][8], 1);
    PlayerTextDrawBoxColor(playerid, InventoryPlayer[playerid][8], 0);
    PlayerTextDrawSetShadow(playerid, InventoryPlayer[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, InventoryPlayer[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, InventoryPlayer[playerid][8], 255);
    PlayerTextDrawFont(playerid, InventoryPlayer[playerid][8], 1);
    PlayerTextDrawSetProportional(playerid, InventoryPlayer[playerid][8], 1);
    PlayerTextDrawSetSelectable(playerid, InventoryPlayer[playerid][8], 1);

    InventoryPlayer[playerid][9] = CreatePlayerTextDraw(playerid, 225.880, 329.015, "CLOSE");
    PlayerTextDrawLetterSize(playerid, InventoryPlayer[playerid][9], 0.171, 0.717);
    PlayerTextDrawTextSize(playerid, InventoryPlayer[playerid][9], 242.000, 3.500);
    PlayerTextDrawAlignment(playerid, InventoryPlayer[playerid][9], 1);
    PlayerTextDrawColor(playerid, InventoryPlayer[playerid][9], -1);
    PlayerTextDrawUseBox(playerid, InventoryPlayer[playerid][9], 1);
    PlayerTextDrawBoxColor(playerid, InventoryPlayer[playerid][9], 0);
    PlayerTextDrawSetShadow(playerid, InventoryPlayer[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, InventoryPlayer[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, InventoryPlayer[playerid][9], 255);
    PlayerTextDrawFont(playerid, InventoryPlayer[playerid][9], 1);
    PlayerTextDrawSetProportional(playerid, InventoryPlayer[playerid][9], 1);
    PlayerTextDrawSetSelectable(playerid, InventoryPlayer[playerid][9], 1);

    InventoryPlayer[playerid][10] = CreatePlayerTextDraw(playerid, 224.733, 299.648, "REPORT");
    PlayerTextDrawLetterSize(playerid, InventoryPlayer[playerid][10], 0.171, 0.717);
    PlayerTextDrawTextSize(playerid, InventoryPlayer[playerid][10], 244.000, 3.500);
    PlayerTextDrawAlignment(playerid, InventoryPlayer[playerid][10], 1);
    PlayerTextDrawColor(playerid, InventoryPlayer[playerid][10], -1);
    PlayerTextDrawUseBox(playerid, InventoryPlayer[playerid][10], 1);
    PlayerTextDrawBoxColor(playerid, InventoryPlayer[playerid][10], 0);
    PlayerTextDrawSetShadow(playerid, InventoryPlayer[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, InventoryPlayer[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, InventoryPlayer[playerid][10], 255);
    PlayerTextDrawFont(playerid, InventoryPlayer[playerid][10], 1);
    PlayerTextDrawSetProportional(playerid, InventoryPlayer[playerid][10], 1);
    PlayerTextDrawSetSelectable(playerid, InventoryPlayer[playerid][10], 1);

    InventoryPlayer[playerid][11] = CreatePlayerTextDraw(playerid, 261.234, 299.648, "DONATE");
    PlayerTextDrawLetterSize(playerid, InventoryPlayer[playerid][11], 0.171, 0.717);
    PlayerTextDrawTextSize(playerid, InventoryPlayer[playerid][11], 282.000, 3.500);
    PlayerTextDrawAlignment(playerid, InventoryPlayer[playerid][11], 1);
    PlayerTextDrawColor(playerid, InventoryPlayer[playerid][11], -1);
    PlayerTextDrawUseBox(playerid, InventoryPlayer[playerid][11], 1);
    PlayerTextDrawBoxColor(playerid, InventoryPlayer[playerid][11], 0);
    PlayerTextDrawSetShadow(playerid, InventoryPlayer[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, InventoryPlayer[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, InventoryPlayer[playerid][11], 255);
    PlayerTextDrawFont(playerid, InventoryPlayer[playerid][11], 1);
    PlayerTextDrawSetProportional(playerid, InventoryPlayer[playerid][11], 1);
    PlayerTextDrawSetSelectable(playerid, InventoryPlayer[playerid][11], 1);

    InventoryPlayer[playerid][12] = CreatePlayerTextDraw(playerid, 266.367, 314.467, "GPS");
    PlayerTextDrawLetterSize(playerid, InventoryPlayer[playerid][12], 0.171, 0.717);
    PlayerTextDrawTextSize(playerid, InventoryPlayer[playerid][12], 276.000, 3.500);
    PlayerTextDrawAlignment(playerid, InventoryPlayer[playerid][12], 1);
    PlayerTextDrawColor(playerid, InventoryPlayer[playerid][12], -1);
    PlayerTextDrawUseBox(playerid, InventoryPlayer[playerid][12], 1);
    PlayerTextDrawBoxColor(playerid, InventoryPlayer[playerid][12], 0);
    PlayerTextDrawSetShadow(playerid, InventoryPlayer[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, InventoryPlayer[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, InventoryPlayer[playerid][12], 255);
    PlayerTextDrawFont(playerid, InventoryPlayer[playerid][12], 1);
    PlayerTextDrawSetProportional(playerid, InventoryPlayer[playerid][12], 1);
    PlayerTextDrawSetSelectable(playerid, InventoryPlayer[playerid][12], 1);

    InventoryPlayer[playerid][13] = CreatePlayerTextDraw(playerid, 225.164, 314.665, "FAMILY");
    PlayerTextDrawLetterSize(playerid, InventoryPlayer[playerid][13], 0.171, 0.717);
    PlayerTextDrawTextSize(playerid, InventoryPlayer[playerid][13], 243.000, 3.500);
    PlayerTextDrawAlignment(playerid, InventoryPlayer[playerid][13], 1);
    PlayerTextDrawColor(playerid, InventoryPlayer[playerid][13], -1);
    PlayerTextDrawUseBox(playerid, InventoryPlayer[playerid][13], 1);
    PlayerTextDrawBoxColor(playerid, InventoryPlayer[playerid][13], 0);
    PlayerTextDrawSetShadow(playerid, InventoryPlayer[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, InventoryPlayer[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, InventoryPlayer[playerid][13], 255);
    PlayerTextDrawFont(playerid, InventoryPlayer[playerid][13], 1);
    PlayerTextDrawSetProportional(playerid, InventoryPlayer[playerid][13], 1);
    PlayerTextDrawSetSelectable(playerid, InventoryPlayer[playerid][13], 1);

    InventoryPlayer[playerid][14] = CreatePlayerTextDraw(playerid, 186.962, 314.665, "PHONE");
    PlayerTextDrawLetterSize(playerid, InventoryPlayer[playerid][14], 0.171, 0.717);
    PlayerTextDrawTextSize(playerid, InventoryPlayer[playerid][14], 208.000, 3.500);
    PlayerTextDrawAlignment(playerid, InventoryPlayer[playerid][14], 1);
    PlayerTextDrawColor(playerid, InventoryPlayer[playerid][14], -1);
    PlayerTextDrawUseBox(playerid, InventoryPlayer[playerid][14], 1);
    PlayerTextDrawBoxColor(playerid, InventoryPlayer[playerid][14], 0);
    PlayerTextDrawSetShadow(playerid, InventoryPlayer[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, InventoryPlayer[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, InventoryPlayer[playerid][14], 255);
    PlayerTextDrawFont(playerid, InventoryPlayer[playerid][14], 1);
    PlayerTextDrawSetProportional(playerid, InventoryPlayer[playerid][14], 1);
    PlayerTextDrawSetSelectable(playerid, InventoryPlayer[playerid][14], 1);

    InventoryPlayer[playerid][15] = CreatePlayerTextDraw(playerid, 318.140, 312.881, "USE");
    PlayerTextDrawLetterSize(playerid, InventoryPlayer[playerid][15], 0.221, 0.991);
    PlayerTextDrawTextSize(playerid, InventoryPlayer[playerid][15], 330.000, 4.000);
    PlayerTextDrawAlignment(playerid, InventoryPlayer[playerid][15], 1);
    PlayerTextDrawColor(playerid, InventoryPlayer[playerid][15], -1);
    PlayerTextDrawUseBox(playerid, InventoryPlayer[playerid][15], 1);
    PlayerTextDrawBoxColor(playerid, InventoryPlayer[playerid][15], 0);
    PlayerTextDrawSetShadow(playerid, InventoryPlayer[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, InventoryPlayer[playerid][15], 0);
    PlayerTextDrawBackgroundColor(playerid, InventoryPlayer[playerid][15], 255);
    PlayerTextDrawFont(playerid, InventoryPlayer[playerid][15], 1);
    PlayerTextDrawSetProportional(playerid, InventoryPlayer[playerid][15], 1);
    PlayerTextDrawSetSelectable(playerid, InventoryPlayer[playerid][15], 1);

    InventoryPlayer[playerid][16] = CreatePlayerTextDraw(playerid, 365.545, 312.881, "DROP");
    PlayerTextDrawLetterSize(playerid, InventoryPlayer[playerid][16], 0.221, 0.991);
    PlayerTextDrawTextSize(playerid, InventoryPlayer[playerid][16], 383.000, 4.000);
    PlayerTextDrawAlignment(playerid, InventoryPlayer[playerid][16], 1);
    PlayerTextDrawColor(playerid, InventoryPlayer[playerid][16], -1);
    PlayerTextDrawUseBox(playerid, InventoryPlayer[playerid][16], 1);
    PlayerTextDrawBoxColor(playerid, InventoryPlayer[playerid][16], 0);
    PlayerTextDrawSetShadow(playerid, InventoryPlayer[playerid][16], 0);
    PlayerTextDrawSetOutline(playerid, InventoryPlayer[playerid][16], 0);
    PlayerTextDrawBackgroundColor(playerid, InventoryPlayer[playerid][16], 255);
    PlayerTextDrawFont(playerid, InventoryPlayer[playerid][16], 1);
    PlayerTextDrawSetProportional(playerid, InventoryPlayer[playerid][16], 1);
    PlayerTextDrawSetSelectable(playerid, InventoryPlayer[playerid][16], 1);

    InventoryPlayer[playerid][17] = CreatePlayerTextDraw(playerid, 416.446, 312.881, "SELL");
    PlayerTextDrawLetterSize(playerid, InventoryPlayer[playerid][17], 0.221, 0.991);
    PlayerTextDrawTextSize(playerid, InventoryPlayer[playerid][17], 431.000, 4.000);
    PlayerTextDrawAlignment(playerid, InventoryPlayer[playerid][17], 1);
    PlayerTextDrawColor(playerid, InventoryPlayer[playerid][17], -1);
    PlayerTextDrawUseBox(playerid, InventoryPlayer[playerid][17], 1);
    PlayerTextDrawBoxColor(playerid, InventoryPlayer[playerid][17], 0);
    PlayerTextDrawSetShadow(playerid, InventoryPlayer[playerid][17], 0);
    PlayerTextDrawSetOutline(playerid, InventoryPlayer[playerid][17], 0);
    PlayerTextDrawBackgroundColor(playerid, InventoryPlayer[playerid][17], 255);
    PlayerTextDrawFont(playerid, InventoryPlayer[playerid][17], 1);
    PlayerTextDrawSetProportional(playerid, InventoryPlayer[playerid][17], 1);
    PlayerTextDrawSetSelectable(playerid, InventoryPlayer[playerid][17], 1);

    InventoryPlayer[playerid][18] = CreatePlayerTextDraw(playerid, 466.151, 312.881, "GIVE");
    PlayerTextDrawLetterSize(playerid, InventoryPlayer[playerid][18], 0.221, 0.991);
    PlayerTextDrawTextSize(playerid, InventoryPlayer[playerid][18], 482.000, 4.000);
    PlayerTextDrawAlignment(playerid, InventoryPlayer[playerid][18], 1);
    PlayerTextDrawColor(playerid, InventoryPlayer[playerid][18], -1);
    PlayerTextDrawUseBox(playerid, InventoryPlayer[playerid][18], 1);
    PlayerTextDrawBoxColor(playerid, InventoryPlayer[playerid][18], 0);
    PlayerTextDrawSetShadow(playerid, InventoryPlayer[playerid][18], 0);
    PlayerTextDrawSetOutline(playerid, InventoryPlayer[playerid][18], 0);
    PlayerTextDrawBackgroundColor(playerid, InventoryPlayer[playerid][18], 255);
    PlayerTextDrawFont(playerid, InventoryPlayer[playerid][18], 1);
    PlayerTextDrawSetProportional(playerid, InventoryPlayer[playerid][18], 1);
    PlayerTextDrawSetSelectable(playerid, InventoryPlayer[playerid][18], 1);

    InvItemAmount[playerid][0] = CreatePlayerTextDraw(playerid, 317.000, 156.000, "x100");
    PlayerTextDrawLetterSize(playerid, InvItemAmount[playerid][0], 0.150, 0.799);
    PlayerTextDrawAlignment(playerid, InvItemAmount[playerid][0], 1);
    PlayerTextDrawColor(playerid, InvItemAmount[playerid][0], -1);
    PlayerTextDrawSetShadow(playerid, InvItemAmount[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, InvItemAmount[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, InvItemAmount[playerid][0], 150);
    PlayerTextDrawFont(playerid, InvItemAmount[playerid][0], 2);
    PlayerTextDrawSetProportional(playerid, InvItemAmount[playerid][0], 1);

    InvItemAmount[playerid][1] = CreatePlayerTextDraw(playerid, 349.000, 156.000, "x100");
    PlayerTextDrawLetterSize(playerid, InvItemAmount[playerid][1], 0.150, 0.799);
    PlayerTextDrawAlignment(playerid, InvItemAmount[playerid][1], 1);
    PlayerTextDrawColor(playerid, InvItemAmount[playerid][1], -1);
    PlayerTextDrawSetShadow(playerid, InvItemAmount[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, InvItemAmount[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, InvItemAmount[playerid][1], 150);
    PlayerTextDrawFont(playerid, InvItemAmount[playerid][1], 2);
    PlayerTextDrawSetProportional(playerid, InvItemAmount[playerid][1], 1);

    InvItemAmount[playerid][2] = CreatePlayerTextDraw(playerid, 382.000, 156.000, "x100");
    PlayerTextDrawLetterSize(playerid, InvItemAmount[playerid][2], 0.150, 0.799);
    PlayerTextDrawAlignment(playerid, InvItemAmount[playerid][2], 1);
    PlayerTextDrawColor(playerid, InvItemAmount[playerid][2], -1);
    PlayerTextDrawSetShadow(playerid, InvItemAmount[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, InvItemAmount[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, InvItemAmount[playerid][2], 150);
    PlayerTextDrawFont(playerid, InvItemAmount[playerid][2], 2);
    PlayerTextDrawSetProportional(playerid, InvItemAmount[playerid][2], 1);

    InvItemAmount[playerid][3] = CreatePlayerTextDraw(playerid, 414.000, 156.000, "x100");
    PlayerTextDrawLetterSize(playerid, InvItemAmount[playerid][3], 0.150, 0.799);
    PlayerTextDrawAlignment(playerid, InvItemAmount[playerid][3], 1);
    PlayerTextDrawColor(playerid, InvItemAmount[playerid][3], -1);
    PlayerTextDrawSetShadow(playerid, InvItemAmount[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, InvItemAmount[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, InvItemAmount[playerid][3], 150);
    PlayerTextDrawFont(playerid, InvItemAmount[playerid][3], 2);
    PlayerTextDrawSetProportional(playerid, InvItemAmount[playerid][3], 1);

    InvItemAmount[playerid][4] = CreatePlayerTextDraw(playerid, 446.000, 156.000, "x100");
    PlayerTextDrawLetterSize(playerid, InvItemAmount[playerid][4], 0.150, 0.799);
    PlayerTextDrawAlignment(playerid, InvItemAmount[playerid][4], 1);
    PlayerTextDrawColor(playerid, InvItemAmount[playerid][4], -1);
    PlayerTextDrawSetShadow(playerid, InvItemAmount[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, InvItemAmount[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, InvItemAmount[playerid][4], 150);
    PlayerTextDrawFont(playerid, InvItemAmount[playerid][4], 2);
    PlayerTextDrawSetProportional(playerid, InvItemAmount[playerid][4], 1);

    InvItemAmount[playerid][5] = CreatePlayerTextDraw(playerid, 480.000, 156.000, "x100");
    PlayerTextDrawLetterSize(playerid, InvItemAmount[playerid][5], 0.150, 0.799);
    PlayerTextDrawAlignment(playerid, InvItemAmount[playerid][5], 1);
    PlayerTextDrawColor(playerid, InvItemAmount[playerid][5], -1);
    PlayerTextDrawSetShadow(playerid, InvItemAmount[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, InvItemAmount[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, InvItemAmount[playerid][5], 150);
    PlayerTextDrawFont(playerid, InvItemAmount[playerid][5], 2);
    PlayerTextDrawSetProportional(playerid, InvItemAmount[playerid][5], 1);

    InvItemAmount[playerid][6] = CreatePlayerTextDraw(playerid, 317.000, 201.000, "x100");
    PlayerTextDrawLetterSize(playerid, InvItemAmount[playerid][6], 0.150, 0.799);
    PlayerTextDrawAlignment(playerid, InvItemAmount[playerid][6], 1);
    PlayerTextDrawColor(playerid, InvItemAmount[playerid][6], -1);
    PlayerTextDrawSetShadow(playerid, InvItemAmount[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, InvItemAmount[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, InvItemAmount[playerid][6], 150);
    PlayerTextDrawFont(playerid, InvItemAmount[playerid][6], 2);
    PlayerTextDrawSetProportional(playerid, InvItemAmount[playerid][6], 1);

    InvItemAmount[playerid][7] = CreatePlayerTextDraw(playerid, 349.000, 201.000, "x100");
    PlayerTextDrawLetterSize(playerid, InvItemAmount[playerid][7], 0.150, 0.799);
    PlayerTextDrawAlignment(playerid, InvItemAmount[playerid][7], 1);
    PlayerTextDrawColor(playerid, InvItemAmount[playerid][7], -1);
    PlayerTextDrawSetShadow(playerid, InvItemAmount[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, InvItemAmount[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, InvItemAmount[playerid][7], 150);
    PlayerTextDrawFont(playerid, InvItemAmount[playerid][7], 2);
    PlayerTextDrawSetProportional(playerid, InvItemAmount[playerid][7], 1);

    InvItemAmount[playerid][8] = CreatePlayerTextDraw(playerid, 382.000, 201.000, "x100");
    PlayerTextDrawLetterSize(playerid, InvItemAmount[playerid][8], 0.150, 0.799);
    PlayerTextDrawAlignment(playerid, InvItemAmount[playerid][8], 1);
    PlayerTextDrawColor(playerid, InvItemAmount[playerid][8], -1);
    PlayerTextDrawSetShadow(playerid, InvItemAmount[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, InvItemAmount[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, InvItemAmount[playerid][8], 150);
    PlayerTextDrawFont(playerid, InvItemAmount[playerid][8], 2);
    PlayerTextDrawSetProportional(playerid, InvItemAmount[playerid][8], 1);

    InvItemAmount[playerid][9] = CreatePlayerTextDraw(playerid, 414.000, 201.000, "x100");
    PlayerTextDrawLetterSize(playerid, InvItemAmount[playerid][9], 0.150, 0.799);
    PlayerTextDrawAlignment(playerid, InvItemAmount[playerid][9], 1);
    PlayerTextDrawColor(playerid, InvItemAmount[playerid][9], -1);
    PlayerTextDrawSetShadow(playerid, InvItemAmount[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, InvItemAmount[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, InvItemAmount[playerid][9], 150);
    PlayerTextDrawFont(playerid, InvItemAmount[playerid][9], 2);
    PlayerTextDrawSetProportional(playerid, InvItemAmount[playerid][9], 1);

    InvItemAmount[playerid][10] = CreatePlayerTextDraw(playerid, 446.000, 201.000, "x100");
    PlayerTextDrawLetterSize(playerid, InvItemAmount[playerid][10], 0.150, 0.799);
    PlayerTextDrawAlignment(playerid, InvItemAmount[playerid][10], 1);
    PlayerTextDrawColor(playerid, InvItemAmount[playerid][10], -1);
    PlayerTextDrawSetShadow(playerid, InvItemAmount[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, InvItemAmount[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, InvItemAmount[playerid][10], 150);
    PlayerTextDrawFont(playerid, InvItemAmount[playerid][10], 2);
    PlayerTextDrawSetProportional(playerid, InvItemAmount[playerid][10], 1);

    InvItemAmount[playerid][11] = CreatePlayerTextDraw(playerid, 479.000, 201.000, "x100");
    PlayerTextDrawLetterSize(playerid, InvItemAmount[playerid][11], 0.150, 0.799);
    PlayerTextDrawAlignment(playerid, InvItemAmount[playerid][11], 1);
    PlayerTextDrawColor(playerid, InvItemAmount[playerid][11], -1);
    PlayerTextDrawSetShadow(playerid, InvItemAmount[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, InvItemAmount[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, InvItemAmount[playerid][11], 150);
    PlayerTextDrawFont(playerid, InvItemAmount[playerid][11], 2);
    PlayerTextDrawSetProportional(playerid, InvItemAmount[playerid][11], 1);

    InvItemAmount[playerid][12] = CreatePlayerTextDraw(playerid, 317.000, 245.000, "x100");
    PlayerTextDrawLetterSize(playerid, InvItemAmount[playerid][12], 0.150, 0.799);
    PlayerTextDrawAlignment(playerid, InvItemAmount[playerid][12], 1);
    PlayerTextDrawColor(playerid, InvItemAmount[playerid][12], -1);
    PlayerTextDrawSetShadow(playerid, InvItemAmount[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, InvItemAmount[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, InvItemAmount[playerid][12], 150);
    PlayerTextDrawFont(playerid, InvItemAmount[playerid][12], 2);
    PlayerTextDrawSetProportional(playerid, InvItemAmount[playerid][12], 1);

    InvItemAmount[playerid][13] = CreatePlayerTextDraw(playerid, 349.000, 245.000, "x100");
    PlayerTextDrawLetterSize(playerid, InvItemAmount[playerid][13], 0.150, 0.799);
    PlayerTextDrawAlignment(playerid, InvItemAmount[playerid][13], 1);
    PlayerTextDrawColor(playerid, InvItemAmount[playerid][13], -1);
    PlayerTextDrawSetShadow(playerid, InvItemAmount[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, InvItemAmount[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, InvItemAmount[playerid][13], 150);
    PlayerTextDrawFont(playerid, InvItemAmount[playerid][13], 2);
    PlayerTextDrawSetProportional(playerid, InvItemAmount[playerid][13], 1);

    InvItemAmount[playerid][14] = CreatePlayerTextDraw(playerid, 382.000, 245.000, "x100");
    PlayerTextDrawLetterSize(playerid, InvItemAmount[playerid][14], 0.150, 0.799);
    PlayerTextDrawAlignment(playerid, InvItemAmount[playerid][14], 1);
    PlayerTextDrawColor(playerid, InvItemAmount[playerid][14], -1);
    PlayerTextDrawSetShadow(playerid, InvItemAmount[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, InvItemAmount[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, InvItemAmount[playerid][14], 150);
    PlayerTextDrawFont(playerid, InvItemAmount[playerid][14], 2);
    PlayerTextDrawSetProportional(playerid, InvItemAmount[playerid][14], 1);

    InvItemAmount[playerid][15] = CreatePlayerTextDraw(playerid, 414.000, 245.000, "x100");
    PlayerTextDrawLetterSize(playerid, InvItemAmount[playerid][15], 0.150, 0.799);
    PlayerTextDrawAlignment(playerid, InvItemAmount[playerid][15], 1);
    PlayerTextDrawColor(playerid, InvItemAmount[playerid][15], -1);
    PlayerTextDrawSetShadow(playerid, InvItemAmount[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, InvItemAmount[playerid][15], 0);
    PlayerTextDrawBackgroundColor(playerid, InvItemAmount[playerid][15], 150);
    PlayerTextDrawFont(playerid, InvItemAmount[playerid][15], 2);
    PlayerTextDrawSetProportional(playerid, InvItemAmount[playerid][15], 1);

    InvItemAmount[playerid][16] = CreatePlayerTextDraw(playerid, 446.000, 245.000, "x100");
    PlayerTextDrawLetterSize(playerid, InvItemAmount[playerid][16], 0.150, 0.799);
    PlayerTextDrawAlignment(playerid, InvItemAmount[playerid][16], 1);
    PlayerTextDrawColor(playerid, InvItemAmount[playerid][16], -1);
    PlayerTextDrawSetShadow(playerid, InvItemAmount[playerid][16], 0);
    PlayerTextDrawSetOutline(playerid, InvItemAmount[playerid][16], 0);
    PlayerTextDrawBackgroundColor(playerid, InvItemAmount[playerid][16], 150);
    PlayerTextDrawFont(playerid, InvItemAmount[playerid][16], 2);
    PlayerTextDrawSetProportional(playerid, InvItemAmount[playerid][16], 1);

    InvItemAmount[playerid][17] = CreatePlayerTextDraw(playerid, 479.000, 245.000, "x100");
    PlayerTextDrawLetterSize(playerid, InvItemAmount[playerid][17], 0.150, 0.799);
    PlayerTextDrawAlignment(playerid, InvItemAmount[playerid][17], 1);
    PlayerTextDrawColor(playerid, InvItemAmount[playerid][17], -1);
    PlayerTextDrawSetShadow(playerid, InvItemAmount[playerid][17], 0);
    PlayerTextDrawSetOutline(playerid, InvItemAmount[playerid][17], 0);
    PlayerTextDrawBackgroundColor(playerid, InvItemAmount[playerid][17], 150);
    PlayerTextDrawFont(playerid, InvItemAmount[playerid][17], 2);
    PlayerTextDrawSetProportional(playerid, InvItemAmount[playerid][17], 1);

    InvItemAmount[playerid][18] = CreatePlayerTextDraw(playerid, 317.000, 290.000, "x100");
    PlayerTextDrawLetterSize(playerid, InvItemAmount[playerid][18], 0.150, 0.799);
    PlayerTextDrawAlignment(playerid, InvItemAmount[playerid][18], 1);
    PlayerTextDrawColor(playerid, InvItemAmount[playerid][18], -1);
    PlayerTextDrawSetShadow(playerid, InvItemAmount[playerid][18], 0);
    PlayerTextDrawSetOutline(playerid, InvItemAmount[playerid][18], 0);
    PlayerTextDrawBackgroundColor(playerid, InvItemAmount[playerid][18], 150);
    PlayerTextDrawFont(playerid, InvItemAmount[playerid][18], 2);
    PlayerTextDrawSetProportional(playerid, InvItemAmount[playerid][18], 1);

    InvItemAmount[playerid][19] = CreatePlayerTextDraw(playerid, 349.000, 290.000, "x100");
    PlayerTextDrawLetterSize(playerid, InvItemAmount[playerid][19], 0.150, 0.799);
    PlayerTextDrawAlignment(playerid, InvItemAmount[playerid][19], 1);
    PlayerTextDrawColor(playerid, InvItemAmount[playerid][19], -1);
    PlayerTextDrawSetShadow(playerid, InvItemAmount[playerid][19], 0);
    PlayerTextDrawSetOutline(playerid, InvItemAmount[playerid][19], 0);
    PlayerTextDrawBackgroundColor(playerid, InvItemAmount[playerid][19], 150);
    PlayerTextDrawFont(playerid, InvItemAmount[playerid][19], 2);
    PlayerTextDrawSetProportional(playerid, InvItemAmount[playerid][19], 1);

    InvItemAmount[playerid][20] = CreatePlayerTextDraw(playerid, 382.000, 290.000, "x100");
    PlayerTextDrawLetterSize(playerid, InvItemAmount[playerid][20], 0.150, 0.799);
    PlayerTextDrawAlignment(playerid, InvItemAmount[playerid][20], 1);
    PlayerTextDrawColor(playerid, InvItemAmount[playerid][20], -1);
    PlayerTextDrawSetShadow(playerid, InvItemAmount[playerid][20], 0);
    PlayerTextDrawSetOutline(playerid, InvItemAmount[playerid][20], 0);
    PlayerTextDrawBackgroundColor(playerid, InvItemAmount[playerid][20], 150);
    PlayerTextDrawFont(playerid, InvItemAmount[playerid][20], 2);
    PlayerTextDrawSetProportional(playerid, InvItemAmount[playerid][20], 1);

    InvItemAmount[playerid][21] = CreatePlayerTextDraw(playerid, 414.000, 290.000, "x100");
    PlayerTextDrawLetterSize(playerid, InvItemAmount[playerid][21], 0.150, 0.799);
    PlayerTextDrawAlignment(playerid, InvItemAmount[playerid][21], 1);
    PlayerTextDrawColor(playerid, InvItemAmount[playerid][21], -1);
    PlayerTextDrawSetShadow(playerid, InvItemAmount[playerid][21], 0);
    PlayerTextDrawSetOutline(playerid, InvItemAmount[playerid][21], 0);
    PlayerTextDrawBackgroundColor(playerid, InvItemAmount[playerid][21], 150);
    PlayerTextDrawFont(playerid, InvItemAmount[playerid][21], 2);
    PlayerTextDrawSetProportional(playerid, InvItemAmount[playerid][21], 1);

    InvItemAmount[playerid][22] = CreatePlayerTextDraw(playerid, 446.000, 290.000, "x100");
    PlayerTextDrawLetterSize(playerid, InvItemAmount[playerid][22], 0.150, 0.799);
    PlayerTextDrawAlignment(playerid, InvItemAmount[playerid][22], 1);
    PlayerTextDrawColor(playerid, InvItemAmount[playerid][22], -1);
    PlayerTextDrawSetShadow(playerid, InvItemAmount[playerid][22], 0);
    PlayerTextDrawSetOutline(playerid, InvItemAmount[playerid][22], 0);
    PlayerTextDrawBackgroundColor(playerid, InvItemAmount[playerid][22], 150);
    PlayerTextDrawFont(playerid, InvItemAmount[playerid][22], 2);
    PlayerTextDrawSetProportional(playerid, InvItemAmount[playerid][22], 1);

    InvItemAmount[playerid][23] = CreatePlayerTextDraw(playerid, 479.000, 290.000, "x100");
    PlayerTextDrawLetterSize(playerid, InvItemAmount[playerid][23], 0.150, 0.799);
    PlayerTextDrawAlignment(playerid, InvItemAmount[playerid][23], 1);
    PlayerTextDrawColor(playerid, InvItemAmount[playerid][23], -1);
    PlayerTextDrawSetShadow(playerid, InvItemAmount[playerid][23], 0);
    PlayerTextDrawSetOutline(playerid, InvItemAmount[playerid][23], 0);
    PlayerTextDrawBackgroundColor(playerid, InvItemAmount[playerid][23], 150);
    PlayerTextDrawFont(playerid, InvItemAmount[playerid][23], 2);
    PlayerTextDrawSetProportional(playerid, InvItemAmount[playerid][23], 1);

    InvItemInfo[playerid][0] = CreatePlayerTextDraw(playerid, 567.000, 121.000, "Material");
    PlayerTextDrawLetterSize(playerid, InvItemInfo[playerid][0], 0.300, 1.500);
    PlayerTextDrawAlignment(playerid, InvItemInfo[playerid][0], 2);
    PlayerTextDrawColor(playerid, InvItemInfo[playerid][0], -1);
    PlayerTextDrawSetShadow(playerid, InvItemInfo[playerid][0], 1);
    PlayerTextDrawSetOutline(playerid, InvItemInfo[playerid][0], 1);
    PlayerTextDrawBackgroundColor(playerid, InvItemInfo[playerid][0], 150);
    PlayerTextDrawFont(playerid, InvItemInfo[playerid][0], 2);
    PlayerTextDrawSetProportional(playerid, InvItemInfo[playerid][0], 1);

    InvItemInfo[playerid][1] = CreatePlayerTextDraw(playerid, 626.880, 119.999, "Box");
    PlayerTextDrawLetterSize(playerid, InvItemInfo[playerid][1], 0.000, 8.981);
    PlayerTextDrawTextSize(playerid, InvItemInfo[playerid][1], 504.197, -16.000);
    PlayerTextDrawAlignment(playerid, InvItemInfo[playerid][1], 1);
    PlayerTextDrawColor(playerid, InvItemInfo[playerid][1], -1);
    PlayerTextDrawUseBox(playerid, InvItemInfo[playerid][1], 1);
    PlayerTextDrawBoxColor(playerid, InvItemInfo[playerid][1], 320017407);
    PlayerTextDrawSetShadow(playerid, InvItemInfo[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, InvItemInfo[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, InvItemInfo[playerid][1], 255);
    PlayerTextDrawFont(playerid, InvItemInfo[playerid][1], 1);
    PlayerTextDrawSetProportional(playerid, InvItemInfo[playerid][1], 1);

    InvItemInfo[playerid][2] = CreatePlayerTextDraw(playerid, 608.888, 97.133, "_");
    PlayerTextDrawTextSize(playerid, InvItemInfo[playerid][2], 38.000, 46.000);
    PlayerTextDrawAlignment(playerid, InvItemInfo[playerid][2], 1);
    PlayerTextDrawColor(playerid, InvItemInfo[playerid][2], 1848345343);
    PlayerTextDrawSetShadow(playerid, InvItemInfo[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, InvItemInfo[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, InvItemInfo[playerid][2], 0);
    PlayerTextDrawFont(playerid, InvItemInfo[playerid][2], 5);
    PlayerTextDrawSetProportional(playerid, InvItemInfo[playerid][2], 0);
    PlayerTextDrawSetPreviewModel(playerid, InvItemInfo[playerid][2], 19177);
    PlayerTextDrawSetPreviewRot(playerid, InvItemInfo[playerid][2], 0.000, -90.000, 0.000, 1.000);
    PlayerTextDrawSetPreviewVehCol(playerid, InvItemInfo[playerid][2], 0, 0);

    InvItemInfo[playerid][3] = CreatePlayerTextDraw(playerid, 510.000, 141.000, "This item is used for making weapons");
    PlayerTextDrawLetterSize(playerid, InvItemInfo[playerid][3], 0.170, 2.399);
    PlayerTextDrawAlignment(playerid, InvItemInfo[playerid][3], 1);
    PlayerTextDrawColor(playerid, InvItemInfo[playerid][3], -1);
    PlayerTextDrawSetShadow(playerid, InvItemInfo[playerid][3], 1);
    PlayerTextDrawSetOutline(playerid, InvItemInfo[playerid][3], 1);
    PlayerTextDrawBackgroundColor(playerid, InvItemInfo[playerid][3], 150);
    PlayerTextDrawFont(playerid, InvItemInfo[playerid][3], 1);
    PlayerTextDrawSetProportional(playerid, InvItemInfo[playerid][3], 1);

    InvItemInfo[playerid][4] = CreatePlayerTextDraw(playerid, 484.178, 97.133, "_");
    PlayerTextDrawTextSize(playerid, InvItemInfo[playerid][4], 38.000, 46.000);
    PlayerTextDrawAlignment(playerid, InvItemInfo[playerid][4], 1);
    PlayerTextDrawColor(playerid, InvItemInfo[playerid][4], 1848345343);
    PlayerTextDrawSetShadow(playerid, InvItemInfo[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, InvItemInfo[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, InvItemInfo[playerid][4], 0);
    PlayerTextDrawFont(playerid, InvItemInfo[playerid][4], 5);
    PlayerTextDrawSetProportional(playerid, InvItemInfo[playerid][4], 0);
    PlayerTextDrawSetPreviewModel(playerid, InvItemInfo[playerid][4], 19177);
    PlayerTextDrawSetPreviewRot(playerid, InvItemInfo[playerid][4], 0.000, 90.000, 0.000, 1.000);
    PlayerTextDrawSetPreviewVehCol(playerid, InvItemInfo[playerid][4], 0, 0);

    InvItemInfo[playerid][5] = CreatePlayerTextDraw(playerid, 510.000, 171.000, "Note: You have only 500 MATERIALS RIGHT NOW");
    PlayerTextDrawLetterSize(playerid, InvItemInfo[playerid][5], 0.128, 2.098);
    PlayerTextDrawAlignment(playerid, InvItemInfo[playerid][5], 1);
    PlayerTextDrawColor(playerid, InvItemInfo[playerid][5], -1);
    PlayerTextDrawSetShadow(playerid, InvItemInfo[playerid][5], 1);
    PlayerTextDrawSetOutline(playerid, InvItemInfo[playerid][5], 1);
    PlayerTextDrawBackgroundColor(playerid, InvItemInfo[playerid][5], 150);
    PlayerTextDrawFont(playerid, InvItemInfo[playerid][5], 1);
    PlayerTextDrawSetProportional(playerid, InvItemInfo[playerid][5], 1);

    InvItemInfo[playerid][6] = CreatePlayerTextDraw(playerid, 630.101, 112.150, "Box");
    PlayerTextDrawLetterSize(playerid, InvItemInfo[playerid][6], 0.000, 0.582);
    PlayerTextDrawTextSize(playerid, InvItemInfo[playerid][6], 501.290, 0.000);
    PlayerTextDrawAlignment(playerid, InvItemInfo[playerid][6], 1);
    PlayerTextDrawColor(playerid, InvItemInfo[playerid][6], -1);
    PlayerTextDrawUseBox(playerid, InvItemInfo[playerid][6], 1);
    PlayerTextDrawBoxColor(playerid, InvItemInfo[playerid][6], 1848345343);
    PlayerTextDrawSetShadow(playerid, InvItemInfo[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, InvItemInfo[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, InvItemInfo[playerid][6], 255);
    PlayerTextDrawFont(playerid, InvItemInfo[playerid][6], 1);
    PlayerTextDrawSetProportional(playerid, InvItemInfo[playerid][6], 1);

    InvItemInfo[playerid][7] = CreatePlayerTextDraw(playerid, 543.581, 110.930, "INFORMATION");
    PlayerTextDrawLetterSize(playerid, InvItemInfo[playerid][7], 0.207, 0.841);
    PlayerTextDrawAlignment(playerid, InvItemInfo[playerid][7], 1);
    PlayerTextDrawColor(playerid, InvItemInfo[playerid][7], -1);
    PlayerTextDrawSetShadow(playerid, InvItemInfo[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, InvItemInfo[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, InvItemInfo[playerid][7], 255);
    PlayerTextDrawFont(playerid, InvItemInfo[playerid][7], 1);
    PlayerTextDrawSetProportional(playerid, InvItemInfo[playerid][7], 1);

}*/

CreateVST_GLOBAL()
{
    VST_TD[0] = TextDrawCreate(271.880, 119.999, "Box");
    TextDrawLetterSize(VST_TD[0], 0.000, 27.081);
    TextDrawTextSize(VST_TD[0], 403.199, 19.000);
    TextDrawAlignment(VST_TD[0], 1);
    TextDrawColor(VST_TD[0], -1);
    TextDrawUseBox(VST_TD[0], 1);
    TextDrawBoxColor(VST_TD[0], 320017407);
    TextDrawSetShadow(VST_TD[0], 0);
    TextDrawSetOutline(VST_TD[0], 0);
    TextDrawBackgroundColor(VST_TD[0], 255);
    TextDrawFont(VST_TD[0], 1);
    TextDrawSetProportional(VST_TD[0], 1);

    VST_TD[1] = TextDrawCreate(241.410, 76.120, "_");
    TextDrawTextSize(VST_TD[1], 51.000, 88.000);
    TextDrawAlignment(VST_TD[1], 1);
    TextDrawColor(VST_TD[1], 13554175);
    TextDrawSetShadow(VST_TD[1], 0);
    TextDrawSetOutline(VST_TD[1], 0);
    TextDrawBackgroundColor(VST_TD[1], 16776960);
    TextDrawFont(VST_TD[1], 5);
    TextDrawSetProportional(VST_TD[1], 0);
    TextDrawSetPreviewModel(VST_TD[1], 19177);
    TextDrawSetPreviewRot(VST_TD[1], 0.000, 90.000, 0.000, 1.000);
    TextDrawSetPreviewVehCol(VST_TD[1], 0, 0);

    VST_TD[2] = TextDrawCreate(382.118, 76.120, "_");
    TextDrawTextSize(VST_TD[2], 51.000, 88.000);
    TextDrawAlignment(VST_TD[2], 1);
    TextDrawColor(VST_TD[2], 13554175);
    TextDrawSetShadow(VST_TD[2], 0);
    TextDrawSetOutline(VST_TD[2], 0);
    TextDrawBackgroundColor(VST_TD[2], 0);
    TextDrawFont(VST_TD[2], 5);
    TextDrawSetProportional(VST_TD[2], 0);
    TextDrawSetPreviewModel(VST_TD[2], 19177);
    TextDrawSetPreviewRot(VST_TD[2], 0.000, -90.000, 0.000, 1.000);
    TextDrawSetPreviewVehCol(VST_TD[2], 0, 0);

    VST_TD[3] = TextDrawCreate(266.100, 112.150, "Box");
    TextDrawLetterSize(VST_TD[3], 0.000, 0.582);
    TextDrawTextSize(VST_TD[3], 408.290, 0.000);
    TextDrawAlignment(VST_TD[3], 1);
    TextDrawColor(VST_TD[3], -1);
    TextDrawUseBox(VST_TD[3], 1);
    TextDrawBoxColor(VST_TD[3], 13554175);
    TextDrawSetShadow(VST_TD[3], 0);
    TextDrawSetOutline(VST_TD[3], 0);
    TextDrawBackgroundColor(VST_TD[3], 255);
    TextDrawFont(VST_TD[3], 1);
    TextDrawSetProportional(VST_TD[3], 1);

    VST_TD[4] = TextDrawCreate(276.769, 239.535, "Box");
    TextDrawLetterSize(VST_TD[4], 0.000, -0.680);
    TextDrawTextSize(VST_TD[4], 400.000, 0.000);
    TextDrawAlignment(VST_TD[4], 1);
    TextDrawColor(VST_TD[4], -1);
    TextDrawUseBox(VST_TD[4], 1);
    TextDrawBoxColor(VST_TD[4], 471604479);
    TextDrawSetShadow(VST_TD[4], 0);
    TextDrawSetOutline(VST_TD[4], 0);
    TextDrawBackgroundColor(VST_TD[4], 255);
    TextDrawFont(VST_TD[4], 1);
    TextDrawSetProportional(VST_TD[4], 1);

    VST_TD[5] = TextDrawCreate(276.769, 279.536, "Box");
    TextDrawLetterSize(VST_TD[5], 0.000, -0.680);
    TextDrawTextSize(VST_TD[5], 400.000, 0.000);
    TextDrawAlignment(VST_TD[5], 1);
    TextDrawColor(VST_TD[5], -1);
    TextDrawUseBox(VST_TD[5], 1);
    TextDrawBoxColor(VST_TD[5], 471604479);
    TextDrawSetShadow(VST_TD[5], 0);
    TextDrawSetOutline(VST_TD[5], 0);
    TextDrawBackgroundColor(VST_TD[5], 255);
    TextDrawFont(VST_TD[5], 1);
    TextDrawSetProportional(VST_TD[5], 1);

    VST_TD[6] = TextDrawCreate(404.769, 247.815, "Box");
    TextDrawLetterSize(VST_TD[6], 0.000, 0.395);
    TextDrawTextSize(VST_TD[6], 270.000, 0.000);
    TextDrawAlignment(VST_TD[6], 1);
    TextDrawColor(VST_TD[6], -1);
    TextDrawUseBox(VST_TD[6], 1);
    TextDrawBoxColor(VST_TD[6], 471604479);
    TextDrawSetShadow(VST_TD[6], 0);
    TextDrawSetOutline(VST_TD[6], 0);
    TextDrawBackgroundColor(VST_TD[6], 255);
    TextDrawFont(VST_TD[6], 1);
    TextDrawSetProportional(VST_TD[6], 1);

    VST_TD[7] = TextDrawCreate(403.407, 248.832, "_");
    TextDrawLetterSize(VST_TD[7], 0.657, 0.143);
    TextDrawTextSize(VST_TD[7], 271.368, 0.000);
    TextDrawAlignment(VST_TD[7], 1);
    TextDrawColor(VST_TD[7], -1);
    TextDrawUseBox(VST_TD[7], 1);
    TextDrawBoxColor(VST_TD[7], 320017407);
    TextDrawSetShadow(VST_TD[7], 0);
    TextDrawSetOutline(VST_TD[7], 0);
    TextDrawBackgroundColor(VST_TD[7], 255);
    TextDrawFont(VST_TD[7], 1);
    TextDrawSetProportional(VST_TD[7], 1);

    VST_TD[8] = TextDrawCreate(404.769, 263.510, "Box");
    TextDrawLetterSize(VST_TD[8], 0.000, 0.395);
    TextDrawTextSize(VST_TD[8], 270.000, 0.000);
    TextDrawAlignment(VST_TD[8], 1);
    TextDrawColor(VST_TD[8], -1);
    TextDrawUseBox(VST_TD[8], 1);
    TextDrawBoxColor(VST_TD[8], 471604479);
    TextDrawSetShadow(VST_TD[8], 0);
    TextDrawSetOutline(VST_TD[8], 0);
    TextDrawBackgroundColor(VST_TD[8], 255);
    TextDrawFont(VST_TD[8], 1);
    TextDrawSetProportional(VST_TD[8], 1);

    VST_TD[9] = TextDrawCreate(403.600, 264.510, "Box");
    TextDrawLetterSize(VST_TD[9], 0.000, 0.143);
    TextDrawTextSize(VST_TD[9], 271.359, 0.000);
    TextDrawAlignment(VST_TD[9], 1);
    TextDrawColor(VST_TD[9], -1);
    TextDrawUseBox(VST_TD[9], 1);
    TextDrawBoxColor(VST_TD[9], 320017407);
    TextDrawSetShadow(VST_TD[9], 0);
    TextDrawSetOutline(VST_TD[9], 0);
    TextDrawBackgroundColor(VST_TD[9], 255);
    TextDrawFont(VST_TD[9], 1);
    TextDrawSetProportional(VST_TD[9], 1);

    VST_TD[10] = TextDrawCreate(273.928, 238.447, "HEAL");
    TextDrawLetterSize(VST_TD[10], 0.180, 0.754);
    TextDrawAlignment(VST_TD[10], 1);
    TextDrawColor(VST_TD[10], -1);
    TextDrawSetShadow(VST_TD[10], 0);
    TextDrawSetOutline(VST_TD[10], 0);
    TextDrawBackgroundColor(VST_TD[10], 255);
    TextDrawFont(VST_TD[10], 1);
    TextDrawSetProportional(VST_TD[10], 1);

    VST_TD[11] = TextDrawCreate(273.897, 254.048, "FUEL");
    TextDrawLetterSize(VST_TD[11], 0.170, 0.754);
    TextDrawTextSize(VST_TD[11], 9.000, 0.000);
    TextDrawAlignment(VST_TD[11], 1);
    TextDrawColor(VST_TD[11], -1);
    TextDrawSetShadow(VST_TD[11], 0);
    TextDrawSetOutline(VST_TD[11], 0);
    TextDrawBackgroundColor(VST_TD[11], 255);
    TextDrawFont(VST_TD[11], 1);
    TextDrawSetProportional(VST_TD[11], 1);

    VST_TD[12] = TextDrawCreate(299.272, 301.334, "Box");
    TextDrawLetterSize(VST_TD[12], 0.000, 0.488);
    TextDrawTextSize(VST_TD[12], 375.501, 0.000);
    TextDrawAlignment(VST_TD[12], 1);
    TextDrawColor(VST_TD[12], 13554175);
    TextDrawUseBox(VST_TD[12], 1);
    TextDrawBoxColor(VST_TD[12], 13554175);
    TextDrawSetShadow(VST_TD[12], 0);
    TextDrawSetOutline(VST_TD[12], 0);
    TextDrawBackgroundColor(VST_TD[12], 13554175);
    TextDrawFont(VST_TD[12], 1);
    TextDrawSetProportional(VST_TD[12], 1);

    VST_TD[13] = TextDrawCreate(322.000, 326.000, "LD_BUM:blkdot");
    TextDrawTextSize(VST_TD[13], 36.000, 14.000);
    TextDrawAlignment(VST_TD[13], 1);
    TextDrawColor(VST_TD[13], -16776961);
    TextDrawSetShadow(VST_TD[13], 0);
    TextDrawSetOutline(VST_TD[13], 0);
    TextDrawBackgroundColor(VST_TD[13], 255);
    TextDrawFont(VST_TD[13], 4);
    TextDrawSetProportional(VST_TD[13], 1);
    TextDrawSetSelectable(VST_TD[13], 1);

    VST_TD[14] = TextDrawCreate(339.880, 327.015, "CLOSE");
    TextDrawLetterSize(VST_TD[14], 0.171, 1.116);
    TextDrawTextSize(VST_TD[14], 242.000, 3.500);
    TextDrawAlignment(VST_TD[14], 2);
    TextDrawColor(VST_TD[14], -1);
    TextDrawSetShadow(VST_TD[14], 0);
    TextDrawSetOutline(VST_TD[14], 0);
    TextDrawBackgroundColor(VST_TD[14], 255);
    TextDrawFont(VST_TD[14], 1);
    TextDrawSetProportional(VST_TD[14], 1);

    VST_TD[15] = TextDrawCreate(382.880, 349.015, "FIND");
    TextDrawLetterSize(VST_TD[15], 0.171, 1.116);
    TextDrawTextSize(VST_TD[15], 242.000, 3.500);
    TextDrawAlignment(VST_TD[15], 2);
    TextDrawColor(VST_TD[15], 255);
    TextDrawSetShadow(VST_TD[15], 0);
    TextDrawSetOutline(VST_TD[15], 0);
    TextDrawBackgroundColor(VST_TD[15], 255);
    TextDrawFont(VST_TD[15], 2);
    TextDrawSetProportional(VST_TD[15], 1);

    VST_TD[16] = TextDrawCreate(296.880, 349.015, "PARK");
    TextDrawLetterSize(VST_TD[16], 0.171, 1.116);
    TextDrawTextSize(VST_TD[16], 242.000, 3.500);
    TextDrawAlignment(VST_TD[16], 2);
    TextDrawColor(VST_TD[16], 255);
    TextDrawSetShadow(VST_TD[16], 0);
    TextDrawSetOutline(VST_TD[16], 0);
    TextDrawBackgroundColor(VST_TD[16], 255);
    TextDrawFont(VST_TD[16], 2);
    TextDrawSetProportional(VST_TD[16], 1);

    VST_TD[17] = TextDrawCreate(383.880, 327.015, "Next>>");
    TextDrawLetterSize(VST_TD[17], 0.171, 1.116);
    TextDrawTextSize(VST_TD[17], 242.000, 3.500);
    TextDrawAlignment(VST_TD[17], 2);
    TextDrawColor(VST_TD[17], 255);
    TextDrawSetShadow(VST_TD[17], 0);
    TextDrawSetOutline(VST_TD[17], 0);
    TextDrawBackgroundColor(VST_TD[17], 255);
    TextDrawFont(VST_TD[17], 2);
    TextDrawSetProportional(VST_TD[17], 1);

    VST_TD[18] = TextDrawCreate(293.880, 327.015, "<<Prev");
    TextDrawLetterSize(VST_TD[18], 0.171, 1.116);
    TextDrawTextSize(VST_TD[18], 242.000, 3.500);
    TextDrawAlignment(VST_TD[18], 2);
    TextDrawColor(VST_TD[18], 255);
    TextDrawSetShadow(VST_TD[18], 0);
    TextDrawSetOutline(VST_TD[18], 0);
    TextDrawBackgroundColor(VST_TD[18], 255);
    TextDrawFont(VST_TD[18], 2);
    TextDrawSetProportional(VST_TD[18], 1);

    VST_TD[19] = TextDrawCreate(278.000, 326.000, "LD_BUM:blkdot");
    TextDrawTextSize(VST_TD[19], 36.000, 14.000);
    TextDrawAlignment(VST_TD[19], 1);
    TextDrawColor(VST_TD[19], 16777215);
    TextDrawSetShadow(VST_TD[19], 0);
    TextDrawSetOutline(VST_TD[19], 0);
    TextDrawBackgroundColor(VST_TD[19], 255);
    TextDrawFont(VST_TD[19], 4);
    TextDrawSetProportional(VST_TD[19], 1);
    TextDrawSetSelectable(VST_TD[19], 1);

    VST_TD[20] = TextDrawCreate(365.000, 326.000, "LD_BUM:blkdot");
    TextDrawTextSize(VST_TD[20], 36.000, 14.000);
    TextDrawAlignment(VST_TD[20], 1);
    TextDrawColor(VST_TD[20], 16777215);
    TextDrawSetShadow(VST_TD[20], 0);
    TextDrawSetOutline(VST_TD[20], 0);
    TextDrawBackgroundColor(VST_TD[20], 255);
    TextDrawFont(VST_TD[20], 4);
    TextDrawSetProportional(VST_TD[20], 1);
    TextDrawSetSelectable(VST_TD[20], 1);

    VST_TD[21] = TextDrawCreate(365.000, 348.000, "LD_BUM:blkdot");
    TextDrawTextSize(VST_TD[21], 36.000, 14.000);
    TextDrawAlignment(VST_TD[21], 1);
    TextDrawColor(VST_TD[21], 16777215);
    TextDrawSetShadow(VST_TD[21], 0);
    TextDrawSetOutline(VST_TD[21], 0);
    TextDrawBackgroundColor(VST_TD[21], 255);
    TextDrawFont(VST_TD[21], 4);
    TextDrawSetProportional(VST_TD[21], 1);
    TextDrawSetSelectable(VST_TD[21], 1);

    VST_TD[22] = TextDrawCreate(322.000, 348.000, "LD_BUM:blkdot");
    TextDrawTextSize(VST_TD[22], 36.000, 14.000);
    TextDrawAlignment(VST_TD[22], 1);
    TextDrawColor(VST_TD[22], 16777215);
    TextDrawSetShadow(VST_TD[22], 0);
    TextDrawSetOutline(VST_TD[22], 0);
    TextDrawBackgroundColor(VST_TD[22], 255);
    TextDrawFont(VST_TD[22], 4);
    TextDrawSetProportional(VST_TD[22], 1);
    TextDrawSetSelectable(VST_TD[22], 1);

    VST_TD[23] = TextDrawCreate(278.000, 348.000, "LD_BUM:blkdot");
    TextDrawTextSize(VST_TD[23], 36.000, 14.000);
    TextDrawAlignment(VST_TD[23], 1);
    TextDrawColor(VST_TD[23], 16777215);
    TextDrawSetShadow(VST_TD[23], 0);
    TextDrawSetOutline(VST_TD[23], 0);
    TextDrawBackgroundColor(VST_TD[23], 255);
    TextDrawFont(VST_TD[23], 4);
    TextDrawSetProportional(VST_TD[23], 1);
    TextDrawSetSelectable(VST_TD[23], 1);

}
CreateVST_Player(playerid)
{
    VST_TD_Player[playerid][0] = CreatePlayerTextDraw(playerid, 282.000, 110.000, "_");
    PlayerTextDrawTextSize(playerid, VST_TD_Player[playerid][0], 124.000, 137.000);
    PlayerTextDrawAlignment(playerid, VST_TD_Player[playerid][0], 1);
    PlayerTextDrawColor(playerid, VST_TD_Player[playerid][0], -1);
    PlayerTextDrawSetShadow(playerid, VST_TD_Player[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, VST_TD_Player[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, VST_TD_Player[playerid][0], 0);
    PlayerTextDrawFont(playerid, VST_TD_Player[playerid][0], 5);
    PlayerTextDrawSetProportional(playerid, VST_TD_Player[playerid][0], 0);
    PlayerTextDrawSetPreviewModel(playerid, VST_TD_Player[playerid][0], 402);
    PlayerTextDrawSetPreviewRot(playerid, VST_TD_Player[playerid][0], -11.000, 1.000, 314.000, 0.799);
    PlayerTextDrawSetPreviewVehCol(playerid, VST_TD_Player[playerid][0], 1, 0);

    VST_TD_Player[playerid][1] = CreatePlayerTextDraw(playerid, 275.928, 246.457, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, VST_TD_Player[playerid][1], 96.013, 5.447);
    PlayerTextDrawAlignment(playerid, VST_TD_Player[playerid][1], 1);
    PlayerTextDrawColor(playerid, VST_TD_Player[playerid][1], 13554175);
    PlayerTextDrawSetShadow(playerid, VST_TD_Player[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, VST_TD_Player[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, VST_TD_Player[playerid][1], 255);
    PlayerTextDrawFont(playerid, VST_TD_Player[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, VST_TD_Player[playerid][1], 0);

    VST_TD_Player[playerid][2] = CreatePlayerTextDraw(playerid, 275.928, 262.459, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, VST_TD_Player[playerid][2], 96.013, 5.447);
    PlayerTextDrawAlignment(playerid, VST_TD_Player[playerid][2], 1);
    PlayerTextDrawColor(playerid, VST_TD_Player[playerid][2], 13554175);
    PlayerTextDrawSetShadow(playerid, VST_TD_Player[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, VST_TD_Player[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, VST_TD_Player[playerid][2], 255);
    PlayerTextDrawFont(playerid, VST_TD_Player[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, VST_TD_Player[playerid][2], 0);

    VST_TD_Player[playerid][3] = CreatePlayerTextDraw(playerid, 331.221, 246.100, "90%");
    PlayerTextDrawLetterSize(playerid, VST_TD_Player[playerid][3], 0.172, 0.684);
    PlayerTextDrawAlignment(playerid, VST_TD_Player[playerid][3], 1);
    PlayerTextDrawColor(playerid, VST_TD_Player[playerid][3], -1);
    PlayerTextDrawSetShadow(playerid, VST_TD_Player[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, VST_TD_Player[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, VST_TD_Player[playerid][3], 255);
    PlayerTextDrawFont(playerid, VST_TD_Player[playerid][3], 1);
    PlayerTextDrawSetProportional(playerid, VST_TD_Player[playerid][3], 1);

    VST_TD_Player[playerid][4] = CreatePlayerTextDraw(playerid, 331.221, 261.100, "90%");
    PlayerTextDrawLetterSize(playerid, VST_TD_Player[playerid][4], 0.172, 0.684);
    PlayerTextDrawAlignment(playerid, VST_TD_Player[playerid][4], 1);
    PlayerTextDrawColor(playerid, VST_TD_Player[playerid][4], -1);
    PlayerTextDrawSetShadow(playerid, VST_TD_Player[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, VST_TD_Player[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, VST_TD_Player[playerid][4], 255);
    PlayerTextDrawFont(playerid, VST_TD_Player[playerid][4], 1);
    PlayerTextDrawSetProportional(playerid, VST_TD_Player[playerid][4], 1);

    VST_TD_Player[playerid][5] = CreatePlayerTextDraw(playerid, 339.880, 349.015, "SPAWN");
    PlayerTextDrawLetterSize(playerid, VST_TD_Player[playerid][5], 0.171, 1.116);
    PlayerTextDrawTextSize(playerid, VST_TD_Player[playerid][5], 242.000, 3.500);
    PlayerTextDrawAlignment(playerid, VST_TD_Player[playerid][5], 2);
    PlayerTextDrawColor(playerid, VST_TD_Player[playerid][5], 255);
    PlayerTextDrawSetShadow(playerid, VST_TD_Player[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, VST_TD_Player[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, VST_TD_Player[playerid][5], 255);
    PlayerTextDrawFont(playerid, VST_TD_Player[playerid][5], 2);
    PlayerTextDrawSetProportional(playerid, VST_TD_Player[playerid][5], 1);

    VST_TD_Player[playerid][6] = CreatePlayerTextDraw(playerid, 337.582, 110.930, "BUFFALO");
    PlayerTextDrawLetterSize(playerid, VST_TD_Player[playerid][6], 0.207, 0.841);
    PlayerTextDrawAlignment(playerid, VST_TD_Player[playerid][6], 2);
    PlayerTextDrawColor(playerid, VST_TD_Player[playerid][6], -1);
    PlayerTextDrawSetShadow(playerid, VST_TD_Player[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, VST_TD_Player[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, VST_TD_Player[playerid][6], 255);
    PlayerTextDrawFont(playerid, VST_TD_Player[playerid][6], 2);
    PlayerTextDrawSetProportional(playerid, VST_TD_Player[playerid][6], 1);

    VST_TD_Player[playerid][7] = CreatePlayerTextDraw(playerid, 339.000, 297.000, "Flint Country");
    PlayerTextDrawLetterSize(playerid, VST_TD_Player[playerid][7], 0.140, 1.1);
    PlayerTextDrawAlignment(playerid, VST_TD_Player[playerid][7], 2);
    PlayerTextDrawColor(playerid, VST_TD_Player[playerid][7], -1);
    PlayerTextDrawSetShadow(playerid, VST_TD_Player[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, VST_TD_Player[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, VST_TD_Player[playerid][7], 150);
    PlayerTextDrawFont(playerid, VST_TD_Player[playerid][7], 2);
    PlayerTextDrawSetProportional(playerid, VST_TD_Player[playerid][7], 1);
}

CreateGROTTI_TD()
{
    GROTTI_TD[0] = TextDrawCreate(255.000, 351.000, "LD_SPAC:white");
    TextDrawTextSize(GROTTI_TD[0], 133.000, 55.000);
    TextDrawAlignment(GROTTI_TD[0], 1);
    TextDrawColor(GROTTI_TD[0], -65281);
    TextDrawSetShadow(GROTTI_TD[0], 0);
    TextDrawSetOutline(GROTTI_TD[0], 0);
    TextDrawBackgroundColor(GROTTI_TD[0], 255);
    TextDrawFont(GROTTI_TD[0], 4);
    TextDrawSetProportional(GROTTI_TD[0], 1);

    GROTTI_TD[1] = TextDrawCreate(222.000, 351.000, "LD_SPAC:white");
    TextDrawTextSize(GROTTI_TD[1], 31.000, 55.000);
    TextDrawAlignment(GROTTI_TD[1], 1);
    TextDrawColor(GROTTI_TD[1], 13554175);
    TextDrawSetShadow(GROTTI_TD[1], 0);
    TextDrawSetOutline(GROTTI_TD[1], 0);
    TextDrawBackgroundColor(GROTTI_TD[1], 255);
    TextDrawFont(GROTTI_TD[1], 4);
    TextDrawSetProportional(GROTTI_TD[1], 1);
    TextDrawSetSelectable(GROTTI_TD[1], 1);

    GROTTI_TD[2] = TextDrawCreate(390.500, 351.000, "LD_SPAC:white");
    TextDrawTextSize(GROTTI_TD[2], 31.000, 55.000);
    TextDrawAlignment(GROTTI_TD[2], 1);
    TextDrawColor(GROTTI_TD[2], 13554175);
    TextDrawSetShadow(GROTTI_TD[2], 0);
    TextDrawSetOutline(GROTTI_TD[2], 0);
    TextDrawBackgroundColor(GROTTI_TD[2], 255);
    TextDrawFont(GROTTI_TD[2], 4);
    TextDrawSetProportional(GROTTI_TD[2], 1);
    TextDrawSetSelectable(GROTTI_TD[2], 1);

    GROTTI_TD[3] = TextDrawCreate(225.000, 366.000, "LD_BEAT:left");
    TextDrawTextSize(GROTTI_TD[3], 25.000, 26.000);
    TextDrawAlignment(GROTTI_TD[3], 1);
    TextDrawColor(GROTTI_TD[3], -65281);
    TextDrawSetShadow(GROTTI_TD[3], 0);
    TextDrawSetOutline(GROTTI_TD[3], 0);
    TextDrawBackgroundColor(GROTTI_TD[3], 255);
    TextDrawFont(GROTTI_TD[3], 4);
    TextDrawSetProportional(GROTTI_TD[3], 1);

    GROTTI_TD[4] = TextDrawCreate(395.000, 366.000, "LD_BEAT:right");
    TextDrawTextSize(GROTTI_TD[4], 25.000, 26.000);
    TextDrawAlignment(GROTTI_TD[4], 1);
    TextDrawColor(GROTTI_TD[4], -65281);
    TextDrawSetShadow(GROTTI_TD[4], 0);
    TextDrawSetOutline(GROTTI_TD[4], 0);
    TextDrawBackgroundColor(GROTTI_TD[4], 255);
    TextDrawFont(GROTTI_TD[4], 4);
    TextDrawSetProportional(GROTTI_TD[4], 1);

    GROTTI_TD[5] = TextDrawCreate(323.000, 370.000, "Max Speed:");
    TextDrawLetterSize(GROTTI_TD[5], 0.150, 1.399);
    TextDrawAlignment(GROTTI_TD[5], 1);
    TextDrawColor(GROTTI_TD[5], 13554175);
    TextDrawSetShadow(GROTTI_TD[5], 0);
    TextDrawSetOutline(GROTTI_TD[5], 0);
    TextDrawBackgroundColor(GROTTI_TD[5], 150);
    TextDrawFont(GROTTI_TD[5], 2);
    TextDrawSetProportional(GROTTI_TD[5], 1);

    GROTTI_TD[6] = TextDrawCreate(323.000, 381.000, "Model:");
    TextDrawLetterSize(GROTTI_TD[6], 0.150, 1.399);
    TextDrawAlignment(GROTTI_TD[6], 1);
    TextDrawColor(GROTTI_TD[6], 13554175);
    TextDrawSetShadow(GROTTI_TD[6], 0);
    TextDrawSetOutline(GROTTI_TD[6], 0);
    TextDrawBackgroundColor(GROTTI_TD[6], 150);
    TextDrawFont(GROTTI_TD[6], 2);
    TextDrawSetProportional(GROTTI_TD[6], 1);

    GROTTI_TD[7] = TextDrawCreate(323.000, 392.000, "Type:");
    TextDrawLetterSize(GROTTI_TD[7], 0.150, 1.399);
    TextDrawAlignment(GROTTI_TD[7], 1);
    TextDrawColor(GROTTI_TD[7], 13554175);
    TextDrawSetShadow(GROTTI_TD[7], 0);
    TextDrawSetOutline(GROTTI_TD[7], 0);
    TextDrawBackgroundColor(GROTTI_TD[7], 150);
    TextDrawFont(GROTTI_TD[7], 2);
    TextDrawSetProportional(GROTTI_TD[7], 1);

    GROTTI_TD[8] = TextDrawCreate(255.000, 409.000, "LD_SPAC:white");
    TextDrawTextSize(GROTTI_TD[8], 133.000, 14.000);
    TextDrawAlignment(GROTTI_TD[8], 1);
    TextDrawColor(GROTTI_TD[8], -65281);
    TextDrawSetShadow(GROTTI_TD[8], 0);
    TextDrawSetOutline(GROTTI_TD[8], 0);
    TextDrawBackgroundColor(GROTTI_TD[8], 255);
    TextDrawFont(GROTTI_TD[8], 4);
    TextDrawSetProportional(GROTTI_TD[8], 1);
    TextDrawSetSelectable(GROTTI_TD[8], 1);

    GROTTI_TD[9] = TextDrawCreate(263.000, 335.000, "Price:");
    TextDrawLetterSize(GROTTI_TD[9], 0.319, 1.399);
    TextDrawAlignment(GROTTI_TD[9], 1);
    TextDrawColor(GROTTI_TD[9], 13554175);
    TextDrawSetShadow(GROTTI_TD[9], 0);
    TextDrawSetOutline(GROTTI_TD[9], 0);
    TextDrawBackgroundColor(GROTTI_TD[9], 150);
    TextDrawFont(GROTTI_TD[9], 2);
    TextDrawSetProportional(GROTTI_TD[9], 1);

    GROTTI_TD[10] = TextDrawCreate(255.000, 334.000, "LD_SPAC:white");
    TextDrawTextSize(GROTTI_TD[10], 133.000, 14.000);
    TextDrawAlignment(GROTTI_TD[10], 1);
    TextDrawColor(GROTTI_TD[10], -65281);
    TextDrawSetShadow(GROTTI_TD[10], 0);
    TextDrawSetOutline(GROTTI_TD[10], 0);
    TextDrawBackgroundColor(GROTTI_TD[10], 255);
    TextDrawFont(GROTTI_TD[10], 4);
    TextDrawSetProportional(GROTTI_TD[10], 1);

    GROTTI_TD[11] = TextDrawCreate(304.000, 408.000, "BUY");
    TextDrawLetterSize(GROTTI_TD[11], 0.519, 1.699);
    TextDrawAlignment(GROTTI_TD[11], 1);
    TextDrawColor(GROTTI_TD[11], 13554175);
    TextDrawSetShadow(GROTTI_TD[11], 0);
    TextDrawSetOutline(GROTTI_TD[11], 0);
    TextDrawBackgroundColor(GROTTI_TD[11], 150);
    TextDrawFont(GROTTI_TD[11], 2);
    TextDrawSetProportional(GROTTI_TD[11], 1);
}

CreateGROTTI_TD_PLAYER(playerid)
{
    GROTTI_TD_PLAYER[playerid][0] = CreatePlayerTextDraw(playerid, 251.000, 327.000, "_");
    PlayerTextDrawTextSize(playerid, GROTTI_TD_PLAYER[playerid][0], 78.000, 95.000);
    PlayerTextDrawAlignment(playerid, GROTTI_TD_PLAYER[playerid][0], 1);
    PlayerTextDrawColor(playerid, GROTTI_TD_PLAYER[playerid][0], -1);
    PlayerTextDrawSetShadow(playerid, GROTTI_TD_PLAYER[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, GROTTI_TD_PLAYER[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, GROTTI_TD_PLAYER[playerid][0], 0);
    PlayerTextDrawFont(playerid, GROTTI_TD_PLAYER[playerid][0], 5);
    PlayerTextDrawSetProportional(playerid, GROTTI_TD_PLAYER[playerid][0], 0);
    PlayerTextDrawSetPreviewModel(playerid, GROTTI_TD_PLAYER[playerid][0], 402);
    PlayerTextDrawSetPreviewRot(playerid, GROTTI_TD_PLAYER[playerid][0], -7.000, 2.000, -42.000, 0.899);
    PlayerTextDrawSetPreviewVehCol(playerid, GROTTI_TD_PLAYER[playerid][0], 0, 0);

    GROTTI_TD_PLAYER[playerid][1] = CreatePlayerTextDraw(playerid, 323.000, 354.000, "MOUNTAIN BIKE");
    PlayerTextDrawLetterSize(playerid, GROTTI_TD_PLAYER[playerid][1], 0.200, 1.500);
    PlayerTextDrawAlignment(playerid, GROTTI_TD_PLAYER[playerid][1], 1);
    PlayerTextDrawColor(playerid, GROTTI_TD_PLAYER[playerid][1], -1);
    PlayerTextDrawSetShadow(playerid, GROTTI_TD_PLAYER[playerid][1], 1);
    PlayerTextDrawSetOutline(playerid, GROTTI_TD_PLAYER[playerid][1], 1);
    PlayerTextDrawBackgroundColor(playerid, GROTTI_TD_PLAYER[playerid][1], 150);
    PlayerTextDrawFont(playerid, GROTTI_TD_PLAYER[playerid][1], 2);
    PlayerTextDrawSetProportional(playerid, GROTTI_TD_PLAYER[playerid][1], 1);

    GROTTI_TD_PLAYER[playerid][2] = CreatePlayerTextDraw(playerid, 362.000, 370.000, "220 KM/H");
    PlayerTextDrawLetterSize(playerid, GROTTI_TD_PLAYER[playerid][2], 0.129, 1.399);
    PlayerTextDrawAlignment(playerid, GROTTI_TD_PLAYER[playerid][2], 1);
    PlayerTextDrawColor(playerid, GROTTI_TD_PLAYER[playerid][2], 13554175);
    PlayerTextDrawSetShadow(playerid, GROTTI_TD_PLAYER[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, GROTTI_TD_PLAYER[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, GROTTI_TD_PLAYER[playerid][2], 150);
    PlayerTextDrawFont(playerid, GROTTI_TD_PLAYER[playerid][2], 2);
    PlayerTextDrawSetProportional(playerid, GROTTI_TD_PLAYER[playerid][2], 1);

    GROTTI_TD_PLAYER[playerid][3] = CreatePlayerTextDraw(playerid, 348.000, 381.000, "402");
    PlayerTextDrawLetterSize(playerid, GROTTI_TD_PLAYER[playerid][3], 0.150, 1.399);
    PlayerTextDrawAlignment(playerid, GROTTI_TD_PLAYER[playerid][3], 1);
    PlayerTextDrawColor(playerid, GROTTI_TD_PLAYER[playerid][3], 13554175);
    PlayerTextDrawSetShadow(playerid, GROTTI_TD_PLAYER[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, GROTTI_TD_PLAYER[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, GROTTI_TD_PLAYER[playerid][3], 150);
    PlayerTextDrawFont(playerid, GROTTI_TD_PLAYER[playerid][3], 2);
    PlayerTextDrawSetProportional(playerid, GROTTI_TD_PLAYER[playerid][3], 1);

    GROTTI_TD_PLAYER[playerid][4] = CreatePlayerTextDraw(playerid, 342.000, 392.000, "SPORT");
    PlayerTextDrawLetterSize(playerid, GROTTI_TD_PLAYER[playerid][4], 0.150, 1.399);
    PlayerTextDrawAlignment(playerid, GROTTI_TD_PLAYER[playerid][4], 1);
    PlayerTextDrawColor(playerid, GROTTI_TD_PLAYER[playerid][4], 13554175);
    PlayerTextDrawSetShadow(playerid, GROTTI_TD_PLAYER[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, GROTTI_TD_PLAYER[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, GROTTI_TD_PLAYER[playerid][4], 150);
    PlayerTextDrawFont(playerid, GROTTI_TD_PLAYER[playerid][4], 2);
    PlayerTextDrawSetProportional(playerid, GROTTI_TD_PLAYER[playerid][4], 1);

    GROTTI_TD_PLAYER[playerid][5] = CreatePlayerTextDraw(playerid, 305.000, 335.000, "20000000$");
    PlayerTextDrawLetterSize(playerid, GROTTI_TD_PLAYER[playerid][5], 0.310, 1.399);
    PlayerTextDrawAlignment(playerid, GROTTI_TD_PLAYER[playerid][5], 1);
    PlayerTextDrawColor(playerid, GROTTI_TD_PLAYER[playerid][5], 13554175);
    PlayerTextDrawSetShadow(playerid, GROTTI_TD_PLAYER[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, GROTTI_TD_PLAYER[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, GROTTI_TD_PLAYER[playerid][5], 150);
    PlayerTextDrawFont(playerid, GROTTI_TD_PLAYER[playerid][5], 2);
    PlayerTextDrawSetProportional(playerid, GROTTI_TD_PLAYER[playerid][5], 1);
}