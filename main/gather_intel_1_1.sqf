_run = true;
task_1_1_skip = false;
task_1_1_fail = false;
publicVariableServer "task_3_4_skip";
publicVariableServer "task_3_4_fail";

task_1_1 = player createSimpleTask ["Gather Intel"];
	task_1_1 setSimpleTaskDescription ["Gather Intel you may find it in the estimated area.","Gather Intel",""];
	task_1_1 setSimpleTaskDestination (getMarkerPos "gather_intel");
	task_1_1 setSimpleTaskType "documents";
	task_1_1 setTaskState "Assigned";
	["TaskAssigned",["","Gather Intel"]] call BIS_fnc_showNotification;

_marker_intel = createMarker ["Gather Intel", getMarkerPos "gather_intel"];
	_marker_intel setMarkerShape "ELLIPSE";
	_marker_intel setMarkerSize [25, 25];

while {_run} do {
	if (((isNull intel_1) && (isNull intel_2)) || (task_1_1_skip)) then {
		task_1_1 setTaskState "Succeeded";
		["TaskSucceeded",["","Gather Intel"]] call BIS_fnc_showNotification;
		_marker_intel setMarkerSize [0, 0];
		[]execVM "main\find_member_1_2_1.sqf";
		[]execVM "main\find_member_1_2_2.sqf";
		_run = false;
	};
};





