IfWinNotActive, GTA:SA:MP
return

:?:/sound::
Suspend Permit
Sound := !Sound
SoundStatus := (Sound) ? "An" : "Aus"
AddChatMessage(0xFFFFF, "Sound: " SoundStatus)
;MsgBox, Soundnotification: %SoundStatus% ;Sollte ausgebaut werden
if (Sound = 1)
{
	Toggle_OnPlayerTakeDmg := true
}
else
{
	Toggle_OnPlayerTakeDmg := false
}
Suspend Off
return
