_run = true;
task_O_3_skip = false;
task_O_3_done = false;
publicVariableServer "task_O_3_skip";
publicVariableServer "task_O_3_done";

task_O_3 = player createSimpleTask ["Destroy Convoy Transport Truck (Optional)"];
	task_O_3 setSimpleTaskDescription ["Destroy the transport trucks moving down the main road from north to south.","Destroy Convoy Transport Truck (Optional)",""];
	task_O_3 setSimpleTaskDestination (getMarkerPos "aa_pos");
	task_O_3 setSimpleTaskType "destroy";
	task_O_3 setTaskState "Created";
	["TaskCreated",["","Destroy Convoy Transport Truck (Optional)"]] call BIS_fnc_showNotification;

while {_run} do {
	if (!(alive convoy_truck) || (task_O_3_skip)) then {
		task_O_3 setTaskState "Succeeded";
		["TaskSucceeded",["","Destroy Convoy Transport Truck (Optional)"]] call BIS_fnc_showNotification;
		task_O_3_done = true;
		_run = false;
	};
};