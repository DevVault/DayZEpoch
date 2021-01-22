if (dayz_actionInProgress) exitWith {localize "str_player_actionslimit" call dayz_rollingMessages;};
dayz_actionInProgress = true;

private ["_vehicle","_curFuel","_newFuel","_finished","_location1","_location2","_abort",
"_canNameEmpty","_canSizeEmpty","_canTypeEmpty","_canName","_canSize","_configCanEmpty","_configVeh","_capacity","_nameText",
"_hasHose","_PlayerNear"];

_vehicle = _this select 3;
player removeAction s_player_siphonfuel;
_hasHose = "equip_hose" in magazines player;

if (!_hasHose) exitWith {dayz_actionInProgress = false; localize "str_siphon_hose" call dayz_rollingMessages; };

_PlayerNear = {isPlayer _x} count ((getPosATL _vehicle) nearEntities ["CAManBase", 12]) > 1;
if (_PlayerNear) exitWith {dayz_actionInProgress = false; localize "str_pickup_limit_5" call dayz_rollingMessages;};

_abort = false;
_configVeh = 	configFile >> "cfgVehicles" >> typeOf _vehicle;
_capacity = 	getNumber(_configVeh >> "fuelCapacity");
_nameText = 	getText(_configVeh >> "displayName");

{
	_configCanEmpty = 	configFile >> "CfgMagazines" >> _x;

	if (_x in DayZ_fuelCansEmpty) then {
		_canNameEmpty = _x;
		_canSizeEmpty = getNumber(_configCanEmpty >> "fuelQuantity");
		_canTypeEmpty = getText(_configCanEmpty >> "displayName");

		_canName = getText(_configCanEmpty >> "fullCan");
		_canSize =	getNumber(configFile >> "cfgMagazines" >> _canName >> "fuelQuantity");

		if (_canSizeEmpty == 0) then {
			_curFuel = ((fuel _vehicle) * _capacity);
			_newFuel = (_curFuel - _canSize);

			// calculate new fuel
			if (_capacity == 0) then {
				_newFuel = 0;
			} else {
				_newFuel = (_newFuel / _capacity);
			};

			if (_newFuel > 0) then {
				format[localize "str_siphon_preparing",_canTypeEmpty] call dayz_rollingMessages;
				_finished = false;
				[player,(getPosATL player),20,"refuel"] spawn fnc_alertZombies;

				if (!dayz_isSwimming) then {
					_finished = ["Medic",1] call fn_loopAction;
				} else {
					// Alternate method in water make sure player stays in one spot for 6 seconds
					_location1 = getPosATL player;
					uiSleep 6;
					_location2 = getPosATL player;
					if(_location1 distance _location2 < 3) then {
						_finished = true;
					};
				};

				if (_finished) then {
					// Get vehicle fuel levels again
					_curFuel = ((fuel _vehicle) * _capacity);
					_newFuel = (_curFuel - _canSize);

					// calculate minimum needed fuel
					if (_capacity == 0) then {
						_newFuel = 0;
					} else {
						_newFuel = (_newFuel / _capacity);
					};

					if (_newFuel > 0) then {
						if(([player,_canNameEmpty] call BIS_fnc_invRemove) == 1) then {
							if (local _vehicle) then {
								[_vehicle,_newFuel] call local_setFuel;
							} else {
								PVDZ_send = [_vehicle,"SetFuel",[_vehicle,_newFuel]];
								publicVariableServer "PVDZ_send";
							};

							player addMagazine _canName;

							["Working",0,[20,40,15,0]] call dayz_NutritionSystem;

							format[localize "str_siphon_drained",_nameText,_canSize] call dayz_rollingMessages;

							call fnc_usec_medic_removeActions;
							r_action = false;

							uiSleep 1;
						} else {
							_abort = true;
						};
					} else {
						format[localize "str_siphon_notenough",_nameText] call dayz_rollingMessages;
						_abort = true;
					};
				} else {
					localize "str_siphon_canceled" call dayz_rollingMessages;
					_abort = true;
				};
			} else {
				format[localize "str_siphon_notenough",_nameText] call dayz_rollingMessages;
				_abort = true;
			};
		};
	};
	if (_abort) exitWith {};
} forEach magazines player;

dayz_actionInProgress = false;
