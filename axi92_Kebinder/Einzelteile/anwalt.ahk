#IfWinActive, GTA:SA:MP ; Folgende Hotkeys Funktionieren nur wenn GTA SA:MP ge�ffnet ist

FormatNumberWithThousandSeparator(Number1,DS,TS) 
{ 
    If Number1 contains %DS% 
        StringSplit, NumberA, Number1, %DS%
    Else 
        NumberA1 = %Number1% 
    If NumberA1 is not integer
        return
    If NumberA2 is not digit
        return
    Loop, % Floor((StrLen(NumberA1) - 1)/3) { 
       StringRight,Digit,NumberA1,% 3 + (A_Index -1 ) * 4 
       StringReplace, NumberA1, NumberA1, %Digit%, %TS%%Digit% 
      }
    If NumberA2 is space 
        Return NumberA1 
    Return NumberA1 . DS . NumberA2 
}
  
Update:
Gui 1:Submit, NoHide
preis:= FormatNumberWithThousandSeparator(Ceil(sekunden/60/6*100000),",",".")
dauer:= Round((sekunden/6), 0)
;MsgBox, %preis% : %sekunden%
preis:= preis "$ und " dauer " Sekunden verbleibend"
GuiControl,,preis,%preis%
return