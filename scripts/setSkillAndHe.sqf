/*
	author = Epsilon
	description = n.a.
*/

params ["_group","_unit"];
if (!isNull _group) then {
	{
		//Set skills
		_x setSkill ["aimingAccuracy",0.4];
		_x setSkill ["aimingShake",0.4];
		_x setSkill ["aimingSpeed",0.75];
		_x setSkill ["commanding",0.75];
		_x setSkill ["courage",0.75];
		_x setSkill ["general",0.75];
		_x setSkill ["reloadSpeed",0.75];
		_x setSkill ["spotDistance",1];
		_x setSkill ["spotTime",1];
		
		_x removeMagazines "1Rnd_HE_Grenade_shell";
		_x removeMagazines "MiniGrenade";
		if (typeOf _x == "I_Soldier_GL_F") then {
			for "_i" from 1 to (selectRandom [1,2,3]) do {_x addMagazine "1Rnd_HE_Grenade_shell";};
		};
	}
	foreach units _group;
};
if (!isNull _unit) then {
	//Set skills
	_unit setSkill ["aimingAccuracy",0.4];
	_unit setSkill ["aimingShake",0.4];
	_unit setSkill ["aimingSpeed",0.75];
	_unit setSkill ["commanding",0.75];
	_unit setSkill ["courage",0.75];
	_unit setSkill ["general",0.75];
	_unit setSkill ["reloadSpeed",0.75];
	_unit setSkill ["spotDistance",1];
	_unit setSkill ["spotTime",1];
	
	_unit removeMagazines "1Rnd_HE_Grenade_shell";
	_unit removeMagazines "MiniGrenade";
	if (typeOf _unit == "I_Soldier_GL_F") then {
		for "_i" from 1 to (selectRandom [1,2,3]) do {_unit addMagazine "1Rnd_HE_Grenade_shell";};
	};
};