

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
	_uniform = "";
	if (toLower(_loadout) isEqualTo "pilot_p") then {
		_uniform = "U_C_WorkerCoveralls"
	}
	else {
		if ((_tarn isEqualTo "fleck") or (_tarn isEqualTo "fleck_idz") or (_tarn isEqualTo "trope") or (_tarn isEqualTo "trope_idz") or (_tarn isEqualTo "winter") or (_tarn isEqualTo "winter_idz")) then {
			_uniform = "BWA3_Uniform_Helipilot";
		};
		if (_tarn isEqualTo "army_d") then {
			_uniform = "U_B_HeliPilotCoveralls";
		};
	};
	_unit forceAddUniform _uniform;
	
	//uniform base items
	if ((_tarn isEqualTo "fleck") or (_tarn isEqualTo "fleck_idz") or (_tarn isEqualTo "trope") or (_tarn isEqualTo "trope_idz") or (_tarn isEqualTo "winter") or (_tarn isEqualTo "winter_idz")) then {
		for "_i" from 1 to 6 do {_unit addItemToUniform "BWA3_40Rnd_46x30_MP7";};
	};
	if (_tarn isEqualTo "army_d") then {
		for "_i" from 1 to 4 do {_unit addItemToUniform "hlc_30Rnd_9x19_GD_MP5";};
	};
	
	//Add vest
	_vest = "";
	if ((_tarn isEqualTo "fleck") or (_tarn isEqualTo "fleck_idz") or (_tarn isEqualTo "trope") or (_tarn isEqualTo "trope_idz") or (_tarn isEqualTo "winter") or (_tarn isEqualTo "winter_idz")) then {
		_vest = "MNP_Vest_OD_B";
	};
	if (_tarn isEqualTo "army_d") then {
		_vest = "V_TacVest_blk";
	};
	_unit addVest _vest;
	for "_i" from 1 to 6 do {_unit addItemToVest "ACE_fieldDressing";};
	for "_i" from 1 to 6 do {_unit addItemToVest "ACE_packingBandage";};
	for "_i" from 1 to 2 do {_unit addItemToVest "ACE_tourniquet";};
	for "_i" from 1 to 2 do {_unit addItemToVest "ACE_morphine";};
	for "_i" from 1 to 1 do {_unit addItemToVest "ACE_Flashlight_XL50";};
	for "_i" from 1 to 1 do {_unit addItemToVest "ACE_NVG_Wide";};
	if ((_tarn isEqualTo "fleck") or (_tarn isEqualTo "fleck_idz") or (_tarn isEqualTo "trope") or (_tarn isEqualTo "trope_idz") or (_tarn isEqualTo "winter") or (_tarn isEqualTo "winter_idz")) then {
		for "_i" from 1 to 1 do {_unit addItemToVest "BWA3_MP7";};
	};
	if (_tarn isEqualTo "army_d") then {
		for "_i" from 1 to 1 do {_unit addItemToVest "hlc_smg_mp5k";};
		for "_i" from 1 to 2 do {_unit addItemToVest "hlc_30Rnd_9x19_GD_MP5";};
	};
	for "_i" from 1 to 1 do {_unit addItemToVest "ACE_MapTools";};

	//Add Backpack
	_backpack = "";
	if ((_tarn isEqualTo "fleck") or (_tarn isEqualTo "fleck_idz") or (_tarn isEqualTo "trope") or (_tarn isEqualTo "trope_idz") or (_tarn isEqualTo "winter") or (_tarn isEqualTo "winter_idz")) then {
		_backpack = "TFAR_rt1523g_big_bwmod"
	};
	if (_tarn isEqualTo "army_d") then {
		_backpack = "TFAR_rt1523g_big_rhs"
	};
	_unit addBackpack _backpack;

	//backpack items
	if ((_tarn isEqualTo "fleck") or (_tarn isEqualTo "fleck_idz") or (_tarn isEqualTo "trope") or (_tarn isEqualTo "trope_idz") or (_tarn isEqualTo "winter") or (_tarn isEqualTo "winter_idz")) then {
		for "_i" from 1 to 2 do {_unit addItemToBackpack "BWA3_DM25";};
		for "_i" from 1 to 2 do {_unit addItemToBackpack "BWA3_DM32_Purple";};
		for "_i" from 1 to 2 do {_unit addItemToBackpack "BWA3_DM32_Red";};
		for "_i" from 1 to 2 do {_unit addItemToBackpack "BWA3_DM32_Green";};
	};
	if (_tarn isEqualTo "army_d") then {
		for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShell";};
		for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShellPurple";};
		for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShellRed";};
		for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShellGreen";};
	};
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

	goggles_array_winter =
	[

		"G_Aviator",
		"rhs_googles_clear",
		"rhs_googles_black",
		"rhsusf_shemagh_grn",
		"rhsusf_shemagh2_grn",
		"rhsusf_shemagh_gogg_grn",
		"rhsusf_shemagh2_gogg_grn",
		"G_Bandanna_oli",
		"CUP_FR_NeckScarf",
		"PBW_shemagh_gruen"

	];

	if ((_tarn isEqualTo "fleck") or (_tarn isEqualTo "fleck_idz")) then
	{_goggles = selectRandom goggles_array_fleck};
	if ((_tarn isEqualTo "trope") or (_tarn isEqualTo "trope_idz") or (_tarn isEqualTo "army_d")) then
	{_goggles = selectRandom goggles_array_trope};
	if ((_tarn isEqualTo "winter") or (_tarn isEqualTo "winter_idz")) then
	{_goggles = selectRandom goggles_array_winter};
	
	_unit addGoggles _goggles;

	//Add headgear
	_headgear = "";
	if ((_tarn isEqualTo "army_d") or (toLower(_loadout) isEqualTo "pilot_p")) then
	{
		_headgear = selectRandom ["rhsusf_hgu56p_visor_black", "rhsusf_hgu56p_black"];
	}
	else
	{
		switch toLower (_loadout) do
		{

			case "pilot";
			case "pilot_l";
			case "pilot_s":
			{

				_headgear = "CUP_H_BAF_Helmet_Pilot";

			};

			case "pilot_t":
			{

				_headgear = "BWA3_Knighthelm";

			};
			
			case "pilot_p":
			{
				_headgear = "rhsusf_hgu56p_visor_green";
			};

		};
	};
	_unit addHeadgear _headgear;

	//Add items
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	if (_isFalli) then {
		_unit linkItem "ACE_Altimeter";
	}
	else {
		_unit linkItem "ItemWatch";
	};
	_unit linkItem "ItemAndroid";
	_unit linkItem "TFAR_anprc152";

	_unit setVariable ["ACE_IsEngineer",true,true];
	
	_unit setUnitRank "LIEUTENANT";

	if (_loadout isEqualTo "pilot_s") then 
	{

		_unit setVariable ["ace_medical_medicClass",1,true];

	}



