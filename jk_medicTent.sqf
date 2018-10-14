/*
 * Author: joko // Jonas, Spec
 *
 * Usage (initPlayerLocal.sqf):
 * [] call compile preprocessFileLineNumbers "jk_medicTent.sqf";
 */
JK_BuildAnimation = "Acts_carFixingWheel";
JK_BuildTime = 12;
JK_SupportedBackpacks = ["BWA3_Kitbag_Fleck_Medic","BWA3_Kitbag_Tropen_Medic","TFAR_rt1523g_big_bwmod", "TFAR_rt1523g_big_bwmod_tropen"];

JK_fnc_canBuildTent = {
    params ["_JKvehicle","_JKplayer"];
    private _isMedic = ([_JKplayer] call ace_medical_fnc_isMedic);
    private _hasBackpackTent = backpack _JKplayer in JK_SupportedBackpacks && !(backpackContainer _JKplayer getVariable ["JK_buildTent", false]);
    _isMedic && _hasBackpackTent && _JKplayer == vehicle _JKplayer
};

JK_fnc_canDestructTent = {
    params ["_JKvehicle","_JKplayer"];
    private _isMedic = ([_JKplayer] call ace_medical_fnc_isMedic);
    private _canStoreBackpackTent = backpack _JKplayer in JK_SupportedBackpacks && (backpackContainer _JKplayer getVariable ["JK_buildTent", true]);
    _isMedic && _canStoreBackpackTent && _JKplayer == vehicle _JKplayer
};

JK_fnc_destructTent = {
    (_this select 0) params ["_JKtent","_JKplayer"];
    private _JKvehicle = _JKtent getVariable ["JK_tentVehicle", objNull];
    _JKtent setVariable ["JK_tentVehicle", objNull, true];
    backpackContainer _JKplayer setVariable ["JK_buildTent", false, true];
    deleteVehicle _JKtent;
};

JK_fnc_destructTentProgressBar = {
    player playMove JK_BuildAnimation;
    [JK_BuildTime, _this, JK_fnc_destructTent, {(_this select 0) select 1 switchMove ""}, "Reiße medizinisches Zelt ab"] call ace_common_fnc_progressBar;
};

JK_fnc_buildTent = {
    (_this select 0) params ["_JKvehicle","_JKplayer"];
    private _position = (getPos _JKvehicle) findEmptyPosition [5, 20, "Land_MedicalTent_01_MTP_closed_F"];
    if (_position isEqualTo []) exitWith {hint "Nicht genug Platz zum Aufbau des Zeltes vorhanden."};
    private _JKtent = "Land_MedicalTent_01_MTP_closed_F" createVehicle _position;
	_JKtent animateSource ['Door_Hide',1,true];
	_JKtent setdir (getDir _JKvehicle);
    private _action = ["JK_BuildTent", "Reiße medizinisches Zelt ab", "",
        JK_fnc_destructTentProgressBar,
        JK_fnc_canDestructTent
    ] call ace_interact_menu_fnc_createAction;
    [_JKtent, 0, ["ACE_MainActions"], _action] remoteExec ["ace_interact_menu_fnc_addActionToObject", -2, true];
	//[_JKtent, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;
    _JKtent setVariable ["ace_medical_isMedicalFacility", true, true];
    backpackContainer _JKplayer setVariable ["JK_buildTent", true, true];
    _JKtent setVariable ["JK_tentVehicle", _JKvehicle, true];
};

JK_buildTentProgressBar = {
    params ["_JKvehicle"];
    private _position = (getPos _JKvehicle) findEmptyPosition [5, 20, "Land_MedicalTent_01_MTP_closed_F"];
    if (_position isEqualTo []) exitWith {hint "Nicht genug Platz zum Aufbau des Zeltes vorhanden."};
    player playMove JK_BuildAnimation;
    [JK_BuildTime, _this, JK_fnc_buildTent, {(_this select 0) select 1 switchMove ""}, "Baue medizinisches Zelt auf"] call ace_common_fnc_progressBar;
};

_action = ["JK_BuildTent", "Baue medizinisches Zelt auf", "",
    JK_buildTentProgressBar,
    JK_fnc_canBuildTent
] call ace_interact_menu_fnc_createAction;

if (hasInterface) then {
    [player, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToObject;
}