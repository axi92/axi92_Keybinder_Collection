#UseHook
#SingleInstance, Force

;memlib
OpenMemoryfromProcess(process,right=0x1F0FFF)
{
Process,Exist,%process%
PID = %ErrorLevel%
HWND := DllCall("OpenProcess","Uint",right,"int",0,"int",PID)
return HWND
}

OpenMemoryfromTitle(title,right=0x1F0FFF)
{
WinGet,PID,PID,%title%
HWND := DllCall("OpenProcess","Uint",right,"int",0,"int",PID)
return HWND
}

CloseMemory(hwnd)
{
return DllCall("CloseHandle", "int", hwnd)
}

WriteMemory(hwnd,address,writevalue,datatype="int",length=4,offset=0)
{
VarSetCapacity(finalvalue,length, 0)
NumPut(writevalue,finalvalue,0,datatype)
return DllCall("WriteProcessMemory","Uint",hwnd,"Uint",address+offset,"Uint",&finalvalue,"Uint",length,"Uint",0)
}

ReadMemory(hwnd,address,datatype="int",length=4,offset=0)
{
VarSetCapacity(readvalue,length, 0)
DllCall("ReadProcessMemory","Uint",hwnd,"Uint",address+offset,"Str",readvalue,"Uint",length,"Uint *",0)
finalvalue := NumGet(readvalue,0,datatype)
return finalvalue
}

WriteMemoryPointer(hwnd,base,writevalue,datatype="int",length=4,offset1=0,offset2=0,offset3=0,offset4=0,offset5=0,offset6=0,offset7=0,offset8=0)
{
offset9=0
Loop 8
{
next := A_Index + 1
if (offset%A_Index% = 0) && (offset%next% = 0)
{
}
else
{
baseresult := ReadMemory(hwnd,base)
Offset := Offset%A_Index%
SetFormat, integer, h
base := baseresult + Offset
SetFormat, integer, d
}
}
return WriteMemory(hwnd,address,writevalue,datatype,length)
}

ReadMemoryPointer(hwnd,base,datatype="int",length=4,offset1=0,offset2=0,offset3=0,offset4=0,offset5=0,offset6=0,offset7=0,offset8=0)
{
offset9=0
Loop 8
{
next := A_Index + 1
if (offset%A_Index% = 0) && (offset%next% = 0)
{
}
else
{
baseresult := ReadMemory(hwnd,base)
Offset := Offset%A_Index%
SetFormat, integer, h
base := baseresult + Offset
SetFormat, integer, d
}
}
return ReadMemory(hwnd,base,datatyp,length)
}

SetPrivileg(privileg = "SeDebugPrivilege")
{
success := DllCall("advapi32.dll\LookupPrivilegeValueA","uint",0,"str",privileg,"int64*",luid_SeDebugPrivilege)
if (success = 1) && (ErrorLevel = 0)
{
returnval = 0
}
else
{
returnval = %ErrorLevel%
}
return %returnval%
}

Suspendprocess(hwnd)
{
return DllCall("ntdll\NtSuspendProcess","uint",hwnd)
}

Resumeprocess(hwnd)
{
return DllCall("ntdll\NtResumeProcess","uint",hwnd)
}

#include API.ahk

Settimer, Zollsystem, 1
Freigabe := 1

IfNotExist, %A_MyDocuments%\Zoll-System\
{
   FileCreateDir, %A_MyDocuments%\Zoll-System\
}

Gui, Show, w300 h300, Keybinder
return

GuiClose:
ExitApp
return

#UseHook
#SingleInstance
#IfWinActive, GTA:SA:MP

+T::
~t::
Suspend On
Hotkey, Enter, On
Hotkey, Escape, On
Hotkey, t, Off
return

NumpadEnter::
Enter::
Suspend Permit
Suspend Off
SendInput {Enter}
Hotkey, t, On
Hotkey, Enter, Off
Hotkey, Escape, Off
return

Escape::
Suspend Permit
Suspend Off
SendInput {Escape}
Hotkey, t, On
Hotkey, Enter, Off
Hotkey, Escape, Off
return


-::
Random, Zufall, 1, 2
GoSub, Metext%Zufall%
Return

Metext1:
SendChat("/zoll")
SendChat("/me zeigt dem Zöllner seinen Ausweis und darf passieren.")
Return

Metext2:
SendChat("/zoll")
SendChat("/me droht dem Zöllner mit einer Scheinsperre und darf passieren.")
Return

Zollsystem:
#IfWinActive, GTA:SA:MP
SetWorkingDir %A_ScriptDir%
SetPrivileg()
exe := OpenMemoryFromProcess("gta_sa.exe")
carpoint:=ReadMemory(exe, 0x00B6F3B8)
carpopoint:=ReadMemory(exe, carpoint+20)
XPOS:=ReadMemory(exe, carpopoint+48, "float", 4)
YPOS:=ReadMemory(exe, carpopoint+52, "float", 4)
CloseMemory(exe)
If (Freigabe = 1)
{
If(XPOS>=1008.6192-8&&XPOS<=1000.3409+8) && (YPOS>=-942.3373-4&&YPOS<=-938.2012+4)
{
SendChat("Möchtest du dein Fahrzeug jetzt betanken?[mit 'X' bestätigen]")
Keywait, X, D, T10
if !errorLevel
{
SendChat("/fill")
SendChat("/get fuel")
Freigabe := 0
SetTimer, Zähler, 1000
Var := 0
}
else
{
Freigabe := 1
}
}
Else If(XPOS>=70.1259-33&&XPOS<=37.3281+33) && (YPOS>=-1545.1461-26&&YPOS<=-1519.6512+26)
{
SendChat("/Zoll")
Freigabe :=0
Settimer, Zähler, 1000
Var :=0
}
Else If(XPOS>=-94.9821&&XPOS<=-88.0944) && (YPOS>=-1173.7999&&YPOS<=-1165.8394)
{
SendChat("Möchtest du dein Fahrzeug jetzt betanken?[mit 'X' bestätigen]")
Keywait, X, D, T10
if !errorLevel
{
SendChat("/fill")
SendChat("/get fuel")
Freigabe := 0
SetTimer, Zähler, 1000
Var := 0
}
else
{
Freigabe := 1
}
}
else If(XPOS>=-83.2967&&XPOS<=-58.1733) && (YPOS>=-898.8355&&YPOS<=-865.1906)
{
SendChat("/Zoll")
Freigabe :=0
Settimer, Zähler, 1000
Var :=0
}
else If(XPOS>=-979.1202&&XPOS<=-956.4673) && (YPOS>=-356.9077&&YPOS<=-325.9717)
{
SendChat("/Zoll")
Freigabe :=0
Settimer, Zähler, 1000
Var :=0
}
else If(XPOS>=-167.9368-18&&XPOS<=-149.5927+18) && (YPOS>=421.8792-34&&YPOS<=387.0945+34)
{
SendChat("/Zoll")
Freigabe :=0
Settimer, Zähler, 1000
Var :=0
}
else If(XPOS>=534.9904-26&&XPOS<=508.3791+26) && (YPOS>=487.7328-21&&YPOS<=455.0245+21)
{
SendChat("/Zoll")
Freigabe :=0
Settimer, Zähler, 1000
Var :=0
}
else If(XPOS>=658.7794&&XPOS<=653.0157) && (YPOS>=-568.6906&&YPOS<=-560.7563)
{
SendChat("Möchtest du dein Fahrzeug jetzt betanken?[mit 'X' bestätigen]")
Keywait, X, D, T10
if !errorLevel
{
SendChat("/fill")
SendChat("/get fuel")
Freigabe := 0
SetTimer, Zähler, 1000
Var := 0
}
else
{
Freigabe := 1
}
}
else If(XPOS>=1736.5436-31&&XPOS<=1694.8757+31) && (YPOS>=476.8202-36&&YPOS<=436.7576+36)
{
SendChat("/Zoll")
Freigabe :=0
Settimer, Zähler, 1000
Var :=0
}
else if(XPOS>=853.3868-8&&XPOS<=845.1692+8) && (YPOS>=-1231.5667-3&&YPOS<=-1227.4775+3)
{
SendChat("Möchtest du dein Fahrzeug jetzt betanken?[mit 'X' bestätigen]")
Keywait, X, D, T10
if !errorLevel
{
SendChat("/fill")
SendChat("/get fuel")
Freigabe := 0
SetTimer, Zähler, 1000
Var := 0
}
else
{
Freigabe := 1
}
}
else if(XPOS>=1943.6532-2&&XPOS<=1946.0018+2) && (YPOS>=-1769.7651-5&&YPOS<=-1775.5492+5)
{
SendChat("Möchtest du dein Fahrzeug jetzt betanken?[mit 'X' bestätigen]")
Keywait, X, D, T10
if !errorLevel
{
SendChat("/fill")
SendChat("/get fuel")
Freigabe := 0
SetTimer, Zähler, 1000
Var := 0
}
else
{
Freigabe := 1
}
}
else if(XPOS>=1519.1462-2&&XPOS<=1524.9775+2) && (YPOS>=-1765.2529-5&&YPOS<=-1765.2268+5)
{
SendChat("Möchtest du dein Fahrzeug jetzt betanken?[mit 'X' bestätigen]")
Keywait, X, D, T10
if !errorLevel
{
SendChat("/fill")
SendChat("/get fuel")
Freigabe := 0
SetTimer, Zähler, 1000
Var := 0
}
else
{
Freigabe := 1
}
}
else if(XPOS>=609.7499&&XPOS<=614.7625) && (YPOS>=1692.1746&&YPOS<=1697.033)
{
SendChat("Möchtest du dein Fahrzeug jetzt betanken?[mit 'X' bestätigen]")
Keywait, X, D, T10
if !errorLevel
{
SendChat("/fill")
SendChat("/get fuel")
Freigabe := 0
SetTimer, Zähler, 1000
Var := 0
}
else
{
Freigabe := 1
}
}
else If(XPOS>=-440.0085-34&&XPOS<=-475.7770+34) && (YPOS>=565.1243-29&&YPOS<=595.5687+29)
{
SendChat("/Zoll")
Freigabe :=0
Settimer, Zähler, 1000
Var :=0
}
else If(XPOS>=-462.8708-32&&XPOS<=-496.6786+32) && (YPOS>=1043.2327-24&&YPOS<=1068.5634+24)
{
SendChat("/Zoll")
Freigabe :=0
Settimer, Zähler, 1000
Var :=0
}
else If(XPOS>=-878.0748-34&&XPOS<=-841.5696+34) && (YPOS>=2023.6145-34&&YPOS<=1986.1008+34)
{
SendChat("/Zoll")
Freigabe :=0
Settimer, Zähler, 1000
Var :=0
}
else If(XPOS>=-942.4183-32&&XPOS<=-974.5173+32) && (YPOS>=2709.3718-14&&YPOS<=2726.5793+14)
{
SendChat("/Zoll")
Freigabe :=0
Settimer, Zähler, 1000
Var :=0
}
else If(XPOS>=-2697.3562-31&&XPOS<=-2665.7051+31) && (YPOS>=1291.1976-29&&YPOS<=1260.2534+29)
{
SendChat("/Zoll")
Freigabe :=0
Settimer, Zähler, 1000
Var :=0
}
else If(XPOS>=-1418.1459-40&&XPOS<=-1376.7649+40) && (YPOS>=849.8669-41&&YPOS<=807.6863+41)
{
SendChat("/Zoll")
Freigabe :=0
Settimer, Zähler, 1000
Var :=0
}
}
return

Zähler:
Var++
If (Var = 7)
{
Settimer, Zähler, Off
Freigabe := 1
}
return