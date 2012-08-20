;###### Speedo ######

Speedo:
if(IsPlayerInAnyVehicle() == 0 || IsPlayerDriver() == 0 || GetVehicleEngineState() == 0 || Tacho == 0)
return
speed := GetVehicleSpeed()
if(SpeedLimiter == "1")
{
	if( speed != "0" and speed >= 80 ) 
	{
		SendInput {s DOWN}
		sleep 1000
		SendInput {s UP}
	}
}
else
{
	if( speed != "0" and speed >= 80 ) 
	{
		ShowGameText("~n~~n~~n~~n~~w~Sie fahren zu SCHNELL KM/H: ~r~" speed, 1000, 3)
	}
}
return

:?:/tempomat::
Suspend Permit
if (Tacho == "1")
{
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
IniWrite, %SpeedLimiter%, %MainDir%\config.ini, Einstellung, SpeedLimiter
}
Suspend, Off
return

:?:/tacho::
Suspend Permit
if(Tacho == 1) {
AddChatMessage(0xFFFFFF, "Tacho wurde ausgeschaltet")
Tacho := "0"
} else {
AddChatMessage(0xFFFFFF, "Tacho wurde angeschaltet")
Tacho := "1"
}
IniWrite, %Tacho%, %MainDir%\config.ini, Einstellung, Tacho
Suspend, Off
return