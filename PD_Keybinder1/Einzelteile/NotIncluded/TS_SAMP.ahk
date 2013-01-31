Gui, Add, Button, x50 y355 h30 w180 gTsbutton, TS Quick Connect
Gui, Add, Button, x50 y395 h30 w180 gSampbutton, SA:MP Quick Connect

Sampbutton:
RegRead GTA_SA_EXE, HKEY_CURRENT_USER, Software\SAMP, gta_sa_exe
SplitPath, GTA_SA_EXE,, PFAD
Run %Pfad%\samp.exe 46.251.236.250:7777, %PFAD%
return

Tsbutton:
run ts3server://46.251.236.250?Port=9987
return