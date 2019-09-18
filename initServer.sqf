	setDate [2021, 8, 10, 4, 30];
	
	///////////////////////////////////////////////////
	//Nimmt Russen die total bescheuerten Brillen weg//
	///////////////////////////////////////////////////
	
	{if ((side _x) != west) then {removeGoggles _x};}foreach allUnits;

	// /////////////////////////////////////////
	// //Fzg Loadout ca. 1/4 Truppstartloadout//
	// /////////////////////////////////////////
	
	//Zgf
	{

		_x addItemCargoGlobal ["BWA3_30Rnd_556x45_G36_AP", 8];
		_x addItemCargoGlobal ["BWA3_30Rnd_556x45_G36_Tracer", 2];
		_x addItemCargoGlobal ["BWA3_15Rnd_9x19_P8", 3];
		_x addItemCargoGlobal ["ACE_fieldDressing",9];
		_x addItemCargoGlobal ["ACE_packingBandage",9];
		_x addItemCargoGlobal ["ACE_tourniquet",3];
		_x addItemCargoGlobal ["ACE_morphine",3];
		_x addItemCargoGlobal ["Chemlight_green",3];
		_x addItemCargoGlobal ["B_IR_Grenade",3];
		_x addBackpackCargoGlobal ["ACE_TacticalLadder_Pack",1];

	} 
	forEach [zf_veh_1];
	
	//Inf
	{

		_x addItemCargoGlobal ["BWA3_30Rnd_556x45_G36_AP", 9];
		_x addItemCargoGlobal ["BWA3_30Rnd_556x45_G36_Tracer", 2];
		_x addItemCargoGlobal ["BWA3_200Rnd_556x45", 2];
		_x addItemCargoGlobal ["BWA3_15Rnd_9x19_P8", 4];
		_x addItemCargoGlobal ["ACE_fieldDressing",9];
		_x addItemCargoGlobal ["ACE_packingBandage",9];
		_x addItemCargoGlobal ["ACE_tourniquet",3];
		_x addItemCargoGlobal ["ACE_morphine",3];
		_x addItemCargoGlobal ["Chemlight_green",3];
		_x addItemCargoGlobal ["B_IR_Grenade",3];
		_x addItemCargoGlobal ["1Rnd_HE_Grenade_shell",3];
		_x addItemCargoGlobal ["BWA3_Fliegerfaust",2];
		_x addItemCargoGlobal ["BWA3_Fliegerfaust_Mag",4];

	} 
	forEach [inf_veh_1,inf_veh_2,inf_veh_3];
	
	//MG
	{

		_x addItemCargoGlobal ["hlc_100Rnd_762x51_M_MG3", 2];
		_x addItemCargoGlobal ["hlc_50Rnd_762x51_M_MG3", 2];
		_x addItemCargoGlobal ["BWA3_15Rnd_9x19_P8", 2];
		_x addItemCargoGlobal ["BWA3_30Rnd_556x45_G36_AP", 6];
		_x addItemCargoGlobal ["BWA3_30Rnd_556x45_G36_Tracer", 2];
		_x addItemCargoGlobal ["hlc_20rnd_762x51_b_G3", 2];
		_x addItemCargoGlobal ["ACE_fieldDressing",9];
		_x addItemCargoGlobal ["ACE_packingBandage",9];
		_x addItemCargoGlobal ["ACE_tourniquet",3];
		_x addItemCargoGlobal ["ACE_morphine",3];
		_x addItemCargoGlobal ["Chemlight_green",3];
		_x addItemCargoGlobal ["B_IR_Grenade",3];
		_x addItemCargoGlobal ["BWA3_Fliegerfaust",2];
		_x addItemCargoGlobal ["BWA3_Fliegerfaust_Mag",4];

	} 
	forEach [inf_veh_4];

	//San
	{

		_x addItemCargoGlobal ["BWA3_30Rnd_556x45_G36_AP",6];
		_x addItemCargoGlobal ["BWA3_15Rnd_9x19_P8",4];
		_x addItemCargoGlobal ["ACE_fieldDressing",20];
		_x addItemCargoGlobal ["ACE_elasticBandage",20];
		_x addItemCargoGlobal ["ACE_packingBandage",20];
		_x addItemCargoGlobal ["ACE_quikclot",20];
		_x addItemCargoGlobal ["ACE_tourniquet",10];
		_x addItemCargoGlobal ["ACE_morphine",10];
		_x addItemCargoGlobal ["ACE_epinephrine",10];
		_x addItemCargoGlobal ["ACE_CableTie",4];
		_x addItemCargoGlobal ["Chemlight_green",2];
		_x addItemCargoGlobal ["B_IR_Grenade",1];
		_x addItemCargoGlobal ["ACE_surgicalKit",4];
		_x addItemCargoGlobal ["ACE_salineIV_250",4];
		_x addItemCargoGlobal ["ACE_salineIV_500",4];
		_x addItemCargoGlobal ["ACE_salineIV",4];
		_x addItemCargoGlobal ["ACE_bodyBag",10];
		_x addItemCargoGlobal ["adv_aceCPR_AED",4];
	} 
	forEach [san_veh_1];

	//Ammotrucks
	{
		for "_i" from 1 to 6 do {[_x, "Redd_Tank_Fuchs_1A4_Jg_Flecktarn"] call ace_rearm_fnc_addVehicleMagazinesToSupply;};
		
		for "_i" from 1 to 6 do {[_x, "rhs_mag_M151_19"] call ace_rearm_fnc_addMagazineToSupply;};
		for "_i" from 1 to 4 do {[_x, "rhs_mag_AGM114K_4"] call ace_rearm_fnc_addMagazineToSupply;};
		for "_i" from 1 to 4 do {[_x, "rhs_mag_AGM114N_4"] call ace_rearm_fnc_addMagazineToSupply;};
		for "_i" from 1 to 4 do {[_x, "rhs_mag_Sidewinder_heli"] call ace_rearm_fnc_addMagazineToSupply;};
		for "_i" from 1 to 3 do {[_x, "30Rnd_CMFlare_Chaff_Magazine"] call ace_rearm_fnc_addMagazineToSupply;};
		for "_i" from 1 to 24 do {[_x, "rhs_mag_30x113mm_M789_HEDP_1200", true] call ace_rearm_fnc_addMagazineToSupply;};
		
		_x setVariable ["ACE_isRepairVehicle", true, true];
	}
	forEach [ammo_truck_1, ammo_truck_2];
	
	//////////////////
	//Spritverbrauch//
	//////////////////

	[[

		zf_veh_1,
		san_veh_1,
		inf_veh_1,
		inf_veh_2,
		inf_veh_3,
		inf_veh_4,
		ammo_truck_1,
		ammo_truck_2

	],7.5] call Fett_Redd_fnc_FuelConsumption;

	[[
		
		heli_veh_1,
		heli_veh_2,
		heli_veh_3
	],5] call Fett_Redd_fnc_FuelConsumption;

	////////////////////////////////////////
	//Munikisten ca. 1 Gruppenstartloadout//
	////////////////////////////////////////

	//AT
	{
	
		_x addItemCargoGlobal ["BWA3_PzF3_Tandem_Loaded", 2];
		_x setVariable ["ace_cargo_displayName", "Panzerfaust 3", true];
	}
	forEach [at_muni_1,at_muni_2,at_muni_3,at_muni_4,at_muni_5,at_muni_6,at_muni_7,at_muni_8];

	//MG
	{
	
		_x addItemCargoGlobal ["hlc_250Rnd_762x51_M_MG3", 6];
		_x addItemCargoGlobal ["hlc_100Rnd_762x51_M_MG3", 4];
		_x addItemCargoGlobal ["hlc_50Rnd_762x51_M_MG3", 4];
		_x addItemCargoGlobal ["ACE_SpareBarrel", 2];
		_x setVariable ["ace_cargo_displayName", "MG Munition", true];
		
	}
	forEach [mg_muni_1,mg_muni_2,mg_muni_3,mg_muni_4];

	//Inf
	{
	
		_x addItemCargoGlobal ["BWA3_30Rnd_556x45_G36_Tracer", 7];
		_x addItemCargoGlobal ["BWA3_30Rnd_556x45_G36_AP", 28];
		_x addItemCargoGlobal ["BWA3_200Rnd_556x45", 8];
		_x addItemCargoGlobal ["hlc_20rnd_762x51_b_G3", 5];
		_x addItemCargoGlobal ["BWA3_15Rnd_9x19_P8", 10];
		_x addItemCargoGlobal ["BWA3_DM51A1", 10];
		_x addItemCargoGlobal ["BWA3_DM25", 24];
		_x addItemCargoGlobal ["BWA3_DM32_Purple", 5];
		_x addItemCargoGlobal ["BWA3_DM32_Red", 5];
		_x addItemCargoGlobal ["BWA3_DM32_Green", 5];
		_x addItemCargoGlobal ["rhs_mag_mk84",8];
		_x addItemCargoGlobal ["Chemlight_green",8];
		_x addItemCargoGlobal ["ACE_CableTie",8];
		_x setVariable ["ace_cargo_displayName", "Standard Munition", true];

	}
	forEach 
	[
		
		inf_muni_1,
		inf_muni_2,
		inf_muni_3,
		inf_muni_4,
		inf_muni_5,
		inf_muni_6,
		inf_muni_7,
		inf_muni_8

	];
	
	{
	
		_x addItemCargoGlobal ["BWA3_DM51A1", 10];
		_x addItemCargoGlobal ["BWA3_DM25", 24];
		_x addItemCargoGlobal ["BWA3_DM32_Purple", 5];
		_x addItemCargoGlobal ["BWA3_DM32_Red", 5];
		_x addItemCargoGlobal ["BWA3_DM32_Green", 5];
		_x addItemCargoGlobal ["1Rnd_HE_Grenade_shell",40];
		_x addItemCargoGlobal ["1Rnd_SmokeRed_Grenade_shell",10];
		_x addItemCargoGlobal ["1Rnd_SmokeGreen_Grenade_shell",10];
		_x addItemCargoGlobal ["1Rnd_SmokePurple_Grenade_shell",10];
		_x setVariable ["ace_cargo_displayName", "Granaten", true];

	}
	forEach 
	[
		
		gr_muni_1,
		gr_muni_2,
		gr_muni_3,
		gr_muni_4
	];

	//AusrüstungsKisten
	{

		_x addItemCargoGlobal ["ACE_CableTie", 20];
		_x addItemCargoGlobal ["ACE_Flashlight_MX991", 10];
		_x addItemCargoGlobal ["NVGoggles_OPFOR", 10];
		_x addItemCargoGlobal ["Rangefinder", 10];
		_x addItemCargoGlobal ["ACE_DK10_b", 5];
		_x addItemCargoGlobal ["ACE_GD300_b", 5];
		_x addItemCargoGlobal ["TFAR_anprc152", 10];
		_x addItemCargoGlobal ["ACE_EntrenchingTool", 10];
		_x addItemCargoGlobal ["ToolKit", 3];
		_x addItemCargoGlobal ["ACE_MapTools", 5];
		_x addItemCargoGlobal ["ACE_HelmetCam", 5];
		_x addItemCargoGlobal ["Laserbatteries", 2];
		_x addItemCargoGlobal ["Laserdesignator_03", 2];
		_x addItemCargoGlobal ["ACE_RangeCard", 3];
		_x addItemCargoGlobal ["ACE_microDAGR", 2];
		_x setVariable ["ace_cargo_displayName", "Ausrüstung", true];
		
	}
	forEach [equi_1];
	{
		
		_x addBackpackCargoGlobal ["BWA3_Carryall_Fleck", 3];
		_x addBackpackCargoGlobal ["TFAR_rt1523g_big_bwmod", 3];
		_x addBackpackCargoGlobal ["BWA3_AssaultPack_Fleck", 3];
		_x setVariable ["ace_cargo_displayName", "Rucksäcke", true];
		
	}
	forEach [equi_2];

	//SaniKisten
	{

		_x addItemCargoGlobal ["ACE_fieldDressing", 90];
		_x addItemCargoGlobal ["ACE_elasticBandage", 90];
		_x addItemCargoGlobal ["ACE_packingBandage", 90];
		_x addItemCargoGlobal ["ACE_quikclot", 90];
		_x addItemCargoGlobal ["ACE_tourniquet", 30];
		_x addItemCargoGlobal ["ACE_morphine", 30];
		_x addItemCargoGlobal ["ACE_epinephrine", 30];
		_x addItemCargoGlobal ["ACE_surgicalKit", 12];
		_x addItemCargoGlobal ["ACE_salineIV_250", 12];
		_x addItemCargoGlobal ["ACE_salineIV_500", 12];
		_x addItemCargoGlobal ["ACE_salineIV", 12];
		_x addItemCargoGlobal ["ACE_bodyBag",10];
		_x setVariable ["ace_cargo_displayName", "Sanitätsmaterial", true];
		
	}
	forEach [sanKiste_1,sanKiste_2,sanKiste_3,sanKiste_4,sanKiste_5,sanKiste_6];
	
	{
	
		_x addItemCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 14];
		_x addItemCargoGlobal ["rhsusf_mag_15Rnd_9x19_JHP", 4];
		_x addItemCargoGlobal ["SmokeShell", 10];
		_x addItemCargoGlobal ["SmokeShellPurple", 4];
		_x addItemCargoGlobal ["SmokeShellRed", 4];
		_x addItemCargoGlobal ["SmokeShellGreen", 4];
		_x addItemCargoGlobal ["Chemlight_green",4];
		_x setVariable ["ace_cargo_displayName", "US Munition", true];

	}
	forEach [us_muni_1];
	
		
	[] spawn
	{
		sleep 30;
		
		[inf_muni_box,100] call ace_cargo_fnc_setSpace; 
		[inf_muni_box,[inf_muni_1,inf_muni_2,inf_muni_3,inf_muni_4,inf_muni_5,inf_muni_6,inf_muni_7,inf_muni_8,mg_muni_1,mg_muni_2,mg_muni_3,mg_muni_4,us_muni_1]] spawn compile preprocessFileLineNumbers "scripts\loadIn.sqf";

		[at_muni_box,100] call ace_cargo_fnc_setSpace; 
		[at_muni_box,[at_muni_1,at_muni_2,at_muni_3,at_muni_4,at_muni_5,at_muni_6,at_muni_7,at_muni_8]] spawn compile preprocessFileLineNumbers "scripts\loadIn.sqf";
		
		[supply_box,100] call ace_cargo_fnc_setSpace; 
		[supply_box,[gr_muni_1,gr_muni_2,gr_muni_3,gr_muni_4,equi_1,equi_2]] spawn compile preprocessFileLineNumbers "scripts\loadIn.sqf";
		
		[sani_box,100] call ace_cargo_fnc_setSpace; 
		[sani_box,[sanKiste_1,sanKiste_2,sanKiste_3,sanKiste_4,sanKiste_5,sanKiste_6]] spawn compile preprocessFileLineNumbers "scripts\loadIn.sqf";
	};