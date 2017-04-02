//TOB Chloe
BEGIN RCMasem 

CHAIN
IF WEIGHT #-1~Global("RChloeTOB","Global",1)~ THEN RCHLOEJ InToBPlane1
~A cosy little place here you call your own, <CHARNAME>.~
DO~SetGlobal("RChloeTOB","Global",2)~
==RCHLOEJ IF~OR(2)Global("ChloeRomanceActiveCR","GLOBAL",1)Global("ImoenChloeRomanceActiveCR","GLOBAL",1) ~THEN~ A lover's nest like I always dreamt to have. Who can ask for more (grin).~
==RCHLOEJ~This is supposed to be a part of you, a glimpse into your soul.~
END
++~This is what I have to live with, yes. Does it shock you, Chloe?~ + InToBPlane2
++~Like it or not, this pocket plane represents part of me.~ + InToBPlane2
++~If I had more time, I would give it some more personal touches here and there. Guess, we have to live with it with our quests pressing.~ + InToBPlane2

CHAIN
IF WEIGHT #-1~Global("RChloeTOB","Global",3)~ THEN RCHLOEJ InToBQuest1
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
~Another godchild, a daughter of Arkadi travelling in your company. Can this be coincidence?~
==RChloeJ~It may be or it may be not. In your version it has a reason even if you have to invent it yourself, sells more copies, doesn't it?~
==Sarvolo~Always the sellsword and by this you estimate other people, too...~
==RChloeJ~And what would you call yourself then, a *sell pen*. Oh, come, <CHARNAME>, history is written by US with our swords - not by this pencil pusher with his quill.~
END
++~His quill is supposed to write what our swords do, so that further generations may learn about it.~+ 9

I_C_T Hgwra01 18 RCloGoriWraith
==RChloeJ IF~InParty("RChloe")~THEN~I can see little of that *father* Gorion you told me so much about in this hate spitting moroon, <CHARNAME>.~
==HGwra01 IF~InParty("RChloe")~THEN~Dare not speak, bastard daughter of Arkadia, bloody murderer of your poor father.~
==RChloeJ IF~InParty("RChloe")~THEN~You curse at everyone you see trying to make us hate each other. But you know nothing, creature, you will not divide this party of friends. We need no further proof that you are anyone but Gorion.~
END

CHAIN
IF~Global("RCChloeFather","Global",1)~THEN RCMasem meetda1
~(Sigh) You have come far, Bhaalspawn, but it is my obligation to stop you from what you are about to do with my liege lord's heart.~
DO~SetGlobal("RCChloeFather","Global",2)~
==RChloeJ~Beware, <CHARNAME>, an Yr'Kai in the service of Yaga-Shura. I know he will not let us pass without a fight, even if this case is surely a lost one on his side.~
==RCMasem~Girl? You're an Yr'Kai yourself. What a dilemma, we both swore our allegiance to a spawn of murder. I hope at least you are aware of whom you serve.~
==RChloeJ~This sounds like you found out about the one you serve too late. Still you swore an oath and you will keep it. Wish we had met under better circumstances.~
==RCMasem~I do not recognise you, girl. You must have been born after I left the tribe for this contract.~
=~This campaign is lost and Yaga-Shura will fall at your forces after my inevitable death.~
==RChloeJ~Your honor - our honor - demands that you fight this battle you cannot win...I challenge you to fight against me alone, Yr'Kai against Yr'Kai - sword against sword.~
=~I am Chloe, daughter of Arkadia.~
==RCMasem~I am...what, daughter of Arkadia? You?~
=~I am Masemeron...~
==RChloeJ~Masmeron,...father...I never expected to meet you. This is what kept you from the tribe all this time. We find each other and we loose each other on the same day.~
==RCMasem~Give me the honor to see that my only daughter is worth my seed in true Yr'Kai tradition.~
==RChloeJ~So be it.~
END
++~Stop this madness! Daughter will not kill father over a fated bhaalspawn and a void contract...~+ meetda2
++~Come to your senses. Masmeron's fight is in vain and you both know it. Celebrate a family having found each other.~+ meetda2
++~*You remain silent in respect for the two Yr'Kai. This is their affair alone.*~DO~AddXPObject(Player1,8000)~+ meetda2

CHAIN
IF~~THEN RCMasem meetda2
~*The two Yr'Kai seem to completely ignore you and everything else in their surrounding.*~
=~They ceremoniously shake each other's hand, pick their weapons, and after a bow to each other they start their combat.~DO~ ClearAllActions() StartCutSceneMode()
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
~(Sigh) You will ask me the inevitable now, right?~
DO~SetGlobal("RCChloeFather","Global",4)~
END
++~Was there no way to spare your father's life?~+ meetda5
++~Do you think you will end like your father one day?~+ meetda6
++~Yes. Why not.~+ meetda5

CHAIN
IF~~THEN RChloeJ meetda6
~I have come to trust my judgement about you, <CHARNAME>. You will not lead me to such an end. And even if...~
END
++~Yes?~+ meetda5

CHAIN
IF~~THEN RChloeJ meetda5
~My father's end was that of a honorable Yr'Kai. It matters not what Yaga-Shura was standing for but what Masemeron was standing for. Our tribe members live and do their training and praying for the purpose of honor.~
=~I will keep his memory and his swords the way they deserve to be kept. With a daughter's love.~
END
++~A daughter's love? Maybe your society has no other way of family life, I should have guessed from the way you once described it to me.~+ meetda7
++~I will never end to learn how different an Yr'Kai's view are from the <PRO_RACE> ways.~+ meetda7

CHAIN
IF~~THEN RChloeJ meetda7
~Whatever. I am content that I now know my parents and I am proud to be their daughter.~EXIT
