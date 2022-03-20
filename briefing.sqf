_run_1 = true;
_run_2 = true;

private ["_mission", "_diary_text", "_roles"];
_mission = toUpper (format ["%1",getText (missionconfigfile >> "onLoadName")]);

_diary_text = _mission + "<br/>" + 
format [" Date: %3.%2.%1<br/>",date select 0,date select 1,date select 2]+
format [" Location: %1<br/>",worldName]+
format [" Type: %1<br/>",getText (missionconfigfile >> "Header" >> "gameType")]+
format [" Players: %1-%2<br/>",getNumber (missionconfigfile >> "Header" >> "minPlayers"),getNumber (missionconfigfile >> "Header" >> "maxPlayers")]+
format [" Authors: %1<br/><br/>",getText (missionconfigfile >> "author")]+
"<br/>"+
"FEATURES:<br/>"+
"• Virtual Arsenal<br/>"+
"• Supply Drops<br/>"+
"• Toxic Gas<br/>"+
"• Artillery Support<br/>"+
"<br/>"+
"THANKS:<br/>"+
"• Alex for helping me with programming<br/>"+
"";

_roles = "<br/>"+
"Briefing:<br/>
    General:<br/>
        • We're working as an independent Faction<br/>
            • Few NATO and UNA operatives know of our presence<br/>
            • NATO and UNA have been cooperating<br/>
            • Tura/SFIA forces have attacked UNA personnel<br/>
            • Expect attacks by Tura/SFIA<br/>
            • You may RTB anytime to rearm<br/>
        • Enemy types to expect:<br/>
            • Infantry<br/>
            • Technicals<br/>
            • Few APCs<br/>
<br/>
    Extract UNA members:<br/>
        • Gather Intel on location<br/>
            • In Mhamid<br/>
<br/>
    Kill/Destroy:<br/>
        • Designate AA<br/>
            • Ensures survival of UNA member after extraction<br/>
        • Kill high ranking member of Tura/SFIA<br/>
            • Disrupts structure of Tura/SFIA<br/>
            • Civilians in stronghold artillery strike is not possible<br/>
<br/>
    Support:<br/>
        • Supply drop<br/>
            • If called in Tura will most likely respond<br/>
<br/>"+
"";

waitUntil {!isNull player};
player createDiaryRecord ["Diary", ["Briefing",_roles]];
player createDiaryRecord ["Diary", [_mission, _diary_text]];