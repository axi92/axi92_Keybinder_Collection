version := 0.1

Gui, 1:Add,   text,   cblack x10 y10  +backgroundtrans, /tempomat
Gui, 1:Add,   text,   cblack x200 y10 +BackgroundTrans, %version%
Gui, 1:Add, Button,          x10 y30 w220 h25 gSampbutton, BE-Quickjoin
Gui, 1:Show,,
return

Sampbutton:
RegRead GTA_SA_EXE, HKEY_CURRENT_USER, Software\SAMP, gta_sa_exe
SplitPath, GTA_SA_EXE,, PFAD
Run %Pfad%\samp.exe 46.251.236.250:7777, %PFAD%
return