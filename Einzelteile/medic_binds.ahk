F2::
Suspend, Permit
Send t/acceptrevival{space}
Suspend, Off
return

F3::
if(IsChatOpen() == 1 || IsDialogOpen() == 1) {
   SendInput, {%A_ThisHotkey%}
   return
}
SendChat("/anrufliste")
return

F4::
if(IsChatOpen() == 1 || IsDialogOpen() == 1) {
   SendInput, {%A_ThisHotkey%}
   return
}
SendChat("/s 100l Benzin = 500$; Reparieren = 100$")
return

F5::
if(IsChatOpen() == 1 || IsDialogOpen() == 1) {
   SendInput, {%A_ThisHotkey%}
   return
}
SendChat("/m Für Heilung bitte mit `G einsteigen!")
return

F10::
if(IsChatOpen() == 1 || IsDialogOpen() == 1) {
   SendInput, {%A_ThisHotkey%}
   return
}
SendChat("/m Bitte umfahren Sie die Unfallstelle")
return

Numpad7::
if(IsChatOpen() == 1 || IsDialogOpen() == 1) {
   SendInput, {%A_ThisHotkey%}
   return
}
SendChat("/medicport ls")
return

Numpad8::
if(IsChatOpen() == 1 || IsDialogOpen() == 1) {
   SendInput, {%A_ThisHotkey%}
   return
}
SendChat("/medicport sf")
return

Numpad9::
if(IsChatOpen() == 1 || IsDialogOpen() == 1) {
   SendInput, {%A_ThisHotkey%}
   return
}
SendChat("/medicport lv")
return

NumpadAdd::
if(IsChatOpen() == 1 || IsDialogOpen() == 1) {
   SendInput, {%A_ThisHotkey%}
   return
}
SendChat("/medicport base")
return

.::
if(IsChatOpen() == 1 || IsDialogOpen() == 1) {
   SendInput, {%A_ThisHotkey%}
   return
}
SendChat("/me beginnt mit den Wiederbelebungsmaßnahmen")
SendChat("/revival")
return

,::
if(IsChatOpen() == 1 || IsDialogOpen() == 1) {
   SendInput, {%A_ThisHotkey%}
   return
}
SendChat("/me prüft den Puls des Patienten")
return

End::
Suspend On
Hotkey, Enter, On
Hotkey, Escape, On
Hotkey, t, Off
Send t/heal  500{Left 4}
Keywait, ENTER, D, T10
if !errorLevel
{
   Sleep,500
   GetChatLine(0, str)
   if InStr(str, "bereits maximales Heal")
      SendChat("Du hast schon mehr als 100HP ich kann dich leider nicht heilen!")
}
return

:?:/kbhelp::
Suspend Permit
AddChatMessage(0xFF3366, "_____________________________________________")
AddChatMessage(0xFFFFFF, "Pause = Keybinder pausieren")
AddChatMessage(0xFFFFFF, "Linke Strg = Motor")
AddChatMessage(0xFFFFFF, "F2 = /acceptrevival")
AddChatMessage(0xFFFFFF, "F3 = /anrufliste")
AddChatMessage(0xFFFFFF, "F5 = Für Heilung bitte mit G einsteigen!")
AddChatMessage(0xFFFFFF, "F10 = Bitte umfahren Sie die Unfallstelle")
AddChatMessage(0xFFFFFF, "Numpad7 = Medicport LS")
AddChatMessage(0xFFFFFF, "Numpad8 = Medicport SF")
AddChatMessage(0xFFFFFF, "Numpad9 = Medicport LV")
AddChatMessage(0xFFFFFF, "Numpad+ = Medicport Base")
AddChatMessage(0xFFFFFF, "Punkt (.) = /revival")
AddChatMessage(0xFFFFFF, "Ende = Heal")
AddChatMessage(0xFFFFFF, "/tempomat")
AddChatMessage(0xFFFFFF, "/ab = Anrufabsage, verweis auf SMS")
AddChatMessage(0xFFFFFF, "1 = [EINSATZ] Bitte räumen sie SOFORT die Straße")
AddChatMessage(0xFFFFFF, "3 = Sirene und Sireneb")
AddChatMessage(0xFFFFFF, "/lgc = /listgangcars")
AddChatMessage(0xFF3366, "_____________________________________________")
Suspend Off
return

:?:/ab::
Suspend Permit
SendChat("/p")
Sleep, 300
SendChat("Ich bin derzeit schwer beschäftigt und kann desswegen nicht reden,")
Sleep, 200
SendChat("bitte schreibe eine SMS!")
Sleep, 200
SendChat("/h")
Suspend Off
return

1::
if(IsChatOpen() == 1 || IsDialogOpen() == 1 || !IsPlayerInAnyVehicle() == 1) {
   SendInput, {%A_ThisHotkey%}
   return
}
Suspend Permit
SendChat("/m [EINSATZ] Bitte räumen sie SOFORT die Straße")
Suspend Off
return

:?:/lgc::
Suspend Permit
SendChat("/listgangcars")
Suspend Off
return

3::
if(IsChatOpen() == 1 || IsDialogOpen() == 1 || GetVehicleModel() == 519 || GetVehicleModel() == 520) {
   SendInput, {%A_ThisHotkey%}
   return
}
Suspend Permit
SendChat("/sirene")
SendChat("/sireneb")
Suspend Off
return