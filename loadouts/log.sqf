

	params ["_unit","_loadout","_tarn","_isFalli"];

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
	if (_tarn isEqualTo "fleck") then {_uniform = selectRandom ["BWA3_Uniform2_Fleck","BWA3_Uniform2_sleeves_Fleck"];};
	if (_tarn isEqualTo "fleck_idz") then {_uniform = selectRandom ["BWA3_Uniform_Fleck","BWA3_Uniform_sleeves_Fleck"];};
	if (_tarn isEqualTo "trope") then {_uniform = selectRandom ["BWA3_Uniform2_Tropen","BWA3_Uniform2_sleeves_Tropen"];};
	if (_tarn isEqualTo "trope_idz") then {_uniform = selectRandom ["BWA3_Uniform_Tropen","BWA3_Uniform_sleeves_Tropen"];};
	if (_tarn isEqualTo "winter") then {_uniform = selectRandom ["rnt_bw_wintertarn_uniform_item","rnt_bw_wintertarn_uniform_item_2","rnt_bw_wintertarn_uniform_item_3"];};
	if (_tarn isEqualTo "winter_idz") then {_uniform = selectRandom ["rnt_bw_wintertarn_uniform_item","rnt_bw_wintertarn_uniform_item_2","rnt_bw_wintertarn_uniform_item_3"];};
	if (_tarn isEqualTo "army_d") then {_uniform = "rhs_uniform_cu_ocp";};
	_unit forceAddUniform _uniform;

	//Add vest
	_vest = "";
	switch toLower (_loadout) do
	{

		case "log_tf": 
		{

			if (_tarn isEqualTo "fleck") then {_vest = "pbw_splitter_grpfhr"};
			if (_tarn isEqualTo "fleck_idz") then {_vest = "BWA3_Vest_Leader_Fleck"};
			if (_tarn isEqualTo "trope") then {_vest = "pbw_splitter_grpfhr"};
			if (_tarn isEqualTo "trope_idz") then {_vest = "BWA3_Vest_Leader_Tropen"};
			if (_tarn isEqualTo "winter") then {_vest = "pbw_koppel_grpfhr"};
			if (_tarn isEqualTo "winter_idz") then {_vest = "pbw_koppel_grpfhr"};
			if (_tarn isEqualTo "army_d") then {_vest = "rhsusf_iotv_ocp_Repair"};

		};

		case "log_k": 
		{

			if (_tarn isEqualTo "fleck") then {_vest = "pbw_splitter_schtz"};
			if (_tarn isEqualTo "fleck_idz") then {_vest = "BWA3_Vest_Rifleman_Fleck"};
			if (_tarn isEqualTo "trope") then {_vest = "pbw_splitter_schtz"};
			if (_tarn isEqualTo "trope_idz") then {_vest = "BWA3_Vest_Rifleman_Tropen"};
			if (_tarn isEqualTo "winter") then {_vest = "pbw_koppel_schtz"};
			if (_tarn isEqualTo "winter_idz") then {_vest = "pbw_koppel_schtz"};
			if (_tarn isEqualTo "army_d") then {_vest = "rhsusf_iotv_ocp_Repair"};

		};

	};	
	_unit AddVest _vest;

	//add googles
	_goggles = "";

	goggles_array_fleck =
	[

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
	if (_tarn isEqualTo "fleck") then {_headgear = "PBW_muetze1_Fleck"};
	if (_tarn isEqualTo "fleck_idz") then {_headgear = selectRandom ["rhsusf_opscore_fg_pelt","rhsusf_opscore_rg_cover_pelt"];};
	if (_tarn isEqualTo "trope") then {_headgear = "PBW_muetze1_tropen"};
	if (_tarn isEqualTo "trope_idz") then {_headgear = "rhsusf_opscore_ut_pelt";};
	if (_tarn isEqualTo "winter") then {_headgear = "rnt_bw_wintertarn_helm_item"};
	if (_tarn isEqualTo "winter_idz") then {_headgear = "rnt_bw_wintertarn_helm_item";};
	if (_tarn isEqualTo "army_d") then {_headgear = "rhsusf_patrolcap_ocp";};
	_unit addHeadgear _headgear;

	//Add magazines
	if ((_tarn isEqualTo "fleck") or (_tarn isEqualTo "fleck_idz") or (_tarn isEqualTo "trope") or (_tarn isEqualTo "trope_idz") or (_tarn isEqualTo "winter") or (_tarn isEqualTo "winter_idz")) then {
		for "_i" from 1 to 4 do {_unit addItemToUniform "BWA3_30Rnd_556x45_G36_AP";};
		for "_i" from 1 to 2 do {_unit addItemToVest "BWA3_30Rnd_556x45_G36_AP";};
		for "_i" from 1 to 1 do {_unit addItemToUniform "BWA3_15Rnd_9x19_P8";};
	};
	if (_tarn isEqualTo "army_d") then {
		for "_i" from 1 to 3 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
		for "_i" from 1 to 3 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
		for "_i" from 1 to 1 do {_unit addItemToUniform "rhsusf_mag_15Rnd_9x19_JHP";};
	};

	//uniform base items
	
	//vest base items
	if ((_tarn isEqualTo "fleck") or (_tarn isEqualTo "fleck_idz") or (_tarn isEqualTo "trope") or (_tarn isEqualTo "trope_idz") or (_tarn isEqualTo "winter") or (_tarn isEqualTo "winter_idz")) then {
		for "_i" from 1 to 2 do {_unit addItemToVest "BWA3_DM25";};
		for "_i" from 1 to 1 do {_unit addItemToVest "BWA3_DM32_Purple";};
		for "_i" from 1 to 1 do {_unit addItemToVest "BWA3_DM32_Red";};
		for "_i" from 1 to 1 do {_unit addItemToVest "BWA3_DM32_Green";};
	};
	if (_tarn isEqualTo "army_d") then {
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
		for "_i" from 1 to 1 do {_unit addItemToVest "SmokeShellPurple";};
		for "_i" from 1 to 1 do {_unit addItemToVest "SmokeShellRed";};
		for "_i" from 1 to 1 do {_unit addItemToVest "SmokeShellGreen";};
	};
	for "_i" from 1 to 6 do {_unit addItemToVest "ACE_fieldDressing";};
	for "_i" from 1 to 6 do {_unit addItemToVest "ACE_packingBandage";};
	for "_i" from 1 to 2 do {_unit addItemToVest "ACE_tourniquet";};
	for "_i" from 1 to 2 do {_unit addItemToVest "ACE_morphine";};
	for "_i" from 1 to 2 do {_unit addItemToVest "ACE_CableTie";};
	for "_i" from 1 to 1 do {_unit addItemToVest "ACE_Flashlight_MX991";};
	for "_i" from 1 to 1 do {_unit addItemToVest "ACE_NVG_Wide";};
	for "_i" from 1 to 2 do {_unit addItemToVest "Chemlight_green";};

	if ((_tarn isEqualTo "fleck_idz") or (_tarn isEqualTo "trope_idz") or (_tarn isEqualTo "winter_idz")) then 
	{

		for "_i" from 1 to 1 do {_unit addItemToVest "BWA3_optic_NSV600";};

	};

	//Add weapons
	if ((_tarn isEqualTo "fleck") or (_tarn isEqualTo "trope") or (_tarn isEqualTo "winter")) then 
	{
		
		if (_isFalli) then {_unit addWeapon "BWA3_G36KA2";}
		else {_unit addWeapon "BWA3_G36A2";};

		_unit addPrimaryWeaponItem "BWA3_optic_RSAS_G36A2";
		_unit addPrimaryWeaponItem "BWA3_acc_LLM01_irlaser";
		_unit addWeapon "BWA3_P8";

	};
	if ((_tarn isEqualTo "fleck_idz") or (_tarn isEqualTo "trope_idz") or (_tarn isEqualTo "winter_idz")) then 
	{

		if (_isFalli) then {_unit addWeapon "BWA3_G36KA3";}
		else {_unit addWeapon "BWA3_G36A3";};
		
		_unit addPrimaryWeaponItem "BWA3_optic_ZO4x30_MicroT2";
		_unit addPrimaryWeaponItem "BWA3_acc_LLM01_irlaser";
		_unit addPrimaryWeaponItem "BWA3_bipod_Harris";
		_unit addWeapon "BWA3_P8";
		
	};
	if (_tarn isEqualTo "army_d") then
	{
		_unit addWeapon "rhs_weap_m4_carryhandle";
		_unit addPrimaryWeaponItem "rhsusf_acc_eotech_552";
		_unit addWeapon "rhsusf_weap_m9";
	};

	//Add items
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ACE_Altimeter";
	_unit linkItem "TFAR_anprc152";

	//Add another magazines
	if ((_tarn isEqualTo "fleck") or (_tarn isEqualTo "fleck_idz") or (_tarn isEqualTo "trope") or (_tarn isEqualTo "trope_idz") or (_tarn isEqualTo "winter") or (_tarn isEqualTo "winter_idz")) then {
		for "_i" from 1 to 1 do {_unit addItemToUniform "BWA3_30Rnd_556x45_G36_AP";};
		for "_i" from 1 to 1 do {_unit addItemToUniform "BWA3_15Rnd_9x19_P8";};
	};
	if (_tarn isEqualTo "army_d") then {
		for "_i" from 1 to 1 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
		for "_i" from 1 to 1 do {_unit addItemToUniform "rhsusf_mag_15Rnd_9x19_JHP";};
	};

	//Add backpack
	_backpack = "";
	if ((_tarn isEqualTo "fleck") or (_tarn isEqualTo "fleck_idz"))then {_backpack = "TFAR_rt1523g_big_bwmod";};
	if ((_tarn isEqualTo "trope") or (_tarn isEqualTo "trope_idz"))then {_backpack = "TFAR_rt1523g_big_bwmod_tropen";};
	if ((_tarn isEqualTo "winter") or (_tarn isEqualTo "winter_idz"))then {_backpack = "TFAR_rt1523g_big_bwmod";};
	if (_tarn isEqualTo "army_d") then {_backpack = "TFAR_rt1523g_big_rhs";};
	_unit addBackpack _backpack;

	//Add Backpack items
	for "_i" from 1 to 1 do {_unit addItemToBackpack "ToolKit";};
	
	//Add helmet
	if (_tarn isEqualTo "fleck") then {_unit addItemToVest "PBW_Helm1_Fleck_H"};
	if (_tarn isEqualTo "trope") then {_unit addItemToVest "PBW_Helm1_tropen_H"};
	if (_tarn isEqualTo "army_d") then {_unit addItemToBackpack "rhsusf_ach_helmet_ocp";};

	
	_unit setVariable ["ACE_IsEngineer",true,true];

	////Slot specifications
	_grpFhrArray = 
	[

		"Redd_Uffz",
		"Redd_StUffz",
		"Redd_FW",
		"Redd_OFw",
		"Redd_HptFw"
		
	];
	
	_mannschafterArray = 
	[

		"Redd_Gef",
		"Redd_OGef",
		"Redd_HptGef",
		"Redd_StGefr",
		"Redd_OStGefr"
		
	];

	switch toLower (_loadout) do
	{
		
		case "log_tf":
		{

			_unit linkItem "ACE_DK10_b";
			for "_i" from 1 to 1 do {_unit addItemToVest "ACE_HelmetCam";};
			if ((_tarn isEqualTo "fleck") or (_tarn isEqualTo "fleck_idz") or (_tarn isEqualTo "trope") or (_tarn isEqualTo "trope_idz") or (_tarn isEqualTo "winter") or (_tarn isEqualTo "winter_idz")) then {
				_insignie = selectRandom _grpFhrArray;
				[_unit,_insignie] spawn {params ["_unit","_insignie"];uiSleep 20;[_unit,_insignie] call bis_fnc_setUnitInsignia;};
			};
		};

		case "log_k":
		{

			_unit linkItem "ACE_GD300_b";
			if ((_tarn isEqualTo "fleck") or (_tarn isEqualTo "fleck_idz") or (_tarn isEqualTo "trope") or (_tarn isEqualTo "trope_idz") or (_tarn isEqualTo "winter") or (_tarn isEqualTo "winter_idz")) then {
				_insignie = selectRandom _mannschafterArray;
				[_unit,_insignie] spawn {params ["_unit","_insignie"];uiSleep 20;[_unit,_insignie] call bis_fnc_setUnitInsignia;};
			};

		};

	};







