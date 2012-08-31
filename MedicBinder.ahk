#UseHook
#SingleInstance, Force ; Es darf nur eine Instanz von dem Programm vorhanden sein, wird eine neue gestartet, schlie�t sich die alte. (Reload)
#Persistent
#Include Einzelteile/memlib.ahk

MainDir := A_MyDocuments "\MedicKeybinder"
SetWorkingDir, %MainDir%
IfNotExist, %MainDir%
	FileCreateDir, %MainDir%

Settimer, Zollsystem, 100
Settimer, CarHeal, 1000
Settimer, Playerheal, 1000
Settimer, Speedo, 200
Freigabe := 1
heal := -1
OnExit, Callback_OnExit

version := 1.1

FileInstall, Einzelteile/API.dll, %MainDir%/API.dll, 1
UrlDownloadToFile, http://www.axi92.at/download/keybinder/medic/version.txt, %MainDir%\version.txt
FileRead, newver, version.txt
FileDelete, %MainDir%\version.txt
if (version < newver)
{
	neueverf�gbar = 1
	MsgBox,0,, Es ist eine neue Version verf�gbar, v%newver%. Es wird geupdated
	UrlDownloadToFile, http://www.axi92.at/download/keybinder/medic/MedicKeybinder.exe, %MainDir%\%A_ScriptName%.new
	BatchFile=n
	(
		Ping 127.0.0.1
		Del "%MainDir%\%A_ScriptName%"
		Rename "%MainDir%\%A_ScriptName%.new" "%MainDir%\%A_ScriptName%"
		cd "%A_ScriptFullPath%"
		"%MainDir%\%A_ScriptName%"
		Del Update.bat
	)
	FileDelete,update.bat
	FileAppend,%BatchFile%,update.bat
	Run,update.bat,,hide
	FileCreateShortcut, %MainDir%\MedicKeybinder.exe, %A_Desktop%\MedicKeybinder.lnk
	ExitApp
}
else
{
	neueverf�gbar = 0
}

#Include Einzelteile/API.ahk
#Include Einzelteile/GUI_Medic.ahk
Gui,Add,text,cblack x350 y220  +backgroundtrans
Gui,1: Show,,
return

;Hier der Header wo die Taste T , ENTER und Escape Bestimmt ist einf�gen ( Siehe Ganz Oben)


#Include Einzelteile/pause.ahk ;Pause Funktion

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
GUIclose:
ExitApp
#IfWinActive, GTA:SA:MP ; Folgende Hotkeys Funktionieren nur wenn GTA SA:MP ge�ffnet ist
#UseHook
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
; Hier wird bestimmt, das wenn ihr im Spiel T dr�ckt, der Keybinder Suspendet (Ausschaltet/Pausiert) und kein Anderer Hotkey Losgehen kann...


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

#Include Einzelteile/motor.ahk

#Include Einzelteile/medic_binds.ahk

#Include Einzelteile/tacho.ahk

#Include Einzelteile/heal_hud.ahk

Motor1:
SendChat("/motor a")
return

Motor2:
SendChat("/motor b")
return

Motor3:
SendChat("/motor c")
return

#Include Einzelteile/zoll.ahk

:?:/atvoff::
Suspend Permit
SendChat("/togphone")
Suspend Off
return

Callback_OnExit:
DestroyAllVisual()
ExitApp
return