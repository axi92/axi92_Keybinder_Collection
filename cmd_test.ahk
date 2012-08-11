;#IfWinActive GTA:SA:MP ; Nur wenn das Fenster aktiv ist, werden die Befehle ausgeführt
#SingleInstance force ; Es darf nur eine Instanz von dem Programm vorhanden sein, wird eine neue gestartet, schließt sich die alte. (Reload)
#Include API.ahk
#Include memlib.ahk

Gui,Add,text,cblack x350 y220  +backgroundtrans
Gui,1: Show,,
return


;Hier der Header wo die Taste T , ENTER und Escape Bestimmt ist einfügen ( Siehe Ganz Oben)

Pause::Suspend ;Pausiert den Keybinder
if (pause = 0)
{
	Suspend On
	pause = 1
	AddChatMessage(0xFFFFFF, "Keybinder ist nun {FFA000}pausiert{FFFFFF}.")
	Hotkey, Break, Toggle
}
else ;if (pause = 1)
{
	Suspend Off
	pause = 0
	AddChatMessage(0xFFFFFF, "Keybinder ist nun {FFA000}aktiv{FFFFFF}.")
}
return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;GUIclose:
;ExitApp
;#IfWinActive, GTA:SA:MP ; Folgende Hotkeys Funktionieren nur wenn GTA SA:MP geöffnet ist
;#UseHook
;#SingleInstance, Force

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
; Hier wird bestimmt, das wenn ihr im Spiel T drückt, der Keybinder Suspendet (Ausschaltet/Pausiert) und kein Anderer Hotkey Losgehen kann...


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

F3::
Suspend Permit ; Unterbricht die Subroutine, damit diese nicht unterbrochen wird
SendChat("/motor")
SendChat("/licht")
return


F2::
Suspend Permit ; Unterbricht die Subroutine, damit diese nicht unterbrochen wird
EngineState := DllCall("API.dll\API_GetVehicleEngineState")
if (EngineState = 1)
{
	SendChat("/motor")
	SendChat("/licht")
	SendChat("/me schaltet seinen Wagen aus")
	AddChatMessage(0xFFFFFF, "Motor ist nun {FFA000}AUS{FFFFFF}.")
}
else if (EngingeState = 0)
{
	SendChat("/licht")
	SendChat("/motor")
	SendChat("/me startet seinen Wagen")
	AddChatMessage(0xFFFFFF, "Motor ist nun {FFA000}AN{FFFFFF}.")		
}
return

Zähler:
Freigabe :=1
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
	 If(XPOS>=70.1259-33&&XPOS<=37.3281+33) && (YPOS>=-1545.1461-26&&YPOS<=-1519.6512+26)
		{
		SendChat("/Zoll")
		Freigabe :=0
		Settimer, Zähler, 1000
		Var :=0
		}
	else If(XPOS>=-83.2967&&XPOS<=-58.1733) && (YPOS>=-898.8355&&YPOS<=-865.1906)
		{
		SendChat("/Zoll")
		Freigabe :=0
		Settimer, Zähler, 1000
		Var :=0
		}
	else If(XPOS>=-979.1202&&XPOS<=-956.4673) && (YPOS>=-356.9077&&YPOS<=-325.9717)
		{
		SendChat("/Zoll")
		Freigabe :=0
		Settimer, Zähler, 1000
		Var :=0
		}
	else If(XPOS>=-167.9368-18&&XPOS<=-149.5927+18) && (YPOS>=421.8792-34&&YPOS<=387.0945+34)
		{
		SendChat("/Zoll")
		Freigabe :=0
		Settimer, Zähler, 1000
		Var :=0
		}
	else If(XPOS>=534.9904-26&&XPOS<=508.3791+26) && (YPOS>=487.7328-21&&YPOS<=455.0245+21)
		{
		SendChat("/Zoll")
		Freigabe :=0
		Settimer, Zähler, 1000
		Var :=0
		}
	else If(XPOS>=1736.5436-31&&XPOS<=1694.8757+31) && (YPOS>=476.8202-36&&YPOS<=436.7576+36)
		{
		SendChat("/Zoll")
		Freigabe :=0
		Settimer, Zähler, 1000
		Var :=0
		}
	else If(XPOS>=-440.0085-34&&XPOS<=-475.7770+34) && (YPOS>=565.1243-29&&YPOS<=595.5687+29)
		{
		SendChat("/Zoll")
		Freigabe :=0
		Settimer, Zähler, 1000
		Var :=0
		}
	else If(XPOS>=-462.8708-32&&XPOS<=-496.6786+32) && (YPOS>=1043.2327-24&&YPOS<=1068.5634+24)
		{
		SendChat("/Zoll")
		Freigabe :=0
		Settimer, Zähler, 1000
		Var :=0
		}
	else If(XPOS>=-878.0748-34&&XPOS<=-841.5696+34) && (YPOS>=2023.6145-34&&YPOS<=1986.1008+34)
		{
		SendChat("/Zoll")
		Freigabe :=0
		Settimer, Zähler, 1000
		Var :=0
		}
	else If(XPOS>=-942.4183-32&&XPOS<=-974.5173+32) && (YPOS>=2709.3718-14&&YPOS<=2726.5793+14)
		{
		SendChat("/Zoll")
		Freigabe :=0
		Settimer, Zähler, 1000
		Var :=0
		}
	else If(XPOS>=-2697.3562-31&&XPOS<=-2665.7051+31) && (YPOS>=1291.1976-29&&YPOS<=1260.2534+29)
		{
		SendChat("/Zoll")
		Freigabe :=0
		Settimer, Zähler, 1000
		Var :=0
		}
	else If(XPOS>=-1418.1459-40&&XPOS<=-1376.7649+40) && (YPOS>=849.8669-41&&YPOS<=807.6863+41)
		{
		SendChat("/Zoll")
		Freigabe :=0
		Settimer, Zähler, 1000
		Var :=0
		}
	else If(XPOS>=1178.0592&&XPOS<=1185.2407) && (YPOS>=-904.3877&&YPOS<=-897.4053)
	{
		SendChat("/drivein")
		sleep 200
		Send,{down}
		sleep 100
		Send,{down}
		sleep 100
		Send,{enter}
		Freigabe :=0
		Settimer, Zähler, 1000
		Var :=0
	}
	else If(XPOS>=49.7954&&XPOS<=80.0695) && (YPOS>=-265.5021&&YPOS<=-237.5166) && GetVehicleModel()==515
	{
		SendChat("/sellimport 1000")
		Freigabe :=0
		Settimer, Zähler, 1000
		Var :=0
	}
	else If(XPOS>=2757.0776&&XPOS<=2765.5012) && (YPOS>=-2465.9219&&YPOS<=-2440.4753) && GetVehicleModel()==515
	{
		SendChat("/loadimport 1000")
		SendChat("/repairtruck")
		Freigabe :=0
		Settimer, Zähler, 1000
		Var :=0
	}
	else If(XPOS>=-1115.9429&&XPOS<=-1111.7511) && (YPOS>=-1623.3147&&YPOS<=-1618.7842)
	{
		SendChat("/materials get 10")
		SendChat("/me hat Mats gekauft")
		Freigabe :=0
		Settimer, Zähler, 1000
		Var :=0
	}
	else If(XPOS>=2140.9121&&XPOS<=2143.9097) && (YPOS>=2834.2202&&YPOS<=2838.4529)
	{
		SendChat("/materials deliver 10")
		SendChat("/me hat Mats verarbeitet")
		Freigabe :=0
		Settimer, Zähler, 1000
		Var :=0
	}
}
return