F2::
Suspend On
Hotkey, Enter, On
Hotkey, Escape, On
Hotkey, t, Off
Send t/acceptrevival{space}
return

F3::
SendChat("/anrufliste")
return

F4::
SendChat("/s 100l Benzin = 500$; Reparieren = 100$")
return

F5::
SendChat("/m Für Heilung bitte mit `G einsteigen!")
return

F10::
SendChat("/m Bitte umfahren Sie die Unfallstelle")
return

Numpad7::
if(IsChatOpen() == 1 || IsDialogOpen() == 1 || IsMenuOpen() == 1)
{
    return
}
SendChat("/medicport ls")
return

Numpad8::
if(IsChatOpen() == 1 || IsDialogOpen() == 1 || IsMenuOpen() == 1)
{
    return
}
SendChat("/medicport sf")
return

NumpadAdd::
SendChat("/medicport base")
return

.::
if(IsChatOpen() == 1 || IsDialogOpen() == 1 || IsMenuOpen() == 1)
{
    return
}
SendChat("/me beginnt mit den Wiederbelebungsmaßnahmen")
SendChat("/revival")
return

,::
if(IsChatOpen() == 1 || IsDialogOpen() == 1 || IsMenuOpen() == 1)
{
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
return