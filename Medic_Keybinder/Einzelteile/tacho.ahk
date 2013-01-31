IfWinNotActive, GTA:SA:MP
return

Speedo:
if(IsPlayerInAnyVehicle() == 0 || IsPlayerDriver() == 0 || GetVehicleEngineState() == 0)
return
speed := GetVehicleSpeed()
if(SpeedLimiter == "1")
{
	if( speed != "0" and speed >= 80)
	{
		SendInput {s DOWN}
		sleep 200
		SendInput {s UP}
	}
}
return

^G::
!G::
:?:/tempomat::
Suspend Permit
if (SpeedLimiter == 1) 
{
	AddChatMessage(0xFFFFFF, "Der Tempomat wurde ausgeschaltet")
	SpeedLimiter := "0"
	Settimer, Speedo, Off
}
else 
{
	AddChatMessage(0xFFFFFF, "Der Tempomat ist eingeschaltet")
	SpeedLimiter := "1"
	Settimer, Speedo, 100
}
Suspend, Off
return