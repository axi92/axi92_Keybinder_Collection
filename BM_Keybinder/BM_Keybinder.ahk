#SingleInstance, Force ; Es darf nur eine Instanz von dem Programm vorhanden sein, wird eine neue gestartet, schlieà ´ sich die alte. (Reload)
#Persistent
#UseHook
#NoEnv

IfNotExist, %MainDir%
FileCreateDir, %MainDir%
MainDir := A_MyDocuments "\BM_Keybinder"
SetWorkingDir, %MainDir%
FileCreateDir, %MainDir%

Settimer, Zollsystem, 250
SetTimer, Callback_Check_Vehicle, 100
Freigabe := 1
heal := -1
OnExit, Callback_OnExit

version := 0.2

UrlDownloadToFile, http://www.axi92.at/download/keybinder/bm/version.txt, %MainDir%\version.txt
FileRead, newver, %MainDir%\version.txt
FileDelete, %MainDir%\version.txt
if (version < newver)
{
MsgBox,0,, Es ist eine neue Version verfügbar, v%newver% es wird geupdated
UrlDownloadToFile, http://www.axi92.at/download/keybinder/bm/BM_Keybinder.exe, %MainDir%\%A_ScriptName%.new
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
#Include Einzelteile/API.ahk
#Include Einzelteile/GUI_BM.ahk
#Include Einzelteile/pause.ahk ;Pause Funktion

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
GUIclose:
ExitApp
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

#Include Einzelteile/motor.ahk
#Include Einzelteile/bm_binds.ahk
#Include Einzelteile/zoll.ahk

Motor1:
SendChat("/motor 1")
;AddChatMessage(0xFF3333, "1")
return

Motor2:
SendChat("/motor 2")
;AddChatMessage(0xFF3333, "2")
return

Motor3:
SendChat("/motor 3")
;AddChatMessage(0xFF3333, "3")
return

Callback_OnExit:
DestroyAllVisual()
ExitApp
return