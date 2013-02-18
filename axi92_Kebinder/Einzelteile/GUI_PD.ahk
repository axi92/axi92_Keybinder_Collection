x_quickjoin:=250
y_quickjoin:=5
x1:=15
x2:=230

Gui, 1:Add,   text,   cred   x%x1%  y5   +backgroundtrans, Pause = Keybinder pausieren
Gui, 1:Add,   text,   cblack x%x1%  y25  +backgroundtranss, PW:
Gui, 1:Add,   edit,          x40    y20 vpw gpwsave w100 Password, %pw%
Gui, 1:Add,   Button,        x%x_quickjoin% y%y_quickjoin% w180 h25 gSampbutton, BE-Quickjoin
Gui, 1:Add,   text,   cblack x%x1%  y45  +backgroundtrans, ^ = Motor
Gui, 1:Add,   text,   cblack x%x1%  y65  +backgroundtrans, F2 = _
Gui, 1:Add,   text,   cblack x%x1%  y85  +backgroundtrans, F3 = _
Gui, 1:Add,   text,   cblack x%x1%  y105 +backgroundtrans, F5 = _
Gui, 1:Add,   text,   cblack x%x1%  y125 +backgroundtrans, F10 = _
Gui, 1:Add,   text,   cblack x%x1%  y145 +backgroundtrans, Numpad7 = _
Gui, 1:Add,   text,   cblack x%x1%  y165 +backgroundtrans, Numpad8 = _
Gui, 1:Add,   text,   cblack x%x1%  y185 +backgroundtrans, Numpad9 = _
Gui, 1:Add,   text,   cblack x%x1%  y205 +backgroundtrans, Numpad+ = _

Gui, 1:Add,   text,   cblack x%x2% y45  +backgroundtrans, XXX
Gui, 1:Add,   text,   cblack x%x2% y65  +backgroundtrans, Ende = Countdown
Gui, 1:Add,   text,   cblack x%x2% y85  +backgroundtrans, /tempomat
Gui, 1:Add,   text,   cblack x%x2% y105 +backgroundtrans, XXX
Gui, 1:Add,   text,   cblack x%x2% y125 +backgroundtrans, /ab = Anrufabsage, verweis auf SMS
Gui, 1:Add,   text,   cblack x%x2% y145 +backgroundtrans, /lgc = /listgangcars
Gui, 1:Add,   text,   cblack x%x2% y165 +backgroundtrans, XXX

Gui, 1:Show,,Version: %version%
return

Sampbutton:
RegRead GTA_SA_EXE, HKEY_CURRENT_USER, Software\SAMP, gta_sa_exe
SplitPath, GTA_SA_EXE,, PFAD
Run %Pfad%\samp.exe 84.200.78.200:7777, %PFAD%
return

pwsave:
Gui 1:Submit, NoHide
;Msgbox, %pw%
IniWrite, %pw%, %ini%, Einstellungen, IGPasswort
return