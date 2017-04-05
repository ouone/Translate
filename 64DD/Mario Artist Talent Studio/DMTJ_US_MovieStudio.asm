output "Mario Artist - Talent Studio.ndd"

//Movie Studio

//Movie Main Screen
seek(0x10BF628)
base 0x80400EF8
moviemainerror_loadsample: //80400EF8
putTextASCIInoSeek("A sample movie is|going to be loaded.|Is it OK?")
moviemainerror_keepmovienotsaved: //80400F2C
//putTextASCIInoSeek("This movie is not saved.||Would you like to keep|this movie in the|Movie Studio?")
moviemainerror_keepmovie: //80400F84
putTextASCIInoSeek("Would you like to keep|this movie in the|Movie Studio?")
moviemainerror_datacorrupted1: //80400FC0
//putTextASCIInoSeek("Save data is corrupted. The data was cleared.")
moviemainerror_datacorrupted2: //80400FF8
putTextASCIInoSeek("Save data is corrupted. The data was cleared.")
moviemainerror_disappear: //80401030
putTextASCIInoSeek("The movie is|going to disappear.|Is it OK?")

seek(0x104F562)
dh (moviemainerror_loadsample)
seek(0x104F58A)
dh $0003
seek(0x104F596)
dh (moviemainerror_keepmovienotsaved)
seek(0x104F5DA)
dh (moviemainerror_keepmovie)
seek(0x104F61E)
dh (moviemainerror_datacorrupted1)
seek(0x104F666)
dh (moviemainerror_datacorrupted2)
seek(0x104F692)
dh (moviemainerror_disappear)

seek(0x10BF9F4)
base 0x804012C4
moviemain_mainmenu:
putTextnoSeek("Back to Main Menu")
moviemain_setupactors:
putTextnoSeek("Actors")
moviemain_setupbg:
putTextnoSeek("Backgrounds")
moviemain_production:
putTextnoSeek("Production")
moviemain_watch:
putTextnoSeek("Watch")
moviemain_saveload:
putTextnoSeek("Save/Load [Movie]")
moviemain_sample1:
putTextnoSeek("Sample 1")
moviemain_sample2:
putTextnoSeek("Sample 2")
moviemain_sample3:
putTextnoSeek("Sample 3")
moviemain_clear:
putTextnoSeek("Clear")

//Pointer changes
seek(0x1052EFE)
dh (moviemain_mainmenu)
seek(0x1053046)
dh (moviemain_setupactors)
seek(0x105313E)
dh (moviemain_setupbg)
seek(0x105322A)
dh (moviemain_production)
seek(0x10532F2)
dh (moviemain_watch)
seek(0x1052F92)
dh (moviemain_saveload)
seek(0x10BFAD0)
dw (moviemain_sample1), (moviemain_sample2), (moviemain_sample3)
seek(0x10534AE)
dh (moviemain_clear)

//Movie Setup Actor
seek(0xF485D4)
base 0x80357DC4
movieactorerror_corrupted: //80357DC4
putTextnoSeek("Data is corrupted.")
movieactorerror_replace: //80357DF0
putTextnoSeek("Please replace the disk.")

seek(0xF48668)
base 0x80357E58
movieactor_rotatezoomB: //80357E58
putTextnoSeek("Rotate/Zoom (Button B)")
movieactor_actor1: //80357E78
putTextnoSeek("Actor 1")
movieactor_remove: //80357E90
putTextnoSeek("Erase")
movieactor_pagefeed11: //80357E9C
putTextnoSeek("1/1")
movieactor_exit: //80357EB0
putTextnoSeek("Exit")
movieactor_selectcast: //80357EB8
putTextnoSeek("Samples")
movieactor_loadtalent: //80357ED4
putTextnoSeek("Load [Talent]")
movieactor_loadmodel: //80357EEC
putTextnoSeek("Load [3D Work]")
movieactor_savetalent: //80357F08
putTextnoSeek("Save [Talent]")
movieactor_selectfromtalentstudio: //80357F20
putTextnoSeek("From the Studio")
movieactor_random: //80357F44
putTextnoSeek("Random")
movieactor_talent1: //80357F58
putTextnoSeek("Talent 1")
movieactor_talent11: //80357F64
putTextnoSeek("Talent 11")
movieactor_work1: //80357F74
putTextnoSeek("3D Work 1")

//803581B0 $0008
putTextASCII(0xF489C0, "The action in which Actor 1|appears will be deleted.|Is it OK?")
//803581FC $0008
putTextASCII(0xF48A0C, "The action in which Actor 1|appears will be deleted.|Is it OK?")
//putTextASCII(0xF48A0C, "The action & effects in which| Actor 1 appears will be deleted.|Is it OK?")
//80358254 $002E
putTextASCII(0xF48A64, "The action in which Actor 1|appears will be deleted.|Is it OK?")
//putTextASCII(0xF48A64, "If you swap the actor with a Talent,|the action & effects in which|Actor 1 appears will be deleted.||Is it OK?")
//803582C4 $002E
putTextASCII(0xF48AD4, "The action in which Actor 1|appears will be deleted.|Is it OK?")
//putTextASCII(0xF48AD4, "If you swap the actor with 3D Work,|the action & effects in which| Actor 1 appears will be deleted.||Is it OK?")
//80358340
putTextASCII(0xF48B50, " 1 2 3")

//change pointers
seek(0xF487A0)
dw (movieactor_exit)
seek(origin() + 20)
dw (movieactor_loadtalent)
seek(origin() + 20)
dw (movieactor_loadmodel)
seek(origin() + 20)
dw (movieactor_savetalent)
seek(origin() + 20)
dw (movieactor_selectcast)
seek(origin() + 20)
dw (movieactor_selectfromtalentstudio)
seek(origin() + 20)
dw (movieactor_random)
seek(origin() + 20)
dw (movieactor_actor1)
seek(origin() + 20)
dw (movieactor_actor1)
seek(origin() + 20)
dw (movieactor_actor1)
seek(0xF488A8)
dw (movieactor_remove)
seek(origin() + 20)
dw (movieactor_pagefeed11)

seek(0xF0A2EA)
dh (movieactorerror_corrupted)
seek(0xF0A302)
dh (movieactorerror_replace)

seek(0xF0E0BA)
dh (movieactor_actor1)
seek(0xF0E0C2)
dh $000C
seek(0xF0E0CA)
dh (movieactor_actor1)

seek(0xF0DE02)
dh (movieactor_pagefeed11)
seek(0xF0DE0A)
dh $0000
seek(0xF0DE12)
dh (movieactor_pagefeed11)
seek(0xF0DE1A)
dh $0004

seek(0xF0DF2A)
dh (movieactor_talent1)
seek(0xF0DF32)
dh $000E
seek(0xF0DF3A)
dh (movieactor_talent1)

seek(0xF0DF56)
dh (movieactor_talent1)
seek(0xF0DF5E)
dh $000E
seek(0xF0DF66)
dh (movieactor_talent1)

seek(0xF0DF92)
dh (movieactor_talent1)
seek(0xF0DF9A)
dh $000E
seek(0xF0DFA2)
dh (movieactor_talent1)

seek(0xF0DFBA)
dh (movieactor_talent11)
seek(0xF0DFC2)
dh $0010
seek(0xF0DFCA)
dh (movieactor_talent11)

seek(0xF0DFE6)
dh (movieactor_work1)
seek(0xF0DFEE)
dh $0010
seek(0xF0DFF6)
dh (movieactor_work1)

//ASCII text offset to Actor digit
seek(0xF0CCF2)
dh $0019
seek(0xF0CD0E)
dh $0019
seek(0xF0CD2A)
dh $0019
seek(0xF0CD46)
dh $0019

//Movie Setup 3D model names
putTextASCII(0xF48210, "Car")
putTextASCII(0xF48218, "Airplane")
putTextASCII(0xF48224, "Fighter")
putTextASCII(0xF48230, "UFO")
putTextASCII(0xF48238, "Future Car")
putTextASCII(0xF48248, "Unknown")

//Movie Setup BG
seek(0x10BFDE4)
base 0x804016B4
moviebg_exit: //804016B4
putTextnoSeek("Exit")
moviebg_samples: //804016BC
putTextnoSeek("Samples")
moviebg_load2d: //804016D0
putTextnoSeek("Load [2D Paint]")
moviebg_save2d: //804016EC
putTextnoSeek("Save [2D Paint]")
moviebg_bgmselect: //80401708
//putTextnoSeek("Music Select") //UNUSED
moviebg_capturecart: //80401718
putTextnoSeek("Capture Cartridge")
moviebg_gbcamera: //80401730
putTextnoSeek("GameBoy Camera")
moviebg_random: //80401740
putTextnoSeek("Random")
moviebg_undo: //80401754
putTextnoSeek("Undo")
moviebg_erase: //80401760
putTextnoSeek("Erase")

moviebg_bg1: //8040176C
putTextnoSeek("Background 1")
moviebg_sky1: //80401778
//putTextnoSeek("Sky1")
moviebg_sky2: //80401780
putTextnoSeek("Sky")
moviebg_sea1: //80401788
//putTextnoSeek("Sea1")
moviebg_sea2: //80401790
putTextnoSeek("Sea")
moviebg_water1: //80401798
//putTextnoSeek("Water1")
moviebg_water2: //804017A8
putTextnoSeek("Water")
moviebg_desert: //804017B8
putTextnoSeek("Desert")

moviebg_plain: //804017C0
putTextnoSeek("Dawn")
moviebg_moonlight: //804017C8
putTextnoSeek("Night")
moviebg_bamboogrove: //804017D0
putTextnoSeek("Bamboo")
moviebg_snow1: //804017DC
//putTextnoSeek("Snow1")
moviebg_snow2: //804017EC
putTextnoSeek("Snow")
moviebg_forest1: //804017FC
//putTextnoSeek("Forest1")
moviebg_forest2: //80401804
putTextnoSeek("Forest")

moviebg_fall: //8040180C
putTextnoSeek("Fall")
moviebg_cherry: //8040181C
putTextnoSeek("Cherry Blossoms")
moviebg_village1: //80401824
//putTextnoSeek("Town1")
moviebg_village2: //8040182C
//putTextnoSeek("Town2")
moviebg_village3: //80401834
//putTextnoSeek("Town3")
moviebg_village4: //8040183C
putTextnoSeek("Town")
moviebg_road: //80401844
putTextnoSeek("Road")

moviebg_watermill: //8040184C
putTextnoSeek("Mill")
moviebg_castle: //8040185C
putTextnoSeek("Castle")
moviebg_buildings1: //80401864
//putTextnoSeek("City1")
moviebg_buildings2: //8040186C
//putTextnoSeek("City2")
moviebg_buildings3: //80401874
//putTextnoSeek("City3")
moviebg_buildings4: //8040187C
putTextnoSeek("City")
moviebg_wall1: //80401884
//putTextnoSeek("Wall1")

moviebg_wall2: //8040188C
putTextnoSeek("Wall")
moviebg_school: //80401894
putTextnoSeek("School")
moviebg_blackboard: //804018A0
putTextnoSeek("Blackboard")
moviebg_computer: //804018AC
putTextnoSeek("Computer")
moviebg_lockerroom: //804018B8
putTextnoSeek("Locker Room")
moviebg_stairs: //804018C8
putTextnoSeek("Stairs")
moviebg_downtown: //804018D4
putTextnoSeek("Central")

moviebg_apartment1: //804018E4
//putTextnoSeek("Flat1")
moviebg_apartment2: //804018F0
putTextnoSeek("Flat")
moviebg_tatami: //804018FC
putTextnoSeek("Tatami")
moviebg_stage: //80401904
putTextnoSeek("Stage")
moviebg_insidecar: //8040190C
putTextnoSeek("Car Seats")
moviebg_tunnel: //8040191C
putTextnoSeek("Tunnel")
moviebg_ring: //80401928
putTextnoSeek("Ring")

moviebg_earth: //80401930
putTextnoSeek("Earth")
moviebg_moon: //8040193C
putTextnoSeek("Moon")
moviebg_space: //80401948
putTextnoSeek("Space")
moviebg_pipes: //80401954
putTextnoSeek("Pipes")
moviebg_mist: //8040195C
putTextnoSeek("Mist")
moviebg_loveydovey: //80401964
putTextnoSeek("Lovey Dovey")
moviebg_question: //80401970
putTextnoSeek("???")

moviebg_light: //80401978
putTextnoSeek("Light")
moviebg_spot: //80401980
putTextnoSeek("Spot")
moviebg_flames: //8040198C
putTextnoSeek("Fire")
moviebg_timetunnel: //80401998
putTextnoSeek("Wormhole")
moviebg_kaboom: //804019A8
putTextnoSeek("Boom!")
moviebg_jump: //804019B4
putTextnoSeek("Jump!")
moviebg_miracle: //804019C0
putTextnoSeek("Miracle")

//Change pointers
seek(0x10591EE)
dh (moviebg_exit)
seek(0x1059082)
dh (moviebg_samples)
seek(0x1058DF2)
dh (moviebg_load2d)
seek(0x1058F3A)
dh (moviebg_save2d)
seek(0x10592B6)
dh (moviebg_capturecart)
seek(0x10596A2)
dh (moviebg_gbcamera)
seek(0x1059C5E)
dh (moviebg_random)
seek(0x10598EE)
dh (moviebg_undo)
seek(0x105999E)
dh (moviebg_erase)

seek(0x1058CDA)
dh (moviebg_bg1)
seek(0x1058CEA)
dh $0016

seek(0x10C00FC)
dw (moviebg_sky1), (moviebg_sky2), (moviebg_sea1), (moviebg_sea2), (moviebg_water1), (moviebg_water2), (moviebg_desert)
dw (moviebg_plain), (moviebg_moonlight), (moviebg_bamboogrove), (moviebg_snow1), (moviebg_snow2), (moviebg_forest1), (moviebg_forest2)
dw (moviebg_fall), (moviebg_cherry), (moviebg_village1), (moviebg_village2), (moviebg_village3), (moviebg_village4), (moviebg_road)
dw (moviebg_watermill), (moviebg_castle), (moviebg_buildings1), (moviebg_buildings2), (moviebg_buildings3), (moviebg_buildings4), (moviebg_wall1)
dw (moviebg_wall2), (moviebg_school), (moviebg_blackboard), (moviebg_computer), (moviebg_lockerroom), (moviebg_stairs), (moviebg_downtown)
dw (moviebg_apartment1), (moviebg_apartment2), (moviebg_tatami), (moviebg_stage), (moviebg_insidecar), (moviebg_tunnel), (moviebg_ring)
dw (moviebg_earth), (moviebg_moon), (moviebg_space), (moviebg_pipes), (moviebg_mist), (moviebg_loveydovey), (moviebg_question)
dw (moviebg_light), (moviebg_spot), (moviebg_flames), (moviebg_timetunnel), (moviebg_kaboom), (moviebg_jump), (moviebg_miracle)

//Movie Setup BG Filenames
seek(0x10C0530)
base 0x80401E00
moviebg_computer1file:
moviebg_computer2file:
putTextASCIInoSeek("Computer")
moviebg_sky1file:
//putTextASCIInoSeek("Sky1")
moviebg_sky2file:
putTextASCIInoSeek("Sky")
moviebg_sea1file:
//putTextASCIInoSeek("Sea1")
moviebg_sea2file:
putTextASCIInoSeek("Sea")
moviebg_water1file:
//putTextASCIInoSeek("Water1")
moviebg_water2file:
putTextASCIInoSeek("Water")
moviebg_desertfile:
putTextASCIInoSeek("Desert")

moviebg_plainfile:
putTextASCIInoSeek("Dawn")
moviebg_moonlightfile:
putTextASCIInoSeek("Night")
moviebg_bamboogrovefile:
putTextASCIInoSeek("Bamboo")
moviebg_snow1file:
//putTextASCIInoSeek("Snow1")
moviebg_snow2file:
putTextASCIInoSeek("Snow")
moviebg_forest1file:
//putTextASCIInoSeek("Forest1")
moviebg_forest2file:
putTextASCIInoSeek("Forest")

moviebg_fallfile:
putTextASCIInoSeek("Fall")
moviebg_cherryfile:
putTextASCIInoSeek("Cherry Blossoms")
moviebg_village1file:
//putTextASCIInoSeek("Town1")
moviebg_village2file:
//putTextASCIInoSeek("Town2")
moviebg_village3file:
//putTextASCIInoSeek("Town3")
moviebg_village4file:
putTextASCIInoSeek("Town")
moviebg_roadfile:
putTextASCIInoSeek("Road")

moviebg_watermillfile:
putTextASCIInoSeek("Mill")
moviebg_castlefile:
putTextASCIInoSeek("Castle")
moviebg_buildings1file:
//putTextASCIInoSeek("City1")
moviebg_buildings2file:
//putTextASCIInoSeek("City2")
moviebg_buildings3file:
//putTextASCIInoSeek("City3")
moviebg_buildings4file:
putTextASCIInoSeek("City")
moviebg_wall1file:
//putTextASCIInoSeek("Wall1")

moviebg_wall2file:
putTextASCIInoSeek("Wall")
moviebg_schoolfile:
putTextASCIInoSeek("School")
moviebg_blackboardfile:
putTextASCIInoSeek("Blackboard")
moviebg_computerfile:
putTextASCIInoSeek("Computer")
moviebg_lockerroomfile:
putTextASCIInoSeek("Locker Room")
moviebg_stairsfile:
putTextASCIInoSeek("Stairs")
moviebg_downtownfile:
putTextASCIInoSeek("Central")

moviebg_apartment1file:
//putTextASCIInoSeek("Flat1")
moviebg_apartment2file:
putTextASCIInoSeek("Flat")
moviebg_tatamifile:
putTextASCIInoSeek("Tatami")
moviebg_stagefile:
putTextASCIInoSeek("Stage")
moviebg_insidecarfile:
putTextASCIInoSeek("Car Seats")
moviebg_tunnelfile:
putTextASCIInoSeek("Tunnel")
moviebg_ringfile:
putTextASCIInoSeek("Ring")

moviebg_earthfile:
putTextASCIInoSeek("Earth")
moviebg_moonfile:
putTextASCIInoSeek("Moon")
moviebg_spacefile:
putTextASCIInoSeek("Space")
moviebg_pipesfile:
putTextASCIInoSeek("Pipes")
moviebg_mistfile:
putTextASCIInoSeek("Mist")
moviebg_loveydoveyfile:
putTextASCIInoSeek("Lovey Dovey")
moviebg_questionfile:
putTextASCIInoSeek("???")

moviebg_lightfile:
putTextASCIInoSeek("Light")
moviebg_spotfile:
putTextASCIInoSeek("Spot")
moviebg_flamesfile:
putTextASCIInoSeek("Fire")
moviebg_timetunnelfile:
putTextASCIInoSeek("Wormhole")
moviebg_kaboomfile:
putTextASCIInoSeek("Boom!")
moviebg_jumpfile:
putTextASCIInoSeek("Jump!")
moviebg_miraclefile:
putTextASCIInoSeek("Miracle")

//Change pointers
seek(0x10C01DC)
dw (moviebg_computer1file), (moviebg_computer2file)
dw (moviebg_sky1file), (moviebg_sky2file), (moviebg_sea1file), (moviebg_sea2file), (moviebg_water1file), (moviebg_water2file), (moviebg_desertfile)
dw (moviebg_plainfile), (moviebg_moonlightfile), (moviebg_bamboogrovefile), (moviebg_snow1file), (moviebg_snow2file), (moviebg_forest1file), (moviebg_forest2file)
dw (moviebg_fallfile), (moviebg_cherryfile), (moviebg_village1file), (moviebg_village2file), (moviebg_village3file), (moviebg_village4file), (moviebg_roadfile)
dw (moviebg_watermillfile), (moviebg_castlefile), (moviebg_buildings1file), (moviebg_buildings2file), (moviebg_buildings3file), (moviebg_buildings4file), (moviebg_wall1file)
dw (moviebg_wall2file), (moviebg_schoolfile), (moviebg_blackboardfile), (moviebg_computerfile), (moviebg_lockerroomfile), (moviebg_stairsfile), (moviebg_downtownfile)
dw (moviebg_apartment1file), (moviebg_apartment2file), (moviebg_tatamifile), (moviebg_stagefile), (moviebg_insidecarfile), (moviebg_tunnelfile), (moviebg_ringfile)
dw (moviebg_earthfile), (moviebg_moonfile), (moviebg_spacefile), (moviebg_pipesfile), (moviebg_mistfile), (moviebg_loveydoveyfile), (moviebg_questionfile)
dw (moviebg_lightfile), (moviebg_spotfile), (moviebg_flamesfile), (moviebg_timetunnelfile), (moviebg_kaboomfile), (moviebg_jumpfile), (moviebg_miraclefile)

//Placement to be changed
movie_rotationzoomB:
//putTextnoSeek("Rotate / Zoom (Button B)")

//Movie Production (Part 1) 164 chars max
seek(0x10C0C84)
base 0x80402554
prod1_random: //80402554
putTextnoSeek("Random")
prod1_exit: //80402568
putTextnoSeek("Exit")
prod1_undo: //80402570
putTextnoSeek("Undo")
prod1_erasescene: //8040257C
putTextnoSeek("Erase Scene")
prod1_copyscene: //8040258C
putTextnoSeek("Copy Scene")
prod1_pastescene: //8040259C
putTextnoSeek("Paste Scene")
prod1_createscene: //804025B0
putTextnoSeek("Create Scene")
prod1_clearallscenes: //804025CC
putTextnoSeek("Clear All")
prod1_movieediting: //804025E0
putTextnoSeek("Movie Editing")
prod1_options: //804025F8
putTextnoSeek("Options")
prod1_shooting: //8040260C
putTextnoSeek("Shooting")
prod1_direction: //8040261C
putTextnoSeek("Direction")
prod1_shoot00: //80402630
putTextnoSeek("Scene 00")
prod1_playstop: //8040263C
putTextnoSeek("Play/Stop")
prod1_oneallscenes: //80402650
putTextnoSeek("One/All Scene(s)")
prod1_loopnot: //8040266C
putTextnoSeek("Loop")
prod1_watchmovie: //80402680
putTextnoSeek("Watch")

//change pointers
seek(0x10C0DCC)
dw (prod1_createscene)
dw (prod1_erasescene), (prod1_copyscene), (prod1_pastescene), (prod1_clearallscenes)

seek(0x106D1FE)
dh (prod1_random)
seek(0x1062FFA)
dh (prod1_exit)
seek(0x10630FE)
dh (prod1_undo)

seek(0x106A456)
dh (prod1_movieediting)
seek(0x106CB0E)
dh (prod1_options)
seek(0x106A6CE)
dh (prod1_shooting)
seek(0x106AB2A)
dh (prod1_direction)
seek(0x1065AE6)
dh (prod1_shoot00)
seek(0x1065B12)
dh $000C
seek(0x1065B1A)
dh $000E
seek(0x1065B8A)
dh $000C
seek(0x1065BB2)
dh $000E
seek(0x1065B26)
dh (prod1_shoot00)
seek(0x1067032)
dh (prod1_shoot00)
seek(0x1066F86)
dh (prod1_shoot00 + 12)
seek(0x1066F8E)
dh (prod1_shoot00 + 14)
seek(0x1066FFA)
dh (prod1_shoot00 + 12)
seek(0x106702E)
dh (prod1_shoot00 + 14)
seek(0x1069F72)
dh (prod1_playstop)
seek(0x106A122)
dh (prod1_oneallscenes)
seek(0x106A22E)
dh (prod1_loopnot)
seek(0x106A33E)
dh (prod1_watchmovie)

seek(0x10C0F10)
base 0x804027E0
//63 chars
prod1error_fatal1: //804027E0
putTextASCIInoSeek("Fatal error.|Please call Yamashita.")
prod1error_50scenes1: //8040280C
putTextASCIInoSeek("Cannot make|more than 50 scenes.")
prod1error_3secremain: //8040283C
putTextASCIInoSeek("To create a scene,|you need at least|3.0 seconds remaining.")
prod1error_fatal2: //8040287C
//putTextASCIInoSeek("Fatal error.|Please call Yamashita.")
prod1error_50scenes2: //804028A8
//putTextASCIInoSeek("Cannot make|more than 50 scenes.")
prod1error_overtime: //804028D8
putTextASCIInoSeek("Cannot paste as|the movie length will exceed by|10.0 seconds.")
prod1error_clear: //80402920
putTextASCIInoSeek("All the scenes|will disappear,|are you sure?")
prod1error_overtimerandom: //80402954
putTextASCIInoSeek("For a random scene,|you need at least|10.0 seconds remaining.")

seek(0x106AD0A)
dh (prod1error_fatal1)
seek(0x106ADE6)
dh (prod1error_50scenes1)
seek(0x106AE3A)
dh (prod1error_3secremain)
seek(0x106AEBE)
dh (prod1error_fatal1)
seek(0x106B352)
dh (prod1error_50scenes1)
seek(0x106B54E)
dh (prod1error_overtime)
seek(0x106B482)
dh (prod1error_overtime + 48)
seek(0x106B48A)
dh (prod1error_overtime + 48)
seek(0x106B4F6)
dh (prod1error_overtime + 49)
seek(0x106B52E)
dh (prod1error_overtime + 51)
seek(0x106BFBE)
dh (prod1error_clear)
seek(0x106D2C6)
dh (prod1error_overtimerandom)

//Movie Production (Part 2)
seek(0x10C1414)
base 0x80402CE4
prod2_selecttalent: //80402CE4
//putTextnoSeek("Select Actor") //Unused
prod2_selectbg: //80402CF8
//putTextnoSeek("Select Background") //Unused
prod2_repeataction: //80402D0C
putTextnoSeek("Repeat Action")
prod2_item: //80402D24
putTextnoSeek("Item")
prod2_itemscale: //80402D38
putTextnoSeek("Item Scale")

prod2_selectaction: //80402D4C
putTextnoSeek("Select Action")
prod2_selectcamerawork: //80402D60
putTextnoSeek("Select Camera Work")
prod2_makeaction: //80402D78
putTextnoSeek("Make Action")
prod2_makecamerawork1: //80402D8C
//putTextnoSeek("Make Camera Work")
prod2_makecamerawork2: //80402DA4
putTextnoSeek("Make Camera Work")

prod2_bgcolor: //80402DBC
putTextnoSeek("Background Color")
prod2_goback: //80402DD8
putTextnoSeek("Go Back")

prod2_moveaction: //80402DEC
putTextnoSeek("Movement")
prod2_itemaction: //80402E00
putTextnoSeek("Item")
prod2_feelingsaction: //80402E14
putTextnoSeek("Feelings")
prod2_weightaction: //80402E28
putTextnoSeek("Weight")
prod2_rhythmaction: //80402E3C
putTextnoSeek("Rhythm")
prod2_battleaction: //80402E50
putTextnoSeek("Battle")
prod2_actionalbum: //80402E64
putTextnoSeek("Action Album")

prod2_actor1: //80402E7C
putTextnoSeek("Actor 1")
prod2_noactor: //80402E88
putTextnoSeek("No Actor")
prod2_bg1: //80402E98
putTextnoSeek("Background 1")
prod2_nobg: //80402EA4
putTextnoSeek("No Backgrounds")
prod2_times: //80402EB4
putTextnoSeek("1 time(s)")

//change pointers
seek(0x10C15EC)
dw (prod2_moveaction), (prod2_itemaction), (prod2_feelingsaction), (prod2_weightaction)
dw (prod2_rhythmaction), (prod2_battleaction), (prod2_actionalbum)

seek(0x107535E)
dh (prod2_repeataction)
seek(0x1078716)
dh (prod2_item)
seek(0x107A5F6)
dh (prod2_itemscale)

seek(0x1078C0A)
dh (prod2_selectaction)
seek(0x1078F0A)
dh (prod2_selectcamerawork)
seek(0x1079286)
dh (prod2_makeaction)
seek(0x1079292)
dh (prod2_makecamerawork1)
seek(0x107929E)
dh (prod2_makecamerawork2)
seek(0x1079106)
dh (prod2_bgcolor)
seek(0x107C1C6)
dh (prod2_goback)
seek(0x1075CE6)
dh (prod2_actor1)
seek(0x1075CEE)
dh $000C
seek(0x1075CE2)
dh (prod2_noactor)
seek(0x10769C6)
dh (prod2_bg1)
seek(0x10769E2)
dh $0016
seek(0x10769DE)
dh (prod2_nobg)
seek(0x1078332)
dh (prod2_times)

seek(0x10C18B0)
base 0x80403180
prod2error_actordisappear:
putTextASCIInoSeek("The action of the actor|will disappear,|are you sure?")
prod2error_modeldisappear:
putTextASCIInoSeek("The action of the 3D Work|will disappear,|are you sure?")

seek(0x1075D8E)
dh (prod2error_actordisappear)
seek(0x1075D96)
dh (prod2error_modeldisappear)

//Movie Production (Part 3)
seek(0x10C1A34)
base 0x80403304
prod3_actor: //80403304
putTextnoSeek("Actor")
prod3_effect: //80403310
putTextnoSeek("Effect")
prod3_sound: //8040331C
putTextnoSeek("Sound")
prod3_autosound: //80403328
putTextnoSeek("Auto Sound")

prod3_makelighting: //80403338
putTextnoSeek("Make Lighting")
prod3_makegraffiti: //80403348
putTextnoSeek("Make Graffiti")
prod3_makecaption: //80403358
putTextnoSeek("Make Caption")
prod3_recordsound: //8040336C
putTextnoSeek("Record Sound")

prod3_expression_normal: //8040337C
//putTextnoSeek("Normal")
prod3_expression_laugh: //80403394
//putTextnoSeek("Laugh")
prod3_expression_angry: //804033AC
//putTextnoSeek("Angry")
prod3_expression_sad: //804033C4
//putTextnoSeek("Sad")
prod3_expression_smile: //804033DC
//putTextnoSeek("Smile")
prod3_expression_sleep: //804033F4
//putTextnoSeek("Sleep")

prod3_goback: //8040340C
putTextnoSeek("Go Back")
prod3_movementsounds: //80403420
putTextnoSeek("Motion & Sounds")
prod3_animalvoice: //80403434
putTextnoSeek("Animal & Voice")
prod3_instmelody: //80403444
putTextnoSeek("Melody")
prod3_loops: //80403458
putTextnoSeek("Loops")
prod3_environments: //80403468
putTextnoSeek("Environments")
prod3_actorvoice: //8040347C
putTextnoSeek("Actors")
prod3_recorded: //8040348C
putTextnoSeek("Recorded")

seek(0x10C1BD0)
dw (prod3_actor), (prod3_effect), (prod3_autosound), (prod3_sound)
dw (prod3_movementsounds), (prod3_animalvoice), (prod3_instmelody), (prod3_loops)
dw (prod3_environments), (prod3_actorvoice), (prod3_recorded)

seek(0x1087C56)
dh (prod3_goback)
seek(0x1088FF2)
dh (prod3_goback)
seek(0x10894A2)
dh (prod3_goback)

seek(0x10883F2)
dh (prod3_makelighting)
seek(0x10883DA)
dh (prod3_makegraffiti)
seek(0x10883E6)
dh (prod3_makecaption)
seek(0x10883FE)
dh (prod3_recordsound)

putText(0x10C2210, "Exit")
putText(0x10C2230, "Save [2D Paint]")

putTextASCII(0x10C2E20, "Speak into the microphone.")
putTextASCII(0x10C2E40, "...Recording...")
putTextASCII(0x10C2E60, "...Playback...")

putTextASCII(0x10C2F20, "Turn off the power|and insert|the capture cartridge.")
putTextASCII(0x10C2F5C, "The recording|will be erased.|Is it OK?")

//Movie Production Item List
seek(0x10BF208)
base 0x80400AD8

movieitem_none: //80400AD8
putTextnoSeek("None")
movieitem_elecguitar: //80400AE8
putTextnoSeeknoEnd("Electric ")
movieitem_guitar: //80400AE0
putTextnoSeek("Guitar")
movieitem_clarinet: //80400AF8
putTextnoSeek("Clarinet")
movieitem_saxophone: //80400B08
putTextnoSeek("Sax")
movieitem_microphone: //80400B14
putTextnoSeek("Mike")
movieitem_paperfan: //80400B24
putTextnoSeek("Fan")

movieitem_sword: //80400B30
putTextnoSeek("Sword")
movieitem_axe: //80400B38
putTextnoSeek("Axe")
movieitem_spear: //80400B40
putTextnoSeek("Spear")
movieitem_club: //80400B48
putTextnoSeek("Club")
movieitem_ironclaws: //80400B54
putTextnoSeek("Claws")
movieitem_katana: //80400B60
putTextnoSeek("Katana")
movieitem_100tonhammer: //80400B68
putTextnoSeek("100t Hammer")

movieitem_magicstaff: //80400B7C
putTextnoSeek("Staff")
movieitem_magicwand: //80400B8C
putTextnoSeek("Wand")
movieitem_machinegun: //80400BA8
putTextnoSeeknoEnd("Machine ")
movieitem_pistol: //80400B9C
putTextnoSeek("Gun")
movieitem_sfrifle: //80400BCC
putTextnoSeeknoEnd("SF ")
movieitem_rifle: //80400BB4
putTextnoSeek("Rifle")
movieitem_sfgun: //80400BC0
putTextnoSeek("SF Gun")

movieitem_juice: //80400BDC
putTextnoSeek("Juice")
movieitem_fries: //80400BE8
putTextnoSeek("Fries")
movieitem_mushroom: //80400BF8
putTextnoSeek("Shroom")
movieitem_meat: //80400C00
putTextnoSeek("Meat")
movieitem_plushdoll: //80400C10
putTextnoSeek("Doll")
movieitem_bag: //80400C1C
putTextnoSeek("Bag")
movieitem_suitcase: //80400C24
putTextnoSeek("Case")

movieitem_broom: //80400C30
putTextnoSeek("Broom")
movieitem_pickaxe: //80400C38
putTextnoSeek("Pickaxe")
movieitem_umbrella: //80400C44
putTextnoSeek("Parasol")
movieitem_carwheel: //80400C4C
putTextnoSeek("Wheel")
movieitem_fork: //80400C60
putTextnoSeek("Fork")
movieitem_camera: //80400C6C
putTextnoSeek("Camera")
movieitem_gameboy: //80400C74
putTextnoSeek("GameBoy")

seek(0x10BF3B4)
dw (movieitem_none), (movieitem_guitar), (movieitem_elecguitar), (movieitem_clarinet), (movieitem_saxophone), (movieitem_microphone), (movieitem_paperfan)
dw (movieitem_sword), (movieitem_axe), (movieitem_spear), (movieitem_club), (movieitem_ironclaws), (movieitem_katana), (movieitem_100tonhammer)
dw (movieitem_magicstaff), (movieitem_magicwand), (movieitem_pistol), (movieitem_machinegun), (movieitem_rifle), (movieitem_sfgun), (movieitem_sfrifle)
dw (movieitem_juice), (movieitem_fries), (movieitem_mushroom), (movieitem_meat), (movieitem_plushdoll), (movieitem_bag), (movieitem_suitcase)
dw (movieitem_broom), (movieitem_pickaxe), (movieitem_umbrella), (movieitem_carwheel), (movieitem_fork), (movieitem_camera), (movieitem_gameboy)

//Movie Production Camera Work List
putText(0xF505CC, "Original")
putText(0xF505F4, "Close-Up")
putText(0xF5061C, "Bust Shot")
putText(0xF50644, "Medium Shot")
putText(0xF5066C, "Full Shot")
putText(0xF50694, "Long Shot")
putText(0xF506BC, "Extreme Long Shot")

putText(0xF506E4, "Side Shot")
putText(0xF5070C, "Back Shot")
putText(0xF50734, "High Angle")
putText(0xF5075C, "Low Angle")
putText(0xF50784, "To the Left")
putText(0xF507AC, "To the Right")
putText(0xF507D4, "Behind Feet")

putText(0xF507FC, "High Angle Rotation")
putText(0xF50824, "Low Angle Rotation")
putText(0xF5084C, "From Left to Right")
putText(0xF50874, "From Right to Left")
putText(0xF5089C, "Above Down to Up")
putText(0xF508C4, "Above Left to Right")
putText(0xF508EC, "From Bottom to Top")

putText(0xF50914, "Zoom In Front")
putText(0xF5093C, "Zoom Out Front")
putText(0xF50964, "Body Rotation")
putText(0xF5098C, "Body Rotation Zoom")
putText(0xF509B4, "Above Rotation Zoom")
putText(0xF509DC, "Below Rotation Zoom")
putText(0xF50A04, "High to Low Angle")

putText(0xF50A2C, "Tilt Rotation Zoom")
putText(0xF50A54, "Tilted Zoom In")
putText(0xF50A7C, "Spin Zoom Out")
putText(0xF50AA4, "Wham")
putText(0xF50ACC, "Shake")
putText(0xF50AF4, "Going In")
putText(0xF50B1C, "Going Out")

//Movie Production Animation List
seek(0xF46510)
base 0x80355D00
motion_boywalk: //80355D00
putText3noSeek($011B, " Walk")
motion_girlwalk: //80355D14
putText3noSeek($011C, " Walk")
motion_slowwalk: //80355D28
putTextnoSeek("Quiet")
motion_angrywalk: //80355D38
putTextnoSeek("Angry")
motion_dizzywalk: //80355D48
putTextnoSeek("Dizzy")
motion_tigercrawl: //80355D58
putTextnoSeeknoEnd("Tiger ")
motion_crawl: //80355D64
putTextnoSeek("Crawl")
motion_boyrun: //80355D74
putText3noSeek($011B, " Running")
motion_girlrun: //80355D88
putText3noSeek($011C, " Running")
motion_bendrun: //80355D9C
putTextnoSeek("Bend Running")
motion_rushrun: //80355DAC
putTextnoSeek("In a Rush")
motion_jogging: //80355DBC
putTextnoSeek("Jogging")
motion_tiredwalk: //80355DC8
putTextnoSeek("Tired")
motion_skip: //80355DD8
putTextnoSeek("Skip")
weight_boystanding: //80355DE4
putText3noSeeknoEnd($011B, " ")
object_still: //80356494
putTextnoSeek("Standing")
weight_girlstanding: //80355DF8
putText3noSeek($011C, " Standing")
weight_lookaround: //80355E0C
putTextnoSeek("Look Around")
weight_battlestance: //80355E1C
putTextnoSeek("Battle Stance")
weight_sitting: //80355E28
putTextnoSeek("Sitting")
weight_sitcrossleg: //80355E30
putTextnoSeek("Cross-legged")
weight_dozing: //80355E38
putTextnoSeek("Dozing Off")
weight_boyjump: //80355E44
putText3noSeek($011B, " Jump")
weight_girljump: //80355E58
putText3noSeek($011C, " Jump")
battle_fallonback: //80355E6C
putTextnoSeek("Fall back")
battle_fallonfront: //80355E7C
putTextnoSeek("Fall front")
feel_unfair: //80355E8C
putTextnoSeek("Unfair!")
battle_faint: //80355E9C
putTextnoSeek("Faint")
battle_stepback: //80355EA8
putTextnoSeek("Step Back")
feel_yup: //80355EBC
putTextnoSeek("Yup!")
feel_donotwant: //80355EC8
putTextnoSeek("I don't want!")
feel_isthatso: //80355ED8
putTextnoSeek("Is that so?")
weight_bow: //80355EEC
putTextnoSeek("Bow")
feel_clap: //80355EFC
putTextnoSeek("Claps")
weight_wave: //80355F10
putTextnoSeek("Wave")
feel_dontknow: //80355F1C
putTextnoSeek("I don't know!")
weight_yawn: //80355F30
putTextnoSeek("Yawning")
weight_sneezing: //80355F40
putTextnoSeek("Sneezing")
battle_collapse: //80355F50
putTextnoSeek("Collapse")
battle_hittop: //80355F5C
putTextnoSeek("Above Hit")
battle_hitfront: //80355F6C
putTextnoSeek("Front Hit")
motion_climb: //80355F7C
putTextnoSeek("Climb")
feel_falling: //80355F88
putTextnoSeek("Falling")
feel_oh: //80355F98
putTextnoSeek("Oh!")
feel_woah: //80355FA4
putTextnoSeek("Woah!")
feel_happy: //80355FB8
putTextnoSeek("Happy!")
feel_hurray: //80355FC8
putTextnoSeek("Hurray!")
feel_yes: //80355FD8
putTextnoSeek("Yes!")
feel_hahaha: //80355FEC
putTextnoSeek("Hahaha!")
feel_ahem: //80356000
putTextnoSeek("Ahem!")
feel_vexed: //80356010
putTextnoSeek("I'm mad!")
feel_nervous: //80356024
putTextnoSeek("Nervous")
feel_crying: //80356034
putTextnoSeek("Crying")
feel_wiping: //80356040
putTextnoSeek("Wiping")
feel_stop: //80356050
putTextnoSeek("Stop!")
feel_sorry: //80356060
putTextnoSeek("Sorry!")
feel_cold: //8035606C
putTextnoSeek("I'm freezing!")
rhythm_shake: //8035607C
putTextnoSeek("Shake")
rhythm_funky: //8035608C
putTextnoSeek("Funky")
rhythm_aerobic: //803560A0
putTextnoSeek("Aerobic")
rhythm_hula: //803560B0
putTextnoSeek("Hula")
rhythm_victory: //803560BC
putTextnoSeek("Victory")
rhythm_robot: //803560D0
motion_robotwalk: //80356328
putTextnoSeek("Robot")
rhythm_ballet: //803560DC
putTextnoSeek("Ballet")
rhythm_cancan: //803560E4
putTextnoSeek("Cancan")
rhythm_bonfest: //803560F4
putTextnoSeek("Bon Dance")
rhythm_cossack: //80356100
putTextnoSeek("Cossack")
rhythm_boytapping: //80356110
putText3noSeek($011B, " Tap")
rhythm_girltapping: //80356124
putText3noSeek($011C, " Tap")
weight_boygreet: //80356138
putText3noSeek($011B, " Greetings")
weight_girlgreet: //8035614C
putText3noSeek($011C, " Greetings")
rhythm_warmingup: //80356160
putTextnoSeek("Warming Up")
weight_situp: //80356174
putTextnoSeek("Sit-up")
rhythm_squatjump: //80356180
putTextnoSeek("Squat Jump")
battle_chop: //8035618C
putTextnoSeek("Chop")
battle_turnkick: //803561A0
putTextnoSeeknoEnd("Turning ")
battle_kick: //80356198
putTextnoSeek("Kick")
battle_punch: //803561AC
putTextnoSeek("Punch")
weight_bodypride: //803561B4
putTextnoSeek("Showoff")
battle_stomping: //803561C4
putTextnoSeek("Stomp")
motion_handstand: //803561D0
putTextnoSeek("Handstand")
motion_skating: //803561E0
putTextnoSeek("Skating")
motion_frontcrawl: //803561F0
putTextnoSeek("Crawl Swim")
motion_breaststroke: //803561FC
putTextnoSeek("Breaststroke")
motion_diverswim: //80356208
putTextnoSeek("Diver Swim")
item_clarinet: //80356218
putTextnoSeek("Clarinet")
item_canewalk: //8035622C
putTextnoSeek("Cane")
item_elecguitar: //80356240
putTextnoSeeknoEnd("Electric ")
item_guitar: //80356288
putTextnoSeek("Guitar")
item_spear: //80356254
putTextnoSeek("Spear")
item_machinegun: //80356264
putTextnoSeeknoEnd("Machine ")
item_shootgun: //80356298
putTextnoSeek("Gun")
item_saxplay: //80356278
putTextnoSeek("Sax")
item_broom: //803562AC
putTextnoSeek("Broom")
item_axe: //803562BC
putTextnoSeek("Axe")
item_sword: //803562D0
putTextnoSeek("Sword")
item_pickaxe: //803562DC
putTextnoSeek("Pickaxe")
item_wand: //803562EC
putTextnoSeek("Wand")
item_mike: //80356300
putTextnoSeek("Sing")
motion_zombiewalk: //80356318
putTextnoSeek("Zombie")
motion_monsterwalk: //80356334
putTextnoSeek("Monster")
battle_spitflames: //80356348
putTextnoSeek("Spit Fire")
weight_herotf: //80356358
putTextnoSeek("Hero Transformation")
weight_herojump: //8035636C
putTextnoSeek("Hero Jump")
motion_fly: //80356380
putTextnoSeek("Fly")
battle_herokick: //8035638C
putTextnoSeek("Hero Kick")
weight_heroinetf: //8035639C
putTextnoSeek("Heroine Transformation")
motion_floating: //803563B0
object_floating: //80356544
putTextnoSeek("Floating")
motion_march: //803563C4
putTextnoSeek("March")
weight_salute: //803563D0
putTextnoSeek("Salute")
motion_flapfly: //803563EC
putTextnoSeeknoEnd("Bird ")
motion_flaprun: //803563DC
putTextnoSeek("Flapping")
item_katana: //80356400
putTextnoSeek("Katana")
item_juice: //80356410
putTextnoSeek("Juice")
item_eatingfries: //80356420
putTextnoSeek("Fries")
item_meat: //80356430
putTextnoSeek("Meat")
item_umbrella: //80356440
putTextnoSeek("Parasol")
item_wheel: //80356454
putTextnoSeek("Wheel")
item_camera: //80356464
putTextnoSeek("Take Photo")
album_action1: //80356474 (8035647E)
putTextnoSeek("Action 1")
album_action10: //80356484 (8035648E)
putTextnoSeek("Action 10")
object_roundabout: //803564A4
putTextnoSeek("Roundabout")
object_somersault: //803564B4
putTextnoSeek("Somersault")
object_drill: //803564C4
putTextnoSeek("Drill")
object_rolling: //803564D4
putTextnoSeek("Rolling")
object_squashed: //803564E8
putTextnoSeek("Squash")
object_crash: //803564FC
putTextnoSeek("Crash")
object_flabby: //80356510
putTextnoSeek("Flabby")
object_inflate: //80356520
putTextnoSeek("Inflate")
object_shrink: //80356534
putTextnoSeek("Shrink")
object_wobbly: //80356554
putTextnoSeek("Wobbly")
object_bounce: //80356564
putTextnoSeek("Bounce")
object_moving: //80356574
putTextnoSeek("Moving???")

//change pointers
seek(0xEF4F12)
dh (album_action1)
seek(0xEF4F1A)
dh $000E
seek(0xEF4F4A)
dh (album_action10)
seek(0xEF4F52)
dh $000E
seek(0xEF4F6E)
dh (album_action10)
seek(0xEF4F72)
dh $0010

seek(0xEF4F92)
dh (album_action10)
seek(0xEF4F9A)
dh $000E
seek(0xEF4FB6)
dh (album_action10)
seek(0xEF4FBA)
dh $0010

seek(0xF46D94)
dw (motion_boywalk), (motion_girlwalk), (motion_slowwalk), (motion_angrywalk), (motion_dizzywalk), (motion_march), (motion_handstand), (motion_boyrun), (motion_girlrun), (motion_bendrun), (motion_rushrun), (motion_jogging), (motion_tiredwalk), (motion_flaprun), (motion_skip), (motion_skating), (motion_zombiewalk), (motion_robotwalk), (motion_monsterwalk), (motion_crawl), (motion_tigercrawl), (motion_fly), (motion_flapfly), (motion_floating), (motion_frontcrawl), (motion_breaststroke), (motion_diverswim), (motion_climb)
dw (item_guitar), (item_elecguitar), (item_clarinet), (item_saxplay), (item_mike), (item_sword), (item_axe), (item_spear), (item_katana), (item_canewalk), (item_wand), (item_shootgun), (item_machinegun), (item_juice), (item_eatingfries), (item_meat), (item_broom), (item_pickaxe), (item_umbrella), (item_wheel), (item_camera)
dw (feel_happy), (feel_hurray), (feel_yes), (feel_hahaha), (feel_yup), (feel_clap), (feel_isthatso), (feel_donotwant), (feel_stop), (feel_ahem), (feel_dontknow), (feel_vexed), (feel_nervous), (feel_falling), (feel_crying), (feel_wiping), (feel_oh), (feel_woah), (feel_unfair), (feel_sorry), (feel_cold)
dw (weight_boystanding), (weight_girlstanding), (weight_battlestance), (weight_lookaround), (weight_sitting), (weight_sitcrossleg), (weight_dozing), (weight_boyjump), (weight_girljump), (weight_herojump), (weight_bow), (weight_boygreet), (weight_girlgreet), (weight_wave), (weight_herotf), (weight_heroinetf), (weight_yawn), (weight_sneezing), (weight_salute), (weight_situp), (weight_bodypride)
dw (rhythm_boytapping), (rhythm_girltapping), (rhythm_shake), (rhythm_funky), (rhythm_aerobic), (rhythm_hula), (rhythm_ballet), (rhythm_robot), (rhythm_victory), (rhythm_cancan), (rhythm_bonfest), (rhythm_cossack), (rhythm_squatjump), (rhythm_warmingup)
dw (battle_punch), (battle_chop), (battle_kick), (battle_turnkick), (battle_herokick), (battle_spitflames), (battle_stomping), (battle_stepback), (battle_fallonback), (battle_fallonfront), (battle_hittop), (battle_hitfront), (battle_faint), (battle_collapse)
dw (album_action1), (album_action10)
dw (object_still), (object_roundabout), (object_somersault), (object_drill), (object_rolling), (object_squashed), (object_crash), (object_flabby), (object_inflate), (object_shrink), (object_floating), (object_wobbly), (object_bounce), (object_moving)
