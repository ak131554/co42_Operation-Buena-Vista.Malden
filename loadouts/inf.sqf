

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
	switch toLower (_loadout) do
	{

		case "inf_g";
		case "inf_sg":
		{

			if (_tarn isEqualTo "fleck") then {_vest = "pbw_splitter_grpfhr"};
			if (_tarn isEqualTo "fleck_idz") then {_vest = "BWA3_Vest_Leader_Fleck"};
			if (_tarn isEqualTo "trope") then {_vest = "pbw_splitter_grpfhr"};
			if (_tarn isEqualTo "trope_idz") then {_vest = "BWA3_Vest_Leader_Tropen"};
			if (_tarn isEqualTo "winter") then {_vest = "pbw_koppel_grpfhr"};
			if (_tarn isEqualTo "winter_idz") then {_vest = "pbw_koppel_grpfhr"};

		};

		case "inf_e":
		{

			if (_tarn isEqualTo "fleck") then {_vest = "pbw_splitter_sani"};
			if (_tarn isEqualTo "fleck_idz") then {_vest = "BWA3_Vest_Medic_Fleck"};
			if (_tarn isEqualTo "trope") then {_vest = "pbw_splitter_sani"};
			if (_tarn isEqualTo "trope_idz") then {_vest = "BWA3_Vest_Medic_Tropen"};
			if (_tarn isEqualTo "winter") then {_vest = "pbw_koppel_sani"};
			if (_tarn isEqualTo "winter_idz") then {_vest = "pbw_koppel_sani"};

		};

		case "inf_gr";
		case "inf_gr_e":
		{

			if (_tarn isEqualTo "fleck") then {_vest = "pbw_splitter_schtz"};
			if (_tarn isEqualTo "fleck_idz") then {_vest = "BWA3_Vest_Grenadier_Fleck"};
			if (_tarn isEqualTo "trope") then {_vest = "pbw_splitter_schtz"};
			if (_tarn isEqualTo "trope_idz") then {_vest = "BWA3_Vest_Grenadier_Tropen"};
			if (_tarn isEqualTo "winter") then {_vest = "pbw_koppel_schtz"};
			if (_tarn isEqualTo "winter_idz") then {_vest = "pbw_koppel_schtz"};

		};

		case "inf_lmg":
		{

			if (_tarn isEqualTo "fleck") then {_vest = "pbw_splitter_mg"};
			if (_tarn isEqualTo "fleck_idz") then {_vest = "BWA3_Vest_MachineGunner_Fleck"};
			if (_tarn isEqualTo "trope") then {_vest = "pbw_splitter_mg"};
			if (_tarn isEqualTo "trope_idz") then {_vest = "BWA3_Vest_MachineGunner_Tropen"};
			if (_tarn isEqualTo "winter") then {_vest = "pbw_koppel_mg"};
			if (_tarn isEqualTo "winter_idz") then {_vest = "pbw_koppel_mg"};

		};

		case "inf_zf";
		case "inf_zf28":
		{

			if (_tarn isEqualTo "fleck") then {_vest = "pbw_splitter_schtz"};
			if (_tarn isEqualTo "fleck_idz") then {_vest = "BWA3_Vest_Marksman_Fleck"};
			if (_tarn isEqualTo "trope") then {_vest = "pbw_splitter_schtz"};
			if (_tarn isEqualTo "trope_idz") then {_vest = "BWA3_Vest_Marksman_Tropen"};
			if (_tarn isEqualTo "winter") then {_vest = "pbw_koppel_schtz"};
			if (_tarn isEqualTo "winter_idz") then {_vest = "pbw_koppel_schtz"};

		};

		case "inf_p";
		case "inf_s";
		case "inf_b";
		case "inf_k":
		{

			if (_tarn isEqualTo "fleck") then {_vest = "pbw_splitter_schtz"};
			if (_tarn isEqualTo "fleck_idz") then {_vest = "BWA3_Vest_Rifleman_Fleck"};
			if (_tarn isEqualTo "trope") then {_vest = "pbw_splitter_schtz"};
			if (_tarn isEqualTo "trope_idz") then {_vest = "BWA3_Vest_Rifleman_Tropen"};
			if (_tarn isEqualTo "winter") then {_vest = "pbw_koppel_schtz"};
			if (_tarn isEqualTo "winter_idz") then {_vest = "pbw_koppel_schtz"};

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

		case "inf_g";
		case "inf_sg": 
		{

			if (_tarn isEqualTo "fleck") then {_headgear = "PBW_muetze1_Fleck"};
			if (_tarn isEqualTo "fleck_idz") then {_headgear = selectRandom ["rhsusf_opscore_fg_pelt","rhsusf_opscore_rg_cover_pelt"];};
			if (_tarn isEqualTo "trope") then {_headgear = "PBW_muetze1_tropen"};
			if (_tarn isEqualTo "trope_idz") then {_headgear = "rhsusf_opscore_ut_pelt";};
			if (_tarn isEqualTo "winter") then {_headgear = "rnt_bw_wintertarn_helm_item"};
			if (_tarn isEqualTo "winter_idz") then {_headgear = "rnt_bw_wintertarn_helm_item";};

		};

		case "inf_e"; 
		case "inf_gr";
		case "inf_gr_e";
		case "inf_lmg";
		case "inf_p";
		case "inf_s";
		case "inf_zf";
		case "inf_zf28";
		case "inf_b";
		case "inf_k":
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

	//Add Backpack
	_backpack = "";
	switch toLower (_loadout) do
	{

		case "inf_e": 
		{

			if ((_tarn isEqualTo "fleck") or (_tarn isEqualTo "fleck_idz")) then {_backpack = "BWA3_Kitbag_Fleck_Medic"};
			if ((_tarn isEqualTo "trope") or (_tarn isEqualTo "trope_idz")) then {_backpack = "BWA3_Kitbag_Tropen_Medic"};
			if ((_tarn isEqualTo "winter") or (_tarn isEqualTo "winter_idz"))then {_backpack = "BWA3_Kitbag_Fleck_Medic";};

		};

		case "inf_gr_e":
		{

			if ((_tarn isEqualTo "fleck") or (_tarn isEqualTo "fleck_idz")) then {_backpack = "BWA3_Kitbag_Fleck_Medic"};
			if ((_tarn isEqualTo "trope") or (_tarn isEqualTo "trope_idz")) then {_backpack = "BWA3_Kitbag_Tropen_Medic"};
			if ((_tarn isEqualTo "winter") or (_tarn isEqualTo "winter_idz"))then {_backpack = "BWA3_Kitbag_Fleck_Medic";};

		};

		case "inf_gr":
		{

			if ((_tarn isEqualTo "fleck") or (_tarn isEqualTo "fleck_idz")) then {_backpack = "BWA3_AssaultPack_Fleck"};
			if ((_tarn isEqualTo "trope") or (_tarn isEqualTo "trope_idz")) then {_backpack = "BWA3_AssaultPack_Tropen"};
			if ((_tarn isEqualTo "winter") or (_tarn isEqualTo "winter_idz"))then {_backpack = "BWA3_AssaultPack_Fleck";};


		};

		case "inf_lmg":
		{

			if ((_tarn isEqualTo "fleck") or (_tarn isEqualTo "fleck_idz")) then {_backpack = "BWA3_AssaultPack_Fleck"};//BWA3_Kitbag_Fleck
			if ((_tarn isEqualTo "trope") or (_tarn isEqualTo "trope_idz")) then {_backpack = "BWA3_AssaultPack_Tropen"};//BWA3_Kitbag_Tropen
			if ((_tarn isEqualTo "winter") or (_tarn isEqualTo "winter_idz"))then {_backpack = "BWA3_AssaultPack_Fleck";};

		};

		case "inf_p": 
		{

			_unit addBackpack "BWA3_Carryall_Fleck";

		};

	};
	_unit addBackpack _backpack;

	//backpack items
	switch toLower (_loadout) do 
	{

		case "inf_e":
		{

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

		};

		case "inf_gr":
		{

			for "_i" from 1 to 12 do {_unit addItemToBackpack "1Rnd_HE_Grenade_shell";};
			for "_i" from 1 to 5 do {_unit addItemToBackpack "1Rnd_SmokeRed_Grenade_shell";};
			for "_i" from 1 to 5 do {_unit addItemToBackpack "1Rnd_SmokeGreen_Grenade_shell";};
			for "_i" from 1 to 5 do {_unit addItemToBackpack "1Rnd_SmokePurple_Grenade_shell";};

		};

		case "inf_gr_e":
		{

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

			for "_i" from 1 to 12 do {_unit addItemToBackpack "1Rnd_HE_Grenade_shell";};
			for "_i" from 1 to 5 do {_unit addItemToBackpack "1Rnd_SmokeRed_Grenade_shell";};
			for "_i" from 1 to 5 do {_unit addItemToBackpack "1Rnd_SmokeGreen_Grenade_shell";};
			for "_i" from 1 to 5 do {_unit addItemToBackpack "1Rnd_SmokePurple_Grenade_shell";};

		};

		case "inf_lmg":
		{

			for "_i" from 1 to 3 do {_unit addItemToBackpack "BWA3_200Rnd_556x45";};
			for "_i" from 1 to 1 do {_unit addItemToBackpack "BWA3_15Rnd_9x19_P8";};

		};

		case "inf_p":
		{

			_unit addItemToBackpack "BWA3_Pzf3_IT";

		};

	};

	//Add magazines 
	switch toLower (_loadout) do 
	{

		case "inf_g":
		{

			for "_i" from 1 to 2 do {_unit addItemToUniform "BWA3_30Rnd_556x45_G36_Tracer";};
			for "_i" from 1 to 4 do {_unit addItemToVest "BWA3_30Rnd_556x45_G36_Tracer";};

		};

		case "inf_sg";
		case "inf_e";
		case "inf_gr";
		case "inf_gr_e";
		case "inf_p";
		case "inf_s";
		case "inf_b";
		case "inf_k":
		{

			for "_i" from 1 to 2 do {_unit addItemToUniform "BWA3_30Rnd_556x45_G36_AP";};
			for "_i" from 1 to 4 do {_unit addItemToVest "BWA3_30Rnd_556x45_G36_AP";};

		};

		case "inf_lmg":
		{

			for "_i" from 1 to 1 do {_unit addItemToVest "BWA3_200Rnd_556x45";};

		};

		case "inf_zf":
		{

			for "_i" from 1 to 1 do {_unit addItemToUniform "hlc_20rnd_762x51_b_G3";};
			for "_i" from 1 to 3 do {_unit addItemToVest "hlc_20rnd_762x51_b_G3";};
			
		};

		case "inf_zf28":
		{

			for "_i" from 1 to 2 do {_unit addItemToUniform "BWA3_10Rnd_762x51_G28_AP";};
			for "_i" from 1 to 7 do {_unit addItemToVest "BWA3_10Rnd_762x51_G28_AP";};

		};

	};

	//uniform base items
	for "_i" from 1 to 1 do {_unit addItemToUniform "BWA3_15Rnd_9x19_P8";};

	//vest base items
	for "_i" from 1 to 2 do {_unit addItemToVest "BWA3_DM51A1";};
	for "_i" from 1 to 2 do {_unit addItemToVest "BWA3_DM25";};
	for "_i" from 1 to 6 do {_unit addItemToVest "ACE_fieldDressing";};
	for "_i" from 1 to 6 do {_unit addItemToVest "ACE_packingBandage";};
	for "_i" from 1 to 2 do {_unit addItemToVest "ACE_tourniquet";};
	for "_i" from 1 to 2 do {_unit addItemToVest "ACE_morphine";};
	for "_i" from 1 to 2 do {_unit addItemToVest "ACE_CableTie";};
	for "_i" from 1 to 1 do {_unit addItemToVest "ACE_Flashlight_XL50";};
	if (toLower (_loadout) isEqualTo "inf_lmg") then {
		for "_i" from 1 to 1 do {_unit addItemToUniform "ACE_NVG_Wide";};
	}
	else {
		for "_i" from 1 to 1 do {_unit addItemToVest "ACE_NVG_Wide";};
	};
	for "_i" from 1 to 2 do {_unit addItemToVest "Chemlight_green";};
	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_mk84";};

	if ((_tarn isEqualTo "fleck_idz") or (_tarn isEqualTo "trope_idz") or (_tarn isEqualTo "winter_idz")) then
	{

		if !(_loadout isEqualTo "inf_zf")then 
		{ 

			for "_i" from 1 to 1 do {_unit addItemToVest "BWA3_optic_NSV600";};

		};

	};

	//Add helmet
	_helmet = "";
	switch toLower (_loadout) do
	{

		case "inf_g";
		case "inf_sg":
		{

			if (_tarn isEqualTo "fleck") then {_helmet = "PBW_Helm1_Fleck_H"};
			if (_tarn isEqualTo "trope") then {_helmet = "PBW_Helm1_tropen_H"};

		};

		case "inf_e"; 
		case "inf_gr";
		case "inf_gr_e";
		case "inf_lmg";
		case "inf_p"; 
		case "inf_s"; 
		case "inf_zf";
		case "inf_zf28";
		case "inf_b";
		case "inf_k":
		{

			if (_tarn isEqualTo "fleck") then {_helmet = "PBW_Helm1_Fleck"};
			if (_tarn isEqualTo "trope") then {_helmet = "PBW_Helm1_tropen"};

		};

	};
	switch toLower (_loadout) do
	{
		case "inf_lmg":
		{
			_unit addItemToUniform _helmet;
		};
		case "inf_g";
		case "inf_sg";
		case "inf_e"; 
		case "inf_gr";
		case "inf_gr_e";
		case "inf_p"; 
		case "inf_s"; 
		case "inf_zf";
		case "inf_zf28";
		case "inf_b";
		case "inf_k":
		{
			_unit addItemToVest _helmet;
		};
	};

	//Add weapons
	switch toLower (_loadout) do
	{
		case "inf_g";
		case "inf_sg";
		case "inf_e";
		case "inf_p";
		case "inf_s";
		case "inf_b";
		case "inf_k":
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

		case "inf_gr";
		case "inf_gr_e":
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

		};

		case "inf_lmg":
		{

			_unit addWeapon "BWA3_MG4";
			_unit addPrimaryWeaponItem "BWA3_optic_ZO4x30_MicroT2";
			_unit addPrimaryWeaponItem "BWA3_acc_LLM01_irlaser";

		};

		case "inf_zf":
		{

			
			_unit addWeapon "hlc_rifle_g3a3ris";
			_unit addPrimaryWeaponItem "hlc_optic_HensoldtZO_Hi_Docter_2D";
			for "_i" from 1 to 1 do {_unit addItemToVest "BWA3_optic_RSAS";};

		};

		case "inf_zf28":
		{

			_unit addWeapon "BWA3_G28";
			_unit addPrimaryWeaponItem "BWA3_optic_PMII_DMR_MicroT1_rear";
			_unit addPrimaryWeaponItem "BWA3_acc_LLM01_irlaser";

		};

	};

	_unit addWeapon "BWA3_P8";
	
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
		"Redd_HptGef"
		
	];

	////Slot specifications
	switch toLower (_loadout) do 
	{
	
		case "inf_g":
		{

			for "_i" from 1 to 1 do {_unit addItemToVest "BWA3_DM32_Purple";};
			for "_i" from 1 to 1 do {_unit addItemToVest "BWA3_DM32_Red";};
			for "_i" from 1 to 1 do {_unit addItemToVest "BWA3_DM32_Green";};
			for "_i" from 1 to 1 do {_unit addItemToVest "ACE_HelmetCam";};
			for "_i" from 1 to 1 do {_unit addItemToVest "B_IR_Grenade";};

			_unit addWeapon "Rangefinder";
			_unit linkItem "ACE_GD300_b";

			for "_i" from 1 to 1 do {_unit addItemToUniform "BWA3_30Rnd_556x45_G36_Tracer";};
			for "_i" from 1 to 1 do {_unit addItemToUniform "BWA3_15Rnd_9x19_P8";};

			_insignie = selectRandom _grpFhrArray;
			[_unit,_insignie] spawn {params ["_unit","_insignie"];uiSleep 20;[_unit,_insignie] call bis_fnc_setUnitInsignia;};
			_unit setUnitRank "SERGEANT";
			
		};

		case "inf_sg":
		{

			for "_i" from 1 to 1 do {_unit addItemToVest "BWA3_DM32_Purple";};
			for "_i" from 1 to 1 do {_unit addItemToVest "BWA3_DM32_Red";};
			for "_i" from 1 to 1 do {_unit addItemToVest "BWA3_DM32_Green";};

			_unit addWeapon "Rangefinder";
			_unit linkItem "ACE_GD300_b";

			for "_i" from 1 to 1 do {_unit addItemToUniform "BWA3_30Rnd_556x45_G36_AP";};
			for "_i" from 1 to 1 do {_unit addItemToUniform "BWA3_15Rnd_9x19_P8";};

			_insignie = selectRandom _stellvGrpFhrArray;
			[_unit,_insignie] spawn {params ["_unit","_insignie"];uiSleep 20;[_unit,_insignie] call bis_fnc_setUnitInsignia;};
			_unit setUnitRank "CORPORAL";
			
		};

		case "inf_e";
		case "inf_gr_e":
		{

			for "_i" from 1 to 3 do {_unit addItemToVest "BWA3_DM25";};

			_unit setVariable ["ace_medical_medicClass",1,true];

			for "_i" from 1 to 1 do {_unit addItemToUniform "BWA3_30Rnd_556x45_G36_AP";};
			for "_i" from 1 to 1 do {_unit addItemToUniform "BWA3_15Rnd_9x19_P8";};

			_insignie = selectRandom _mannschafterArray;
			[_unit,_insignie] spawn {params ["_unit","_insignie"];uiSleep 20;[_unit,_insignie] call bis_fnc_setUnitInsignia;};
			_unit setUnitRank "PRIVATE";

		};

		case "inf_gr":
		{


			for "_i" from 1 to 3 do {_unit addItemToVest "BWA3_DM25";};

			for "_i" from 1 to 1 do {_unit addItemToUniform "BWA3_30Rnd_556x45_G36_AP";};
			for "_i" from 1 to 1 do {_unit addItemToUniform "BWA3_15Rnd_9x19_P8";};
	
			_insignie = selectRandom _mannschafterArray;
			[_unit,_insignie] spawn {params ["_unit","_insignie"];uiSleep 20;[_unit,_insignie] call bis_fnc_setUnitInsignia;};
			_unit setUnitRank "PRIVATE";

		};
		
		case "inf_s":
		{


			for "_i" from 1 to 3 do {_unit addItemToVest "BWA3_DM25";};

			for "_i" from 1 to 1 do {_unit addItemToUniform "BWA3_30Rnd_556x45_G36_AP";};
			for "_i" from 1 to 1 do {_unit addItemToUniform "BWA3_15Rnd_9x19_P8";};
			for "_i" from 1 to 1 do {_unit addItemToVest "ACE_EntrenchingTool";};
	
			_insignie = selectRandom _mannschafterArray;
			[_unit,_insignie] spawn {params ["_unit","_insignie"];uiSleep 20;[_unit,_insignie] call bis_fnc_setUnitInsignia;};
			_unit setUnitRank "PRIVATE";

		};

		case "inf_lmg":
		{

			for "_i" from 1 to 3 do {_unit addItemToVest "BWA3_DM25";};

			for "_i" from 1 to 1 do {_unit addItemToVest "BWA3_200Rnd_556x45";};
			for "_i" from 1 to 1 do {_unit addItemToVest "BWA3_15Rnd_9x19_P8";};

			_insignie = selectRandom _mannschafterArray;
			[_unit,_insignie] spawn {params ["_unit","_insignie"];uiSleep 20;[_unit,_insignie] call bis_fnc_setUnitInsignia;};
			_unit setUnitRank "PRIVATE";

		};

		case "inf_p":
		{

			_unit addWeapon "BWA3_Pzf3_tandem_loaded";
			for "_i" from 1 to 3 do {_unit addItemToVest "BWA3_DM25";};
			for "_i" from 1 to 1 do {_unit addItemToVest "BWA3_optic_NSV80";};
			
			for "_i" from 1 to 1 do {_unit addItemToUniform "BWA3_30Rnd_556x45_G36_AP";};
			for "_i" from 1 to 1 do {_unit addItemToUniform "BWA3_15Rnd_9x19_P8";};

			_insignie = selectRandom _mannschafterArray;
			[_unit,_insignie] spawn {params ["_unit","_insignie"];uiSleep 20;[_unit,_insignie] call bis_fnc_setUnitInsignia;};
			_unit setUnitRank "PRIVATE";

			removeBackpack _unit;

		};

		case "inf_zf":
		{

			for "_i" from 1 to 3 do {_unit addItemToVest "BWA3_DM25";};

			for "_i" from 1 to 1 do {_unit addItemToUniform "hlc_20rnd_762x51_b_G3";};
			for "_i" from 1 to 1 do {_unit addItemToUniform "BWA3_15Rnd_9x19_P8";};

			_insignie = selectRandom _mannschafterArray;
			[_unit,_insignie] spawn {params ["_unit","_insignie"];uiSleep 20;[_unit,_insignie] call bis_fnc_setUnitInsignia;};
			_unit setUnitRank "PRIVATE";

		};

		case "inf_zf28":
		{

			for "_i" from 1 to 3 do {_unit addItemToVest "BWA3_DM25";};
			for "_i" from 1 to 1 do {_unit addItemToVest "ACE_RangeCard";};

			for "_i" from 1 to 1 do {_unit addItemToUniform "BWA3_10Rnd_762x51_G28_AP";};
			for "_i" from 1 to 1 do {_unit addItemToUniform "BWA3_15Rnd_9x19_P8";};

			_insignie = selectRandom _mannschafterArray;
			[_unit,_insignie] spawn {params ["_unit","_insignie"];uiSleep 20;[_unit,_insignie] call bis_fnc_setUnitInsignia;};
			_unit setUnitRank "PRIVATE";

		};

		case "inf_b":
		{

			for "_i" from 1 to 3 do {_unit addItemToVest "BWA3_DM25";};
			_unit linkItem "ACE_GD300_b";

			for "_i" from 1 to 1 do {_unit addItemToVest "rhs_tsh4";};
			for "_i" from 1 to 1 do {_unit addItemToVest "PBW_RevisionF_Dunkel";};
			
			for "_i" from 1 to 1 do {_unit addItemToUniform "BWA3_30Rnd_556x45_G36_AP";};
			for "_i" from 1 to 1 do {_unit addItemToUniform "BWA3_15Rnd_9x19_P8";};

			_insignie = selectRandom _mannschafterArray;
			[_unit,_insignie] spawn {params ["_unit","_insignie"];uiSleep 20;[_unit,_insignie] call bis_fnc_setUnitInsignia;};
			_unit setUnitRank "PRIVATE";

		};

		case "inf_k":
		{

			for "_i" from 1 to 3 do {_unit addItemToVest "BWA3_DM25";};
			_unit linkItem "ACE_GD300_b";

			for "_i" from 1 to 1 do {_unit addItemToVest "rhs_tsh4";};
			for "_i" from 1 to 1 do {_unit addItemToVest "PBW_RevisionF_Dunkel";};
			
			_unit setVariable ["ACE_IsEngineer",true,true];

			for "_i" from 1 to 1 do {_unit addItemToUniform "BWA3_30Rnd_556x45_G36_AP";};
			for "_i" from 1 to 1 do {_unit addItemToUniform "BWA3_15Rnd_9x19_P8";};

			_insignie = selectRandom _mannschafterArray;
			[_unit,_insignie] spawn {params ["_unit","_insignie"];uiSleep 20;[_unit,_insignie] call bis_fnc_setUnitInsignia;};
			_unit setUnitRank "PRIVATE";
			
		};

	};