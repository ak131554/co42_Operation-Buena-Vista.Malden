

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
	_unit forceAddUniform _uniform;

	//Add vest
	_vest = "";
	if (_tarn isEqualTo "fleck") then {_vest = "pbw_splitter_schtz"};
	if (_tarn isEqualTo "fleck_idz") then {_vest = "BWA3_Vest_Rifleman_Fleck"};
	if (_tarn isEqualTo "trope") then {_vest = "pbw_splitter_schtz"};
	if (_tarn isEqualTo "trope_idz") then {_vest = "BWA3_Vest_Rifleman_Tropen"};
	if (_tarn isEqualTo "winter") then {_vest = "pbw_koppel_schtz"};
	if (_tarn isEqualTo "winter_idz") then {_vest = "pbw_koppel_schtz"};
	_unit AddVest _vest;

	//add googles
	_goggles = "";

	goggles_array_fleck =
	[

		"rhs_googles_clear",
		"rhs_googles_black",
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
	if (_tarn isEqualTo "fleck") then {_headgear = "PBW_muetze1_Fleck"};
	if (_tarn isEqualTo "fleck_idz") then {_headgear = selectRandom ["rhsusf_opscore_fg","rhsusf_opscore_rg_cover"];};
	if (_tarn isEqualTo "trope") then {_headgear = "PBW_muetze1_tropen"};
	if (_tarn isEqualTo "trope_idz") then {_headgear = "rhsusf_opscore_ut";};
	if (_tarn isEqualTo "winter") then {_headgear = "rnt_bw_wintertarn_helm_item"};
	if (_tarn isEqualTo "winter_idz") then {_headgear = "rnt_bw_wintertarn_helm_item";};
	_unit addHeadgear _headgear;

	//Add Backpack
	_backpack = "";
	switch toLower (_loadout) do
	{

		case "at_s":
		{

			_unit addBackpack "Redd_Milan_Static_Tripod";

		};

		case "at_a":
		{

			_unit addBackpack "Redd_Milan_Static_Barrel";

		};

	};
	_unit addBackpack _backpack;

	//Add magazines
	for "_i" from 1 to 2 do {_unit addItemToUniform "BWA3_30Rnd_556x45_G36_AP"};
	for "_i" from 1 to 4 do {_unit addItemToVest "BWA3_30Rnd_556x45_G36_AP"};

	//uniform base items
	for "_i" from 1 to 1 do {_unit addItemToUniform "BWA3_15Rnd_9x19_P8";};

	//vest base items
	for "_i" from 1 to 2 do {_unit addItemToVest "BWA3_DM51A1";};
	for "_i" from 1 to 5 do {_unit addItemToVest "BWA3_DM25";};
	for "_i" from 1 to 6 do {_unit addItemToVest "ACE_fieldDressing";};
	for "_i" from 1 to 6 do {_unit addItemToVest "ACE_packingBandage";};
	for "_i" from 1 to 2 do {_unit addItemToVest "ACE_tourniquet";};
	for "_i" from 1 to 2 do {_unit addItemToVest "ACE_morphine";};
	for "_i" from 1 to 2 do {_unit addItemToVest "ACE_CableTie";};
	for "_i" from 1 to 1 do {_unit addItemToVest "ACE_Flashlight_XL50";};
	for "_i" from 1 to 1 do {_unit addItemToVest "ACE_NVG_Wide";};
	//for "_i" from 1 to 1 do {_unit addItemToVest "ACE_EntrenchingTool";};
	for "_i" from 1 to 2 do {_unit addItemToVest "Chemlight_green";};
	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_mk84";};

	if ((_tarn isEqualTo "fleck_idz") or (_tarn isEqualTo "trope_idz") or (_tarn isEqualTo "winter_idz")) then 
	{

		for "_i" from 1 to 1 do {_unit addItemToVest "BWA3_optic_NSV600";};

	};

	//Add helmet
	_helmet = "";
	if (_tarn isEqualTo "fleck") then {_helmet = "PBW_Helm1_Fleck_H"};
	if (_tarn isEqualTo "trope") then {_helmet = "PBW_Helm1_tropen_H"};
	_unit addItemToVest _helmet;

	//Add weapons
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
	_unit addWeapon "BWA3_P8";
	if (_loadout isEqualTo "at_a") then {_unit addWeapon "Rangefinder";};

	//Add items
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	if (_isFalli) then {
		_unit linkItem "ACE_Altimeter";
	}
	else {
		_unit linkItem "ItemWatch";
	};
	_unit linkItem "TFAR_anprc152";

	_mannschafterArray = 
	[

		"Redd_Gef",
		"Redd_OGef",
		"Redd_HptGef",
		"Redd_StGefr",
		"Redd_OStGefr"

	];

	_unit addItemToUniform "BWA3_30Rnd_556x45_G36_AP";
	_unit addItemToUniform "BWA3_15Rnd_9x19_P8";

	_insignie = selectRandom _mannschafterArray;
	[_unit,_insignie] spawn {params ["_unit","_insignie"];uiSleep 20;[_unit,_insignie] call bis_fnc_setUnitInsignia;};
	_unit setUnitRank "PRIVATE";
