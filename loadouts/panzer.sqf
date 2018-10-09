

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

		case "pz_kpz_k";
		case "pz_kpz_s";
		case "pz_kpz_f";
		case "pz_spz_s";
		case "pz_spz_f";
		case "pz_mor_k";
		case "pz_mor_s";
		case "pz_mor_f";
		case "pz_w_k";
		case "pz_w_l";
		case "pz_w_f";
		case "pz_aa_k";
		case "pz_aa_s";
		case "pz_aa_f":
		{

			if (_tarn isEqualTo "fleck") then {_vest = "pbw_splitter_zivil"};
			if (_tarn isEqualTo "fleck_idz") then {_vest = "BWA3_Vest_Fleck"};
			if (_tarn isEqualTo "trope") then {_vest = "pbw_splitter_zivil"};
			if (_tarn isEqualTo "trope_idz") then {_vest = "BWA3_Vest_Tropen"};
			if (_tarn isEqualTo "winter") then {_vest = "pbw_koppel_schtz"};
			if (_tarn isEqualTo "winter_idz") then {_vest = "pbw_koppel_schtz"};

		};

		case "pz_spz_k":
		{

			if (_tarn isEqualTo "fleck") then {_vest = "pbw_splitter_grpfhr"};
			if (_tarn isEqualTo "fleck_idz") then {_vest = "BWA3_Vest_Leader_Fleck"};
			if (_tarn isEqualTo "trope") then {_vest = "pbw_splitter_grpfhr"};
			if (_tarn isEqualTo "trope_idz") then {_vest = "BWA3_Vest_Leader_Tropen"};
			if (_tarn isEqualTo "winter") then {_vest = "pbw_koppel_grpfhr"};
			if (_tarn isEqualTo "winter_idz") then {_vest = "pbw_koppel_grpfhr"};

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
	switch toLower (_loadout) do
	{

		case "pz_kpz_k";
		case "pz_kpz_s";
		case "pz_kpz_f":
		{

			_unit addHeadgear "BWA3_Beret_Pz";

		};

		case "pz_spz_k";
		case "pz_spz_s";
		case "pz_spz_f":
		{

			_unit addHeadgear "BWA3_Beret_PzGren";

		};

		case "pz_mor_k";
		case "pz_mor_s";
		case "pz_mor_f":
		{

			_unit addHeadgear "BWA3_Beret_Jaeger";

		};

		case "pz_w_k";
		case "pz_w_l";
		case "pz_w_f":
		{
			
			//Jg
			_unit addHeadgear "BWA3_Beret_Jaeger";

			//FschJg
			//_unit addHeadgear "BWA3_Beret_Falli";

			//GebJg
			/*
			if ((_tarn isEqualTo "fleck") or (_tarn isEqualTo "fleck_idz") or (_tarn isEqualTo "winter") or (_tarn isEqualTo "winter_idz")) then 
			{

				_unit addHeadgear "PBW_muetze1_Fleck";

			};
			if ((_tarn isEqualTo "trope") or (_tarn isEqualTo "trope_idz")) then 
			{

				_unit addHeadgear "PBW_muetze1_tropen";

			};
			*/
			
		};

		case "pz_aa_k";
		case "pz_aa_s";
		case "pz_aa_f":
		{
			
			if ((_tarn isEqualTo "fleck") or (_tarn isEqualTo "fleck_idz") or (_tarn isEqualTo "winter") or (_tarn isEqualTo "winter_idz")) then 
			{

				_unit addHeadgear "PBW_muetze1_Fleck";

			};
			if ((_tarn isEqualTo "trope") or (_tarn isEqualTo "trope_idz")) then 
			{

				_unit addHeadgear "PBW_muetze1_tropen";

			};

		};
		
	};

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

	if ((_tarn isEqualTo "fleck_idz") or (_tarn isEqualTo "trope_idz") or (_tarn isEqualTo "winter_idz")) then 
	{

		for "_i" from 1 to 1 do {_unit addItemToVest "BWA3_optic_NSV600";};

	};
	
	switch toLower (_loadout) do
	{

		
		case "pz_kpz_s";
		case "pz_kpz_f";
		case "pz_spz_s";
		case "pz_spz_f";
		case "pz_mor_s";
		case "pz_mor_f";
		case "pz_w_l";
		case "pz_w_f";
		case "pz_aa_s";
		case "pz_aa_f":
		{

			for "_i" from 1 to 3 do {_unit addItemToVest "BWA3_DM25";};

		};

		case "pz_kpz_k";
		case "pz_spz_k";
		case "pz_mor_k";
		case "pz_w_k";
		case "pz_aa_k":
		{

			for "_i" from 1 to 1 do {_unit addItemToVest "BWA3_DM32_Purple";};
			for "_i" from 1 to 1 do {_unit addItemToVest "BWA3_DM32_Red";};
			for "_i" from 1 to 1 do {_unit addItemToVest "BWA3_DM32_Green";};

		};

	};

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

	switch toLower (_loadout) do
	{

		case "pz_kpz_k";
		case "pz_spz_k";
		case "pz_mor_k";
		case "pz_w_k";
		case "pz_aa_k":
		{

			_unit addWeapon "Rangefinder";

		};

	};

	//Add Backpack
	_backpack = "";
	switch toLower (_loadout) do
	{

		case "pz_mor_k":
		{

			if ((_tarn isEqualTo "fleck") or (_tarn isEqualTo "fleck_idz"))then {_backpack = "TFAR_rt1523g_big_bwmod";};
			if ((_tarn isEqualTo "trope") or (_tarn isEqualTo "trope_idz"))then {_backpack = "TFAR_rt1523g_big_bwmod_tropen";};
			if ((_tarn isEqualTo "winter") or (_tarn isEqualTo "winter_idz"))then {_backpack = "TFAR_rt1523g_big_bwmod";};
	
		};

		case "pz_mor_f":
		{

			if ((_tarn isEqualTo "fleck") or (_tarn isEqualTo "fleck_idz")) then {_backpack = "BWA3_Kitbag_Fleck"};
			if ((_tarn isEqualTo "trope") or (_tarn isEqualTo "trope_idz")) then {_backpack = "BWA3_Kitbag_Tropen"};
			if ((_tarn isEqualTo "winter") or (_tarn isEqualTo "winter_idz"))then {_backpack = "BWA3_Kitbag_Fleck";};

		};

	};
	_unit addBackpack _backpack;

	//Add items
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ACE_Altimeter";
	_unit linkItem "TFAR_anprc152";
	
	for "_i" from 1 to 1 do {_unit addItemToUniform "BWA3_30Rnd_556x45_G36_AP";};
	for "_i" from 1 to 1 do {_unit addItemToUniform "BWA3_15Rnd_9x19_P8";};

	_KomArray = 
	[

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

		case "pz_kpz_f";
		case "pz_spz_f";
		case "pz_mor_f";
		case "pz_w_f";
		case "pz_aa_f":
		{

			_unit setVariable ["ACE_IsEngineer",true,true];

		};

	};

	////Slot specifications
	switch toLower (_loadout) do 
	{

		case "pz_kpz_k";
		case "pz_w_k";
		case "pz_aa_k":
		{

			_unit linkItem "ACE_DK10_b";

			_insignie = selectRandom _KomArray;
			[_unit,_insignie] spawn {params ["_unit","_insignie"];uiSleep 20;[_unit,_insignie] call bis_fnc_setUnitInsignia;};

			if (_isGreni) then
			{

				_backpack = "";
				if ((_tarn isEqualTo "fleck") or (_tarn isEqualTo "fleck_idz"))then {_backpack = "TFAR_rt1523g_big_bwmod";};
				if ((_tarn isEqualTo "trope") or (_tarn isEqualTo "trope_idz"))then {_backpack = "TFAR_rt1523g_big_bwmod_tropen";};
				if ((_tarn isEqualTo "winter") or (_tarn isEqualTo "winter_idz"))then {_backpack = "TFAR_rt1523g_big_bwmod";};
				_unit addBackpack _backpack;

			};
			
		};

		case "pz_spz_k":
		{

			for "_i" from 1 to 1 do {_unit addItemToVest "ACE_HelmetCam";};
			for "_i" from 1 to 1 do {_unit addItemToVest "B_IR_Grenade";};
			for "_i" from 1 to 2 do {_unit addItemToVest "BWA3_DM51A1";};
			for "_i" from 1 to 2 do {_unit addItemToVest "Chemlight_green";};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_mk84";};

			_unit linkItem "ACE_DK10_b";

			_insignie = selectRandom _KomArray;
			[_unit,_insignie] spawn {params ["_unit","_insignie"];uiSleep 20;[_unit,_insignie] call bis_fnc_setUnitInsignia;};

			if (_isGreni) then
			{

				_backpack = "";
				if ((_tarn isEqualTo "fleck") or (_tarn isEqualTo "fleck_idz"))then {_backpack = "TFAR_rt1523g_big_bwmod";};
				if ((_tarn isEqualTo "trope") or (_tarn isEqualTo "trope_idz"))then {_backpack = "TFAR_rt1523g_big_bwmod_tropen";};
				if ((_tarn isEqualTo "winter") or (_tarn isEqualTo "winter_idz"))then {_backpack = "TFAR_rt1523g_big_bwmod";};
				_unit addBackpack _backpack;

			};
		
		};

		case "pz_mor_k":
		{

			for "_i" from 1 to 1 do {_unit addItemToVest "ACE_MapTools";};
			for "_i" from 1 to 1 do {_unit addItemToVest "ACE_RangeTable_82mm";};
			for "_i" from 1 to 1 do {_unit addItemToVest "ACE_Vector";};
			for "_i" from 1 to 1 do {_unit addItemToVest "ACE_microDAGR";};

			_unit linkItem "ACE_DK10_b";

			_insignie = selectRandom _KomArray;
			[_unit,_insignie] spawn {params ["_unit","_insignie"];uiSleep 20;[_unit,_insignie] call bis_fnc_setUnitInsignia;};


		};

		case "pz_kpz_s";
		case "pz_kpz_f";
		case "pz_w_l";
		case "pz_w_f";
		case "pz_spz_s";
		case "pz_spz_f";
		case "pz_aa_f";
		case "pz_aa_s":
		{

			_insignie = selectRandom _mannschafterArray;
			[_unit,_insignie] spawn {params ["_unit","_insignie"];uiSleep 20;[_unit,_insignie] call bis_fnc_setUnitInsignia;};

		};

		case "pz_mor_s":
		{

			for "_i" from 1 to 1 do {_unit addItemToVest "ACE_MapTools";};
			for "_i" from 1 to 1 do {_unit addItemToVest "ACE_RangeTable_82mm";};
			for "_i" from 1 to 1 do {_unit addItemToVest "ACE_GD300_b";};
			for "_i" from 1 to 1 do {_unit addItemToVest "ACE_Vector";};
			for "_i" from 1 to 1 do {_unit addItemToVest "ACE_microDAGR";};

			_insignie = selectRandom _mannschafterArray;
			[_unit,_insignie] spawn {params ["_unit","_insignie"];uiSleep 20;[_unit,_insignie] call bis_fnc_setUnitInsignia;};
			
		};

		case "pz_mor_f":
		{

			for "_i" from 1 to 1 do {_unit addItemToVest "ACE_MapTools";};
			for "_i" from 1 to 1 do {_unit addItemToVest "ACE_RangeTable_82mm";};
			for "_i" from 1 to 1 do {_unit addItemToVest "ACE_Vector";};
			for "_i" from 1 to 1 do {_unit addItemToVest "ACE_microDAGR";};

			_insignie = selectRandom _mannschafterArray;
			[_unit,_insignie] spawn {params ["_unit","_insignie"];uiSleep 20;[_unit,_insignie] call bis_fnc_setUnitInsignia;};
			
		};

	};	