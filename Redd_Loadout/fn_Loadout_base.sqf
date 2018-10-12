

	params ["_unit","_loadout","_tarn","_class","_isFalli","_isGreni"];

	switch (_class) do
	{
		
		//OPL
		case "B_officer_F": {_null = [_unit,_loadout,_tarn,_isFalli] call compile preProcessFileLineNumbers "loadouts\opl.sqf";};
		
		//Aufklärer
		case "B_recon_F": {_null = [_unit,_loadout,_tarn,_isFalli,_isGreni] call compile preProcessFileLineNumbers "loadouts\auf.sqf";};
		
		//Sanitäter
		case "B_medic_F": {_null = [_unit,_loadout,_tarn,_isFalli] call compile preProcessFileLineNumbers "loadouts\san.sqf";};
		
		//MG
		case "B_soldier_AR_F": {_null = [_unit,_loadout,_tarn,_isFalli] call compile preProcessFileLineNumbers "loadouts\mg.sqf";};
		
		//GMW
		case "B_support_GMG_F": {_null = [_unit,_loadout,_tarn,_isFalli] call compile preProcessFileLineNumbers "loadouts\gmw.sqf";};
		
		//Pio
		case "B_soldier_exp_F": {_null = [_unit,_loadout,_tarn,_isFalli,_isGreni] call compile preProcessFileLineNumbers "loadouts\pio.sqf";};
		
		//JFST
		case "B_recon_JTAC_F": {_null = [_unit,_loadout,_tarn,_isFalli] call compile preProcessFileLineNumbers "loadouts\jfst.sqf";};
		
		//Inf
		case "B_Soldier_F": {_null = [_unit,_loadout,_tarn,_isFalli] call compile preProcessFileLineNumbers "loadouts\inf.sqf";};
		
		//Zgf
		case "B_Soldier_SL_F": {_null = [_unit,_loadout,_tarn,_isFalli] call compile preProcessFileLineNumbers "loadouts\zgf.sqf";};
		
		//Milan
		case "B_soldier_AT_F": {_null = [_unit,_loadout,_tarn,_isFalli] call compile preProcessFileLineNumbers "loadouts\at.sqf";};
		
		//Pilot
		case "B_Helipilot_F": {_null = [_unit,_loadout,_tarn,_isFalli] call compile preProcessFileLineNumbers "loadouts\pilot.sqf";};

		//Panzer
		case "B_crew_F": {_null = [_unit,_loadout,_tarn,_isFalli,_isGreni] call compile preProcessFileLineNumbers "loadouts\panzer.sqf";};

		//Log
		case "B_soldier_repair_F": {_null = [_unit,_loadout,_tarn,_isFalli] call compile preProcessFileLineNumbers "loadouts\log.sqf";};

		//Mörser
		case "B_support_Mort_F": {_null = [_unit,_loadout,_tarn,_isFalli] call compile preProcessFileLineNumbers "loadouts\mor.sqf";};
		
		//Unbewaffnet
		case "B_Survivor_F": {_null = [_unit,_loadout,_tarn,_isFalli] call compile preProcessFileLineNumbers "loadouts\unarmed.sqf";};

		default {};
		
	};
