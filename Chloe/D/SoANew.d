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

