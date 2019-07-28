_truck = "I_Truck_02_covered_F" createVehicle getMarkerPos "spawn_mot_inf";
_driver = [getMarkerPos "spawn_mot_inf", resistance, ["I_soldier_F"]] call BIS_fnc_spawnGroup;
[_driver, objNull] spawn epsilon_setSkillAndHe;
{_x moveInDriver _truck} forEach units _driver;
_group1 = [getMarkerPos "spawn_mot_inf", resistance, (configfile >> "CfgGroups" >> "Indep" >> "IND_F" >> "Infantry" >> "HAF_InfSquad")] call BIS_fnc_spawnGroup;
[_group1, objNull] spawn epsilon_setSkillAndHe;
_group2 = [getMarkerPos "spawn_mot_inf", resistance, (configfile >> "CfgGroups" >> "Indep" >> "IND_F" >> "Infantry" >> "HAF_InfSquad")] call BIS_fnc_spawnGroup;
[_group2, objNull] spawn epsilon_setSkillAndHe;
missionNamespace setVariable ["groups_in_truck_cargo", [_group1, _group2]];
{_x moveInAny _truck} forEach units _group1;
{_x moveInAny _truck} forEach units _group2;
[_driver,getMarkerPos "unload_mot_inf",0,"TR UNLOAD","AWARE","YELLOW","FULL","COLUMN","
	_groups_in_cargo = missionNamespace getVariable [""groups_in_truck_cargo"", []];
	if (count _groups_in_cargo == 2) then {
		_group1 = _groups_in_cargo select 0;
		_group2 = _groups_in_cargo select 1;
		[_group1,getmarkerpos ""mot_inf_group1_wp_1"",0,""MOVE"",""AWARE"",""YELLOW"",""FULL"",""STAG COLUMN""] call CBA_fnc_addWaypoint;
		[_group1,getmarkerpos ""mot_inf_group1_wp_2"",0,""MOVE"",""AWARE"",""YELLOW"",""NORMAL"",""STAG COLUMN""] call CBA_fnc_addWaypoint;
		[_group1,getmarkerpos ""mot_inf_group1_wp_3"",0,""MOVE"",""AWARE"",""YELLOW"",""NORMAL"",""STAG COLUMN""] call CBA_fnc_addWaypoint;
		[_group1,getmarkerpos ""mot_inf_group1_attack"",30,false] call CBA_fnc_taskAttack;
		[_group2,getmarkerpos ""mot_inf_group2_wp_1"",0,""MOVE"",""AWARE"",""YELLOW"",""FULL"",""STAG COLUMN""] call CBA_fnc_addWaypoint;
		[_group2,getmarkerpos ""mot_inf_group2_wp_2"",0,""MOVE"",""AWARE"",""YELLOW"",""NORMAL"",""STAG COLUMN""] call CBA_fnc_addWaypoint;
		[_group2,getmarkerpos ""mot_inf_group2_attack"",30,false] call CBA_fnc_taskAttack;
	};
	[this] spawn {sleep 20;[_this,getmarkerpos ""spawn_mot_inf"",0,""MOVE"",""AWARE"",""YELLOW"",""NORMAL"",""COLUMN""] call CBA_fnc_addWaypoint;};
"] call CBA_fnc_addWaypoint;