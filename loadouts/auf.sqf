

	params ["_unit","_loadout","_tarn","_isFalli","_isGreni"];

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
	_unit forceAddUniform _uniform;

	//Add vest
	_vest = "";
	switch toLower (_loadout) do
	{

		case "auf_tf": 
		{

			if (_tarn isEqualTo "fleck") then {_vest = "pbw_splitter_grpfhr"};
			if (_tarn isEqualTo "fleck_idz") then {_vest = "BWA3_Vest_Leader_Fleck"};
			if (_tarn isEqualTo "trope") then {_vest = "pbw_splitter_grpfhr"};
			if (_tarn isEqualTo "trope_idz") then {_vest = "BWA3_Vest_Leader_Tropen"};
			if (_tarn isEqualTo "winter") then {_vest = "pbw_koppel_grpfhr"};
			if (_tarn isEqualTo "winter_idz") then {_vest = "pbw_koppel_grpfhr"};
			

		};

		case "auf_d"; 
		case "auf_d_k";
		case "auf_k": 
		{

			if (_tarn isEqualTo "fleck") then {_vest = "pbw_splitter_schtz"};
			if (_tarn isEqualTo "fleck_idz") then {_vest = "BWA3_Vest_Rifleman_Fleck"};
			if (_tarn isEqualTo "trope") then {_vest = "pbw_splitter_schtz"};
			if (_tarn isEqualTo "trope_idz") then {_vest = "BWA3_Vest_Rifleman_Tropen"};
			if (_tarn isEqualTo "winter") then {_vest = "pbw_koppel_schtz"};
			if (_tarn isEqualTo "winter_idz") then {_vest = "pbw_koppel_schtz"};

		};

		case "auf_e":
		{

			if (_tarn isEqualTo "fleck") then {_vest = "pbw_splitter_sani"};
			if (_tarn isEqualTo "fleck_idz") then {_vest = "BWA3_Vest_Medic_Fleck"};
			if (_tarn isEqualTo "trope") then {_vest = "pbw_splitter_sani"};
			if (_tarn isEqualTo "trope_idz") then {_vest = "BWA3_Vest_Medic_Tropen"};
			if (_tarn isEqualTo "winter") then {_vest = "pbw_koppel_sani"};
			if (_tarn isEqualTo "winter_idz") then {_vest = "pbw_koppel_sani"};

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
	if ((_tarn isEqualTo "trope") or (_tarn isEqualTo "trope_idz")) then
	{_goggles = selectRandom goggles_array_trope};
	if ((_tarn isEqualTo "winter") or (_tarn isEqualTo "winter_idz")) then
	{_goggles = selectRandom goggles_array_winter};
	
	_unit addGoggles _goggles;

	//Add headgear
	_headgear = "";
	switch toLower (_loadout) do
	{

		case "auf_tf": 
		{

			if (_tarn isEqualTo "fleck") then {_headgear = "PBW_muetze1_Fleck"};
			if (_tarn isEqualTo "fleck_idz") then {_headgear = selectRandom ["rhsusf_opscore_fg_pelt","rhsusf_opscore_rg_cover_pelt"];};
			if (_tarn isEqualTo "trope") then {_headgear = "PBW_muetze1_tropen"};
			if (_tarn isEqualTo "trope_idz") then {_headgear = "rhsusf_opscore_ut_pelt";};
			if (_tarn isEqualTo "winter") then {_headgear = "rnt_bw_wintertarn_helm_item"};
			if (_tarn isEqualTo "winter_idz") then {_headgear = "rnt_bw_wintertarn_helm_item";};

		};

		case "auf_d"; 
		case "auf_d_k";
		case "auf_e";
		case "auf_k":
		{

			if (_tarn isEqualTo "fleck") then {_headgear = "PBW_muetze1_Fleck"};
			if (_tarn isEqualTo "fleck_idz") then {_headgear = selectRandom ["rhsusf_opscore_fg","rhsusf_opscore_rg_cover"];};
			if (_tarn isEqualTo "trope") then {_headgear = "PBW_muetze1_tropen"};
			if (_tarn isEqualTo "trope_idz") then {_headgear = "rhsusf_opscore_ut";};
			if (_tarn isEqualTo "winter") then {_headgear = "rnt_bw_wintertarn_helm_item"};
			if (_tarn isEqualTo "winter_idz") then {_headgear = "rnt_bw_wintertarn_helm_item";};

		};

	};
	_unit addHeadgear _headgear;

	//Add magazines 
	for "_i" from 1 to 4 do {_unit addItemToUniform "BWA3_30Rnd_556x45_G36_AP";};
	for "_i" from 1 to 2 do {_unit addItemToVest "BWA3_30Rnd_556x45_G36_AP";};
	
	//uniform base items
	for "_i" from 1 to 1 do {_unit addItemToUniform "BWA3_15Rnd_9x19_P8";};

	//vest base items
	for "_i" from 1 to 2 do {_unit addItemToVest "BWA3_DM25";};
	for "_i" from 1 to 6 do {_unit addItemToVest "ACE_fieldDressing";};
	for "_i" from 1 to 6 do {_unit addItemToVest "ACE_packingBandage";};
	for "_i" from 1 to 2 do {_unit addItemToVest "ACE_tourniquet";};
	for "_i" from 1 to 2 do {_unit addItemToVest "ACE_morphine";};
	for "_i" from 1 to 2 do {_unit addItemToVest "ACE_CableTie";};
	for "_i" from 1 to 1 do {_unit addItemToVest "ACE_Flashlight_MX991";};
	for "_i" from 1 to 1 do {_unit addItemToVest "ACE_NVG_Wide";};
	for "_i" from 1 to 1 do {_unit addItemToVest "ACE_MapTools";};
	for "_i" from 1 to 2 do {_unit addItemToVest "Chemlight_green";};

	if ((_tarn isEqualTo "fleck_idz") or (_tarn isEqualTo "trope_idz") or (_tarn isEqualTo "winter_idz")) then 
	{

		for "_i" from 1 to 1 do {_unit addItemToVest "BWA3_optic_NSV600";};

	};

	if (_loadout isEqualTo "auf_tf") then 
	{
	
		for "_i" from 1 to 3 do {_unit addItemToVest "1Rnd_SmokeRed_Grenade_shell";};
		for "_i" from 1 to 3 do {_unit addItemToVest "1Rnd_SmokeGreen_Grenade_shell";};
		for "_i" from 1 to 3 do {_unit addItemToVest "1Rnd_SmokePurple_Grenade_shell";};

	};

	//Add helmet
	_helmet = "";
	switch toLower (_loadout) do
	{

		case "auf_tf": 
		{

			if (_tarn isEqualTo "fleck") then {_helmet = "PBW_Helm1_Fleck_H"};
			if (_tarn isEqualTo "trope") then {_helmet = "PBW_Helm1_tropen_H"};

		};

		case "auf_d"; 
		case "auf_d_k";
		case "auf_e";
		case "auf_k":
		{

			if (_tarn isEqualTo "fleck") then {_helmet = "PBW_Helm1_Fleck"};
			if (_tarn isEqualTo "trope") then {_helmet = "PBW_Helm1_tropen"};

		};

	};
	_unit addItemToVest _helmet;

	//Add weapons
	if (_loadout isEqualTo "auf_tf") then 
	{

		if ((_tarn isEqualTo "fleck") or (_tarn isEqualTo "trope") or (_tarn isEqualTo "winter")) then 
		{
			
			_unit addWeapon "BWA3_G36A2_AG40";

			_unit addPrimaryWeaponItem "BWA3_optic_RSAS_G36A2";
			_unit addPrimaryWeaponItem "BWA3_acc_LLM01_irlaser";

		};
		if ((_tarn isEqualTo "fleck_idz") or (_tarn isEqualTo "trope_idz") or (_tarn isEqualTo "winter_idz")) then  
		{
			
			_unit addWeapon "BWA3_G36A3_AG40";

			_unit addPrimaryWeaponItem "BWA3_optic_ZO4x30_MicroT2";
			_unit addPrimaryWeaponItem "BWA3_acc_LLM01_irlaser";
			
		};

	}
	else
	{

		if ((_tarn isEqualTo "fleck") or (_tarn isEqualTo "trope") or (_tarn isEqualTo "winter")) then 
		{
			
			if (_isFalli) then {_unit addWeapon "BWA3_G36KA2";}
			else {_unit addWeapon "BWA3_G36A2";};

			_unit addPrimaryWeaponItem "BWA3_optic_RSAS_G36A2";
			_unit addPrimaryWeaponItem "BWA3_acc_LLM01_irlaser";

		};
		if ((_tarn isEqualTo "fleck_idz") or (_tarn isEqualTo "trope_idz") or (_tarn isEqualTo "winter_idz")) then 
		{

			if (_isFalli) then {_unit addWeapon "BWA3_G36KA3";}
			else {_unit addWeapon "BWA3_G36A3";};

			_unit addPrimaryWeaponItem "BWA3_optic_ZO4x30_MicroT2";
			_unit addPrimaryWeaponItem "BWA3_acc_LLM01_irlaser";
			_unit addPrimaryWeaponItem "BWA3_bipod_Harris";
			
		};

	};
	_unit addWeapon "BWA3_P8";
	_unit addWeapon "Rangefinder";

	//Add items
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ACE_Altimeter";
	//_unit linkItem "TFAR_anprc152";
	
	//Add another magazines
	for "_i" from 1 to 1 do {_unit addItemToUniform "BWA3_30Rnd_556x45_G36_AP";};
	for "_i" from 1 to 1 do {_unit addItemToUniform "BWA3_15Rnd_9x19_P8";};

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

		"Redd_HptGef",
		"Redd_StGefr",
		"Redd_OStGefr"
		
	];

	switch toLower (_loadout) do
	{
		
		case "auf_tf":
		{

			for "_i" from 1 to 1 do {_unit addItemToVest "BWA3_DM32_Purple";};
			for "_i" from 1 to 1 do {_unit addItemToVest "BWA3_DM32_Red";};
			for "_i" from 1 to 1 do {_unit addItemToVest "BWA3_DM32_Green";};
			for "_i" from 1 to 1 do {_unit addItemToVest "ACE_HelmetCam";};
			for "_i" from 1 to 1 do {_unit addItemToVest "B_IR_Grenade";};

			_insignie = selectRandom _grpFhrArray;
			[_unit,_insignie] spawn {params ["_unit","_insignie"];uiSleep 20;[_unit,_insignie] call bis_fnc_setUnitInsignia;};

			_backpack = "";
			if ((_tarn isEqualTo "fleck") or (_tarn isEqualTo "fleck_idz"))then {_backpack = "TFAR_rt1523g_big_bwmod";};
			if ((_tarn isEqualTo "trope") or (_tarn isEqualTo "trope_idz"))then {_backpack = "TFAR_rt1523g_big_bwmod_tropen";};
			if ((_tarn isEqualTo "winter") or (_tarn isEqualTo "winter_idz"))then {_backpack = "TFAR_rt1523g_big_bwmod";};
			_unit addBackpack _backpack;
			
			//backpack items
			for "_i" from 1 to 10 do {_unit addItemToBackpack "1Rnd_SmokeRed_Grenade_shell";};
			for "_i" from 1 to 10 do {_unit addItemToBackpack "1Rnd_SmokeGreen_Grenade_shell";};
			for "_i" from 1 to 10 do {_unit addItemToBackpack "1Rnd_SmokePurple_Grenade_shell";};
			
			_unit linkItem "TFAR_anprc152";
			_unit linkItem "ACE_DK10_b";
			
		};
		case "auf_d":
		{

			for "_i" from 1 to 3 do {_unit addItemToVest "BWA3_DM25";};
			for "_i" from 1 to 1 do {_unit addItemToVest "ACE_DK10_b";};
			_unit addBackpack "BWA3_PatrolPack_Fleck";
			for "_i" from 1 to 1 do {_unit addItemToBackpack "ITC_Land_B_AR2i_Packed";};
			_unit linkItem "B_UavTerminal";
			
			_insignie = selectRandom _mannschafterArray;
			[_unit,_insignie] spawn {params ["_unit","_insignie"];uiSleep 20;[_unit,_insignie] call bis_fnc_setUnitInsignia;};

		};
		case "auf_d_k":
		{

			for "_i" from 1 to 3 do {_unit addItemToVest "BWA3_DM25";};
			for "_i" from 1 to 1 do {_unit addItemToVest "ACE_DK10_b";};
			_unit addBackpack "BWA3_PatrolPack_Fleck";
			for "_i" from 1 to 1 do {_unit addItemToBackpack "ITC_Land_B_AR2i_Packed";};
			_unit linkItem "B_UavTerminal";

			_unit setVariable ["ACE_IsEngineer",true,true];
			_unit linkItem "TFAR_anprc152";

			_insignie = selectRandom _mannschafterArray;
			[_unit,_insignie] spawn {params ["_unit","_insignie"];uiSleep 20;[_unit,_insignie] call bis_fnc_setUnitInsignia;};

		};
		case "auf_e":
		{

			for "_i" from 1 to 3 do {_unit addItemToVest "BWA3_DM25";};
			_unit linkItem "ACE_DK10_b";

			_backpack = "";
			if ((_tarn isEqualTo "fleck") or (_tarn isEqualTo "fleck_idz")) then {_backpack = "BWA3_Kitbag_Fleck_Medic"};
			if ((_tarn isEqualTo "trope") or (_tarn isEqualTo "trope_idz")) then {_backpack = "BWA3_Kitbag_Tropen_Medic"};
			if ((_tarn isEqualTo "winter") or (_tarn isEqualTo "winter_idz"))then {_backpack = "BWA3_Kitbag_Fleck_Medic";};
			_unit addBackpack _backpack;

			for "_i" from 1 to 12 do {_unit addItemToBackpack "ACE_fieldDressing";};
			for "_i" from 1 to 12 do {_unit addItemToBackpack "ACE_elasticBandage";};
			for "_i" from 1 to 12 do {_unit addItemToBackpack "ACE_packingBandage";};
			for "_i" from 1 to 12 do {_unit addItemToBackpack "ACE_quikclot";};
			for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_tourniquet";};
			for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_morphine";};
			for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_epinephrine";};
			for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_salineIV_250";};
			for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_salineIV_500";};
			for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_salineIV";};

			_unit setVariable ["ace_medical_medicClass",1,true];

			_insignie = selectRandom _mannschafterArray;
			[_unit,_insignie] spawn {params ["_unit","_insignie"];uiSleep 20;[_unit,_insignie] call bis_fnc_setUnitInsignia;};

		};
		case "auf_k":
		{

			for "_i" from 1 to 3 do {_unit addItemToVest "BWA3_DM25";};
			
			_unit setVariable ["ACE_IsEngineer",true,true];
			_unit linkItem "TFAR_anprc152";
			_unit linkItem "ACE_DK10_b";

			_insignie = selectRandom _mannschafterArray;
			[_unit,_insignie] spawn {params ["_unit","_insignie"];uiSleep 20;[_unit,_insignie] call bis_fnc_setUnitInsignia;};

		};
		
	};	

