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
IfWinNotActive, GTA:SA:MP
{
   return
}
Suspend, Permit
Sleep, 500
ShowDialog(1, ">>Car ID's<<", "400 - Landsalker`n401 - Bravura`n402 - Buffalo`n403 - Linerunner`n404 - Perenniel`n405 - Sentinel`n406 - Dumper`n407 - Firetruck`n408 - Trashmaster`n409 - Stretch`n410 - Manana`n411 - Infernus`n412 - Voodoo`n413 - Pony`n414 - Mule`n415 - Cheetah`n416 - Ambulance`n417 Leviathan`n418 - Moonbeam`n419 - Esperanto`n420 - Taxi`n421 - Washington`n422 - Bobcat`n423 - Mr Whoopee`n424 - BF Injection`n425 - Hunter`n426 - Premier`n427 - Enforcer`n428 - Securicar`n429 - Banshee`n430 - Predator`n431 - Bus`n432 - Rhino`n433 - Barracks`n434 - Hotknife`n435 - Article Trailer`n436 - Previon`n437 - Coach`n438 - Cabbie`n439 - Stallion`n440 - Rumpo`n441 - RC Bandit`n442 - Romero`n443 - Packer`n444 - Monster`n445 - Admiral`n446 - Squallo`n447 - Seasparrow`n448 - Pizzaboy`n449 - Tram`n450 - Article Trailer 2`n451 - Turismo`n452 - Speeder`n453 - Reefer`n454 - Tropic`n455 - Flatbed`n456 - Yankee`n457 - Caddy`n458 - Solair`n459 - Topfun Van (Berkley's RC)`n460 - Skimmer`n461 - PCJ-600`n462 - Faggio`n463 - Freeway`n464 - RC Baron`n465 - RC Raider`n466 - Glendale`n467 - Oceanic`n468 - Sanchez`n469 - Sparrow`n470 - Patriot`n471 - Quad`n472 - Coastguard`n473 - Dinghy`n474 - Hermes`n475 - Sabre`n476 - Rustler`n477 - ZR-350`n478 - Walton`n479 - Regina`n480 - Comet`n481 - BMX`n482 - Burrito`n483 - Camper`n484 - Marquis`n485 - Baggage`n486 - Dozer`n487 - Maverick`n488 - SAN News Maverick`n489 - Rancher`n490 - FBI Rancher`n491 - Virgo`n492 - Greenwood`n493 - Jetmax`n494 - Hotring Racer`n495 - Sandking`n496 - Balista Compact`n497 - Police Maverick`n498 - Boxville`n499 - Benson`n500 - Mesa`n501 - RC Goblin`n502 - Hotring Racer`n503 - Hotring Racer`n504 - Bloodring Banger`n505 - Rancher`n506 - Super GT`n507 - Elegant`n508 - Journey`n509 - Bike`n510 - Mountain Bike`n511 - Beagle`n512 - Cropduster`n513 - Stuntplane`n514 - Tanker`n515 - Roadtrain`n516 - Nebula`n517 - Majestic`n518 - Buccaneer`n519 - Shamal`n520 - Hydra`n521 - FCR-900`n522 - NRG-500`n523 - HPV1000`n524 - Cement Truck`n525 - Towtruck`n526 - Fortune`n527 - Cadrona`n528 - FBI Truck`n529 - Willard`n530 - Forklift`n531 - Tractor`n532 - Combine Harvester`n533 - Feltzer`n534 - Remington`n535 - Slamvan`n536 - Blade`n537 - Freight (Train)`n538 - Brownstreak (Train)`n539 - Vortex`n540 - Vincent`n541 - Bullet`n542 - Clover`n543 - Sadler`n544 - Firetruck LA`n545 - Hustler`n546 - Intruder`n547 - Primo`n548 - Cargobob`n549 - Tampa`n550 - Sunrise`n551 - Merit`n552 - Utility Van`n553 - Nevada`n554 - Yosemite`n555 - Windsor`n556 - Monster A`n557 - Monster B`n558 - Uranus`n559 - Jester`n560 - Sultan`n561 - Stratum`n562 - Elegy`n563 - Raindance`n564 - RC Tiger`n565 - Flash`n566 - Tahoma`n567 - Savanna`n568 - Bandito`n569 - Freight Flat Trailer (Train)`n570 - Streak Trailer (Train)`n571 - Kart`n572 - Mower`n573 - Dune`n574 - Sweeper`n575 - Broadway`n576 - Tornado`n577 - AT400`n578 - DFT-30`n579 - Huntley`n580 - Stafford`n581 - BF-400`n582 - Newsvan`n583 - Tug`n584 - Petrol Trailer`n585 - Emperor`n586 - Wayfarer`n587 - Euros`n588 - Hotdog`n589 - Club`n590 - Freight Box Trailer (Train)`n591 - Article Trailer 3`n592 - Andromada`n593 - Dodo`n594 - RC Cam`n595 - Launch`n596 - Police Car (LSPD)`n597 - Police Car (SFPD)`n598 - Police Car (LVPD)`n599 - Police Ranger`n600 - Picador`n601 - SWAT`n602 - Alpha`n603 - Phoenix`n604 - Glendale Shit`n605 - Sadler Shit`n606 - Baggage Trailer A`n607 - Baggage Trailer B`n608 - Tug Stairs Trailer`n609 - Boxville`n610 - Farm Trailer`n611 - Utility Trailer`n", "Beenden")
Suspend, Off
return

:?:/sanktionen::
IfWinNotActive, GTA:SA:MP
{
   return
}
Suspend, Permit
Sleep, 500
ShowDialog(0, ">>Sanktionen<<", "KICK GRÜNDE------------------------`n`n/ad Missbrauch (Bei Neulingen)`nAngriff auf /aond`n/a- und /sup- Missbrauch`n`nWEITERE SANKTIONEN-------`nAutoschieben -> 30 min Prison`nSpawnkilling -> 60 min Prison`nHealen im Kampf/Pushen -> 90 min Prison`nFahrzeug reparieren im Kampf -> 90 min Prison`nEingreifen in GF -> Zivilist 90 min Prison | Gang 120 min Prison`nDeskfluch -> 1 Warn + 120 min Prison`nOfflineflucht -> 1 Warn + 60 min Prison`nRelogbuguse -> 90 min Prison`nBuguse (SAMP Bug) -> 120 min Prison`nBeleidigung schwach -> 60 min Prison`nBeleidigung mittel -> 1 Warn + 5d Timeban + 120 min Prison`nBeleidigung schwer -> Ban`nAD- Misbrauch -> 15min Prison`nBeleidigung in AD -> Ban`n /a /sup Misbrauch (mehrmal) -> 30min Prison`nCheaten -> Ban`nFahrer Driveby (Totparken, schießen,...) -> Schein entzug + 90min Prison`nSDM -> Warn + 180min Prison`nDM auf Dienstleistende -> 1 Warn + 180min Prison`nTotsprayen (50HP+) -> 60min Prison`nOffline Fluch vor Admin -> Zeit + 0.5 x Zeit`nBunnyhop bei Gefahr -> 90min Prison`nNO-DM Flucht -> 60min Prison`nG-Buguse -> Prison 60 + Warn`nUmgangston -> Prison 30", "Beenden")
Suspend, Off
return

:?:/acab::
:?:/beleidigung::
Suspend, Permit
Sleep, 500
ShowDialog(0, ">>Sanktionen<<", "§4.1 Schwache Beleidigungen:`nZu den schwachen Beleidigungen zählen Wörter wie:`n'Arschloch', 'Penner', 'Assi', 'Spasti', ggf. 'ACAB'.`nBestraft werden diese mit einer Stunde Prison.", "Beenden")
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
Sleep, 1000
SendChat("/saveall")
Sleep, 1000
SendChat("/cnnn 3 ~n~~n~~g~SPEICHERUNG ERFOLGREICH")
Suspend, Off
return

:?:/gotooamt::
Suspend, Permit
SendChat("/gotocoords 2220.86,-1163.61,25.73")
Suspend, Off
return

:?:/gotokh::
Suspend, Permit
SendChat("/gotocoords 1190.8,-1327.3,13.4")
Suspend, Off
return

:?:/gotoleader::
Suspend, Permit
SendChat("/gotocoords 1190.8,-1327.3,13.4")
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
}
Suspend, Off
return