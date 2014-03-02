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

^Tab::
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
	if(debug==true)
	{
		AddChatMessage(0xFF0000, autoreplace)
	}
	RegExMatch(autoreplace, "[^ ]+$" ,var)
	if(debug==true)
	{
		AddChatMessage(0xFF0000, "var nach reg: " autoreplace)
	}
	;var_length := StrLen(var)
	GetPlayerData()
	loop_player := 0
	Loop, 75
	{
		GetPlayerNameById(loop_player, name)
		vergleichsname := RegExMatch(name, "^" autoreplace ".*$")
		if(debug == true)
		{
			AddChatMessage(0xFF0000, "Vergleichsname: ID: " loop_player " name: " name " " vergleichsname)
		}
		;AddChatMessage(0xFF0000, "open1 " open_1)
		if(vergleichsname == 1 AND open_1 == true)
		{
			s_result1 := name
			open_1 := false
			GOTO Label_s_ende
		}
		if(vergleichsname == 1 AND open_2 == true)
		{
			s_result2 := name
			open_2 := false
			GOTO Label_s_ende
		}
		if(vergleichsname == 1 AND open_3 == true)
		{
			s_result3 := name
			open_3 := false
			GOTO Label_s_ende
		}
		if(vergleichsname == 1 AND open_4 == true)
		{
			s_result4 := name
			open_4 := false
			GOTO Label_s_ende
		}
		if(vergleichsname == 1 AND open_5 == true)
		{
			s_result5 := name
			open_5 := false
			GOTO Label_s_ende
		}
		Label_s_ende:
		loop_player := loop_player+1
	}	
	AddChatMessage(0xFF0000, "Vorschläge: " s_result1 " - " s_result2 " - " s_result3 " - " s_result4 " - " s_result5)
	;~ SendChat(var_length)
	;if(name != -1)
	;{
	;	Send {Backspace %var_length%}%name%
	;}
	open_1 := true
	open_2 := true
	open_3 := true
	open_4 := true
	open_5 := true	
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