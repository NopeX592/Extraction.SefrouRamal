_run = true;
task_1_1_1_skip = false;
task_1_1_1_done = false;
publicVariableServer "task_1_1_1_skip";
publicVariableServer "task_1_1_1_done";

task_1_1_1 = player createSimpleTask ["Kill Arib Said member"];
	task_1_1_1 setSimpleTaskDescription ["Kill Arib Said member.","Kill Arib Said member",""];
	task_1_1_1 setSimpleTaskDestination (getMarkerPos "arib_said");
	task_1_1_1 setSimpleTaskType "kill";
	task_1_1_1 setTaskState "Created";
	["TaskCreated",["","Kill Arib Said member"]] call BIS_fnc_showNotification;

_marker_arib = createMarker ["Kill Arib Said member", getMarkerPos "arib_said"];
	_marker_arib setMarkerShape "ELLIPSE";
	_marker_arib setMarkerSize [75, 75];

while {_run} do {
	if ((!alive arib_said) || (task_1_1_1_skip)) then {
		task_1_1_1 setTaskState "Succeeded";
		["TaskSucceeded",["","Kill Arib Said member"]] call BIS_fnc_showNotification;
		_marker_arib setMarkerSize [0, 0];
		task_1_1_1_done = true;
		_run = false;
	};
};