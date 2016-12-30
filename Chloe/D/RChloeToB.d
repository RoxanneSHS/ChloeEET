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
IF~Global("RChloeTOB","Global",3)~ THEN RCHLOEJ InToBQuest1
~It seems that your destiny as a godchild becomes clearer now with every day. Mine stays hidden still.~
DO~SetGlobal("RChloeTOB","Global",4)~
END
++~Maybe yours is to be here, at the side of the bhaalspawn that makes the difference.~+ InToBQuestbah
++~Must we assume that every godchild is destined for something big. Just take our Imoen - she just can enjoy life without needing to care about those *bigger things*.~+ InToBQuestspec
++~And who is better off by it? Do you envy me to be the *fuel* for some bloody god's return?~+ InToBQuestnos

CHAIN
IF~~ THEN RCHLOEJ InToBQuestbah
~Ha, the bigger they come the harder they fall, fool. But...~
END
++~Yes?~+ InToBQuestreas

CHAIN
IF~~ THEN RCHLOEJ InToBQuestspec
~Ha, so you think you're so very much more special than anyone else. I should have known...but...~
END
++~Yes?~+ InToBQuestreas

CHAIN
IF~~ THEN RCHLOEJ InToBQuestnos
~Don't make me laugh, <CHARNAME>, I know you well enough to know that you will not go down like that. Fishing for compliments or what?...but...~
END
++~Yes?~+ InToBQuestreas

CHAIN
IF~~ THEN RCHLOEJ InToBQuestreas
~...if that bigmouthed bhaalspawn's destiny is to prevent <PRO_HISHER> father to return, this might really be the right place for me to be.~
END
++~You will not regret it, take my promise.~+ InToBQuestfin
++~Be loyal to me now and I will do the same for you should it become necessary.~+ InToBQuestfin
++~Isn't that a valid goal for an Yr'Kai and a Lathandrite?~+ InToBQuestfin

CHAIN
IF~~ THEN RCHLOEJ InToBQuestfin
~It's a reason to support you as good as any I can ask for.~EXIT

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

EXTEND_BOTTOM Sarvolo 9
IF~ InParty("RChloe") ~THEN REPLY~ My Yr'Kai friend Chloe is still searching her destiny.~ GOTO Volclo1
END

CHAIN
IF~~THEN Sarvolo Volclo1
~Another godchild, a daughter of Arkadia travelling in your company. Can this be coincidence?~
==RChloeJ~It may be or it may be not. In your version it has a reason even if you have to invent it yourself, sells more copies, doesn't it?~
==Sarvolo~Always the sellsword and by this you estimate other people, too...~
==RChloeJ~And what would you call yourself then, a *sell pen*. Oh, come, <CHARNAME>, history is written by US with our swords - not by this pencil pusher with his quilt.~
END
++~His quilt is supposed to write what our swords do, so that further generations may learn about it.~+ 9
