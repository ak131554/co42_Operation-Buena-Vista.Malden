

	params ["_unit","_loadout","_tarn"];

	removeAllWeapons _unit;
	removeAllItems _unit;
	removeAllAssignedItems _unit;
	removeUniform _unit;
	removeVest _unit;
	removeBackpack _unit;
	removeHeadgear _unit;
	removeGoggles _unit;

	//Add uniform
	switch toLower (_loadout) do
	{

		case "pilot";
		case "pilot_l";
		case "pilot_s";
		case "pilot_t":
		{
			_unit forceAddUniform "BWA3_Uniform_Helipilot";

		};

		case "pilot_p":
		{
			_unit forceAddUniform "U_C_WorkerCoveralls";

		};

	};

	//uniform base items
	for "_i" from 1 to 6 do {_unit addItemToUniform "BWA3_40Rnd_46x30_MP7";};

	//Add vest
	_unit addVest "MNP_Vest_OD_B";
	for "_i" from 1 to 6 do {_unit addItemToVest "ACE_fieldDressing";};
	for "_i" from 1 to 6 do {_unit addItemToVest "ACE_packingBandage";};
	for "_i" from 1 to 2 do {_unit addItemToVest "ACE_tourniquet";};
	for "_i" from 1 to 2 do {_unit addItemToVest "ACE_morphine";};
	for "_i" from 1 to 1 do {_unit addItemToVest "ACE_Flashlight_MX991";};
	for "_i" from 1 to 1 do {_unit addItemToVest "ACE_NVG_Wide";};
	for "_i" from 1 to 1 do {_unit addItemToVest "BWA3_MP7";};
	for "_i" from 1 to 1 do {_unit addItemToVest "ACE_MapTools";};

	//Add Backpack
	_unit addBackpack "TFAR_rt1523g_big_bwmod";

	//backpack items
	for "_i" from 1 to 2 do {_unit addItemToBackpack "BWA3_DM25";};
	for "_i" from 1 to 2 do {_unit addItemToBackpack "BWA3_DM32_Purple";};
	for "_i" from 1 to 2 do {_unit addItemToBackpack "BWA3_DM32_Red";};
	for "_i" from 1 to 2 do {_unit addItemToBackpack "BWA3_DM32_Green";};
	for "_i" from 1 to 2 do {_unit addItemToBackpack "Chemlight_green";};
	for "_i" from 1 to 1 do {_unit addItemToBackpack "B_IR_Grenade";};

	switch toLower (_loadout) do
	{

		case "pilot_l":
		{

			for "_i" from 1 to 1 do {_unit addItemToBackpack "ToolKit";};

		};

		case "pilot_s":
		{

			for "_i" from 1 to 15 do {_unit addItemToBackpack "ACE_fieldDressing";};
			for "_i" from 1 to 15 do {_unit addItemToBackpack "ACE_elasticBandage";};
			for "_i" from 1 to 15 do {_unit addItemToBackpack "ACE_packingBandage";};
			for "_i" from 1 to 15 do {_unit addItemToBackpack "ACE_quikclot";};
			for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_tourniquet";};
			for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_morphine";};
			for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_epinephrine";};

		};

	};

	//add googles
	_goggles = "";

	goggles_array_fleck =
	[
		
		"G_Aviator",
		"rhs_googles_clear",
		"rhs_googles_black",
		"CUP_FR_NeckScarf",
		"G_Bandanna_oli",
		"rhsusf_shemagh_grn",
		"rhsusf_shemagh2_grn",
		"rhsusf_shemagh_gogg_grn",
		"rhsusf_shemagh2_gogg_grn",
		"PBW_shemagh_gruen"

	];

	goggles_array_trope =
	[

		"G_Aviator",
		"rhs_googles_clear",
		"rhs_googles_black",
		"CUP_FR_NeckScarf2",
		"G_Bandanna_tan",
		"rhsusf_shemagh_tan",
		"rhsusf_shemagh2_tan",
		"rhsusf_shemagh_gogg_tan",
		"rhsusf_shemagh2_gogg_tan",
		"PBW_shemagh_beige"

	];

	if ((_tarn isEqualTo "fleck") or (_tarn isEqualTo "fleck_idz")) then
	{_goggles = selectRandom goggles_array_fleck};
	if ((_tarn isEqualTo "trope") or (_tarn isEqualTo "trope_idz")) then
	{_goggles = selectRandom goggles_array_trope};
	
	_unit addGoggles _goggles;

	//Add headgear
	_headgear = "";
	switch toLower (_loadout) do
	{

		case "pilot";
		case "pilot_l";
		case "pilot_s":
		{

			_unit addHeadgear "CUP_H_BAF_Helmet_Pilot";

		};

		case "pilot_t":
		{

			_unit addHeadgear "BWA3_Knighthelm";

		};

		case "pilot_p":
		{

			_unit addHeadgear "rhsusf_hgu56p_visor_green";

		};

	};

	//Add items
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ACE_Altimeter";
	_unit linkItem "ACE_DK10_b";
	_unit linkItem "TFAR_anprc152";

	_unit setVariable ["ACE_IsEngineer",true,true];

	if (_loadout isEqualTo "pilot_s") then 
	{

		_unit setVariable ["ace_medical_medicClass",1,true];

	}



