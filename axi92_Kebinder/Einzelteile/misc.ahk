#IfWinActive, GTA:SA:MP ; Folgende Hotkeys Funktionieren nur wenn GTA SA:MP ge�ffnet ist

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
SendChat("/ao fass")
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
	SendChat("/tor")
}
if(IsPlayerInRangeOfPoint(2759.5198,-2452.9226,14.5626, 10) && IsPlayerInAnyVehicle()==1 && IsPlayerDriver() == 1 && GetVehicleModel() == 515) 
{
	SendChat("/loadimport 1000")
	SendChat("/repairtruck")
}
if(IsPlayerInRangeOfPoint(62,-252,2.6, 10) && IsPlayerInAnyVehicle()==1 && IsPlayerDriver() == 1 && GetVehicleModel() == 515)
{
	SendChat("/sellimport 1000")
}
if(IsPlayerInRangeOfPoint(-1042, -676, 33, 10) && IsPlayerDriver() == 1 && GetVehicleModel() == 515)
{
	SendChat("/filltrailer 1000")
}
if(IsPlayerInRangeOfPoint(1242.8752,-2055.2163,59.8995, 10) || IsPlayerInRangeOfPoint(-91.7419,-1169.8896,2.4295, 10) || IsPlayerInRangeOfPoint(1004.0728,-939.5931,42.1797, 10) || IsPlayerInRangeOfPoint(1944.1292,-1772.9398,13.3906, 10) || IsPlayerInRangeOfPoint(-1675.7802,413.4920,7.1797, 10) || IsPlayerInRangeOfPoint(-2023.7025,156.5608,28.8359, 10)  || IsPlayerInRangeOfPoint(2114.6165,920.3948,10.8203, 10) || IsPlayerInRangeOfPoint(2639.9248,1105.9448,10.8203, 10) || IsPlayerInRangeOfPoint(2202.2808,2475.0046,10.8203, 10) || IsPlayerInRangeOfPoint(2147.4963,2747.4875,10.8203, 10) || IsPlayerInRangeOfPoint(1595.6571,2199.8210,10.8203, 10) || IsPlayerInRangeOfPoint(607.1201,1703.4415,6.9995, 10) || IsPlayerInRangeOfPoint(70.4910,1218.7430,18.8123, 10) || IsPlayerInRangeOfPoint(-1328.4259,2677.5176,50.0625, 10) || IsPlayerInRangeOfPoint(-2407.5227,976.3151,45.2969, 10) || IsPlayerInRangeOfPoint(-2244.1470,-2560.7310,31.9219, 10) || IsPlayerInRangeOfPoint(-1605.4554,-2714.2219,48.5335, 10) || IsPlayerInRangeOfPoint(655.5563,-565.0063,16.3359, 10) || IsPlayerInRangeOfPoint(1522.4402,-1765.0229,13.5469, 10))
{
	SendChat("/sellfuel 1000")	
}
if(isPlayerInRangeOfPoint(1526,-1699,13, 10))
{
	SendChat("/oparking")
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
Settimer, Zollsystem, 100
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
waffe := GetCurrentWeaponId()
if(waffe == 9)
{
	SendChat("/pickwood")
}
if(IsPlayerInRangeOfPoint(834, -1855, 8, 3) || IsPlayerInRangeOfPoint(2898.5, 1587.6, 9.8, 3) || IsPlayerInRangeOfPoint(-1479.1, 430.2, 6.1, 3))
{
	SendChat("/ablegen mats 500")
	SendChat("/ablegen drogen 16")
}
if(IsPlayerInRangeOfPoint(-90.7137, -38.4757, 6.4844, 1))
{
	SendChat("/get drugs 1")
	SendChat("/get drugs 1")
	SendChat("/get drugs 1")
	SendChat("/get drugs 1")
	SendChat("/get drugs 1")
	SendChat("/get drugs 1")
	SendChat("/get drugs 1")
	SendChat("/get drugs 1")
	SendChat("/get drugs 1")
	SendChat("/get drugs 1")
	SendChat("/get drugs 1")
	SendChat("/get drugs 1")
	SendChat("/get drugs 1")
	SendChat("/get drugs 1")
	SendChat("/get drugs 1")
	SendChat("/get drugs 1")
	SendChat("/get drugs 1")
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

:?:/time::
Suspend Permit
SendChat("/time")
Sleep, 200
GetChatLine(0, str_aw0)
GetChatLine(1, str_aw1)
GetChatLine(2, str_aw2)
if InStr(str_aw0, "Anwalts Zeit:")
{
	SendChat("/s "str_aw0)
	str_anwalt := str_aw0
}
else if (InStr(str_aw1, "Anwalts Zeit:"))
{
	SendChat("/s "str_aw1)	
	str_anwalt := str_aw1
}
else if (InStr(str_aw2, "Anwalts Zeit:"))
{
	SendChat("/s "str_aw2)	
	str_anwalt := str_aw2
}
else
{
	AddChatMessage(0xFF0000, "Nichts gefunden: ")
	;~ AddChatMessage(0xFF0000, str_anwalt)
	sms := 0
}
if (client_number != "" AND sms != 0) 
{
	SendChat("/sms " client_number " " str_anwalt)
}
Suspend, Off
return

:?:/free::
Suspend Permit
Sleep, 200
AddChatMessage(0xFFFFFF, "Name?")
SendInput t
Input,find_name,V I M T10,{ENTER},*
If(find_name != "" OR find_name != 0)
{
	client_number := GetPlayerNumber(find_name)
	AddChatMessage(0xFF0000, "Variable Anwalt gespeichert: {2C6700}" client_number)
	SendChat("/free " find_name)
}
else
{
  AddChatMessage(0xFFFFFF, "Fehler, du hast zu lange gebraucht.")
}
;~ Sleep, 200
;~ GetChatLine(0, str0)
;~ GetChatLine(1, str1)
;~ GetChatLine(2, str2)
;~ if InStr(str0, "Du hast den Fall von")
;~ {
	;~ RegExMatch(str0, "Du hast den Fall von (\w*) angenommen, du musst nun in das Anwalt Büro." ,var)
	;~ client_number := GetPlayerNumber(var1)
	;~ AddChatMessage(0xFF0000, "Variable Anwalt gespeichert: {2C6700}" client_number)
;~ }
/*
else if (InStr(str1, "Du hast den Fall von"))
{
	RegExMatch(str1, "Du hast den Fall von (.*).*" ,var)
	SendChat("/s "var1)
}
else if (InStr(str2, "Du hast den Fall von"))
{
	RegExMatch(str2, "Du hast den Fall von (.*).*" ,var)
	SendChat("/s "var1)
}
*/
Suspend, Off
return

b::
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

;~ LButton::
;~ IfWinNotActive, GTA:SA:MP 
;~ {
   ;~ SendInput, {%A_ThisHotkey%}
   ;~ return
;~ }
;~ if(IsChatOpen() == 1 || IsDialogOpen() == 1) 
;~ {
   ;~ SendInput, {%A_ThisHotkey%}
   ;~ return
;~ }
;~ Sleep, 75
;~ Send {c down}
;~ Send {c Up}
;~ Send {c down}
;~ Send {c Up}
;~ return

UpdateString:
MouseGetPos, x,y
newpos_x := (800/1920) * x
newpos_y := (600/1080) * y
 
;~ if(textid != -1)
;~ {
	;~ Tick := A_TickCount
	;~ TextSetString(textid,Tick)
	;~ TextSetColor(textid,0xFF000000 | Tick>>4 & 0xFFFF)
 
	;~ TextSetPos(textid,newpos_x,newpos_y)
;~ }
 
;~ if(lineid != -1)
	;~ LineSetPos(lineid,400,300,newpos_x,newpos_y)
;~ return

:?:/ls::
Suspend Permit
if(laufscript == false)
{
   laufscript := true
   AddChatMessage(0xFF0000, "Laufscript: {2C6700}AN")
}
else
{
   laufscript := false
   AddChatMessage(0xFF0000, "Laufscript: {FF0000}OFF")
}
Suspend Off
return

*~$SHIFT::
if(laufscript == true)
{
	Loop
	{
		GetKeyState, SpaceState, SHIFT, P
		If SpaceState = U
		break
		Sleep 1
		Send, {Blind}{SHIFT}
	}
}
Return

:?:/zahlenangriff::
Suspend Permit
SendChat("|-------------------------------------------------------|")
SendChat("|----------------ZAHLENANGRIFF----------------|")
SendChat("|----------------ZAHLENANGRIFF----------------|")
SendChat("|----------------ZAHLENANGRIFF----------------|")
SendChat("|----------------ZAHLENANGRIFF----------------|")
SendChat("|----------------ZAHLENANGRIFF----------------|")
SendChat("|----------------ZAHLENANGRIFF----------------|")
SendChat("|----------------ZAHLENANGRIFF----------------|")
SendChat("|----------------ZAHLENANGRIFF----------------|")
SendChat("|----------------ZAHLENANGRIFF----------------|")
SendChat("|-------------------------------------------------------|")
SendChat("")
Sleep, 3000
ddos_start_time := A_TickCount
Loop, 500
{
	Random, zahl, 1579
	SendChat(zahl)
	;zahl++
}
ddos_end_time := A_TickCount - ddos_start_time
SendChat("Time: " ddos_end_time)
Suspend off
return

OnPlayerTakeDmg:
if(Do_HP_Once == 0)
{
	Old_HP_State := GetPlayerHealth()
	Do_HP_Once := 1
}
New_HP_State := GetPlayerHealth()
if(Old_HP_State-2 > New_HP_State AND New_HP_State != 0 AND GetClipForCurrentWeapon() > 0)
{
	AddChatMessage(0xFF3333, "Old: " Old_HP_State " neu: " New_HP_State " Waffe: " GetClipForCurrentWeapon())
	SoundPlay, %MainDir%\punch.mp3
	Old_HP_State := GetPlayerHealth()
}
else
{
	Old_HP_State := GetPlayerHealth()
}
return

ms2his(milli, ByRef hours=0, ByRef mins=0, ByRef secs=0, secPercision=0)
{
  SetFormat, FLOAT, 0.%secPercision%
  milli /= 1000.0
  secs := mod(milli, 60)
  SetFormat, FLOAT, 0.0
  milli //= 60
  mins := mod(milli, 60)
  hours := milli //60
  return hours . ":" . mins . ":" . secs
}

:?:/tick::
Suspend Permit
AddChatMessage(0xFF3333, ms2his(A_TickCount))
Suspend off
return