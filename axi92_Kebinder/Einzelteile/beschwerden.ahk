#IfWinActive, GTA:SA:MP ; Folgende Hotkeys Funktionieren nur wenn GTA SA:MP ge�ffnet ist
IfWinNotActive, GTA:SA:MP
return

;~ :?:/beschwerde::
;~ Suspend Permit
;~ opfer := "enesrexx"
;~ timeban := "4320"
;~ grund := "SDM"
;~ SendChat("/mark")
;~ Sleep, 500
;~ SendChat("/goto " opfer)
;~ Sleep, 500
;~ SendChat("/take Waffenschein " opfer)
;~ Sleep, 500
;~ SendChat("/gotomark")
;~ Sleep, 500
;~ SendChat("/warn " opfer " " grund)
;~ Sleep, 500
;~ SendChat("/tban " opfer " " timeban " " grund)
;~ Suspend Off
;~ return

:?:/ban1::
Suspend Permit
SendChat("/ban enesrexx 3xSDM")
SendChat("/ban Kerk699 3xSDM")
SendChat("/ban Scofield 3xSDM")
Suspend Off
return

;~ :?:/beschwerde::
;~ Suspend Permit
;~ SendChat("/prison Chester.Silva 180 Beschwerde")
;~ Sleep, 500
;~ SendChat("/mark")
;~ Sleep, 500
;~ SendChat("/goto Chester.Silva")
;~ ;Sleep, 500
;~ SendChat("/take Waffenschein Chester.Silva")
;~ ;Sleep, 500
;~ ;SendChat("/take Fuehrerschein Mani1997")
;~ Sleep, 500
;~ SendChat("/gotomark")
;~ Sleep, 500
;~ SendChat("/warn Chester.Silva Beschwerde")
;~ Suspend Off
;~ return