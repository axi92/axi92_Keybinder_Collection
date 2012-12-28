3::
if(IsChatOpen() == 1 || IsDialogOpen() == 1 || GetVehicleModel() == 519 || GetVehicleModel() == 520) {
   SendInput, {%A_ThisHotkey%}
   return
}
Suspend Permit
SendChat("/sirene")
SendChat("/sireneb")
Suspend Off
return