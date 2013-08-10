#IfWinActive, GTA:SA:MP
#UseHook
#SingleInstance, Force
#Persistent

Gui, Add, Picture, xCenter yCenter w600 h480, %MainDir%/Hintergrund.jpg

Gui, Add, Text, x15 y15 cred +BackgroundTrans, Hitman Keybidner by MiLo 
Gui, Add, Text, x15 y30 cwhite +BackgroundTrans,
Gui, Add, Text, x15 y30 cwhite +BackgroundTrans, Numpad 1 -> /Motor
Gui, Add, Text, x15 y30 cwhite +BackgroundTrans,
Gui, Add, Text, x15 y45 cwhite +BackgroundTrans, Numpad 4 -> /pickupgun
Gui, Add, Text, x15 y30 cwhite +BackgroundTrans,
Gui, Add, Text, x15 y60 cwhite +BackgroundTrans, B -> /drivein 
Gui, Add, Text, x15 y30 cwhite +BackgroundTrans,
Gui, Add, Text, x15 y75 cwhite +BackgroundTrans, ß -> /members 
Gui, Add, Text, x15 y30 cwhite +BackgroundTrans,
Gui, Add, Text, x15 y90 cwhite +BackgroundTrans, /arep -> /accept repair 
Gui, Add, Text, x15 y30 cwhite +BackgroundTrans,
Gui, Add, Text, x15 y105 cwhite +BackgroundTrans, /aref -> /accept refill 
Gui, Add, Text, x15 y30 cwhite +BackgroundTrans,
Gui, Add, Text, x15 y120 cwhite +BackgroundTrans, /ad -> Hitman 
Gui, Add, Text, x15 y30 cwhite +BackgroundTrans,
Gui, Add, Text, x15 y135 cwhite +BackgroundTrans, /w[1-7] -> Waffen 
Gui, Add, Text, x15 y30 cwhite +BackgroundTrans,
Gui, Add, Text, x15 y150 cwhite +BackgroundTrans, /con -> Contract nehmen
Gui, Add, Text, x15 y30 cwhite +BackgroundTrans,

Gui, +lastfound
Gui, Show, w600 y480
return

GuiClose:
ExitApp