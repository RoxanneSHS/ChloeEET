INTERJECT Bregg 0 RChloeBregg
==RChloeJ IF~InParty("RChloe")~THEN~Maybe it's not important what your Mr F. likes. We like to remove scum from the streets and we don't like your faces at all.~
==Bregg~Now ye've done it, blasted fool! Couldn't ye see the kensai girl was armed?~DO~Enemy()~
END Cohrvale 1

CHAIN
IF WEIGHT #-1~Global("RCAnath","Locals",1)~THEN RCHLOEJ Anath1
~I never sided with a werewolf before, <CHARNAME>. Life at your side never gets boring (grins).~
DO~SetGlobal("RCAnath","Locals",2)~
END
++~Rather ally with them than to fight him AND this Shade Lord.~EXIT
++~You are not too uninteresting yourself (wink).~EXIT
++~Adventuring has taught me not to always believe the obvious.~EXIT

CHAIN
IF WEIGHT #-1~Global("RCLathTempl","ar0902",1) ~THEN RCHLOEJ TemplPray1
~Excuse me for a minute, <CHARNAME>, it is not too often that our journeys give me the chance to say my prayer to the Morninglord in his temple.~
DO~SetGlobal("RCLathTempl","ar0902",2) ~
END
++~Of course, Chloe.~ + TemplPray1a
++~If you must but make it quick though.~ + TemplPray1a

CHAIN
IF~~THEN RCHLOEJ TemplPray1a
~*She stands silently for a minute with her eyes closed and her lips moving to unheard words.*~
=~Sorry for the short delay - or rather not, I'm not sorry but quite happy for it. You know that most of our culture is based on two things: Perfecting ourselves by training the body and the mind daily; and the worship of Akadia and Lathandar.~
END
++~No problem at all. I'm curious though, why do you worship both Akadia and Lathander?~+ TemplPray2
++~Yes, I noticed that. Did you ask him to send us some better tasting rations?~+ TemplPray3
++~Glad to make you feel good, Chloe.~EXIT
++~No problem at all.~EXIT 

CHAIN
IF~~THEN RCHLOEJ TemplPray2
~Very well.~EXTERN RCHLOEJ 293

CHAIN
IF~~THEN RCHLOEJ TemplPray3
~Sometimes I ask myself why I even talk to you at all, idiot.~EXIT

CHAIN
IF WEIGHT #-1~Global("RChloeForLatha","Global",4)~ THEN RCHLOEJ GoToWar1
~Ha! After all now I can REALLY prove myself to the Morninglord. The blood of our foe will flow!~
DO~SetGlobal("RChloeForLatha","Global",5)~
END
++~I was no follower of Lathander so far, but our tasks for the temple have given me the impression that bloodshed is not the thing to impress your god.~+ GoToWar2
++~Now my girl speaks to my heart...a fight is much better than all this wordy counselling.~+ GoToWar2

CHAIN
IF~~ THEN RCHLOEJ GoToWar2
~(Sigh) The Morninglord may not be in favour of bloody battles, but he is not one to encourage cowardice. If a battle must be fought in his name, then he will bless our weapons.~
END
++~This battle is forced upon us and we will still be victorious.~EXIT
++~Nobody will call the Lathandrites cowards if you and me represent the temple. Onward!~EXIT

CHAIN
IF WEIGHT #-8~NumberOfTimesTalkedTo(0) Global("CDSpawnArval","GLOBAL",0) AreaCheck("AR0900") InParty("RChloe")~THEN BHARVAL Yrkai
~No, no, no, this will not do at all. We cannot have the slim of faith lured away by such talk. They must be nurtured that they might choose the righteous path.~
DO~SetGlobal("RChloeForLatha","Global",1)~
==RChloeJ ~The Yr'kai serve Lathandar, good priest, tell us what must be done.~
==BHARVAL~Child, you are certainly on your way to visit the temple of the Morninglord. I would ask your service for a time, in exchange for the favour of the temple.~EXTERN BHARVAL 2

CHAIN
IF WEIGHT #-7~Global("RChloeForLatha","Global",1) InParty("RChloe") Global("BeholderPlot","GLOBAL",0) Global("NoHelpBeholder","GLOBAL",0) Global("CDWorkingForHelm","GLOBAL",0)~THEN BHARVAL Yrkai2
~I had worried you would not come. But your Yr'kai companion has a positive influence on you, the Morninglord be praised. Despite this, you have the look of a servant of light, a <PRO_MANWOMAN> of charity.~
DO~SetGlobal("RChloeForLatha","Global",2)~
==RChloeJ ~Normally we work for money but I hope this time <CHARNAME> will take the benefit of serving my God into account as well.~EXTERN BHARVAL 6

EXTEND_BOTTOM BHARVAL 29
IF~Global("RChloeForLatha","Global",2)~THEN GOTO Yrkai3
END

CHAIN
IF~~THEN BHARVAL Yrkai3
~To your reward then, for you and your friends have performed admirably, Chloe. You are to receive the greatest gift that we can bestow, one that transcends mere coin or purse.~
DO~SetGlobal("RChloeForLatha","Global",3)~
==RChloeJ ~I...I have...We have done what the Morninglord would expect an Yr'kai to do.~
==BHARVAL~In this, there is allegiance. Your faith is aligned as ours, though it lacks direction yet.~
==RChloeJ ~It would be a great honour to serve. With <CHARNAME>'s help we will not disgrace Lathandar.~EXTERN BHARVAL 33

CHAIN
IF WEIGHT #-1~Global("SlavQRC","Global",9) ~THEN RCHLOEJ Aftermath1
~(Chloe sits by the fireside alone, gazing into the flames and obviously still moved by the recent events.)~
DO~SetGlobal("SlavQRC","Global",10) SetGlobal("ComplainingAboutRestCR","GLOBAL",9) SetGlobal("FeelingSickLikeHellCR","LOCALS",9)~
END
++~(You sit down beside her and wordlessly hand her your half filled cup of heated red wine.)~ + Aftermath2
++~Good night, Chloe, do not let those dark thoughts haunt you too long.~+ Aftermath3
++~Take a sip of this, dear, even if you don't feel like eating this eve. (You hand her your mug of tea and sit down close beside her.)~ + Aftermath2

CHAIN
IF~~THEN RCHLOEJ Aftermath3
~(She nods absent mindedly but shows no further reaction.)~
END
++~(You sit down beside her and wordlessly hand her your half filled cup of heated red wine.)~ + Aftermath2
++~(You decide that this is not the night to pester her with discussing the recent events.)~DO~SetGlobal("SlavQRC","Global",50) RestParty()~EXIT

CHAIN
IF~~THEN RCHLOEJ Aftermath2
~(She takes a sip and puts the cup aside. After a moment you feel her leaning against your shoulder.)~
END
++~(You take the blanket from your back and cover her shoulders with it. You lightly put your arm around her and stare into the fire with her.)~+ Aftermath5
++~If you like to talk I am here to listen, Chloe.~+ Aftermath4
++~(You decide that this is not the night to pester her with discussing the recent events. You take back your cup and retreat to your bedroll.)~DO~SetGlobal("SlavQRC","Global",50) RestParty()~EXIT

CHAIN
IF~~THEN RCHLOEJ Aftermath4
~(She nods absent mindedly but shows no further reaction.)~
END
++~(You decide that this is not the night to pester her with discussing the recent events. You take back your cup and retreat to your bedroll.)~DO~SetGlobal("SlavQRC","Global",50) RestParty()~EXIT
++~(You take the blanket from your back and cover her shoulders with it. You lightly put your arm around her and stare into the fire with her.)~+ Aftermath5

CHAIN
IF~~THEN RCHLOEJ Aftermath5
~(You feel just her breathing as you sit silently beside her, your head filled with images of the recent events.)~
=~(After a while you feel her head falling sideways on your shoulder and her breathing relaxes more and more.)~
END
++~(You are sure that she has finally fallen asleep and this is comforting to know. You lay your head next to hers and drowse away yourself...)~DO~StartMovie("Restinn") Wait(2) ActionOverride("RChloe",StartDialog("RCHLOEJ",Player1))~EXIT

++~(You are sure that she has finally fallen asleep. You kiss her forehead gently and cautiously lay her fully to the ground, then sneak under the blanket with her where you soon fall asleep as well.)~DO~StartMovie("Restinn") Wait(2) ActionOverride("RChloe",StartDialog("RCHLOEJ",Player1))~EXIT

CHAIN
IF WEIGHT #-1~Global("SlavQRC","Global",10) ~THEN RCHLOEJ Aftermath11
~(Her kiss on your mouth awakens you. You have slept arm in arm for some while, it seems.)~
=~Thank you, <CHARNAME>. Thank you for doing...eh, nothing. (She grins) Thank you for doing the right kind of nothing.~
=~Sometimes it is enough to know someone is there who cares for you and who takes cares of you.~
DO~SetGlobal("SlavQRC","Global",11)~
END
++~If you ever like to talk about it all, I am here to listen, Chloe. Even if I am not sure there is much I can say.~ + Aftermath12
++~(Grin) I have rarely before enjoyed a night of doing nothing so much. I feel better, hope you do, too.~ + Aftermath12

CHAIN
IF~~THEN RCHLOEJ Aftermath12
~<CHARNAME> - this is what makes me feel so safe with you. You understand even if we both have no words that are adequate for this loss. I love it that you don't pretend to have. I love that you are just there with me.~
END
++~I know you will be there for me just the same. It is a very good feeling.~+ Aftermath13
++~Maybe there is a chance next time to do a little bit more of...something.~+ Aftermath13

CHAIN
IF~~THEN RCHLOEJ Aftermath13
~Yes, it is. (She kisses you again.)~ DO~IncrementGlobal("ChloeInterest","Global",10)~EXIT

