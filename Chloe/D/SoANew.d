INTERJECT Bregg 0 RChloeBregg
==RChloeJ IF~InParty("RChloe")~THEN@0
==Bregg@1DO~Enemy()~
END Cohrvale 1

CHAIN
IF WEIGHT #-1~Global("RCAnath","Locals",1)~THEN RCHLOEJ Anath1
@2
DO~SetGlobal("RCAnath","Locals",2)~
END
++@3EXIT
++@4EXIT
++@5EXIT

CHAIN
IF WEIGHT #-1~Global("RCLathTempl","ar0902",1) ~THEN RCHLOEJ TemplPray1
@6
DO~SetGlobal("RCLathTempl","ar0902",2) ~
END
++@7 + TemplPray1a
++@8 + TemplPray1a

CHAIN
IF~~THEN RCHLOEJ TemplPray1a
@9
=@10
END
++@11+ TemplPray2
++@12+ TemplPray3
++@13EXIT
++@14EXIT 

CHAIN
IF~~THEN RCHLOEJ TemplPray2
@15EXTERN RCHLOEJ 293

CHAIN
IF~~THEN RCHLOEJ TemplPray3
@16EXIT

CHAIN
IF WEIGHT #-1~Global("RChloeForLatha","Global",4)~ THEN RCHLOEJ GoToWar1
@17
DO~SetGlobal("RChloeForLatha","Global",5)~
END
++@18+ GoToWar2
++@19+ GoToWar2

CHAIN
IF~~ THEN RCHLOEJ GoToWar2
@20
END
++@21EXIT
++@22EXIT

CHAIN
IF WEIGHT #-8~NumberOfTimesTalkedTo(0) Global("CDSpawnArval","GLOBAL",0) AreaCheck("AR0900") InParty("RChloe")~THEN BHARVAL Yrkai
@23
DO~SetGlobal("RChloeForLatha","Global",1)~
==RChloeJ @24
==BHARVAL@25EXTERN BHARVAL 2

CHAIN
IF WEIGHT #-7~Global("RChloeForLatha","Global",1) InParty("RChloe") Global("BeholderPlot","GLOBAL",0) Global("NoHelpBeholder","GLOBAL",0) Global("CDWorkingForHelm","GLOBAL",0)~THEN BHARVAL Yrkai2
@26
DO~SetGlobal("RChloeForLatha","Global",2)~
==RChloeJ @27EXTERN BHARVAL 6

EXTEND_BOTTOM BHARVAL 29
IF~Global("RChloeForLatha","Global",2)~THEN GOTO Yrkai3
END

CHAIN
IF~~THEN BHARVAL Yrkai3
@28
DO~SetGlobal("RChloeForLatha","Global",3)~
==RChloeJ @29
==BHARVAL@30
==RChloeJ @31EXTERN BHARVAL 33

CHAIN
IF WEIGHT #-1~Global("SlavQRC","Global",9) ~THEN RCHLOEJ Aftermath1
@32
DO~SetGlobal("SlavQRC","Global",10) SetGlobal("ComplainingAboutRestCR","GLOBAL",9) SetGlobal("FeelingSickLikeHellCR","LOCALS",9)~
END
++@33 + Aftermath2
++@34+ Aftermath3
++@35 + Aftermath2

CHAIN
IF~~THEN RCHLOEJ Aftermath3
@36
END
++@33 + Aftermath2
++@37DO~SetGlobal("SlavQRC","Global",50) RestParty()~EXIT

CHAIN
IF~~THEN RCHLOEJ Aftermath2
@38
END
++@39+ Aftermath5
++@40+ Aftermath4
++@41DO~SetGlobal("SlavQRC","Global",50) RestParty()~EXIT

CHAIN
IF~~THEN RCHLOEJ Aftermath4
@36
END
++@41DO~SetGlobal("SlavQRC","Global",50) RestParty()~EXIT
++@39+ Aftermath5

CHAIN
IF~~THEN RCHLOEJ Aftermath5
@42
=@43
END
++@44DO~StartMovie("Restinn") Wait(2) ActionOverride("RChloe",StartDialog("RCHLOEJ",Player1))~EXIT

++@45DO~StartMovie("Restinn") Wait(2) ActionOverride("RChloe",StartDialog("RCHLOEJ",Player1))~EXIT

CHAIN
IF WEIGHT #-1~Global("SlavQRC","Global",10) ~THEN RCHLOEJ Aftermath11
@46
=@47
=@48
DO~SetGlobal("SlavQRC","Global",11)~
END
++@49 + Aftermath12
++@50 + Aftermath12

CHAIN
IF~~THEN RCHLOEJ Aftermath12
@51
END
++@52+ Aftermath13
++@53+ Aftermath13

CHAIN
IF~~THEN RCHLOEJ Aftermath13
@54 DO~IncrementGlobal("ChloeInterest","Global",10)~EXIT

