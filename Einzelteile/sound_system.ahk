:?:/sound::
Suspend Permit
Sound := !Sound
SoundStatus := (Sound) ? "An" : "Aus"
AddChatMessage(0xFFFFF, "Soundnotification: " SoundStatus)
;MsgBox, Soundnotification: %SoundStatus% ;Sollte ausgebaut werden
if (Sound = 1)
{
	SetTimer, Sound, 200
}
else
{
	SetTimer, Sound, Off
}
Suspend Off
return
 
 
 
 
Sound:
GetChatLine(0, Str)
;Sollte ausgebaut werden von hier -->
; Such Strings Anfang----------------------------------
service := "Benutze /anrufliste"
revival := "Wiederbelebt werden! Benutze: /acceptrevival"
ticket := "hat ein Support Ticket erstellt"
; Such Strings Ende------------------------------------
if InStr(Str, service)
{
	;MsgBox % "heal.wav würde nun spielen"
	SoundPlay, %MainDir%\heal.wav
	;AddChatMessage(0xFFFFF, "Sound play Heal")
	return
}
else if InStr(Str, revival)
{
	;MsgBox % "tot.wav würde nun spielen"
	SoundPlay, %MainDir%\tot.wav
	;AddChatMessage(0xFFFFF, "Sound play Tot")
}
return