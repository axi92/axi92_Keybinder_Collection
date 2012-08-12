!P::
Pause::
suspend
if ( A_IsSuspended )
    {
       AddChatMessage(0xFFFFFF,"Keybinder deaktiviert")
    }
if ( !A_IsSuspended )
    {
       AddChatMessage(0xFFFFFF,"Keybinder aktiviert")
	}
return