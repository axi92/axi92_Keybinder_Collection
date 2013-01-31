#SingleInstance, Force ; Es darf nur eine Instanz von dem Programm vorhanden sein, wird eine neue gestartet, schlie࠴ sich die alte. (Reload)
#Persistent
#UseHook
#NoEnv

MainDir := A_MyDocuments "\Sanktionen"
IfNotExist, %MainDir%
	FileCreateDir, %MainDir%
SetWorkingDir, %MainDir%
FileCreateDir, %MainDir%
FileInstall, Einzelteile/API.dll, %MainDir%/API.dll, 1
#Include Einzelteile/API.ahk

:?:/sanktionen::
Suspend, Permit
Sleep, 500
ShowDialog(0, ">>Sanktionen<<", "KICK GRÜNDE------------------------`n`n/ad Missbrauch (Bei Neulingen)`nAngriff auf /aond`n/a- und /sup- Missbrauch`n`nWEITERE SANKTIONEN-------`nAutoschieben -> 30 min Prison`nSpawnkilling -> 60 min Prison`nHealen im Kampf -> 60 min Prison`nFahrzeug reparieren im Kampf -> 60 min Prison`nEingreifen in GF -> Zivilist 60 min Prison | Gang 120 min Prison`nDeskfluch -> 1 Warn + 60 min Prison`nOfflineflucht -> 1 Warn + 60 min Prison`nRelogbuguse -> 60 min Prison`nBuguse (SAMP Bug) -> 60 min Prison`nBeleidigung schwach -> 60 min Prison`nBeleidigung mittel -> 1 Warn + 3d Timeban + 120 min Prison`nBeleidigung schwer -> Ban`nAD- Misbrauch -> 30min Prison`nBeleidigung in AD -> Ban`n /a /sup Misbrauch (mehrmal) -> 30min Prison`nCheaten -> Ban`nFahrer Driveby (Totparken, schießen,...) -> Schein entzug + 60min Prison`nGF in GF -> Meldung im /o bei Missachtung Kick/Prison`nGang bei führung nicht im GF -> 30min Prison`nSDM -> Warn + 180min Prison`nDM auf Dienstleistende -> 1 Warn + 180min Prison`nTotsprayen (50HP+) -> 30min Prison`nOffline Fluch vor Admin -> Zeit + 0.5 x Zeit`nBunnyhop bei Gefahr -> 60min Prison", "Beenden")
Suspend, Off
return

:?:/acab::
:?:/beleidigung::
Suspend, Permit
Sleep, 500
ShowDialog(0, ">>Sanktionen<<", "§4.1 Schwache Beleidigungen:`nZu den schwachen Beleidigungen zählen Wörter wie:`n'Arschloch', 'Penner', 'Assi', 'Spasti', ggf. 'ACAB'.`nBestraft werden diese mit einer Stunde Prison.", "Beenden")
Suspend, Off
return