IfWinNotActive, GTA:SA:MP
return

!E::
^::
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
			;AddChatMessage(0xFF3333, "Handbremse gelöst - Motor AN")
			GoSub, Motor%Zufall%
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