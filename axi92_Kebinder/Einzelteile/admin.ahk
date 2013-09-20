#IfWinActive, GTA:SA:MP ; Folgende Hotkeys Funktionieren nur wenn GTA SA:MP ge�ffnet ist
Numpad0::
IfWinNotActive, GTA:SA:MP
{
   SendInput, {%A_ThisHotkey%}
   return
}
if(IsChatOpen() == 1 || IsDialogOpen() == 1 || IsPlayerInAnyVehicle() == 1) {
   SendInput, {%A_ThisHotkey%}
   return
}
GetPlayerName(name)
if(name == "axi92")
{
    Suspend Permit
	SendChat("/givejetpack")
	Suspend Off
}
return

<::
:?:/cars::
if(IsChatOpen() == 1 || IsDialogOpen() == 1 ) {
   SendInput, {%A_ThisHotkey%}
   return
}
Suspend, Permit
Sleep, 500
ShowDialog(1, ">>Car ID's<<", "445 - Admiral`n602 - Alpha`n416 - Ambulance`n592 - Andromada`n435 - Artic trailer 1`n450 - Artic trailer 2`n591 - Artic trailer 3`n577 - AT 400`n606 - Bag box A`n607 - Bag box B`n485 - Baggage`n568 - Bandito`n429 - Banshee`n433 - Barracks`n511 - Beagle`n499 - Benson`n581 - BF 400`n424 - BF Injection`n509 - Bike`n536 - Blade`n496 - Blistac`n504 - Blood ring banger`n481 - BMX`n422 - Bobcat`n498 - Boxville`n609 - Boxville (black)`n401 - Bravura`n575 - Broadway`n518 - Buccaneer`n402 - Buffalo`n541 - Bullet`n482 - Burriro`n431 - Bus`n438 - Cabbie`n457 - Caddy`n527 - Cadrona`n483 - Camper`n548 - Cargobob`n524 - Cement`n415 - Cheetah`n542 - Clover`n589 - Club`n437 - Coach`n472 - Coastgaurd`n532 - Combine`n480 - Comet`n596 - Cop car LS`n598 - Cop car LV`n597 - Cop car SF`n512 - Cropduster`n578 - DFT 30`n473 - Dinghy`n593 - Dodo`n486 - Dozer`n406 - Dumper`n573 - Duneride`n507 - Elegant`n562 - Elegy`n585 - Emperor`n427 - Enforcer`n419 - Esperanto`n587 - Euros`n462 - Faggio`n610 - Farm trailer`n490 - FBI Rancher`n528 - FBI Truck`n521 - FCR 900`n533 - Feltzer`n407 - Firetruck`n544 - Firetruck LA`n565 - Flash`n455 - Flatbed`n530 - Fork lift`n526 - Fortune`n463 - Freeway`n537 - Freight`n590 - Freight box`n569 - Freight flat`n466 - Glendale`n604 - Glendale (damage)`n492 - Greenwood`n474 - Hermes`n588 - Hotdog`n434 - Hotknife`n494 - Hotring`n502 - Hotring A`n503 - Hotring B`n523 - HPV 1000`n425 - Hunter`n579 - Huntley`n545 - Hustler`n520 - Hydra`n411 - Infernus`n546 - Intruder`n559 - Jester`n493 - Jetmax`n508 - Journey`n571 - Kart`n400 - Landstalker`n595 - Launch`n417 - Levetian`n403 - Linerunner`n517 - Majestic`n410 - Manana`n484 - Marquis`n487 - Maverick`n551 - Merit`n500 - Mesa`n444 - Monster`n556 - Monster A`n557 - Monster B`n418 - Moonbeam`n510 - Mountain bike`n572 - Mower`n423 - Mr Whoopee`n414 - Mule`n516 - Nebula`n553 - Nevada`n582 - News van`n522 - NRG 500`n467 - Oceanic`n443 - Packer`n470 - Patriot`n461 - PCJ 600`n404 - Perenail`n514 - Petrol`n584 - Petrol tanker`n603 - Phoenix`n600 - Picador`n448 - Pizza boy`n497 - Police maverick`n505 - Police Ranger`n413 - Pony`n430 - Predator`n426 - Premier`n436 - Previon`n547 - Primo`n471 - Quad`n563 - Raindance`n489 - Rancher`n599 - Ranger`n441 - RC Bandit`n464 - RC Baron`n594 - RC Cam`n501 - RC Goblin`n465 - RC Raider`n564 - RC Tiger`n453 - Reefer`n479 - Regina`n534 - Remington`n432 - Rhino`n515 - Roadtrain`n442 - Romero`n440 - Rumpo`n476 - Rustler`n475 - Sabre`n543 - Sadler`n605 - Sadler (damage)`n468 - Sanchez`n495 - Sandking`n567 - Savanna`n447 - Seasparrow`n428 - Securicar`n405 - Sentinel`n519 - Shamal`n460 - Skimmer`n535 - Slamvan`n458 - Solair`n469 - Sparrow`n452 - Speeder`n446 - Squalo`n580 - Stafford`n608 - Stairs`n439 - Stallion`n561 - Stratum`n538 - Streak`n570 - Streak`n409 - Stretch`n513 - Stuntplane`n560 - Sultan`n550 - Sunrise`n506 - Super GT`n601 - Swat tank`n574 - Sweeper`n566 - Tahoma`n549 - Tampa`n420 - Taxi`n459 - Top fun`n576 - Tornado`n525 - Towtruck`n531 - Tractor`n449 - Tram`n408 - Trashmaster`n454 - Tropic`n583 - Tug`n451 - Turismo`n558 - Uranus`n552 - Utility van`n611 - Utility van trailer`n488 - VCN Maverick`n540 - Vincent`n491 - Virgo`n412 - Voodoo`n539 - Vortex`n478 - Walton`n421 - Washington`n586 - Wayfarer`n529 - Williard`n555 - Windsor`n456 - Yankee`n554 - Yosemite`n477 - ZR 350`n", "Beenden")
Suspend, Off
return

:?:/jobid::
Suspend, Permit
Sleep, 500
ShowDialog(0, ">>Jobs<<", "ID1: Detektiv`nID2: Anwalt`nID3: Hure`nID4: Drogendealer`nID5: Autodieb`nID6: Wanted-Hacker`nID7: Mechaniker`nID8: Bodyguard`nID9: Waffendealer`nID10: Bauer`nID:11: Hotdog-Verkäufer`nID12: Arbeitslos`nID13: Arbeitslos`nID:14: Tuner`nID15: Arbeitslos`nID16: Trucker`nID17: Taschendieb`nID18: Holzfäller", "Beenden")
Suspend, Off
return

:?:/frakid::
Suspend, Permit
Sleep, 500
ShowDialog(0, ">>Fraktion ID's<<", "ID1: Admin`nID2: PHD`nID3: Army`nID4: Medic`nID5: LCN`nID6: Yakuza`nID7: FBI`nID8: Hitman`nID9: News Reporter`nID10: Terroristen`nID:11: Fahrschule`nID12: Bürgermeister`nID13: Ordnungsamt`nID:14: LSPD`nID15: Wheelman`nID16: SFPD`nID17: RM`nID18: Aztecas`nID19: Groove`nID20: Ballas`nID21: WCC`nID22: RS`nID23: RS`nID24: Vagos", "Beenden")
Suspend, Off
return

:?:/sanktionen::
Suspend, Permit
Sleep, 500
ShowDialog(0, ">>Sanktionen<<", "KICK GRÜNDE------------------------`n`n/ad Missbrauch (Bei Neulingen)`nAngriff auf /aond`n/a- und /sup- Missbrauch`n`nWEITERE SANKTIONEN-------`nAutoschieben -> 30 min Prison`nSpawnkilling -> 60 min Prison`nHealen im Kampf/Pushen -> 90 min Prison`nEingreifen in GF -> Zivilist 90 min Prison | Gang 120 min Prison`nDeskflucht -> 1 Warn + Tban: 2880`nBuguse Leicht: Tban: 4320`nBuguse Mittel: Tban: 10 080, 1 Warn, 70% Geldabzug`nBuguse Schwer: Tban: 43 200, 2 Warns, 80% Geldresett`nBeleidigung leicht -> Tban: 1440`nBeleidigung mittel -> Tban: 4320, 1 Warn`nBeleidigung schwer -> Tban: 10 080, 50% Geldresett, 1 Warn`nAD- Misbrauch -> 15min Prison`nBeleidigung in AD -> Ban`n /a /sup Misbrauch (mehrmal) -> 30min Prison`nFahrer Driveby (Totparken, schießen,...) -> Schein entzug + 90min Prison`nSDM -> Warn + 180min Prison`nDM auf Dienstleistende -> 1 Warn + 180min Prison`nTotsprayen (50HP+) -> 60min Prison`nOffline Fluch vor Admin -> Zeit + 0.5 x Zeit`nOfflineflucht normal: 1 Warn + Tban: 2880`nBunnyhop bei Gefahr -> 60min Prison`nBunnyhop bei Gefahr mit Flagge: Tban: 360`nNO-DM Flucht -> 60min Prison`nUmgangston -> Prison 30`nSchiessen in No-DM -> 45 Prison", "Beenden")
Suspend, Off
return

:?:/beleidigung::
Suspend, Permit
Sleep, 500
ShowDialog(0, ">>Beleidigungskatalog<<", "LEICHT`nFicker`nNutte`nWixer`nWichser`nFotze`nMongo`nSpast`nSpacko`nSpacken`nHomo`nFick dich`n-`nMITTEL`nBastard`nMissgeburt`n-`nSCHWER`nHuso`nMutterficker`nFamilienbezogen`nReallife Drohung`n-`nERLAUBT`nOpfer`nhdf`nDu bist schlecht`nunfähig`nlauch`nhorst`nfischkopf`ndu ei`npussy`nlappen`narsch`nSteckdosenbefruchter`nHoden`nHonk`nTrottel`nDumm`nDumpfbacke`nKack`nPenis`nPimmel`nAffe`nKackwurst`nidiot`nPottsau`nAssi", "Beenden")
Suspend, Off
return

:?:/ct::
Suspend, Permit
SendChat("/ct")
SendChat("/tickets")
Suspend, Off
return

:?:/scountdown::
Suspend, Permit
SendChat("/s 5")
Sleep, 1000
SendChat("/s 4")
Sleep, 1000
SendChat("/s 3")
Sleep, 1000
SendChat("/s 2")
Sleep, 1000
SendChat("/s 1")
Sleep, 1000
SendChat("/s GO!")
Suspend, Off
return

:?:/save-all::
Suspend, Permit
SendChat("/cnnn 3 ~n~~n~~r~Speicherung! Kann zu laggs fuehren!")
AddChatMessage(0xFF3333, "Speicherung beginnt!")
Sleep, 1000
SendChat("/saveall")
StartTime := A_TickCount
savetime := true
Suspend, Off
return

:?:/gotooamt::
Suspend, Permit
SendChat("/gotocoords 929,-1218,17")
Suspend, Off
return

:?:/gotokh::
Suspend, Permit
SendChat("/gotocoords 1190.8,-1327.3,13.4")
Suspend, Off
return

:?:/gotohafen::
Suspend, Permit
SendChat("/gotocoords 2469.9,-2460.8,28.4")
Suspend, Off
return

:?:/gotomc::
Suspend, Permit
SendChat("/gotocoords -2324.9,-1623.8,490")
Suspend, Off
return

:?:/gotoleader::
Suspend, Permit
SendChat("/gotocoords 2218.5,-1165.6,29.8")
Suspend, Off
return

:?:/gotolsairport::
Suspend, Permit
SendChat("/gotocoords 2108.7,-2495.3,13.2")
Suspend, Off
return

:?:/schanzencar::
Suspend, Permit
SendChat("/attachobjecttovehicle 980 0 3 1 70 90 0 ")
Suspend, Off
return

:?:/auc::
Suspend, Permit
if(IsPlayerInAnyVehicle() == 1)
{
   if(GetVehicleModel() == 429) ;banshee
   {
      SendChat("/attachobjecttovehicle 19419 0 -1.28 0.55 0 0 0")
   }
   if(GetVehicleModel() == 480) ;comet
   {
      SendChat("/attachobjecttovehicle 19419 0 -0.96 0.68 0 0 0")
   }
   if(GetVehicleModel() == 482) ;burrito
   {
      SendChat("/attachobjecttovehicle 19419 0 1 0.9 0 0 0")
   }
   if(GetVehicleModel() == 579) ;huntley
   {
      SendChat("/attachobjecttovehicle 19419 0 0 1.2 0 0 0")
   }  
   if(GetVehicleModel() == 515) ;truck
   {
      SendChat("/attachobjecttovehicle 19419 0 1.5 1.3 0 0 0")
   } 
   if(GetVehicleModel() == 411) ;infi
   {
      SendChat("/attachobjecttovehicle 19419 0 0 0.7 0 0 0")
   }
   if(GetVehicleModel() == 431) ;bus
   {
      SendChat("/attachobjecttovehicle 19419 0 5 2.2 0 0 0")
   } 
   if(GetVehicleModel() == 449) ;straßenbahn
   {
      SendChat("/attachobjecttovehicle 19419 0 4 1.4 0 0 0")
   }  
   if(GetVehicleModel() == 451) ;turi
   {
      SendChat("/attachobjecttovehicle 19419 0 -0.3 0.58 0 0 0")
   }      
   if(GetVehicleModel() == 438)
   {
      SendChat("/attachobjecttovehicle 19419 0 0.7 0.8 0 0 0")
   }     
   if(GetVehicleModel() == 544)
   {
      SendChat("/attachobjecttovehicle 19419 0 2.8 1.45 0 0 0")
   } 
   if(GetVehicleModel() == 560) ;Sultan
   {
      SendChat("/attachobjecttovehicle 19419 0 0.1 0.83 0 0 0")
   }  
   if(GetVehicleModel() == 697) ;HotringRacer
   {
      SendChat("/attachobjecttovehicle 19419 0 -0.3 0.73 0 0 0")
   }      
   if(GetVehicleModel() == 697) ;HotringRacer
   {
      SendChat("/attachobjecttovehicle 19419 0 -0.3 0.73 0 0 0")
   }
   if(GetVehicleModel() == 433) ;Barraks
   {
      SendChat("/attachobjecttovehicle 19419 0 1.2 1.7 0 0 0")
   }   
}
Suspend, Off
return

:?:/gotob::
Suspend, Permit
SendChat("/gotocoords 1212.9,-881.5,55.5")
SendChat("/setvirtualworld 0")
SendChat("/setint 0")
Suspend, Off
return

Acolorcar:
Random, acolorcar1 , 0, 255
Random, acolorcar2 , 0, 255
SendChat("/acolorcar " acolorcar1 " " acolorcar2)
SendChat("/licht")
return

:?:/funcar::
Suspend, Toggle 
;~ acolorcar_status := acolorcar_status ? "Funcar AN" : "Funcar AUS"
acolorcar_status := !acolorcar_status
AddChatMessage(0xFF0000, "Info: {FFFFFF}" acolorcar_status)
if(acolorcar_status == true)
{
   SetTimer, Acolorcar, 100
}
else
{
   SetTimer, Acolorcar, Off
}
return

:?:/flip::
Suspend, Permit
SendChat("/flip")
SendChat("/fixveh")
Suspend, Off
return

:?:/gotolsap::
Suspend, Permit
SendChat("/gotocoords 1904,-2453,21")
Suspend, Off
return

:?:/eventmr::
Suspend, Permit
SendChat("/o Event: Massive Rampage wurde eröffnet!")
Sleep, 1000
SendChat("/event")
Sleep, 1000
SendChat("/o 10")
Sleep, 1000
SendChat("/o 9")
Sleep, 1000
SendChat("/o 8")
Sleep, 1000
SendChat("/o 7")
Sleep, 1000
SendChat("/o 6")
Sleep, 1000
SendChat("/o 5")
Sleep, 1000
SendChat("/o 4")
Sleep, 1000
SendChat("/o 3")
Sleep, 1000
SendChat("/o 2")
Sleep, 1000
SendChat("/o 1")
Sleep, 1000
SendChat("/o Eventport Geschlossen!")
Sleep, 1000
SendChat("/event")
Suspend, Off
return

:?:/autofind::
Suspend Permit
if(autofind_status == false)
{
   autofind_status := true
   Sleep, 200
   AddChatMessage(0xFFFFFF, "ID?")
   SendInput t
   Input,aufnahme_autofind,V I M T10,{ENTER},*
   If(aufnahme_autofind != "" OR aufnahme_autofind != 0)
   {
      SetTimer, Autofind, 4000
   }
   else
   {
      AddChatMessage(0xFFFFFF, "Fehler, du hast zu lange gebraucht.")
   }
   AddChatMessage(0xFFFFFF, aufnahme_autofind)
}
else
{
   autofind_status := false
}
Sleep, 1000
Suspend Off
return

r::
IfWinNotActive, GTA:SA:MP
{
   SendInput, {%A_ThisHotkey%}
   return
}
if(IsChatOpen() == 1 || IsDialogOpen() == 1) {
   SendInput, {%A_ThisHotkey%}
   return
}
Suspend, Permit
SetTimer, Autofind, Off
SetTimer, Autofix, Off
Settimer, toggle_loginlogout, Off
togloginlogout := true
autofix_status := false
autofind_status := false
Suspend, Off
return

Autofind:
SendChat("/find " aufnahme_autofind)
return

:?:/autofix::
Suspend Permit
if(autofix_status == false)
{
   autofix_status := true
   SetTimer, Autofix, 1500
   SoundSetWaveVolume, 30
   AddChatMessage(0xFFFFFF, "Autofix activated!")
   SoundPlay, %MainDir%\attack_mode.mp3 ;K.I.T.T. Attack Mode
}
else
{
   autofix_status := false
   AddChatMessage(0xFFFFFF, "Autofix deactivated!")
}
Suspend Off
SoundSetWaveVolume, 10
return

Autofix:
if(GetVehicleHealth() < 900 AND IsPlayerInAnyVehicle() == 1)
{
   SendChat("/fixveh")
}
return

:?:/quiz1::
Suspend Permit
SendChat("/o Blitzquiz: Welcher dieser Begriffe past nicht?")
Sleep, 100
SendChat("/o Tannenbaum, Christbaum, Purzelbaum, Nussbaum")
Sleep, 100
SendChat("/o Antwort per SMS an -> 11")
Sleep, 100
SendChat("/o NICHT im /a Chat antworten!")
Suspend Off
return

:?:/brtime::
Suspend Permit
br_ElapsedTime := A_TickCount - br_StartTime
AddChatMessage(0xFF3333, "BR vergangene Zeit: " br_ElapsedTime "ms Timer derzeit: " A_TickCount)
Suspend Off
return

:?:/gotobankls::
Suspend Permit
SendChat("/gotocoords 1461,-1030,24")
Suspend Off
return

:?:/goto_dm1::
Suspend Permit
SendChat("/gotocoords 4152,-1874,10")
Suspend Off
return