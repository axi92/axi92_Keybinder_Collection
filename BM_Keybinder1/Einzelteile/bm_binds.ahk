1::
if(IsChatOpen() == 1 || IsDialogOpen() == 1) {
   SendInput, {%A_ThisHotkey%}
   return
}
Suspend Permit
SendChat("/bmopen")
Suspend Off
return

2::
if(IsChatOpen() == 1 || IsDialogOpen() == 1 || GetVehicleModel() == 519 || GetVehicleModel() == 520) {
   SendInput, {%A_ThisHotkey%}
   return
}
Suspend Permit
SendChat("/s _____________________________________________")
SendChat("/s Halten Sie sich vom Auto des Präsidenten fern!")
SendChat("/s _____________________________________________")
Suspend Off
return

3::
if(IsChatOpen() == 1 || IsDialogOpen() == 1) {
   SendInput, {%A_ThisHotkey%}
   return
}
Suspend Permit
SendChat("/s Räumen Sie die Straße!")
Suspend Off
return

:?:/kbhelp::
Suspend Permit
AddChatMessage(0xFF3366, "_____________________________________________")
AddChatMessage(0xFFFFFF, "Pause = Keybinder pausieren")
AddChatMessage(0xFFFFFF, "Linke Strg = Motor")
AddChatMessage(0xFFFFFF, "1 = /bmopen")
AddChatMessage(0xFFFFFF, "2 = Halten Sie sich vom Auto des Präsidenten fern!")
AddChatMessage(0xFFFFFF, "3 = Räumen Sie die Straße!")
AddChatMessage(0xFF3366, "_____________________________________________")
Suspend Off
return