postaviNovac( ) {

	if( ServerInfo[ NovacVozilo ] != -1 ) KGEyes_DestroyVehicle( ServerInfo[ NovacVozilo ], 45 ), ResetVehicle( ServerInfo[ NovacVozilo ] ), ServerInfo[ NovacVozilo ] = -1;
	
	ServerInfo[ MisijaPocela ] = 120 + gettime();
	ServerInfo[ MisijaIstice ] = 600 + gettime();
	ServerInfo[ NovacPoceo ] = 1;
	new randompos = random(sizeof(MoneyTruck));
	ServerInfo[ NovacVozilo ] = KGEyes_CreateVehicle(428, MoneyTruck[randompos][0], MoneyTruck[randompos][1], MoneyTruck[randompos][2], MoneyTruck[randompos][3], -1, -1, 1200);
	ResetVehicle( ServerInfo[ NovacVozilo ] );
	ResetVehicleStatistics( ServerInfo[ NovacVozilo ] );
	KGEyes_SetVehicleHealth( ServerInfo[ NovacVozilo ], 8000 );

	foreach(new i : Player) {
		if( poceoPrevoz[ i ] != 0 ) poceoPrevoz[ i ] = 0;
		if( IsACop(i) || gPlayerData[ i ][ E_PLAYER_ADMIN_LEVEL ] > 0 ) {

			SCM( i, ZUTA, "A security truck with money was delivered to a random police station. PD must take it to Las Venturas safely." );
			//SCM( i, ZUTA, "The PD & FBI must safely take it to a safe in Las Venturas." );
			//SCM( i, ZUTA, "Various mafias and gangs probably have the report of transportation, maximum caution is needed." );
		}
		if( IsACriminal(i) ) {

			SCM( i, ZUTA, "A security truck with money was delivered to a random police station. Take it to your HQ for cash." );
			//SCM( i, ZUTA, "The PD & FBI must safely take it to a safe in Las Venturas." );
			//SCM( i, ZUTA, "It is up to you to prevent that transport, others mafias know it too." );
		}
	}
}

postaviHelikopter( ) {

	if( ServerInfo[ HelikopterVozilo ] != -1 ) KGEyes_DestroyVehicle( ServerInfo[ HelikopterVozilo ], 4 ), ResetVehicle( ServerInfo[ HelikopterVozilo ] ), ServerInfo[ HelikopterVozilo ] = -1;
	if( IsValidDynamicObject( ServerInfo[ HelikopterObjekat ] ) )  DestroyDynamicObject( ServerInfo[ HelikopterObjekat ] );
	if( IsValidDynamicObject( ServerInfo[ HelikopterObjekat1 ] ) ) DestroyDynamicObject( ServerInfo[ HelikopterObjekat1 ] );
	ServerInfo[ HelikopterObjekat ] = ServerInfo[ HelikopterObjekat1 ] = -1;
	
	ServerInfo[ MisijaPocela ] = 120 + gettime();
	ServerInfo[ MisijaIstice ] = 300 + gettime();
	ServerInfo[ HelikopterPoceo ] = 1;
	ServerInfo[ HelikopterVozilo ] = KGEyes_CreateVehicle(548, 2063.4290, -2633.9573, 15.3204, 0.0000, -1, -1, 1200);
	ResetVehicle( ServerInfo[ HelikopterVozilo ] );
	ResetVehicleStatistics( ServerInfo[ HelikopterVozilo ] );
	
	KGEyes_SetVehicleHealth( ServerInfo[ HelikopterVozilo ], 10000 );
	ServerInfo[ HelikopterObjekat ] = CreateDynamicObject(2934, 2838.05615, -2485.51758, 36.38874,   0.00000, 0.00000, 0.00000);
	ServerInfo[ HelikopterObjekat1 ] = CreateDynamicObject(19089, 2838.10132, -2485.58472, 44.05347,   0.00000, 0.00000, 0.00000);

	SCMA( ZUTA, "A cargo helicopter landed at LSAP. Group that gets to it first will start the mission." );
} 
//==============================FIRE MISSIONS==========================================
new HazardObjectProgress;


CreateRoadHazard( location ) {

	SetDynamicObjectVW( ServerInfo[HazardObject] , 10001);
	SetDynamic3DTextVW( ServerInfo[HazardLabel] , 10001);
	HazardObjectProgress=0;
	UpdateDynamic3DTextLabelText( ServerInfo[HazardLabel],  0xFF0000FF, "Progress: 0%" );
	if(location == 1) // BB
	{
		SetDynamicObjectModel(ServerInfo[HazardObject],846);
		SetDynamicObjectPos(ServerInfo[HazardObject],  -0.8487, -485.3226, 4.3976);
		SetDynamicObjectRot(ServerInfo[HazardObject],  0.0000, -6.4999, -75.2000);
		SetDynamic3DTextPos(ServerInfo[HazardLabel], -0.8487, -485.3226, 4.3976);

		SetDynamicObjectVW( ServerInfo[HazardObject] , 0); 
		SetDynamic3DTextVW( ServerInfo[HazardLabel] , 0);

		foreach(new i : Player) {
			if( gPlayerData[i][E_PLAYER_DUTY] == E_DUTY_FIREFIGHTER ) {
				SCM( i, 0xF7393900, "[Dispatch] There's a fallen tree at Blueberry. Clear it out to get rewarded." );
			}
		}
	}
	else if(location == 2) // Market
	{
		SetDynamicObjectModel(ServerInfo[HazardObject],1307);
		SetDynamicObjectPos(ServerInfo[HazardObject], 1530.8676, -785.3576, 75.0868);
		SetDynamicObjectRot(ServerInfo[HazardObject], -118.2199, -81.2802, 51.4801);
		SetDynamic3DTextPos(ServerInfo[HazardLabel], 1526.1753,-790.3757,75.2847);

		SetDynamicObjectVW( ServerInfo[HazardObject] , 0); 
		SetDynamic3DTextVW( ServerInfo[HazardLabel] , 0);

		foreach(new i : Player) {
			if( gPlayerData[i][E_PLAYER_DUTY] == E_DUTY_FIREFIGHTER ) {
				SCM( i, 0xF7393900, "[Dispatch] There's a fallen pole at Mullholland. Clear it out to get rewarded." );
			}
		}
	}
	/*
	else if(location == 3) // Mullholland
	{
		SetDynamicObjectModel(ServerInfo[HazardObject],1307);
		SetDynamicObjectPos(ServerInfo[HazardObject], 1528.19617, -794.19727, 71.30904);
		SetDynamicObjectRot(ServerInfo[HazardObject], -4.02004, -70.08035, -28.92000);
		SetDynamic3DTextPos(ServerInfo[HazardLabel], 1517.6652,-788.8269,76.3644);

		SetDynamicObjectVW( ServerInfo[HazardObject] , 0); 
		SetDynamic3DTextVW( ServerInfo[HazardLabel] , 0);

		foreach(new i : Player) {
			if( gPlayerData[i][E_PLAYER_DUTY] == E_DUTY_FIREFIGHTER ) {
				SCM( i, 0xF7393900, "[Dispatch] There's a fallen telephone pole at Mulholland. Clear it out to get rewarded." );
			}
		}
	}*/

}