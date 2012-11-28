x_quickjoin:=250
y_quickjoin:=5
x1:=15
x2:=230

Gui, 1:Add,   Tab2, gTabcheck +AltSubmit vTabnummer Choose%tabnummer% y20 w420, Medic|San News
Gui, Tab,    Medic ; Medic Medic Medic Medic Medic Medic Medic Medic Medic Medic Medic Medic Medic Medic
Gui, 1:Add,   text,   cred   x%x1%  y5 +backgroundtrans, Pause = Keybinder pausieren
Gui, 1:Add,   Button,        x%x_quickjoin% y%y_quickjoin% w180 h25 gSampbutton, BE-Quickjoin
Gui, 1:Add,   text,   cblack x%x1%  y45  +backgroundtrans, Linke Strg = Motor
Gui, 1:Add,   text,   cblack x%x1%  y65  +backgroundtrans, F2 = /acceptrevival
Gui, 1:Add,   text,   cblack x%x1%  y85  +backgroundtrans, F3 = /anrufliste
Gui, 1:Add,   text,   cblack x%x1%  y105 +backgroundtrans, F5 = Für Heilung bitte mit `G einsteigen!
Gui, 1:Add,   text,   cblack x%x1%  y125 +backgroundtrans, F10 = Bitte umfahren Sie die Unfallstelle
Gui, 1:Add,   text,   cblack x%x1%  y145 +backgroundtrans, Numpad7 = Medicport LS
Gui, 1:Add,   text,   cblack x%x1%  y165 +backgroundtrans, Numpad8 = Medicport SF
Gui, 1:Add,   text,   cblack x%x1%  y185 +backgroundtrans, Numpad9 = Medicport LV
Gui, 1:Add,   text,   cblack x%x1%  y205 +backgroundtrans, Numpad+ = Medicport Base

Gui, 1:Add,   text,   cblack x%x2% y45  +backgroundtrans, Punkt (.) = /revival
Gui, 1:Add,   text,   cblack x%x2% y65  +backgroundtrans, Ende = Heal
Gui, 1:Add,   text,   cblack x%x2% y85  +backgroundtrans, /tempomat
Gui, 1:Add,   text,   cblack x%x2% y105 +backgroundtrans, /kbhelp = Auflistung der Befehle
Gui, 1:Add,   text,   cblack x%x2% y125 +backgroundtrans, /ab = Anrufabsage, verweis auf SMS
Gui, 1:Add,   text,   cblack x%x2% y145 +backgroundtrans, /lgc = /listgangcars
Gui, 1:Add,   text,   cblack x%x2% y165 +backgroundtrans, Num(-) = /duty

Gui,   Tab,   San News ;SN SN SN SN SN SN SN SN SN SN SN SN SN SN SN SN SN SN SN SN SN SN SN SN SN SN SN
Gui, 1:Add,   text,   cred   x15  y5 +backgroundtrans, Pause = Keybinder pausieren
Gui, 1:Add,   Button,          x%x_quickjoin% y%y_quickjoin% w180 h25 gSampbutton, BE-Quickjoin

Gui, 1:Add,   Text,   cblack x%x1%  y45 +backgroundtrans, Werbung Text1:
Gui, 1:Add,   Edit, Limit190 -WantReturn vNewstext1 x%x1% r4 y65 w410, Test
Gui, 1:Add,   Text, x300 y45, Wiederholungen:
Gui, 1:Add,   Edit, vRepeat1 x390 y43, %adrepeat1%
Gui, 1:Add,   UpDown, Range0-100 gTabcheck +AltSubmit, 1

Gui, 1:Show,,Version: %version%
return

Sampbutton:
RegRead GTA_SA_EXE, HKEY_CURRENT_USER, Software\SAMP, gta_sa_exe
SplitPath, GTA_SA_EXE,, PFAD
Run %Pfad%\samp.exe 46.251.236.250:7777, %PFAD%
return

Tabcheck:
Gui 1:Submit, NoHide
return


; Todo: Script mit Timer für 10Minuten = 600 000 millisekunden
; das alle 10 Minuten der Werbetext ingame kommt
; Ingame cmd /startadv1
; Nach jedem absenden (10Minuten) wird %Repeat1% -1 gesetzt
; Bis es auf 0 ist dann ist die Werbung aus und %Newstext1% wird geleert (Newstext1 := "")
; 
;