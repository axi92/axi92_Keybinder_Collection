#SingleInstance, Force

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
;Gui,Add,text,cblack x230 y80  +backgroundtrans, /aref = /accept refill
;Gui,Add,text,cblack x230 y100  +backgroundtrans, /arep = /accept repair
;Gui,Add,text,cblack x230 y120  +backgroundtrans, /ab = Anrufbeantworter



Gui,1:Add,Button, w200 h25 gSampbutton, BE-Quickjoin
;Gui,1:Add,Button, w200 h25 gSprüche,Sprüche
;Gui,1:Add,Button, w200 h25 gWaffen,Waffen
;Gui,1:Add,Button, w200 h25 gSexlist,Sexlist
;Gui,1:Add,Button, w200 h25 gPasswort,Passwörter
;Gui, Add, Button, x507 y7 h20 w150 gInformationen, Informationen
Gui,1: Show,,
return


Sampbutton:
RegRead GTA_SA_EXE, HKEY_CURRENT_USER, Software\SAMP, gta_sa_exe
SplitPath, GTA_SA_EXE,, PFAD
Run %Pfad%\samp.exe 46.251.236.250:7777, %PFAD%
return