#IfWinActive GTA:SA:MP
#SingleInstance force
#Include API.ahk

Iniread Name ,Keybinder_by_CarlosPacino.ini,Optionen, Name
Iniread Rang ,Keybinder_by_CarlosPacino.ini,Optionen, Rang
Iniread Deagle ,Keybinder_by_CarlosPacino.ini,Optionen, Deagle
Iniread M4 ,Keybinder_by_CarlosPacino.ini,Optionen, M4
Iniread Shotgun ,Keybinder_by_CarlosPacino.ini,Optionen,SHotgun
IniRead, MP5 ,Keybinder_by_CarlosPacino.ini,Optionen, MP5
IniRead, Komplize ,Keybinder_by_CarlosPacino.ini,Optionen, Komplize

;Gui,Add,Picture,x10 y5 w650 h450,background.jpg
;Gui,Add,text,cblack x230 y10  +backgroundtrans, Keybinder | by Carlos_Pacino

;Gui,Add,text,cblack x13 y7  +backgroundtrans, Version (entwicklung) 0.9
;Gui,Add,text,cblack x565 y7  +backgroundtrans, © by Carlos Pacino

Gui,Add,text,cblack x10 y20  +backgroundtrans, Tastenbelegungen:
Gui,Add,text,cblack x10 y40  +backgroundtrans, !E = Auto starten/stoppen
;Gui,Add,text,cblack x10 y60  +backgroundtrans, 2 = Auto aus schalten
Gui,Add,text,cblack x10 y80  +backgroundtrans, 1 = Sex annehmen
Gui,Add,text,cblack x10 y100  +backgroundtrans, 4 = Zoll
Gui,Add,text,cblack x10 y120  +backgroundtrans, 5 = Statistiken
Gui,Add,text,cblack x10 y140  +backgroundtrans, 6 = Tanken
;Gui,Add,text,cblack x40 y180  +backgroundtrans, 7 =
Gui,Add,text,cblack x10 y160  +backgroundtrans, 8 = Enter
Gui,Add,text,cblack x10 y180  +backgroundtrans, 9 = Exit
Gui,Add,text,cblack x10 y200  +backgroundtrans, 0 = /f [text] (Keine Zahlen)
Gui,Add,text,cwhite x10 y220  +backgroundtrans, # = Fesseln
Gui,Add,text,cwhite x10 y240  +backgroundtrans, + = Entfesseln
Gui,Add,text,cwhite x10 y260  +backgroundtrans, - = /kidnap auf 1
Gui,Add,text,cwhite x10 y280  +backgroundtrans, . = /kidnap auf 0
Gui,Add,text,cwhite x10 y300  +backgroundtrans, Num2 = Sex annehmen
Gui,Add,text,cwhite x10 y320  +backgroundtrans, Num3 = Komplize Sex anbieten
Gui,Add,text,cwhite x10 y340  +backgroundtrans, Num5 = Waffen kaufen


Gui,Add,text,cblack x200 y20  +backgroundtrans, Befehle:
Gui,Add,text,cblack x200 y60  +backgroundtrans, /di= Drive in am BSN
Gui,Add,text,cblack x200 y80  +backgroundtrans, /aref = /accept refill
Gui,Add,text,cblack x200 y100  +backgroundtrans, /arep = /accept repair
Gui,Add,text,cblack x200 y120  +backgroundtrans, /ab = Anrufbeantworter
Gui,Add,text,cblack x200 y140  +backgroundtrans, /p = /pickup
Gui,Add,text,cblack x200 y160  +backgroundtrans, /h = /hangup
Gui,Add,text,cblack x200 y180  +backgroundtrans, /ad1 , /ad2 = Membersuche
Gui,Add,text,cblack x200 y200  +backgroundtrans, Num9 = Wiederholung
Gui,Add,text,cred x350 y420  +backgroundtrans, Pause = Keybinder pausieren
Gui,Add,text,cred x400 y1  +backgroundtrans, Pause = Keybinder pausieren

Gui,Add,text,cblack x350 y220  +backgroundtrans
Gui,1:Add,Button, w200 h25 gGangfight,Gangfight
;Gui,1:Add,Button, w200 h25 gSprüche,Sprüche
;Gui,1:Add,Button, w200 h25 gEinstellungstests,Einstellungstests
Gui,1:Add,Button, w200 h25 gOptionen,Optionen
;Gui,1:Add,Button, w200 h25 gPasswort,Passwörter
;Gui, Add, Button, x507 y7 h20 w150 gInformationen, Informationen
Gui,1: Show,,
return


Gangfight:
Gui,2:Add,Text,cblack, Gangfight Befehle:
Gui,2:Add,Text,cblack, (Gangfight Befehle in Arbeit)
Gui,2:Add,Text,cblack, /gz = /f >>>G.a.n.g.z.o.n.e.k.i.l.l<<<
Gui,2:Add,Text,cblack, /down = /f Down im Gebiet
Gui,2:Add,Text,cblack, /hctf = /f Brauche Hilfe am CTF
Gui,2: show,,
return

;Sprüche:
;Gui,3:Add,Text,cblack, Sprüche:
;Gui,3:Add,Text,cblack, ALT+1 = Owned by [name], am besten du bleibst zu Hause bei Mutti
;Gui,3:Add,Text,cblack, ALT+2 = Brot kann schimmeln, was kannst du?
;Gui,3:Add,Text,cblack, ALT+3 = Für dich hab ich immer ein Geschenk! Ne Kugel zwischen die Augen
;Gui,3: show,,
;return

Optionen:
Gui,4:Add,Text,cblack, Name:
Gui,4:Add,Edit, w200 h25 vName, %Name%
Gui,4:Add,Text,cblack, Rang:
Gui,4:Add,Edit, w200 h25 vRang, %Rang%
Gui,4:Add,Text,cblack, Munition für Deagle:
Gui,4:Add,Edit, w200 h25 vDeagle, %Deagle%
Gui,4:add,Text,cblack, Munition für M4:
Gui,4:Add,Edit, w200 h25 vM4, %M4%
Gui,4:Add,Text,cblack, Munition für Shotgun:
Gui,4:Add,Edit, w200 h25 vShotgun, %Shotgun%
Gui,4:Add,Text,cblack, Munition für MP5:
Gui,4:Add,Edit, w200 h25 vMP5, %MP5%
Gui,4:Add,Text,cblack, Komplize:
Gui,4:Add,Edit, w200 h25 vKomplize, %Komplize%
Gui,4:add,Button,w200 30 gSpeichern , Speichern
Gui,4: show,,
return

;Passwort:
;passwort1= 123
;Gui,6:Add,Text,cblack, Ausbilder Passwort:
;Gui,6:Add,Edit, w200 h25 vPasswort cblack password, %Passwort%
;Gui,6:add,Button,w200 30 gSpeichern , Speichern
;Gui,6: show,,
;return


Speichern:
Gui, Submit, Nohide
IniWrite, %Name% ,Keybinder_by_CarlosPacino.ini, Optionen, Name
IniWrite, %Rang% ,Keybinder_by_CarlosPacino.ini, Optionen, Rang
IniWrite, %Deagle% ,Keybinder_by_CarlosPacino.ini, Optionen, Deagle
IniWrite, %M4% ,Keybinder_by_CarlosPacino.ini, Optionen, M4
IniWrite, %Shotgun% ,Keybinder_by_CarlosPacino.ini, Optionen, Shotgun
IniWrite, %MP5% ,Keybinder_by_CarlosPacino.ini, Optionen, MP5
IniWrite, %Komplize% ,Keybinder_by_CarlosPacino.ini, Optionen, Komplize
;IniWrite, %Passwort% ,Passwörter.ini, Optionen, Passwort
;MsgBox ,Deine Einstellungen wurden erfolgreich gespeichert!
Gui,4: Destroy
Gui,6: Destroy
return

;Informationen:
;Gui, 4:Add,Edit,x20 y82 h150 w300 +readonly,Dieser Text darf nicht gelöscht werden, sollte dieses trotzdem geschehen, wird dies zur Anzeige gebracht.
;Gui, 4:Add,Edit,x20 y22 h40 w300 +readonly,Copyright by Carlos Pacino          www.Black-Evolution.org
;Gui, 4:Show, w345 y250, Informationen
;return



;Hier der Header wo die Taste T , ENTER und Escape Bestimmt ist einfügen ( Siehe Ganz Oben)

Numpad5::
SendChat(/buygun %waffe1% %Ammu1%) ;t/buygun deagle %Deagle%{enter}
SendChat(/buygun %waffe2% %Ammu2%)
SendChat(/buygun %waffe3% %Ammu3%)
SendChat(/buygun %waffe4% %Ammu4%)
SendChat(/buygun %waffe5% %Ammu5%)
;SendINput t/buygun m4 %M4%{enter}
;SendINput t/buygun shotgun %Shotgun%{enter}
;SendINput t/buygun mp5 %MP5%{enter}
;return

Pause:: ;Pausiert den Keybinder
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
GUIclose:
ExitApp
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
Suspend Permit
Suspend Off
;SendInput {Enter}
Hotkey, t, On
Hotkey, Enter, Off
Hotkey, Escape, Off
return

~Escape::
Suspend Permit
Suspend Off
Hotkey, t, On
Hotkey, Enter, Off
Hotkey, Escape, Off
return

:?:/jump::
Suspend Permit
Send, {Space}
return

F2::
Suspend Permit
;GetVehicleEngineState(EngineState)
;{
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
;}
return

b:: ;Drogen
SendChat(/usedrugs)
return

;ZOLL SYSTEM-------------
Array := {X1: "100.000", Y1: "100.000", Z1: "100.000", X2: "200.000", Y2: "200.000", Z2: "200.000", X3: "300.000", Y3: "300.000", Z3: "300.000"}
;IsPlayerInRangeOfPoint(X, Y, Z, Range)
;{
	Result := DllCall("API.dll\API_IsPlayerInRangeOfPoint", "Float", X, "Float", Y, "Float", Z, "Float", Range)
	;return Result
	If (IsPlayerInRangeOfPoint(X, Y, Z, 5))
	{
		SendChat(/zoll)
	}
;}


:?:/aref::
Suspend Permit
SendChat(/accept refill)
return

:?:/arep::
Suspend Permit
SendChat(/accept repair)
return

;:?:/aho::
;Suspend Permit
;SendInput /accept hotdog{enter}
;return

;:?:/ah::
;Suspend Permit
;SendInput /accept heal{enter}
;return

:?:/as::
Suspend Permit
SendChat(/accept sex)
;GetPlayerName(MyName)
;SendChat("Dies ist der Anrufbeantworter von " MyName ", ich habe gerade keine Zeit.")
;SendChat(h)
return

:?:/ab::
Suspend Permit
SendChat(/p)
GetPlayerName(MyName)
SendChat("Dies ist der Anrufbeantworter von " MyName ", ich habe gerade keine Zeit.")
SendChat(/h)
return

:?:/p::
Suspend Permit
SendInput /pickup{enter}
SendInput tGuten Tag sie sprechen mit %Name% wie kann ich helfen?{enter}
return

:?:/h::
Suspend Permit
SendInput Auf wiederhören{enter}
SendInput t/hangup{enter}
return

:?:/gkill::
Suspend Permit
SendInput /f >>>GangWarKill<<<{enter}
return

:?:/fkill::
Suspend Permit
SendInput /f >>>GangFightKill<<<{enter}
return

:?:/down::
Suspend Permit
SendInput /f Down im Gebiet{enter}
return

;:?:/hctf::
;Suspend Permit
;SendInput /f Brauche Hilfe am CTF{enter}
;return

:?:/time::
Suspend Permit
SendInput /time{enter}
SendInput /me schaut auf seine Atomuhr.{enter}
return

;!1::
;SendInput t/s Owned by %name%, am besten du bleibst zu Hause bei Mutti{enter}
;return

;!2::
;SendInput t/s Brot kann schimmeln, was kannst du?{enter}
;return

;!3::
;SendInput t/s Für dich hab ich immer ein Geschenk, Ne Kugel zwischen die Augen{enter}
;return



Numpad3::
;SendInput t/sex %Komplize% 1{enter}
SendChat(/sex %sex1%)
Sleep, 200
SendChat(/sex %sex2%)
Sleep, 200
SendChat(/sex %sex3%)
Sleep, 200
SendChat(/sex %sex4%)
Sleep, 200
SendChat(/sex %sex5%)
return

;Numpad1::
;SendInput t/enter{enter}
;SendInput t/exit{enter}
;return

;Numpad9::
;SendInput t{up}{enter}
;return

;:?:/sms::
;Suspend Permit
;SendInput /sms{Space}
;Suspend On
;input, sms,V,{Space}
;Hotkey, t, Off
;Hotkey, Escape, On
;Hotkey, Enter, On
;Return

;:?:/resms::
;Suspend Permit
;SendInput /sms{Space}%sms%{space}
;Hotkey, Enter, On
;Hotkey, Escape, On
;Hotkey, t, Off
;return

;F12::
;SendINput %InGamePasswort%{enter}
;return
