#SingleInstance, Force ; Es darf nur eine Instanz von dem Programm vorhanden sein, wird eine neue gestartet, schlie࠴ sich die alte. (Reload)
#Persistent
#UseHook
#NoEnv
#Hotstring EndChars `n ` 
MainDir := A_MyDocuments "\MedicKeybinder"
IfNotExist, %MainDir%
	FileCreateDir, %MainDir%
IfNotExist, %MainDir%\heal.wav
{
	UrlDownloadToFile, http://www.axi92.at/download/keybinder/medic/sound/heal.wav, %MainDir%\heal.wav
}
IfNotExist, %MainDir%\tot.wav
{
	UrlDownloadToFile, http://www.axi92.at/download/keybinder/medic/sound/tot.wav, %MainDir%\tot.wav
}
IfNotExist, %MainDir%\beep.wav
{
	UrlDownloadToFile, http://www.axi92.at/download/keybinder/medic/sound/beep.wav, %MainDir%\beep.wav
}
SetWorkingDir, %MainDir%
FileCreateDir, %MainDir%
SoundSetWaveVolume, 10 

version := 3.5

Settimer, Logbackup, 1000
Settimer, Zollsystem, 100
;SetTimer, Sound, 200
;Settimer, Playerheal, 1000
SetTimer, Callback_Check_Vehicle, 100
Settimer, Speedo, 100
Freigabe := 1
heal := -1
OnExit, Callback_OnExit

#Include Einzelteile/ping.ahk
OnlineCheck := Ping("axi92.at")
if(OnlineCheck == 1)
{
    UrlDownloadToFile, http://www.axi92.at/download/keybinder/medic/version.txt, %MainDir%\version.txt
	UrlDownloadToFile, http://ucp.black-evolution.org/api.php?player_frak=axi92, %MainDir%\frak.txt
}
FileRead, newver, %MainDir%\version.txt
FileRead, frakid, %MainDir%\frak.txt
FileDelete, %MainDir%\version.txt
FileDelete, %MainDir%\frak.txt
if (version < newver)
{
	MsgBox,0,, Es ist eine neue Version verf�gbar, v%newver% es wird geupdated
	UrlDownloadToFile, http://www.axi92.at/download/keybinder/medic/MedicKeybinder.exe, %MainDir%\%A_ScriptName%.new
	BatchFile=n
	(
		Ping 127.0.0.1
		Del "%A_ScriptName%"
		Rename "%A_ScriptName%.new" "%A_ScriptName%"
		cd "%A_ScriptFullPath%"
		%A_ScriptName%"
		Del Update.bat
	)
	FileDelete,update.bat
	FileAppend,%BatchFile%,update.bat
	Run,update.bat,,hide
	ExitApp
}
FileInstall, Einzelteile/API.dll, %MainDir%\API.dll, 1
#Include Einzelteile/memlib.ahk
#Include Einzelteile/API.ahk
#Include Einzelteile/GUI_Medic.ahk
#Include Einzelteile/pause.ahk ;Pause Funktion
#Include Einzelteile/misc.ahk
#Include Einzelteile/medic_binds.ahk
#Include Einzelteile/sound_system.ahk
#Include Einzelteile/motor.ahk
#Include Einzelteile/tacho.ahk
#Include Einzelteile/heal_hud.ahk
#Include Einzelteile/zoll_ghost.ahk
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
GUIclose:
Gui, Submit ; speichert die Benutzerdaten des Fensters und versteckt es
IniWrite, %Overlay%, %SpeicherDatei%, Einstellung, Overlay
ExitApp
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

Motor1:
SendChat("/motor 1")
;AddChatMessage(0xFF3333, "1")
return

Motor2:
SendChat("/motor   2")
;AddChatMessage(0xFF3333, "2")
return

Motor3:
SendChat("/motor       3")
;AddChatMessage(0xFF3333, "3")
return

Callback_OnExit:
DestroyAllVisual()
ExitApp
return

:?:/q::
Logbackup:
;WinWait, GTA:SA:MP
;////////////////////////
Settimer, Logbackup, Off
Settimer, Zollsystem, Off
SetTimer, Sound, Off
SetTimer, Callback_Check_Vehicle, Off
Settimer, Speedo, Off
DestroyAllVisual()
;////////////////////////
WinWaitClose, GTA:SA:MP
{
	FileCreateDir, %A_MyDocuments%\GTA San Andreas User Files\SAMP\Chatlogs
	FormatTime, datum, %A_Now%, dd.MM.yyyy
	FormatTime, zeit, %A_Now%, HH-mm-ss
	FileCopy, %A_MyDocuments%\GTA San Andreas User Files\SAMP\chatlog.txt, %A_MyDocuments%\GTA San Andreas User Files\SAMP\Chatlogs\Chatlog vom %datum% um %zeit% Uhr.txt, 0
}
return