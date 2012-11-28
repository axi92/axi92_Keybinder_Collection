IfWinNotActive, GTA:SA:MP
return

adstart1:
:?:/adstart1::
if (Repeat1 > 0)
{
	Suspend Permit
	SendChat("Hi")
	SendChat("Hi" Newstext1)
	Settimer, ad1, 2000  ;600000
	Suspend Off
}
return

ad1:
Repeat1 -= 1
goto, adstart1
return