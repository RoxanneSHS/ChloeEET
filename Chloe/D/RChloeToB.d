//TOB Chloe
BEGIN RCMasem 

INTERJECT Illasera 6 RChloeVillageR
==RChloeJ IF~InParty("RChloe") Global("WeMustReadItCR","GLOBAL",1) ~THEN~The same Illasera who destroyed the village La'risadiim? To find an elven boy...~
==Illasera IF~InParty("RChloe") Global("WeMustReadItCR","GLOBAL",1) ~THEN~Those stupid Yr'kai. They really tried to resist us and protect that little bhaalspawn bastard. There was no choice.~
==RChloeJ IF~InParty("RChloe") Global("WeMustReadItCR","GLOBAL",1) ~THEN~You eliminated a whole population to get your hands one a little boy, you soom-to-be-dead killer?~
==Illasera IF~InParty("RChloe") Global("WeMustReadItCR","GLOBAL",1) ~THEN~Those Yr'kai gave my army very little chance. They would not negotiate. It was us or them.~
==Illasera IF~InParty("RChloe") Global("WeMustReadItCR","GLOBAL",1) ~THEN~To be precise, it was most of us - as my army was destroyed - and it was ALL of them.~ 
==RChloeJ IF~InParty("RChloe") Global("WeMustReadItCR","GLOBAL",1) ~THEN~Ha, your army is gone and you are alone here today, just...it was NOT all of them. You soon wish it had been all of them. Bad for you that this here Yr'kai is very much alive.~
==Illasera IF~InParty("RChloe") Global("WeMustReadItCR","GLOBAL",1) ~THEN~You are...~ 
==RChloeJ IF~InParty("RChloe") Global("WeMustReadItCR","GLOBAL",1) ~THEN~For Lathandar and Akadia...For La'risadiim!!!~END Illasera 8

CHAIN
IF WEIGHT #-1~Global("RChloeVillageR","Global",2)~ THEN RCHLOEJ Villend
~A bhaalspawn is responsible for the death of all my people...and I trust a bhaalspawn to guide me through all of this? Is that what my mother Akadia has intended for me?~
DO~SetGlobal("RChloeVillageR","Global",3)~
END
++~Chloe, trust me. If there ever was a reason to pick up the fight against these monsters, we have one. We must stop them, or your village will not be the last to suffer such a fate.~+ Villend2
IF~GlobalLT("ChLovetalksCR","GLOBAL",16)~THEN REPLY~What was that about the elven boy who caused Illasera to attack your village?~+ Villend3
IF~GlobalGT("ChLovetalksCR","GLOBAL",16)~THEN REPLY~So that bloodthirsty elfish boy you told me about was a bhaalspawn. (Sigh) We bring murder with us, regardless of what we do.~+ Villend2

CHAIN
IF ~~ THEN RCHLOEJ Villend2
~I will be glad to fight at your side to bring this to an end. Now more than ever.~EXIT

CHAIN
IF ~~ THEN RCHLOEJ Villend3
~I never understood how I could lose everyone I loved in one single night in a battle over a boy!~
=~I asked myself how could a boy be so important that an army would raze an entire village to the ground and slaughter every living person in it to reach him? I believe I know what boy it was too... an Elfish boy. He was odd all his life. He always seemed more... aggressive than everyone else. More... bloodthirsty. Which, for a Yr'kai to say that means something.~
END
++~Now we know it, he was a bhaalspawn. (Sigh) We bring murder with us, regardless of what we do.~+ Villend2
++~Chloe, trust me. If there ever was a reason to pick up the fight against these monsters, we have one. We must stop them, or your village will not be the last to suffer such a fate.~+ Villend2

CHAIN
IF WEIGHT #-1~Global("RChloeTOB","Global",1)~ THEN RCHLOEJ InToBPlane1
~A cosy little place here you call your own, <CHARNAME>.~
DO~SetGlobal("RChloeTOB","Global",2)~
==RCHLOEJ IF~OR(2)Global("ChloeRomanceActiveCR","GLOBAL",2)Global("ImoenChloeRomanceActiveCR","GLOBAL",1) ~THEN~ A lover's nest like I always dreamt to have. Who can ask for more (grin).~
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

CHAIN
IF WEIGHT #-1~Global("RChloeVillageR","Global",4)~ THEN RCHLOEJ WhatafterAll1
~Do you think you will ever return to live quietly at Candlekeep?~
DO~SetGlobal("RChloeVillageR","Global",5)~
END
++~Even if we survive all of this - too much has changed already, I cannot pretend I will ever be happy as the person I left behind long ago.~ + WhatafterAll2
++~Hard to say. With your own loss of any place to return to, would you think of going to Candlekeep with me?~ + WhatafterAll2
++~What brings such a question to your mind right now, Chloe?~ + WhatafterAll2

CHAIN
IF ~~ THEN RCHLOEJ WhatafterAll2
~You must know that when a Yr'kai reaches young adulthood, they are expected to go out into the world and fight as mercenaries. They send a portion of their earnings back to support their village and the village uses that money to buy the food, medicine, and livestock they require to live. This is how we met first of all.~
=~An Yr'kai's "wandering" phase of life can be short or last a lifetime. A Yr'kai returning to settle down often takes a role best suited to their natural talents and interests. This is usually when they start having children as well. ~
END
++~I guess I see your point. You lost that choice for a return.~ + WhatafterAll3
++~Are you afraid to be doomed to lifetime wandering?~ + WhatafterAll3
IF~Global("ChloeRomanceActiveCR","GLOBAL",2)~THEN REPLY~Apart from that *having children* and apart from neither of us having a home to return to...~ + WhatafterAll3
++~There will come a time when you need to consider your options - just in case you decide the wadering days are over for you.~ + WhatafterAll3

CHAIN
IF ~~ THEN RCHLOEJ WhatafterAll3
~We are both in the same boat, as the saying goes. But that alone is not basis for a decision, right?~
END
++~It is a starting point, Chloe. Only...with the future as uncertain as it is for us right now, I'd prefer to postpone common plans for the moment.~  + WhatafterAll4
++~If we come to a point where we can make common plans for the future, I swear it, Chloe, we will make them together.~ + WhatafterAll4
++~You know well that in the end each of us has to come to the final decision alone.~ + WhatafterAll5
++~Help me to keep our boat afloat, Chloe, it's the prerequisite for any common plans we may consider after all this is done and over.~ + WhatafterAll4

CHAIN
IF ~~ THEN RCHLOEJ WhatafterAll4
~*Common plans*, it is a vague expression - and still, it is all we in fact can say about our future with a minimum of certainty. ~
=~(She takes your hand and smiles at you.) For others that may mean little - for us it means that we have all we need.~EXIT

CHAIN
IF ~~ THEN RCHLOEJ WhatafterAll5
~You have come so far, <CHARNAME> and still have learned so little. Being Yr'kai and being alone is...our tribe is our family, the community is our strength, friends - companions - lovers - the elders and the children... ~
=~Alone - we are nothing. ~EXIT

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
==RChloeJ~Hold a moment, <CHARNAME>. That's no mere warrior, he is Yr'kai, though one I am unfamiliar with.~
==RCMasem~Another Yr'kai... it has been too long since I have stood on a battlefield with one of my brethren. A pity we find ourselves on opposing sides.-
=~I hope at least you are aware of whom you serve, girl.~
==RChloeJ~I am fully aware and <PRO_HESHE> has earned my loyalty. This is a most unfortunate turn of events, but one we must face honorably.~
==RCMasem~Indeed. We rarely know the measure of our patron until blood has been shed. But an oath is an oath.~
=~I am Yngvar out of Brenna of Yr'kai-Shen-Do.~
==RChloeJ~Our gods weep when brother and sister shed each other's blood, but they understand it is at times necessary. *sighs*~
=~I am Chloe out of Akadia of La'risadiim. I will bear your swords honorably to Shen-do's Great Hall after this is all finished.~
==RCMasem~Hmph. Confident, just like a true... wait. Akadia? No... this tragedy is all the more bitter.~
=~It is my seed from which you sprung, Chloe. I am your father.~
==RChloeJ~What? No, I was told my father's name is Masemeron.~
==RCMasem~Silly girl, Masemeron is an Old Yr'kai term for a swordmaster. It is a title, not a name.~
==RChloeJ~I... never realized that. No wonder no one outside of my village knew of you.-
=~If what you say is true, then why? Why is this the first time we meet? Why did you... abandon me?~
==RCMasem~I did not even know you existed. There was a moot in Yr'kai-Do followed by a great revelry.~
=~I was among the warriors being honored for my deeds. During the revelry there was this woman... your mother.~
=~The most beautiful woman I had ever seen... eyes like lightning. I was deep in my cups and she was a force of nature.~
=~As the light of dawn approached her true nature became apparent. She smiled at me and then in a gust of wind was gone.~
=~I was never quite sure if it was simply too much mead, or if what I had experienced happened. But... here you are.~
==RChloeJ~Word never reached you of a daughter of Akadia? I find that difficult to believe.~
==RCMasem~It doesn't matter now. We have a sworn duty to fight to the death. Don't complicate matters, child.~
==RChloeJ~My entire village was wiped out, everyone I knew and loved lies dead.~
=~And now I am to slay my own father moments after meeting him?~
==RCMasem~It is our way. Remember, as long as even a single Yr'kai survives, we survive. Let us end this.~
==RChloeJ~Please, don't make me do this. Break your vow. I've lost almost everything, don't make me lose you too.~
==RCMasem~And now you learn your final lesson. Honor is sacrifice, and sacrifice is love.~
==RChloeJ~Your honor means more to you than your life?~
==RCMasem~Of course. I am Yr'kai, as are you.~
==RChloeJ~And it means more than sparing me the pain of another loss? I mean so little to you?~
==RCMasem~One of us will feast in Lathandar's Great Hall tonight. You will understand someday. Let us begin.~
==RChloeJ~*sighs* You stubborn bastard. So be it.~
END
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
~Whatever. I am content that at least I now know my parents and I am proud to be their daughter.~EXIT
