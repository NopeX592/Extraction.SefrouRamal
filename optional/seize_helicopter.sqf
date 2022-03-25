_run = true;
task_O_4_skip = false;
task_O_4_fail = false;
publicVariableServer "task_O_4_skip";
publicVariableServer "task_O_4_fail";

task_O_4 = player createSimpleTask ["Seize the Helicopter Crash Site"];
	task_O_4 setSimpleTaskDescription ["Seize the Helicopter Crash Site.","Seize the Helicopter Crash Site",""];
	task_O_4 setSimpleTaskDestination (getMarkerPos "crash_marker");
	task_O_4 setSimpleTaskType "heli";
	task_O_4 setTaskState "Created";
_crash_site = createMarker ["Seize the Helicopter Crash Site", getMarkerPos "crash_marker"];
	_crash_site setMarkerShape "ELLIPSE";
	_crash_site setMarkerSize [100, 100];

while {_run} do {
	if (triggerActivated crash_trigger || (task_O_4_skip)) then {
		task_O_4 setTaskState "Succeeded";
		["TaskSucceeded",["","Seize the Helicopter Crash Site"]] call BIS_fnc_showNotification;
		deleteMarker _crash_site;
		_run = false;
	};
};