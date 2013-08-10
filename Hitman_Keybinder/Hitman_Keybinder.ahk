#SingleInstance Force ; Es darf nur eine Instanz von dem Programm vorhanden sein, wird eine neue gestartet, schlie࠴ sich die alte. (Reload)
#Persistent
#UseHook
#NoEnv
#Hotstring EndChars `n ` 
MainDir := A_MyDocuments "\Hitman_Keybinder"
IfNotExist, %MainDir%
	FileCreateDir, %MainDir%
SetWorkingDir, %MainDir%
FileCreateDir, %MainDir%

;VAR - VAR - VAR - VAR - VAR - VAR - VAR - VAR
Toggle_OnPlayerTakeDmg := false

;TIMER - TIMER - TIMER - TIMER - TIMER - TIMER
Settimer, toggle_loginlogout, 500
SetTimer, Callback_Check_Vehicle, 30
SetTimer, Logbackup, 500


FileInstall, Einzelteile/API.dll, %MainDir%/API.dll, 1
FileInstall, Einzelteile/sounds/punch.mp3, %MainDir%/punch.mp3
FileInstall, Einzelteile/Hintergrund.jpg, %MainDir%/Hintergrund.jpg
#Include Einzelteile/memlib.ahk
#Include Einzelteile/API.ahk
#Include Einzelteile/hitman_gui.ahk
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#IfWinActive, GTA:SA:MP ; Folgende Hotkeys Funktionieren nur wenn GTA SA:MP ge�ffnet ist
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

:?:/q::
DestroyAllVisual()
;////////////////////////
Logbackup:
WinWait, GTA:SA:MP
WinWaitClose, GTA:SA:MP
{
FileCreateDir, %A_MyDocuments%\GTA San Andreas User Files\SAMP\Chatlogs
FormatTime, datum, %A_Now%, dd.MM.yyyy
FormatTime, zeit, %A_Now%, HH-mm-ss
FileCopy, %A_MyDocuments%\GTA San Andreas User Files\SAMP\chatlog.txt, %A_MyDocuments%\GTA San Andreas User Files\SAMP\Chatlogs\Chatlog vom %datum% um %zeit% Uhr.txt, 0
}
return

toggle_loginlogout:
IfWinNotActive, GTA:SA:MP
{
   return
}
if(togloginlogout == false)
{	
	GetChatLine(0, str)
	if InStr(str, "Bitte warten...")
	{
		SendChat("/togloginlogout")
		togloginlogout := true
		Settimer, toggle_loginlogout, off
	}
}
return

#Include Einzelteile/pause.ahk ;Pause Funktion
#Include Einzelteile/sound_system.ahk
#Include Einzelteile/motor.ahk
#Include Einzelteile/misc.ahk
#Include Einzelteile/hitman_binds.ahk