#IfWinActive, GTA:SA:MP ; Folgende Hotkeys Funktionieren nur wenn GTA SA:MP ge�ffnet ist

:?:/medichelp::
Suspend, Permit
if(frakid != 4)
{
   AddChatMessage(0xFF3366, "Du bist kein Medic, wenn doch mache bitte relog!")
   Suspend, Off
   return
}
Sleep, 500
ShowDialog(0, ">>Medic Hilfe<<", "Pause = Keybinder pausieren`n^ = Motor`nNum(-) = /duty +Showme`nF2 = /acceptrevival`nF3 = /anrufliste`nF5 = Für Heilung bitte mit G einsteigen!`nF10 = Bitte umfahren Sie die Unfallstelle`nNumpad7 = Medicport LS`nNumpad8 = Medicport SF`nNumpad9 = Medicport LV`nNumpad+ = Medicport Base`nPunkt (.) = /revival`nEnde = Heal`n/tempomat`n/ab = Anrufabsage, verweis auf SMS`n1 = [EINSATZ] Bitte räumen sie SOFORT die Straße`n3 = Sirene und Sireneb`n/lgc = /listgangcars`n/sound`n/overlay", "Beenden")
Suspend, Off
return

F2::
IfWinNotActive, GTA:SA:MP
{
   SendInput, {%A_ThisHotkey%}
   return
}
if(frakid != "4")
{
   AddChatMessage(0xFF3366, "Du bist kein Medic, wenn doch mache bitte relog!")
   Sleep, 100
   return
}
Suspend, Permit
Send t/acceptrevival{space}
Suspend, Off
return

F3::
IfWinNotActive, GTA:SA:MP
{
   SendInput, {%A_ThisHotkey%}
   return
}
if(frakid != 4)
{
   AddChatMessage(0xFF3366, "Du bist kein Medic, wenn doch mache bitte relog!")
   return
}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) {
   SendInput, {%A_ThisHotkey%}
   return
}
SendChat("/anrufliste")
return

F4::
IfWinNotActive, GTA:SA:MP
{
   SendInput, {%A_ThisHotkey%}
   return
}
if(frakid != 4)
{
   AddChatMessage(0xFF3366, "Du bist kein Medic, wenn doch mache bitte relog!")
   return
}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) {
   SendInput, {%A_ThisHotkey%}
   return
}
SendChat("/s 100l Benzin = 500$; Reparieren = 100$")
return

F5::
IfWinNotActive, GTA:SA:MP
{
   SendInput, {%A_ThisHotkey%}
   return
}
if(frakid != 4)
{
   AddChatMessage(0xFF3366, "Du bist kein Medic, wenn doch mache bitte relog!")
   return
}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) {
   SendInput, {%A_ThisHotkey%}
   return
}
SendChat("/m Für Heilung bitte mit `G einsteigen!")
return

F10::
IfWinNotActive, GTA:SA:MP
{
   SendInput, {%A_ThisHotkey%}
   return
}
if(frakid != 4)
{
   AddChatMessage(0xFF3366, "Du bist kein Medic, wenn doch mache bitte relog!")
   return
}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) {
   SendInput, {%A_ThisHotkey%}
   return
}
SendChat("/m Bitte umfahren Sie die Unfallstelle")
return

Numpad7::
IfWinNotActive, GTA:SA:MP
{
   SendInput, {%A_ThisHotkey%}
    return
}
if(frakid != 4)
{
   AddChatMessage(0xFF3366, "Du bist kein Medic, wenn doch mache bitte relog!")
   return
}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) {
   SendInput, {%A_ThisHotkey%}
   return
}
SendChat("/medicport ls")
return

Numpad8::
IfWinNotActive, GTA:SA:MP
{
   SendInput, {%A_ThisHotkey%}
   return
}
if(frakid != 4)
{
   AddChatMessage(0xFF3366, "Du bist kein Medic, wenn doch mache bitte relog!")
   return
}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) {
   SendInput, {%A_ThisHotkey%}
   return
}
SendChat("/medicport sf")
return

Numpad9::
IfWinNotActive, GTA:SA:MP
{
   SendInput, {%A_ThisHotkey%}
   return
}
if(frakid != 4)
{
   AddChatMessage(0xFF3366, "Du bist kein Medic, wenn doch mache bitte relog!")
   return
}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) {
   SendInput, {%A_ThisHotkey%}
   return
}
SendChat("/medicport lv")
return

NumpadAdd::
IfWinNotActive, GTA:SA:MP
{
   SendInput, {%A_ThisHotkey%}
   return
}
if(frakid != 4)
{
   AddChatMessage(0xFF3366, "Du bist kein Medic, wenn doch mache bitte relog!")
   return
}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) {
   SendInput, {%A_ThisHotkey%}
   return
}
SendChat("/medicport base")
return

.::
IfWinNotActive, GTA:SA:MP
{
   SendInput, {%A_ThisHotkey%}
   return
}
if(frakid != 4)
{
   AddChatMessage(0xFF3366, "Du bist kein Medic, wenn doch mache bitte relog!")
   return
}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) {
   SendInput, {%A_ThisHotkey%}
   return
}
SendChat("/me beginnt mit den Wiederbelebungsmaßnahmen")
SendChat("/revival")
return

,::
IfWinNotActive, GTA:SA:MP
{
   SendInput, {%A_ThisHotkey%}
   return
}
if(frakid != 4)
{
   AddChatMessage(0xFF3366, "Du bist kein Medic, wenn doch mache bitte relog!")
   return
}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) {
   SendInput, {%A_ThisHotkey%}
   return
}
SendChat("/me prüft den Puls des Patienten")
return

End::
IfWinNotActive, GTA:SA:MP
{
   SendInput, {%A_ThisHotkey%}
   return
}
if(frakid != 4)
{
   AddChatMessage(0xFF3366, "Du bist kein Medic, wenn doch mache bitte relog!")
   return
}
Suspend On
Hotkey, Enter, On
Hotkey, Escape, On
Hotkey, t, Off
Send t/heal  5{Left 2}
Keywait, ENTER, D, T10
if !errorLevel
{
   Sleep,500
   GetChatLine(0, str)
   if InStr(str, "bereits maximales Heal")
      SendChat("Du hast schon mehr als 100HP ich kann dich leider nicht heilen!")
}
return

;~ :?:/medichelp::
;~ if(frakid != 4)
;~ {
   ;~ AddChatMessage(0xFF3366, "Du bist kein Medic, wenn doch mache bitte relog!")
   ;~ return
;~ }
;~ Suspend Permit
;~ AddChatMessage(0xFF3366, "_____________________________________________")
;~ AddChatMessage(0xFFFFFF, "Pause = Keybinder pausieren")
;~ AddChatMessage(0xFFFFFF, "^ = Motor")
;~ AddChatMessage(0xFFFFFF, "Num(-) = /duty +Showme")
;~ AddChatMessage(0xFFFFFF, "F2 = /acceptrevival")
;~ AddChatMessage(0xFFFFFF, "F3 = /anrufliste")
;~ AddChatMessage(0xFFFFFF, "F5 = Für Heilung bitte mit G einsteigen!")
;~ AddChatMessage(0xFFFFFF, "F10 = Bitte umfahren Sie die Unfallstelle")
;~ AddChatMessage(0xFFFFFF, "Numpad7 = Medicport LS")
;~ AddChatMessage(0xFFFFFF, "Numpad8 = Medicport SF")
;~ AddChatMessage(0xFFFFFF, "Numpad9 = Medicport LV")
;~ AddChatMessage(0xFFFFFF, "Numpad+ = Medicport Base")
;~ AddChatMessage(0xFFFFFF, "Punkt (.) = /revival")
;~ AddChatMessage(0xFFFFFF, "Ende = Heal")
;~ AddChatMessage(0xFFFFFF, "/tempomat")
;~ AddChatMessage(0xFFFFFF, "/ab = Anrufabsage, verweis auf SMS")
;~ AddChatMessage(0xFFFFFF, "1 = [EINSATZ] Bitte räumen sie SOFORT die Straße")
;~ AddChatMessage(0xFFFFFF, "3 = Sirene und Sireneb")
;~ AddChatMessage(0xFFFFFF, "/lgc = /listgangcars")
;~ AddChatMessage(0xFFFFFF, "/sound")
;~ AddChatMessage(0xFFFFFF, "/overlay")
;~ AddChatMessage(0xFF3366, "_____________________________________________")
;~ Suspend Off
;~ return

1::
IfWinNotActive, GTA:SA:MP
{
   SendInput, {%A_ThisHotkey%}
   return
}
if(frakid != 4)
{
   AddChatMessage(0xFF3366, "Du bist kein Medic, wenn doch mache bitte relog!")
   return
}
if(IsChatOpen() == 1 || IsDialogOpen() == 1 || !IsPlayerInAnyVehicle() == 1) {
   SendInput, {%A_ThisHotkey%}
   return
}
Suspend Permit
SendChat("/m [EINSATZ] Bitte räumen sie SOFORT die Straße")
Suspend Off
return

:?:/lgc::
if(frakid != 4)
{
   Suspend Permit
   AddChatMessage(0xFF3366, "Du bist kein Medic, wenn doch mache bitte relog!")
   Suspend Off
   return
}
Suspend Permit
SendChat("/listgangcars")
Suspend Off
return

NumpadSub::
IfWinNotActive, GTA:SA:MP
{
   SendInput, {%A_ThisHotkey%}
   return
}
if(frakid != 4)
{
   AddChatMessage(0xFF3366, "Du bist kein Medic, wenn doch mache bitte relog!")
   return
}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) {
   SendInput, {%A_ThisHotkey%}
   return
}
Suspend Permit
SendChat("/duty")
;~ Sleep, 500
;~ GetChatLine(0, str0)
;~ dutystr := "Du bist nun im Dienst als Medic und wirst Notrufe empfangen."
   ;~ if InStr(str0, dutystr)
   ;~ {
      ;~ SendChat("/showme")
      ;~ Loopstart1:
      ;~ if (IsDialogOpen() != 1)
      ;~ {
         ;~ Sleep, 500
         ;~ Goto, Loopstart1
      ;~ }
      ;~ else
      ;~ {
         ;~ Sleep, 100
         ;~ Send {DOWN 3}
         ;~ Sleep, 100
         ;~ Send {ENTER}
      ;~ }
   ;~ }  
   ;~ else
   ;~ {
      ;~ SendChat("/showme")
      ;~ Loopstart2:
      ;~ if (IsDialogOpen() != 1)
      ;~ {
         ;~ Sleep, 500
         ;~ Goto, Loopstart2
      ;~ }
      ;~ else
      ;~ {
         ;~ Sleep, 100
         ;~ Send {DOWN 6}
         ;~ Sleep, 100
         ;~ Send {ENTER}
      ;~ }
   ;~ }  
;~ Sleep, 300
;~ AddChatMessage(0xFF3366, "                                             ")
;~ AddChatMessage(0xFF3366, "                                             ")
;~ AddChatMessage(0xFF3366, "                                             ")
;~ AddChatMessage(0xFF3366, "                                             ")
;~ AddChatMessage(0xFF3366, "                                             ")
;~ AddChatMessage(0xFF3366, "                                             ")
;~ AddChatMessage(0xFF3366, "                                             ")
;~ AddChatMessage(0xFF3366, "                                             ")
;~ AddChatMessage(0xFF3366, "                                             ")
Suspend Off
return

^Numpad1::
IfWinNotActive, GTA:SA:MP
{
   SendInput, {%A_ThisHotkey%}
   return
}
if(frakid != 4)
{
   AddChatMessage(0xFF3366, "Du bist kein Medic, wenn doch mache bitte relog!")
   return
}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) {
   SendInput, {%A_ThisHotkey%}
   return
}
Suspend on
SendChat("/r >> Status 1 <<")
Suspend off
return

^Numpad2::
IfWinNotActive, GTA:SA:MP
{
   SendInput, {%A_ThisHotkey%}
   return
}
if(frakid != 4)
{
   AddChatMessage(0xFF3366, "Du bist kein Medic, wenn doch mache bitte relog!")
   return
}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) {
   SendInput, {%A_ThisHotkey%}
   return
}
suspend on
SendChat("/r >> Status 2 <<")
Suspend off
return

^Numpad3::
IfWinNotActive, GTA:SA:MP
{
   SendInput, {%A_ThisHotkey%}
   return
}
if(frakid != 4)
{
   AddChatMessage(0xFF3366, "Du bist kein Medic, wenn doch mache bitte relog!")
   return
}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) {
   SendInput, {%A_ThisHotkey%}
   return
}
Suspend on
SendChat("/r >> Status 3 <<")
Suspend off
return

^Numpad4::
IfWinNotActive, GTA:SA:MP
{
   SendInput, {%A_ThisHotkey%}
   return
}
if(frakid != 4)
{
   AddChatMessage(0xFF3366, "Du bist kein Medic, wenn doch mache bitte relog!")
   return
}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) {
   SendInput, {%A_ThisHotkey%}
   return
}
suspend on
SendChat("/r >> Status 4 <<")
Suspend off
return

^Numpad5::
IfWinNotActive, GTA:SA:MP
{
   SendInput, {%A_ThisHotkey%}
   return
}
if(frakid != 4)
{
   AddChatMessage(0xFF3366, "Du bist kein Medic, wenn doch mache bitte relog!")
   return
}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) {
   SendInput, {%A_ThisHotkey%}
   return
}
Suspend on
SendChat("/r >> Status 5 <<")
Suspend off
return

^Numpad6::
If ( IsChatOpen() = 1 || IsDialogOpen() = 1 || IsMenuOpen() = 1 )
{
   SendInput, {%A_ThisHotkey%}
   return
}
IfWinNotActive, GTA:SA:MP
{
   SendInput, {%A_ThisHotkey%}
   return
}
if(frakid != 4)
{
   AddChatMessage(0xFF3366, "Du bist kein Medic, wenn doch mache bitte relog!")
   return
}
Suspend on
SendChat("/r >> Status 6 <<")
Suspend off
return

LShift & WheelUp::
If ( IsChatOpen() = 1 || IsDialogOpen() = 1 || IsMenuOpen() = 1 )
{
   SendInput, {%A_ThisHotkey%}
   return
}
IfWinNotActive, GTA:SA:MP
{
   SendInput, {%A_ThisHotkey%}
   return
}
if(frakid != 4)
{
   AddChatMessage(0xFF3366, "Du bist kein Medic, wenn doch mache bitte relog!")
   return
}
if(GetVehicleModelId() == 416)
{
   SendChat("/sireneb")
   SendChat("/attachobjecttovehicle 19419 0 -3.2 1.75 0 0 0")
   Sleep, 500
}