#SingleInstance, Force ; Es darf nur eine Instanz von dem Programm vorhanden sein, wird eine neue gestartet, schlieà ´ sich die alte. (Reload)
#Persistent
#UseHook
#NoEnv

IfNotExist, %MainDir%
	FileCreateDir, %MainDir%
MainDir := A_MyDocuments "\Tempomat"
SetWorkingDir, %MainDir%
FileCreateDir, %MainDir%
FileInstall, Einzelteile/API.dll, %MainDir%/API.dll, 1

Settimer, Speedo, 150
OnExit, Callback_OnExit

version := 0.1

FileInstall, Einzelteile/API.dll, %MainDir%/API.dll, 1
#Include Einzelteile/API.ahk
#Include Einzelteile/GUI_tacho.ahk

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
GUIclose:
ExitApp
return
#IfWinActive, GTA:SA:MP ; Folgende Hotkeys Funktionieren nur wenn GTA SA:MP geöffnet ist

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
Suspend Permit ; Unterbricht die Subroutine, damit diese nicht unterbrochen wirD
Suspend Off
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


#Include Einzelteile/tacho.ahk

Callback_OnExit:
ExitApp
return