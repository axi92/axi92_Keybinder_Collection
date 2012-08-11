#NoEnv

; Declars
PLAYER_STATE_LEAVING_VEHICLE := 0
PLAYER_STATE_NORMAL := 1
PLAYER_STATE_DRIVING := 50
PLAYER_STATE_DYING := 54
PLAYER_STATE_DEAD := 55
; ---

; Script Entry
hModule := DllCall("LoadLibrary", Str, "API.dll")
if(hModule == -1 || hModule == 0)
{
	MsgBox, 48, API - Fehler, Die API.dll konnte nicht gefunden werden.`nDer Keybinder wird nun beendet.
	ExitApp
	
	; Ihr könnt die Funktion hier natürlich selber bearbeiten.
	; Die Aktuelle API findet ihr hier:
	;		http://samp-api.net/downloads/current_api/API.dll
	; dort ist nur die Offiziel veröffentlichte API.dll
	; Dort wird keine Test oder Beta Version veröffentlicht.
}
; ---

AddChatMessage_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_AddChatMessage")
AddChatMessage(Color, Text)
{
	global AddChatMessage_func
	Result := DllCall(AddChatMessage_func, Int, Color, Str, Text)
	return Result
}

BlockChatInput_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_BlockChatInput")
BlockChatInput()
{
	global BlockChatInput_func
	Result := DllCall(BlockChatInput_func)
	return Result
}

UnblockChatInput_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_UnblockChatInput")
UnblockChatInput()
{
	global UnblockChatInput_func
	Result := DllCall(UnblockChatInput_func)
	return Result
}

GetChatLine_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetChatLine")
GetChatLine(Line, ByRef Output)
{
	global GetChatLine_func
	VarSetCapacity(Output, 252)
	Result := DllCall(GetChatLine_func, Int, Line, StrP, Output)
	return Result
}

GetOnlinePlayers_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetOnlinePlayers")
GetOnlinePlayers()
{
	global GetOnlinePlayers_func
	Result := DllCall(GetOnlinePlayers_func)
	return Result
}

GetPlayerData_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetPlayerData")
GetPlayerData()
{
	global GetPlayerData_func
	Result := DllCall(GetPlayerData_func)
	return Result
}

GetPlayerId_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetPlayerId")
GetPlayerId()
{
	global GetPlayerId_func
	Result := DllCall(GetPlayerId_func)
	return Result
}

GetPlayerName_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetPlayerName")
GetPlayerName(ByRef Name)
{
	global GetPlayerName_func
	VarSetCapacity(Name, 24)
	Result := DllCall(GetPlayerName_func, StrP, Name)
	return Result
}

GetPlayerPing_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetPlayerPing")
GetPlayerPing()
{
	global GetPlayerPing_func
	Result := DllCall(GetPlayerPing_func)
	return Result
}

GetPlayerScore_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetPlayerScore")
GetPlayerScore()
{
	global GetPlayerScore_func
	Result := DllCall(GetPlayerScore_func)
	return Result
}

GetPlayerNameById_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetPlayerNameById")
GetPlayerNameById(Id, ByRef Name)
{
	global GetPlayerNameById_func
	VarSetCapacity(Name, 24)
	Result := DllCall(GetPlayerNameById_func, Int, Id, StrP, Name)
	return Result
}

GetPlayerArmor_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetPlayerArmor")
GetPlayerArmor()
{
	global GetPlayerArmor_func
	Result := DllCall(GetPlayerArmor_func)
	return Result
}

GetPlayerHealth_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetPlayerHealth")
GetPlayerHealth()
{
	global GetPlayerHealth_func
	Result := DllCall(GetPlayerHealth_func)
	return Result
}

GetPlayerIdByName_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetPlayerIdByName")
GetPlayerIdByName(Name)
{
	global GetPlayerIdByName_func
	Result := DllCall(GetPlayerIdByName_func, Str, Name)
	return Result
}

GetPlayerPingById_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetPlayerPingById")
GetPlayerPingById(Id)
{
	global GetPlayerPingById_func
	Result := DllCall(GetPlayerPingById_func, Int, Id)
	return Result
}

GetPlayerPingByName_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetPlayerPingByName")
GetPlayerPingByName(Name)
{
	global GetPlayerPingByName_func
	Result := DllCall(GetPlayerPingByName_func, Str, Name)
	return Result
}

GetPlayerScoreById_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetPlayerScoreById")
GetPlayerScoreById(Id)
{
	global GetPlayerScoreById_func
	Result := DllCall(GetPlayerScoreById_func, Int, Id)
	return Result
}

GetPlayerScoreByName_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetPlayerScoreByName")
GetPlayerScoreByName(Name)
{
	global GetPlayerScoreByName_func
	Result := DllCall(GetPlayerScoreByName_func, Str, Name)
	return Result
}

GetPlayerSkin_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetPlayerSkin")
GetPlayerSkin()
{
	global GetPlayerSkin_func
	Result := DllCall(GetPlayerSkin_func)
	return Result
}

GetPlayerPos_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetPlayerPos")
GetPlayerPos(ByRef X, ByRef Y, ByRef Z, ByRef R)
{
	global GetPlayerPos_func
	Result := DllCall(GetPlayerPos_func, FloatP, X, FloatP, Y, FloatP, Z, FloatP, R)
	return Result
}

GetPlayerMoney_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetPlayerMoney")
GetPlayerMoney()
{
	global GetPlayerMoney_func
	Result := DllCall(GetPlayerMoney_func)
	return Result
}

GetPlayerWanteds_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetPlayerWanteds")
GetPlayerWanteds()
{
	global GetPlayerWanteds_func
	Result := DllCall(GetPlayerWanteds_func)
	return Result
}

GetRadioSlot_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetRadioSlot")
GetRadioSlot()
{
	global GetRadioSlot_func
	Result := DllCall(GetRadioSlot_func)
	return Result
}

GetServerIp_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetServerIp")
GetServerIp(ByRef Address)
{
	global GetServerIp_func
	VarSetCapacity(Address, 21, 0)
	Result := DllCall(GetServerIp_func, StrP, Address)
	return Result
}

GetClipForCurrentWeapon_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetClipForCurrentWeapon")
GetClipForCurrentWeapon()
{
	global GetClipForCurrentWeapon_func
	Result := DllCall(GetClipForCurrentWeapon_func)
	return Result
}

GetVehicleName_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetVehicleName")
GetVehicleName(ByRef VehicleName)
{
	global GetVehicleName_func
	VarSetCapacity(VehicleName, 24, 0)
	Result := DllCall(GetVehicleName_func, StrP, VehicleName)
	return Result
}

GetVehicleSpeed_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetVehicleSpeed")
GetVehicleSpeed()
{
	global GetVehicleSpeed_func
	fMult := 1.42
	Result := DllCall(GetVehicleSpeed_func, Float, fMult)
	return Result
}

GetVehicleSeatState_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetVehicleSeatState")
GetVehicleSeatState(Seat)
{
	global GetVehicleSeatState_func
	Result := DllCall(GetVehicleSeatState_func, Int, Seat)
	return Result
}

GetCityName_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetCityName")
GetCityName(ByRef City)
{
	global GetCityName_func
	VarSetCapacity(City, 32, 0)
	Result := DllCall(GetCityName_func, StrP, City)
	return Result
}

GetZoneName_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetZoneName")
GetZoneName(ByRef Zone)
{
	global GetZoneName_func
	VarSetCapacity(Zone, 32, 0)
	Result := DllCall(GetZoneName_func, StrP, Zone)
	return Result
}

GetScreenSizeX_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetScreenSizeX")
GetScreenSizeX()
{
	global GetScreenSizeX_func
	Result := DllCall(GetScreenSizeX_func)
	return Result
}

GetPlayerState_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetPlayerState")
GetPlayerState()
{
	global GetPlayerState_func
	Result := DllCall(GetPlayerState_func)
	return Result
}

GetCurrenWeatherId_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetCurrenWeatherId")
GetCurrenWeatherId()
{
	global GetCurrenWeatherId_func
	Result := DllCall(GetCurrenWeatherId_func)
	return Result
}

GetScreenSizeY_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetScreenSizeY")
GetScreenSizeY()
{
	global GetScreenSizeY_func
	Result := DllCall(GetScreenSizeY_func)
	return Result
}

IsMenuOpen_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_IsMenuOpen")
IsMenuOpen()
{
	global IsMenuOpen_func
	Result := DllCall(IsMenuOpen_func)
	return Result
}

IsPlayerDriver_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_IsPlayerDriver")
IsPlayerDriver()
{
	global IsPlayerDriver_func
	Result := DllCall(IsPlayerDriver_func)
	return Result
}

IsPlayerFrozen_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_IsPlayerFrozen")
IsPlayerFrozen()
{
	global IsPlayerFrozen_func
	Result := DllCall(IsPlayerFrozen_func)
	return Result
}

IsUpdateAvailable_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_IsUpdateAvailable")
IsUpdateAvailable()
{
	global IsUpdateAvailable_func
	Result := DllCall(IsUpdateAvailable_func)
	return Result
}

GetCurrentWeaponId_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetCurrentWeaponId")
GetCurrentWeaponId()
{
	global GetCurrentWeaponId_func
	Result := DllCall(GetCurrentWeaponId_func)
	return Result
}

GetAmmoForCurrentWeapon_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetAmmoForCurrentWeapon")
GetAmmoForCurrentWeapon()
{
	global GetAmmoForCurrentWeapon_func
	Result := DllCall(GetAmmoForCurrentWeapon_func)
	return Result
}

GetVehicleEngineState_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetVehicleEngineState")
GetVehicleEngineState()
{
	global GetVehicleEngineState_func
	Result := DllCall(GetVehicleEngineState_func)
	return Result
}

GetVehicleLightState_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetVehicleLightState")
GetVehicleLightState()
{
	global GetVehicleLightState_func
	Result := DllCall(GetVehicleLightState_func)
	return Result
}

GetVehicleLockState_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetVehicleLockState")
GetVehicleLockState()
{
	global GetVehicleLockState_func
	Result := DllCall(GetVehicleLockState_func)
	return Result
}

GetVehicleModel_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetVehicleModel")
GetVehicleModel()
{
	global GetVehicleModel_func
	Result := DllCall(GetVehicleModel_func)
	return Result
}

GetVehicleFirstColor_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetVehicleFirstColor")
GetVehicleFirstColor()
{
	global GetVehicleFirstColor_func
	Result := DllCall(GetVehicleFirstColor_func)
	return Result
}

GetVehicleSecondColor_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetVehicleSecondColor")
GetVehicleSecondColor()
{
	global GetVehicleSecondColor_func
	Result := DllCall(GetVehicleSecondColor_func)
	return Result
}

GetVehicleHealth_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetVehicleHealth")
GetVehicleHealth()
{
	global GetVehicleHealth_func
	Result := DllCall(GetVehicleHealth_func)
	return Result
}

GetVehicleHornState_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetVehicleHornState")
GetVehicleHornState()
{
	global GetVehicleHornState_func
	Result := DllCall(GetVehicleHornState_func)
	return Result
}

GetVehicleSirenState_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetVehicleSirenState")
GetVehicleSirenState()
{
	global GetVehicleSirenState_func
	Result := DllCall(GetVehicleSirenState_func)
	return Result
}

GetVehicleId_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetVehicleId")
GetVehicleId()
{
	global GetVehicleId_func
	Result := DllCall(GetVehicleId_func)
	return Result
}

IsChatOpen_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_IsChatOpen")
IsChatOpen()
{
	global IsChatOpen_func
	Result := DllCall(IsChatOpen_func)
	return Result
}

IsDialogOpen_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_IsDialogOpen")
IsDialogOpen()
{
	global IsDialogOpen_func
	Result := DllCall(IsDialogOpen_func)
	return Result
}

IsPlayerInAnyInterior_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_IsPlayerInAnyInterior")
IsPlayerInAnyInterior()
{
	global IsPlayerInAnyInterior_func
	Result := DllCall(IsPlayerInAnyInterior_func)
	return Result
}

IsPlayerInAnyVehicle_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_IsPlayerInAnyVehicle")
IsPlayerInAnyVehicle()
{
	global IsPlayerInAnyVehicle_func
	Result := DllCall(IsPlayerInAnyVehicle_func)
	return Result
}

IsPlayerInRangeOfPoint_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_IsPlayerInRangeOfPoint")
IsPlayerInRangeOfPoint(X, Y, Z, Radius)
{
	global IsPlayerInRangeOfPoint_func
	Result := DllCall(IsPlayerInRangeOfPoint_func, Float, X, Float, Y, Float, Z, Float, Radius)
	return Result
}

IsPlayerInRangeOfPoint2D_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_IsPlayerInRangeOfPoint2D")
IsPlayerInRangeOfPoint2D(X, Y, Radius)
{
	global IsPlayerInRangeOfPoint2D_func
	Result := DllCall(IsPlayerInRangeOfPoint2D_func, Float, X, Float, Y, Float, Radius)
	return Result
}

RegisterTextBind_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_RegisterTextBind")
RegisterTextBind(Bind, X, Y, Z, Radius, Loop = 1, Timeout = 7000, GroupId = 0, Delay = 0)
{
	global RegisterTextBind_func
	Result := DllCall(RegisterTextBind_func, Str, Bind, Float, X, Float, Y, Float, Z, Float, Radius, Int, Loop, Int, Timeout, Int, GroupId, Int, Delay)
	return Result
}

UnregisterAllTextBinds_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_UnregisterAllTextBinds")
UnregisterAllTextBinds()
{
	global UnregisterAllTextBinds_func
	Result := DllCall(UnregisterAllTextBinds_func)
	return Result
}

UnregisterTextBind_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_UnregisterTextBind")
UnregisterTextBind(TextBindId)
{
	global UnregisterTextBind_func
	Result := DllCall(UnregisterTextBind_func, Int, TextBindId)
	return Result
}

TextBindTimer_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_TextBindTimer")
TextBindTimer(TextBindTime)
{
	global TextBindTimer_func
	Result := DllCall(TextBindTimer_func, Int, TextBindTime)
	return Result
}

SendChat_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_SendChat")
SendChat(Text)
{
	global SendChat_func
	Result := DllCall(SendChat_func, Str, Text)
	return Result
}

ShowDialog_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_ShowDialog")
ShowDialog(Style, Title, Text, Button)
{
	global ShowDialog_func
	Result := DllCall(ShowDialog_func, Int, Style, Str, Title, Str, Text, Str, Button)
	return Result
}

ShowGameText_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_ShowGameText")
ShowGameText(Text, Time, Style)
{
	global ShowGameText_func
	Result := DllCall(ShowGameText_func, Str, Text, Int, Time, Int, Style)
	return Result
}