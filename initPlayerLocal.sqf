

	{
	
		_x params ["_teleporter"];
		[_teleporter] call FETT_fnc_W_addTeleport;
		_teleporter addAction ["Zuschauermodus", 
		{ 
		
			params ["_target","_caller"]; 
			_caller setPosASL (getPosASL spectator_cam_helper); 
			[_caller, true] remoteExecCall ["hideObjectGlobal", 2]; 
			["Initialize", [_caller, [], true]] call BIS_fnc_EGSpectator;
			
		}];
		
	} 
	forEach 
	[
		
		//Hier Teleporter Var.Namen
		port_1

	];