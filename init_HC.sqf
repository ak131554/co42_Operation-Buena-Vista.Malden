// Arudy
_arudy1 = [getMarkerPos "defend_arudy_1", resistance, ["I_Soldier_TL_F","I_Soldier_A_F","I_Soldier_LAT_F"]] call BIS_fnc_spawnGroup;
[_arudy1, objNull] spawn epsilon_setSkillAndHe;
[_arudy1 , getmarkerpos "defend_arudy_1", 40] call CBA_fnc_taskDefend;

_arudy2 = [getMarkerPos "defend_arudy_1", resistance, ["I_Soldier_AR_F","I_Soldier_A_F","I_Soldier_M_F"]] call BIS_fnc_spawnGroup;
[_arudy2, objNull] spawn epsilon_setSkillAndHe;
[_arudy2 , getmarkerpos "defend_arudy_1", 40] call CBA_fnc_taskDefend;

_arudy3 = [getMarkerPos "defend_arudy_2", resistance, ["I_Soldier_TL_F","I_Soldier_GL_F","I_Soldier_AR_F","I_Soldier_LAT_F"]] call BIS_fnc_spawnGroup;
[_arudy3, objNull] spawn epsilon_setSkillAndHe;
[_arudy3 , getmarkerpos "defend_arudy_2", 100, 3, 0.8] call CBA_fnc_taskDefend;

_arudy4 = [getMarkerPos "defend_arudy_2", resistance, ["I_Soldier_TL_F","I_Soldier_GL_F","I_Soldier_AR_F","I_Soldier_LAT_F"]] call BIS_fnc_spawnGroup;
[_arudy4, objNull] spawn epsilon_setSkillAndHe;
[_arudy4 , getmarkerpos "defend_arudy_2", 60] call CBA_fnc_taskDefend;

// Obj 1 inner
_obj1_inner_1 = [getMarkerPos "defend_obj1_1", resistance, ["I_Soldier_TL_F","I_Soldier_F","I_Soldier_AR_F","I_Soldier_LAT_F"]] call BIS_fnc_spawnGroup;
[_obj1_inner_1, objNull] spawn epsilon_setSkillAndHe;
[_obj1_inner_1 , getmarkerpos "defend_obj1_1", 10, 0, 1] call CBA_fnc_taskDefend;

_obj1_inner_2 = [getMarkerPos "defend_obj1_2", resistance, ["I_Soldier_TL_F","I_Soldier_F","I_Soldier_AR_F","I_Soldier_LAT_F"]] call BIS_fnc_spawnGroup;
[_obj1_inner_2, objNull] spawn epsilon_setSkillAndHe;
[_obj1_inner_2 , getmarkerpos "defend_obj1_2", 10, 0, 1] call CBA_fnc_taskDefend;

// Obj 1 outer
/*
Für die äußeren Patrouillen mache ich einen Trigger mit Type SKIP WAYPOINT und Auslöser BLUFOR spotted by IND.
Diesen Trigger synce ich mit allen Cycle-Wegpunkten der einzelnen Patrouillen. Da es leider keine Methode getWaypointType gibt,
verlasse ich mich darauf, dass der Cycle Wegpunkt der letzte ist, den die Funktion CBA_fnc_taskPatrol erzeugt.
*/
_trg = createTrigger ["EmptyDetector", getMarkerPos "obj1_retreat_to_defend", false];
_trg setTriggerType "SWITCH";
_trg setTriggerActivation ["WEST", "GUER D", false];
_trg setTriggerArea [100, 100, 0, false];
_trg setTriggerStatements ["this", "", ""];
_trg setTriggerTimeout [0, 8, 12, false];
_trg_synced_waypoints = [];

_obj1_outer_1 = [getMarkerPos "patrol_obj1_3", resistance, ["I_Soldier_TL_F","I_Soldier_F","I_Soldier_AR_F","I_Soldier_LAT_F","I_Soldier_AA_F","I_Soldier_AAA_F"]] call BIS_fnc_spawnGroup;
[_obj1_outer_1, objNull] spawn epsilon_setSkillAndHe;
[_obj1_outer_1 , getmarkerpos "patrol_obj1_3", 200, 6, "MOVE", "SAFE", "YELLOW", "NORMAL", "WEDGE","",[0,3,20]] call CBA_fnc_taskPatrol;
_waypoints = waypoints _obj1_outer_1;
_trg_synced_waypoints pushBack (_waypoints select (count _waypoints - 1));
[_obj1_outer_1 , getmarkerpos "obj1_retreat_to_defend", 25, false] call CBA_fnc_taskAttack;

_obj1_outer_2 = [getMarkerPos "patrol_obj1_4", resistance, ["I_Soldier_TL_F","I_Soldier_GL_F","I_Soldier_AR_F","I_Soldier_LAT_F","I_Soldier_TL_F","I_Soldier_F","I_Soldier_AR_F","I_Soldier_LAT_F"]] call BIS_fnc_spawnGroup;
[_obj1_outer_2, objNull] spawn epsilon_setSkillAndHe;
[_obj1_outer_2 , getmarkerpos "patrol_obj1_4", 200, 6, "MOVE", "SAFE", "YELLOW", "NORMAL", "WEDGE","",[0,3,15]] call CBA_fnc_taskPatrol;
_waypoints = waypoints _obj1_outer_2;
_trg_synced_waypoints pushBack (_waypoints select (count _waypoints - 1));
[_obj1_outer_2 , getmarkerpos "obj1_retreat_to_defend", 25, false] call CBA_fnc_taskAttack;

_obj1_outer_3 = [getMarkerPos "patrol_obj1_5", resistance, ["I_Soldier_TL_F","I_Soldier_F","I_Soldier_AR_F","I_Soldier_LAT_F"]] call BIS_fnc_spawnGroup;
[_obj1_outer_3, objNull] spawn epsilon_setSkillAndHe;
[_obj1_outer_3 , getmarkerpos "patrol_obj1_5", 150, 6, "MOVE", "SAFE", "YELLOW", "NORMAL", "WEDGE","",[0,3,20]] call CBA_fnc_taskPatrol;
_waypoints = waypoints _obj1_outer_3;
_trg_synced_waypoints pushBack (_waypoints select (count _waypoints - 1));
[_obj1_outer_3 , getmarkerpos "obj1_retreat_to_defend", 25, false] call CBA_fnc_taskAttack;

_trg synchronizeTrigger _trg_synced_waypoints;

//Obj 2 inner
_obj2_inner_1 = [getMarkerPos "defend_obj2_1", resistance, ["I_Soldier_TL_F","I_Soldier_F","I_Soldier_AR_F","I_Soldier_LAT_F"]] call BIS_fnc_spawnGroup;
[_obj2_inner_1, objNull] spawn epsilon_setSkillAndHe;
[_obj2_inner_1 , getmarkerpos "defend_obj2_1", 20, 0, 1] call CBA_fnc_taskDefend;

_obj2_inner_2 = [getMarkerPos "defend_obj2_2", resistance, ["I_Soldier_TL_F","I_Soldier_F","I_Soldier_AR_F"]] call BIS_fnc_spawnGroup;
[_obj2_inner_2, objNull] spawn epsilon_setSkillAndHe;
[_obj2_inner_2 , getmarkerpos "defend_obj2_2", 20, 0, 1] call CBA_fnc_taskDefend;

_obj2_inner_3 = [getMarkerPos "defend_obj2_3", resistance, ["I_Soldier_TL_F","I_Soldier_F"]] call BIS_fnc_spawnGroup;
[_obj2_inner_3, objNull] spawn epsilon_setSkillAndHe;
[_obj2_inner_3 , getmarkerpos "defend_obj2_3", 20, 0, 1] call CBA_fnc_taskDefend;

// Obj 2 outer
// Genauso wie unter Obj 1 outer
_trg = createTrigger ["EmptyDetector", getMarkerPos "obj2_retreat_to_defend", false];
_trg setTriggerType "SWITCH";
_trg setTriggerActivation ["WEST", "GUER D", false];
_trg setTriggerArea [100, 100, 0, false];
_trg setTriggerStatements ["this", "", ""];
_trg setTriggerTimeout [0, 8, 12, false];
_trg_synced_waypoints = [];

_obj2_outer_1 = [getMarkerPos "patrol_obj2_4", resistance, ["I_Soldier_TL_F","I_Soldier_F","I_Soldier_AR_F","I_Soldier_LAT_F"]] call BIS_fnc_spawnGroup;
[_obj2_outer_1, objNull] spawn epsilon_setSkillAndHe;
[_obj2_outer_1 , getmarkerpos "patrol_obj2_4", 100, 6, "MOVE", "SAFE", "YELLOW", "NORMAL", "WEDGE","",[0,3,20]] call CBA_fnc_taskPatrol;
_waypoints = waypoints _obj2_outer_1;
_trg_synced_waypoints pushBack (_waypoints select (count _waypoints - 1));
[_obj2_outer_1 , getmarkerpos "obj2_retreat_to_defend", 60, false] call CBA_fnc_taskAttack;

_obj2_outer_2 = [getMarkerPos "patrol_obj2_5", resistance, ["I_Soldier_TL_F","I_Soldier_GL_F","I_Soldier_AR_F","I_Soldier_LAT_F","I_Soldier_TL_F","I_Soldier_F","I_Soldier_AR_F","I_Soldier_LAT_F"]] call BIS_fnc_spawnGroup;
[_obj2_outer_2, objNull] spawn epsilon_setSkillAndHe;
[_obj2_outer_2 , getmarkerpos "patrol_obj2_5", 100, 6, "MOVE", "SAFE", "YELLOW", "NORMAL", "WEDGE","",[0,3,20]] call CBA_fnc_taskPatrol;
_waypoints = waypoints _obj2_outer_2;
_trg_synced_waypoints pushBack (_waypoints select (count _waypoints - 1));
[_obj2_outer_2 , getmarkerpos "obj2_retreat_to_defend", 60, false] call CBA_fnc_taskAttack;

// Diese Patrouille soll nicht mit zurückgezogen werden. Sie ist nur da, dass jemand die Spieler empfängt, falls sie auf die Idee kommen, von Süden anzugreifen.
_obj2_outer_3 = [getMarkerPos "patrol_obj2_6", resistance, ["I_Soldier_TL_F","I_Soldier_F","I_Soldier_AR_F","I_Soldier_LAT_F"]] call BIS_fnc_spawnGroup;
[_obj2_outer_3, objNull] spawn epsilon_setSkillAndHe;
[_obj2_outer_3 , getmarkerpos "patrol_obj2_6", 200, 6, "MOVE", "SAFE", "YELLOW", "NORMAL", "WEDGE","",[0,3,20]] call CBA_fnc_taskPatrol;

_obj2_outer_4 = [getMarkerPos "patrol_obj2_7", resistance, ["I_Soldier_TL_F","I_Soldier_GL_F","I_Soldier_AR_F","I_Soldier_LAT_F","I_Soldier_TL_F","I_Soldier_F","I_Soldier_AR_F","I_Soldier_LAT_F"]] call BIS_fnc_spawnGroup;
[_obj2_outer_4, objNull] spawn epsilon_setSkillAndHe;
[_obj2_outer_4 , getmarkerpos "patrol_obj2_7", 200, 6, "MOVE", "SAFE", "YELLOW", "NORMAL", "WEDGE","",[0,3,20]] call CBA_fnc_taskPatrol;
_waypoints = waypoints _obj2_outer_4;
_trg_synced_waypoints pushBack (_waypoints select (count _waypoints - 1));
[_obj2_outer_4 , getmarkerpos "obj2_retreat_to_defend", 60, false] call CBA_fnc_taskAttack;

_obj2_outer_5 = [getMarkerPos "patrol_obj2_8", resistance, ["I_Soldier_TL_F","I_Soldier_F","I_Soldier_AR_F","I_Soldier_LAT_F"]] call BIS_fnc_spawnGroup;
[_obj2_outer_5, objNull] spawn epsilon_setSkillAndHe;
[_obj2_outer_5 , getmarkerpos "patrol_obj2_8", 200, 6, "MOVE", "SAFE", "YELLOW", "NORMAL", "WEDGE","",[0,3,20]] call CBA_fnc_taskPatrol;
_waypoints = waypoints _obj2_outer_5;
_trg_synced_waypoints pushBack (_waypoints select (count _waypoints - 1));
[_obj2_outer_5 , getmarkerpos "obj2_retreat_to_defend", 60, false] call CBA_fnc_taskAttack;

_trg synchronizeTrigger _trg_synced_waypoints;

