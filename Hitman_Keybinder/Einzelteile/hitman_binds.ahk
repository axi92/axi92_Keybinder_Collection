#IfWinActive, GTA:SA:MP ; Folgende Hotkeys Funktionieren nur wenn GTA SA:MP ge�ffnet ist

Numpad0::
IfWinNotActive, GTA:SA:MP
{
	SendInput, {%A_ThisHotkey%}
	return
}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) {
   SendInput, {%A_ThisHotkey%}
   return
}
SendChat("/lock")
return


b::
IfWinNotActive, GTA:SA:MP
{
	SendInput, {%A_ThisHotkey%}
	return
}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) {
   SendInput, {%A_ThisHotkey%}
   return
}
SendChat("/drivein")
return

<::
ß::
IfWinNotActive, GTA:SA:MP
{
	SendInput, {%A_ThisHotkey%}
	return
}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) {
   SendInput, {%A_ThisHotkey%}
   return
}
SendChat("/members")
return

:?:/con::
Suspend Permit
Sleep, 300
SendChat("/portable")
Sleep, 200
SendChat("Contracts")
AddChatMessage(0xFFFFFF, "ID?")
SendInput t
Input,aufnahme_con,V I M T10,{ENTER},*
If(aufnahme_con != "" OR aufnahme_con != 0)
{
    SendChat("TakeContract " aufnahme_con)
    Sleep, 200
    my_Id := GetPlayerId()
    Sleep, 100
    SendChat("Givehit " my_ID)
    Sleep, 200
    SendChat("/portable")
}
else
{
  AddChatMessage(0xFFFFFF, "Fehler, du hast zu lange gebraucht.")
}
Suspend Off
return


:?:/w1::
Suspend, Permit
SendChat("/portable")
SendChat("WaffenBestellung 1")
SendChat("/portable")
Suspend, Off
return 


:?:/w2::
Suspend, Permit
SendChat("/portable")
SendChat("WaffenBestellung 2")
SendChat("/portable")
Suspend, Off
return 


:?:/w3::
Suspend, Permit
SendChat("/portable")
SendChat("WaffenBestellung 3")
SendChat("/portable")
Suspend, Off
return 


:?:/w4::
Suspend, Permit
SendChat("/portable")
SendChat("WaffenBestellung 4")
SendChat("/portable")
Suspend, Off
return 


:?:/w5::
Suspend, Permit
SendChat("/portable")
SendChat("WaffenBestellung 5")
SendChat("/portable")
Suspend, Off
return 


:?:/w6::
Suspend, Permit
SendChat("/portable")
SendChat("WaffenBestellung 6")
SendChat("/portable")
Suspend, Off
return 


:?:/w7::
Suspend, Permit
SendChat("/portable")
SendChat("WaffenBestellung 7")
SendChat("/portable")
Suspend, Off
return 