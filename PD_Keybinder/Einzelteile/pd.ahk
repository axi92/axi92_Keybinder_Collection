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
IfWinNotActive, GTA:SA:MP 
{
   SendInput, {%A_ThisHotkey%}
   return
}
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
IfWinNotActive, GTA:SA:MP 
{
   SendInput, {%A_ThisHotkey%}
   return
}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) {
   SendInput, {%A_ThisHotkey%}
   return
}
Suspend Permit
SendChat("/m >>>> Fahren Sie SOFORT rechts ran! <<<<")
Suspend Off
return

Numpad3::
IfWinNotActive, GTA:SA:MP 
{
   SendInput, {%A_ThisHotkey%}
   return
}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) {
   SendInput, {%A_ThisHotkey%}
   return
}
Suspend Permit
SendChat("/m Fahren Sie SOFORT rechts ran, oder wir eröffnen das Feuer !!!!")
Suspend Off
return

Numpad4::
IfWinNotActive, GTA:SA:MP 
{
   SendInput, {%A_ThisHotkey%}
   return
}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) {
   SendInput, {%A_ThisHotkey%}
   return
}
Suspend Permit
SendChat("/m >>>> Räumen Sie SOFORT die Straße !!! <<<<")
Suspend Off
return

Numpad5::
IfWinNotActive, GTA:SA:MP 
{
   SendInput, {%A_ThisHotkey%}
   return
}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) {
   SendInput, {%A_ThisHotkey%}
   return
}
Suspend Permit
SendChat("/m Bleiben Sie SOFORT stehen !")
Suspend Off
return

Numpad6::
IfWinNotActive, GTA:SA:MP 
{
   SendInput, {%A_ThisHotkey%}
   return
}
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
IfWinNotActive, GTA:SA:MP 
{
   SendInput, {%A_ThisHotkey%}
   return
}
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
Suspend Off
return

!Numpad6::
IfWinNotActive, GTA:SA:MP {return}
SendInput t/su  Behinderung der Justiz{home}{Right 4}
Suspend On
Hotkey, Enter, On
Hotkey, Escape, On
Suspend Off
return

^0::
!Numpad0::
IfWinNotActive, GTA:SA:MP {return}
SendInput t/su  Beihilfe zur Flucht{home}{Right 4}
Suspend On
Hotkey, Enter, On
Hotkey, Escape, On
Suspend Off
return

+::
IfWinNotActive, GTA:SA:MP {return}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) {
   SendInput, {%A_ThisHotkey%}
   return
}
Suspend Permit
SendChat("/rgopen")
SendChat("/tor")
Suspend Off
Return

:?:/newshelp::
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

2::
IfWinNotActive, GTA:SA:MP 
{
   SendInput, {%A_ThisHotkey%}
   return
}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) {
   SendInput, {%A_ThisHotkey%}
   return
}
SendChat("Guten Tag Sir, darf ich Sie auf Drogen-, Materials-, und Waffenbesitz durchsuchen?")
SendChat("Sollten Sie sich weigern, gibt das einen Wanted und ich verhafte Sie anschließend!")
return

3::
IfWinNotActive, GTA:SA:MP 
{
   SendInput, {%A_ThisHotkey%}
   return
}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) 
{
   SendInput, {%A_ThisHotkey%}
   return
}
SendChat("Steigen Sie aus dem Fahrzeug, sonst müssen wir Gewalt anwenden!")
return

4::
IfWinNotActive, GTA:SA:MP 
{
   SendInput, {%A_ThisHotkey%}
   return
}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) 
{
   SendInput, {%A_ThisHotkey%}
   return
}
SendChat("Vielen Dank für Ihre Kooperation auf Wiedersehen.")
return

5::
IfWinNotActive, GTA:SA:MP 
{
   SendInput, {%A_ThisHotkey%}
   return
}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) 
{
   SendInput, {%A_ThisHotkey%}
   return
}
SendChat("Sie sind vorläufig festgenommen! Wenn Sie sich stellen möchten,")
SendChat("geben Sie bitte /hup ein oder steigen Sie mit 'G' in das Fahrzeug.")
return

6::
IfWinNotActive, GTA:SA:MP 
{
   SendInput, {%A_ThisHotkey%}
   return
}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) 
{
   SendInput, {%A_ThisHotkey%}
   return
}
SendChat("Sie sind vorläufig festgenommen! Bitte kommen Sie mit!")
return

7::
IfWinNotActive, GTA:SA:MP 
{
   SendInput, {%A_ThisHotkey%}
   return
}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) 
{
   SendInput, {%A_ThisHotkey%}
   return
}
SendChat("/s SOFORT stehen bleiben, Widerstand Zwecklos!!!")
return

0::
IfWinNotActive, GTA:SA:MP 
{
   SendInput, {%A_ThisHotkey%}
   return
}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) 
{
   SendInput, {%A_ThisHotkey%}
   return
}
SendChat("/s Verlassen Sie SOFORT die Einsatzstelle oder wir eröffnen das Feuer!")
return

!L::
IfWinNotActive, GTA:SA:MP 
{
   SendInput, {%A_ThisHotkey%}
   return
}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) 
{
   SendInput, {%A_ThisHotkey%}
   return
}
SendChat("/sirene")
if (GetVehicleLightState() == 0)
{
   SendChat("/licht")
   SendChat("/sireneb")
} 
else 
{
   SendChat("/sireneb")
}
return

Numpad8::
IfWinNotActive, GTA:SA:MP 
{
   SendInput, {%A_ThisHotkey%}
   return
}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) 
{
   SendInput, {%A_ThisHotkey%}
   return
}
SendInput t/d Falsch geparktes Fahrzeug - Standort:{space}
Suspend On
Hotkey, Enter, On
Hotkey, Escape, On
Suspend Off
return

Numpad9::
IfWinNotActive, GTA:SA:MP 
{
   SendInput, {%A_ThisHotkey%}
   return
}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) 
{
   SendInput, {%A_ThisHotkey%}
   return
}
SendChat("Gehen Sie bitte runter zur letzten Zelle.")
return

NumpadMult::
IfWinNotActive, GTA:SA:MP 
{
   SendInput, {%A_ThisHotkey%}
   return
}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) 
{
   SendInput, {%A_ThisHotkey%}
   return
}
SendChat("/sperre")
return

:?:/waffenhandel::
Suspend Permit
SendInput /su  Illegaler Waffenhandel{home}{Right 4}
Suspend Off
return

:?:/behinderung::
Suspend Permit
SendInput /su  Behinderung der Justiz{home}{Right 4}
Suspend Off
Return

:?:/einbruch::
Suspend Permit
SendInput /su  Einbruch ins San Andreas Police Department{Home}{Right 4}
Suspend Off
return

:?:/hacker::
Suspend Permit
SendInput tID: {Space}
Input,aufnahme_hacker,V I M,{ENTER}
If !ErrorLevel
{
   SendChat("/su " aufnahme_hacker " Illegales Eindringen in den Polizeicomputer")
   SendChat("/su " aufnahme_hacker " Behinderung der Justiz")
   SendChat("/su " aufnahme_hacker " Beihilfe zur Flucht")
}
else
{
   AddChatMessage(0xFFFFFF, "Fehler, du hast zu lange gebraucht.")
}
Suspend Off
return

:?:/befreiung::
Suspend Permit
SendInput /su  Befreiung eines Verdächtigen{Home}{Right 4}
Suspend Off
return

:?:/iw::
Suspend Permit
SendInput /su  Illegaler Waffenhandel{Home}{Right 4}
Suspend Off
return

:?:/idk::
Suspend Permit
SendInput /su  Illegaler Drogenkonsum{Home}{Right 4}
Suspend Off
return

:?:/idh::
Suspend Permit
SendInput /su  Illegaler Drogenhandel{Home}{Right 4}
Suspend Off
return

:?:/eep::
Suspend Permit
SendInput /su  Entführung eines Polizeibeamten{Home}{Right 4}
Suspend Off
return

:?:/eez::
Suspend Permit
SendInput /su  Entführung eines Zivilisten{Home}{Right 4}
Suspend Off
return

:?:/fallschirm::
Suspend Permit
SendInput /su  Fallschirmspringen ausserhalb vom Flughafen{Home}{Right 4}
Suspend Off
return

:?:/bestechung::
Suspend Permit
SendInput /su  Versuchte Bestechung eines Polizeibeamten{Home}{Right 4}
Suspend Off
return

p::
IfWinNotActive, GTA:SA:MP 
{
   SendInput, {%A_ThisHotkey%}
   return
}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) 
{
   SendInput, {%A_ThisHotkey%}
   return
}
SendChat("/togloginlogout")
Suspend Off
return

b::
IfWinNotActive, GTA:SA:MP 
{
   SendInput, {%A_ThisHotkey%}
   return
}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) 
{
   SendInput, {%A_ThisHotkey%}
   return
}
Suspend Permit
SendChat("/drivein")
Sleep 250
SendInput {Down 2}
SendInput {Enter}
Sleep 250
SendInput {Enter}
Suspend Off
return

!NumpadAdd:
IfWinNotActive, GTA:SA:MP 
{
   SendInput, {%A_ThisHotkey%}
   return
}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) 
{
   SendInput, {%A_ThisHotkey%}
   return
}
Suspend Permit
SendChat("/d Benötige Verstärkung! Aktueller Standort: " GetZoneName(zone) "")
Suspend Off
return

.::
IfWinNotActive, GTA:SA:MP 
{
   SendInput, {%A_ThisHotkey%}
   return
}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) 
{
   SendInput, {%A_ThisHotkey%}
   return
}
SendChat("/s Alle runter auf den Boden (/anim hide) oder wir schießen!")
return

1::
IfWinNotActive, GTA:SA:MP 
{
   SendInput, {%A_ThisHotkey%}
   return
}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) 
{
   SendInput, {%A_ThisHotkey%}
   return
}
SendChat("/tazer")
return

<::
IfWinNotActive, GTA:SA:MP 
{
   SendInput, {%A_ThisHotkey%}
   return
}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) 
{
   SendInput, {%A_ThisHotkey%}
   return
}
SendChat("/zoll")
return

Lwin::
IfWinNotActive, GTA:SA:MP 
{
   SendInput, {%A_ThisHotkey%}
   return
}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) 
{
   SendInput, {%A_ThisHotkey%}
   return
}
SendChat("/wanted")
return

NumPadDot::
AppsKey::
IfWinNotActive, GTA:SA:MP 
{
   SendInput, {%A_ThisHotkey%}
   return
}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) 
{
   SendInput, {%A_ThisHotkey%}
   return
}
SendChat("/duty")
return

F5::
IniRead, IGPasswort, %pw%, Einstellungen, IGPasswort
id := GetPlayerID()
Sleep, 100
if(IsDialogOpen() == 1)
{
   SendInput %pw%{enter}
}
return

F10::
IfWinNotActive, GTA:SA:MP 
{
   SendInput, {%A_ThisHotkey%}
   return
}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) 
{
   SendInput, {%A_ThisHotkey%}
   return
}
SendInput t{up}{space}{enter}
return

F12::
IfWinNotActive, GTA:SA:MP 
{
   SendInput, {%A_ThisHotkey%}
   return
}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) 
{
   SendInput, {%A_ThisHotkey%}
   return
}
SendChat("/members")
SendChat("/cops")
return

End::
IfWinNotActive, GTA:SA:MP 
{
   SendInput, {%A_ThisHotkey%}
   return
}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) 
{
   SendInput, {%A_ThisHotkey%}
   return
}
Suspend Permit
SendInput {Enter}
SendChat("Das ist Ihre Chance, sobald der Countdown abgelaufen ist, wenden wir Gewalt an!")
Suspend Off
Hotkey, t, On
Sleep 1000
SendChat(">>3<<")
KeyWait, <, D T2
If !ErrorLevel
{
   SendChat("Vielen Dank für ihre Kooperation!")
   return
}
SendChat(">>2<<")
KeyWait, <, D T2
If !ErrorLevel
{
   SendChat("Vielen Dank für ihre Kooperation!")
   return
}
SendChat(">>1<<")
KeyWait, <, D T2
If !ErrorLevel
{
   SendChat("Vielen Dank für ihre Kooperation!")
   return
}
SendChat("Letzte Chance!")
Suspend Off
Hotkey, t, On
return

Home::
IfWinNotActive, GTA:SA:MP 
{
   SendInput, {%A_ThisHotkey%}
   return
}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) 
{
   SendInput, {%A_ThisHotkey%}
   return
}
Sleep 1000
SendChat("Sie haben jetzt 3 Möglichkeiten:")
Sleep 1000
SendChat("1. Sie weigern sich in den Wagen zu steigen --> wir eliminieren Sie --> doppelt so lange Strafe!")
Sleep 1000
SendChat("2. Sie versuchen zu fliehen --> 1 Wanted mehr und wir eliminieren Sie --> doppelt so lange Strafe!")
Sleep 1000
SendChat("3. Sie steigen in den Wagen und wir sperren sie normal ein.")
Sleep 1000
SendChat("Sie müssen wählen...")
return

:?:/tdl::
Suspend Permit
SendInput /take Fuehrerschein{space}
Suspend Off
return

:?:/tbl::
Suspend Permit
SendInput /take Motorradschein{space}
Suspend Off
return

:?:/tfl::
Suspend Permit
SendInput /take Flugschein{space}
Suspend Off
return

:?:/tlkw::
Suspend Permit
SendInput /take LKW-Schein{space}
Suspend Off
return

:?:/tw::
Suspend Permit
SendInput /take Waffen{space}
Suspend Off
return

:?:/tk::
Suspend Permit
SendInput /take Koffer{space}
Suspend Off
return

:?:/td::
Suspend Permit
SendInput /take Drogen{space}
Suspend Off
return

:?:/tm::
Suspend Permit
SendInput /take materialien{space}
Suspend Off
return

:?:/selbstmord::
Suspend Permit
SendInput /su  Selbstmord{home}{right 4}
Return

:?:/wticket::
Suspend Permit
SendChat("Sie besitzen Waffen ohne eine gültige Lizenz.")
SendChat("Aus diesem Grund erhalten Sie ein Ticket in höhe von 10.000$")
SendInput /ticket  10000 Waffenbesitz ohne gültige Lizenz{Left 38}
Suspend Off
return

:?:/mticket::
Suspend Permit
SendChat("Sie sind im Besitz von Illegalen Materialien.")
SendChat("Aus diesem Grund erhalten Sie ein Ticket in höhe von 5000$")
SendInput /ticket  5000 Illegaler Materialsbesitz{Left 31}
Suspend Off
return

:?:/dticket::
Suspend Permit
SendChat("Sie besitzen Illegale Drogen und verstoßen gegen das Betäubungsmittelschutzgesetz.")
SendChat("Aus diesem Grund erhalten Sie ein Ticket in höhe von 5000$")
SendInput /ticket  5000 Illegaler Drogenbesitz{Left 28}
Suspend Off
return

:?:/dmticket::
Suspend Permit
SendChat("Sie besitzen Illegale Drogen und Materialien.")
SendChat("Aus diesem Grund erhalten Sie ein Ticket in höhe von 10.000$")
SendInput /ticket  10000 Illegaler Drogen- und Materialsbesitz{home}{right 8}
Suspend Off
return

:?:/wmticket::
Suspend Permit
SendChat("Sie sind im Besitz von Waffen ohne eine gültige Lizenz und von Illegalen Materialien.")
SendChat("Aus diesem Grund erhalten Sie ein Ticket in höhe von 15.000$")
SendInput /ticket  15000 Illegaler Waffen- und Materialsbesitz{home}{right 8}
Suspend Off
return

:?:/wdticket::
Suspend Permit
SendChat("Sie sind im Besitz von Waffen ohne eine gültige Lizenz und von Illegalen Drogen.")
SendChat("Aus diesem Grund erhalten Sie ein Ticket in höhe von 15.000$")
SendInput /ticket  15000 Illegaler Waffen- und Drogenbesitz{home}{right 8}
Suspend Off
return

PGDN::
IfWinNotActive, GTA:SA:MP 
{
   SendInput, {%A_ThisHotkey%}
   return
}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) 
{
   SendInput, {%A_ThisHotkey%}
   return
}
SendChat("/d <---- Übernimmt den Auftrag!")
return

PGUP::
IfWinNotActive, GTA:SA:MP 
{
   SendInput, {%A_ThisHotkey%}
   return
}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) 
{
   SendInput, {%A_ThisHotkey%}
   return
}
SendChat("/d <---- hat den Auftrag ausgeführt!")
return

:?:/streife::
Suspend Permit
SendChat("/d <---- sucht einen Streifenpartner!")
Suspend Off
return

:?:/dete::
Suspend Permit
SendChat("/gov Liebe Bürgerinnen und Bürger von San Andreas,")
SendChat("/gov Wir suchen einen Detektiv!")
SendChat("/gov Als Voraussetzung stellen wir, dass Sie Skill 5 haben müssen.")
SendChat("/gov Bitte rufen Sie uns an! Vielen Dank!")
Suspend Off
return

:?:/ruhe::
Suspend Permit
SendChat("Sie haben das Recht zu Schweigen, alles was Sie jetzt sagen kann und wird vor Gericht gegen Sie verwendet!")
SendChat("Sie haben das Recht auf einen Anwalt. Sollten Sie nicht über ausreichend finanzielle Mittel verfügen,")
SendChat("wird Ihnen auch kein Anwalt gestellt.")
Suspend Off
return

:?:/copprison::
Suspend Permit
SendChat("Aufgrund ihrer Kriminalität werden wir Sie an ein Hochsicherheitsgefängnis übergeben.")
SendChat("Desweiteren wird Ihnen das Recht auf einen Anwalt untersagt!")
SendChat("Wir wünschen Ihnen noch einen angenehmen Aufenthalt und hoffen,")
SendChat("dass Sie versuchen ein besserer Mensch zu werden.")
Suspend Off
return

ü::
IfWinNotActive, GTA:SA:MP 
{
   SendInput, {%A_ThisHotkey%}
   return
}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) 
{
   SendInput, {%A_ThisHotkey%}
   return
}
Suspend Permit
SendChat("Sollten Sie das Ticket nicht bezahlen, bin ich gezwungen, Ihnen einen Wanted zu geben und Sie zu verhaften!")
Suspend Off
return

!ü::
IfWinNotActive, GTA:SA:MP 
{
   SendInput, {%A_ThisHotkey%}
   return
}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) 
{
   SendInput, {%A_ThisHotkey%}
   return
}
id := GetPlayerID()
Sleep, 10
SendChat("Bitte zeigen Sie mir Ihre Lizenzen (Geben Sie /zeigescheine " id " ein).")
return

:?:/peeticket::
Suspend Permit
SendInput /ticket  1000 Erregen Öffentlichen Ärgernisses{home}{right 8}
Suspend off
return

:?:/donut::
Suspend Permit
SendChat("/me holt seine Tüte mit Donuts raus und beginnt zu essen.. *mampf*")
Suspend Off
return

:?:/allg::
Suspend Permit
SendChat("/s >>> Allgemeine Verkehrskontrolle <<<")
SendChat("/s Schalten Sie bitte den Motor ab und steigen Sie aus dem Fahrzeug!")
Suspend off
return

:?:/ta::
Suspend permit
SendInput /take waffen{Space}
Input,Aufnahme2,V I M,{enter}
;IniWrite, %Aufnahme2%, %savepath%\%ininame%, Takeall, Takeall
KeyWait, enter, D,
If !ErrorLevel
   {
      Sleep 100
      SendChat("/take materialien " Aufnahme2 "")
      Sleep 100
      SendChat("/take drogen " Aufnahme2 "")
   }
Suspend Off
return

:?:/fa::
:?:/friskall::
Suspend Permit
SendInput /frisk{Space}
Input,Aufnahme3,V I M,{enter}
;IniWrite,%Aufnahme3%,%savepath%\%ininame%,Friskall,Friskeall
KeyWait, enter, D,
If !ErrorLevel
{
   Sleep 200
   SendChat("/friskweapons " Aufnahme3 "")
}
Suspend Off
return

8::
IfWinNotActive, GTA:SA:MP 
{
   SendInput, {%A_ThisHotkey%}
   return
}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) 
{
   SendInput, {%A_ThisHotkey%}
   return
}
Suspend permit
SendInput t/frisk{space}
Suspend Off
return

!8::
IfWinNotActive, GTA:SA:MP 
{
   SendInput, {%A_ThisHotkey%}
   return
}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) 
{
   SendInput, {%A_ThisHotkey%}
   return
}
Suspend Permit
SendInput t/friskweapons{space}
Suspend Off
return

:?:/notstandan::
Suspend Permit
SendChat("/gov N O T S T A N D")
SendChat("/gov Der NOTSTAND ist ausgerufen!")
SendChat("/gov Jeder ab 3 Wanteds wird erschossen!")
SendChat("/gov N O T S T A N D")
Suspend Off
return

:?:/notstandaus::
Suspend Permit
SendChat("/gov NOTSTAND ENDE")
SendChat("/gov Der NOTSTAND ist eingestellt!")
SendChat("/gov NOTSTAND ENDE")
Suspend Off
return

:?:/kannst::
SendChat("/d Die Treppe ist gesichert! Schicken Sie den Verdächtigen hoch!")
return

:?:/jas::
Suspend Permit
SendChat("Ja Sir, wie kann ich Ihnen helfen?")
Suspend Off
return

:?:/wo::
Suspend Permit
SendChat("/d Bitte geben Sie mir Ihren aktuellen Standort durch!")
Suspend Off
return

:?:/gpfalsche::
Suspend Permit
SendChat("Guten Tag,")
sleep 200
SendChat("Soeben fuhren Sie auf der falschen Straßenseite!")
sleep 200
SendChat("das bringt Ihnen 7 von 10 Punkten im Strafkatalog")
sleep 200
SendChat("Sollten Sie 10 Punkte voll haben, wird Ihr Führerschein eingezogen")
sleep 200
SendChat("Ihre aktuellen Strafpunkte können Sie unter /scheine einsehen.")
sleep 200
Suspend Off
SendInput ID:{Space}
Input,aufnahme_gpfalsche,V I M,{ENTER}
If !ErrorLevel
{
   SendChat("/sz " aufnahme_gpfalsche " 10000 Fahren auf Falscher Straßenseite")
   SendChat("/givepoints Car " aufnahme_gpfalsche " 7 Fahren auf Falscher Straßenseite")
}
else
{
AddChatMessage(0xFFFFFF, "Fehler, du hast zu lange gebraucht.")
}
PressedEnter=1
return

:?:/gpabseits::
Suspend Permit
SendChat("Guten Tag,")
sleep 200
SendChat("Soeben fuhren Sie Abseits der Straße!")
sleep 200
SendChat("das bringt Ihnen 4 von 10 Punkten im Strafkatalog!")
sleep 200
SendChat("Sollten Sie 10 Punkte voll haben, wird Ihr Führerschein eingezogen!")
sleep 200
SendChat("Ihre aktuellen Strafpunkte können Sie unter /scheine einsehen.")
sleep 200
Suspend Off
SendInput ID:{Space}
Input,aufnahme_gpabseits,V I M,{ENTER}
If !ErrorLevel
{
   SendChat("/sz " aufnahme_gpabseits " 5000 Fahren Abseits der Straße")
   SendChat("/givepoints Car " aufnahme_gpabseits " 4 Fahren Abseits der Straße")   
}
else
{
   AddChatMessage(0xFFFFFF, "Fehler, du hast zu lange gebraucht.")
}
PressedEnter=900
return

:?:/gpbikeabseits::
Suspend Permit
SendChat("Guten Tag,")
sleep 200
SendChat("Soeben fuhren Sie Abseits der Straße!")
sleep 200
SendChat("das bringt Ihnen 4 von 10 Punkten im Strafkatalog!")
sleep 200
SendChat("Sollten Sie 10 Punkte voll haben, wird Ihr MotorradFührerschein eingezogen!")
sleep 200
SendChat("Ihre aktuellen Strafpunkte können Sie unter /scheine einsehen.")
sleep 200
Suspend Off
SendInput tID:{Space}
Input,aufnahme_gpbikeabseits,V I M,{ENTER}
If !ErrorLevel
{
   SendChat("/sz " aufnahme_gpbikeabseits " 5000 Fahren Abseits der Straße")
   SendChat("/givepoints Bike " aufnahme_gpbikeabseits " 4 Fahren Abseits der Straße")   
}
else
{   
   AddChatMessage(0xFFFFFF, "Fehler, du hast zu lange gebraucht.")
}
PressedEnter=901
return

:?:/gplkwabseits::
Suspend Permit
SendChat("Guten Tag,")
sleep 200
SendChat("Soeben fuhren Sie Abseits der Straße!")
sleep 200
SendChat("das bringt Ihnen 4 von 10 Punkten im Strafkatalog!")
sleep 200
SendChat("Sollten Sie 10 Punkte voll haben, wird Ihr LKW-Führerschein eingezogen!")
sleep 200
SendChat("Ihre aktuellen Strafpunkte können Sie unter /scheine einsehen.")
sleep 200
Suspend Off
SendInput tID:{Space}
Input,aufnahme_gplkwabseits,V I M,{ENTER}
If !ErrorLevel
{
   SendChat("/sz " aufnahme_gplkwabseits " 5000 Fahren Abseits der Straße")
   SendChat("/givepoints LKW " aufnahme_gplkwabseits " 4 Fahren Abseits der Straße")   
}
else
{
   AddChatMessage(0xFFFFFF, "Fehler, du hast zu lange gebraucht.")
}
PressedEnter=902
return

:?:/gpbikefalsche::
Suspend Permit
SendChat("Guten Tag,")
sleep 200
SendChat("Soeben fuhren Sie auf der falschen Straßenseite!")
sleep 200
SendChat("das bringt Ihnen 7 von 10 Punkten im Strafkatalog!")
sleep 200
SendChat("Sollten Sie 10 Punkte voll haben, wird Ihr MotorradFührerschein eingezogen!")
sleep 200
SendChat("Ihre aktuellen Strafpunkte können Sie unter /scheine einsehen")
sleep 200
Suspend Off
SendInput tID:{Space}
Input,aufnahme_gpbikefalsche,V I M,{ENTER}
If !ErrorLevel
{
   SendChat("/sz " aufnahme_gpbikefalsche " 10000 Fahren auf Falscher Straßenseite")
   SendChat("/givepoints Bike " aufnahme_gpbikefalsche " 7 Fahren auf Falscher Straßenseite")  
}
else
{
   AddChatMessage(0xFFFFFF, "Fehler, du hast zu lange gebraucht.")
}
PressedEnter=2
return

:?:/gplkwfalsche::
Suspend Permit
SendChat("Guten Tag,")
sleep 200
SendChat("Soeben fuhren Sie auf der falschen Straßenseite!")
sleep 200
SendChat("das bringt Ihnen 7 von 10 Punkten im Strafkatalog!")
sleep 200
SendChat("Sollten Sie 10 Punkte voll haben, wird Ihr LKW-Schein eingezogen!")
sleep 200
SendChat("Ihre aktuellen Strafpunkte können Sie unter /scheine einsehen.")
sleep 200
Suspend Off
SendInput tID:{Space}
Input,aufnahme_gplkwfalsche,V I M,{ENTER}
If !ErrorLevel
{
   SendChat("/sz " aufnahme_gplkwfalsche " 10000 Fahren auf Falscher Straßenseite")
   SendChat("/givepoints LKW " aufnahme_gplkwfalsche " 7 Fahren auf Falscher Straßenseite")   
}
else
{
   AddChatMessage(0xFFFFFF, "Fehler, du hast zu lange gebraucht.")
}
PressedEnter=6
return

:?:/gpsach::
:?:/gpcarsach::
Suspend Permit
SendChat("Guten Tag,")
sleep 200
SendChat("Soeben haben sie Sachbeschädigung begangen!")
sleep 200
SendChat("das bringt Ihnen 3 von 10 Punkten im Strafkatalog!")
sleep 200
SendChat("Sollten Sie 10 Punkte auf Ihren Führerschein haben, wird dieser eingezogen!")
sleep 200
SendChat("Ihre aktuellen Strafpunkte können Sie unter /scheine einsehen.")
sleep 200
Suspend Off
SendInput tID:{Space}
Input,aufnahme_gpsach,V I M,{ENTER}
If !ErrorLevel
{
   SendChat("/sz " aufnahme_gpsach " 10000 Sachbeschädigung")
   SendChat("/givepoints Car " aufnahme_gpsach " 3 Sachbeschädigung")   
}
else
{
   AddChatMessage(0xFFFFFF, "Fehler, du hast zu lange gebraucht.")
}
PressedEnter=30
return

:?:/gpbikesach::
Suspend Permit
SendChat("Guten Tag,")
sleep 200
SendChat("Soeben haben sie Sachbeschädigung begangen!")
sleep 200
SendChat("das bringt Ihnen 3 von 10 Punkten im Strafkatalog!")
sleep 200
SendChat("Sollten Sie 10 Punkte voll haben, wird Ihr Bike-Schein eingezogen!")
sleep 200
SendChat("Ihre aktuellen Strafpunkte können Sie unter /scheine einsehen.")
sleep 200
Suspend Off
SendInput tID:{Space}
Input,aufnahme_gpbikesach,V I M,{ENTER}
If !ErrorLevel
{
   SendChat("/sz " aufnahme_gpbikesach " 10000 Sachbeschädigung")
   SendChat("/givepoints Bike " aufnahme_gpbikesach " 3 Sachbeschädigung")   
}
else
{   
   AddChatMessage(0xFFFFFF, "Fehler, du hast zu lange gebraucht.")
}
PressedEnter=31
return

:?:/gplkwsach::
Suspend Permit
SendChat("Guten Tag,")
sleep 200
SendChat("Soeben haben sie Sachbeschädigung begangen!")
sleep 200
SendChat("das bringt Ihnen 3 von 10 Punkten im Strafkatalog!")
sleep 200
SendChat("Sollten Sie 10 Punkte auf Ihren LKW-Führerschein haben, wird dieser eingezogen!")
sleep 200
SendChat("Ihre aktuellen Strafpunkte können Sie unter /scheine einsehen.")
sleep 200
Suspend Off
SendInput tID:{Space}
Input,aufnahme_gplkwsach,V I M,{ENTER}
If !ErrorLevel
{
   SendChat("/sz " aufnahme_gplkwsach " 10000 Sachbeschädigung")
   SendChat("/givepoints LKW " aufnahme_gplkwsach " 3 Sachbeschädigung")   
}
else
{  
   AddChatMessage(0xFFFFFF, "Fehler, du hast zu lange gebraucht.")
}
PressedEnter=32
return

:?:/gpunfall::
Suspend Permit
SendInput {Enter}
SendChat("Guten Tag,")
sleep 200
SendChat("Soeben verursachten Sie einen Unfall!")
sleep 200
SendChat("das bringt Ihnen 4 von 10 Punkten im Strafkatalog!")
sleep 200
SendChat("Sollten Sie 10 Punkte auf Ihren Führerschein haben, wird dieser eingezogen!")
sleep 200
SendChat("Ihre aktuellen Strafpunkte können Sie unter /scheine einsehen.")
sleep 200
Suspend Off
SendInput tID:{Space}
Input,aufnahme_gpunfall,V I M,{ENTER}
If !ErrorLevel
{
   SendChat("/sz " aufnahme_gpunfall " 6000 Verursachen eines Unfalls")
   SendChat("/givepoints Car " aufnahme_gpunfall " 4 Verursachen eines Unfalls")   
}
else
{   
   AddChatMessage(0xFFFFFF, "Fehler, du hast zu lange gebraucht.")
}
PressedEnter=3
return

:?:/gpbikeunfall::
Suspend Permit
SendChat("Guten Tag,")
sleep 200
SendChat("Soeben verursachten Sie einen Unfall!")
sleep 200
SendChat("das bringt Ihnen 4 von 10 Punkten im Strafkatalog!")
sleep 200
SendChat("Sollten Sie 10 Punkte auf Ihren MotorradFührerschein haben, wird dieser eingezogen!")
sleep 200
SendChat("Ihre vorhandenen Strafpunkte können Sie unter /scheine einsehen.")
sleep 200
Suspend Off
SendInput tID:{Space}
Input,aufnahme_gpbikeunfall,V I M,{ENTER}
If !ErrorLevel
{
   SendChat("/sz " aufnahme_gpunfall " 6000 Verursachen eines Unfalls")
   SendChat("/givepoints Bike " aufnahme_gpunfall " 4 Verursachen eines Unfalls")
}
else
{
   AddChatMessage(0xFFFFFF, "Fehler, du hast zu lange gebraucht.")
}
PressedEnter=4
return

:?:/gplkwunfall::
Suspend Permit
SendChat("Guten Tag,")
sleep 200
SendChat("Soeben verursachten Sie einen Unfall!")
sleep 200
SendChat("das bringt Ihnen 4 von 10 Punkten im Strafkatalog!")
sleep 200
SendChat("Sollten Sie 10 Punkte auf Ihren LKW-Führerschein haben, wird dieser eingezogen!")
sleep 200
SendChat("Ihre vorhandenen Strafpunkte können Sie unter /scheine einsehen.")
sleep 200
Suspend Off
SendInput tID:{Space}
Input,aufnahme_gplkwunfall,V I M,{ENTER}
If !ErrorLevel
{
   SendChat("/sz " aufnahme_gplkwunfall " 6000 Verursachen eines Unfalls")
   SendChat("/givepoints LKW " aufnahme_gplkwunfall " 4 Verursachen eines Unfalls")   
}
else
{   
   AddChatMessage(0xFFFFFF, "Fehler, du hast zu lange gebraucht.")
}
PressedEnter=5
return

:?:/gpramm::
Suspend Permit
SendChat("Guten Tag,")
sleep 200
SendChat("Soeben haben Sie andere Verkehrsteilnehmer gerammt!")
sleep 200
SendChat("das bringt Ihnen 7 von 10 Punkten im Strafkatalog!")
sleep 200
SendChat("Sollten Sie 10 Punkte auf Ihren Führerschein haben, wird dieser eingezogen!")
sleep 200
SendChat("Ihre aktuellen Strafpunkte können Sie unter /scheine einsehen.")
sleep 200
Suspend Off
SendInput tID:{Space}
Input,aufnahme_gpramm,V I M,{ENTER}
If !ErrorLevel
{
   SendChat("/sz " aufnahme_gpramm " 10000 Verursachen eines Unfalls")
   SendChat("/givepoints Car " aufnahme_gpramm " 7 Rammen im Straßenverkehr")   
}
else
{   
   AddChatMessage(0xFFFFFF, "Fehler, du hast zu lange gebraucht.")
}
PressedEnter=871
return

:?:/gpbikeramm::
Suspend Permit
SendChat("Guten Tag,")
sleep 200
SendChat("Soeben haben Sie andere Verkehrsteilnehmer gerammt!")
sleep 200
SendChat("das bringt Ihnen 7 von 10 Punkten im Strafkatalog!")
sleep 200
SendChat("Sollten Sie 10 Punkte voll haben, wird Ihr Motorradschein eingezogen!")
sleep 200
SendChat("Ihre aktuellen Strafpunkte können Sie unter /scheine einsehen.")
sleep 200
Suspend Off
SendInput tID:{Space}
Input,aufnahme_gpbikeramm,V I M,{ENTER}
If !ErrorLevel
{
   SendChat("/sz " aufnahme_gpbikeramm " 10000 Verursachen eines Unfalls")
   SendChat("/givepoints Bike " aufnahme_gpbikeramm " 7 Rammen im Straßenverkehr")   
}
else
{  
   AddChatMessage(0xFFFFFF, "Fehler, du hast zu lange gebraucht.")
}
PressedEnter=872
return

:?:/gplkwramm::
Suspend Permit
SendChat("Guten Tag,")
sleep 200
SendChat("Soeben haben Sie andere Verkehrsteilnehmer gerammt!")
sleep 200
SendChat("das bringt Ihnen 7 von 10 Punkten im Strafkatalog!")
sleep 200
SendChat("Sollten Sie 10 Punkte auf Ihren LKW-Führerschein haben, wird dieser eingezogen!")
sleep 200
SendChat("Ihre aktuellen Strafpunkte können Sie unter /scheine einsehen.")
sleep 200
Suspend Off
SendInput tID:{Space}
Input,aufnahme_gplkwramm,V I M,{ENTER}
If !ErrorLevel
{
   SendChat("/sz " aufnahme_gplkwramm " 10000 Verursachen eines Unfalls")
   SendChat("/givepoints LKW " aufnahme_gplkwramm " 7 Rammen im Straßenverkehr")   
}  
else
{   
   AddChatMessage(0xFFFFFF, "Fehler, du hast zu lange gebraucht.")
}
PressedEnter=873
return

:?:/tiefflug::
Suspend Permit
SendChat("Guten Tag,")
sleep 200
SendChat("Soeben sind sie zu tief geflogen!")
sleep 200
SendChat("das bringt Ihnen 10 von 10 Punkten im Strafkatalog!")
sleep 200
SendChat("Sollten Sie 10 Punkte voll haben, wird Ihr Flugschein entzogen!")
sleep 200
SendChat("Ihre vorhandenen Strafpunkte können Sie unter /scheine einsehen.")
sleep 200
Suspend Off
SendInput tID:{Space}
Input,aufnahme_tiefflug,V I M,{ENTER}
If !ErrorLevel
{
   SendChat("/sz " aufnahme_tiefflug " 30000 Tiefflug")
   SendChat("/givepoints Flug " aufnahme_tiefflug " 10 Tiefflug")   
}
else
{   
   AddChatMessage(0xFFFFFF, "Fehler, du hast zu lange gebraucht.")
}
PressedEnter=7
return

:?:/gplicht::
Suspend Permit
SendChat("Guten Tag,")
sleep 200
SendChat("Sie Haben bei diesen Wetterverhältnissen mit Licht zu Fahren!")
sleep 200
SendChat("das bringt Ihnen 1 von 10 Punkten im Strafkatalog!")
sleep 200
SendChat("Sollten Sie 10 Punkte auf Ihren Führerschein haben, wird dieser eingezogen!")
sleep 200
SendChat("Ihre vorhandenen Strafpunkte können Sie unter /scheine einsehen.")
sleep 200
Suspend Off
SendInput tID:{Space}
Input,aufnahme_gplicht,V I M,{ENTER}
If !ErrorLevel
{
   SendChat("/sz " aufnahme_gplicht " 2000 Fahren ohne Licht bei schlechten Wetterverhältnissen")
   SendChat("/givepoints Car " aufnahme_gplicht " 1 Fahren ohne Licht bei schlechten Wetterverhältnissen")   
}
else
{   
   AddChatMessage(0xFFFFFF, "Fehler, du hast zu lange gebraucht.")
}
PressedEnter=8
return

:?:/gpbikelicht::
Suspend Permit
SendChat("Guten Tag,")
sleep 200
SendChat("Sie Haben bei diesen Wetterverhältnissen mit Licht zu Fahren!")
sleep 200
SendChat("das bringt Ihnen 1 von 10 Punkten im Strafkatalog!")
sleep 200
SendChat("Sollten Sie 10 Punkte auf Ihren MotorradFührerschein haben, wird dieser eingezogen!")
sleep 200
SendChat("Ihre vorhandenen Strafpunkte können Sie unter /scheine einsehen.")
sleep 200
Suspend Off
SendInput tID:{Space}
Input,aufnahme_gpbikelicht,V I M,{ENTER}
If !ErrorLevel
{
   SendChat("/sz " aufnahme_gpbikelicht " 2000 Fahren ohne Licht bei schlechten Wetterverhältnissen")
   SendChat("/givepoints Bike " aufnahme_gpbikelicht " 1 Fahren ohne Licht bei schlechten Wetterverhältnissen")   
}
else
{   
   AddChatMessage(0xFFFFFF, "Fehler, du hast zu lange gebraucht.")
}
PressedEnter=9
return

:?:/gplkwlicht::
Suspend Permit
SendChat("Guten Tag,")
sleep 200
SendChat("Sie Haben bei diesen Wetterverhältnissen mit Licht zu Fahren!")
sleep 200
SendChat("das bringt Ihnen 1 von 10 Punkten im Strafkatalog!")
sleep 200
SendChat("Sollten Sie 10 Punkte auf Ihren LKW-Führerschein haben, wird dieser eingezogen!")
sleep 200
SendChat("Ihre vorhandenen Strafpunkte können Sie unter /scheine einsehen.")
sleep 200
Suspend Off
SendInput tID:{Space}
Input,aufnahme_gplkwlicht,V I M,{ENTER}
If !ErrorLevel
{
   SendChat("/sz " aufnahme_gplkwlicht " 2000 Fahren ohne Licht bei schlechten Wetterverhältnissen")
   SendChat("/givepoints LKW " aufnahme_gplkwlicht " 1 Fahren ohne Licht bei schlechten Wetterverhältnissen")   
}   
else
{   
   AddChatMessage(0xFFFFFF, "Fehler, du hast zu lange gebraucht.")
}
PressedEnter=20
return

:?:/gpblock::
Suspend Permit
SendChat("Guten Tag,")
sleep 200
SendChat("Sie Haben Soeben eines unserer Einsatzfahrzeuge Blockiert!")
sleep 200
SendChat("das bringt Ihnen 3 von 10 Punkten im Strafkatalog!")
sleep 200
SendChat("Sollten Sie 10 Punkte auf Ihren Führerschein haben, wird dieser eingezogen!")
sleep 200
SendChat("Ihre vorhandenen Strafpunkte können Sie unter /scheine einsehen.")
sleep 200
Suspend Off
SendInput tID:{Space}
Input,aufnahme_gpblock,V I M,{ENTER}
If !ErrorLevel
{
   SendChat("/sz " aufnahme_gpblock " 3000 Blockieren eines Einsatzfahrzeuges")
   SendChat("/givepoints Car " aufnahme_gpblock " 3 Blockieren eines Einsatzfahrzeuges")   
}
else
{   
   AddChatMessage(0xFFFFFF, "Fehler, du hast zu lange gebraucht.")
}
PressedEnter=10
return

:?:/gpbikeblock::
Suspend Permit
SendChat("Guten Tag,")
sleep 200
SendChat("Sie Haben Soeben eines unserer Einsatzfahrzeuge Blockiert!")
sleep 200
SendChat("das bringt Ihnen 3 von 10 Punkten im Strafkatalog!")
sleep 200
SendChat("Sollten Sie 10 Punkte auf Ihren MotorradFührerschein haben, wird dieser eingezogen!")
sleep 200
SendChat("Ihre vorhandenen Strafpunkte können Sie unter /scheine einsehen.")
sleep 200
Suspend Off
SendInput tID:{Space}
Input,aufnahme_gpbikeblock,V I M,{ENTER}
If !ErrorLevel
{
   SendChat("/sz " aufnahme_gpbikeblock " 3000 Blockieren eines Einsatzfahrzeuges")
   SendChat("/givepoints Car " aufnahme_gpbikeblock " 3 Blockieren eines Einsatzfahrzeuges")   
}   
else
{   
   AddChatMessage(0xFFFFFF, "Fehler, du hast zu lange gebraucht.")
}
PressedEnter=11
return

:?:/gplkwblock::
Suspend Permit
SendChat("Guten Tag,")
sleep 200
SendChat("Sie Haben Soeben eines unserer Einsatzfahrzeuge Blockiert!")
sleep 200
SendChat("das bringt Ihnen 3 von 10 Punkten im Strafkatalog!")
sleep 200
SendChat("Sollten Sie 10 Punkte auf Ihren LKW-Führerschein haben, wird dieser eingezogen!")
sleep 200
SendChat("Ihre vorhandenen Strafpunkte können Sie unter /scheine einsehen.")
sleep 200
Suspend Off
SendInput tID:{Space}
Input,aufnahme_gplkwblock,V I M,{ENTER}
If !ErrorLevel
{
   SendChat("/sz " aufnahme_gplkwblock " 3000 Blockieren eines Einsatzfahrzeuges")
   SendChat("/givepoints Car " aufnahme_gplkwblock " 3 Blockieren eines Einsatzfahrzeuges")   
}   
else
{  
   AddChatMessage(0xFFFFFF, "Fehler, du hast zu lange gebraucht.")
}

PressedEnter=19
return

:?:/gprechts::
Suspend Permit
SendChat("Guten Tag,")
sleep 200
SendChat("Sie Haben Soeben Rechts vor Links Missachtet!")
sleep 200
SendChat("das bringt Ihnen 3 von 10 Punkten im Strafkatalog!")
sleep 200
SendChat("Sollten Sie 10 Punkte auf Ihren Führerschein haben, wird dieser eingezogen!")
sleep 200
SendChat("Ihre vorhandenen Strafpunkte können Sie unter /scheine einsehen.")
sleep 200
Suspend Off
SendInput tID:{Space}
Input,aufnahme_gprechts,V I M,{ENTER}
If !ErrorLevel
{
   SendChat("/sz " aufnahme_gprechts " 3000 Missachtung von Rechts vor Links")
   SendChat("/givepoints Car " aufnahme_gprechts " 3 Missachtung von Rechts vor Links")   
}
else
{   
   AddChatMessage(0xFFFFFF, "Fehler, du hast zu lange gebraucht.")
}
PressedEnter=12
return

:?:/gpbikerechts::
Suspend Permit
SendChat("Guten Tag,")
sleep 200
SendChat("Sie Haben Soeben Rechts vor Links Missachtet!")
sleep 200
SendChat("das bringt Ihnen 3 von 10 Punkten im Strafkatalog!")
sleep 200
SendChat("Sollten Sie 10 Punkte auf Ihren MotorradFührerschein haben, wird dieser eingezogen!")
sleep 200
SendChat("Ihre vorhandenen Strafpunkte können Sie unter /scheine einsehen.")
sleep 200
Suspend Off
SendInput tID:{Space}
Input,aufnahme_gpbikerechts,V I M,{ENTER}
If !ErrorLevel
{
   SendChat("/sz " aufnahme_gpbikerechts " 2000 Missachtung von Rechts vor Links")
   SendChat("/givepoints Bike " aufnahme_gpbikerechts " 3 Missachtung von Rechts vor Links")   
}
else
{
   AddChatMessage(0xFFFFFF, "Fehler, du hast zu lange gebraucht.")
}
PressedEnter=13
return

:?:/gplkwrechts::
Suspend Permit
SendChat("Guten Tag,")
sleep 200
SendChat("Sie Haben Soeben Rechts vor Links Missachtet!")
sleep 200
SendChat("das bringt Ihnen 3 von 10 Punkten im Strafkatalog!")
sleep 200
SendChat("Sollten Sie 10 Punkte auf Ihren LKW-Führerschein haben, wird dieser eingezogen!")
sleep 200
SendChat("Ihre vorhandenen Strafpunkte können Sie unter /scheine einsehen.")
sleep 200
Suspend Off
SendInput tID:{Space}
Input,aufnahme_gplkwrechts,V I M,{ENTER}
If !ErrorLevel
{
   SendChat("/sz " aufnahme_gplkwrechts " 2000 Missachtung von Rechts vor Links")
   SendChat("/givepoints LKW " aufnahme_gplkwrechts " 3 Missachtung von Rechts vor Links")   
}
else
{  
   AddChatMessage(0xFFFFFF, "Fehler, du hast zu lange gebraucht.")
}
PressedEnter=14
return

:?:/gpnos::
Suspend Permit
SendChat("Guten Tag,")
sleep 200
SendChat("Sie haben soeben Nitro Benutzt!")
sleep 200
SendChat("Das kostet Sie ein Bußgeld von 2.000$")
sleep 200
suspend Off
SendInput tID:{Space}
Input,aufnahme_gpnos,V I M,{ENTER}
If !ErrorLevel
{
   SendChat("/sz " aufnahme_gpnos " 2000 Nitro im Öffentlichen Straßenverkehr")   
}
else
{
   AddChatMessage(0xFFFFFF, "Fehler, du hast zu lange gebraucht.")
}
return

:?:/gplkwnos::
Suspend Permit
SendChat("Guten Tag,")
sleep 200
SendChat("Sie Haben Soeben haben sie Nitro Benutzt!")
sleep 200
SendChat("Dies kostet Sie ein Bußgeld von 2.000$")
sleep 200
suspend off
SendInput tID:{Space}
Input,aufnahme_gplkwnos,V I M,{ENTER}
If !ErrorLevel
{
   SendChat("/sz " aufnahme_gplkwnos " 2000 Nitro im Öffentlichen Straßenverkehr")   
}
else
{   
   AddChatMessage(0xFFFFFF, "Fehler, du hast zu lange gebraucht.")
}

return

:?:/gpburn::
Suspend Permit
SendChat("Guten Tag,")
sleep 200
SendChat("Sie haben soeben einen Burnout gemacht!")
sleep 200
SendChat("das bringt Ihnen 1 von 10 Punkten im Strafkatalog.")
sleep 200
SendChat("Sollten Sie 10 Punkte auf Ihren Führerschein haben, wird dieser eingezogen!")
sleep 200
SendChat("Ihre vorhandenen Strafpunkte können Sie unter /scheine einsehen.")
sleep 200
Suspend Off
SendInput tID:{Space}
Input,aufnahme_gpburn,V I M,{ENTER}
If !ErrorLevel
{
   SendChat("/sz " aufnahme_gpburn " 1000 Burnouts im Öffentlichen Straßenverkehr")
   SendChat("/givepoints Car " aufnahme_gpburn " 1 Burnouts im Öffentlichen Straßenverkehr")   
}
else
{   
   AddChatMessage(0xFFFFFF, "Fehler, du hast zu lange gebraucht.")
}
PressedEnter=16
return

:?:/gpbikeburn::
Suspend Permit
SendChat("Guten Tag,")
sleep 200
SendChat("Sie Haben Soeben einen Burnout gemacht!")
sleep 200
SendChat("das bringt Ihnen 1 von 10 Punkten im Strafkatalog!")
sleep 200
SendChat("Sollten Sie 10 Punkte auf Ihren Motorradführerschein haben, wird dieser eingezogen!")
sleep 200
SendChat("Ihre vorhandenen Strafpunkte können Sie unter /scheine einsehen.")
sleep 200
Suspend Off
SendInput tID:{Space}
Input,aufnahme_gpbikeburn,V I M,{ENTER}
If !ErrorLevel
{
   SendChat("/sz " aufnahme_gpbikeburn " 1000 Burnouts im Öffentlichen Straßenverkehr")
   SendChat("/givepoints Bike " aufnahme_gpbikeburn " 1 Burnouts im Öffentlichen Straßenverkehr")   
}
else
{   
   AddChatMessage(0xFFFFFF, "Fehler, du hast zu lange gebraucht.")
}
PressedEnter=17
return

:?:/gpwheely::
Suspend Permit
SendChat("Guten Tag,")
sleep 200
SendChat("Sie Haben Soeben einen Wheely gemacht!")
sleep 200
SendChat("das bringt Ihnen 1 von 10 Punkten im Strafkatalog!")
sleep 200
SendChat("Sollten Sie 10 Punkte auf Ihren Motorradführerschein haben, wird dieser eingezogen!")
sleep 200
SendChat("Ihre vorhandenen Strafpunkte können Sie unter /scheine einsehen.")
sleep 200
Suspend Off
SendInput tID:{Space}
Input,aufnahme_gpwheely,V I M,{ENTER}
If !ErrorLevel
{
   SendChat("/sz " aufnahme_gpwheely " 1000 Burnouts im Öffentlichen Straßenverkehr")
   SendChat("/givepoints Bike " aufnahme_gpwheely " 1 Burnouts im Öffentlichen Straßenverkehr")   
}
else
{   
   AddChatMessage(0xFFFFFF, "Fehler, du hast zu lange gebraucht.")
}
PressedEnter=18
return

:?:/raus::
Suspend Permit
SendChat("/s Wir wissen das Sie hier sind!")
SendChat("/s Jetzt haben Sie noch die Chance sich zu ergeben, ansonsten")
SendChat("/S sehen wir uns gezwungen Waffengewalt anzuwenden!")
Suspend Off
return

:?:/razzia::
Suspend Permit
SendChat("/ram")
Sleep 300
SendChat("/me zückt eine Rauchgranate und wirft sie in den Raum")
SendChat("/s RAZZIAAAAAAA!!!")
Sleep 300
SendChat("/s Schmeissen Sie Sofort Ihre Waffen weg und Hände hoch!!!")
Suspend Off
return

ö::
SendInput {h down}
sleep 55
SendInput {h up}
return

:?:/scharfok::
Suspend Permit
SendChat("/d Scharfschützen in Stellung und Einsatzbereit")
Suspend Off
return

:?:/m4ok::
Suspend Permit
SendChat("/d M4 Schützen in Stellung und Einsatzbereit")
Suspend Off
return

:?:/räumok::
Suspend Permit
SendChat("/d Räumkommando in Stellung und Einsatzbereit")
Suspend Off
return

:?:/go::
:?:/los::
Suspend Permit
SendChat("/d Staffelleiter erlaubt Zugriff: GO GO GO!!")
Suspend Off
return

:?:/folgen::
Suspend Permit
SendChat("/m Bitte folgen Sie mir!")
Suspend Off
return

:?:/ok::
Suspend Permit
SendChat("/d Verstanden und bestätigt!")
Suspend Off
return

:?:/position::
ä::
IfWinNotActive, GTA:SA:MP 
{
   SendInput, {%A_ThisHotkey%}
   return
}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) {
   SendInput, {%A_ThisHotkey%}
   return
}
Suspend Permit
GetZoneName(zone)
SendChat("/d Meine aktueller Standort: " zone "")
Suspend Off
return

:?:/mnot::
Suspend Permit
SendChat("/d Ich übernehme den letzten Call 911-Notruf!")
Suspend Off
return

:?:/asex::
Suspend Permit
SendChat("/accept sex")
Suspend Off
Return

:?:/aref::
Suspend Permit
SendChat("/accept refill")
Suspend Off
Return

:?:/arep::
Suspend Permit
SendChat("/accept repair")
Suspend Off
Return

:?:/rep::
Suspend Permit
SendInput t/repair  100{left 4}
Suspend Off
Return

:?:/ref::
Suspend Permit
SendInput t/refill  100{left 4}
Suspend Off
Return

:?:/ühacker::
Suspend Permit
SendChat("/d <--- Übernimmt den Hacker")
SendChat("/d Mein Standort:" GetZoneName(zone))
Suspend Off
Return

:?:/banksperrels::
Suspend Permit
SendChat("/gov Liebe Bürger und Bürgerinnen von San Andreas,")
SendChat("/gov Bitte beachten Sie, dass die Bank Los Santos")
SendChat("/gov Sperrgebiet ist!")
SendChat("/gov Bei betreten wird auf sie geschossen!")
Suspend Off
return

:?:/banksperrelv::
Suspend Permit
SendChat("/gov Liebe Bürger und Bürgerinnen von San Andreas,")
SendChat("/gov Bitte beachten Sie, dass die Bank Las Ventuars")
SendChat("/gov Sperrgebiet ist!")
SendChat("/gov Bei betreten wird auf sie geschossen!")
Suspend Off
return

:?:/banksperresf::
Suspend Permit
SendChat("/gov Liebe Bürger und Bürgerinnen von San Andreas,")
SendChat("/gov Bitte beachten Sie, dass die Bank San Fiero")
SendChat("/gov Sperrgebiet ist!")
SendChat("/gov Bei betreten wird auf sie geschossen!")
Suspend Off
return

:?:/zollklslv::
Suspend Permit
SendChat("/gov Liebe Bürger und Bürgerinnen von San Andreas,")
SendChat("/gov Bitte beachten Sie, dass am Zoll LS/LV eine Verkehrskontrolle")
SendChat("/gov durchgeführt wird!")
Suspend Off
return

:?:/allezu::
Suspend Permit
SendChat("/zollcontrol Alle 1")
Suspend Off
return

:?:/alleauf::
Suspend Permit
SendChat("/zollcontrol Alle 0")
Suspend Off
return

:?:/lszu::
Suspend Permit
SendChat("/zollcontrol LS 1")
Suspend Off
return

:?:/lsauf::
Suspend Permit
SendChat("/zollcontrol LS 0")
Suspend Off
return

:?:/sfzu::
Suspend Permit
SendChat("/zollcontrol SF 1")
Suspend Off
return

:?:/sfauf::
Suspend Permit
SendChat("/zollcontrol SF 0")
Suspend Off
return

:?:/lvzu::
Suspend Permit
SendChat("/zollcontrol LV 1")
Suspend Off
return

:?:/lvauf::
Suspend Permit
SendChat("/zollcontrol LV 0")
Suspend Off
return

:?:/baysidezu::
Suspend Permit
SendChat("/zollcontrol bayside 1")
Suspend Off
return

:?:/baysideauf::
Suspend Permit
SendChat("/zollcontrol bayside 0")
Suspend Off
return