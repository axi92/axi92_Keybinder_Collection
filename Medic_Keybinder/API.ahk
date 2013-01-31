#NoEnv

; Declars
PLAYER_STATE_LEAVING_VEHICLE 	:= 0
PLAYER_STATE_NORMAL 			:= 1
PLAYER_STATE_DRIVING 			:= 50
PLAYER_STATE_DYING 				:= 54
PLAYER_STATE_DEAD 				:= 55
; ---


; Script Entry
hModule := DllCall("LoadLibrary", Str, A_ScriptDir . "\API.dll")
if(hModule == -1 || hModule == 0)
{
	MsgBox, 48, API - Fehler, Die API.dll konnte nicht gefunden werden.`nDer Keybinder wird nun beendet.
	ExitApp
	
	; Ihr könnt die Funktion hier natürlich selber bearbeiten.
	; Die Aktuelle API findet ihr hier:
	;		http://samp-api.net/downloads/current_api/API.dll
	; Den MD5 Wert der aktuellen API findet ihr hier:
	;		http://samp-api.net/downloads/current_api/API.php
	; Dort befindet sich immer die aktuellste API.
}
; ---

AddChatMessage_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_AddChatMessage")
BlockChatInput_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_BlockChatInput")
BoxCreate_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_BoxCreate")
BoxDestroy_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_BoxDestroy")
BoxHide_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_BoxHide")
BoxSetBorder_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_BoxSetBorder")
BoxSetBorderColor_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_BoxSetBorderColor")
BoxSetColor_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_BoxSetColor")
BoxSetHeight_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_BoxSetHeight")
BoxSetPos_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_BoxSetPos")
BoxSetWidth_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_BoxSetWidth")
BoxShow_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_BoxShow")
DestroyAllVisual_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_DestroyAllVisual")
GetAmmoForCurrentWeapon_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetAmmoForCurrentWeapon")
GetChatLine_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetChatLine")
GetCityName_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetCityName")
GetClipForCurrentWeapon_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetClipForCurrentWeapon")
GetCurrentWeaponId_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetCurrentWeaponId")
GetCurrentWeatherId_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetCurrentWeatherId")
GetOnlinePlayers_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetOnlinePlayers")
GetPlayerArmor_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetPlayerArmor")
GetPlayerData_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetPlayerData")
GetPlayerHealth_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetPlayerHealth")
GetPlayerId_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetPlayerId")
GetPlayerIdByName_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetPlayerIdByName")
GetPlayerMoney_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetPlayerMoney")
GetPlayerName_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetPlayerName")
GetPlayerNameById_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetPlayerNameById")
GetPlayerPing_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetPlayerPing")
GetPlayerPingById_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetPlayerPingById")
GetPlayerPingByName_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetPlayerPingByName")
GetPlayerPos_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetPlayerPos")
GetPlayerScore_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetPlayerScore")
GetPlayerScoreById_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetPlayerScoreById")
GetPlayerScoreByName_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetPlayerScoreByName")
GetPlayerSkin_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetPlayerSkin")
GetPlayerState_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetPlayerState")
GetPlayerWanteds_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetPlayerWanteds")
GetRadioSlot_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetRadioSlot")
GetScreenSizeX_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetScreenSizeX")
GetScreenSizeY_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetScreenSizeY")
GetServerIp_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetServerIp")
GetVehicleEngineState_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetVehicleEngineState")
GetVehicleFirstColor_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetVehicleFirstColor")
GetVehicleHealth_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetVehicleHealth")
GetVehicleHornState_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetVehicleHornState")
GetVehicleId_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetVehicleId")
GetVehicleLightState_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetVehicleLightState")
GetVehicleLockState_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetVehicleLockState")
GetVehicleModel_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetVehicleModel")
GetVehicleName_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetVehicleName")
GetVehicleSeatState_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetVehicleSeatState")
GetVehicleSecondColor_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetVehicleSecondColor")
GetVehicleSirenState_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetVehicleSirenState")
GetVehicleSpeed_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetVehicleSpeed")
GetZoneName_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetZoneName")
HideAllVisual_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_HideAllVisual")
ImageCreate_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_ImageCreate")
ImageDestroy_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_ImageDestroy")
ImageHide_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_ImageHide")
ImageSetAlign_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_ImageSetAlign")
ImageSetPos_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_ImageSetPos")
ImageSetRotation_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_ImageSetRotation")
ImageShow_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_ImageShow")
IsChatOpen_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_IsChatOpen")
IsDialogOpen_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_IsDialogOpen")
IsMenuOpen_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_IsMenuOpen")
IsPlayerDriver_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_IsPlayerDriver")
IsPlayerFrozen_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_IsPlayerFrozen")
IsPlayerInAnyInterior_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_IsPlayerInAnyInterior")
IsPlayerInAnyVehicle_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_IsPlayerInAnyVehicle")
IsPlayerInRangeOfPoint_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_IsPlayerInRangeOfPoint")
IsPlayerInRangeOfPoint2D_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_IsPlayerInRangeOfPoint2D")
IsUpdateAvailable_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_IsUpdateAvailable")
LineCreate_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_LineCreate")
LineDestroy_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_LineDestroy")
LineHide_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_LineHide")
LineSetColor_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_LineSetColor")
LineSetHeight_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_LineSetHeight")
LineSetPos_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_LineSetPos")
LineSetWidth_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_LineSetWidth")
LineShow_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_LineShow")
RegisterTextBind_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_RegisterTextBind")
SendChat_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_SendChat")
ShowAllVisual_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_ShowAllVisual")
ShowDialog_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_ShowDialog")
ShowGameText_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_ShowGameText")
TextBindTimer_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_TextBindTimer")
TextCreate_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_TextCreate")
TextDestroy_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_TextDestroy")
TextHide_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_TextHide")
TextSetAlign_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_TextSetAlign")
TextSetColor_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_TextSetColor")
TextSetPos_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_TextSetPos")
TextSetString_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_TextSetString")
TextShow_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_TextShow")
UnblockChatInput_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_UnblockChatInput")
UnloadOverlay_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_UnloadOverlay")
UnregisterAllTextBinds_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_UnregisterAllTextBinds")
UnregisterTextBind_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_UnregisterTextBind")

; - tmp -
GetMaterials_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetMaterialsGRP")
; -------

AddChatMessage(Color, Text)
{
	global AddChatMessage_func
	Result := DllCall(AddChatMessage_func, Int, Color, Str, Text)
	return Result
}

BlockChatInput()
{
	global BlockChatInput_func
	Result := DllCall(BlockChatInput_func)
	return Result
}

BoxCreate()
{
	global BoxCreate_func
	Result := DllCall(BoxCreate_func)
	return Result
}

BoxDestroy(BoxIndex)
{
	global BoxDestroy_func
	Result := DllCall(BoxDestroy_func, Int, BoxIndex)
	return Result
}

BoxHide(BoxIndex)
{
	global BoxHide_func
	Result := DllCall(BoxHide_func, Int, BoxIndex)
	return Result
}

BoxSetBorder(BoxIndex, Width)
{
	global BoxSetBorder_func
	Result := DllCall(BoxSetBorder_func, Int, BoxIndex, Int, Width)
	return Result
}

BoxSetBorderColor(BoxIndex, Color)
{
	global BoxSetBorderColor_func
	Result := DllCall(BoxSetBorderColor_func, Int, BoxIndex, UInt, Color)
	return Result
}

BoxSetColor(BoxIndex, Color)
{
	global BoxSetColor_func
	Result := DllCall(BoxSetColor_func, Int, BoxIndex, UInt, Color)
	return Result
}

BoxSetHeight(BoxIndex, Height)
{
	global BoxSetHeight_func
	Result := DllCall(BoxSetHeight_func, Int, BoxIndex, Int, Height)
	return Result
}

BoxSetPos(BoxIndex, X, Y)
{
	global BoxSetPos_func
	Result := DllCall(BoxSetPos_func, Int, BoxIndex, Int, X, Int, Y)
	return Result
}

BoxSetWidth(BoxIndex, Width)
{
	global BoxSetWidth_func
	Result := DllCall(BoxSetWidth_func, Int, BoxIndex, Int, Width)
	return Result
}

BoxShow(BoxIndex)
{
	global BoxShow_func
	Result := DllCall(BoxShow_func, Int, BoxIndex)
	return Result
}

DestroyAllVisual()
{
	global DestroyAllVisual_func
	Result := DllCall(DestroyAllVisual_func)
	return Result
}

GetAmmoForCurrentWeapon()
{
	global GetAmmoForCurrentWeapon_func
	Result := DllCall(GetAmmoForCurrentWeapon_func)
	return Result
}

GetChatLine(Line, ByRef Output)
{
	global GetChatLine_func
	VarSetCapacity(Output, 252)
	Result := DllCall(GetChatLine_func, Int, Line, StrP, Output)
	return Result
}

GetCityName(ByRef City)
{
	global GetCityName_func
	VarSetCapacity(City, 32, 0)
	Result := DllCall(GetCityName_func, StrP, City)
	return Result
}

GetClipForCurrentWeapon()
{
	global GetClipForCurrentWeapon_func
	Result := DllCall(GetClipForCurrentWeapon_func)
	return Result
}

GetCurrentWeaponId()
{
	global GetCurrentWeaponId_func
	Result := DllCall(GetCurrentWeaponId_func)
	return Result
}

GetCurrentWeatherId()
{
	global GetCurrentWeatherId_func
	Result := DllCall(GetCurrentWeatherId_func)
	return Result
}

GetOnlinePlayers()
{
	global GetOnlinePlayers_func
	Result := DllCall(GetOnlinePlayers_func)
	return Result
}

GetPlayerArmor()
{
	global GetPlayerArmor_func
	Result := DllCall(GetPlayerArmor_func)
	return Result
}

GetPlayerData()
{
	global GetPlayerData_func
	Result := DllCall(GetPlayerData_func)
	return Result
}

GetPlayerHealth()
{
	global GetPlayerHealth_func
	Result := DllCall(GetPlayerHealth_func)
	return Result
}

GetPlayerId()
{
	global GetPlayerId_func
	Result := DllCall(GetPlayerId_func)
	return Result
}

GetPlayerIdByName(Name)
{
	global GetPlayerIdByName_func
	Result := DllCall(GetPlayerIdByName_func, Str, Name)
	return Result
}

GetPlayerMoney()
{
	global GetPlayerMoney_func
	Result := DllCall(GetPlayerMoney_func)
	return Result
}

GetPlayerName(ByRef Name)
{
	global GetPlayerName_func
	VarSetCapacity(Name, 24)
	Result := DllCall(GetPlayerName_func, StrP, Name)
	return Result
}

GetPlayerNameById(Id, ByRef Name)
{
	global GetPlayerNameById_func
	VarSetCapacity(Name, 24)
	Result := DllCall(GetPlayerNameById_func, Int, Id, StrP, Name)
	return Result
}

GetPlayerPing()
{
	global GetPlayerPing_func
	Result := DllCall(GetPlayerPing_func)
	return Result
}

GetPlayerPingById(Id)
{
	global GetPlayerPingById_func
	Result := DllCall(GetPlayerPingById_func, Int, Id)
	return Result
}

GetPlayerPingByName(Name)
{
	global GetPlayerPingByName_func
	Result := DllCall(GetPlayerPingByName_func, Str, Name)
	return Result
}

GetPlayerPos(ByRef X, ByRef Y, ByRef Z, ByRef R)
{
	global GetPlayerPos_func
	Result := DllCall(GetPlayerPos_func, FloatP, X, FloatP, Y, FloatP, Z, FloatP, R)
	return Result
}

GetPlayerScore()
{
	global GetPlayerScore_func
	Result := DllCall(GetPlayerScore_func)
	return Result
}

GetPlayerScoreById(Id)
{
	global GetPlayerScoreById_func
	Result := DllCall(GetPlayerScoreById_func, Int, Id)
	return Result
}

GetPlayerScoreByName(Name)
{
	global GetPlayerScoreByName_func
	Result := DllCall(GetPlayerScoreByName_func, Str, Name)
	return Result
}

GetPlayerSkin()
{
	global GetPlayerSkin_func
	Result := DllCall(GetPlayerSkin_func)
	return Result
}

GetPlayerState()
{
	global GetPlayerState_func
	Result := DllCall(GetPlayerState_func)
	return Result
}

GetPlayerWanteds()
{
	global GetPlayerWanteds_func
	Result := DllCall(GetPlayerWanteds_func)
	return Result
}

GetRadioSlot()
{
	global GetRadioSlot_func
	Result := DllCall(GetRadioSlot_func)
	return Result
}

GetScreenSizeX()
{
	global GetScreenSizeX_func
	Result := DllCall(GetScreenSizeX_func)
	return Result
}

GetScreenSizeY()
{
	global GetScreenSizeY_func
	Result := DllCall(GetScreenSizeY_func)
	return Result
}

GetServerIp(ByRef Address)
{
	global GetServerIp_func
	VarSetCapacity(Address, 21, 0)
	Result := DllCall(GetServerIp_func, StrP, Address)
	return Result
}

GetVehicleEngineState()
{
	global GetVehicleEngineState_func
	Result := DllCall(GetVehicleEngineState_func)
	return Result
}

GetVehicleFirstColor()
{
	global GetVehicleFirstColor_func
	Result := DllCall(GetVehicleFirstColor_func)
	return Result
}

GetVehicleHealth()
{
	global GetVehicleHealth_func
	Result := DllCall(GetVehicleHealth_func)
	return Result
}

GetVehicleHornState()
{
	global GetVehicleHornState_func
	Result := DllCall(GetVehicleHornState_func)
	return Result
}

GetVehicleId()
{
	global GetVehicleId_func
	Result := DllCall(GetVehicleId_func)
	return Result
}

GetVehicleLightState()
{
	global GetVehicleLightState_func
	Result := DllCall(GetVehicleLightState_func)
	return Result
}

GetVehicleLockState()
{
	global GetVehicleLockState_func
	Result := DllCall(GetVehicleLockState_func)
	return Result
}

GetVehicleModel()
{
	global GetVehicleModel_func
	Result := DllCall(GetVehicleModel_func)
	return Result
}

GetVehicleName(ModelId, ByRef VehicleName)
{
	global GetVehicleName_func
	VarSetCapacity(VehicleName, 24, 0)
	Result := DllCall(GetVehicleName_func, Int, ModelId, StrP, VehicleName)
	return Result
}

GetVehicleSeatState(Seat)
{
	global GetVehicleSeatState_func
	Result := DllCall(GetVehicleSeatState_func, Int, Seat)
	return Result
}

GetVehicleSecondColor()
{
	global GetVehicleSecondColor_func
	Result := DllCall(GetVehicleSecondColor_func)
	return Result
}

GetVehicleSirenState()
{
	global GetVehicleSirenState_func
	Result := DllCall(GetVehicleSirenState_func)
	return Result
}

GetVehicleSpeed()
{
	global GetVehicleSpeed_func
	fMult := 1.45
	Result := DllCall(GetVehicleSpeed_func, Float, fMult)
	return Result
}

GetZoneName(ByRef Zone)
{
	global GetZoneName_func
	VarSetCapacity(Zone, 32, 0)
	Result := DllCall(GetZoneName_func, StrP, Zone)
	return Result
}

HideAllVisual()
{
	global ShowAllVisual_func
	Result := DllCall(ShowAllVisual_func)
	return Result
}

ImageCreate(ImagePath)
{
	global ImageCreate_func
	path = %A_ScriptDir%
	Result := DllCall(ImageCreate_func, Str, path . ImagePath)
	return Result
}

ImageDestroy(ImageIndex)
{
	global ImageDestroy_func
	Result := DllCall(ImageDestroy_func, Int, ImageIndex)
	return Result
}

ImageHide(ImageIndex)
{
	global ImageHide_func
	Result := DllCall(ImageHide_func, Int, ImageIndex)
	return Result
}

ImageSetAlign(ImageIndex, Align)
{
	global ImageSetAlign_func
	Result := DllCall(ImageSetAlign_func, Int, ImageIndex, Int, Align)
	return Result
}

ImageSetPos(ImageIndex, PosX, PosY)
{
	global ImageSetPos_func
	Result := DllCall(ImageSetPos_func, Int, ImageIndex, Int, PosX, Int, PosY)
	return Result
}

ImageSetRotation(ImageIndex, Rotation)
{
	global ImageSetRotation_func
	Result := DllCall(ImageSetRotation_func, Int, ImageIndex, Int, Rotation)
	return Result
}

ImageShow(ImageIndex)
{
	global ImageShow_func
	Result := DllCall(ImageShow_func, Int, ImageIndex)
	return Result
}

IsChatOpen()
{
	global IsChatOpen_func
	Result := DllCall(IsChatOpen_func)
	return Result
}

IsDialogOpen()
{
	global IsDialogOpen_func
	Result := DllCall(IsDialogOpen_func)
	return Result
}

IsMenuOpen()
{
	global IsMenuOpen_func
	Result := DllCall(IsMenuOpen_func)
	return Result
}

IsPlayerDriver()
{
	global IsPlayerDriver_func
	Result := DllCall(IsPlayerDriver_func)
	return Result
}

IsPlayerFrozen()
{
	global IsPlayerFrozen_func
	Result := DllCall(IsPlayerFrozen_func)
	return Result
}

IsPlayerInAnyInterior()
{
	global IsPlayerInAnyInterior_func
	Result := DllCall(IsPlayerInAnyInterior_func)
	return Result
}

IsPlayerInAnyVehicle()
{
	global IsPlayerInAnyVehicle_func
	Result := DllCall(IsPlayerInAnyVehicle_func)
	return Result
}

IsPlayerInRangeOfPoint(X, Y, Z, Radius)
{
	global IsPlayerInRangeOfPoint_func
	Result := DllCall(IsPlayerInRangeOfPoint_func, Float, X, Float, Y, Float, Z, Float, Radius)
	return Result
}

IsPlayerInRangeOfPoint2D(X, Y, Radius)
{
	global IsPlayerInRangeOfPoint2D_func
	Result := DllCall(IsPlayerInRangeOfPoint2D_func, Float, X, Float, Y, Float, Radius)
	return Result
}

IsUpdateAvailable()
{
	global IsUpdateAvailable_func
	Result := DllCall(IsUpdateAvailable_func)
	return Result
}

LineCreate()
{
	global LineCreate_func
	Result := DllCall(LineCreate_func)
	return Result
}

LineDestroy(LineIndex)
{
	global LineDestroy_func
	Result := DllCall(LineDestroy_func, Int, LineIndex)
	return Result
}

LineHide(LineIndex)
{
	global LineHide_func
	Result := DllCall(LineHide_func, Int, LineIndex)
	return Result
}

LineSetColor(LineIndex, Color)
{
	global LineSetColor_func
	Result := DllCall(LineSetColor_func, Int, LineIndex, Int64, Color)
	return Result
}

LineSetHeight(LineIndex, Height)
{
	global LineSetHeight_func
	Result := DllCall(LineSetHeight_func, Int, LineIndex, Int, Height)
	return Result
}

LineSetPos(LineIndex, PosX, PosY)
{
	global LineSetPos_func
	Result := DllCall(LineSetPos_func, Int, LineIndex, Int, PosX, Int, PosY)
	return Result
}

LineSetWidth(LineIndex, Width)
{
	global LineSetWidth_func
	Result := DllCall(LineSetWidth_func, Int, LineIndex, Int, Width)
	return Result
}

LineShow(LineIndex)
{
	global LineShow_func
	Result := DllCall(LineShow_func, Int, LineIndex)
	return Result
}

RegisterTextBind(Bind, X, Y, Z, Radius, Loop = 1, Timeout = 7000, GroupId = 0, Delay = 0)
{
	global RegisterTextBind_func
	Result := DllCall(RegisterTextBind_func, Str, Bind, Float, X, Float, Y, Float, Z, Float, Radius, Int, Loop, Int, Timeout, Int, GroupId, Int, Delay)
	return Result
}

SendChat(Text)
{
	global SendChat_func
	Result := DllCall(SendChat_func, Str, Text)
	return Result
}

ShowAllVisual()
{
	global ShowAllVisual_func
	Result := DllCall(ShowAllVisual_func)
	return Result
}

ShowDialog(Style, Title, Text, Button)
{
	global ShowDialog_func
	Result := DllCall(ShowDialog_func, Int, Style, Str, Title, Str, Text, Str, Button)
	return Result
}

ShowGameText(Text, Time, Style)
{
	global ShowGameText_func
	Result := DllCall(ShowGameText_func, Str, Text, Int, Time, Int, Style)
	return Result
}

TextBindTimer(TextBindTime)
{
	global TextBindTimer_func
	Result := DllCall(TextBindTimer_func, Int, TextBindTime)
	return Result
}

TextCreate(Font, FontSize, Bold, Italic)
{
	global TextCreate_func
	Result := DllCall(TextCreate_func, Str, Font, Int, FontSize, Int, Bold, Int, Italic)
	return Result
}

TextDestroy(TextIndex)
{
	global TextDestroy_func
	Result := DllCall(TextDestroy_func, Int, TextIndex)
	return Result
}

TextHide(TextIndex)
{
	global TextHide_func
	Result := DllCall(TextHide_func, Int, TextIndex)
	return Result
}

TextSetAlign(TextIndex, Align)
{
	global TextSetAlign_func
	Result := DllCall(TextSetAlign_func, Int, TextIndex, Int, Align)
	return Result
}

TextSetColor(TextIndex, Color)
{
	global TextSetColor_func
	Result := DllCall(TextSetColor_func, Int, TextIndex, Int64, Color)
	return Result
}

TextSetPos(TextIndex, PosX, PosY)
{
	global TextSetPos_func
	Result := DllCall(TextSetPos_func, Int, TextIndex, Int, PosX, Int, PosY)
	return Result
}

TextSetString(TextIndex, Text)
{
	global TextSetString_func
	Result := DllCall(TextSetString_func, Int, TextIndex, Str, Text)
	return Result
}

TextShow(TextIndex)
{
	global TextShow_func
	Result := DllCall(TextShow_func, Int, TextIndex)
	return Result
}

UnblockChatInput()
{
	global UnblockChatInput_func
	Result := DllCall(UnblockChatInput_func)
	return Result
}

UnloadOverlay()
{
	global UnloadOverlay_func
	Result := DllCall(UnloadOverlay_func)
	return Result
}

UnregisterAllTextBinds()
{
	global UnregisterAllTextBinds_func
	Result := DllCall(UnregisterAllTextBinds_func)
	return Result
}

UnregisterTextBind(TextBindId)
{
	global UnregisterTextBind_func
	Result := DllCall(UnregisterTextBind_func, Int, TextBindId)
	return Result
}

; - tmp -
GetMaterials()
{
	global GetMaterials_func
	Result := DllCall(GetMaterials_func)
	return Result
}
; -------

; Alle existierende Overlay Elemente löschen,
; damit sich das Overlay nicht überlappt.
; ---
DestroyAllVisual()