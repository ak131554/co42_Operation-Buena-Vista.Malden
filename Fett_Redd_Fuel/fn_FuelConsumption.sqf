

    ///////////////////////////////////////////////////////////////////////////////////////////////////
	//
	//	Author: Fett
    //  Edit: Redd
	//
	//	Description:
	//				 
	//	Blacklist units when useing headless client: No
	//
	//	Example: [[bravo_veh_1],2] call Fett_Redd_FuelConsumption
	//			 		 
	//	Parameter(s): 0: ARRAY - Array of all affected vehicles
	//				  1: NUMBER - Fuelrate
	//				  
	//	Returns: true
	//  
	///////////////////////////////////////////////////////////////////////////////////////////////////	

    params ["_affectedVehicles", "_fuelRate"];
    
    [

		{

			(_this select 0) params ["_affectedVehicles", "_fuelRate"];

			_vehicle = vehicle player;

			if (_vehicle in _affectedVehicles) then
			{

				_fuelDiff = (_vehicle getVariable ["fuel_lastFrame",fuel _vehicle]) - (fuel _vehicle);
				_vehicle setFuel (fuel _vehicle - (_fuelDiff * (_fuelRate - 1)));
				_vehicle setVariable ["fuel_lastFrame",fuel _vehicle];
				
			};

		},
		0,
		[_affectedVehicles, _fuelRate]

	] 
	call CBA_fnc_addPerframeHandler;

    true;