    ;=================== Include ==================================
    #Include API.ahk
    ;=================== Include Ende =============================
    ;=================== Overlay Create ===========================
    OverlayOn := 0
     
    OverlayHeal := TextCreate("Arial", 9, true, false)
    TextSetPos(OverlayHeal, 720, 90)
    TextSetColor(OverlayHeal, 0xFF34cb5a)
    ;Drauf: 710, daneben 764
    TextSetString(OverlayHeal,"" GetPlayerHealth() "")
     
    OverlayArmor := TextCreate("Arial", 9, true, false)
    TextSetPos(OverlayArmor, 720, 60)
    TextSetColor(OverlayArmor, 0xFF34cb5a)
    TextSetString(OverlayArmor,"" GetPlayerArmor() "")
     
    OverlayMaske := TextCreate("Arial",10,true,false)
    TextSetPos(OverlayMaske,55,417)
    TextSetColor(OverlayMaske, 0xFF34cb5a)
    TextSetString(OverlayMaske,"Ort")
     
    OverlayCarHeal := TextCreate("Arial",10,true,false)
    TextSetPos(OverlayCarHeal,55,407)
    TextSetColor(OverlayCarHeal, 0xFF34cb5a)
    TextSetString(OverlayCarHeal,"Carheal: 1000")
    ;=================== Overlay Create Ende ======================
    ;=================== Timer ====================================
    Settimer,Update,500
    ;=================== Timer Ende ===============================
     
    Update:
    if(OverlayOn == 1)
    {
            TextSetString(OverlayHeal,"" GetPlayerHealth() "")
            TextSetString(OverlayArmor,"" GetPlayerArmor() "")
            TextSetString(OverlayMaske,"" GetCityName() " - " GetZoneName() "")
            if(IsPlayerInAnyVehicle() == 1)
            {
                    TextSetString(OverlayCarHeal,"Carheal: " GetVehicleHealth() "")
            }
            else
            {
                    TextSetString(OverlayCarHeal,"Carheal: Kein Auto")
            }
    }
    return
     
    ;=================== Ingame Commands / Tasten =================
    #IfWinActive, GTA:SA:MP ; Folgende Hotkeys Funktionieren nur wenn GTA SA:MP geöffnet ist
    #UseHook
    #SingleInstance, Force
     
    F9::
    if(OverlayOn == 0)
    {
            TextShow(OverlayHeal)
            TextShow(OverlayArmor)
            TextShow(OverlayMaske)
            TextShow(OverlayCarHeal)
            AddChatMessage(0xCC3300,"Das Overlay ist nun {00FF00}aktiviert {FFFFFF}.")
            OverlayOn := 1
    } else {
            TextHide(OverlayHeal)
            TextHide(OverlayArmor)
            TextHide(OverlayMaske)
            TextHide(OverlayCarHeal)
            AddChatMessage(0xCC3300,"Das Overlay ist nun {FF0000}deaktiviert {FFFFFF}.")
            OverlayOn := 0
    }
    return
    
