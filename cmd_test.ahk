;#IfWinActive GTA:SA:MP ; Nur wenn das Fenster aktiv ist, werden die Befehle ausgeführt
#SingleInstance force ; Es darf nur eine Instanz von dem Programm vorhanden sein, wird eine neue gestartet, schließt sich die alte. (Reload)
#Include API.ahk

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

F2::
Suspend Permit ; Unterbricht die Subroutine, damit diese nicht unterbrochen wird
EngineState := DllCall("API.dll\API_GetVehicleEngineState")
if (EngineState = 1)
{
	SendChat("/motor")
	SendChat("/licht")
	SendChat("/me schaltet seinen Wagen aus")
	Send n
	AddChatMessage(0xFFFFFF, "Motor ist nun {FFA000}AUS{FFFFFF}.")
}
elseif (EngingeState = 0)
{
	Send n
	SendChat("/licht")
	SendChat("/motor")
	SendChat("/me startet seinen Wagen")
	AddChatMessage(0xFFFFFF, "Motor ist nun {FFA000}AN{FFFFFF}.")		
}
return