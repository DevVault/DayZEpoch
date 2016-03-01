private ["_object","_type"];
{
	_type = _x select 0;
	_object = _type createVehicleLocal (_x select 1);
	_object setDir (_x select 2);
	_object setPos (_x select 1);
	_object allowDamage false;
	if !(_type in ["Land_Campfire","Land_Campfire_burning","Land_Fire","Land_Fire_burning","Land_Fire_barrel","Land_Fire_barrel_burning"]) then {_object enableSimulation false;};
} count [
    ["Land_Panelak",[10814.4,6847.01,7.62939e-006],9.06501],
	["Land_Panelak2",[10773.3,6853.5,0.00943375],9.27016],
	["Land_Panelak",[8601.17,7745.84,-0.00204086],5.46415e-005],
	["Land_Panelak",[8558.97,7745.64,-1.52588e-005],0],
	["Land_Panelak2",[7468.87,10735.3,0.0358038],300.572],
	["Land_Panelak2",[7342.06,10558.4,-0.127026],29.9153],
	["Bunker_PMC",[8148.64,4338.83,-0.0868554],2.18352],
	["C130J_wreck_EP1",[8141.42,4360.04,-0.935054],0.204801],
	["Land_Fire_barrel_burning",[8146.31,4355.24,1.18354],0],
	["Land_CamoNetVar_EAST",[8147.94,4332.73,0.600176],86.5729],
	["Land_Fire_barrel",[8151.24,4326.88,0],84.1766],
	["HeliHEmpty",[8149.71,4292.92,2.28882e-005],0],
	["Land_Ind_IlluminantTower",[8141.19,4340.39,9.53674e-006],272.168],
	["MAP_Ohrada_popelnice",[11367.1,8796.2,0.000488281],180.875],
	["MAP_Ohrada_popelnice",[11341.8,8784,-0.202072],88.5029],
	["Land_HBarrier_large",[8153.81,4329.13,-3.8147e-006],96.5622],
	["Land_HBarrier_large",[8149.7,4324.59,4.76837e-007],1.60705],
	["Land_HBarrier_large",[8143.16,4329.4,2.86102e-006],272.943],
	["Misc_cargo_cont_small",[8146.25,4331.57,-2.86102e-006],31.7129],
	["FoldTable",[8150.48,4331.97,-7.15256e-006],8.77858],
	["FoldChair",[8151.23,4332.98,5.10216e-005],33.4169],
	["USMC_WarfareBUAVterminal",[9752.79,4029.95,6.91414e-005],338.792],
	["Base_WarfareBBarrier10xTall",[9749.2,4027.07,0.000465393],63.1307],
	["Base_WarfareBBarrier10xTall",[9759.99,4023.81,4.95911e-005],330.136],
	["Base_WarfareBBarrier10xTall",[9753.17,4037.65,-7.62939e-006],330.136],
	["Land_HBarrier_large",[9761.8,4034.47,-0.093636],60.1055],
	["Land_Fire_barrel",[9759.36,4035.15,1.81198e-005],95.7072],
	["MAP_Wall_CBrk_5",[9667.41,10907,-3.05176e-005],0],
	["MAP_Wall_CBrk_5",[9662.41,10907,3.24249e-005],0],
	["MAP_Wall_CBrk_5",[9657.47,10907,1.14441e-005],0],
	["MAP_Wall_CBrk_5",[9652.56,10907,3.8147e-006],0],
	["MAP_Wall_CBrk_5",[9647.63,10907,6.10352e-005],0],
	["MAP_Wall_CBrk_5",[9645.15,10904.7,1.52588e-005],269.866],
	["MAP_Wall_CBrk_5",[9645.14,10899.7,0],269.866],
	["MAP_Wall_CBrk_5",[9645.15,10894.8,0],269.866],
	["MAP_Wall_CBrk_5",[9645.17,10878.1,-1.90735e-006],269.866],
	["MAP_Wall_CBrk_5",[9645.17,10883,-3.8147e-006],269.866],
	["MAP_Wall_CBrk_5",[9645.15,10888,0],269.866],
	["MAP_Wall_Gate_Kolchoz",[9645.07,10891.5,0.00560951],90.1292],
	["Land_CncBlock_Stripes",[9643.14,10891.4,1.90735e-005],91.9267],
	["Land_Market_shelter_EP1",[9657.09,10903,-1.90735e-006],179.556],
	["Land_Market_stalls_01_EP1",[9666.02,10889.9,0.000148773],89.1985],
	["Land_Barrel_water",[9663.6,10891.7,-3.43323e-005],0],
	["Land_CamoNet_EAST",[9653.58,10879.8,-0.124817],178.508],
	["AmmoCrate_NoInteractive_",[9654.58,10878.4,3.8147e-006],274.957],
	["AmmoCrates_NoInteractive_Large",[9650.92,10878.3,-3.8147e-006],87.9928],
	["AmmoCrates_NoInteractive_Medium",[9655.74,10877.9,-1.90735e-006],91.301],
	["AmmoCrates_NoInteractive_Small",[9652.71,10878.2,-1.71661e-005],0.916275],
	["FoldTable",[9655.25,10880.5,1.90735e-006],0.214493],
	["FoldChair",[9656.16,10879.3,-1.71661e-005],136.972],
	["FoldTable",[9652.13,10880.5,-8.7738e-005],0.214493],
	["FoldChair",[9651.82,10879,-5.72205e-005],193.959],
	["Misc_cargo_cont_tiny",[9648.26,10879.6,1.90735e-006],328.085],
	["LADAWreck",[9652.98,10903,7.62939e-006],0],
	["HeliHEmpty",[9634.22,10892.6,2.09808e-005],0],
	["Land_Fire_barrel",[9656.02,10900.5,0],311.95],
	["Misc_cargo_cont_small",[9662.3,10877.7,-1.90735e-005],177.16],
	["Misc_cargo_cont_small2",[9665.61,10903.5,-3.8147e-005],263.951],
	["Fence_corrugated_plate",[9655.25,10903.1,1.33514e-005],89.0083],
	["FoldTable",[9648.34,10900.1,3.8147e-006],343.789],
	["Land_Chair_EP1",[9646.95,10901.9,0],50.1143],
	["Fence_corrugated_plate",[9667.32,10900.2,3.8147e-006],356.087],
	["Fence_corrugated_plate",[9663.35,10899.9,2.67029e-005],356.087],
	["VaultStorageLocked",[9667.45,10895.5,7.62939e-006],91.62],
	["Land_CncBlock_D",[9653.52,10885.4,1.90735e-006],0],
	["Land_CncBlock",[9658.56,10884.3,-1.90735e-006],35.3675],
	["Land_CncBlock",[9648.99,10884.3,1.14441e-005],320.562],
	["Land_Fire_barrel",[9658.04,10881.9,3.8147e-005],109.37],
	["MAP_hospital_bench",[9662.27,10900.2,-1.90735e-005],175.107],
	["MAP_kitchen_chair_a",[9661.33,10904,-2.47955e-005],11.8393],
	["MAP_conference_table_a",[9660.96,10902.8,0],0],
	["MAP_F_postel_manz_kov",[9655.81,10903.3,3.8147e-006],1.74127],
	["Body2",[9656.61,10904.1,0.570364],330.222],
	["Land_Water_pipe_EP1",[9658.3,10904.1,9.72748e-005],15.3954],
	["Fence_corrugated_plate",[9657.17,10900.5,5.72205e-006],19.3035],
	["hiluxWreck",[9648.89,10903.9,2.28882e-005],282],
	["MAP_hospital_bench",[9658.33,10900.5,-5.34058e-005],199.332],
	["Land_Nav_Boathouse_Pier",[11914.1,5266.46,0.125308],319.281],
	["Land_Nav_Boathouse",[11913.4,5267.21,0.14513],319.281],
	["HeliHEmpty",[11929.6,5268.32,0.0225306],0.00655582],
	["HeliHEmpty",[9784.03,4045.57,1.62125e-005],0],
	["USMC_WarfareBLightFactory",[7983.88,10610.6,-0.253836],177.112],
	["MAP_plot_vlnplech2",[7983.59,10599,1.81198e-005],357.277],
	["MAP_plot_vlnplech2",[7988.55,10599.3,1.04904e-005],357.277],
	["MAP_plot_vlnplech2",[7994.11,10602.4,8.58307e-006],303.832],
	["MAP_plot_vlnplech2",[7995.23,10609.3,5.72205e-006],263.196],
	["MAP_plot_vlnplech2",[7994.6,10614.2,2.47955e-005],263.196],
	["MAP_plot_vlnplech2",[7981.53,10618.9,4.76837e-006],176.6],
	["Land_HBarrier5",[7988.34,10617.2,-0.000109673],26.2567],
	["Land_CncBlock",[7996.6,10604.9,2.6226e-005],271.527],
	["Land_CncBlock",[7991.84,10598.2,-1.43051e-005],339.895],
	["Land_CncBlock_D",[7984.53,10617.4,1.14441e-005],76.0518],
	["Land_CncBlock_D",[7987.16,10618.6,4.1008e-005],192.931],
	["Land_Market_shelter_EP1",[7971.13,10573.1,-0.800363],359.459],
	["Land_bags_stack_EP1",[7980.91,10573.1,0.101837],84.8711],
	["Land_Barrel_water",[7978.03,10576.3,0.0976086],0],
	["Land_stand_meat_EP1",[7979.39,10571.3,2.38419e-006],84.3862],
	["Misc_Backpackheap",[7980.74,10574.8,-0.114433],0],
	["Land_bags_EP1",[7977.29,10571.8,0.0665188],333.278],
	["MAP_plot_vlnplech2",[7974.54,10573.5,0.11535],267.397],
	["FoldTable",[7976.55,10575.6,0.193552],356.809],
	["Land_Chair_EP1",[7975.6,10572.2,0.0790281],290.608],
	["Land_stand_small_EP1",[7979.07,10575.2,-0.100045],356.664],
	["AmmoCrate_NoInteractive_",[7971.23,10572.6,0.0651112],89.7533],
	["AmmoCrates_NoInteractive_Large",[7971.94,10571.1,0.0504932],0],
	["AmmoCrates_NoInteractive_Medium",[7970.27,10571,0.0702438],0],
	["AmmoCrates_NoInteractive_Small",[7969.15,10571.1,0.0159798],86.2778],
	["FoldTable",[7972.63,10573.7,1.33514e-005],357.673],
	["FoldTable",[7970.16,10573.7,2.86102e-005],359.241],
	["FoldChair",[7973.32,10572,2.38419e-005],143.671],
	["FoldChair",[7969.52,10572.1,8.58307e-006],205.559],
	["Land_CncBlock_Stripes",[7971.24,10575.4,1.85966e-005],359.336],
	["MAP_plot_vlnplech2",[7967.29,10573,6.67572e-006],267.397],
	["MAP_F_Vojenska_palanda",[7961.12,10572.2,-1.71661e-005],358.418],
	["MAP_F_Vojenska_palanda",[7963.7,10570.3,-3.8147e-006],86.7901],
	["MAP_case_wooden_b",[7965.16,10570.8,1.36089],354.068],
	["Land_Shelf_EP1",[7966.6,10573.2,1.90735e-006],0],
	["Land_Water_pipe_EP1",[7962.03,10570.9,0.08846],0],
	["FoldTable",[7963.69,10574.3,-0.100001],357.928],
	["WoodChair",[7964.5,10572.5,0.0789928],127.242],
	["HeliHCivil",[13559.4,7489.98,-0.000217438],0],
	["BTR90_HQ_unfolded",[13580.9,7499.47,-0.296963],274.627],
	["Land_CamoNet_EAST",[14833.5,7661.22,1.52588e-005],0],
	["Land_CncBlock",[14839.8,7662.88,1.14441e-005],235.69],
	["Land_CncBlock_D",[14836.8,7657.01,1.14441e-005],354.79],
	["Land_CncBlock_Stripes",[14833.2,7656.93,-8.39233e-005],1.03031],
	["Misc_concrete_High",[14839.4,7653.26,3.8147e-005],67.1845],
	["Land_CncBlock",[14839.4,7659.22,-1.52588e-005],299.633],
	["Land_CncBlock_D",[14829.4,7657.01,3.05176e-005],5.94992],
	["Land_CncBlock",[14827.2,7659.48,0],255.446],
	["Land_CncBlock",[14827.4,7662.86,-3.8147e-006],299.633],
	["Misc_cargo_cont_net2",[14829,7660.62,7.62939e-006],328.748],
	["FoldTable",[14834.7,7660.1,-1.52588e-005],2.0176],
	["Land_Chair_EP1",[14835.9,7662.02,7.62939e-006],114.139],
	["Land_CamoNet_EAST",[10035.8,5946.34,0.0114136],0],
	["Land_CncBlock",[10042.1,5948.01,-0.1],235.708],
	["Land_CncBlock_D",[10039,5942.13,-0.1],354.779],
	["Land_CncBlock_Stripes",[10035.4,5942.06,-0.1],1.00271],
	["Land_CncBlock",[10041.6,5944.34,-0.1],299.616],
	["Land_CncBlock_D",[10031.6,5942.14,-0.1],5.93708],
	["Land_CncBlock",[10029.4,5944.6,-0.1],255.488],
	["Land_CncBlock",[10029.6,5947.99,-0.1],299.56],
	["FoldTable",[10033.3,5944.77,0.0513635],1.78364],
	["FoldChair",[10032.5,5946.6,0.00156832],313.332],
	["Misc_cargo_cont_small2",[10039,5946.33,0.0019021],96.3355],
	["Misc_cargo_cont_tiny",[10039,5944.18,0.00168657],179.467],
	["Misc_cargo_cont_net2",[7979.43,10580.8,0.0883093],299.988],
	["Misc_cargo_cont_small2",[7978.23,10588.7,0.108556],357.601],
	["FoldTable",[7977.85,10584.8,0.130183],87.3979],
	["FoldChair",[7979.87,10584.5,0.104514],113.078],
	["Land_Crates_EP1",[7980.27,10586.3,0.0914106],356.374],
	["Info_Board_EP1",[7979.44,10591.2,3.38554e-005],85.3913],
	["Info_Board_EP1",[9645.73,10894,-1.90735e-006],269.615],
	["Info_Board_EP1",[8147.55,4326.02,0],179.803],
	["Info_Board_EP1",[9761.01,4032.71,-3.52859e-005],57.3271],
	["Info_Board_EP1",[13575.6,7499.29,0.000282288],90.123],
	["HeliHCivil",[7990.66,10591.1,2.47955e-005],0]
];