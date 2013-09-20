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
	;~ SendChat(Clipboard)
	Clipboard := Clipboard_old
	;~ RegExMatch(autoreplace, "?[0-9][0-9][0-9]{3}$" ,var)
	RegExMatch(autoreplace, "(\d*)$" ,var)
	SendChat(var)
	GetPlayerData()
	test := GetPlayerNameById(var, name)
	;~ Send %name%
	SendChat(" -" name " - " test)
	Suspend Off
	Return
}
else 
{
   SendInput, {%A_ThisHotkey%}
   return
}

~1::
if(IsChatOpen() == 1 || IsDialogOpen() == 1)
	return
GetPlayerData()
GetPlayerNameById(2, p26_name)
MsgBox, Name von Id 2: %p26_name%
return