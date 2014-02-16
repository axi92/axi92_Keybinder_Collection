IfWinNotActive, GTA:SA:MP
return

^::
IfWinNotActive, GTA:SA:MP
{
   SendInput, {%A_ThisHotkey%}
   return
}
if(IsChatOpen() == 1 || IsDialogOpen() == 1 || IsPlayerInAnyVehicle() != 1) {
   SendInput, {%A_ThisHotkey%}
   return
}
if(IsPlayerInAnyVehicle() == 1 || GetVehicleModel() != 510 || GetVehicleModel() != 509 || GetVehicleModel() != 481 || GetVehicleModel() != 509)
{
	handbremse := "[Taste:N]"
	if (GetVehicleEngineState() == 1)
	{
		Random, Zufall, 1, 2, 3
		GoSub, Motor%Zufall%
		if (GetVehicleLightState() == 1)
		SendChat("/licht")
		Send, {n down}
		Sleep 300
		Send, {n up}
		;AddChatMessage(0xFF3333, "Handbremse angezogen - Motor AUS")
	} 
	else if (GetVehicleEngineState() == 0)
	{
		if (GetVehicleLightState() == 0)
		{
			SendChat("/licht")
		}
		Random, Zufall, 1, 2
		GoSub, Motor%Zufall%
		Sleep, 100
		GetChatLine(0, Str)
		;AddChatMessage(0xFF3333, Str)
		;SendChat("vor handbremsefix")
		Sleep, 200
		IfInString, Str, %handbremse%
		{
			Send, {n down}
			Sleep 300
			Send, {n up}
			Sleep, 200
			SendChat("/motor")
			SendChat("/lock")
			;AddChatMessage(0xFF3333, "Handbremse gelöst - Motor AN")
		}
	}
}
return

Callback_Check_Vehicle:
IfWinNotActive, GTA:SA:MP
{
	return
}
if(DoOnce == 0)
{
	OldState := GetPlayerState()
	DoOnce := 1
}
NewState := GetPlayerState()
if(OldState == PLAYER_STATE_DRIVING && NewState != PLAYER_STATE_DRIVING)
{
	OldState := GetPlayerState()
	OnPlayerExitVehicle()
}
else if(OldState != PLAYER_STATE_DRIVING && NewState == PLAYER_STATE_DRIVING)
{
	OldState := GetPlayerState()
}
if(savetime == true)
{
	GetChatLine(0, str0)
	if InStr(str0, "Alle Daten wurden gespeichert")
	{
		savetime := false
		SendChat("/cnnn 3 ~n~~n~~g~SPEICHERUNG ERFOLGREICH")
		ElapsedTime := A_TickCount - StartTime
		AddChatMessage(0xFF3333, "Dauer der Speicherung: " ElapsedTime "ms")
	}
}
GetChatLine(0, str0)
if InStr(str0, "Halte durch! Wir retten dich!")
{
	khtime := true
	kh_StartTime := A_TickCount
	AddChatMessage(0xFF3333, "KH Timer Start at: " kh_StartTime "ms")
}
if(khtime == true)
{
	if InStr(str0, "Du hast soweit alles")
	{
		kh_ElapsedTime := A_TickCount - kh_StartTime
		AddChatMessage(0xFF3333, "Dauer des KH: " ms2his(kh_ElapsedTime) "ms Timer End: " ms2his(A_TickCount))
		khtime := false
		kh_ElapsedTime := 0
	}
}
GetChatLine(2, str0)
if InStr(str0, "raubt die Bank in")
{
	br_time := true
	br_StartTime := A_TickCount
	AddChatMessage(0xFF3333, "BR Timer Start at: " ms2his(br_StartTime) "ms")
}
if(br_time == true)
{
	if InStr(str0, "hat die Bank erfolgreich ausgeraubt")
	{
		br_ElapsedTime := A_TickCount - br_StartTime
		AddChatMessage(0xFF3333, "Dauer des BR: " ms2his(br_ElapsedTime) "ms Timer End: " ms2his(A_TickCount))
		br_time := false
		br_ElapsedTime := 0
	}
}
return
 
OnPlayerExitVehicle()
{
	if (GetVehicleEngineState() == 1)
	{
		Random, Zufall, 1, 2, 3
		GoSub, Motor%Zufall%
		;SendChat("/motor")
		if (GetVehicleLightState() == 1 &&  IsPlayerDriver() == true )
		{
			SendChat("/licht")
			;SendChat("/me schaltet seinen Wagen aus")
			AddChatMessage(0xFF3333, "Motor ist nun {FFA000}AUS{FFFFFF}.")
		}
	}
	;Settimer, Carheal, Off
}
return

;~ OnPlayerEnterVehicle()
;~ {
	;~ ;if (Overlay == 1)
	;~ ;{
		;~ Settimer, Carheal, 500
		;~ ;Settimer, CarHeal, On
	;~ ;}
;~ }
;~ return

:?:/stopbr::
Suspend Permit
br_time := false
br_ElapsedTime := 0
AddChatMessage(0xFF3333, "BR_Timer AUS")
Suspend Off
return

:?:/stopkh::
Suspend Permit
khtime := false
kh_ElapsedTime := 0
AddChatMessage(0xFF3333, "KH_Timer AUS")
Suspend Off
return