Speedo:
if(IsPlayerInAnyVehicle() == 0 || IsPlayerDriver() == 0 || GetVehicleEngineState() == 0)
return
speed := GetVehicleSpeed()
if(SpeedLimiter == "1")
{
	if( speed != "0" and speed >= 80)
	{
		SendInput {s DOWN}
		sleep 300
		SendInput {s UP}
	}
}
return

:?:/tempomat::
Suspend Permit
if (SpeedLimiter == 1) 
{
	AddChatMessage(0xFFFFFF, "Der Tempomat wurde ausgeschaltet")
	SpeedLimiter := "0"
}
else 
{
	AddChatMessage(0xFFFFFF, "Der Tempomat ist eingeschaltet")
	SpeedLimiter := "1"
}
Suspend, Off
return