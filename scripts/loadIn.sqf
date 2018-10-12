/*
	author = Epsilon
	description = n.a.
*/

params ["_container","_ammoBoxes"];
{
	uiSleep 0.1;
	_x setPos (getPos _container);
	[_x,_container] call ace_cargo_fnc_loadItem;
}
forEach _ammoBoxes;
