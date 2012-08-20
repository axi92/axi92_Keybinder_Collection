#UseHook
#SingleInstance, Force ; Es darf nur eine Instanz von dem Programm vorhanden sein, wird eine neue gestartet, schlieﬂt sich die alte. (Reload)

;memlib
OpenMemoryfromProcess(process,right=0x1F0FFF)
{
Process,Exist,%process%
PID = %ErrorLevel%
HWND := DllCall("OpenProcess","Uint",right,"int",0,"int",PID)
return HWND
}

OpenMemoryfromTitle(title,right=0x1F0FFF)
{
WinGet,PID,PID,%title%
HWND := DllCall("OpenProcess","Uint",right,"int",0,"int",PID)
return HWND
}

CloseMemory(hwnd)
{
return DllCall("CloseHandle", "int", hwnd)
}

WriteMemory(hwnd,address,writevalue,datatype="int",length=4,offset=0)
{
VarSetCapacity(finalvalue,length, 0)
NumPut(writevalue,finalvalue,0,datatype)
return DllCall("WriteProcessMemory","Uint",hwnd,"Uint",address+offset,"Uint",&finalvalue,"Uint",length,"Uint",0)
}

ReadMemory(hwnd,address,datatype="int",length=4,offset=0)
{
VarSetCapacity(readvalue,length, 0)
DllCall("ReadProcessMemory","Uint",hwnd,"Uint",address+offset,"Str",readvalue,"Uint",length,"Uint *",0)
finalvalue := NumGet(readvalue,0,datatype)
return finalvalue
}

WriteMemoryPointer(hwnd,base,writevalue,datatype="int",length=4,offset1=0,offset2=0,offset3=0,offset4=0,offset5=0,offset6=0,offset7=0,offset8=0)
{
offset9=0
Loop 8
{
next := A_Index + 1
if (offset%A_Index% = 0) && (offset%next% = 0)
{
}
else
{
baseresult := ReadMemory(hwnd,base)
Offset := Offset%A_Index%
SetFormat, integer, h
base := baseresult + Offset
SetFormat, integer, d
}
}
return WriteMemory(hwnd,address,writevalue,datatype,length)
}

ReadMemoryPointer(hwnd,base,datatype="int",length=4,offset1=0,offset2=0,offset3=0,offset4=0,offset5=0,offset6=0,offset7=0,offset8=0)
{
offset9=0
Loop 8
{
next := A_Index + 1
if (offset%A_Index% = 0) && (offset%next% = 0)
{
}
else
{
baseresult := ReadMemory(hwnd,base)
Offset := Offset%A_Index%
SetFormat, integer, h
base := baseresult + Offset
SetFormat, integer, d
}
}
return ReadMemory(hwnd,base,datatyp,length)
}

SetPrivileg(privileg = "SeDebugPrivilege")
{
success := DllCall("advapi32.dll\LookupPrivilegeValueA","uint",0,"str",privileg,"int64*",luid_SeDebugPrivilege)
if (success = 1) && (ErrorLevel = 0)
{
returnval = 0
}
else
{
returnval = %ErrorLevel%
}
return %returnval%
}

Suspendprocess(hwnd)
{
return DllCall("ntdll\NtSuspendProcess","uint",hwnd)
}

Resumeprocess(hwnd)
{
return DllCall("ntdll\NtResumeProcess","uint",hwnd)
}

Settimer, Zollsystem, 1
Freigabe := 1

version := 1.0

UrlDownloadToFile, http://www.axi92.at/download/keybinder/medic/API.dll, API.dll
UrlDownloadToFile, http://www.axi92.at/download/keybinder/medic/version.txt, version.txt
FileRead, newver, version.txt
FileDelete, version.txt
if (version < newver)
{
	neueverf¸gbar = 1
	MsgBox,0,, Es ist eine neue Version verf¸gbar, v%newver%. Es wird geupdated
	UrlDownloadToFile, http://www.axi92.at/download/keybinder/medic/MedicKeybinder.exe, %A_ScriptName%.new
	BatchFile=n
	(
		Ping 127.0.0.1
		Del "%A_ScriptName%"
		Rename "%A_ScriptName%.new" "%A_ScriptName%"
		cd "%A_ScriptFullPath%"
		"%A_ScriptName%"
		Del Update.bat
	)
	FileDelete,update.bat
	FileAppend,%BatchFile%,update.bat
	Run,update.bat,,hide
	ExitApp
}
else
{
	neueverf¸gbar = 0
}

#Include API.ahk
#Include GUI_Medic.ahk
Gui,Add,text,cblack x350 y220  +backgroundtrans
Gui,1: Show,,
return

;Hier der Header wo die Taste T , ENTER und Escape Bestimmt ist einf¸gen ( Siehe Ganz Oben)

!P::
Pause::
suspend
if ( A_IsSuspended )
    {
       AddChatMessage(0xFF3333,"Keybinder deaktiviert")
    }
if ( !A_IsSuspended )
    {
       AddChatMessage(0xFF3333,"Keybinder aktiviert")
	}
return







;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
GUIclose:
ExitApp
#IfWinActive, GTA:SA:MP ; Folgende Hotkeys Funktionieren nur wenn GTA SA:MP geˆffnet ist
;#UseHook
#SingleInstance, Force

Hotkey, Enter, Off
Hotkey, Escape, Off

; Von hier bis....

+T::
~t::
Suspend On
Hotkey, Enter, On
Hotkey, Escape, On
Hotkey, t, Off
return
; Hier wird bestimmt, das wenn ihr im Spiel T dr¸ckt, der Keybinder Suspendet (Ausschaltet/Pausiert) und kein Anderer Hotkey Losgehen kann...


; Bei enterdruck wird das ganze dann wieder Aufgehoben..
~NumpadEnter::
~Enter::
Suspend Permit ; Unterbricht die Subroutine, damit diese nicht unterbrochen wird
Suspend Off
;SendInput {Enter}
Hotkey, t, On
Hotkey, Enter, Off
Hotkey, Escape, Off
return

~Escape::
Suspend Permit ; Unterbricht die Subroutine, damit diese nicht unterbrochen wird
Suspend Off
Hotkey, t, On
Hotkey, Enter, Off
Hotkey, Escape, Off
return

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

F2::
Suspend On
Hotkey, Enter, On
Hotkey, Escape, On
Hotkey, t, Off
Send t/acceptrevival{space}
return

F3::
SendChat("/anrufliste")
return

F4::
SendChat("/mopen")
return

F5::
SendChat("/s 100l Benzin = 500$; Reparieren = 100$")
SendChat("/m F¸r Heilung bitte mit `G einsteigen!")
return

F10::
SendChat("/m Bitte umfahren Sie die Unfallstelle")
return

Numpad1::
if(IsChatOpen() == 1 or IsDialogOpen() == 1)
{
    return
}
SendChat("/zoll")
return

Numpad7::
if(IsChatOpen() == 1 or IsDialogOpen() == 1)
{
    return
}
SendChat("/medicport ls")
return

Numpad8::
if(IsChatOpen() == 1 or IsDialogOpen() == 1)
{
    return
}
SendChat("/medicport sf")
return

Numpad9::
if(IsChatOpen() == 1 or IsDialogOpen() == 1)
{
    return
}
SendChat("/medicport lv")
return

NumpadAdd::
SendChat("/medicport base")
return

.::
if(IsChatOpen() == 1 or IsDialogOpen() == 1)
{
    return
}
SendChat("/me beginnt mit den Wiederbelebungsmaﬂnahmen")
SendChat("/revival")
return

,::
if(IsChatOpen() == 1 or IsDialogOpen() == 1)
{
    return
}
SendChat("/me pr¸ft den Puls des Patienten")
return

End::
Suspend On
Hotkey, Enter, On
Hotkey, Escape, On
Hotkey, t, Off
Send t/heal  500{Left 4}
return

Motor1:
SendChat("/motor a")
return

Motor2:
SendChat("/motor b")
return

Motor3:
SendChat("/motor c")
return





Zollsystem:
#IfWinActive, GTA:SA:MP
SetWorkingDir %A_ScriptDir%
SetPrivileg()
exe := OpenMemoryFromProcess("gta_sa.exe")
carpoint:=ReadMemory(exe, 0x00B6F3B8)
carpopoint:=ReadMemory(exe, carpoint+20)
XPOS:=ReadMemory(exe, carpopoint+48, "float", 4)
YPOS:=ReadMemory(exe, carpopoint+52, "float", 4)
CloseMemory(exe)
If (Freigabe = 1)
{
	If(XPOS>=1008.6192-8&&XPOS<=1000.3409+8) && (YPOS>=-942.3373-4&&YPOS<=-938.2012+4) || IsPlayerInRangeOfPoint(-2407.561, 976.198, 45.424, 5) && IsPlayerDriver() == true
	{
		AddChatMessage(0xFF3333, "Mˆchtest du dein Fahrzeug jetzt betanken?[mit 'X' best‰tigen]")
		Keywait, X, D, T10
		if !errorLevel
		{
			SendChat("/fill")
			;SendChat("/get fuel")
			Freigabe := 0
			SetTimer, Z‰hler, 1000
			Var := 0
		}
		else
		{
			Freigabe := 1
		}
	}
	Else If(XPOS>=70.1259-33&&XPOS<=37.3281+33) && (YPOS>=-1545.1461-26&&YPOS<=-1519.6512+26)
	{
	SendChat("/Zoll")
	Freigabe :=0
	Settimer, Z‰hler, 1000
	Var :=0
	}
	Else If(XPOS>=-94.9821&&XPOS<=-88.0944) && (YPOS>=-1173.7999&&YPOS<=-1165.8394) && IsPlayerDriver() == true
	{
		AddChatMessage(0xFF3333, "Mˆchtest du dein Fahrzeug jetzt betanken?[mit 'X' best‰tigen]")
		Keywait, X, D, T10
		if !errorLevel
		{
			SendChat("/fill")
			;SendChat("/get fuel")
			Freigabe := 0
			SetTimer, Z‰hler, 1000
			Var := 0
		}
		else
		{
			Freigabe := 1
		}
	}
	else If(XPOS>=-83.2967&&XPOS<=-58.1733) && (YPOS>=-898.8355&&YPOS<=-865.1906)
	{
		SendChat("/Zoll")
		Freigabe :=0
		Settimer, Z‰hler, 1000
		Var :=0
	}
	else If(XPOS>=-979.1202&&XPOS<=-956.4673) && (YPOS>=-356.9077&&YPOS<=-325.9717)
	{	
		SendChat("/Zoll")
		Freigabe :=0
		Settimer, Z‰hler, 1000
		Var :=0
	}
	else If(XPOS>=-167.9368-18&&XPOS<=-149.5927+18) && (YPOS>=421.8792-34&&YPOS<=387.0945+34)
	{
		SendChat("/Zoll")
		Freigabe :=0
		Settimer, Z‰hler, 1000
		Var :=0
	}
	else If(XPOS>=534.9904-26&&XPOS<=508.3791+26) && (YPOS>=487.7328-21&&YPOS<=455.0245+21)
	{
		SendChat("/Zoll")
		Freigabe :=0
		Settimer, Z‰hler, 1000
		Var :=0
	}
	else If(XPOS>=658.7794&&XPOS<=653.0157) && (YPOS>=-568.6906&&YPOS<=-560.7563) && IsPlayerDriver() == true
	{
		AddChatMessage(0xFF3333, "Mˆchtest du dein Fahrzeug jetzt betanken?[mit 'X' best‰tigen]")
		Keywait, X, D, T10
		if !errorLevel
		{
			SendChat("/fill")
			;SendChat("/get fuel")
			Freigabe := 0
			SetTimer, Z‰hler, 1000
			Var := 0
		}
		else
		{
			Freigabe := 1
		}
	}
	else If(XPOS>=1736.5436-31&&XPOS<=1694.8757+31) && (YPOS>=476.8202-36&&YPOS<=436.7576+36)
	{
		SendChat("/Zoll")
		Freigabe :=0
		Settimer, Z‰hler, 1000
		Var :=0
	}
	else if(XPOS>=853.3868-8&&XPOS<=845.1692+8) && (YPOS>=-1231.5667-3&&YPOS<=-1227.4775+3) && IsPlayerDriver() == true
	{
		AddChatMessage(0xFF3333, "Mˆchtest du dein Fahrzeug jetzt betanken?[mit 'X' best‰tigen]")
		Keywait, X, D, T10
		if !errorLevel
		{
			SendChat("/fill")
			;SendChat("/get fuel")
			Freigabe := 0
			SetTimer, Z‰hler, 1000
			Var := 0
		}
		else
		{
			Freigabe := 1
		}
	}
	else if(XPOS>=1943.6532-2&&XPOS<=1946.0018+2) && (YPOS>=-1769.7651-5&&YPOS<=-1775.5492+5) && IsPlayerDriver() == true
	{
		AddChatMessage(0xFF3333, "Mˆchtest du dein Fahrzeug jetzt betanken?[mit 'X' best‰tigen]")
		Keywait, X, D, T10
		if !errorLevel
		{
			SendChat("/fill")
			;SendChat("/get fuel")
			Freigabe := 0
			SetTimer, Z‰hler, 1000
			Var := 0
		}
		else
		{
			Freigabe := 1
		}
	}
	else if(XPOS>=1519.1462-2&&XPOS<=1524.9775+2) && (YPOS>=-1765.2529-5&&YPOS<=-1765.2268+5) && IsPlayerDriver() == true
	{
		AddChatMessage(0xFF3333, "Mˆchtest du dein Fahrzeug jetzt betanken?[mit 'X' best‰tigen]")
		Keywait, X, D, T10
		if !errorLevel
		{
			SendChat("/fill")
			;SendChat("/get fuel")
			Freigabe := 0
			SetTimer, Z‰hler, 1000
			Var := 0
		}
		else
		{
			Freigabe := 1
		}
	}
	else if(XPOS>=609.7499&&XPOS<=614.7625) && (YPOS>=1692.1746&&YPOS<=1697.033) && IsPlayerDriver() == true
	{
		AddChatMessage(0xFF3333, "Mˆchtest du dein Fahrzeug jetzt betanken?[mit 'X' best‰tigen]")
		Keywait, X, D, T10
		if !errorLevel
		{
		SendChat("/fill")
		;SendChat("/get fuel")
		Freigabe := 0
		SetTimer, Z‰hler, 1000
		Var := 0
		}
		else
		{
			Freigabe := 1
		}
	}
	else If(XPOS>=-440.0085-34&&XPOS<=-475.7770+34) && (YPOS>=565.1243-29&&YPOS<=595.5687+29)
	{
		SendChat("/Zoll")
		Freigabe :=0
		Settimer, Z‰hler, 1000
		Var :=0
	}
	else If(XPOS>=-462.8708-32&&XPOS<=-496.6786+32) && (YPOS>=1043.2327-24&&YPOS<=1068.5634+24)
	{
		SendChat("/Zoll")
		Freigabe :=0
		Settimer, Z‰hler, 1000
		Var :=0
	}
	else If(XPOS>=-878.0748-34&&XPOS<=-841.5696+34) && (YPOS>=2023.6145-34&&YPOS<=1986.1008+34)
	{
		SendChat("/Zoll")
		Freigabe :=0
		Settimer, Z‰hler, 1000
		Var :=0
	}
	else If(XPOS>=-942.4183-32&&XPOS<=-974.5173+32) && (YPOS>=2709.3718-14&&YPOS<=2726.5793+14)
	{
		SendChat("/Zoll")
		Freigabe :=0
		Settimer, Z‰hler, 1000
		Var :=0
	}
	else If(XPOS>=-2697.3562-31&&XPOS<=-2665.7051+31) && (YPOS>=1291.1976-29&&YPOS<=1260.2534+29)
	{
		SendChat("/Zoll")
		Freigabe :=0
		Settimer, Z‰hler, 1000
		Var :=0
	}
	else If(XPOS>=-1418.1459-40&&XPOS<=-1376.7649+40) && (YPOS>=849.8669-41&&YPOS<=807.6863+41)
	{
		SendChat("/Zoll")
		Freigabe :=0
		Settimer, Z‰hler, 1000
		Var :=0
	}
	else If(IsPlayerInRangeOfPoint(1138.201, -1290.213, 13.6807, 10)) ;KH in SF
	{
		SendChat("/mopen")
		Freigabe :=0
		Settimer, Z‰hler, 1000
		Var :=0
	}
	else If(IsPlayerInRangeOfPoint(2778.198, -1623.240, 10.921, 7)) ;Rgopen in der Base
	{
		SendChat("/rgopen")
		Freigabe :=0
		Settimer, Z‰hler, 1000
		Var :=0
	}
	else If(IsPlayerInRangeOfPoint(61.8802, -251.8676, 1.5781, 3)) ;Truckerdepot
	{
		if(GetVehicleModel() = 515) && IsPlayerDriver() == true
		{
			SendChat("/sellimport 1000")
			Freigabe :=0
			Settimer, Z‰hler, 5000
			Var :=0
		}
	}
	else If(IsPlayerInRangeOfPoint(2827.5278,-1568.4065,10.9219, 5)) ;Mopen in der Medic Base
	{
		SendChat("/mopen")
		Freigabe :=0
		Settimer, Z‰hler, 500
		Var :=0
	}
	else If(IsPlayerInRangeOfPoint(1141.9224,-1342.4720,13.7853, 5)) ;rgopen am KH
	{
		SendChat("/rgopen")
		Freigabe :=0
		Settimer, Z‰hler, 1000
		Var :=0
	}
}
return

Z‰hler:
Var++
If (Var = 7)
{
	Settimer, Z‰hler, Off
	Freigabe := 1
}
return