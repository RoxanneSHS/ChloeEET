INTERJECT Bregg 0 RChloeBregg
==RChloeJ IF~InParty("RChloe")~THEN~Maybe it's not important what your Mr F. likes. We like to remove scum from the streets and we don't like your faces at all.~
==Bregg~Now ye've done it, blasted fool! Couldn't ye see the kensai girl was armed?~DO~Enemy()~
END Cohrvale 1

CHAIN
IF~Global("RCAnath","Locals",1)~THEN RCHLOEJ Anath1
~I never sided with a werewolf before, <CHARNAME>. Life at your side never gets boring (grins).~
DO~SetGlobal("RCAnath","Locals",2)~
END
++~Rather ally with them than to fight him AND this Shade Lord.~EXIT
++~You are not too uninteresting yourself (wink).~EXIT
++~Adventuring has taught me not to always believe the obvious.~EXIT

CHAIN
IF~Global("RCLathTempl","ar0902",1) ~THEN RCHLOEJ TemplPray1
~Excuse me for a minute, <CHARNAME>, it is not too often that our journeys give me the chance to say my prayer to the Morninglord in his temple.~
DO~SetGlobal("RCLathTempl","ar0902",2) ~
END
++~Of course, Chloe.~ + TemplPray1a
++~If you must but make it quick though.~ + TemplPray1a

CHAIN
IF~~THEN RCHLOEJ TemplPray1a
~*She stands silently for a minute with her eyes closed and her lips moving to unheard words.*~
=~Sorry for the short delay - or rather not, I'm not sorry but quite happy for it. You know that most of our culture is based on two things: Perfecting ourselves by training the body and the mind daily; and the worship of Akadia and Lathander.~
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
IF~Global("RChloeForLatha","Global",4)~ THEN RCHLOEJ GoToWar1
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
==RChloeJ ~The Yr'kai serve Lathander, good priest, tell us what must be done.~
==BHARVAL~Child, you are certainly on your way to visit the temple of the Morninglord. I would ask your service for a time, in exchange for the favor of the temple.~EXTERN BHARVAL 2

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
==RChloeJ ~It would be a great honor to serve. With <CHARNAME>'s help we will not disgrace Lathander.~EXTERN BHARVAL 33