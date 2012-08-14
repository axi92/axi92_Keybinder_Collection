#IfWinActive GTA:SA:MP
#SingleInstance force
;=================== Include ==================================
#Include API.ahk
;=================== Include Ende =============================

SetTimer, Speedo, 100
Speedo:
if(IsPlayerInAnyVehicle() == 0 || IsPlayerDriver() == 0 || GetVehicleEngineState() == 0)
	return
speed := GetVehicleSpeed()
;health := GetVehicleHealth()
ShowGameText("~n~~n~~n~~n~~w~Veh- Life: ~g~" speed, 1000, 3)
return
return
