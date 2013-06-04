#IfWinActive, GTA:SA:MP ; Folgende Hotkeys Funktionieren nur wenn GTA SA:MP ge�ffnet ist
Zollsystem:
IfWinNotActive, GTA:SA:MP
	return
if(ZFreigabe == 0 && (IsPlayerInRangeOfPoint(54.620407104492, -1524.6511230469, 4.7875785827637, 15) || IsPlayerInRangeOfPoint(52.753017425537, -1539.2989501953, 4.9526853561401, 15) || IsPlayerInRangeOfPoint(106.38954162598, -1279.4173583984, 14.420526504517, 15) || IsPlayerInRangeOfPoint(101.21553039551, -1272.4681396484, 14.323560714722, 15) || IsPlayerInRangeOfPoint(90.422332763672, -1258.2624511719, 14.345849990845, 15) || IsPlayerInRangeOfPoint(84.609237670898, -1251.0769042969, 14.486256599426, 15) || IsPlayerInRangeOfPoint(-66.230659484863, -883.86560058594, 14.920114517212, 15) || IsPlayerInRangeOfPoint(-73.941398620605, -880.07513427734, 14.924503326416, 15) || IsPlayerInRangeOfPoint(-2686.02734375, 1274.5417480469, 155.269908905029, 15) || IsPlayerInRangeOfPoint(-2695.1096191406, 1274.4760742188, 155.269908905029, 15) || IsPlayerInRangeOfPoint(-2677.02734375, 1274.6721191406, 155.269908905029, 15) || IsPlayerInRangeOfPoint(-2667.9445800781, 1274.7958984375, 155.269908905029, 15) || IsPlayerInRangeOfPoint(-1399.9974365234, 831.88073730469, 47.198574066162, 15) || IsPlayerInRangeOfPoint(-1406.0249023438, 837.46130371094, 47.163059234619, 15) || IsPlayerInRangeOfPoint(-1393.9561767578, 826.14605712891, 47.094669342041, 15) || IsPlayerInRangeOfPoint(-1387.6539306641, 819.93487548828, 47.112419128418, 15) || IsPlayerInRangeOfPoint(-971.85833740234, -340.36447143555, 36.171092987061, 15) || IsPlayerInRangeOfPoint(-963.40588378906, -342.15069580078, 36.113338470459, 15) || IsPlayerInRangeOfPoint(-154.75549316406, 403.39642333984, 11.918345451355, 15) || IsPlayerInRangeOfPoint(-163.57772827148, 405.47872924805, 11.918345451355, 15) || IsPlayerInRangeOfPoint(525.41986083984, 473.48544311523, 18.769906997681, 15) || IsPlayerInRangeOfPoint(518.33111572266, 468.71926879883, 18.769906997681, 15) || IsPlayerInRangeOfPoint(1710.9884033203, 459.43090820313, 30.2945728302, 15) || IsPlayerInRangeOfPoint(1703.3975830078, 462.37576293945, 30.422903060913, 15) || IsPlayerInRangeOfPoint(1719.4571533203, 456.39755249023, 30.369619369507, 15) || IsPlayerInRangeOfPoint(1728.1516113281, 452.74713134766, 30.585483551025, 15) || IsPlayerInRangeOfPoint(-459.94760131836, 1571.46649169922, 16.830039978027, 15) || IsPlayerInRangeOfPoint(-455.70336914063, 1589.22930908203, 16.942895889282, 15) || IsPlayerInRangeOfPoint(-481.59454345703, 1550.9921875, 15.871470451355, 15) || IsPlayerInRangeOfPoint(-477.42623901367, 1558.8582763672, 15.871470451355, 15) || IsPlayerInRangeOfPoint(-865.08813476563, 2012.0811767578, 60.027721405029, 15) || IsPlayerInRangeOfPoint(-854.83984375, 1997.3330078125, 60.027721405029, 15) || IsPlayerInRangeOfPoint(-959.23352050781, 2721.97265625, 45.702877044678, 15) || IsPlayerInRangeOfPoint(-957.89782714844, 2713.3156738281, 45.707408905029, 15)))
{
	SendChat("/zoll")
	GetChatLine(0, str)
	;~ AddChatMessage(0xFF3333, "ZFreigabe: " ZFreigabe)
	if InStr(str, "Weiterfahrt")
	{
		;~ AddChatMessage(0xFF3333, "string gefunden")
		ZFreigabe := 1
		;~ AddChatMessage(0xFF3333, "ZFreigabe: " ZFreigabe)
		SetTimer, ZZähler, 10000
	}
	else
	{
		Sleep, 1000
		;~ AddChatMessage(0xFF3333, "FEHLER: " str)
	}
}
;Materialien
if(IsPlayerInRangeOfPoint(2142.3315,2836.1289,10.8203, 2)) 
{
	SendChat("/materials deliver 10")
	Sleep, 250
}
if(IsPlayerInRangeOfPoint(-1113.3816,-1620.8601,76.3739, 2)) ;
{
	SendChat("/materials get 10")
	Sleep, 250
}
;~ ;oel
;~ if(IsPlayerInRangeOfPoint(259.6394,1384.6654,10.5859, 10) and IsPlayerInAnyVehicle()==1 && IsPlayerDriver() == 1 && GetVehicleModel() == 515) 
;~ {
	;~ SendChat("/loadoel 1000")
	;~ Sleep, 150
;~ }
;~ if(IsPlayerInRangeOfPoint(-1043.1525,-677.9094,32.0126, 10) && IsPlayerInAnyVehicle()==1 && IsPlayerDriver() == 1 && GetVehicleModel() == 515) ;
;~ {
	;~ SendChat("/selloel 1000")
	;~ Sleep, 150
	;~ SendChat("/hi")
;~ }
;~ if(IsPlayerInRangeOfPoint(2759.5198,-2452.9226,14.5626, 10) && IsPlayerInAnyVehicle()==1 && IsPlayerDriver() == 1 && GetVehicleModel() == 515) 
;~ {
	;~ SendChat("/loadimport 1000")
;~ }
;~ if(IsPlayerInRangeOfPoint(62,-252,2.6, 10) && IsPlayerInAnyVehicle()==1 && IsPlayerDriver() == 1 && GetVehicleModel() == 515) ;
;~ {
	;~ SendChat("/sellimport 1000")
;~ }

;tanken
if(IsPlayerInRangeOfPoint(1242.8752,-2055.2163,59.8995, 10) || IsPlayerInRangeOfPoint(-91.7419,-1169.8896,2.4295, 10) || IsPlayerInRangeOfPoint(1004.0728,-939.5931,42.1797, 10) || IsPlayerInRangeOfPoint(1944.1292,-1772.9398,13.3906, 10) || IsPlayerInRangeOfPoint(-1675.7802,413.4920,7.1797, 10) || IsPlayerInRangeOfPoint(-2023.7025,156.5608,28.8359, 10)  || IsPlayerInRangeOfPoint(2114.6165,920.3948,10.8203, 10) || IsPlayerInRangeOfPoint(2639.9248,1105.9448,10.8203, 10) || IsPlayerInRangeOfPoint(2202.2808,2475.0046,10.8203, 10) || IsPlayerInRangeOfPoint(2147.4963,2747.4875,10.8203, 10) || IsPlayerInRangeOfPoint(1595.6571,2199.8210,10.8203, 10) || IsPlayerInRangeOfPoint(607.1201,1703.4415,6.9995, 10) || IsPlayerInRangeOfPoint(70.4910,1218.7430,18.8123, 10) || IsPlayerInRangeOfPoint(-1328.4259,2677.5176,50.0625, 10) || IsPlayerInRangeOfPoint(-2407.5227,976.3151,45.2969, 10) || IsPlayerInRangeOfPoint(-2244.1470,-2560.7310,31.9219, 10) || IsPlayerInRangeOfPoint(-1605.4554,-2714.2219,48.5335, 10) || IsPlayerInRangeOfPoint(655.5563,-565.0063,16.3359, 10) || IsPlayerInRangeOfPoint(1522.4402,-1765.0229,13.5469, 10))
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
return 

Zähler:
Var++
If (Var = 7)
{
Settimer, Zähler, Off
Freigabe := 1
}
return

ZZähler:
ZFreigabe := 0
SetTimer,ZZähler, Off
return