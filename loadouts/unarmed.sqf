

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

		case "una_s":
		{

			if (_tarn isEqualTo "fleck") then {_vest = "pbw_splitter_schtz"};
			if (_tarn isEqualTo "fleck_idz") then {_vest = "BWA3_Vest_Rifleman_Fleck"};
			if (_tarn isEqualTo "trope") then {_vest = "pbw_splitter_schtz"};
			if (_tarn isEqualTo "trope_idz") then {_vest = "BWA3_Vest_Rifleman_Tropen"};
			if (_tarn isEqualTo "winter") then {_vest = "pbw_koppel_schtz"};
			if (_tarn isEqualTo "winter_idz") then {_vest = "pbw_koppel_schtz"};
			if (_tarn isEqualTo "army_d") then {_vest = "rhsusf_iotv_ocp_Rifleman"}

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
	switch toLower (_loadout) do
	{

		case "una_s":
		{

			if (_tarn isEqualTo "fleck") then {_headgear = "PBW_muetze1_Fleck"};
			if (_tarn isEqualTo "fleck_idz") then {_headgear = selectRandom ["rhsusf_opscore_fg","rhsusf_opscore_rg_cover"];};
			if (_tarn isEqualTo "trope") then {_headgear = "PBW_muetze1_tropen"};
			if (_tarn isEqualTo "trope_idz") then {_headgear = "rhsusf_opscore_ut";};
			if (_tarn isEqualTo "winter") then {_headgear = "rnt_bw_wintertarn_helm_item"};
			if (_tarn isEqualTo "winter_idz") then {_headgear = "rnt_bw_wintertarn_helm_item";};
			if (_tarn isEqualTo "army_d") then {_headgear = selectRandom ["rhsusf_patrolcap_ocp","rhs_Booniehat_ocp"];};

		};

	};
	_unit addHeadgear _headgear;

	//Add Backpack
	_backpack = "";
	switch toLower (_loadout) do
	{

		

	};
	_unit addBackpack _backpack;

	//backpack items
	switch toLower (_loadout) do 
	{

		

	};
	
	//vest base items
	if (_tarn isEqualTo "army_d") then {
		for "_i" from 1 to 2 do {_unit addItemToVest "CUP_HandGrenade_M67";};
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
	}
	else {
		for "_i" from 1 to 2 do {_unit addItemToVest "BWA3_DM51A1";};
		for "_i" from 1 to 2 do {_unit addItemToVest "BWA3_DM25";};
	};
	for "_i" from 1 to 6 do {_unit addItemToVest "ACE_fieldDressing";};
	for "_i" from 1 to 6 do {_unit addItemToVest "ACE_packingBandage";};
	for "_i" from 1 to 2 do {_unit addItemToVest "ACE_tourniquet";};
	for "_i" from 1 to 2 do {_unit addItemToVest "ACE_morphine";};
	for "_i" from 1 to 2 do {_unit addItemToVest "ACE_CableTie";};
	for "_i" from 1 to 1 do {_unit addItemToVest "ACE_Flashlight_MX991";};
	for "_i" from 1 to 1 do {_unit addItemToVest "ACE_NVG_Wide";};
	//for "_i" from 1 to 1 do {_unit addItemToVest "ACE_EntrenchingTool";};
	for "_i" from 1 to 2 do {_unit addItemToVest "Chemlight_green";};

	//Add helmet
	_helmet = "";
	switch toLower (_loadout) do
	{

		case "una_s":
		{

			if (_tarn isEqualTo "fleck") then {_helmet = "PBW_Helm1_Fleck"};
			if (_tarn isEqualTo "trope") then {_helmet = "PBW_Helm1_tropen"};
			if (_tarn isEqualTo "army_d") then {_helmet = "rhsusf_ach_helmet_ocp"}
		};

	};
	_unit addItemToVest _helmet;

	//Add items
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ACE_Altimeter";
	//_unit linkItem "TFAR_anprc152";
	
	_grpFhrArray = 
	[

		"Redd_Uffz",
		"Redd_StUffz",
		"Redd_FW",
		"Redd_OFw",
		"Redd_HptFw"
		
	];

	_stellvGrpFhrArray = 
	[

		"Redd_StGefr",
		"Redd_OStGefr"
		
	];

	_mannschafterArray = 
	[

		"Redd_Gef",
		"Redd_OGef",
		"Redd_HptGef",
		"Redd_StGefr",
		"Redd_OStGefr"
		
	];

	////Slot specifications
	switch toLower (_loadout) do 
	{
	
		case "una_s":
		{

			if (_tarn isEqualTo "army_d") then {
				for "_i" from 1 to 3 do {_unit addItemToVest "SmokeShell";};
			}
			else {
				for "_i" from 1 to 3 do {_unit addItemToVest "BWA3_DM25";};
			};

			if ((_tarn isEqualTo "fleck") or (_tarn isEqualTo "fleck_idz") or (_tarn isEqualTo "trope") or (_tarn isEqualTo "trope_idz") or (_tarn isEqualTo "winter") or (_tarn isEqualTo "winter_idz")) then {
				_insignie = selectRandom _mannschafterArray;
				[_unit,_insignie] spawn {params ["_unit","_insignie"];uiSleep 20;[_unit,_insignie] call bis_fnc_setUnitInsignia;};
			};
			_unit setUnitRank "PRIVATE";
		};

	};