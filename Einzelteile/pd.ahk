3::
IfWinNotActive, GTA:SA:MP {return}
if(IsChatOpen() == 1 || IsDialogOpen() == 1 || GetVehicleModel() == 519 || GetVehicleModel() == 520) {
   SendInput, {%A_ThisHotkey%}
   return
}
Suspend Permit
SendChat("/sirene")
SendChat("/sireneb")
Suspend Off
return

:?:/w1::
Suspend Permit
SendInput /arrest 8000 2 1 16000
Suspend On
Hotkey, Enter, On
Hotkey, Escape, On
Suspend Off
Return

:?:/w2::
Suspend Permit
SendInput /arrest 16000 3 1 32000
Suspend Off
Hotkey, t, On
Return

:?:/w3::
Suspend Permit
SendInput /arrest 24000 6 0 0
Suspend On
Hotkey, Enter, On
Hotkey, Escape, On
Suspend Off
Return

:?:/w4::
Suspend Permit
SendInput /arrest 32000 9 0 0
Suspend On
Hotkey, Enter, On
Hotkey, Escape, On
Suspend Off
Return

!1::
IfWinNotActive, GTA:SA:MP {return}
Suspend Permit
SendInput t/arrest 8000 3 1 16000
Suspend On
Hotkey, Enter, On
Hotkey, Escape, On
Suspend Off
Return

!2::
IfWinNotActive, GTA:SA:MP {return}
Suspend Permit
SendInput t/arrest 16000 6 1 32000
Suspend On
Hotkey, Enter, On
Hotkey, Escape, On
Suspend Off
Return

!3::
IfWinNotActive, GTA:SA:MP {return}
Suspend Permit
SendInput t/arrest 24000 9 0 0
Suspend On
Hotkey, Enter, On
Hotkey, Escape, On
Suspend Off
Return

!4::
IfWinNotActive, GTA:SA:MP {return}
Suspend Permit
SendInput t/arrest 32000 12 0 0
Suspend On
Hotkey, Enter, On
Hotkey, Escape, On
Suspend Off
Return

!5::
IfWinNotActive, GTA:SA:MP {return}
Suspend Permit
SendInput t/arrest 40000 15 0 0
Suspend On
Hotkey, Enter, On
Hotkey, Escape, On
Suspend Off
Return

!6::
IfWinNotActive, GTA:SA:MP {return}
Suspend Permit
SendInput t/arrest 48000 18 0 0
Suspend On
Hotkey, Enter, On
Hotkey, Escape, On
Suspend Off
Return

:?:/a7::
Suspend Permit
SendInput /prisonarrest{space}{space}56000 21{home}{Right 14}
Suspend On
Hotkey, Enter, On
Hotkey, Escape, On
Suspend Off
Return

:?:/a8::
Suspend Permit
SendInput /prisonarrest{space}{space}64000 24{home}{Right 14}
Suspend On
Hotkey, Enter, On
Hotkey, Escape, On
Suspend Off
Return

:?:/a9::
Suspend Permit
SendInput /prisonarrest{space}{space}72000 27{home}{Right 14}
Suspend On
Hotkey, Enter, On
Hotkey, Escape, On
Suspend Off
Return

:?:/a10::
Suspend Permit
SendInput /prisonarrest{space}{space}80000 30{home}{Right 14}
Suspend On
Hotkey, Enter, On
Hotkey, Escape, On
Suspend Off
Return

:?:/a11::
Suspend Permit
SendInput /prisonarrest{space}{space}88000 33{home}{Right 14}
Suspend On
Hotkey, Enter, On
Hotkey, Escape, On
Suspend Off
Return

:?:/a12::

Suspend Permit
SendInput /prisonarrest{space}{space}96000 36{home}{Right 14}
Suspend On
Hotkey, Enter, On
Hotkey, Escape, On
Suspend Off
Return

:?:/a13::
Suspend Permit
SendInput /prisonarrest{space}{space}104000 39{home}{Right 14}
Suspend On
Hotkey, Enter, On
Hotkey, Escape, On
Suspend Off
Return

:?:/a14::
Suspend Permit
SendInput /prisonarrest{space}{space}112000 41{home}{Right 14}
Suspend On
Hotkey, Enter, On
Hotkey, Escape, On
Suspend Off
Return

:?:/a15::

Suspend Permit
SendInput /prisonarrest{space}{space}120000 44{home}{Right 14}
Suspend On
Hotkey, Enter, On
Hotkey, Escape, On
Suspend Off
Return

:?:/a16::
Suspend Permit
SendInput /prisonarrest{space}{space}128000 47{home}{Right 14}
Suspend On
Hotkey, Enter, On
Hotkey, Escape, On
Suspend Off
Return

:?:/a17::
Suspend Permit
SendInput /prisonarrest{space}{space}136000 50{home}{Right 14}
Suspend On
Hotkey, Enter, On
Hotkey, Escape, On
Suspend Off
Return

:?:/a18::
Suspend Permit
SendInput /prisonarrest{space}{space}144000 53{home}{Right 14}
Suspend On
Hotkey, Enter, On
Hotkey, Escape, On
Suspend Off
Return

:?:/a19::
Suspend Permit
SendInput /prisonarrest{space}{space}152000 56{home}{Right 14}
Suspend On
Hotkey, Enter, On
Hotkey, Escape, On
Suspend Off
Return

:?:/a20::
Suspend Permit
SendInput /prisonarrest{space}{space}160000 59{home}{Right 14}
Suspend On
Hotkey, Enter, On
Hotkey, Escape, On
Suspend Off
Return

Numpad1::
IfWinNotActive, GTA:SA:MP {return}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) {
   SendInput, {%A_ThisHotkey%}
   return
}
Suspend Permit
SendChat("/m >> Allgemeine Verkehrskontrolle <<")
SendChat("/m >> Fahren Sie bitte rechts ran! <<")
SendChat(" >> Schalten Sie den Motor aus und steigen Sie aus dem Fahrzeug! <<")
Suspend Off
return

Numpad2::
IfWinNotActive, GTA:SA:MP {return}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) {
   SendInput, {%A_ThisHotkey%}
   return
}
Suspend Permit
SendChat("/m >>>> Fahren Sie SOFORT rechts ran! <<<<")
Suspend Off
return

Numpad3::
IfWinNotActive, GTA:SA:MP {return}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) {
   SendInput, {%A_ThisHotkey%}
   return
}
Suspend Permit
SendChat("/m Fahren Sie SOFORT rechts ran, oder wir eröffnen das Feuer !!!!")
Suspend Off
return

Numpad4::
IfWinNotActive, GTA:SA:MP {return}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) {
   SendInput, {%A_ThisHotkey%}
   return
}
Suspend Permit
SendChat("/m >>>> Räumen Sie SOFORT die Straße !!! <<<<")
Suspend Off
return

Numpad5::
IfWinNotActive, GTA:SA:MP {return}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) {
   SendInput, {%A_ThisHotkey%}
   return
}
Suspend Permit
SendChat("/m Bleiben Sie SOFORT stehen !")
Suspend Off
return

Numpad6::
IfWinNotActive, GTA:SA:MP {return}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) {
   SendInput, {%A_ThisHotkey%}
   return
}
Suspend Permit
SendChat("/m Steigen Sie SOFORT aus dem Fahrzeug und nehmen Sie die ")
SendChat("/m Hände hoch (/hup)")
Suspend Off
return

Numpad7::
IfWinNotActive, GTA:SA:MP {return}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) {
   SendInput, {%A_ThisHotkey%}
   return
}
Suspend Permit
SendChat("/m Steigen Sie SOFORT in das Polizei-Fahrzeug!")
Suspend Off
return

^1::
!Numpad1::
IfWinNotActive, GTA:SA:MP {return}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) {
   SendInput, {%A_ThisHotkey%}
   return
}
FormatTime, Uhrzeit, mm
SendInput t/su  Flucht/Fluchtversuch (%Uhrzeit%){home}{Right 4}
Suspend On
Hotkey, Enter, On
Hotkey, Escape, On
Suspend Off
return

^2::
!Numpad2::
IfWinNotActive, GTA:SA:MP {return}
SendInput t/su  Angriff/Beschuss auf Beamte/Zivilisten{home}{Right 4}
Suspend On
Hotkey, Enter, On
Hotkey, Escape, On
return

^3::
!Numpad3::
IfWinNotActive, GTA:SA:MP {return}
SendInput t/su  Beamtenbeleidigung{home}{Right 4}
Suspend On
Hotkey, Enter, On
Hotkey, Escape, On
SendChat("/me sollte das Passwort in den Optionen angeben!")
Suspend Off
return

^4::
!Numpad4::
IfWinNotActive, GTA:SA:MP {return}
SendInput t/su  Verweigerung{home}{Right 4}
Suspend On
Hotkey, Enter, On
Hotkey, Escape, On
SendChat("/me sollte das Passwort in den Optionen angeben!")
Suspend Off
return

^5::
!Numpad5::
IfWinNotActive, GTA:SA:MP {return}
SendInput t/su  Ordnungsamt: Flucht/Ticketverweigerung{home}{Right 4}
Suspend On
Hotkey, Enter, On
Hotkey, Escape, On
Suspend Off
return

^6::
IfWinNotActive, GTA:SA:MP {return}
SendInput t/su  Missbrauch des Notrufs{home}{Right 4}
Suspend On
Hotkey, Enter, On
Hotkey, Escape, On
SendChat("/me sollte das Passwort in den Optionen angeben!")
Suspend Off
return

!Numpad6::
IfWinNotActive, GTA:SA:MP {return}
SendInput t/su  Behinderung der Justiz{home}{Right 4}
Suspend On
Hotkey, Enter, On
Hotkey, Escape, On
SendChat("/me sollte das Passwort in den Optionen angeben!")
Suspend Off
return

^0::
!Numpad0::
IfWinNotActive, GTA:SA:MP {return}
SendInput t/su  Beihilfe zur Flucht{home}{Right 4}
Suspend On
Hotkey, Enter, On
Hotkey, Escape, On
SendChat("/me sollte das Passwort in den Optionen angeben!")
Suspend Off
return

+::
IfWinNotActive, GTA:SA:MP {return}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) {
   SendInput, {%A_ThisHotkey%}
   return
}
Suspend Permit
SendChat("/lspd1")
SendChat("/lspd2")
SendChat("/fbi1")
SendChat("/fbi2")
SendChat("/fbi3")
SendChat("/lspdtuere")
SendChat("/sfpd1")
SendChat("/rgopen")
Suspend Off
Return

:?:/newshelp::
if(Tabnummer != 3)
{	
	return
}
Suspend Permit
AddChatMessage(0xFF3366, "_____________________________________________")
AddChatMessage(0xFFFFFF, "Pause = Keybinder pausieren")
AddChatMessage(0xFFFFFF, "Linke Strg = Motor")
AddChatMessage(0xFFFFFF, "/tempomat")
AddChatMessage(0xFFFFFF, "/overlay")
AddChatMessage(0xFFFFFF, "/ab = Anrufabsage, verweis auf SMS")
AddChatMessage(0xFFFFFF, "Arrest ALT 1 - 6")
AddChatMessage(0xFFFFFF, "Prison /a7 - 20")
AddChatMessage(0xFFFFFF, "Rabatt /w1 - 4")
AddChatMessage(0xFFFFFF, "Num1 Rechts ran fahren")
AddChatMessage(0xFFFFFF, "Num3 Rechts ran oder beschuss")
AddChatMessage(0xFFFFFF, "Num5 Sofort stehen bleiben!")
AddChatMessage(0xFFFFFF, "Num7 Steigen sie den PD Wagen!")
AddChatMessage(0xFF3366, "_____________________________________________")
Suspend Off
return