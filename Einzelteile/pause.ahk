!P::
Pause::
suspend
if A_IsSuspended 
   AddChatMessage(0xFF3333,"Keybinder deaktiviert")
if !A_IsSuspended
   AddChatMessage(0xFF3333,"Keybinder aktiviert")
return