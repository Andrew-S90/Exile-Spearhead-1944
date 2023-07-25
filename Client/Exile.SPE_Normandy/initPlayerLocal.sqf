///////////////////////////////////////////////////////////////////////////////
// Static Objects
///////////////////////////////////////////////////////////////////////////////

// Taken away for now
//#include "initServer.sqf"

if (!hasInterface || isServer) exitWith {};

// 9 NPCs
private _npcs = [
	["Exile_Trader_Vehicle", [], "Exile_Trader_Vehicle", "WhiteHead_01", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"H_RacingHelmet_4_F","G_Combat",[],["","","","","",""]], [7547.87, 9375.56, 46.0032], [0.627669, -0.77848, 0], [0, 0, 1]],
	["Exile_Trader_VehicleCustoms", [], "Exile_Trader_VehicleCustoms", "Sturrock", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"","G_Combat",[],["","","","","",""]], [7545.51, 9373.78, 46.3167], [0.627669, -0.77848, 0], [0, 0, 1]],
	["Exile_Trader_Office", [], "Exile_Trader_Office", "Sturrock", [[],[],[],["U_I_G_resistanceLeader_F",[]],["V_Rangemaster_belt",[]],[],"H_Hat_brown","",[],["","","","","",""]], [7546.64, 9411.1, 45.1514], [-0.688883, -0.724873, 0], [0, 0, 1]],
	["Exile_Trader_Armory", [], "Exile_Trader_Armory", "WhiteHead_17", [["srifle_DMR_06_olive_F","","","",[],[],""],[],[],["U_Rangemaster",[]],["V_Rangemaster_belt",[]],[],"H_Cap_headphones","G_Shades_Black",[],["","","","","",""]], [7537.61, 9405.02, 45.2996], [-0.449773, -0.893143, 0], [0, 0, 1]],
	["Exile_Trader_Equipment", [], "Exile_Trader_Equipment", "SPE_Wolf", [["arifle_MX_GL_Black_F","","","",[],[],""],[],[],["U_BG_Guerrilla_6_1",[]],["V_I_G_resistanceLeader_F",[]],[],"H_Watchcap_khk","",[],["","","","","",""]], [7535.62, 9406.76, 45.3459], [-0.667887, -0.744263, 0], [0, 0, 1]],
	["Exile_Trader_Hardware", [], "Exile_Trader_Hardware", "SPE_Connors", [[],[],[],["U_C_WorkerCoveralls",[]],["V_BandollierB_rgr",[]],["B_UAV_01_backpack_F",[]],"H_Booniehat_khk_hs","",[],["","","","","",""]], [7535.13, 9385.09, 46.0582], [0.74473, 0.667366, 0], [0, 0, 1]],
	["Exile_Trader_Food", [], "Exile_Trader_Food", "SPE_Connors", [[],[],[],["U_C_Poloshirt_blue",[]],[],[],"H_Cap_tan","G_Tactical_Clear",[],["","","","","",""]], [7532.2, 9391.06, 45.7798], [0.818056, 0.575139, 0], [0, 0, 1]],
	["Exile_Trader_SpecialOperations", [], "Exile_Trader_SpecialOperations", "SPE_Elliot", [["arifle_MX_Black_F","","","",[],[],""],[],[],["U_B_CTRG_1",[]],["V_PlateCarrierGL_blk",[]],["B_Parachute",[]],"H_HelmetB_light_black","G_Balaclava_lowprofile",[],["","","","","","NVGoggles_OPFOR"]], [7529.11, 9403.88, 45.4953], [0.711241, -0.702948, 0], [0, 0, 1]],
	["Exile_Trader_WasteDump", [], "Exile_Trader_WasteDump", "SPE_Kuzmin", [[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Combat",[],["","","","","",""]], [7543.42, 9371.08, 46.7535], [0.818946, -0.573871, 0], [0, 0, 1]],

	["Exile_Trader_Vehicle", [], "Exile_Trader_Vehicle", "AfricanHead_02", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"H_RacingHelmet_4_F","",[],["","","","","",""]], [1364.92, 8570.64, 72.3965], [-0.460062, -0.887887, 0], [0, 0, 1]],
	["Exile_Trader_VehicleCustoms", [], "Exile_Trader_VehicleCustoms", "SPE_DAgostino", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"","",[],["","","","","",""]], [1360.71, 8572.16, 72.2203], [-0.248352, -0.96867, 0], [0, 0, 1]],
	["Exile_Trader_Office", [], "Exile_Trader_Office", "SPE_Ivanych", [[],[],[],["U_I_G_resistanceLeader_F",[]],["V_Rangemaster_belt",[]],[],"H_Hat_brown","G_Combat",[],["","","","","",""]], [1336.54, 8610.6, 70.6894], [-0.572686, -0.819775, 0], [0, 0, 1]],
	["Exile_Trader_Armory", [], "Exile_Trader_Armory", "SPE_Ivanych", [["srifle_DMR_06_olive_F","","","",[],[],""],[],[],["U_Rangemaster",[]],["V_Rangemaster_belt",[]],[],"H_Cap_headphones","G_Shades_Black",[],["","","","","",""]], [1340.54, 8608.16, 70.6514], [-0.313832, -0.949479, 0], [0, 0, 1]],
	["Exile_Trader_Equipment", [], "Exile_Trader_Equipment", "SPE_Elliot", [["arifle_MX_GL_Black_F","","","",[],[],""],[],[],["U_BG_Guerrilla_6_1",[]],["V_I_G_resistanceLeader_F",[]],[],"H_Watchcap_khk","G_Combat",[],["","","","","",""]], [1323.6, 8587.77, 71.0715], [0.798741, -0.601675, 0], [0, 0, 1]],
	["Exile_Trader_Hardware", [], "Exile_Trader_Hardware", "SPE_Elliot", [[],[],[],["U_C_WorkerCoveralls",[]],["V_BandollierB_rgr",[]],["B_UAV_01_backpack_F",[]],"H_Booniehat_khk_hs","",[],["","","","","",""]], [1331.5, 8582.45, 71.5511], [-0.92821, 0.372056, 0], [0, 0, 1]],
	["Exile_Trader_Food", [], "Exile_Trader_Food", "WhiteHead_03", [[],[],[],["U_C_Poloshirt_blue",[]],[],[],"H_Cap_tan","",[],["","","","","",""]], [1325.61, 8582.6, 71.3686], [0.438668, 0.898649, 0], [0, 0, 1]],
	["Exile_Trader_SpecialOperations", [], "Exile_Trader_SpecialOperations", "GreekHead_A3_06", [["arifle_MX_Black_F","","","",[],[],""],[],[],["U_B_CTRG_1",[]],["V_PlateCarrierGL_blk",[]],["B_Parachute",[]],"H_HelmetB_light_black","G_Balaclava_lowprofile",[],["","","","","","NVGoggles_OPFOR"]], [1343.61, 8608.71, 70.6514], [0.83414, -0.551553, 0], [0, 0, 1]],
	["Exile_Trader_WasteDump", [], "Exile_Trader_WasteDump", "AfricanHead_01", [[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Tactical_Black",[],["","","","","",""]], [1355.92, 8574.06, 72.0699], [-0.207919, -0.978146, 0], [0, 0, 1]],

	["Exile_Trader_Vehicle", [], "Exile_Trader_Vehicle", "AfricanHead_02", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"H_RacingHelmet_4_F","",[],["","","","","",""]], [6132.85, 3739.71, 55.8664], [0.637636, 0.770338, 0], [0, 0, 1]],
	["Exile_Trader_VehicleCustoms", [], "Exile_Trader_VehicleCustoms", "SPE_DAgostino", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"","",[],["","","","","",""]], [6132.76, 3746.94, 55.4461], [0.814179, -0.580613, 0], [0, 0, 1]],
	["Exile_Trader_Office", [], "Exile_Trader_Office", "SPE_Ivanych", [[],[],[],["U_I_G_resistanceLeader_F",[]],["V_Rangemaster_belt",[]],[],"H_Hat_brown","G_Combat",[],["","","","","",""]], [6106.93, 3693.15, 55.8807], [-0.0633062, 0.997994, 0], [0, 0, 1]],
	["Exile_Trader_Armory", [], "Exile_Trader_Armory", "SPE_Ivanych", [["srifle_DMR_06_olive_F","","","",[],[],""],[],[],["U_Rangemaster",[]],["V_Rangemaster_belt",[]],[],"H_Cap_headphones","G_Shades_Black",[],["","","","","",""]], [6098.32, 3710.39, 55.7759], [0.300204, -0.953875, 0], [0, 0, 1]],
	["Exile_Trader_Equipment", [], "Exile_Trader_Equipment", "SPE_Elliot", [["arifle_MX_GL_Black_F","","","",[],[],""],[],[],["U_BG_Guerrilla_6_1",[]],["V_I_G_resistanceLeader_F",[]],[],"H_Watchcap_khk","G_Combat",[],["","","","","",""]], [6093.5, 3710, 55.919], [0.0399442, -0.999202, 0], [0, 0, 1]],
	["Exile_Trader_Hardware", [], "Exile_Trader_Hardware", "SPE_Elliot", [[],[],[],["U_C_WorkerCoveralls",[]],["V_BandollierB_rgr",[]],["B_UAV_01_backpack_F",[]],"H_Booniehat_khk_hs","",[],["","","","","",""]], [6113.04, 3695.75, 55.8475], [-0.273921, 0.961752, 0], [0, 0, 1]],
	["Exile_Trader_Food", [], "Exile_Trader_Food", "WhiteHead_03", [[],[],[],["U_C_Poloshirt_blue",[]],[],[],"H_Cap_tan","",[],["","","","","",""]], [6100.16, 3694.92, 55.9298], [-0.232178, 0.972673, 0], [0, 0, 1]],
	["Exile_Trader_SpecialOperations", [], "Exile_Trader_SpecialOperations", "GreekHead_A3_06", [["arifle_MX_Black_F","","","",[],[],""],[],[],["U_B_CTRG_1",[]],["V_PlateCarrierGL_blk",[]],["B_Parachute",[]],"H_HelmetB_light_black","G_Balaclava_lowprofile",[],["","","","","","NVGoggles_OPFOR"]], [6103.77, 3710.51, 55.6222], [0.141164, -0.989986, 0], [0, 0, 1]],
	["Exile_Trader_WasteDump", [], "Exile_Trader_WasteDump", "AfricanHead_01", [[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Tactical_Black",[],["","","","","",""]], [6130.62, 3744.55, 55.6323], [0.792491, -0.609883, 0], [0, 0, 1]]
];

{
    private _logic = "Logic" createVehicleLocal [0, 0, 0];
    private _trader = (_x select 0) createVehicleLocal [0, 0, 0];
    private _animations = _x select 1;
    
    _logic setPosWorld (_x select 5);
    _logic setVectorDirAndUp [_x select 6, _x select 7];
    
    _trader setVariable ["BIS_enableRandomization", false];
    _trader setVariable ["BIS_fnc_animalBehaviour_disable", true];
    _trader setVariable ["ExileAnimations", _animations];
    _trader setVariable ["ExileTraderType", _x select 2];
    _trader disableAI "ANIM";
    _trader disableAI "MOVE";
    _trader disableAI "FSM";
    _trader disableAI "AUTOTARGET";
    _trader disableAI "TARGET";
    _trader disableAI "CHECKVISIBLE";
    _trader allowDamage false;
    _trader setFace (_x select 3);
    _trader setUnitLoadOut (_x select 4);
    _trader setPosWorld (_x select 5);
    _trader setVectorDirAndUp [_x select 6, _x select 7];
    _trader reveal _logic;
    _trader attachTo [_logic, [0, 0, 0]];
    _trader switchMove (_animations select 0);
    _trader addEventHandler ["AnimDone", {_this call ExileClient_object_trader_event_onAnimationDone}];
}
forEach _npcs;
