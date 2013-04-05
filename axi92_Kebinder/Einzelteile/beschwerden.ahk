IfWinNotActive, GTA:SA:MP
return

:?:/beschwerde::
Suspend Permit
opfer := "test"
prisontime := "1"
grund := "test"
;~ SendChat("prison %opfer% %prisontime% %grund%")
SendChat("/prison " opfer " " prisontime " " grund)
;~ Sleep, 500
;~ SendChat("/mark")
;~ Sleep, 500
;~ SendChat("/goto Sean_Connor")
;~ Sleep, 1000
;~ SendChat("/take Waffenschein Sean_Connor")
;~ Sleep, 500
;~ SendChat("/gotomark")
;~ Sleep, 500
;~ SendChat("/warn Sean_Connor Beschwerde(SDM)")
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