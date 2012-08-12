F2::
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
					SendChat("/motor")
					if (GetVehicleLightState() == 1)
					{
						SendChat("/licht")
					}
					SendChat("/me schaltet seinen Wagen aus")
					AddChatMessage(0xFFFFFF, "Motor ist nun {FFA000}AUS{FFFFFF}.")
				}
				else if (GetVehicleEngineState() == 0)
				{
					if (GetVehicleLightState() == 0)
					{
						SendChat("/licht")
					}
					SendChat("/motor")
					SendChat("/me startet seinen Wagen")
					AddChatMessage(0xFFFFFF, "Motor ist nun {FFA000}AN{FFFFFF}.")		
				}
			}
		}
	}
}
return