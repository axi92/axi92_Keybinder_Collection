IfWinNotActive, GTA:SA:MP
return

LCtrl::
if(IsPlayerInAnyVehicle() == 1 || GetVehicleModel() != 510 || GetVehicleModel() != 509 || GetVehicleModel() != 481 || GetVehicleModel() != 509)
{
	Loop, read, %A_MyDocuments%\GTA San Andreas User Files\SAMP\chatlog.txt
	LastLine := A_LoopReadLine
	handbremsefix := "lösen um den Motor zu starten"
	motor_an := "Du musst den Motor ausschalten um die Handbremse"
	SendChat(LastLine)
	if (GetVehicleEngineState() == 1)
	{
		Random, Zufall, 1, 2, 3
		GoSub, Motor%Zufall%
		;SendChat("/motor")
		if (GetVehicleLightState() == 1)
		{
			SendChat("/licht")
			;SendChat("/me schaltet seinen Wagen aus")
			;AddChatMessage(0xFF3333, "Motor ist nun {FFA000}AUS{FFFFFF}.")
		}
		IfInString, LastLine, %stringhb%
		{
			Send, {n down}
			Sleep 30
			Send, {n up}
			AddChatMessage(0xFF3333, "Handbremse angezogen - Motor AUS")
		}
	} 
	else if (GetVehicleEngineState() == 0)
	{
		if (GetVehicleLightState() == 0)
		{
			SendChat("/licht")
		}
		Random, Zufall, 1, 2
		GoSub, Motor%Zufall%
		Loop, read, %A_MyDocuments%\GTA San Andreas User Files\SAMP\chatlog.txt
		LastLine := A_LoopReadLine
		SendChat("vor handbremsefix")
		IfInString, LastLine, %handbremsefix%
		{
			Send, {n down}
			Sleep 30
			Send, {n up}
			AddChatMessage(0xFF3333, "Handbremse gelöst - Motor AN")
			GoSub, Motor%Zufall%
		}
		;SendChat("/motor")
		;SendChat("/me startet seinen Wagen")
		;AddChatMessage(0xFF3333, "Motor ist nun {FFA000}AN{FFFFFF}.")		
	}
}
return

Callback_Check_Vehicle:

IfWinNotActive, GTA:SA:MP
return

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
			;AddChatMessage(0xFF3333, "Motor ist nun {FFA000}AUS{FFFFFF}.")
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