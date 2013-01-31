IfWinNotActive, GTA:SA:MP
return

if(Tabnummer != 2)
{	
	return
}

:?:/versteigerung::
if(Tabnummer != 2)
{	
	return
}
Suspend Permit
SendChat("/n - Versteigerung -")
Sleep, 500
SendChat("/n Es wird ein wunderschönes, einfallsreiches Haus in Los Santos, nähe Arbeitsamt, versteigert!")
Sleep, 500
SendChat("/n Der Besitzer des Hauses heißt Joseph.Caryson.")
Sleep, 500
SendChat("/n Der Grundpreis des Hauses ist 500'000$. Der Sofortkauf beträgt 4'000'000$ - Der Startgebot ist 1.000.000$!")
Sleep, 500
SendChat("/n Das Haus besitzt um die 15 Mieter, hat ein kleines dafür feines Interieur bei dem man sich ganz schnell wohl fühlen kann")
Sleep, 500
SendChat("/n Es liegt übrigens zentral zu allen Ecken. Man kommt in wenigen Sekunden/Minuten überall hin!")
Sleep, 500
SendChat("/n Es ist jeder Willkommen, also ab zum Versteigerungs Punkt.")
Suspend Off
return

adstart1:
:?:/adstart1::
if(Tabnummer != 2)
{	
	return
}
Suspend Permit
AddChatMessage(0xFF3333, "Werbung 1")
if (adrepeat1 > 0)
{
	SendChat("/n "newstext1)
	Settimer, ad1, 600000  ;600000
}
else
{
	Settimer, ad1, Off
	AddChatMessage(0xFF3333, "Werbung 1 Ende")
}
Suspend Off
return

:?:/adstop1::
if(Tabnummer != 2)
{	
	return
}
Suspend Permit
Settimer, ad1, Off
AddChatMessage(0xFF3333, "Werbung 1 Ende")
Suspend Off
return

ad1:
adrepeat1 -= 1
goto, adstart1
return

:?:/newshelp::
if(Tabnummer != 2)
{	
	return
}
Suspend Permit
AddChatMessage(0xFF3366, "_____________________________________________")
AddChatMessage(0xFFFFFF, "Pause = Keybinder pausieren")
AddChatMessage(0xFFFFFF, "Linke Strg = Motor")
AddChatMessage(0xFFFFFF, "/adstart1 = Werbung1 Starten (Wiederholung alle 10Minuten)")
AddChatMessage(0xFFFFFF, "/tempomat")
AddChatMessage(0xFFFFFF, "/ab = Anrufabsage, verweis auf SMS")
AddChatMessage(0xFFFFFF, "/lgc = /listgangcars")
AddChatMessage(0xFFFFFF, "/overlay")
AddChatMessage(0xFF3366, "_____________________________________________")
Suspend Off
return