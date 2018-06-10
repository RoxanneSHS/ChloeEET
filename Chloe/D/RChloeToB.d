//TOB Chloe
BEGIN RCMasem 

INTERJECT Illasera 6 RChloeVillageR
==RChloeJ IF~InParty("RChloe") Global("WeMustReadItCR","GLOBAL",1) ~THEN@0
==Illasera IF~InParty("RChloe") Global("WeMustReadItCR","GLOBAL",1) ~THEN@1
==RChloeJ IF~InParty("RChloe") Global("WeMustReadItCR","GLOBAL",1) ~THEN@2
==Illasera IF~InParty("RChloe") Global("WeMustReadItCR","GLOBAL",1) ~THEN@3
==Illasera IF~InParty("RChloe") Global("WeMustReadItCR","GLOBAL",1) ~THEN@4 
==RChloeJ IF~InParty("RChloe") Global("WeMustReadItCR","GLOBAL",1) ~THEN@5
==Illasera IF~InParty("RChloe") Global("WeMustReadItCR","GLOBAL",1) ~THEN@6 
==RChloeJ IF~InParty("RChloe") Global("WeMustReadItCR","GLOBAL",1) ~THEN@7END Illasera 8

CHAIN
IF WEIGHT #-1~Global("RChloeVillageR","Global",2)~ THEN RCHLOEJ Villend
@8
DO~SetGlobal("RChloeVillageR","Global",3)~
END
++@9+ Villend2
IF~GlobalLT("ChLovetalksCR","GLOBAL",16)~THEN REPLY@10+ Villend3
IF~GlobalGT("ChLovetalksCR","GLOBAL",16)~THEN REPLY@11+ Villend2

CHAIN
IF ~~ THEN RCHLOEJ Villend2
@12EXIT

CHAIN
IF ~~ THEN RCHLOEJ Villend3
@13
=@14
END
++@15+ Villend2
++@9+ Villend2

CHAIN
IF WEIGHT #-1~Global("RChloeTOB","Global",1)~ THEN RCHLOEJ InToBPlane1
@16
DO~SetGlobal("RChloeTOB","Global",2)~
==RCHLOEJ IF~OR(2)Global("ChloeRomanceActiveCR","GLOBAL",2)Global("ImoenChloeRomanceActiveCR","GLOBAL",1) ~THEN@17
==RCHLOEJ@18
END
++@19 + InToBPlane2
++@20 + InToBPlane2
++@21 + InToBPlane2

CHAIN
IF WEIGHT #-1~Global("RChloeTOB","Global",3)~ THEN RCHLOEJ InToBQuest1
@22
DO~SetGlobal("RChloeTOB","Global",4)~
END
++@23+ InToBQuestbah
++@24+ InToBQuestspec
++@25+ InToBQuestnos

CHAIN
IF~~ THEN RCHLOEJ InToBQuestbah
@26
END
++@27+ InToBQuestreas

CHAIN
IF~~ THEN RCHLOEJ InToBQuestspec
@28
END
++@27+ InToBQuestreas

CHAIN
IF~~ THEN RCHLOEJ InToBQuestnos
@29
END
++@27+ InToBQuestreas

CHAIN
IF~~ THEN RCHLOEJ InToBQuestreas
@30
END
++@31+ InToBQuestfin
++@32+ InToBQuestfin
++@33+ InToBQuestfin

CHAIN
IF~~ THEN RCHLOEJ InToBQuestfin
@34EXIT

CHAIN
IF~~THEN RCHLOEJ InToBPlane2
@35
=@36EXIT

CHAIN
IF WEIGHT #-1~Global("RChloeVillageR","Global",4)~ THEN RCHLOEJ WhatafterAll1
@37
DO~SetGlobal("RChloeVillageR","Global",5)~
END
++@38 + WhatafterAll2
++@39 + WhatafterAll2
++@40 + WhatafterAll2

CHAIN
IF ~~ THEN RCHLOEJ WhatafterAll2
@41
=@42
END
++@43 + WhatafterAll3
++@44 + WhatafterAll3
IF~Global("ChloeRomanceActiveCR","GLOBAL",2)~THEN REPLY@45 + WhatafterAll3
++@46 + WhatafterAll3

CHAIN
IF ~~ THEN RCHLOEJ WhatafterAll3
@47
END
++@48  + WhatafterAll4
++@49 + WhatafterAll4
++@50 + WhatafterAll5
++@51 + WhatafterAll4

CHAIN
IF ~~ THEN RCHLOEJ WhatafterAll4
@52
=@53EXIT

CHAIN
IF ~~ THEN RCHLOEJ WhatafterAll5
@54
=@55EXIT

I_C_T Finsol01 27 RChloeSol1
==RChloeJ IF~InParty("RChloe")~THEN@56
END

I_C_T Finsol01 29 RChloeSol2
==RChloeJ IF~InParty("RChloe")~THEN@57
END

I_C_T Finsol01 30 RChloeSol3
==RChloeJ IF~InParty("RChloe")~THEN@57
END

I_C_T Finsol01 31 RChloeSol4
==RChloeJ IF~InParty("RChloe")~THEN@57
END

I_C_T Finsol01 32 RChloeSol5
==RChloeJ IF~InParty("RChloe")~THEN@57
END

EXTEND_BOTTOM Sarvolo 9
IF~ InParty("RChloe") ~THEN REPLY@58 GOTO Volclo1
END

CHAIN
IF~~THEN Sarvolo Volclo1
@59
==RChloeJ@60
==Sarvolo@61
==RChloeJ@62
END
++@63+ 9

I_C_T Hgwra01 18 RCloGoriWraith
==RChloeJ IF~InParty("RChloe")~THEN@64
==HGwra01 IF~InParty("RChloe")~THEN@65
==RChloeJ IF~InParty("RChloe")~THEN@66
END

CHAIN
IF~Global("RCChloeFather","Global",1)~THEN RCMasem meetda1
@67
DO~SetGlobal("RCChloeFather","Global",2)~
==RChloeJ@68
==RCMasem@69
=@70
==RChloeJ@71
==RCMasem@72
=@73
==RChloeJ@74
=@75
==RCMasem@76
=@77
==RChloeJ@78
==RCMasem@79
==RChloeJ@80
=@81
==RCMasem@82
=@83
=@84
=@85
=@86
==RChloeJ@87
==RCMasem@88
==RChloeJ@89
=@90
==RCMasem@91
==RChloeJ@92
==RCMasem@93
==RChloeJ@94
==RCMasem@95
==RChloeJ@96
==RCMasem@97
==RChloeJ@98
END
++@99+ meetda2
++@100+ meetda2
++@101DO~AddXPObject(Player1,8000)~+ meetda2

CHAIN
IF~~THEN RCMasem meetda2
@102
=@103DO~ ClearAllActions() StartCutSceneMode()
ActionOverride(Player1,MakeUnselectable(3600000))
ActionOverride(Player2,MakeUnselectable(3600000))
ActionOverride(Player3,MakeUnselectable(3600000))
ActionOverride(Player4,MakeUnselectable(3600000))
ActionOverride(Player5,MakeUnselectable(3600000))
ActionOverride(Player6,MakeUnselectable(3600000))
ActionOverride("Haiass",MakeUnselectable(3600000))
ActionOverride("Pellig",MakeUnselectable(3600000))
Wait(2)
ActionOverride("RChloe",MakeUnselectable(1))
Wait(1)
Enemy()
ActionOverride("RChloe",Attack("RCMasem"))
ActionOverride("RCMasem",Attack("RChloe"))
EndCutSceneMode()~EXIT

CHAIN
IF WEIGHT #-3~IsGabber(Player1) Global("RCChloeFather","Global",3)~THEN RChloeJ meetda4
@104
DO~SetGlobal("RCChloeFather","Global",4)~
END
++@105+ meetda5
++@106+ meetda6
++@107+ meetda5

CHAIN
IF~~THEN RChloeJ meetda6
@108
END
++@27+ meetda5

CHAIN
IF~~THEN RChloeJ meetda5
@109
=@110
END
++@111+ meetda7
++@112+ meetda7

CHAIN
IF~~THEN RChloeJ meetda7
@113EXIT
