/*
	author = Reimchen
	description = n.a.
*/

params ["_unit"];
private ["_group","_logic","_animation"];
_group = createGroup west;
_logic = _group createUnit ["Logic", [0,0,0], [], 0, "NONE"];
_logic setPos (getPos _unit);
_logic setDir (getDir _unit);
_unit attachTo [_logic,[0,0,0]];
[_unit,"REPAIR_VEH_KNEEL"] call BIS_fnc_ambientAnim;
