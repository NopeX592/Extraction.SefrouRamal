_run = true;
task_O_2_skip = false;
task_O_2_done = false;
publicVariableServer "task_O_2_skip";
publicVariableServer "task_O_2_done";

task_O_2 = player createSimpleTask ["Destroy AA"];
	task_O_2 setSimpleTaskDescription ["Destroy the AA trucks positioned in the excavation site.","Destroy AA",""];
	task_O_2 setSimpleTaskDestination (getMarkerPos "aa_pos");
	task_O_2 setSimpleTaskType "destroy";
	task_O_2 setTaskState "Created";
	["TaskCreated",["","Destroy AA"]] call BIS_fnc_showNotification;

_marker_antenna_sml = createMarker ["Destroy AA", getMarkerPos "aa_pos"];
	_marker_antenna_sml setMarkerShape "ELLIPSE";
	_marker_antenna_sml setMarkerSize [250, 250];

while {_run} do {
	if (((!alive aa_truck_1) && (!alive aa_truck_2)) || (task_O_2_skip)) then {
		task_O_2 setTaskState "Succeeded";
		["TaskSucceeded",["","Destroy AA"]] call BIS_fnc_showNotification;
		_marker_antenna_sml setMarkerSize [0, 0];
		task_O_2_done = true;
		_run = false;
	};
};