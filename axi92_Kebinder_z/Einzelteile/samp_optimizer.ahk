samp_optimizer:
filename := A_MyDocuments "\GTA San Andreas User Files\SAMP\sa-mp.cfg"
IniWrite, 90, %filename%, SAMP-Optimizer, fpslimit
IniWrite, 1, %filename%, SAMP-Optimizer, multicore
IniWrite, 1, %filename%, SAMP-Optimizer, audiomsgoff
IniWrite, 1, %filename%, SAMP-Optimizer, timestamp
MsgBox, 0, Samp-Optimizer, Erfolgreich!, 20
return