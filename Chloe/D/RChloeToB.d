//TOB Chloe

CHAIN
IF~Global("RChloeTOB","Global",1)~ THEN RCHLOEJ InToBPlane1
~A cosy little place here you call your own, <CHARNAME>.~
DO~SetGlobal("RChloeTOB","Global",2)~
==RCHLOEJ IF~OR(2)Global("ChloeRomanceActiveCR","GLOBAL",1)Global("ImoenChloeRomanceActiveCR","GLOBAL",1) ~THEN~ A lover's nest like I always dreamt to have. Who can ask for more (grin).~
==RCHLOEJ~This is supposed to be a part of you, a glimpse into your soul.~
END
++~This is what I have to live with, yes. Does it shock you, Chloe?~ + InToBPlane2
++~Like it or not, this pocket plane represents part of me.~ + InToBPlane2
++~If I had more time, I would give it some more personal touches here and there. Guess, we have to live with it with our quests pressing.~ + InToBPlane2

CHAIN
IF~~THEN RCHLOEJ InToBPlane2
~It gives me some hope. To have something like this to cope with and still be the person you are...that is quite something. It requires strength and willpower. Something both the kensai and the Yr'kai in me can relate to.~
=~Anyway, we have a task at hand, right?~EXIT

I_C_T Finsol01 27 RChloeSol1
==RChloeJ IF~InParty("RChloe")~THEN~Your decision is not really made today. You know for quite a time now what you will do with your heritage. You have anticipated this moment and you are ready to give the celestials your answer.~
END

I_C_T Finsol01 29 RChloeSol2
==RChloeJ IF~InParty("RChloe")~THEN~I knew you would give this answer and I am content. I was aware all the time whom I was following.~
END

I_C_T Finsol01 30 RChloeSol3
==RChloeJ IF~InParty("RChloe")~THEN~I knew you would give this answer and I am content. I was aware all the time whom I was following.~
END

I_C_T Finsol01 31 RChloeSol4
==RChloeJ IF~InParty("RChloe")~THEN~I knew you would give this answer and I am content. I was aware all the time whom I was following.~
END

I_C_T Finsol01 32 RChloeSol5
==RChloeJ IF~InParty("RChloe")~THEN~I knew you would give this answer and I am content. I was aware all the time whom I was following.~
END
