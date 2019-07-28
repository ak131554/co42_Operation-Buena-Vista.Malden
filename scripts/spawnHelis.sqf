_transport_heli = "I_Heli_Transport_02_F" createVehicle getMarkerPos "spawn_transport_heli";
_attack_heli = "I_Heli_light_03_dynamicLoadout_F" createVehicle getMarkerPos "spawn_attack_heli";
_transport_heli_crew = [getMarkerPos "spawn_transport_heli", resistance, ["I_helipilot_F","I_helipilot_F"]] call BIS_fnc_spawnGroup;
[_transport_heli_crew, objNull] spawn epsilon_setSkillAndHe;
_attack_heli_crew = [getMarkerPos "spawn_attack_heli", resistance, ["I_helipilot_F","I_helipilot_F"]] call BIS_fnc_spawnGroup;
[_attack_heli_crew, objNull] spawn epsilon_setSkillAndHe;
{_x moveInAny _transport_heli} forEach units _transport_heli_crew;
{_x moveInAny _attack_heli} forEach units _attack_heli_crew;
_group = [getMarkerPos "spawn_mot_inf", resistance, (configfile >> "CfgGroups" >> "Indep" >> "IND_F" >> "Infantry" >> "HAF_InfSquad")] call BIS_fnc_spawnGroup;
[_group, objNull] spawn epsilon_setSkillAndHe;
missionNamespace setVariable ["group_in_heli_cargo", _group];
{_x moveInAny _transport_heli} forEach units _group;
[_attack_heli_crew,getmarkerpos "attack_heli_wp1",0,"MOVE","AWARE","YELLOW","FULL","COLUMN"] call CBA_fnc_addWaypoint;
[_attack_heli_crew,getmarkerpos "heli_attack",50,false] call CBA_fnc_taskAttack;
_attack_heli_waypoints = waypoints _attack_heli_crew;
_attack_heli_waypoints select (count _attack_heli_waypoints - 1) setWaypointStatements ["TRUE", "[this, getmarkerpos ""heli_attack"", 80, 6, ""SAD"", ""COMBAT"", ""RED"", ""NORMAL""] call CBA_fnc_taskPatrol;"];
[_transport_heli,getmarkerpos "heli_wp1",0,"MOVE","SAFE","BLUE","FULL","COLUMN"] call CBA_fnc_addWaypoint;
[_transport_heli,getmarkerpos "heli_wp2",0,"MOVE","SAFE","BLUE","FULL","COLUMN"] call CBA_fnc_addWaypoint;
[_transport_heli,getMarkerPos "unload_heli",0,"TR UNLOAD","SAFE","BLUE","FULL","COLUMN","
	_group = missionNamespace getVariable [""group_in_heli_cargo"", objNull];
	if (!isNull _group ) then {
		[_group,getmarkerpos ""patrol_obj2_5"",0,""MOVE"",""AWARE"",""YELLOW"",""FULL"",""STAG COLUMN""] call CBA_fnc_addWaypoint;
		[_group,getmarkerpos ""heli_group_wp1"",0,""MOVE"",""AWARE"",""YELLOW"",""FULL"",""STAG COLUMN""] call CBA_fnc_addWaypoint;
		[_group,getmarkerpos ""heli_attack"",30,false] call CBA_fnc_taskAttack;
	};
	[this] spawn {sleep 10;[_this,getmarkerpos ""spawn_transport_heli"",0,""MOVE"",""AWARE"",""YELLOW"",""FULL"",""COLUMN""] call CBA_fnc_addWaypoint;};
"] call CBA_fnc_addWaypoint;