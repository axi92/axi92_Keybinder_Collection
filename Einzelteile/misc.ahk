IfWinNotActive, GTA:SA:MP
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

:?:/anwalt::
Suspend Permit
SendChat("/s Benötigt jemand einen Anwalt?")
SendChat("/s Bitte die ID sagen für einen Kostenvoranschlag!")
Suspend Off
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
SetTimer, Callback_Check_Vehicle, 100
Settimer, Logbackup, 1000
Settimer, Zollsystem, 100
If(Sound = 1)
{
	;SoundPlay, %MainDir%\beep.wav
}
return