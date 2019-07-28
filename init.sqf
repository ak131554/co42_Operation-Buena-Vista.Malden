//define function to spawn units
_spawnUnits = {
	//regular spawn Method
	[] execVM "init_HC.sqf";
	//[] execVM "spawn_EditorPlaced.sqf";
	true
	};

epsilon_setSkillAndHe = compile preprocessFileLineNumbers "scripts\setSkillAndHe.sqf";

//check if HC1 is present
HC1_Present = if ( isNil "hc1") then {FALSE} else {TRUE};

// spawn units in HC1 if present
if (HC1_Present && isMultiplayer) then {
	if (!isServer && !hasInterface) then {
		missionNamespace setVariable ["HC_clientID", clientOwner, true];
		[] call _spawnUnits;
		};
}

//otherwise spawn units on the Server
else {
	if (isServer) then {
		missionNamespace setVariable ["HC_clientID", 2, true];
		[] call _spawnUnits;
				};
}
