#SingleInstance force
FileInstall, dll.ico, A_ScriptDir/dll.ico, 1
Progress, b w200, by axi92, MSVCP110.dll Fixer, My Title
Progress, 0
progress := 0
Loop
{
Progress++
Progress, %progress%
Sleep, 25
if progress > 110
{
Progress, Off
Goto, Goon
}
}
Goon:
Gui, -Caption +ToolWindow
Gui, Add, Button, x10 y20 w100 h50 gFix, FixIt!
Gui, Add, Button, x190 y20 w100 h50 gExit, Exit
Gui, Add, Picture, x110 y10 w80 h-1 +BackgroundTrans GuiMove, %A_Temp%/dll.ico
Gui, Color, ControlColor, 0x880000
Gui, Add, Text, x0 y0 w110 h20 gbtn GuiMove cBlue Background,
Gui, Add, Text, x110 y0 w80 h10 gbtn GuiMove cBlue Background,
Gui, Add, Text, x190 y0 w110 h20 gbtn GuiMove cBlue Background,
Gui, Add, Text, x0 y20 w10 h90 gbtn GuiMove cBlue Background,
Gui, Add, Text, x290 y20 w10 h90 gbtn GuiMove cBlue Background,
Gui, Add, Text, x10 y70 w100 h40 gbtn GuiMove cBlue Background,
Gui, Add, Text, x190 y70 w100 h40 gbtn GuiMove cBlue Background,
Gui, Add, Text, x110 y90 w80 h20 gbtn GuiMove cBlue Background,
Gui, Add, Text, x0 y140 w300 h10 gbtn GuiMove cBlue Background,
gui, font, s14 W, Arial
Gui, Add, Text, x0 y110 w300 gbtn GuiMove cWhite Center, MSVCP110.DLL Fixer by axi92
Gui, Color, Black
Gui, Show, w300 h150, msvcp110.dll-Fixer
WinSet, Region, 0-0 W300 H150 R10-10, msvcp110.dll-Fixer
WinSet, Transparent, 200, msvcp110.dll-Fixer
return
Fix:
FileInstall, msvcp110.dll, %A_WinDir%/System32/msvcp110.dll, 1
if ErrorLevel
{
Sleep, 1000
MsgBox, 16, Fehler beim Fixen, Programm als Admin ausfÃ¼hren!
}
else
{
Sleep, 1000
MsgBox, Fix erfolgreich
}
return
uiMove:
PostMessage, 0xA1, 2,,, A
Return
btn:
b_index--
tooltip % b_index
return
Exit:
ExitApp