INTERJECT Bregg 0 RChloeBregg
==RChloeJ IF~InParty("RChloe")~THEN~Maybe it's not important what your Mr F. likes. We like to remove scum from the streets and we don't like your faces at all.~
==Bregg~Now ye've done it, blasted fool! Couldn't ye see the kensai girl was armed?~DO~Enemy()~
END Cohrvale 1

CHAIN
IF~Global("RCAnath","Locals",1)~THEN RCHLOEJ Anath1
~I never sided with a werewolf before, <CHARNAME>. Life at your side never gets boring (grins).~
DO~SetGlobal("RCAnath","Locals",2)~
END
++~Rather ally with them then to fight him AND this Shade Lord.~EXIT
++~You are not too uninteresting yourself (wink).~EXIT
++~Adventuring has taught me not to always believe the obvious.~EXIT

