IfWinNotActive, GTA:SA:MP
return

ä::
IfWinNotActive, GTA:SA:MP
{
   SendInput, {%A_ThisHotkey%}
   return
}
if(IsChatOpen() == 1 || IsDialogOpen() == 1 || IsPlayerInAnyVehicle() == 1) {
   SendInput, {%A_ThisHotkey%}
   return
}
Suspend Permit
SendChat("/addobject fass")
Suspend Off
return

:?:/aa::
Suspend Permit
SendChat("/accept refill")
Sleep, 300
SendChat("/accept repair")
Sleep, 300
SendChat("/accept hotdog")
Sleep, 300
SendChat("/accept sex")
Suspend Off
return

:?:/tunerad::
Suspend Permit
SendChat("/s Benötigt jemand einen Tuner?")
SendChat("/s Ich kann euer Car bis auf 1500DL Pushen und das GRATIS!")
Suspend Off
return

:?:/anwalt::
Suspend Permit
SendChat("/s Benötigt jemand einen Anwalt?")
SendChat("/s Bitte die ID sagen für einen Kostenvoranschlag!")
Suspend Off
return

:?:/tabnummer?::
Suspend Permit
AddChatMessage(0xFFFFFF, "Tabnumber: " Tabnummer)

:?:/aref::
Suspend Permit
SendChat("/accept refill")
Suspend Off
return

:?:/arep::
Suspend Permit
SendChat("/accept repair")
Suspend Off
return

RButton::
IfWinNotActive, GTA:SA:MP
{
	SendInput, {%A_ThisHotkey%}
	return
}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) {
   SendInput, {%A_ThisHotkey%}
   return
}
if (IsPlayerInAnyVehicle() == 1)
{
	SendChat("/zoll")
}
return
	
MButton::
IfWinNotActive, GTA:SA:MP
{
	SendInput, {%A_ThisHotkey%}
	return
}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) {
   SendInput, {%A_ThisHotkey%}
   return
}
if (IsPlayerInAnyVehicle() != 1)
{
	SetPrivileg()
	exe := OpenMemoryFromProcess("gta_sa.exe")
	pointer:=ReadMemory(exe, 0x00B6F5F0) 
	loc := ReadMemory(exe, pointer+47) 
	if(loc > 0)
	{
    	;SendChat("Sie Befinden sich in einem Gebäude. (" loc ")")
    	sleep 250
    	SendChat("/exit")
    	sleep 100
	}
	if(loc = 0)
	{
    	;SendChat("Sie Befinden sich Außerhalb eines Gebäudes. (" loc ")")
    	SendChat("/enter")
    	sleep 100
	}
	CloseMemory(exe)
}
if(IsPlayerInRangeOfPoint(-1113.3613,-1620.7018,76.3739, 2)) 
{
		SendChat("/materials get 10")
}
if(IsPlayerInRangeOfPoint(2142.3821,2836.0293,10.8203, 2)) 
{
		SendChat("/materials deliver 10")
}
SetTimer, Callback_Check_Vehicle, 100
Settimer, Logbackup, 1000
;~ Settimer, Zollsystem, 100
If(Sound = 1)
{
	;SoundPlay, %MainDir%\beep.wav
}
If(IsPlayerInRangeOfPoint(1004.6254,-938.9807,42.1797, 3) || IsPlayerInRangeOfPoint(1544.9626,-1609.9208,13.0905, 3) || IsPlayerInRangeOfPoint(1945.7217,-1774.2180,13.1371, 3) || IsPlayerInRangeOfPoint(-90.6616,-1169.0371,2.0611, 3) || IsPlayerInRangeOfPoint(-2023.2351,157.0318,28.5009, 3) || IsPlayerInRangeOfPoint(1944.5728,-1774.1672,13.0434, 3) || IsPlayerInRangeOfPoint(1522.1304,-1765.2944,13.1989, 3) || IsPlayerInRangeOfPoint(653.5302,-566.3133,15.9926, 3) || IsPlayerInRangeOfPoint(2116.1995,920.4470,10.4730, 3) || IsPlayerInRangeOfPoint(2202.2512,2474.2932,10.4737, 3) || IsPlayerInRangeOfPoint(611.9389,1693.9803,6.6466, 3) || IsPlayerInRangeOfPoint(70.5710,1219.2673,18.4766, 3) || IsPlayerInRangeOfPoint(-2406.2439,975.3732,44.9537, 3) || IsPlayerInRangeOfPoint(-1676.2783,414.4357,6.8339, 3) || IsPlayerInRangeOfPoint(851.4495,-1228.6320,15.3722, 3) || IsPlayerInRangeOfPoint(2640.4282,1105.5919,10.3840, 3) || IsPlayerInRangeOfPoint(1146.9020,-1306.9731,13.8208, 3) || IsPlayerInRangeOfPoint(-2407.4712,976.3237,45.2969, 6))
{
    SendChat("/fill")    
}
if (IsPlayerInAnyVehicle() != 1)
{
	SendChat("/pickupgun")
}
SendChat("/anos")
return

:?:/ab::
Suspend Permit
SendChat("/p")
Sleep, 500
SendChat("Ich bin derzeit schwer beschäftigt und kann desswegen nicht reden,")
Sleep, 500
SendChat("benötigst du Support benutze /sup")
Sleep, 500
SendChat("sonst schreibe eine SMS")
Sleep, 500
SendChat("/h")
Suspend Off
return

:?:/spawnbots::
Suspend Permit
SendChat("/pspawn Carl_Wales")
SendChat("/pspawn Klaus_Wales")
SendChat("/pspawn Georg_Wales")
Suspend Off
return

v::
IfWinNotActive, GTA:SA:MP 
{
   SendInput, {%A_ThisHotkey%}
   return
}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) 
{
   SendInput, {%A_ThisHotkey%}
   return
}
SendInput t{up}{space}{enter}
return