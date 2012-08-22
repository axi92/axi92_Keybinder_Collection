#SingleInstance, Force
Tacho := 0

Gui,Add,text,cred x10 y1  +backgroundtrans, Pause = Keybinder pausieren
Gui,Add,text,cblack x10 y20   +backgroundtrans, Tastenbelegung:
Gui,Add,text,cblack x10 y40   +backgroundtrans, Linke Strg = Motor
Gui,Add,text,cblack x10 y60   +backgroundtrans, F2 = /acceptrevival
Gui,Add,text,cblack x10 y80  +backgroundtrans, F3 = /anrufliste
Gui,Add,text,cblack x10 y100  +backgroundtrans, F10 = Bitte umfahren Sie die Unfallstelle
Gui,Add,text,cblack x10 y120  +backgroundtrans, Numpad7 = Medicport LS
Gui,Add,text,cblack x10 y140  +backgroundtrans, Numpad8 = Medicport SF
Gui,Add,text,cblack x10 y160  +backgroundtrans, Numpad9 = Medicport LV
Gui,Add,text,cblack x10 y180  +backgroundtrans, Numpad+ = Medicport Base
;Run, %Pfad%\samp.exe %ServerIP%

Gui,Add,text,cblack x230 y20  +backgroundtrans, Tastenbelegung:
Gui,Add,text,cblack x230 y40  +backgroundtrans, Punkt (.) = /revival
Gui,Add,text,cblack x230 y60  +backgroundtrans, Ende = Heal
Gui, Add, text, cblack x230 y400, %Tacho% KM/H
Gui, Add, Checkbox, x230 y80 Checked%Tacho% , Tempomat ein? ;Checked sagt den wert aus da dieser 0 oder 1 ist erkennt das dass Steuerelement
Gui,1:Add,Button, w200 h25 gSampbutton, BE-Quickjoin
Gui,1:Add,Button, w200 h25 gSpeichern, Speichern
Gui,1: Show,,
return

;IniRead, %Tacho%, %MainDir%\config.ini, Einstellung, Tacho

Speichern:
IniWrite, %Tacho%, config.ini, Einstellung, Tacho
return

Sampbutton:
RegRead GTA_SA_EXE, HKEY_CURRENT_USER, Software\SAMP, gta_sa_exe
SplitPath, GTA_SA_EXE,, PFAD
Run %Pfad%\samp.exe 46.251.236.250:7777, %PFAD%
return