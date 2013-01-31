#SingleInstance, Force ; Es darf nur eine Instanz von dem Programm vorhanden sein, wird eine neue gestartet, schlieà ´ sich die alte. (Reload)
#Persistent
Gui, 1:Add,   text,   cred   x10  y1   +backgroundtrans, Pause = Keybinder pausieren
Gui, 1:Add,   text,   cblack x10  y20  +backgroundtrans, Tastenbelegung:
Gui, 1:Add,   text,   cblack x10  y40  +backgroundtrans, Linke Strg = Motor
Gui, 1:Add,   text,   cblack x10  y60  +backgroundtrans, 1 = /bmopen
Gui, 1:Add,   text,   cblack x10  y80  +backgroundtrans, 2 = Halten Sie sich vom Auto des Präsidenten fern!
Gui, 1:Add,   text,   cblack x10  y100 +backgroundtrans, 3 = Räumen Sie die Straße!
Gui, 1:Add,   text,   cblack x10 y150 +BackgroundTrans, Version: %version% 2
Gui, 1:Add, Button,          x10 y120 w250 h25 gSampbutton, BE-Quickjoin
Gui, 1:Show,,
return

Sampbutton:
RegRead GTA_SA_EXE, HKEY_CURRENT_USER, Software\SAMP, gta_sa_exe
SplitPath, GTA_SA_EXE,, PFAD
Run %Pfad%\samp.exe 46.251.236.250:7777, %PFAD%
return