x_quickjoin:=250
y_quickjoin:=5
x1:=15
x2:=230

Gui, 1:Add,   text,   cred   x15 y5   +backgroundtrans, Pause = Keybinder pausieren
;~ Gui, 1:Add,   text,   cblack x15 y25  +backgroundtranss, PW:
;~ Gui, 1:Add,   edit,          x40    y20 vpw gpwsave w100 Password, %pw%
Gui, 1:Add,   Button,        x250 y5 w180 h25 gSampbutton, BE-Quickjoin
Gui, 1:Add,   text,   cblack x15 y45  +backgroundtrans, ^ = Motor
Gui, 1:Add,   text,   cblack x15 y65  +backgroundtrans, F2 = _
Gui, 1:Add,   text,   cblack x15 y85  +backgroundtrans, F3 = _
Gui, 1:Add,   text,   cblack x15 y105 +backgroundtrans, F5 = _
Gui, 1:Add,   text,   cblack x15 y125 +backgroundtrans, F10 = _
Gui, 1:Add,   text,   cblack x15 y145 +backgroundtrans, Numpad7 = _
Gui, 1:Add,   text,   cblack x15 y165 +backgroundtrans, Numpad8 = _
Gui, 1:Add,   text,   cblack x15 y185 +backgroundtrans, Numpad9 = _
Gui, 1:Add,   text,   cblack x15 y205 +backgroundtrans, Numpad+ = _

Gui, 1:Add,   text,   cblack x200  y45  +backgroundtranss, Sekunden:
Gui, 1:Add,   edit,          x252  y41  w100 vsekunden gUpdate, %sekunden%
Gui, 1:Add,   text,   cblack x200  y65  +backgroundtrans, Preis:
Gui, 1:Add,   text,          x230  y65  w200 vpreis, %preis%
Gui, 1:Add,   text,   cblack x200 y85  +backgroundtrans, /tempomat
Gui, 1:Add,   text,   cblack x200 y105 +backgroundtrans, XXX
Gui, 1:Add,   text,   cblack x200 y125 +backgroundtrans, /ab = Anrufabsage, verweis auf SMS
Gui, 1:Add,   text,   cblack x200 y145 +backgroundtrans, /lgc = /listgangcars
Gui, 1:Add,   text,   cblack x200 y165 +backgroundtrans, XXX

Gui, 1:Show,,Version: %version%
return

Sampbutton:
RegRead GTA_SA_EXE, HKEY_CURRENT_USER, Software\SAMP, gta_sa_exe
SplitPath, GTA_SA_EXE,, PFAD
Run %Pfad%\samp.exe black-evolution.org:7777, %PFAD%
return

pwsave:
Gui 1:Submit, NoHide
;Msgbox, %pw%
IniWrite, %pw%, %ini%, Einstellungen, IGPasswort
return