#SingleInstance Force ; Es darf nur eine Instanz von dem Programm vorhanden sein, wird eine neue gestartet, schlie࠴ sich die alte. (Reload)
#Persistent
#UseHook
#NoEnv
#Hotstring EndChars `n
MainDir := A_MyDocuments "\axi92_Keybinder"
IfNotExist, %MainDir%
	FileCreateDir, %MainDir%
FileCopy, Einzelteile/API.dll, %MainDir%/API.dll
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
SoundSetWaveVolume, +100

;VAR - VAR - VAR - VAR - VAR - VAR - VAR - VAR
debug := falset
version := 0.5
SpeicherDatei := MainDir . "\Datei.ini"
ini := "Datei.ini"
Freigabe := 1
heal := -1
Sound := 1
acolorcar_status := false
update := false
autofind_status := false
autofix_status := false
togloginlogout := false
laufscript := false
ZFreigabe := 0
DoOnce := 0
Do_HP_Once := 0
zahl := 0
ddos_stat := false
pd_binds := true

;TIMER - TIMER - TIMER - TIMER - TIMER - TIMER
;SetTimer, Sound, 200
;Settimer, Playerheal, 1000
SetTimer, Callback_Check_Vehicle, 30
Settimer, toggle_loginlogout, 500
TextBindTimer(50)
;~ SetTimer, Logbackup, 500
OnExit, Callback_OnExit

IniRead, pw, %ini%, Einstellungen, IGPasswort
#Include Einzelteile/ping.ahk
OnlineCheck := Ping("www.axi92.at")
if(OnlineCheck == 1)
{
    UrlDownloadToFile, http://www.axi92.at/download/keybinder/axi92/version.txt, %MainDir%\version.txt
}
FileRead, newver, %MainDir%\version.txt
FileDelete, %MainDir%\version.txt
if (version < newver AND update == true)
{
	MsgBox,0,, Es ist eine neue Version verfügbar, v%newver% es wird geupdated
	UrlDownloadToFile, http://www.axi92.at/download/keybinder/axi92/axi92.at.exe, %MainDir%\%A_ScriptName%.new
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
FileInstall, Einzelteile/API.dll, %MainDir%/API.dll, 1
FileInstall, Einzelteile/sounds/attack_mode.mp3, %MainDir%/attack_mode.mp3
FileInstall, Einzelteile/sounds/punch.mp3, %MainDir%/punch.mp3
#Include Einzelteile/memlib.ahk
#Include Einzelteile/API.ahk
#Include Einzelteile/GUI_PD.ahk
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
GUIclose:
Gui, Submit ; speichert die Benutzerdaten des Fensters und versteckt es
IniWrite, %Overlay%, %SpeicherDatei%, Einstellung, Overlay
ExitApp
#IfWinActive, GTA:SA:MP ; Folgende Hotkeys Funktionieren nur wenn GTA SA:MP ge�ffnet ist
; Von hier bis....

+T::
~t::
Suspend On
Hotkey, Enter, On
Hotkey, Escape, On
Hotkey, Tab, On
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
;~ ;AddChatMessage(0xFF3333, "3")   2624  31426
return

Callback_OnExit:
ExitApp
return

:?:/q::
Suspend Permit
Sleep, 100
Send t/q{ENTER}
;WinWait, GTA:SA:MP
;////////////////////////
;Settimer, Logbackup, Off
;~ Suspend Permit
;~ Settimer, Zollsystem, Off
;SetTimer, Sound, Off
;SetTimer, Callback_Check_Vehicle, Off
;Settimer, Speedo, Off
;~ DestroyAllVisual()
;////////////////////////
;~ Logbackup:
FileCreateDir, %A_MyDocuments%\GTA San Andreas User Files\SAMP\Chatlogs
FormatTime, datum, %A_Now%, dd.MM.yyyy
FormatTime, zeit, %A_Now%, HH-mm-ss
FileCopy, %A_MyDocuments%\GTA San Andreas User Files\SAMP\chatlog.txt, %A_MyDocuments%\GTA San Andreas User Files\SAMP\Chatlogs\Chatlog vom %datum% um %zeit% Uhr.txt, 0
Suspend Off
;ExitApp
return

:?:/togloginlogout::
toggle_loginlogout:
IfWinNotActive, GTA:SA:MP
{
   return
}
if(togloginlogout == false)
{	
	if(IsPlayerFrozen() == 1)
	{
	}
	else if(IsPlayerFrozen() == 0)
	{
		if(debug == true)
		{
			AddChatMessage(0xFF0000, "DEBUG: Eingeloggt") 
		}
		togloginlogout := true
		SendChat("/togloginlogout")
		Settimer, toggle_loginlogout, off
		Sleep, 200
		SetTimer, OnPlayerTakeDmg, 100
		Sleep, 200
		SetTimer, Sound, 100
		Sleep, 200
		;~ Settimer, Zollsystem, 100
		Sleep, 200
		SetTimer, Callback_Check_Vehicle, 30
	}
/*
	GetChatLine(0, str)
	if InStr(str, "Bitte warten...")
	{
		SendChat("/togloginlogout")
		togloginlogout := true
		Settimer, toggle_loginlogout, off
		SetTimer, OnPlayerTakeDmg, 100
		Sleep, 500
		SetTimer, Sound, 100
	}
*/
}
return

;~ #Include Einzelteile/zoll-timer.ahk
#Include Einzelteile/zoll_ghost.ahk
#Include Einzelteile/pause.ahk ;Pause Funktion
#Include Einzelteile/misc.ahk
#Include Einzelteile/gk.ahk
#Include Einzelteile/sound_system.ahk
#Include Einzelteile/admin.ahk
#Include Einzelteile/motor.ahk
#Include Einzelteile/tacho.ahk
#Include Einzelteile/heal_hud.ahk
#Include Einzelteile/beschwerden.ahk
#Include Einzelteile/anwalt.ahk
#Include Einzelteile/functions.ahk
#Include Einzelteile/autoreplace.ahk
#Include Einzelteile/pd.ahk