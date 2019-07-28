if (!alive apc) exitWith {};
_crew = [getMarkerPos "spawn_apc_crew", resistance, ["I_crew_F","I_crew_F","I_crew_F"]] call BIS_fnc_spawnGroup;
[_crew, objNull] spawn epsilon_setSkillAndHe;
units _crew allowGetIn true;
[_crew,apc,0,"GETIN NEAREST","AWARE","BLUE","FULL","COLUMN","
	[this , getmarkerpos (missionNamespace getVariable [""ApcCrew_defend"", ""ApcCrew_defend_Obj2""]), 30] call CBA_fnc_taskDefend;
"] call CBA_fnc_addWaypoint;