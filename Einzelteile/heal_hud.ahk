:?:/overlay::
Suspend Permit
Overlay := !Overlay
SoundStatus := (Overlay) ? "An" : "Aus"
AddChatMessage(0xFFFFF, "Overlay: " SoundStatus)
;MsgBox, Soundnotification: %SoundStatus% ;Sollte ausgebaut werden
if (Overlay = 1)
{
	SetTimer, Carheal, 500
}
else
{
	SetTimer, Carheal, Off
    TextHide(Carheal)
}
Suspend Off
return

Carheal:
IfWinNotActive, GTA:SA:MP
{
    return
}
if ( IsPlayerInAnyVehicle() == true )
{
    if(Carheal == -1)
    {
        Carheal := TextCreate("Arial", 12, true, false)
        TextSetPos(Carheal, 600, 450)
        TextSetColor(Carheal, 0xffff0000)
        TextShow(Carheal)
    }
    if(Carheal != -1) 
    {
        GetCityName(city)
        GetZoneName(zone)
        TextSetString(Carheal, "Fahrzeug Health: " . GetVehicleHealth() . "`nStandort: " . city . " - " . zone . "" )
    }
} else {
    if ( Carheal != -1)
    {
        TextHide(Carheal)
        TextDestroy(Carheal)
        Carheal := -1
    }
}
return


Playerheal_ausgeschalten:
IfWinNotActive, GTA:SA:MP
{
    return
}
if(heal == -1)
{
	heal := TextCreate("Arial", 8, true, false)
	TextSetPos(heal, 685, 91)
	TextSetColor(heal, 0xffffffff)
	TextShow(heal)
}
if(heal != -1) 
{
	TextSetString(heal, GetPlayerHealth())
}
return
