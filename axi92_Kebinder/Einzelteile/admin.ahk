Numpad0::
IfWinNotActive, GTA:SA:MP
{
   SendInput, {%A_ThisHotkey%}
   return
}
if(IsChatOpen() == 1 || IsDialogOpen() == 1 || IsPlayerInAnyVehicle() == 1) {
   SendInput, {%A_ThisHotkey%}
   return
}
GetPlayerName(name)
if(name == "axi92")
{
    Suspend Permit
	SendChat("/givejetpack")
	Suspend Off
}
return

:?:/sanktionen::
IfWinNotActive, GTA:SA:MP
{
   return
}
Suspend, Permit
Sleep, 500
ShowDialog(0, ">>Sanktionen<<", "KICK GRÜNDE------------------------`n`n/ad Missbrauch (Bei Neulingen)`nAngriff auf /aond`n/a- und /sup- Missbrauch`n`nWEITERE SANKTIONEN-------`nAutoschieben -> 30 min Prison`nSpawnkilling -> 60 min Prison`nHealen im Kampf/Pushen -> 60 min Prison`nFahrzeug reparieren im Kampf -> 60 min Prison`nEingreifen in GF -> Zivilist 60 min Prison | Gang 120 min Prison`nDeskfluch -> 1 Warn + 60 min Prison`nOfflineflucht -> 1 Warn + 60 min Prison`nRelogbuguse -> 60 min Prison`nBuguse (SAMP Bug) -> 60 min Prison`nBeleidigung schwach -> 60 min Prison`nBeleidigung mittel -> 1 Warn + 3d Timeban + 120 min Prison`nBeleidigung schwer -> Ban`nAD- Misbrauch -> 30min Prison`nBeleidigung in AD -> Ban`n /a /sup Misbrauch (mehrmal) -> 30min Prison`nCheaten -> Ban`nFahrer Driveby (Totparken, schießen,...) -> Schein entzug + 60min Prison`nGF in GF -> Meldung im /o bei Missachtung Kick/Prison`nGang bei führung nicht im GF -> 30min Prison`nSDM -> Warn + 180min Prison`nDM auf Dienstleistende -> 1 Warn + 180min Prison`nTotsprayen (50HP+) -> 30min Prison`nOffline Fluch vor Admin -> Zeit + 0.5 x Zeit`nBunnyhop bei Gefahr -> 60min Prison`nNO-DM Flucht -> 60min Prison", "Beenden")
Suspend, Off
return

:?:/acab::
:?:/beleidigung::
Suspend, Permit
Sleep, 500
ShowDialog(0, ">>Sanktionen<<", "§4.1 Schwache Beleidigungen:`nZu den schwachen Beleidigungen zählen Wörter wie:`n'Arschloch', 'Penner', 'Assi', 'Spasti', ggf. 'ACAB'.`nBestraft werden diese mit einer Stunde Prison.", "Beenden")
Suspend, Off
return

:?:/ddo::
Suspend, Permit
SendChat("/destroydynamicobject")
Suspend, Off
return

:?:/ct::
Suspend, Permit
SendChat("/ct")
SendChat("/tickets")
Suspend, Off
return

:?:/ocountdown::
Suspend, Permit
SendChat("/s 5")
Sleep, 1000
SendChat("/s 4")
Sleep, 1000
SendChat("/s 3")
Sleep, 1000
SendChat("/s 2")
Sleep, 1000
SendChat("/s 1")
Sleep, 1000
SendChat("/s GO!")
Suspend, Off
return