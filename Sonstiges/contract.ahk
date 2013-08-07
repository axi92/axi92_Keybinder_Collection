:?:/con::
Suspend Permit
Sleep, 300
AddChatMessage(0xFFFFFF, "ID?")
SendInput t
Input,aufnahme_con,V I M T10,{ENTER},*
If(aufnahme_con != "" OR aufnahme_con != 0)
{
	GetPlayerData()
	SendChat("/portable")
	Sleep, 200
	SendChat("Contracts")
	Sleep, 200
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