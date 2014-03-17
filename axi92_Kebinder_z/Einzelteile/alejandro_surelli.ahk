Info:
IfWinNotActive, GTA:SA:MP
{
    return
}
if(Info_Name == "")
{
    Info_Name := TextCreate("Arial", 6, true, false, x, y, 0xFF000000, Info_Name, True,true)
    Info_Id := TextCreate("Arial", 6, true, false, x, y, 0xFF000000, Info_Id, True,true)
    Info_Ort := TextCreate("Arial", 6, true, false, x, y, 0xFF000000, Info_Ort, True,true)
    TextSetPos(Info_Name, 700, 370)
    TextSetPos(Info_Id, 700, 380)
    TextSetPos(Info_Ort, 700, 390)
    TextSetColor(Info_Name, 0xFFFFFFFF)
    TextSetColor(Info_Id, 0xFFFFFFFF)
    TextSetColor(Info_Ort, 0xFFFFFFFF)
    TextSetShown(Info_Name, true)
    TextSetShown(Info_Id, true)
    TextSetShown(Info_Ort, true)
}
if(Info_Name > 1) 
{
    GetPlayerName(MyName)
    GetZoneName(MyZone)
    TextSetString(Info_Name, "Name: " . MyName . "")
    TextSetString(Info_Id, "ID: " . GetPlayerId() . "")
    TextSetString(Info_Ort, "Ort: " . MyZone . "")
}
return

:?:/overlay::
Suspend Permit
Overlay := !Overlay
SoundStatus := (Overlay) ? "An" : "Aus"
AddChatMessage(0xFFFFF, "Overlay: " SoundStatus)
if (Overlay = 1)
{
	SetTimer, Info, 300
    Info_Name := ""
}
else
{
	SetTimer, Info, Off
    TextSetString(Info_Name, "")
    TextSetString(Info_Id, "")
    TextSetString(Info_Ort, "")
}
Suspend Off
return