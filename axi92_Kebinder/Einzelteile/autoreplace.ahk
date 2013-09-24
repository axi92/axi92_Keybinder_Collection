#IfWinActive, GTA:SA:MP ; Folgende Hotkeys Funktionieren nur wenn GTA SA:MP ge�ffnet ist
Tab::
Suspend Permit
IfWinNotActive, GTA:SA:MP
{
   SendInput, {%A_ThisHotkey%}
   Suspend Off
   return
}
if(debug == true)
{
	AddChatMessage(0xFF0000, "DEBUG: TAB OK!") 
}
if(IsChatOpen() == 1) 
{
	if(debug == true)
	{
		AddChatMessage(0xFF0000, "DEBUG: TAB IsChatOpen == 1") 
	}
	Chat := IsChatOpen()
	Clipboard_old := Clipboard
	Send {ctrl down}ac{ctrl up}{Right}
	autoreplace := Clipboard
	Clipboard := Clipboard_old
	RegExMatch(autoreplace, "(\d{1,3})$" ,var)
	var_length := StrLen(var)
	GetPlayerData()
	GetPlayerNameById(var, name)
	;~ SendChat(var_length)
	if(name != -1)
	{
		Send {Backspace %var_length%}%name%
	}
	Suspend Off
	Return
}
else 
{
	SendInput, {%A_ThisHotkey%}
	if(debug == true)
	{
		AddChatMessage(0xFF0000, "DEBUG: TAB IsChatOpen == 0") 
	}
	return
}