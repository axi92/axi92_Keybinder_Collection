!P::
Pause::
Suspend, Toggle 
StatusCheck := A_IsSuspended ? "Keybinder deaktiviert" : "Keybinder aktiviert"
AddChatMessage(0xFF0000, "Info: {FFFFFF}" StatusCheck)
return
