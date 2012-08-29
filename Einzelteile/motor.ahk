LCtrl::
if(IsPlayerInAnyVehicle() == 1)
{
	if(GetVehicleModel() != 510)
	{
		if(GetVehicleModel() != 509)
		{
			if(GetVehicleModel() != 481)
			{
				if (GetVehicleEngineState() == 1)
				{
					Random, Zufall, 1, 2, 3
					GoSub, Motor%Zufall%
					;SendChat("/motor")
					if (GetVehicleLightState() == 1)
					{
						SendChat("/licht")
					}
					;SendChat("/me schaltet seinen Wagen aus")
					AddChatMessage(0xFF3333, "Motor ist nun {FFA000}AUS{FFFFFF}.")
				}
				else if (GetVehicleEngineState() == 0)
				{
					if (GetVehicleLightState() == 0)
					{
						SendChat("/licht")
					}
					Random, Zufall, 1, 2
					GoSub, Motor%Zufall%
					;SendChat("/motor")
					;SendChat("/me startet seinen Wagen")
					AddChatMessage(0xFF3333, "Motor ist nun {FFA000}AN{FFFFFF}.")		
				}
			}
		}
	}
}
return