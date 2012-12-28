Zollsystem:
IfWinNotActive, GTA:SA:MP
return

SpeedCheck := GetVehicleSpeed()
Veh := GetVehicleModel()

;AddChatMessage(0xFF3333, "Zollsystem")
if(IsPlayerInRangeOfPoint(54.2541,-1531.9141,9.8567, 10)) 
{
	SendChat("/zoll")
	Sleep, 5000
} 
else if (IsPlayerInRangeOfPoint(-2685.3379,1269.1921,55.1729, 15)) 
{
	SendChat("/zoll")
	Sleep, 5000
} 
else if (IsPlayerInRangeOfPoint(-1400.1925,820.0132,47.1255, 10)) 
{
	SendChat("/zoll")
	Sleep, 5000
} 
else if (IsPlayerInRangeOfPoint(-965.3771,-349.0418,35.8518, 10)) 
{
	SendChat("/zoll")
	Sleep, 5000
} 
else if (IsPlayerInRangeOfPoint(-70.2457,-888.9332,15.2655, 10)) 
{
	SendChat("/zoll")
	Sleep, 5000
} 
else if (IsPlayerInRangeOfPoint(-153.6138,409.8117,11.7411, 10)) 
{
	SendChat("/zoll")
	Sleep, 5000
} 
else if (IsPlayerInRangeOfPoint(529.0931,468.0032,18.6355, 10)) 
{
	SendChat("/zoll")
	Sleep, 5000
} 
else if (IsPlayerInRangeOfPoint(1718.1021,450.4043,30.4709, 10)) 
{
	SendChat("/zoll")
	Sleep, 5000
} 
else if (IsPlayerInRangeOfPoint(-964.4408,-347.4845,35.7946, 10)) 
{
	SendChat("/zoll")
	Sleep, 5000
} 
else if (IsPlayerInRangeOfPoint(96.0385,-1255.0643,14.2856, 10)) 
{
	SendChat("/zoll")
	Sleep, 5000
} 
else if (IsPlayerInRangeOfPoint(96.2837,-1276.7212,13.8286, 10)) 
{
	SendChat("/zoll")
	Sleep, 5000
} 
else if (IsPlayerInRangeOfPoint(-484.1187,1054.2291,10.9083, 10)) 
{
	SendChat("/zoll")
	Sleep, 5000
} 
else if (IsPlayerInRangeOfPoint(1706.0099,466.7729,30.4966, 10)) 
{
	SendChat("/zoll")
	Sleep, 5000
} 
else if (IsPlayerInRangeOfPoint(-959.3175,2722.3157,47.1700, 10)) 
{
	SendChat("/zoll")
	Sleep, 5000
} 
else if (IsPlayerInRangeOfPoint(-957.8547,2713.4761,47.1746, 10)) 
{
	SendChat("/zoll")
	Sleep, 5000
} 
else if (IsPlayerInRangeOfPoint(-970.5025,-335.1562,36.4611, 10)) 
{
	SendChat("/zoll")
	Sleep, 5000
} 
else if (IsPlayerInRangeOfPoint(158.1780,393.6036,11.7829, 3)) 
{
	SendChat("/zoll")
	Sleep, 5000
} 
else if(IsPlayerInRangeOfPoint(1149.8187,-1216.7172,18.2932, 6) || IsPlayerInRangeOfPoint(1152.8413,-1229.0538,17.0482, 6)) ;nropen
{ 
	SendChat("/nropen")
	AddChatMessage(0xFF3333, "Newstor offen")
	Sleep, 5000
}
else if(IsPlayerInRangeOfPoint(2778.198, -1623.240, 10.921, 5)) ;RG OPEN BASE
{ 
	SendChat("/rgopen")
	Sleep, 5000
}
else if(IsPlayerInRangeOfPoint(1138.201, -1290.213, 13.6807, 10)) ;KH SF MOPEN
{ 
	SendChat("/mopen")
	Sleep, 5000
}  
else if(IsPlayerInRangeOfPoint(2778.198, -1623.240, 10.921, 5)) { ;RG OPEN BASE
	SendChat("/rgopen")
	Sleep, 5000
}
else if(IsPlayerInRangeOfPoint(1524.8226,-1699.1726,15.3828, 6)) ;oparkig am PD
{ 
	SendChat("/oparking")
	Sleep, 5000
}
else if(IsPlayerInRangeOfPoint(2827.5278,-1568.4065,10.9219, 5) || IsPlayerInRangeOfPoint(2842.8477,-1571.4430,10.7038, 5) || IsPlayerInRangeOfPoint(2822.7876,-1588.4723,10.9255, 5) || IsPlayerInRangeOfPoint(2832.2361,-1593.4301,10.9219, 5) || IsPlayerInRangeOfPoint(2834.2930,-1569.9448,10.9219, 5)) ;Mopen Medic BASE
{ 
	SendChat("/mopen")
	Sleep, 7000
}  
else if(IsPlayerInRangeOfPoint(1141.9224,-1342.4720,13.7853, 5)) ;rgopen am KH
{ 
	SendChat("/rgopen")
	Sleep, 6000
} 
	else if(IsPlayerInRangeOfPoint(1214.1261,-904.1393,42.9721, 3) || IsPlayerInRangeOfPoint(1462.7856,-1776.3501,13.5206, 3)) 
	{ 
		if(IsPlayerInAnyVehicle() == 1 && GetPlayerHealth() < 99 && GetVehicleSpeed() == 0) 
		{
			SendChat("/drivein")
			Sleep, 300
			SendInput {DOWN 2}
			Sleep, 300
			SendInput {Enter}
		} 
	} 
else if(Freigabe == 1)
{
	if(IsPlayerInRangeOfPoint(1004.6254,-938.9807,42.1797, 3)) 
	{ 
		if(IsPlayerInAnyVehicle() == 1 and IsPlayerDriver() == 1 GetVehicleModel() != 515) 
		{
			AddChatMessage(0xFF3333, "Möchtest du dein Fahrzeug jetzt betanken?[mit 'X' bestätigen]")
			Keywait, X, D, T10
			if !errorLevel
			{
				SendChat("/fill")
				;SendChat("/get fuel")
				Freigabe := 0
				SetTimer, Zähler, 1000
				Var := 0
			}
			else
			{
				Freigabe := 1
			}
		}
	} 
	else if(IsPlayerInRangeOfPoint(1945.7217,-1774.2180,13.1371, 3)) 
	{
		if(IsPlayerInAnyVehicle() == 1 and IsPlayerDriver() == 1 GetVehicleModel() != 515) 
		{
			AddChatMessage(0xFF3333, "Möchtest du dein Fahrzeug jetzt betanken?[mit 'X' bestätigen]")
			Keywait, X, D, T10
			if !errorLevel
			{
				SendChat("/fill")
				;SendChat("/get fuel")
				Freigabe := 0
				SetTimer, Zähler, 1000
				Var := 0
			}
			else
			{
				Freigabe := 1
			}
		}
	} 
	else if(IsPlayerInRangeOfPoint(-90.6616,-1169.0371,2.0611, 3)) 
	{
		if(IsPlayerInAnyVehicle() == 1 and IsPlayerDriver() == 1 GetVehicleModel() != 515) 
		{
			AddChatMessage(0xFF3333, "Möchtest du dein Fahrzeug jetzt betanken?[mit 'X' bestätigen]")
			Keywait, X, D, T10
			if !errorLevel
			{
				SendChat("/fill")
				;SendChat("/get fuel")
				Freigabe := 0
				SetTimer, Zähler, 1000
				Var := 0
			}
			else
			{
				Freigabe := 1
			}
		}
	} 
	else if(IsPlayerInRangeOfPoint(-2023.2351,157.0318,28.5009, 3)) 
	{
		if(IsPlayerInAnyVehicle() == 1 and IsPlayerDriver() == 1 GetVehicleModel() != 515) 
		{
			AddChatMessage(0xFF3333, "Möchtest du dein Fahrzeug jetzt betanken?[mit 'X' bestätigen]")
			Keywait, X, D, T10
			if !errorLevel
			{
				SendChat("/fill")
				;SendChat("/get fuel")
				Freigabe := 0
				SetTimer, Zähler, 1000
				Var := 0
			}
			else
			{
				Freigabe := 1
			}
		}
	} 
	else if(IsPlayerInRangeOfPoint(1944.5728,-1774.1672,13.0434, 3)) 
	{
		if(IsPlayerInAnyVehicle() == 1 and IsPlayerDriver() == 1 GetVehicleModel() != 515) 
		{
			AddChatMessage(0xFF3333, "Möchtest du dein Fahrzeug jetzt betanken?[mit 'X' bestätigen]")
			Keywait, X, D, T10
			if !errorLevel
			{
				SendChat("/fill")
				;SendChat("/get fuel")
				Freigabe := 0
				SetTimer, Zähler, 1000
				Var := 0
			}
			else
			{
				Freigabe := 1
			}
		}
	} 
	else if(IsPlayerInRangeOfPoint(1522.1304,-1765.2944,13.1989, 3)) 
	{
		if(IsPlayerInAnyVehicle() == 1 and IsPlayerDriver() == 1 GetVehicleModel() != 515) 
		{
			AddChatMessage(0xFF3333, "Möchtest du dein Fahrzeug jetzt betanken?[mit 'X' bestätigen]")
			Keywait, X, D, T10
			if !errorLevel
			{
				SendChat("/fill")
				;SendChat("/get fuel")
				Freigabe := 0
				SetTimer, Zähler, 1000
				Var := 0
			}
			else
			{
				Freigabe := 1
			}
		}
	} 
	else if(IsPlayerInRangeOfPoint(653.5302,-566.3133,15.9926, 3)) 
	{
		if(IsPlayerInAnyVehicle() == 1 and IsPlayerDriver() == 1 GetVehicleModel() != 515) 
		{
			AddChatMessage(0xFF3333, "Möchtest du dein Fahrzeug jetzt betanken?[mit 'X' bestätigen]")
			Keywait, X, D, T10
			if !errorLevel
			{
				SendChat("/fill")
				;SendChat("/get fuel")
				Freigabe := 0
				SetTimer, Zähler, 1000
				Var := 0
			}
			else
			{
				Freigabe := 1
			}
		}
	} 
	else if(IsPlayerInRangeOfPoint(2116.1995,920.4470,10.4730, 3)) 
	{
		if(IsPlayerInAnyVehicle() == 1 and IsPlayerDriver() == 1 GetVehicleModel() != 515) 
		{
			AddChatMessage(0xFF3333, "Möchtest du dein Fahrzeug jetzt betanken?[mit 'X' bestätigen]")
			Keywait, X, D, T10
			if !errorLevel
			{
				SendChat("/fill")
				;SendChat("/get fuel")
				Freigabe := 0
				SetTimer, Zähler, 1000
				Var := 0
			}
			else
			{
				Freigabe := 1
			}
		}
	} 
	else if(IsPlayerInRangeOfPoint(2202.2512,2474.2932,10.4737, 3)) 
	{
		if(IsPlayerInAnyVehicle() == 1 and IsPlayerDriver() == 1 GetVehicleModel() != 515) 
		{
			AddChatMessage(0xFF3333, "Möchtest du dein Fahrzeug jetzt betanken?[mit 'X' bestätigen]")
			Keywait, X, D, T10
			if !errorLevel
			{
				SendChat("/fill")
				;SendChat("/get fuel")
				Freigabe := 0
				SetTimer, Zähler, 1000
				Var := 0
			}
			else
			{
				Freigabe := 1
			}
		}
	} 
	else if(IsPlayerInRangeOfPoint(611.9389,1693.9803,6.6466, 3)) 
	{
		if(IsPlayerInAnyVehicle() == 1 and IsPlayerDriver() == 1 GetVehicleModel() != 515) 
		{
			AddChatMessage(0xFF3333, "Möchtest du dein Fahrzeug jetzt betanken?[mit 'X' bestätigen]")
			Keywait, X, D, T10
			if !errorLevel
			{
				SendChat("/fill")
				;SendChat("/get fuel")
				Freigabe := 0
				SetTimer, Zähler, 1000
				Var := 0
			}
			else
			{
				Freigabe := 1
			}
		}
	} 
	else if(IsPlayerInRangeOfPoint(70.5710,1219.2673,18.4766, 3)) 
	{
		if(IsPlayerInAnyVehicle() == 1 and IsPlayerDriver() == 1 GetVehicleModel() != 515) 
		{
			AddChatMessage(0xFF3333, "Möchtest du dein Fahrzeug jetzt betanken?[mit 'X' bestätigen]")
			Keywait, X, D, T10
			if !errorLevel
			{
				SendChat("/fill")
				;SendChat("/get fuel")
				Freigabe := 0
				SetTimer, Zähler, 1000
				Var := 0
			}
			else
			{
				Freigabe := 1
			}
		}
	} 
	else if(IsPlayerInRangeOfPoint(-2406.2439,975.3732,44.9537, 3)) 
	{
		if(IsPlayerInAnyVehicle() == 1 and IsPlayerDriver() == 1 GetVehicleModel() != 515) 
		{
			AddChatMessage(0xFF3333, "Möchtest du dein Fahrzeug jetzt betanken?[mit 'X' bestätigen]")
			Keywait, X, D, T10
			if !errorLevel
			{
				SendChat("/fill")
				;SendChat("/get fuel")
				Freigabe := 0
				SetTimer, Zähler, 1000
				Var := 0
			}
			else
			{
				Freigabe := 1
			}
		}
	} 
	else if(IsPlayerInRangeOfPoint(-1676.2783,414.4357,6.8339, 3)) 
	{
		if(IsPlayerInAnyVehicle() == 1 and IsPlayerDriver() == 1 GetVehicleModel() != 515) 
		{
			AddChatMessage(0xFF3333, "Möchtest du dein Fahrzeug jetzt betanken?[mit 'X' bestätigen]")
			Keywait, X, D, T10
			if !errorLevel
			{
				SendChat("/fill")
				;SendChat("/get fuel")
				Freigabe := 0
				SetTimer, Zähler, 1000
				Var := 0
			}
			else
			{
				Freigabe := 1
			}
		}
	}  
	else if(IsPlayerInRangeOfPoint(851.4495,-1228.6320,15.3722, 3)) 
	{
		if(IsPlayerInAnyVehicle() == 1 and IsPlayerDriver() == 1 GetVehicleModel() != 515) 
		{
			AddChatMessage(0xFF3333, "Möchtest du dein Fahrzeug jetzt betanken?[mit 'X' bestätigen]")
			Keywait, X, D, T10
			if !errorLevel
			{
				SendChat("/fill")
				;SendChat("/get fuel")
				Freigabe := 0
				SetTimer, Zähler, 1000
				Var := 0
			}
			else
			{
				Freigabe := 1
			}
		}
	}  
	else if(IsPlayerInRangeOfPoint(2640.4282,1105.5919,10.3840, 3)) 
	{
		if(IsPlayerInAnyVehicle() == 1 and IsPlayerDriver() == 1 GetVehicleModel() != 515) 
		{
			AddChatMessage(0xFF3333, "Möchtest du dein Fahrzeug jetzt betanken?[mit 'X' bestätigen]")
			Keywait, X, D, T10
			if !errorLevel
			{
				SendChat("/fill")
				;SendChat("/get fuel")
				Freigabe := 0
				SetTimer, Zähler, 1000
				Var := 0
			}
			else
			{
				Freigabe := 1
			}
		}
	}  
	else if(IsPlayerInRangeOfPoint(1146.9020,-1306.9731,13.8208, 3)) 
	{
		if(IsPlayerInAnyVehicle() == 1 and IsPlayerDriver() == 1 GetVehicleModel() != 515) 
		{
			AddChatMessage(0xFF3333, "Möchtest du dein Fahrzeug jetzt betanken?[mit 'X' bestätigen]")
			Keywait, X, D, T10
			if !errorLevel
			{
				SendChat("/fill")
				;SendChat("/get fuel")
				Freigabe := 0
				SetTimer, Zähler, 1000
				Var := 0
			}
			else
			{
				Freigabe := 1
			}
		}
	} 
	else if(IsPlayerInRangeOfPoint(-2407.4712,976.3237,45.2969, 6)) ;Medic Tanke
	{ 
		if(IsPlayerInAnyVehicle() == 1 and IsPlayerDriver() == 1 GetVehicleModel() != 515) 
		{
			AddChatMessage(0xFF3333, "Möchtest du dein Fahrzeug jetzt betanken?[mit 'X' bestätigen]")
			Keywait, X, D, T10
			if !errorLevel
			{
				SendChat("/fill")
				;SendChat("/get fuel")
				Freigabe := 0
				SetTimer, Zähler, 1000
				Var := 0
			}
			else
			{
				Freigabe := 1
			}
		}
	}
}
return

Zähler:
Var++
If (Var = 7)
{
	Settimer, Zähler, Off
	Freigabe := 1
}
return