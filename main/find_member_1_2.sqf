_run = true;
task_1_2_skip = false;
publicVariableServer "task_1_2_skip";

task_1_2 = player createSimpleTask ["Rescue the UNA member"];
	task_1_2 setSimpleTaskDescription ["Rescue the UNA member from TURA forces.","Rescue the UNA member",""];
	task_1_2 setSimpleTaskDestination (getMarkerPos "UNA_member_Estimate");
	task_1_2 setSimpleTaskType "kill";
	task_1_2 setTaskState "Created";
	
_marker_UNA_member = createMarker ["Rescue the UNA member", getMarkerPos "UNA_member_Estimate"];
	_marker_UNA_member setMarkerShape "ELLIPSE";
	_marker_UNA_member setMarkerSize [100, 100];

while {_run} do {
	if (!(UNA_member getVariable "ENH_isHostage") || (task_1_2_skip)) then {
		task_1_2 setTaskState "Succeeded";
		["TaskSucceeded",["","Rescue the UNA member"]] call BIS_fnc_showNotification;
		deleteMarker _marker_UNA_member;
		[UNA_member] join (group player);
		[]execVM "main\extract_member_1_3.sqf";
		_run = false;
	};
};