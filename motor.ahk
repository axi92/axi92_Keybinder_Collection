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


F2::
Suspend Permit ; Unterbricht die Subroutine, damit diese nicht unterbrochen wird
EngineState := DllCall("API.dll\API_GetVehicleEngineState")
if (EngineState = 1)
{
	SendChat(/motor)
	SendChat(/licht)
	SendChat(/me schaltet seinen Wagen aus)
	SendInput,{n}
	AddChatMessage(0xFFFFFF, "Motor ist nun {FFA000}AUS{FFFFFF}.")
}
elseif (EngingeState = 0)
{
	SendInput,{n}
	SendChat(/licht)
	SendChat(/motor)
	SendChat(/me startet seinen Wagen)
	AddChatMessage(0xFFFFFF, "Motor ist nun {FFA000}AN{FFFFFF}.")		
}
return