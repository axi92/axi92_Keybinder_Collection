Numpad0::
if(IsChatOpen() == 1 || IsDialogOpen() == 1 || IsPlayerInAnyVehicle() == 1) {
   SendInput, {%A_ThisHotkey%}
   return
}
GetPlayerName(name)
if(name == "axi92")
{
    Suspend Permit
	SendChat("/fly")
	Suspend Off
}
return

:?:/sanktionen::
Suspend, Permit
;SendInput, {Enter}
Sleep, 500
ShowDialog(0, ">>Sanktionen<<", "KICK GRÜNDE------------------------`n`n/ad Missbrauch (Bei Neulingen)`nAngriff auf /aond`n/a- und /sup- Missbrauch`n`nWEITERE SANKTIONEN-------`nAutoschieben -> 30 min Prison`nSpawnkilling -> 60 min Prison`nHealen im Kampf -> 60 min Prison`nFahrzeug reparieren im Kampf -> 60 min Prison`nEingreifen in GF -> Zivilist 60 min Prison | Gang 120 min Prison`nDeskfluch -> 1 Warn + 60 min Prison`nOfflineflucht -> 1 Warn + 60 min Prison`nRelogbuguse -> 60 min Prison`nBuguse (SAMP Bug) -> 60 min Prison`nBeleidigung schwach -> 60 min Prison`nBeleidigung mittel -> 1 Warn + 3d Timeban + 120 min Prison`nBeleidigung schwer -> Ban`nAD- Misbrauch -> 30min Prison`nBeleidigung in AD -> Ban`n /a /sup Misbrauch (mehrmal) -> 30min Prison`nCheaten -> Ban`nFahrer Driveby (Totparken, schießen,...) -> Schein entzug + 60min Prison`nGF in GF -> Meldung im /o bei Missachtung Kick/Prison`nGang bei führung nicht im GF -> 30min Prison`nSDM -> Warn + 180min Prison`nDM auf Dienstleistende -> 1 Warn + 180min Prison`nTotsprayen (50HP+) -> 30min Prison`nDach DM -> 60min Prison`nOffline Fluch vor Admin -> Zeit + 0.5 x Zeit`nBunnyhop bei Gefahr -> 60min Prison", "Beenden")
Suspend, Off
return