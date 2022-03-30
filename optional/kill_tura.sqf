_run = true;
task_O_1_skip = false;
task_O_1_done = false;
publicVariableServer "task_O_1_skip";
publicVariableServer "task_O_1_done";

task_O_1 = player createSimpleTask ["Kill TURA/SFIA member"];
	task_O_1 setSimpleTaskDescription ["Kill the high ranking TURA member.","Kill TURA/SFIA member",""];
	task_O_1 setSimpleTaskDestination (getMarkerPos "tura_pos");
	task_O_1 setSimpleTaskType "kill";
	task_O_1 setTaskState "Created";
	["TaskCreated",["","Kill TURA/SFIA member"]] call BIS_fnc_showNotification;

_marker_tura = createMarker ["Kill TURA/SFIA member", getMarkerPos "tura_pos"];
	_marker_tura setMarkerShape "ELLIPSE";
	_marker_tura setMarkerSize [250, 250];

while {_run} do {
	if ((!alive tura_member) || (task_O_1_skip)) then {
		task_O_1 setTaskState "Succeeded";
		["TaskSucceeded",["","Kill TURA/SFIA member"]] call BIS_fnc_showNotification;
		_marker_tura setMarkerSize [0, 0];
		task_O_1_done = true;
		_run = false;
	};
};