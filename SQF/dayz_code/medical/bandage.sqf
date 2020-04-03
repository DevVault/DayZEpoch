if (dayz_actionInProgress) exitWith {localize "str_player_actionslimit" call dayz_rollingMessages;};
dayz_actionInProgress = true;

private ["_msg","_finished","_unit","_item"];

_unit = (_this select 3) select 0;
_item = (_this select 3) select 1;

player removeMagazine _item;
closedialog 0;

call fnc_usec_medic_removeActions;
r_action = false;

[player,"bandage",0,false] call dayz_zombieSpeak;

if (vehicle player != player) then {
	uiSleep 3;
	_finished = true;
} else {
	_finished = ["Medic",1] call fn_loopAction;
};

if (_finished) then {
	if (_unit == player) then {
	//Self Healing
		//Self Healing
		[player, player, if (_item == "ItemSepsisBandage") then {true} else {false}] call player_medBandage;
		_msg = ["str_actions_medical_bandage_self","str_actions_medical_sepsisbandage_self"] select (_item == "ItemSepsisBandage");
		localize _msg call dayz_rollingMessages;
	} else {
		// Heal another player
		PVDZ_send = [_unit,"Bandage",[_unit, player, if (_item == "ItemSepsisBandage") then {true} else {false}]];
		publicVariableServer "PVDZ_send";

		//Give humanity
		20 call player_humanityChange;

		_msg = ["str_actions_medical_gave_bandage","str_actions_medical_gave_sepsisbandage"] select (_item == "ItemSepsisBandage");
		format[localize _msg,(name _unit)] call dayz_rollingMessages;
	};
} else {
	player addMagazine _item;
};

dayz_actionInProgress = false;
