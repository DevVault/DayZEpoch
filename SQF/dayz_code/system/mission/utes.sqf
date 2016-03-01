private ["_object","_type"];
{
	_type = _x select 0;
	_object = _type createVehicleLocal (_x select 1);
	_object setDir (_x select 2);
	_object setPos (_x select 1);
	_object allowDamage false;
	if !(_type in ["Land_Campfire","Land_Campfire_burning","Land_Fire","Land_Fire_burning","Land_Fire_barrel","Land_Fire_barrel_burning"]) then {_object enableSimulation false;};
} count [
	["CDF_WarfareBVehicleServicePoint",[4025.69,2908.12,0.00863075],258.143],
	["LADAWreck",[4012.5,2916.29,0.0180664],197.347],
	["Land_Misc_Well_C_EP1",[4021.45,2896.22,0.00671959],218.011],
	["Land_bags_EP1",[4012.45,2889.94,0.00109863],218.082],
	["Land_Fire_barrel",[4014.36,2895.12,0.00125504],218.029],
	["Land_Fire_barrel",[4015.43,2888.71,0.0021286],121.63],
	["Land_Campfire",[4050.11,2874.95,-0.2],219.506],
	["Land_covering_hut_EP1",[4012.97,2890.44,0.00217056],261.639],
	["Land_Barrel_water",[4012.06,2891.2,0.000686646],218.029],
	["Land_stand_small_EP1",[4015.72,2893.52,0.00094986],260.009],
	["Land_Crates_stack_EP1",[4011.82,2894.21,0.00157547],169.865],
	["Gunrack2",[4027.11,2889.69,0.0073204],24.4105],
	["Land_stand_meat_EP1",[4012.54,2892.91,0.00189972],260.007],
	["Land_transport_crates_EP1",[4029.22,2887.86,0.00124359],161.354],
	["AmmoCrates_NoInteractive_Large",[4030.02,2894.55,0.00167656],275.103],
	["AmmoCrates_NoInteractive_Medium",[4028.69,2895.61,-0.00157166],275.177],
	["AmmoCrates_NoInteractive_Small",[4030.4,2892.73,-0.00457764],275.103],
	["Gunrack1",[4028.31,2889.37,0.00250816],65.4275],
	["FoldTable",[4024.61,2890.22,0.000383377],305.555],
	["FoldChair",[4026.19,2889.13,0.000844955],140.178],
	["FoldTable",[4026.87,2894.41,0.000782013],290.292],
	["FoldChair",[4028.42,2893.22,0.00102425],150.986],
	["Land_GuardShed",[4016.9,2885.69,0.0586452],208.242],
	["Axe_woodblock",[4012.23,2895.12,0.00060463],40.7594],
	["Pile_of_wood",[4011.4,2898.56,0.0568256],356.207],
	["Land_Crates_EP1",[4022.48,2889.94,0.00028801],106.643],
	["WoodChair",[4016.34,2885.56,6.86646e-005],238.979],
	["Land_Water_pipe_EP1",[4017.05,2885.19,0.00218201],122.272],
	["Land_transport_crates_EP1",[4026.93,2886.97,0.00128746],249.221],
	["Desk",[4014.39,2903.38,0.00163078],268.983],
	["FoldChair",[4012.96,2903.55,0.00203514],307.393],
	["Land_Canister_EP1",[4020.88,2914.32,0.00602722],130.786],
	["Land_tires_EP1",[4014.2,2918.91,0.00510406],301.071],
	["Hedgehog_EP1",[4026.81,2897.37,5.91278e-005],264.901],
	["Land_Misc_Cargo2E_EP1",[3939.68,2879.47,0.0654964],359.254],
	["Misc_Cargo1B_military",[3957.73,2867.23,0.0600185],320.733],
	["Land_Fire_barrel",[3933.86,2885.57,0.0245423],358.848],
	["USMC_WarfareBContructionSite",[3985.82,2811.6,0.033985],0],
	["VaultStorageLocked",[4012.21,2902.48,-1.14441e-005],242.38],
	["Hedgehog_EP1",[4016.86,2918.55,-0.00611687],217.993],
	["Land_Fire_barrel",[4025.74,2892.2,0.000627518],238.929],
	["Land_Fire_barrel",[4019.04,2919.27,0.00787354],302.378],
	["Land_Fire_barrel",[4013.67,2901.57,0.00230217],42.8742],
	["FoldChair",[4019.86,2887.53,0.00180817],77.403],
	["FoldChair",[4019.96,2886.18,0.00184441],94.4861],
	["FoldChair",[4019.67,2884.92,0.00185585],114.079],
	["Park_bench1",[4016.24,2883.81,0.00107765],207.954],
	["RoadBarrier_long",[4029.35,2898.02,0.00501823],41.9009],
	["ACamp",[4047.09,2870.75,-0.0225029],124.556],
	["ACamp_EP1",[4054.02,2871.29,0.0221844],45.8311],
	["Land_A_tent",[4047.59,2878.87,0.00279236],31.6833],
	["FoldChair",[4052.26,2874.35,0.0108929],90.8865],
	["Land_CncBlock",[4010.78,2905.32,0.00201797],90.7322],
	["Land_CncBlock",[4010.67,2909.35,0.0038681],91.0382],
	["Land_CncBlock",[4010.73,2913.81,0.00488091],91.5926],
	["Land_CncBlock_D",[4010.54,2900.99,0.00217628],91.1007],
	["Fort_StoneWall_EP1",[4022.83,2882.98,0.0588207],342.867],
	["T72Wreck",[4022.61,2917.04,0.0561008],339.954],
	["Info_Board_EP1",[4012.73,2897.31,0.00329018],262.568]
];