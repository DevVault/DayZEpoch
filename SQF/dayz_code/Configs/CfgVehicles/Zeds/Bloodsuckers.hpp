class z_bloodsucker : Zed_Base {
	scope = 2;
	glassesEnabled = 0;
	vehicleClass = "Zombie";
	displayName = $STR_ZNAME_BLOODSUCKER;
	model = "\nst\NS_mutants\blood\bloodsucker.p3d";
	hiddenSelections[] = {"invisible"};
	//hiddenSelectionsTextures[] = {};
	fsmDanger = "";
	fsmFormation = "";
	//zombieLoot = "bloodsucker";
	moves = "CfgMovesBloodsucker";
	isMan = false;
	weapons[] = {};
	magazines[] = {};
	sensitivity = 1;	// sensor sensitivity
	sensitivityEar = 1;
	identityTypes[] = {};
	class TalkTopics {};
	languages[] = {};
	armor = 46;
	damageScale = 250;
	sepsisChance = 0;
	BleedChance = 10; // Maybe this should be higher
	forcedSpeed = 6; // Left here to prevent errors in player_zombieCheck

	class Eventhandlers {
		init = "[(_this select 0)] execFSM ""\z\AddOns\dayz_code\system\mutant_agent.fsm""";
		local = "_z = _this select 0; if (!(_this select 1)) exitWith {}; if (isServer) exitWith { _z call sched_co_deleteVehicle; }; [_z,true] execFSM '\z\AddOns\dayz_code\system\mutant_agent.fsm';";
		//HandleDamage = "_this call local_zombieDamage;";
		//Killed = "[_this,'zombieKills'] call local_eventKill;";
	};
	
	class UserActions
	{
		class Butcher
		{
			displayName = $STR_EPOCH_ACTIONS_GUTBLOOD;
			displayNameDefault = $STR_EPOCH_ACTIONS_GUTBLOOD;
			priority = 0;
			radius = 3;
			position = "";
			showWindow = 1;
			onlyForPlayer = 1;
			shortcut = "";
			condition = "(['Butcher',this] call userActionConditions)";
			statement = "this spawn player_butcher;";
		};
	};
	
	class HitPoints {
		class HitHead {
			armor = 10;
			material = -1;
			name = "head_hit";
			passThrough = true;
			memoryPoint = "pilot";
		};
		
		class HitBody : HitHead {
			armor = 20;
			name = "body";
			memoryPoint = "aimPoint";
		};
		
		class HitSpine : HitHead {
			armor = 10;
			name = "Spine2";
			memoryPoint = "aimPoint";
		};
		
		class HitHands : HitHead {
			armor = 10;
			material = -1;
			name = "hands";
			passThrough = true;
		};
		
		class HitLArm : HitHands {
			name = "LeftArm";
			memoryPoint = "lelbow";
		};
		
		class HitRArm : HitHands {
			name = "RightArm";
			memoryPoint = "relbow";
		};
		
		class HitLForeArm : HitHands {
			name = "LeftForeArm";
			memoryPoint = "lwrist";
		};
		
		class HitRForeArm : HitHands {
			name = "RightForeArm";
			memoryPoint = "rwrist";
		};
		
		class HitLHand : HitHands {
			name = "LeftHand";
			memoryPoint = "LeftHandMiddle1";
		};
		
		class HitRHand : HitHands {
			name = "RightHand";
			memoryPoint = "RightHandMiddle1";
		};
		
		class HitLegs : HitHands {
			name = "legs";
			memoryPoint = "pelvis";
		};
		
		class HitLLeg : HitHands {
			name = "LeftLeg";
			memoryPoint = "lknee";
		};
		
		class HitLLegUp : HitHands {
			name = "LeftUpLeg";
			memoryPoint = "lfemur";
		};
		
		class HitRLeg : HitHands {
			name = "RightLeg";
			memoryPoint = "rknee";
		};
		
		class HitRLegUp : HitHands {
			name = "RightUpLeg";
			memoryPoint = "rfemur";
		};
	};
};