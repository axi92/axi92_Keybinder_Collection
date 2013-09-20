#IfWinActive, GTA:SA:MP ; Folgende Hotkeys Funktionieren nur wenn GTA SA:MP ge�ffnet ist
Tab::
IfWinNotActive, GTA:SA:MP
{
   SendInput, {%A_ThisHotkey%}
   return
}
if(IsChatOpen() == 1) 
{
	Suspend Permit
	Chat := IsChatOpen()
	Clipboard_old := Clipboard
	Send {ctrl down}ac{ctrl up}{Right}
	autoreplace := Clipboard
	Clipboard := Clipboard_old
	RegExMatch(autoreplace, "(\d*)$" ,var)
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
   return
}