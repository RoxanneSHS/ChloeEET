BEGIN ~RChloe~
BEGIN ~RCHLOEP~
BEGIN ~SUBMANCR~
BEGIN ~COMMANCR~
BEGIN ~WIZMANCR~
BEGIN ~AKADIACR~
BEGIN ~MAN1CR~
BEGIN ~MAN2CR~
BEGIN ~GUAMANCR~
BEGIN ~VELDERCR~
BEGIN ~AbbyCR~
BEGIN ~RCHLOEJ~

// ||| Chloe and Anomen don't get along very well... |||

// knight Anomen

EXTEND_BOTTOM BANOMEN 400
IF ~InParty("RChloe") !Dead("RChloe") OR(3) Global("ChloeRomanceActiveCR","GLOBAL",0) Global("ChloeRomanceActiveCR","GLOBAL",1) Global("ChloeRomanceActiveCR","GLOBAL",2)~ THEN EXTERN RCHLOEJ AnomenChloeShowdown
END

CHAIN RCHLOEJ AnomenChloeShowdown
@8
== BANOMEN @9
== RCHLOEJ @10
== BANOMEN @11
== RCHLOEJ @12
END BANOMEN ACS1

APPEND BANOMEN
IF ~~ THEN BEGIN ACS1
   SAY @13
   IF ~~ THEN REPLY @14 EXTERN RCHLOEJ ACS2
   IF ~~ THEN REPLY @15 GOTO ACS3
   IF ~~ THEN REPLY @16 GOTO ACS4
   IF ~~ THEN REPLY @17 GOTO ACS5
END
END

CHAIN RCHLOEJ ACS2
@18
END BANOMEN ACS2a

APPEND BANOMEN
IF ~~ THEN BEGIN ACS2a
   SAY @19
  IF ~~ THEN REPLY #35782 /* ~Thank you...I was happy to help.~ */ DO ~SetGlobal("AnomenRomanceActive","GLOBAL",2)~ GOTO 401
  IF ~~ THEN REPLY #35783 /* ~I had nothing to do with it, Anomen.  You were proving yourself long before I came.~ */ DO ~SetGlobal("AnomenRomanceActive","GLOBAL",2)~ GOTO 406
  IF ~~ THEN REPLY #35784 /* ~You seem quite pleased with yourself.~ */ DO ~SetGlobal("AnomenRomanceActive","GLOBAL",2)~ GOTO 407
  IF ~~ THEN REPLY #35785 /* ~Good for you...now we need to get moving.~ */ DO ~SetGlobal("AnomenRomanceActive","GLOBAL",2)~ GOTO 408
// This is what really needs this dialogue:  IF ~~ THEN REPLY ~Actually, I just wanted an excuse to get rid of Chloe. Now, shut up and leave me alone. Don't you dare to sully me with your filthy eyes again, pathetic excuse of a knight.~
END
END

CHAIN BANOMEN ACS3
@20 DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)~
== RCHLOEJ @21
EXIT

CHAIN BANOMEN ACS4
@22 DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)~
== RCHLOEJ @23 DO ~SetGlobal("ChloeRomanceActiveCR","GLOBAL",3)~
EXIT

CHAIN BANOMEN ACS5
@24
== RCHLOEJ @25
== IMOEN2J IF ~InParty("Imoen2") See("Imoen2") !Dead("Imoen2")~ THEN @26
== BANOMEN @27 DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)~
END RCHLOEJ ACS5a

APPEND RCHLOEJ
IF ~~ THEN BEGIN ACS5a
   SAY @28
   IF ~~ THEN REPLY @29 GOTO ACS5b
   IF ~!Global("ImoenIsInPartyCR","GLOBAL",1)~ THEN REPLY @30 EXIT
   IF ~Global("ImoenIsInPartyCR","GLOBAL",1)~ THEN REPLY @31 EXTERN IMOEN2J ACS5c
   IF ~~ THEN REPLY @32 DO ~SetGlobal("ChloeRomanceActiveCR","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN ACS5b
   SAY @33
   IF ~~ THEN EXIT
END
END

CHAIN IMOEN2J ACS5c
@34
EXIT


// non-knight Anomen

EXTEND_BOTTOM BANOMEN 323
IF ~InParty("RChloe") !Dead("RChloe") OR(3) Global("ChloeRomanceActiveCR","GLOBAL",0) Global("ChloeRomanceActiveCR","GLOBAL",1) Global("ChloeRomanceActiveCR","GLOBAL",2)~ THEN EXTERN RCHLOEJ NKAnomenChloeShowdown
END

CHAIN RCHLOEJ NKAnomenChloeShowdown
@35
== ANOMENJ @36
END RCHLOEJ NKACS1

APPEND RCHLOEJ
IF ~~ THEN BEGIN NKACS1
   SAY @37
   IF ~~ THEN REPLY @38 GOTO NKACS2
   IF ~~ THEN REPLY @39 EXTERN BANOMEN NKACS3
   IF ~~ THEN REPLY @40 EXTERN BANOMEN NKACS4
   IF ~See("Viconia") !Dead("Viconia") InParty("Viconia")~ THEN REPLY @41 EXTERN VICONIJ VicNKACS5
   IF ~OR(3) !See("Viconia") Dead("Viconia") !InParty("Viconia")~ THEN REPLY @41 EXTERN BANOMEN NKACS5
END

IF ~~ THEN BEGIN NKACS2
   SAY @42
   IF ~~ THEN DO ~SetGlobal("ChloeRomanceActiveCR","GLOBAL",3)~ EXTERN BANOMEN NKACS2a
END
END

APPEND BANOMEN
IF ~~ THEN BEGIN NKACS2a
   SAY @43
   IF ~~ THEN GOTO 324
END
END

CHAIN BANOMEN NKACS3
@44 DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)~
== RCHLOEJ @21
EXIT

CHAIN BANOMEN NKACS4
@45 DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)~
== RCHLOEJ @46 DO ~SetGlobal("ChloeRomanceActiveCR","GLOBAL",3)~
EXIT

APPEND VICONIJ
IF ~~ THEN BEGIN VicNKACS5
   SAY @47
   IF ~~ THEN EXTERN BANOMEN NKACS5
END
END

CHAIN BANOMEN NKACS5
@48
== RCHLOEJ @49 DO ~SetGlobal("ChloeRomanceActiveCR","GLOBAL",3)~
END BANOMEN NKACS5a

APPEND BANOMEN
IF ~~ THEN BEGIN NKACS5a
   SAY @50
   IF ~~ THEN REPLY @51 GOTO NKACS5a1
   IF ~~ THEN REPLY @52 DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)~ GOTO NKACS5a2
   IF ~~ THEN REPLY @53 DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN NKACS5a1
   SAY @54
   IF ~~ THEN GOTO 324
END

IF ~~ THEN BEGIN NKACS5a2
   SAY @55
   IF ~~ THEN EXIT
END
END



// ||| Akadia shows up |||

CHAIN IF WEIGHT #100 ~Global("AkadiaRulesAllCR","GLOBAL",1)~ THEN AKADIACR Akadia1
@56
== RCHLOEJ @57
== AKADIACR @58
== RCHLOEJ @59
== AKADIACR @60
== RCHLOEJ @61
== AKADIACR @62
== AKADIACR @63
== RCHLOEJ @64
== AKADIACR @65
== RCHLOEJ @66
== AKADIACR @67
== RCHLOEJ @68
== AKADIACR @69
== AKADIACR @70
DO ~StartCutSceneMode() TakeItemReplace("CHLOSW2","CHLOSW1","RChloe") TakeItemReplace("CHLOSW5","CHLOSW4","RChloe") Wait(1) CreateVisualEffectObject("SPGRWHRL","AkadiaCR") PlaySound("EFF_M28") Wait(1) DestroySelf() EndCutSceneMode()~
EXIT


// ||| Abagail quest |||

EXTEND_BOTTOM ARAN 10
IF ~InParty("RChloe")~ THEN GOTO ChloeQuestAran
END

CHAIN ARAN ChloeQuestAran
@71
== RCHLOEJ IF ~IsValidForPartyDialog("RChloe")~ THEN @72
== ARAN IF ~IsValidForPartyDialog("RChloe")~ THEN @73
== ARAN IF ~!IsValidForPartyDialog("RChloe")~ THEN @74
END ARAN ChloeQuestAranJournal

APPEND ARAN
IF ~~ THEN BEGIN ChloeQuestAranJournal
  SAY @75
   IF ~IsValidForPartyDialog("RChloe")~ THEN DO ~SetGlobal("InAbagailQuestCR","GLOBAL",1) AddJournalEntry(@1,QUEST)~ EXTERN RCHLOEJ ChloeQuestAranJournalYo
   IF ~!IsValidForPartyDialog("RChloe")~ THEN DO ~SetGlobal("InAbagailQuestCR","GLOBAL",1) AddJournalEntry(@1,QUEST)~ EXIT
END
END

APPEND RCHLOEJ
IF ~~ THEN BEGIN ChloeQuestAranJournalYo
   SAY @76
   IF ~~ THEN EXIT
END
END

// ~~ In da house ~~

CHAIN IF WEIGHT #0 ~Global("InAbagailQuestCR","GLOBAL",1)~ THEN VELDERCR VampChloe
@77 DO ~SetGlobal("InAbagailQuestCR","GLOBAL",2) Enemy() ActionOverride("Vamp1CR",Enemy()) ActionOverride("Vamp2CR",Enemy())~
EXIT


// ~~ second floor of da house ~~

// If human

APPEND AbbyCR
IF ~Global("AbbyIsHumanYouAreALuckyPersonCR","GLOBAL",1) IsValidForPartyDialog("RChloe")~ THEN BEGIN AbbyHuman
   SAY @78
   IF ~~ THEN EXTERN RCHLOEJ AH1
END

IF ~Global("AbbyIsHumanYouAreALuckyPersonCR","GLOBAL",1) !IsValidForPartyDialog("RChloe")~ THEN BEGIN AbbyHuman
   SAY @79
   IF ~~ THEN REPLY @80 DO ~SetGlobal("AbbyIsHumanYouAreALuckyPersonCR","GLOBAL",2) AddJournalEntry(@2,QUEST) StartCutSceneMode() Wait(2) StartCutScene("AbTelHCR")~ EXIT
   IF ~IsValidForPartyDialog("RChloe")~ THEN REPLY @81 EXTERN RCHLOEJ AH2
   IF ~!IsValidForPartyDialog("RChloe")~ THEN REPLY @81 GOTO AH2a
   IF ~IsValidForPartyDialog("RChloe")~ THEN REPLY @82 EXTERN RCHLOEJ AH1
   IF ~!IsValidForPartyDialog("RChloe")~ THEN REPLY @82 GOTO AH1a
END
END

APPEND RCHLOEJ
IF ~~ THEN BEGIN AH1
   SAY @83
   IF ~~ THEN REPLY @84 DO ~SetGlobal("AbbyIsHumanYouAreALuckyPersonCR","GLOBAL",2) AddJournalEntry(@2,QUEST) StartCutSceneMode() Wait(2) StartCutScene("AbTelHCR")~ EXIT
   IF ~~ THEN REPLY @81 EXTERN RCHLOEJ AH2
   IF ~~ THEN REPLY @82 EXTERN RCHLOEJ AH1aca
END

IF ~~ THEN BEGIN AH1aca
   SAY @85
   IF ~~ THEN EXTERN AbbyCR AH1a
END

IF ~~ THEN BEGIN AH2
   SAY @86
   IF ~~ THEN EXTERN AbbyCR AH2a
END
END


APPEND AbbyCR
IF ~~ THEN BEGIN AH1a
   SAY @87
   IF ~~ THEN DO ~Enemy() AddJournalEntry(@3,QUEST) Attack(NearestEnemyOf(Myself))~ EXIT
END

IF ~~ THEN BEGIN AH2a
   SAY @88
   IF ~~ THEN REPLY @89 DO ~SetGlobal("AbbyIsHumanYouAreALuckyPersonCR","GLOBAL",2) AddJournalEntry(@2,QUEST) StartCutSceneMode() Wait(2) StartCutScene("AbTelHCR")~ EXIT
   IF ~~ THEN REPLY @90 DO ~SetGlobal("DecideLaterAbbyCR","GLOBAL",1)~ EXIT
   IF ~IsValidForPartyDialog("RChloe")~ THEN REPLY @82 EXTERN RCHLOEJ AV1
   IF ~!IsValidForPartyDialog("RChloe")~ THEN REPLY @82 GOTO AV1a
END

// If vampire

IF ~Global("AbbyIsVampireToughLuckCR","GLOBAL",1)~ THEN BEGIN AbbyVampire
   SAY @91
   IF ~~ THEN REPLY @80 DO ~SetGlobal("AbbyIsVampireToughLuckCR","GLOBAL",2) AddJournalEntry(@2,QUEST) StartCutSceneMode() Wait(2) StartCutScene("AbTelVCR")~ EXIT
   IF ~IsValidForPartyDialog("RChloe")~ THEN REPLY @81 EXTERN RCHLOEJ AV2
   IF ~!IsValidForPartyDialog("RChloe")~ THEN REPLY @81 GOTO AV1a
   IF ~IsValidForPartyDialog("RChloe")~ THEN REPLY @82 EXTERN RCHLOEJ AV1
   IF ~!IsValidForPartyDialog("RChloe")~ THEN REPLY @82 GOTO AV1a
END
END

APPEND RCHLOEJ
IF ~~ THEN BEGIN AV1
   SAY @85
   IF ~~ THEN EXTERN AbbyCR AV1a
END

IF ~~ THEN BEGIN AV2
   SAY @86
   IF ~~ THEN EXTERN AbbyCR AV2a
END
END

APPEND AbbyCR
IF ~~ THEN BEGIN AV1a
   SAY @87
   IF ~~ THEN DO ~Enemy() AddJournalEntry(@4,QUEST)~ EXIT
END

IF ~~ THEN BEGIN AV2a
   SAY @88
   IF ~~ THEN REPLY @89 DO ~SetGlobal("AbbyIsVampireToughLuckCR","GLOBAL",2) AddJournalEntry(@2,QUEST) StartCutSceneMode() Wait(2) StartCutScene("AbTelVCR")~ EXIT
   IF ~~ THEN REPLY @90 DO ~SetGlobal("DecideLaterAbbyCR","GLOBAL",1)~ EXIT
   IF ~IsValidForPartyDialog("RChloe")~ THEN REPLY @82 EXTERN RCHLOEJ AV1
   IF ~!IsValidForPartyDialog("RChloe")~ THEN REPLY @82 GOTO AV1a
END
END

// Deciding later



APPEND AbbyCR
IF WEIGHT #-100 ~Global("DecideLaterAbbyCR","GLOBAL",1) Global("AbbyIsVampireToughLuckCR","GLOBAL",1)~ THEN BEGIN AVlater
   SAY @92 
   IF ~~ THEN REPLY @89 DO ~SetGlobal("AbbyIsVampireToughLuckCR","GLOBAL",2) AddJournalEntry(@2,QUEST) StartCutSceneMode() Wait(2) StartCutScene("AbTelVCR")~ EXIT
   IF ~~ THEN REPLY @90 DO ~SetGlobal("DecideLaterAbbyCR","GLOBAL",1)~ EXIT
   IF ~IsValidForPartyDialog("RChloe")~ THEN REPLY @82 EXTERN RCHLOEJ AV1
   IF ~!IsValidForPartyDialog("RChloe")~ THEN REPLY @82 GOTO AV1a
END

IF WEIGHT #-100 ~Global("DecideLaterAbbyCR","GLOBAL",1) Global("AbbyIsHumanYouAreALuckyPersonCR","GLOBAL",1)~ THEN BEGIN AVlater
   SAY @93 
   IF ~~ THEN REPLY @89 DO ~SetGlobal("AbbyIsHumanYouAreALuckyPersonCR","GLOBAL",2) AddJournalEntry(@2,QUEST) StartCutSceneMode() Wait(2) StartCutScene("AbTelHCR")~ EXIT
   IF ~~ THEN REPLY @90 DO ~SetGlobal("DecideLaterAbbyCR","GLOBAL",1)~ EXIT
   IF ~IsValidForPartyDialog("RChloe")~ THEN REPLY @82 EXTERN RCHLOEJ AV1
   IF ~!IsValidForPartyDialog("RChloe")~ THEN REPLY @82 GOTO AV1a
END
END

// ~~ Returning to Aran ~~

// With Abagail

CHAIN IF WEIGHT #-1 ~OR(2) Global("AbbyIsVampireToughLuckCR","GLOBAL",2) Global("AbbyIsHumanYouAreALuckyPersonCR","GLOBAL",2) Global("DontLoopAranCR","LOCALS",0)~ THEN ARAN Abby1
@94 DO ~SetGlobal("AbbyIsVampireToughLuckCR","GLOBAL",3)~
== AbbyCR @95 DO ~SetGlobal("DontLoopAranCR","LOCALS",1)~
== ARAN @96 DO ~SetGlobal("AbbyIsHumanYouAreALuckyPersonCR","GLOBAL",3) AddXPObject(Player1,30000) AddXPObject(Player2,30000) AddXPObject(Player3,30000) AddXPObject(Player4,30000) AddXPObject(Player5,30000) AddXPObject(Player6,30000)~
END AbbyCR ewtrwet

APPEND AbbyCR
IF ~~ THEN BEGIN ewtrwet
   SAY @97
   IF ~~ THEN DO ~GiveItemCreate("LumpCR",Player1,0,0,0)  EraseJournalEntry(@1) EraseJournalEntry(@2) EraseJournalEntry(@3) EraseJournalEntry(@4) AddJournalEntry(@5,QUEST_DONE)~
   EXTERN ARAN oewtmowt
END
END

CHAIN ARAN oewtmowt
@98
END ARAN 24

// Having killed Abagail (Vampire)

CHAIN IF WEIGHT #-2 ~Global("KilledAbbyVampireSlayerCR","GLOBAL",1) Global("DontLoopAranCR","LOCALS",0)~ THEN ARAN Abby2
@99 DO ~SetGlobal("KilledAbbyVampireSlayerCR","GLOBAL",2)~
== RCHLOEJ @100 DO ~SetGlobal("DontLoopAranCR","LOCALS",1) AddXPObject(Player1,30000) AddXPObject(Player2,30000) AddXPObject(Player3,30000) AddXPObject(Player4,30000) AddXPObject(Player5,30000) AddXPObject(Player6,30000)~
END ARAN WhereVamiaryt

APPEND ARAN
IF ~~ THEN BEGIN WhereVamiaryt
   SAY @101
   IF ~~ THEN DO ~EraseJournalEntry(@1) EraseJournalEntry(@2) EraseJournalEntry(@3) EraseJournalEntry(@4) EraseJournalEntry(@5) AddJournalEntry(@6,QUEST_DONE)~ GOTO 24
END
END


// Having killed Abagail (Human)

CHAIN IF WEIGHT #-2 ~Global("KilledAbbyBarbarianCR","GLOBAL",1) Global("DontLoopAranCR","LOCALS",0)~ THEN ARAN Abby2
@102 DO ~SetGlobal("KilledAbbyBarbarianCR","GLOBAL",2)~
== RCHLOEJ @103 DO ~SetGlobal("DontLoopAranCR","LOCALS",1) AddXPObject(Player1,10000) AddXPObject(Player2,10000) AddXPObject(Player3,10000) AddXPObject(Player4,10000) AddXPObject(Player5,10000) AddXPObject(Player6,10000)~
END ARAN rewioamnreyomireyuo

APPEND ARAN
IF ~~ THEN BEGIN rewioamnreyomireyuo
   SAY @101
   IF ~~ THEN DO ~EraseJournalEntry(@1) EraseJournalEntry(@2) EraseJournalEntry(@3) EraseJournalEntry(@4) EraseJournalEntry(@5) AddJournalEntry(@7,QUEST_DONE)~
   GOTO 24
END
END

// Having done NOTHING yet

APPEND ARAN
IF WEIGHT #-1 ~!GGT("KilledAbbyBarbarianCR",0) !GGT("KilledAbbyVampireSlayerCR",0) !GGT("AbbyIsVampireToughLuckCR",0) !GGT("AbbyIsHumanYouAreALuckyPersonCR",0) GGT("InAbagailQuestCR",0)~ THEN BEGIN NothingYet
   SAY @104
   IF ~~ THEN REPLY @105 GOTO NothingYet2
END

IF ~~ THEN BEGIN NothingYet2
   SAY @106
   IF ~~ THEN EXIT
END
END


// ~~ Abagail post-quest dialogue ~~

APPEND AbbyCR
IF WEIGHT #400 ~IsGabber(Player1) Global("AbbyIsHumanYouAreALuckyPersonCR","GLOBAL",3)~ THEN BEGIN AbbyPQ
   SAY @107 
   IF ~Global("AskedThisToAbby1CR","LOCALS",0)~ THEN REPLY @108 DO ~SetGlobal("AskedThisToAbby1CR","LOCALS",1)~ GOTO AbbyPQ1
   IF ~Global("AskedThisToAbby2CR","LOCALS",0)~ THEN REPLY @109 DO ~SetGlobal("AskedThisToAbby2CR","LOCALS",1)~ GOTO AbbyPQ2
   IF ~Global("AskedThisToAbby3CR","LOCALS",0)~ THEN REPLY @110 DO ~SetGlobal("AskedThisToAbby3CR","LOCALS",1)~ GOTO AbbyPQ3
   IF ~~ THEN REPLY @111 GOTO AbbyPQ4
END

IF ~~ THEN BEGIN AbbyPQ1
   SAY @112
   IF ~Global("AskedThisToAbby2CR","LOCALS",0)~ THEN REPLY @113 DO ~SetGlobal("AskedThisToAbby2CR","LOCALS",1)~ GOTO AbbyPQ2
   IF ~Global("AskedThisToAbby3CR","LOCALS",0)~ THEN REPLY @114 DO ~SetGlobal("AskedThisToAbby3CR","LOCALS",1)~ GOTO AbbyPQ3
   IF ~~ THEN REPLY @115 EXIT
END

IF ~~ THEN BEGIN AbbyPQ2
   SAY @116
   IF ~Global("AskedThisToAbby1CR","LOCALS",0)~ THEN REPLY @117 DO ~SetGlobal("AskedThisToAbby1CR","LOCALS",1)~ GOTO AbbyPQ1
   IF ~Global("AskedThisToAbby3CR","LOCALS",0)~ THEN REPLY @114 DO ~SetGlobal("AskedThisToAbby3CR","LOCALS",1)~ GOTO AbbyPQ3
   IF ~~ THEN REPLY @118 EXIT
END

IF ~~ THEN BEGIN AbbyPQ3
   SAY @119
   IF ~Global("AskedThisToAbby1CR","LOCALS",0)~ THEN REPLY @117 DO ~SetGlobal("AskedThisToAbby1CR","LOCALS",1)~ GOTO AbbyPQ1
   IF ~Global("AskedThisToAbby2CR","LOCALS",0)~ THEN REPLY @113 DO ~SetGlobal("AskedThisToAbby2CR","LOCALS",1)~ GOTO AbbyPQ2
   IF ~~ THEN REPLY @120 EXIT
END

IF ~~ THEN BEGIN AbbyPQ4
   SAY @121
   IF ~~ THEN EXIT
END
END

CHAIN IF WEIGHT #400 ~Global("ChloeTalkingToAbagailCR","LOCALS",0) IsGabber("RChloe") Global("AbbyIsHumanYouAreALuckyPersonCR","GLOBAL",3)~ THEN AbbyCR AbbyPQChloe1
@122 DO ~SetGlobal("ChloeTalkingToAbagailCR","LOCALS",1)~
== RCHLOEJ @123
== AbbyCR @124
== RCHLOEJ @125
== AbbyCR @126
EXIT

CHAIN IF WEIGHT #400 ~Global("ChloeTalkingToAbagailCR","LOCALS",1) IsGabber("RChloe") Global("AbbyIsHumanYouAreALuckyPersonCR","GLOBAL",3)~ THEN AbbyCR AbbyPQChloe2
@127 DO ~SetGlobal("ChloeTalkingToAbagailCR","LOCALS",2)~
== RCHLOEJ @128
== AbbyCR @129
EXIT

CHAIN IF WEIGHT #400 ~Global("ChloeTalkingToAbagailCR","LOCALS",2) IsGabber("RChloe") Global("AbbyIsHumanYouAreALuckyPersonCR","GLOBAL",3)~ THEN AbbyCR AbbyPQChloe3
@130
== RCHLOEJ @131
== AbbyCR @132
EXIT

APPEND AbbyCR
IF WEIGHT #400 ~IsGabber(Player1) Global("AbbyIsVampireToughLuckCR","GLOBAL",3)~ THEN BEGIN AbbyPQV
   SAY @133
   IF ~Global("AskedThisToAbby1CR","LOCALS",0)~ THEN REPLY @134 DO ~SetGlobal("AskedThisToAbby1CR","LOCALS",1)~ GOTO AbbyPQV1
   IF ~Global("AskedThisToAbby2CR","LOCALS",0)~ THEN REPLY @135 DO ~SetGlobal("AskedThisToAbby2CR","LOCALS",1)~ GOTO AbbyPQV2
   IF ~Global("AskedThisToAbby3CR","LOCALS",0)~ THEN REPLY @136 DO ~SetGlobal("AskedThisToAbby3CR","LOCALS",1)~ GOTO AbbyPQV3
   IF ~~ THEN REPLY @137 GOTO AbbyPQV4
END

IF ~~ THEN BEGIN AbbyPQV1
   SAY @138
   = @139
   IF ~Global("AskedThisToAbby2CR","LOCALS",0)~ THEN REPLY @135 DO ~SetGlobal("AskedThisToAbby2CR","LOCALS",1)~ GOTO AbbyPQV2
   IF ~Global("AskedThisToAbby3CR","LOCALS",0)~ THEN REPLY @136 DO ~SetGlobal("AskedThisToAbby3CR","LOCALS",1)~ GOTO AbbyPQV3
   IF ~~ THEN REPLY @137 GOTO AbbyPQV4
END

IF ~~ THEN BEGIN AbbyPQV2
   SAY @140
   IF ~Global("AskedThisToAbby3CR","LOCALS",0)~ THEN REPLY @136 DO ~SetGlobal("AskedThisToAbby3CR","LOCALS",1)~ GOTO AbbyPQV3
   IF ~~ THEN REPLY @137 GOTO AbbyPQV4
END
END

CHAIN AbbyCR AbbyPQV3
@141
== RCHLOEJ IF ~!Dead("RChloe") InParty("RChloe") See("RChloe")~ THEN @142
EXIT

CHAIN AbbyCR AbbyPQV4
@143
== RCHLOEJ IF ~!Dead("RChloe") InParty("RChloe") See("RChloe")~ THEN @144
== AbbyCR @145
EXIT




// ||| Meeting RChloe |||


APPEND RChloe
IF ~Global("MeetingFirstTalkCR","GLOBAL",1)~ THEN BEGIN Meet1
   SAY @146  
   IF ~~ THEN DO ~SetGlobal("MeetingFirstTalkCR","GLOBAL",2) StartCutSceneMode() CutSceneId("RChloe") Wait(2) FaceObject(Player1) Wait(1) ActionOverride("GolemCR",PlaySound("ZOMBI03")) FaceObject("GolemCR") SmallWait(13) StartDialog("RChloe",Player1) EndCutSceneMode()~ EXIT
END

IF ~Global("MeetingFirstTalkCR","GLOBAL",2)~ THEN BEGIN Meet2
   SAY @147 
   IF ~~ THEN REPLY @148 DO ~SetGlobal("MeetingFirstTalkCR","GLOBAL",3) SetGlobal("TheyHelpMeCR","GLOBAL",1) ActionOverride("GolemCR",Enemy()) Attack("GolemCR") ActionOverride("GolemCR",Attack("RChloe"))~ EXIT
   IF ~~ THEN REPLY @149 DO ~SetGlobal("MeetingFirstTalkCR","GLOBAL",3) SetGlobal("TheyDontHelpMeCR","GLOBAL",1) ActionOverride("GolemCR",Enemy()) Attack("GolemCR") ActionOverride("GolemCR",Attack("RChloe"))~ EXIT
   IF ~~ THEN REPLY @150 DO ~SetGlobal("MeetingFirstTalkCR","GLOBAL",3) Enemy() ChangeAIScript("WTASIGHT",Override) ActionOverride("GolemCR",Enemy())~ EXIT
END

IF ~Global("TheyHelpMeCR","GLOBAL",2) AreaCheck("AR0601")~ THEN BEGIN Meet3
   SAY @151 
   = @152
   IF ~~ THEN REPLY @153 GOTO Meet3a
END

IF ~~ THEN BEGIN Meet3a
   SAY @154
   IF ~~ THEN REPLY @155 DO ~JoinParty()~ EXIT
   IF ~~ THEN REPLY @156 DO ~SetGlobal("FakeMercenaryCR","GLOBAL",1)~ GOTO Meet3aBye
END

IF ~~ THEN BEGIN Meet3aBye
   SAY @157
   IF ~~ THEN DO ~EscapeAreaMove("AR0709",480,445,0)~ EXIT
END

IF ~Global("TheyDontHelpMeCR","GLOBAL",2) AreaCheck("AR0601")~ THEN BEGIN Meet4
   SAY @158 
   IF ~~ THEN REPLY @159 GOTO Meet4b
   IF ~~ THEN REPLY @160 DO ~SetGlobal("FakeMercenaryCR","GLOBAL",1)~ GOTO Meet3aBye
END

IF ~~ THEN BEGIN Meet4b
   SAY @161
   IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~Global("FakeMercenaryCR","GLOBAL",2) AreaCheck("AR0709")~ THEN BEGIN WaitingForYa1
   SAY @162 
   IF ~~ THEN REPLY @163 GOTO WFY5
   IF ~~ THEN REPLY @164 GOTO WFY4
   IF ~~ THEN REPLY @165 GOTO WFY3
   IF ~~ THEN REPLY @166 GOTO WFY2
   IF ~~ THEN REPLY @167 GOTO WFY1
END

IF ~Global("IStillHaveToDecideAboutYouCR","GLOBAL",1) AreaCheck("AR0709")~ THEN BEGIN AgainYouBotherMe
   SAY @168 
   IF ~~ THEN REPLY @169 GOTO WFY5again
   IF ~~ THEN REPLY @164 GOTO WFY4again
   IF ~~ THEN REPLY @170 GOTO WFY3
   IF ~~ THEN REPLY @166 GOTO WFY2
   IF ~~ THEN REPLY @171 GOTO WFY1
END

IF ~~ THEN BEGIN WFY4again
   SAY @172
   IF ~~ THEN REPLY @173 GOTO WFY4b
   IF ~~ THEN REPLY @174 GOTO WFY4b
   IF ~~ THEN REPLY @175 GOTO WFY4a
   IF ~~ THEN REPLY @176 GOTO WFY3
END

IF ~~ THEN BEGIN WFY5again
   SAY @177
   IF ~~ THEN REPLY @173 GOTO WFY4b
   IF ~~ THEN REPLY @174 GOTO WFY4b
   IF ~~ THEN REPLY @178 GOTO WFY4a
   IF ~~ THEN REPLY @176 GOTO WFY3
END

IF ~~ THEN BEGIN WFY1
   SAY @179
   IF ~~ THEN DO ~Enemy() ChangeAIScript("WTASIGHT",Override)~ EXIT
END

IF ~~ THEN BEGIN WFY2
   SAY @180
   IF ~~ THEN REPLY @181 GOTO WFY5
   IF ~~ THEN REPLY @182 GOTO WFY4
   IF ~~ THEN REPLY @183 GOTO WFY3
   IF ~~ THEN REPLY @184 GOTO WFY3
   IF ~~ THEN REPLY @185 GOTO WFY1
END

IF ~~ THEN BEGIN WFY3
   SAY @186
   IF ~~ THEN DO ~SetGlobal("IStillHaveToDecideAboutYouCR","GLOBAL",1) SetGlobal("FakeMercenaryCR","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN WFY4
   SAY @187
   IF ~~ THEN REPLY @173 GOTO WFY4b
   IF ~~ THEN REPLY @174 GOTO WFY4b
   IF ~~ THEN REPLY @175 GOTO WFY4a
   IF ~~ THEN REPLY @176 GOTO WFY3
END

IF ~~ THEN BEGIN WFY4a
   SAY @188
   IF ~~ THEN GOTO MyPrice1
END

IF ~~ THEN BEGIN WFY4b
   SAY @189
   IF ~~ THEN GOTO MyPrice1
END

IF ~~ THEN BEGIN CrazyWoman1
   SAY @190
   IF ~~ THEN DO ~SetGlobal("ChloeMercenaryCR","GLOBAL",1) SetGlobal("ChloeIsAngryCR","GLOBAL",1) SetGlobal("FakeMercenaryCR","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN MyPriceFreeOkay
   SAY @191
   = @192
   = @193
   IF ~~ THEN REPLY @194 GOTO MyName
   IF ~~ THEN REPLY @195 GOTO MyName2
   IF ~~ THEN REPLY @196 GOTO NoneOfMyBusinessYouSay
END

IF ~~ THEN BEGIN MyName
   SAY @197
   IF ~~ THEN DO ~JoinParty() SetGlobal("FakeMercenaryCR","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN MyName2
   SAY @198
   IF ~~ THEN DO ~JoinParty() SetGlobal("FakeMercenaryCR","GLOBAL",0)~ EXIT
END


IF ~~ THEN BEGIN NoneOfMyBusinessYouSay
   SAY @199
   IF ~CheckStatGT(Player1,15,CHR)~ THEN REPLY @200 GOTO MyName2
   IF ~PartyGoldGT(999)~ THEN REPLY @201 DO ~ActionOverride(Player1,DestroyGold(1000))~ GOTO NiceBusiness
   IF ~~ THEN REPLY @202 GOTO WFY3
   IF ~~ THEN REPLY @203 GOTO WFY1
END

IF ~~ THEN BEGIN MyPrice500Okay
   SAY @191
   = @204
   = @193
   IF ~~ THEN REPLY @194 GOTO MyName
   IF ~~ THEN REPLY @195 GOTO MyName2
   IF ~~ THEN REPLY @196 GOTO NoneOfMyBusinessYouSay
END


IF ~~ THEN BEGIN NotNegotiable
   SAY @205
   IF ~PartyGoldGT(999)~ THEN REPLY @206 DO ~ActionOverride(Player1,DestroyGold(1000))~ GOTO NiceBusiness
   IF ~~ THEN REPLY @207 GOTO WFY3
   IF ~~ THEN REPLY @208 GOTO CrazyWoman1
END



IF ~~ THEN BEGIN NiceBusiness
     SAY @209
   IF ~~ THEN DO ~JoinParty() SetGlobal("FakeMercenaryCR","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN WFY5
   SAY @210
   IF ~~ THEN REPLY @173 GOTO WFY4b
   IF ~~ THEN REPLY @174 GOTO WFY4b
   IF ~~ THEN REPLY @178 GOTO WFY4a
   IF ~~ THEN REPLY @176 GOTO WFY3
END

IF ~~ THEN BEGIN MyPrice1 // charisma checks galore
   SAY @211
   IF ~PartyGoldGT(999)~ THEN REPLY @206 DO ~ActionOverride(Player1,DestroyGold(1000))~ GOTO NiceBusiness
   IF ~CheckStatGT(Player1,13,CHR) !PartyGoldGT(999) PartyGoldGT(499) GGT("Chapter",15)~ THEN REPLY @212 GOTO MyPrice500Okay
   IF ~!CheckStatGT(Player1,13,CHR) !PartyGoldGT(999) PartyGoldGT(499) GGT("Chapter",15)~ THEN REPLY @212 GOTO NotNegotiable
   IF ~CheckStatGT(Player1,13,CHR) !PartyGoldGT(999) PartyGoldGT(499) !GGT("Chapter",15)~ THEN REPLY @213 GOTO MyPrice500Okay
   IF ~!CheckStatGT(Player1,13,CHR) !PartyGoldGT(999) PartyGoldGT(499) !GGT("Chapter",15)~ THEN REPLY @213 GOTO NotNegotiable
   IF ~CheckStatGT(Player1,14,CHR) !PartyGoldGT(499)~ THEN REPLY @214 GOTO MyPriceFreeOkay
   IF ~CheckStatGT(Player1,14,CHR) !PartyGoldGT(499)~ THEN REPLY @214 GOTO NotNegotiable
   IF ~CheckStatGT(Player1,15,CHR)~ THEN REPLY @215 GOTO MyPriceFreeOkay
   IF ~!CheckStatGT(Player1,15,CHR)~ THEN REPLY @215 GOTO NotNegotiable
   IF ~CheckStatGT(Player1,13,CHR)~ THEN REPLY @216 GOTO MyPrice500Okay
   IF ~!CheckStatGT(Player1,13,CHR)~ THEN REPLY @216 GOTO NotNegotiable
   IF ~~ THEN REPLY @207 GOTO WFY3
   IF ~~ THEN REPLY @208 GOTO CrazyWoman1
END
END

// ||| Little dialogue after she joins |||

APPEND RCHLOEJ
IF WEIGHT #100 ~Global("FirstTimeIJoinCR","GLOBAL",1) AreaCheck("AR0601")~ THEN BEGIN Pocket1
   SAY @217 
   = @218
   IF ~~ THEN DO ~SetGlobal("FirstTimeIJoinCR","GLOBAL",2) SetGlobal("TalkToDjinnCR","GLOBAL",1)~ EXIT
END

IF WEIGHT #-10 ~Global("WhatAreYouCR","GLOBAL",1)~ THEN BEGIN Whatcha1 
   SAY @219 
   IF ~~ THEN REPLY @220 DO ~SetGlobal("WhatAreYouCR","GLOBAL",2)~ GOTO Whatcha2
   IF ~~ THEN REPLY @221 DO ~SetGlobal("WhatAreYouCR","GLOBAL",2)~ GOTO Whatcha3
   IF ~~ THEN REPLY @222 DO ~SetGlobal("WhatAreYouCR","GLOBAL",2)~ GOTO Whatcha4
   IF ~~ THEN REPLY @223 DO ~SetGlobal("WhatAreYouCR","GLOBAL",2)~ GOTO Whatcha5
   IF ~~ THEN REPLY @224 DO ~SetGlobal("WhatAreYouCR","GLOBAL",2)~ GOTO WhatHuh
END

IF ~~ THEN BEGIN Whatcha2
   SAY @225
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Whatcha3
   SAY @226
   IF ~~ EXIT
END

IF ~~ THEN BEGIN Whatcha4
   SAY @227
   IF ~~ EXIT
END

IF ~~ THEN BEGIN Whatcha5
   SAY @228
   IF ~~ THEN DO ~SetGlobal("PCisKensaiCR","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN WhatHuh
   SAY @229
   IF ~~ THEN REPLY @220 DO ~SetGlobal("WhatAreYouCR","GLOBAL",2)~ GOTO Whatcha2
   IF ~~ THEN REPLY @221 DO ~SetGlobal("WhatAreYouCR","GLOBAL",2)~ GOTO Whatcha3
   IF ~~ THEN REPLY @222 DO ~SetGlobal("WhatAreYouCR","GLOBAL",2)~ GOTO Whatcha4
   IF ~~ THEN REPLY @223 DO ~SetGlobal("WhatAreYouCR","GLOBAL",2)~ GOTO Whatcha5
END
END

// ||| Djinni stuff |||

A_S_T IDJINNI 0
~!IsValidForPartyDialog("RChloe")~

CHAIN IF WEIGHT #-100 ~NumTimesTalkedTo(0) Global("TalkToDjinniCR","GLOBAL",0) IsValidForPartyDialog("RChloe")~ THEN IDJINNI ChTalk1
@230 DO ~SetGlobal("TalkToDjinniCR","GLOBAL",1) SetGlobal("TalkedToDjinni","AR0601",1)~
== RCHLOEJ @231
END IDJINNI ChTalk2

APPEND IDJINNI
IF ~~ THEN BEGIN ChTalk2
   SAY @232
   COPY_TRANS IDJINNI 1
END
END



// ||| Getting To Know You's with the protagonist |||

// ~~ GTKU1: Divine Heritage ~~

APPEND RCHLOEJ
IF WEIGHT #200 ~Global("ChloeGTKUCR","GLOBAL",2)~ THEN BEGIN GTKU1
   SAY @233 
   IF ~~ THEN REPLY @234 GOTO GTKU5
   IF ~~ THEN REPLY @235 GOTO GTKU4
   IF ~~ THEN REPLY @236 GOTO GTKU3
   IF ~~ THEN REPLY @237 GOTO GTKU2
END

IF ~~ THEN BEGIN GTKU2
   SAY @238
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GTKU3
   SAY @239
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GTKU4
   SAY @240
   IF ~~ THEN REPLY @241 GOTO GTKU5
   IF ~~ THEN REPLY @242 GOTO GTKU4a
END

IF ~~ THEN BEGIN GTKU4a
   SAY @243
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GTKU5
   SAY @244
   IF ~~ THEN REPLY @245 GOTO GTKU5d
   IF ~~ THEN REPLY @246 GOTO GTKU5c
   IF ~~ THEN REPLY @247 GOTO GTKU5b
   IF ~~ THEN REPLY @248 GOTO GTKU5a
END

IF ~~ THEN BEGIN GTKU5a
   SAY @249
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN GTKU5b
   SAY @250
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN GTKU5c
   SAY @251
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN GTKU5d
   SAY @252
   IF ~~ THEN REPLY @253 GOTO GTKU5d3
   IF ~~ THEN REPLY @254 GOTO GTKU5d2
   IF ~~ THEN REPLY @255 GOTO GTKU5d1
END

IF ~~ THEN BEGIN GTKU5d1
   SAY @256
   IF ~~ THEN REPLY @257 GOTO GTKU5d1c
   IF ~~ THEN REPLY @258 GOTO GTKU5d1b
   IF ~~ THEN REPLY @259 GOTO GTKU5d1a
END

IF ~~ THEN BEGIN GTKU5d1a
   SAY @260
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GTKU5d1b
   SAY @261
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GTKU5d1c
   SAY @262
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GTKU5d2
   SAY @263
   IF ~~ THEN REPLY @264 GOTO GTKU5d2b
   IF ~~ THEN REPLY @265 EXIT
   IF ~~ THEN REPLY @266 GOTO GTKU5d2a
END

IF ~~ THEN BEGIN GTKU5d2a
   SAY @267
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GTKU5d2b
   SAY @268
   IF ~~ THEN REPLY @257 GOTO GTKU5d1c
   IF ~~ THEN REPLY @258 GOTO GTKU5d1b
   IF ~~ THEN REPLY @259 EXIT
END

IF ~~ THEN BEGIN GTKU5d3
   SAY @269
   IF ~~ THEN REPLY @270 GOTO GTKU5d3b
   IF ~~ THEN REPLY @271 GOTO GTKU5d3a
END

IF ~~ THEN BEGIN GTKU5d3a
   SAY @272
   IF ~~ THEN REPLY @273 GOTO GTKU5d3a3
   IF ~~ THEN REPLY @274 GOTO GTKU5d3a2
   IF ~~ THEN REPLY @258 GOTO GTKU5d3a1
END

IF ~~ THEN BEGIN GTKU5d3a1
   SAY @261
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GTKU5d3a2
   SAY @275
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN GTKU5d3a3
   SAY @276
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN GTKU5d3b
   SAY @277
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END



// ~~ GTKU2: The Yr'kai tribe ~~

IF WEIGHT #200 ~Global("ChloeGTKUCR","GLOBAL",4)~ THEN BEGIN GTKU6
   SAY @278 
   IF ~IsValidForPartyDialog("Anomen")~ THEN REPLY @279 EXTERN ANOMENJ GTKU9anusman
   IF ~!IsValidForPartyDialog("Anomen")~ THEN REPLY @279 GOTO GTKU9
   IF ~~ THEN REPLY @280 GOTO GTKUYrkai
   IF ~~ THEN REPLY @281 GOTO GTKU8
   IF ~~ THEN REPLY @282 GOTO GTKU7
END

IF ~~ THEN BEGIN GTKU7
   SAY @283
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN GTKU8
   SAY @284
   IF ~~ THEN REPLY @285 GOTO GTKU8crazyKensai
   IF ~~ THEN REPLY @286 GOTO GTKU8a
   IF ~~ THEN REPLY @287 GOTO GTKU8ignorant
   IF ~~ THEN REPLY @288 DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
   IF ~Global("PCisKensaiCR","GLOBAL",1)~ THEN REPLY @289 GOTO GTKUYrkai
END

IF ~~ THEN BEGIN GTKU8ignorant
   SAY @290
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN GTKU8a
   SAY @291
   IF ~~ THEN REPLY @285 GOTO GTKU8crazyKensai
      IF ~~ THEN REPLY @292 GOTO GTKU8b3
      IF ~~ THEN REPLY @293 GOTO GTKU8b2
      IF ~~ THEN REPLY @294 GOTO GTKU8b1
      IF ~~ THEN REPLY @295 GOTO GTKU8snoring
END

IF ~~ THEN BEGIN GTKU8crazyKensai
   SAY @296
      IF ~~ THEN REPLY @297 GOTO GTKUYrkai
      IF ~~ THEN REPLY @292 GOTO GTKU8b3
      IF ~~ THEN REPLY @293 GOTO GTKU8b2
      IF ~~ THEN REPLY @294 GOTO GTKU8b1
      IF ~~ THEN REPLY @295 GOTO GTKU8snoring
END

IF ~~ THEN BEGIN GTKU8snoring
   SAY @298
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN GTKU8b1
   SAY @299
   IF ~~ THEN REPLY @300 GOTO GTKUYrkai
   IF ~~ THEN REPLY @301 GOTO GTKU8b1JERK
END

IF ~~ THEN BEGIN GTKU8b1JERK
   SAY @302
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN GTKU8b2
   SAY @303
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GTKU8b3
   SAY @304
   IF ~~ THEN REPLY @297 GOTO  GTKUYrkai
END

IF ~~ THEN BEGIN GTKU9
   SAY @305
      IF ~~ THEN REPLY @297 GOTO GTKUYrkai
      IF ~~ THEN REPLY @292 GOTO GTKU8b3
      IF ~~ THEN REPLY @293 GOTO GTKU8b2
      IF ~~ THEN REPLY @294 GOTO GTKU8b1
      IF ~~ THEN REPLY @295 GOTO GTKU8snoring
END
END

APPEND ANOMENJ
IF ~~ THEN BEGIN GTKU9anusman
   SAY @306 // but since no one asked you, asswipe, you get ignored!
   IF ~~ THEN EXTERN RCHLOEJ GTKU9
END
END

APPEND RCHLOEJ
IF ~~ THEN BEGIN GTKUYrkai
   SAY @307
   = @308
   = @309
   = @310
   IF ~~ THEN REPLY @311 DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
   IF ~~ THEN REPLY @312 GOTO GTKUYrkai2
   IF ~~ THEN REPLY @224 GOTO GTKUYrkai1
   IF ~IsValidForPartyDialog("Aerie")~ THEN EXTERN AERIEJ GTKUYrkaiAvariel
END
END

APPEND AERIEJ
IF ~~ THEN BEGIN GTKUYrkaiAvariel
   SAY @313
   IF ~~ THEN REPLY @311 DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
   IF ~~ THEN REPLY @312 EXTERN RCHLOEJ GTKUYrkai2
   IF ~~ THEN REPLY @224 EXTERN RCHLOEJ GTKUYrkai1
END
END

APPEND RCHLOEJ
IF ~~ THEN BEGIN GTKUYrkai1
   SAY @314
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN GTKUYrkai2
   SAY @315
   IF ~~ THEN EXIT
END


// ~~ GTKU3: Fallen comrades and Yr'kai funeral practices ~~


IF WEIGHT #200 ~Global("ChloeGTKUCR","GLOBAL",6)~ THEN BEGIN GTKU10
   SAY @316 
   IF ~~ THEN REPLY @317 DO ~SetGlobal("WeHad6CR","GLOBAL",1)~ GOTO GTKU13
   IF ~~ THEN REPLY @318 DO ~SetGlobal("WeHad6CR","GLOBAL",1)~ GOTO GTKU12
   IF ~~ THEN REPLY @319 DO ~SetGlobal("WeHad6CR","GLOBAL",1)~ GOTO GTKU11
   IF ~~ THEN REPLY @320 DO ~SetGlobal("WeHad6CR","GLOBAL",1)~ GOTO GTKU10a
END

IF ~~ THEN BEGIN GTKU10a
   SAY @321
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GTKU11
   SAY @322
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-2)~ EXIT
END

IF ~~ THEN BEGIN GTKU12
   SAY @323
   IF ~~ THEN REPLY @324 GOTO GTKU12d
   IF ~~ THEN REPLY @325 GOTO GTKU12c
   IF ~~ THEN REPLY @326 GOTO GTKU12b
   IF ~~ THEN REPLY @327 GOTO GTKU12a
END

IF ~~ THEN BEGIN GTKU12a
   SAY @328
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1) SetGlobal("ChloeIsAngryCR","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GTKU12b
   SAY @329
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN GTKU12c
   SAY @330
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GTKU12d
   SAY @331
   IF ~~ THEN REPLY @332 GOTO GTKU12d3
   IF ~~ THEN REPLY @333 GOTO GTKU12d2
   IF ~~ THEN REPLY @334 GOTO GTKU12d1
END

IF ~~ THEN BEGIN GTKU12d1
   SAY @335
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GTKU12d2
   SAY @336
   = @337
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GTKU12d3
   SAY @338
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GTKU13
   SAY @339
   IF ~~ THEN REPLY @340 GOTO GTKU13d
   IF ~~ THEN REPLY @341 GOTO GTKU13c
   IF ~~ THEN REPLY @342 GOTO GTKU13b
   IF ~~ THEN REPLY @343 GOTO GTKU13a
END

IF ~~ THEN BEGIN GTKU13a
   SAY @344
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GTKU13b
   SAY @345
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-3) SetGlobal("ChloeIsAngryCR","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GTKU13c
   SAY @346
   IF ~~ THEN REPLY @347 GOTO GTKU13c4
   IF ~~ THEN REPLY @348 GOTO GTKU13c3
   IF ~~ THEN REPLY @349 GOTO GTKU13c2
   IF ~~ THEN REPLY @350 GOTO GTKU13c1
   IF ~IsValidForPartyDialog("Viconia")~ THEN EXTERN VICONIJ GTKU13viconia
END
END

APPEND VICONIJ
IF ~~ THEN BEGIN GTKU13viconia
   SAY @351
   IF ~~ THEN REPLY @347 EXTERN RCHLOEJ GTKU13c4
   IF ~~ THEN REPLY @348 EXTERN RCHLOEJ GTKU13c3
   IF ~~ THEN REPLY @349 EXTERN RCHLOEJ GTKU13c2
   IF ~~ THEN REPLY @350 EXTERN RCHLOEJ GTKU13c1
END
END

APPEND RCHLOEJ
IF ~~ THEN BEGIN GTKU13c1
   SAY @352
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GTKU13c2
   SAY @353
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GTKU13c3
   SAY @354
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GTKU13c4
   SAY @355
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN GTKU13d
   SAY @356
   IF ~~ THEN REPLY @357 GOTO GTKU12d
   IF ~~ THEN REPLY @358 GOTO GTKU13d4
   IF ~~ THEN REPLY @359 GOTO GTKU13d3
   IF ~~ THEN REPLY @360 GOTO GTKU13d2
   IF ~~ THEN REPLY @361 GOTO GTKU13d1
END

IF ~~ THEN BEGIN GTKU13d1
   SAY @362
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GTKU13d2
   SAY @363
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN GTKU13d3
   SAY @364
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GTKU13d4
   SAY @365
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END








// ~~ GTKU4: Chloe's childhood ~~ 





IF WEIGHT #200 ~Global("ChloeGTKUCR","GLOBAL",8)~ THEN BEGIN GTKU14
   SAY @366 
   IF ~~ THEN REPLY @367 DO ~SetGlobal("WeHad8CR","GLOBAL",1)~ GOTO GTKU17
   IF ~~ THEN REPLY @368 DO ~SetGlobal("WeHad8CR","GLOBAL",1)~ GOTO GTKU17
   IF ~~ THEN REPLY @369 DO ~SetGlobal("WeHad8CR","GLOBAL",1)~ GOTO GTKU16
   IF ~~ THEN REPLY @370 DO ~SetGlobal("WeHad8CR","GLOBAL",1)~ GOTO GTKU15
END

IF ~~ THEN BEGIN GTKU15
   SAY @243
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN GTKU16
   SAY @371
   IF ~~ THEN REPLY @372 GOTO GTKU16d
   IF ~~ THEN REPLY @373 GOTO GTKU16c
   IF ~~ THEN REPLY @374 GOTO GTKU16b
   IF ~~ THEN REPLY @375 GOTO GTKU16a
END

IF ~~ THEN BEGIN GTKU16a
   SAY @376
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN GTKU16b
   SAY @377
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GTKU16c
   SAY @378
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GTKU16d
   SAY @379
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GTKU17
  SAY @380
  IF ~~ THEN REPLY @381 GOTO GTKU17b
  IF ~~ THEN REPLY @382 GOTO GTKU17b
  IF ~~ THEN REPLY @383 GOTO GTKU17a
  IF ~~ THEN REPLY @384 DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
  IF ~IsValidForPartyDialog("Anomen")~ THEN EXTERN ANOMENJ AnusManStrikesBackCR
END
END

APPEND ANOMENJ
IF ~~ THEN BEGIN AnusManStrikesBackCR
   SAY @385
   IF ~~ THEN EXTERN RCHLOEJ AnusManResponse
END
END

APPEND RCHLOEJ
IF ~~ THEN BEGIN AnusManResponse
   SAY @386
  IF ~~ THEN REPLY @381 GOTO GTKU17b
  IF ~~ THEN REPLY @382 GOTO GTKU17b
  IF ~~ THEN REPLY @383 GOTO GTKU17a
  IF ~~ THEN REPLY @384 DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN GTKU17a
   SAY @387
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GTKU17b
   SAY @388
   IF ~~ THEN REPLY @389 GOTO GTKU17b3
   IF ~~ THEN REPLY @390 GOTO GTKU17b3
   IF ~~ THEN REPLY @391 GOTO GTKU17b2
   IF ~~ THEN REPLY @392 GOTO GTKU17b1
END

IF ~~ THEN BEGIN GTKU17b1
   SAY @393
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN GTKU17b2
   SAY @394
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GTKU17b3
   SAY @395
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END






// ~~ GTKU5: Chloe's father and a bit on Gorion ~~




IF WEIGHT #200 ~Global("ChloeGTKUCR","GLOBAL",10)~ THEN BEGIN GTKU18
   SAY @396 
   IF ~~ THEN REPLY @397 GOTO GTKU22
   IF ~~ THEN REPLY @398 GOTO GTKU21
   IF ~~ THEN REPLY @399 GOTO GTKU21
   IF ~~ THEN REPLY @400 GOTO GTKU20
   IF ~~ THEN REPLY @401 GOTO GTKU19
END

IF ~~ THEN BEGIN GTKU19
   SAY @402
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN GTKU20
   SAY @403
   IF ~~ THEN REPLY @404 GOTO GTKU20c
   IF ~~ THEN REPLY @405 GOTO GTKU20b
   IF ~~ THEN REPLY @406 GOTO GTKU20a
END

IF ~~ THEN BEGIN GTKU20a
   SAY @407
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GTKU20b
   SAY @408
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END
END

CHAIN RCHLOEJ GTKU20c
@409
== KORGANJ IF ~IsValidForPartyDialog("Korgan")~ THEN @410
== RCHLOEJ @411 DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~
EXIT

APPEND RCHLOEJ
IF ~~ THEN BEGIN GTKU21
   SAY @412
   IF ~~ THEN REPLY @413 GOTO GTKU20c
   IF ~~ THEN REPLY @414 GOTO GTKU21c
   IF ~~ THEN REPLY @415  GOTO GTKU21b
   IF ~~ THEN REPLY @416 GOTO GTKU21a
END

IF ~~ THEN BEGIN GTKU21a
   SAY @417
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-2) SetGlobal("ChloeIsAngryCR","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GTKU21b
   SAY @418
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GTKU21c
   SAY @419
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END
END

CHAIN RCHLOEJ GTKU22
@420
== KORGANJ IF ~IsValidForPartyDialog("Korgan")~ THEN @410
== RCHLOEJ @411 DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~
EXIT






// ~~ GTKU6: Chloe's rite of passage into adulthood ~~



APPEND RCHLOEJ
IF WEIGHT #200 ~Global("ChloeGTKUCR","GLOBAL",12)~ THEN BEGIN GTKU23
   SAY @421 
   IF ~~ THEN REPLY @422 DO ~SetGlobal("WeHad12CR","GLOBAL",1)~ GOTO GTKU26
   IF ~~ THEN REPLY @423 DO ~SetGlobal("WeHad12CR","GLOBAL",1)~ GOTO GTKU26
   IF ~~ THEN REPLY @424 DO ~SetGlobal("WeHad12CR","GLOBAL",1)~ GOTO GTKU25
   IF ~~ THEN REPLY @425 DO ~SetGlobal("WeHad12CR","GLOBAL",1)~ GOTO GTKU24
END

IF ~~ THEN BEGIN GTKU24
   SAY @426
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END
END

CHAIN RCHLOEJ GTKU25
@427
== ANOMENJ IF ~IsValidForPartyDialog("Anomen")~ THEN @428
== MINSCJ IF ~IsValidForPartyDialog("Minsc") Global("MinscWitch","GLOBAL",1)~ THEN @429
END RCHLOEJ GTKU27

CHAIN RCHLOEJ GTKU26
@430
== ANOMENJ IF ~IsValidForPartyDialog("Anomen")~ THEN @428
== MINSCJ IF ~IsValidForPartyDialog("Minsc") Global("MinscWitch","GLOBAL",1)~ THEN @429
END RCHLOEJ GTKU27

APPEND RCHLOEJ
IF ~~ THEN BEGIN GTKU27
   SAY @431
   IF ~~ THEN REPLY @432 GOTO GTKU27d
   IF ~~ THEN REPLY @433 GOTO GTKU27c
   IF ~~ THEN REPLY @434 GOTO GTKU27b
   IF ~~ THEN REPLY @435 GOTO GTKU27a
END

IF ~~ THEN BEGIN GTKU27a
   SAY @344
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GTKU27b
   SAY @436
   IF ~~ THEN REPLY @437 GOTO GTKU27b2
   IF ~~ THEN REPLY @438 GOTO GTKU27b1
   IF ~~ THEN REPLY @439 EXIT
END

IF ~~ THEN BEGIN GTKU27b1
   SAY @440
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GTKU27b2
   SAY @441
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GTKU27c
   SAY @442
   = @443
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GTKU27d
   SAY @444
   IF ~~ THEN REPLY @437 GOTO GTKU27b2
   IF ~~ THEN REPLY @438 GOTO GTKU27b1
   IF ~~ THEN REPLY @439 EXIT
END




// ~~ GTKU7: Philosophical discussion on good and evil ~~


IF WEIGHT #200 ~Global("ChloeGTKUCR","GLOBAL",14)~ THEN BEGIN GTKU28
   SAY @445 
   IF ~~ THEN REPLY @446 DO ~SetGlobal("WeHad14CR","GLOBAL",1)~ GOTO GTKU28g
   IF ~~ THEN REPLY @447 DO ~SetGlobal("WeHad14CR","GLOBAL",1)~ GOTO GTKU28f
   IF ~~ THEN REPLY @448 DO ~SetGlobal("WeHad14CR","GLOBAL",1)~ GOTO GTKU28e
   IF ~~ THEN REPLY @449 DO ~SetGlobal("WeHad14CR","GLOBAL",1)~ GOTO GTKU28d
   IF ~~ THEN REPLY @450 DO ~SetGlobal("WeHad14CR","GLOBAL",1)~ GOTO GTKU28c
   IF ~IsValidForPartyDialog("Korgan")~ THEN REPLY @451 DO ~SetGlobal("WeHad14CR","GLOBAL",1)~ EXTERN KORGANJ GTKU28bkorgan
   IF ~!IsValidForPartyDialog("Korgan")~ THEN REPLY @451 DO ~SetGlobal("WeHad14CR","GLOBAL",1)~ GOTO GTKU28b
   IF ~~ THEN REPLY @452 DO ~SetGlobal("WeHad14CR","GLOBAL",1)~ GOTO GTKU28a
END

IF ~~ THEN BEGIN GTKU28a
   SAY @453
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END
END

APPEND KORGANJ
IF ~~ THEN BEGIN GTKU28bkorgan
SAY @454
IF ~~ THEN EXTERN RCHLOEJ GTKU28b
END
END

APPEND RCHLOEJ
IF ~~ THEN BEGIN GTKU28b
   SAY @455
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END
END

CHAIN RCHLOEJ GTKU28c
@456
== KORGANJ IF ~InParty("Korgan") !Dead("Korgan") See("Korgan")~ THEN @457
== EDWINJ IF ~InParty("Edwin") !Dead("Edwin") See("Edwin")~ THEN @458
== AERIEJ IF ~InParty("Aerie") !Dead("Aerie") See("Aerie")~ THEN @459
END RCHLOEJ GTKU28cNext


APPEND RCHLOEJ
IF ~~ THEN BEGIN GTKU28cNext
   SAY @460
   IF ~~ THEN REPLY @461 GOTO GTKU28c5
   IF ~~ THEN REPLY @462 GOTO GTKU28c4
   IF ~~ THEN REPLY @463 GOTO GTKU28c3
   IF ~~ THEN REPLY @464 GOTO GTKU28c2
   IF ~~ THEN REPLY @465 GOTO GTKU28c1
END

IF ~~ THEN BEGIN GTKU28c1
   SAY @466
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GTKU28c2
   SAY @467
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GTKU28c3
   SAY @468
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GTKU28c4
   SAY @469
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN GTKU28c5
   SAY @470
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-2) SetGlobal("ChloeIsAngryCR","GLOBAL",1)~ EXIT
END
END


CHAIN RCHLOEJ GTKU28d
@471
== JAHEIRAJ IF ~InParty("Jaheira") !Dead("Jaheira") See("Jaheira")~ THEN @472
== HAERDAJ IF ~InParty("HaerDalis") !Dead("HaerDalis") See("HaerDalis")~ THEN @473
END RCHLOEJ GTKU28dNext


APPEND RCHLOEJ
IF ~~ THEN BEGIN GTKU28dNext
   SAY @474
   = @475
   IF ~~ THEN REPLY @476 GOTO GTKU28d4
   IF ~~ THEN REPLY @477 GOTO GTKU28d3
   IF ~~ THEN REPLY @478 GOTO GTKU28d2
   IF ~~ THEN REPLY @479 GOTO GTKU28d1
END

IF ~~ THEN BEGIN GTKU28d1
   SAY @480
   IF ~~ THEN DO ~SetGlobal("ChloeRomanceActiveCR","GLOBAL",3) SetGlobal("ChloeWillBeBackInSpellholdCR","GLOBAL",1) CreateCreatureObject("ChloeNut",Player1,0,0,0) ActionOverride("ChloeNut",MoveBetweenAreas("AR1512",[1866.1443],0)) LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN GTKU28d2
   SAY @481
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-2) SetGlobal("ChloeIsAngryCR","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GTKU28d3
   SAY @482
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GTKU28d4
   SAY @483
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END
END


CHAIN RCHLOEJ GTKU28e
@456
== AERIEJ IF ~InParty("Aerie") !Dead("Aerie") See("Aerie")~ THEN @484
== VICONIJ IF ~InParty("Viconia") !Dead("Viconia") See("Viconia")~ THEN @485
== RCHLOEJ IF ~InParty("Viconia") !Dead("Viconia") See("Viconia")~ THEN @486
== VICONIJ IF ~InParty("Viconia") !Dead("Viconia") See("Viconia")~ THEN @487
END RCHLOEJ GTKU28eNext


APPEND RCHLOEJ
IF ~~ THEN BEGIN GTKU28eNext
   SAY @488
   IF ~~ THEN REPLY @489 GOTO GTKU28e5
   IF ~~ THEN REPLY @490 GOTO GTKU28e4
   IF ~~ THEN REPLY @491 GOTO GTKU28e3
   IF ~~ THEN REPLY @492 GOTO GTKU28e2
   IF ~~ THEN REPLY @493 GOTO GTKU28e1
END

IF ~~ THEN BEGIN GTKU28e1
   SAY @494
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GTKU28e2
   SAY @495
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN GTKU28e3
   SAY @496
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GTKU28e4
   SAY @497
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN GTKU28e5
   SAY @498
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END
END


CHAIN RCHLOEJ GTKU28f
@456
== KELDORJ IF ~InParty("Keldorn") !Dead("Keldorn") See("Keldorn")~ THEN @499
== ANOMENJ IF ~InParty("Anomen") !Dead("Anomen") See("Anomen")~ THEN @500
END RCHLOEJ GTKU28fNext


APPEND RCHLOEJ
IF ~~ THEN BEGIN GTKU28fNext
   SAY @501
   IF ~~ THEN REPLY @502 GOTO GTKU28f5
   IF ~~ THEN REPLY @503 GOTO GTKU28f4
   IF ~~ THEN REPLY @504 GOTO GTKU28f3
   IF ~~ THEN REPLY @505 GOTO GTKU28f2
   IF ~~ THEN REPLY @506 GOTO GTKU28f1
END

IF ~~ THEN BEGIN GTKU28f1
   SAY @507
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GTKU28f2
   SAY @508
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GTKU28f3
   SAY @509
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN GTKU28f4
   SAY @510
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GTKU28f5
   SAY @511
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END
END


CHAIN RCHLOEJ GTKU28g
@456
== MAZZYJ IF ~InParty("Mazzy") !Dead("Mazzy") See("Mazzy")~ THEN @512
== NALIAJ IF ~InParty("Nalia") !Dead("Nalia") See("Nalia")~ THEN @513
END RCHLOEJ GTKU28gNext


APPEND RCHLOEJ
IF ~~ THEN BEGIN GTKU28gNext
   SAY @514
   IF ~~ THEN REPLY @515 GOTO GTKU28g5
   IF ~~ THEN REPLY @516 GOTO GTKU28g4
   IF ~~ THEN REPLY @517 GOTO GTKU28g3
   IF ~~ THEN REPLY @518 GOTO GTKU28g2
   IF ~~ THEN REPLY @519 GOTO GTKU28g1
END

IF ~~ THEN BEGIN GTKU28g1
   SAY @520
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GTKU28g2
   SAY @521
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GTKU28g3
   SAY @522
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GTKU28g4
   SAY @523
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GTKU28g5
   SAY @524
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END


// ~~ GTKU8: Class specific dialogue ~~

/* บบ.Warrior Pool.บบ */

IF WEIGHT #200 ~Global("ChloeGTKUCR","GLOBAL",16) OR(3) Class(Player1,FIGHTER) Class(Player1,RANGER) Class(Player1,PALADIN)~ THEN BEGIN GTKU29
   SAY @525 
   IF ~~ THEN REPLY @526 DO ~SetGlobal("WeHad16CR","GLOBAL",1)~ GOTO GTKU34
   IF ~~ THEN REPLY @527 DO ~SetGlobal("WeHad16CR","GLOBAL",1)~ GOTO GTKU33
   IF ~~ THEN REPLY @528 DO ~SetGlobal("WeHad16CR","GLOBAL",1)~ GOTO GTKU32
   IF ~~ THEN REPLY @529 DO ~SetGlobal("WeHad16CR","GLOBAL",1)~ GOTO GTKU31
   IF ~~ THEN REPLY @530 DO ~SetGlobal("WeHad16CR","GLOBAL",1)~ GOTO GTKU30
END

IF ~~ THEN BEGIN GTKU30
   SAY @531
   IF ~~ THEN DO ~SetGlobal("SparringWithTheOgreCR","GLOBAL",1) LeaveParty() Enemy()~ EXIT
END

IF ~~ THEN BEGIN GTKU31
   SAY @532
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN GTKU32
   SAY @533
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-2) SetGlobal("ChloeIsAngryCR","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GTKU33
   SAY @534
   IF ~~ THEN REPLY @535 GOTO GTKU34e
   IF ~~ THEN REPLY @536 GOTO GTKU34d
   IF ~~ THEN REPLY @537 GOTO GTKU34c
   IF ~~ THEN REPLY @538 GOTO GTKU34b
   IF ~~ THEN REPLY @539 GOTO GTKU34a
END

IF ~~ THEN BEGIN GTKU34
   SAY @540
   IF ~~ THEN REPLY @535 GOTO GTKU34e
   IF ~~ THEN REPLY @536 GOTO GTKU34d
   IF ~~ THEN REPLY @537 GOTO GTKU34c
   IF ~~ THEN REPLY @538 GOTO GTKU34b
   IF ~~ THEN REPLY @539 GOTO GTKU34a
END

IF ~~ THEN BEGIN GTKU34a
   SAY @541
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN GTKU34b
   SAY @542
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GTKU34c
   SAY @543
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GTKU34d
   SAY @544
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GTKU34e
   SAY @545
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END


/* บบ.Rogue Pool.บบ */

IF WEIGHT #200 ~Global("ChloeGTKUCR","GLOBAL",16) OR(2) Class(Player1,THIEF) Class(Player1,BARD)~ THEN BEGIN GTKU35
   SAY @546 
   IF ~~ THEN REPLY @547 DO ~SetGlobal("WeHad16CR","GLOBAL",1)~ GOTO GTKU40
   IF ~~ THEN REPLY @548 DO ~SetGlobal("WeHad16CR","GLOBAL",1)~ GOTO GTKU39
   IF ~~ THEN REPLY @549 DO ~SetGlobal("WeHad16CR","GLOBAL",1)~ GOTO GTKU38
   IF ~~ THEN REPLY @550 DO ~SetGlobal("WeHad16CR","GLOBAL",1)~ GOTO GTKU37
   IF ~~ THEN REPLY @551 DO ~SetGlobal("WeHad16CR","GLOBAL",1)~ GOTO GTKU36
END

IF ~~ THEN BEGIN GTKU36
   SAY @552
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN GTKU37
   SAY @553
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN GTKU38
   SAY @554
   IF ~~ THEN REPLY @555 GOTO GTKU39c
   IF ~~ THEN REPLY @556 GOTO GTKU39b
   IF ~~ THEN REPLY @557 GOTO GTKU39a
END

IF ~~ THEN BEGIN GTKU39
   SAY @558
   IF ~~ THEN REPLY @555 GOTO GTKU39c
   IF ~~ THEN REPLY @556 GOTO GTKU39b
   IF ~~ THEN REPLY @557 GOTO GTKU39a
END

IF ~~ THEN BEGIN GTKU39a
   SAY @559
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GTKU39b
   SAY @560
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GTKU39c
   SAY @378
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GTKU40
   SAY @561
   IF ~~ THEN REPLY @562 GOTO GTKU40e
   IF ~~ THEN REPLY @563 GOTO GTKU40d
   IF ~~ THEN REPLY @564 GOTO GTKU40c
   IF ~Class(Player1,BARD)~ THEN REPLY @565 GOTO GTKU40b
   IF ~~ THEN REPLY @566 GOTO GTKU40a
END

IF ~~ THEN BEGIN GTKU40a
   SAY @567
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN GTKU40b
   SAY @568
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GTKU40c
   SAY @569
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN GTKU40d
   SAY @570
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GTKU40e
   SAY @571
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END




/* บบ.Priest Pool.บบ */



IF WEIGHT #200 ~Global("ChloeGTKUCR","GLOBAL",16) OR(2) Class(Player1,CLERIC) Class(Player1,DRUID)~ THEN BEGIN GTKU41
   SAY @572 
   IF ~~ THEN REPLY @573 DO ~SetGlobal("WeHad16CR","GLOBAL",1)~ GOTO GTKU46
   IF ~~ THEN REPLY @574 DO ~SetGlobal("WeHad16CR","GLOBAL",1)~ GOTO GTKU45
   IF ~~ THEN REPLY @575 DO ~SetGlobal("WeHad16CR","GLOBAL",1)~ GOTO GTKU44
   IF ~~ THEN REPLY @576 DO ~SetGlobal("WeHad16CR","GLOBAL",1)~ GOTO GTKU43
END

IF ~~ THEN BEGIN GTKU43
   SAY @577
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN GTKU44
   SAY @578
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GTKU45
   SAY @579
   IF ~~ THEN REPLY @580 GOTO GTKU45e
   IF ~~ THEN REPLY @581 GOTO GTKU45d
   IF ~~ THEN REPLY @582 GOTO GTKU45c
   IF ~~ THEN REPLY @583 GOTO GTKU45b
   IF ~~ THEN REPLY @584 GOTO GTKU45a
END

IF ~~ THEN BEGIN GTKU45a
   SAY @585
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN GTKU45b
   SAY @586
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GTKU45c
   SAY @587
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN GTKU45d
   SAY @588
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GTKU45e
   SAY @589
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GTKU46
   SAY @590
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END
END




/* บบ.Mage Pool.บบ */



APPEND RCHLOEJ
IF WEIGHT #200 ~Global("ChloeGTKUCR","GLOBAL",16) OR(2) Class(Player1,MAGE) Class(Player1,SORCERER)~ THEN BEGIN GTKU47
   SAY @591 
   IF ~IsValidForPartyDialog("Nalia")~ THEN REPLY @592 DO ~SetGlobal("WeHad16CR","GLOBAL",1)~ EXTERN NALIAJ GTKU47eNalia
   IF ~!IsValidForPartyDialog("Nalia")~ THEN REPLY @592 DO ~SetGlobal("WeHad16CR","GLOBAL",1)~ GOTO GTKU47e
   IF ~~ THEN REPLY @593 DO ~SetGlobal("WeHad16CR","GLOBAL",1)~ GOTO GTKU47d
   IF ~~ THEN REPLY @594 DO ~SetGlobal("WeHad16CR","GLOBAL",1)~ GOTO GTKU47c
   IF ~~ THEN REPLY @595 DO ~SetGlobal("WeHad16CR","GLOBAL",1)~ GOTO GTKU47b
   IF ~~ THEN REPLY @596 DO ~SetGlobal("WeHad16CR","GLOBAL",1)~ GOTO GTKU47a
END

IF WEIGHT #199 ~Global("ChloeGTKUCR","GLOBAL",16) Class(Player1,SORCERER)~ THEN BEGIN GTKU47ret
   SAY @591 
   = @597
   IF ~IsValidForPartyDialog("Nalia")~ THEN REPLY @592 DO ~SetGlobal("WeHad16CR","GLOBAL",1)~ EXTERN NALIAJ GTKU47eNalia
   IF ~!IsValidForPartyDialog("Nalia")~ THEN REPLY @592 DO ~SetGlobal("WeHad16CR","GLOBAL",1)~ GOTO GTKU47e
   IF ~~ THEN REPLY @593 DO ~SetGlobal("WeHad16CR","GLOBAL",1)~ GOTO GTKU47d
   IF ~~ THEN REPLY @598 DO ~SetGlobal("WeHad16CR","GLOBAL",1)~ GOTO GTKU47c
   IF ~~ THEN REPLY @595 DO ~SetGlobal("WeHad16CR","GLOBAL",1)~ GOTO GTKU47b
   IF ~~ THEN REPLY @596 DO ~SetGlobal("WeHad16CR","GLOBAL",1)~ GOTO GTKU47a
END

IF ~~ THEN BEGIN GTKU47a
   SAY @599
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN GTKU47b
   SAY @600
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GTKU47c
   SAY @601
   IF ~~ THEN REPLY @602 GOTO GTKU47c6
   IF ~~ THEN REPLY @603 GOTO GTKU47c5
   IF ~~ THEN REPLY @604 GOTO GTKU47c4
   IF ~~ THEN REPLY @605 GOTO GTKU47c3
   IF ~~ THEN REPLY @606 GOTO GTKU47c2
   IF ~~ THEN REPLY @607 GOTO GTKU47c1
END

IF ~~ THEN BEGIN GTKU47c1
   SAY @608
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-2) SetGlobal("ChloeIsAngryCR","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GTKU47c2
   SAY @609
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN GTKU47c3
   SAY @610
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GTKU47c4
   SAY @611
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GTKU47c5
   SAY @612
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GTKU47c6
   SAY @613
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GTKU47d
   SAY @614
   IF ~~ THEN REPLY @615 GOTO GTKU47e7
   IF ~~ THEN REPLY @616 GOTO GTKU47e6
   IF ~~ THEN REPLY @617 GOTO GTKU47e5
   IF ~Class(Player1,SORCERER)~ THEN REPLY @618 GOTO GTKU47e4
   IF ~Class(Player1,SORCERER)~ THEN REPLY @619 GOTO GTKU47e3
   IF ~~ THEN REPLY @620 GOTO GTKU47e2
   IF ~~ THEN REPLY @621 GOTO GTKU47e1
END
END

APPEND NALIAJ
IF ~~ THEN BEGIN GTKU47eNalia
   SAY @622
   IF ~~ THEN EXTERN RCHLOEJ GTKU47e
END
END

APPEND RCHLOEJ
IF ~~ THEN BEGIN GTKU47e
   SAY @623
   IF ~~ THEN REPLY @615 GOTO GTKU47e7
   IF ~~ THEN REPLY @616 GOTO GTKU47e6
   IF ~~ THEN REPLY @617 GOTO GTKU47e5
   IF ~Class(Player1,SORCERER)~ THEN REPLY @618 GOTO GTKU47e4
   IF ~Class(Player1,SORCERER)~ THEN REPLY @619 GOTO GTKU47e3
   IF ~~ THEN REPLY @620 GOTO GTKU47e2
   IF ~~ THEN REPLY @621 GOTO GTKU47e1
END

IF ~~ THEN BEGIN GTKU47e1
   SAY @624
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN GTKU47e2
   SAY @625
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN GTKU47e3
   SAY @626
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GTKU47e4
   SAY @627
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GTKU47e5
   SAY @628
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GTKU47e6
   SAY @629
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GTKU47e7
   SAY @630
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END



/* บบ.Multiclass.บบ */



IF WEIGHT #200 ~Global("ChloeGTKUCR","GLOBAL",16) OR(9) Class(Player1,FIGHTER_MAGE) Class(Player1,FIGHTER_CLERIC) Class(Player1,FIGHTER_THIEF)
Class(Player1,FIGHTER_MAGE_THIEF) Class(Player1,CLERIC_MAGE) Class(Player1,CLERIC_THIEF) Class(Player1,FIGHTER_DRUID)
Class(Player1,FIGHTER_MAGE_CLERIC) Class(Player1,CLERIC_RANGER)~ THEN BEGIN GTKU48
   SAY @631 
   IF ~~ THEN REPLY @632 DO ~SetGlobal("WeHad16CR","GLOBAL",1)~ GOTO GTKU53
   IF ~~ THEN REPLY @633 DO ~SetGlobal("WeHad16CR","GLOBAL",1)~ GOTO GTKU52
   IF ~~ THEN REPLY @634 DO ~SetGlobal("WeHad16CR","GLOBAL",1)~ GOTO GTKU51
   IF ~~ THEN REPLY @635 DO ~SetGlobal("WeHad16CR","GLOBAL",1)~ GOTO GTKU50
   IF ~~ THEN REPLY @636 DO ~SetGlobal("WeHad16CR","GLOBAL",1)~ GOTO GTKU49
END

IF ~~ THEN BEGIN GTKU49
   SAY @637
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-2) SetGlobal("ChloeIsAngryCR","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GTKU50
   SAY @638
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GTKU51
   SAY @639
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GTKU52
   SAY @640
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GTKU53
   SAY @641
   IF ~~ THEN REPLY @642 GOTO GTKU53e
   IF ~~ THEN REPLY @643 GOTO GTKU53d
   IF ~~ THEN REPLY @644 GOTO GTKU53c
   IF ~~ THEN REPLY @645 GOTO GTKU53b
   IF ~~ THEN REPLY @646 GOTO GTKU53a
END

IF ~~ THEN BEGIN GTKU53a
   SAY @363
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN GTKU53b
   SAY @647
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GTKU53c
   SAY @648
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN GTKU53d
   SAY @649
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GTKU53e
   SAY @650
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END
END



// ~~ GTKU9: Discussion of Kensai philosophy. ~~



APPEND RCHLOEJ
IF WEIGHT #200 ~Global("ChloeGTKUCR","GLOBAL",18) !Global("PCisKensaiCR","GLOBAL",1)~ THEN BEGIN GTKU54
   SAY @651 
   IF ~~ THEN REPLY @652 DO ~SetGlobal("Had18CR","GLOBAL",1)~ GOTO GTKU54e
   IF ~~ THEN REPLY @653 DO ~SetGlobal("Had18CR","GLOBAL",1)~ GOTO GTKU54d
   IF ~~ THEN REPLY @654 DO ~SetGlobal("Had18CR","GLOBAL",1)~ GOTO GTKU54c
   IF ~~ THEN REPLY @655 DO ~SetGlobal("Had18CR","GLOBAL",1)~ GOTO GTKU54b
   IF ~~ THEN REPLY @656 DO ~SetGlobal("Had18CR","GLOBAL",1)~ GOTO GTKU54a
   IF ~IsValidForPartyDialog("Anomen")~ THEN EXTERN ANOMENJ AnomenIsAWanker
END
END

APPEND ANOMENJ
IF ~~ THEN BEGIN AnomenIsAWanker
   SAY @657
   IF ~~ THEN REPLY @652 DO ~SetGlobal("Had18CR","GLOBAL",1)~ EXTERN RCHLOEJ GTKU54e
   IF ~~ THEN REPLY @653 DO ~SetGlobal("Had18CR","GLOBAL",1)~ EXTERN RCHLOEJ GTKU54d
   IF ~~ THEN REPLY @654 DO ~SetGlobal("Had18CR","GLOBAL",1)~ EXTERN RCHLOEJ GTKU54c
   IF ~~ THEN REPLY @655 DO ~SetGlobal("Had18CR","GLOBAL",1)~ EXTERN RCHLOEJ GTKU54b
   IF ~~ THEN REPLY @656 DO ~SetGlobal("Had18CR","GLOBAL",1)~ EXTERN RCHLOEJ GTKU54a
END
END

APPEND RCHLOEJ
IF ~~ THEN BEGIN GTKU54a
   SAY @658
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GTKU54b
   SAY @659
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GTKU54c
   SAY @660
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GTKU54d
   SAY @661
   IF ~~ THEN REPLY @662 GOTO GTKU54d5
   IF ~~ THEN REPLY @663 GOTO GTKU54d2
   IF ~~ THEN REPLY @664 GOTO GTKU54d3
   IF ~~ THEN REPLY @665 GOTO GTKU54d4
   IF ~~ THEN REPLY @666 GOTO GTKU54d1
END

IF ~~ THEN BEGIN GTKU54d1
   SAY @667
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GTKU54d2
   SAY @668
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GTKU54d3
   SAY @669
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GTKU54d4
   SAY @670
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN GTKU54d5
   SAY @671
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN GTKU54e
   SAY @672
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END

IF WEIGHT #199 ~Global("ChloeGTKUCR","GLOBAL",18) Global("PCisKensaiCR","GLOBAL",1)~ THEN BEGIN GTKU55
   SAY @673 
   IF ~~ THEN REPLY @674 DO ~SetGlobal("Had18CR","GLOBAL",1)~ GOTO GTKU55e
   IF ~~ THEN REPLY @675 DO ~SetGlobal("Had18CR","GLOBAL",1)~ GOTO GTKU55d
   IF ~~ THEN REPLY @676 DO ~SetGlobal("Had18CR","GLOBAL",1)~ GOTO GTKU55c
   IF ~~ THEN REPLY @677 DO ~SetGlobal("Had18CR","GLOBAL",1)~ GOTO GTKU55b
   IF ~~ THEN REPLY @678 DO ~SetGlobal("Had18CR","GLOBAL",1)~ GOTO GTKU55a
END

IF ~~ THEN BEGIN GTKU55a
   SAY @679
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN GTKU55b
   SAY @680
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GTKU55c
   SAY @681
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN GTKU55d
   SAY @682
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GTKU55e
   SAY @683
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END





// ~~ GTKU10: Philosophical discussion on murder and Bhaal ~~


IF WEIGHT #200 ~Global("ChloeGTKUCR","GLOBAL",20)~ THEN BEGIN GTKU54azucar
   SAY @684 
   IF ~~ THEN REPLY @685 DO ~SetGlobal("WeHad20CR","GLOBAL",1)~ GOTO GTKU54eazucar
   IF ~~ THEN REPLY @686 DO ~SetGlobal("WeHad20CR","GLOBAL",1)~ GOTO GTKU54eazucar
   IF ~~ THEN REPLY @687 DO ~SetGlobal("WeHad20CR","GLOBAL",1)~ GOTO GTKU54dazucar
   IF ~~ THEN REPLY @688 DO ~SetGlobal("WeHad20CR","GLOBAL",1)~ GOTO GTKU54cazucar
   IF ~~ THEN REPLY @689 DO ~SetGlobal("WeHad20CR","GLOBAL",1)~ GOTO GTKU54bazucar
   IF ~~ THEN REPLY @690 DO ~SetGlobal("WeHad20CR","GLOBAL",1)~ GOTO GTKU54aazucar
END

IF ~~ THEN BEGIN GTKU54aazucar
   SAY @691
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN GTKU54bazucar
   SAY @692
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-2)~ EXIT
END

IF ~~ THEN BEGIN GTKU54cazucar
   SAY @693
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GTKU54dazucar
   SAY @694
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GTKU54eazucar
   SAY @695
   IF ~~ THEN REPLY @696 GOTO GTKU54e4
   IF ~~ THEN REPLY @697 GOTO GTKU54e3
   IF ~~ THEN REPLY @698 GOTO GTKU54e2
   IF ~~ THEN REPLY @699 GOTO GTKU54e1
   IF ~~ THEN REPLY @363 EXIT
END

IF ~~ THEN BEGIN GTKU54e1
   SAY @65
   IF ~~ THEN REPLY @700 GOTO GTKU54e1d
   IF ~~ THEN REPLY @701 GOTO GTKU54e1c
   IF ~~ THEN REPLY @702 GOTO GTKU54e1b
   IF ~~ THEN REPLY @703 GOTO GTKU54e1a
END

IF ~~ THEN BEGIN GTKU54e1a
   SAY @704
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN GTKU54e1b
   SAY @705
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GTKU54e1c
   SAY @706
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GTKU54e1d
   SAY @707
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GTKU54e2
   SAY @708
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GTKU54e3
   SAY @709
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GTKU54e4
   SAY @710
   IF ~~ THEN EXIT
END




// ~~ GTKU11: Akadia and Lathandar, and why the Yr'kai worship them ~~     This one requires to camp. Won't count as GTKU script-talking.


/* When ChloeGTKUCR hits 10, a timer starts counting, and when it expires, when the player clicks the sleep button this dialogue will trigger. */

IF WEIGHT #200 ~Global("ChloeGTKUwhenCampingCR","GLOBAL",1)~ THEN BEGIN GTKU55azucar
   SAY @711 
   IF ~~ THEN REPLY @712 DO ~SetGlobal("ChloeGTKUwhenCampingCR","GLOBAL",2)~ GOTO GTKU59
   IF ~~ THEN REPLY @713 DO ~SetGlobal("ChloeGTKUwhenCampingCR","GLOBAL",2)~ GOTO GTKU58
   IF ~~ THEN REPLY @714 DO ~SetGlobal("ChloeGTKUwhenCampingCR","GLOBAL",2)~ GOTO GTKU57
   IF ~~ THEN REPLY @715 DO ~SetGlobal("ChloeGTKUwhenCampingCR","GLOBAL",2)~ GOTO GTKU56
END

IF ~~ THEN BEGIN GTKU56
   SAY @716
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-2) SetGlobal("ChloeIsAngryCR","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ THEN BEGIN GTKU57
   SAY @717
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1) RestParty()~  EXIT
END

IF ~~ THEN BEGIN GTKU58
   SAY @718
   IF ~~ THEN REPLY @719 GOTO GTKU59
   IF ~~ THEN REPLY @720 GOTO GTKU58b
   IF ~~ THEN REPLY @721 GOTO GTKU58a
END

IF ~~ THEN BEGIN GTKU58a
   SAY @722
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1) RestParty()~ EXIT
END

IF ~~ THEN BEGIN GTKU58b
   SAY @723
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GTKU59
   SAY @724
   = @725
   = @726
   IF ~~ THEN REPLY @727 GOTO GTKU59b
   IF ~~ THEN REPLY @728 GOTO GTKU59a
END

IF ~~ THEN BEGIN GTKU59a
   SAY @729
   IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN GTKU59b
   SAY @730
   = @731
   = @732
   IF ~~ THEN REPLY @733 GOTO GTKU59b2
   IF ~~ THEN REPLY @734 GOTO GTKU59b1
END

IF ~~ THEN BEGIN GTKU59b1
   SAY @735
   IF ~~ THEN DO ~RestParty()~ EXIT
END
END

CHAIN RCHLOEJ GTKU59b2
@736
= @737
== AERIEJ IF ~IsValidForPartyDialog("Aerie")~ THEN @738
== RCHLOEJ @739 DO ~IncrementGlobal("ChloeInterest","GLOBAL",1) RestParty()~
EXIT





// ~~ GTKU12: How Chloe gained their favor and her swords ~~



APPEND RCHLOEJ
IF WEIGHT #200 ~Global("ChloeGTKUCR","GLOBAL",22)~ THEN BEGIN GTKU60
   SAY @740 
   IF ~~ THEN REPLY @741 DO ~SetGlobal("WeHad22CR","GLOBAL",1)~ GOTO GTKU60d
   IF ~~ THEN REPLY @742 DO ~SetGlobal("WeHad22CR","GLOBAL",1)~ GOTO GTKU60c
   IF ~~ THEN REPLY @743 DO ~SetGlobal("WeHad22CR","GLOBAL",1)~ GOTO GTKU60b
   IF ~~ THEN REPLY @744 DO ~SetGlobal("WeHad22CR","GLOBAL",1)~ GOTO GTKU60a
END

IF ~~ THEN BEGIN GTKU60a
   SAY @745
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN GTKU60b
   SAY @746
   IF ~~ THEN REPLY @747 GOTO GTKU60d
   IF ~~ THEN REPLY @748 GOTO GTKU60b2
   IF ~~ THEN REPLY @749 GOTO GTKU60b1
END

IF ~~ THEN BEGIN GTKU60b1
   SAY @750
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-2) SetGlobal("ChloeIsAngryCR","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GTKU60b2
   SAY @751
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN GTKU60c
   SAY @752
   IF ~~ THEN REPLY @753 GOTO GTKU60d
   IF ~~ THEN REPLY @754 GOTO GTKU60c2
   IF ~~ THEN REPLY @755 GOTO GTKU60c1
END

IF ~~ THEN BEGIN GTKU60c1
   SAY @756
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN GTKU60c2
   SAY @757
   IF ~~ THEN REPLY @758 GOTO GTKU60c2b
   IF ~~ THEN REPLY @759 GOTO GTKU60c2a
   IF ~~ THEN REPLY @760 GOTO GTKU60d
END

IF ~~ THEN BEGIN GTKU60c2a
   SAY @761
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN GTKU60c2b
   SAY @762
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-2) SetGlobal("ChloeIsAngryCR","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GTKU60d
   SAY @763
   IF ~~ THEN REPLY @764 GOTO GTKU64
   IF ~~ THEN REPLY @765 GOTO GTKU63
   IF ~~ THEN REPLY @766 GOTO GTKU62
   IF ~~ THEN REPLY @767 GOTO GTKU61
END

IF ~~ THEN BEGIN GTKU61
   SAY @768
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-2) SetGlobal("ChloeIsAngryCR","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GTKU62
   SAY @769
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GTKU63
   SAY @770
   IF ~~ THEN REPLY @771 GOTO GTKU63b
   IF ~~ THEN REPLY @772 GOTO GTKU63a
   IF ~~ THEN REPLY @773 DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN GTKU63a
   SAY @774
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GTKU63b
   SAY @775
   IF ~~ THEN REPLY @776 GOTO GTKU63b4
   IF ~~ THEN REPLY @777 GOTO GTKU63b3
   IF ~~ THEN REPLY @778 GOTO GTKU63b2
   IF ~~ THEN REPLY @779 GOTO GTKU63b1
END

IF ~~ THEN BEGIN GTKU63b1
   SAY @780
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN GTKU63b2
   SAY @243
   IF ~~ THEN DO ~SetGlobal("FilthyBhaalspawnIsToBeSlainCR","GLOBAL",1) ClearAllActions() StartCutSceneMode() CutSceneId("RChloe") MoveToObject(Player1) EndCutSceneMode() StartDialog("RCHLOEJ",Player1)~ EXIT
END
END

CHAIN IF WEIGHT #100 ~Global("FilthyBhaalspawnIsToBeSlainCR","GLOBAL",1)~ THEN RCHLOEJ GTKU63b2cha
@781  DO ~SetGlobal("FilthyBhaalspawnIsToBeSlainCR","GLOBAL",0)~
== AERIEJ IF ~IsValidForPartyDialog("Aerie")~ THEN @782
== VICONIJ IF ~IsValidForPartyDialog("Viconia") Gender(Player1,MALE) OR(2) Global("ViconiaRomanceActive","GLOBAL",1) Global("ViconiaRomanceActive","GLOBAL",2)~ THEN @783
== VICONIJ IF ~IsValidForPartyDialog("Viconia") Gender(Player1,FEMALE) OR(2) Global("ViconiaRomanceActive","GLOBAL",1) Global("ViconiaRomanceActive","GLOBAL",2)~ THEN @784 // For happy patches!
== RCHLOEJ @785
END RCHLOEJ GTKU63b2next

APPEND RCHLOEJ
IF ~~ THEN BEGIN GTKU63b2next
   SAY @786
   IF ~~ THEN REPLY @787 GOTO GTKU63b2next3
   IF ~~ THEN REPLY @788 GOTO GTKU63b2next2
   IF ~~ THEN REPLY @789 GOTO GTKU63b2next1
   IF ~IsValidForPartyDialog("Jaheira")~ THEN EXTERN JAHEIRAJ JaheiraPoopedHerPanties
END
END

APPEND JAHEIRAJ
IF ~~ THEN BEGIN JaheiraPoopedHerPanties
   SAY @790
   IF ~~ THEN EXTERN RCHLOEJ JaheiraPoopedHerPantiesBack
END
END

APPEND RCHLOEJ
IF ~~ THEN BEGIN JaheiraPoopedHerPantiesBack
   SAY @791
   IF ~~ THEN REPLY @787 GOTO GTKU63b2next3
   IF ~~ THEN REPLY @788 GOTO GTKU63b2next2
   IF ~~ THEN REPLY @789 GOTO GTKU63b2next1
END


IF ~~ THEN BEGIN GTKU63b2next1
   SAY @792
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN GTKU63b2next2
   SAY @793
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GTKU63b2next3
   SAY @794
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GTKU63b3
   SAY @795
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GTKU63b4
   SAY @796
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN GTKU64
   SAY @797
   IF ~~ THEN REPLY @798 GOTO GTKU64e
   IF ~~ THEN REPLY @799 GOTO GTKU64d
   IF ~~ THEN REPLY @800 GOTO GTKU64c
   IF ~~ THEN REPLY @801 GOTO GTKU64b
   IF ~~ THEN REPLY @802 GOTO GTKU64a
END

IF ~~ THEN BEGIN GTKU64a
   SAY @803
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN GTKU64b
   SAY @344
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GTKU64c
   SAY @804
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GTKU64d
   SAY @805
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GTKU64e
   SAY @806
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END
END






// ~~ GTKU13: Discussion of power and responsibility ~~




APPEND RCHLOEJ
IF WEIGHT #200 ~Global("ChloeGTKUCR","GLOBAL",24)~ THEN BEGIN GTKU65
   SAY @807 
   IF ~~ THEN REPLY @808 DO ~SetGlobal("WeHad24CR","GLOBAL",1)~ GOTO GTKU71
   IF ~~ THEN REPLY @809 DO ~SetGlobal("WeHad24CR","GLOBAL",1)~ GOTO GTKU70
   IF ~~ THEN REPLY @810 DO ~SetGlobal("WeHad24CR","GLOBAL",1)~ GOTO GTKU69
   IF ~~ THEN REPLY @811 DO ~SetGlobal("WeHad24CR","GLOBAL",1)~ GOTO GTKU68
   IF ~~ THEN REPLY @812 DO ~SetGlobal("WeHad24CR","GLOBAL",1)~ GOTO GTKU67
   IF ~~ THEN REPLY @813 DO ~SetGlobal("WeHad24CR","GLOBAL",1)~ GOTO GTKU66
   IF ~IsValidForPartyDialog("Viconia")~ THEN EXTERN VICONIJ StopMakingUpWordsRivvil
END
END

APPEND VICONIJ
IF ~~ THEN BEGIN StopMakingUpWordsRivvil
   SAY @814
   IF ~~ THEN REPLY @808 DO ~SetGlobal("WeHad24CR","GLOBAL",1)~ EXTERN RCHLOEJ GTKU71
   IF ~~ THEN REPLY @815 DO ~SetGlobal("WeHad24CR","GLOBAL",1)~ EXTERN RCHLOEJ GTKU70
   IF ~~ THEN REPLY @816 DO ~SetGlobal("WeHad24CR","GLOBAL",1)~ EXTERN RCHLOEJ GTKU69
   IF ~~ THEN REPLY @811 DO ~SetGlobal("WeHad24CR","GLOBAL",1)~ EXTERN RCHLOEJ GTKU68
   IF ~~ THEN REPLY @812 DO ~SetGlobal("WeHad24CR","GLOBAL",1)~ EXTERN RCHLOEJ GTKU67
   IF ~~ THEN REPLY @813 DO ~SetGlobal("WeHad24CR","GLOBAL",1)~ EXTERN RCHLOEJ GTKU66
END
END

APPEND RCHLOEJ
IF ~~ THEN BEGIN GTKU66
   SAY @817
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END
END


CHAIN RCHLOEJ GTKU67
@818
== KELDORJ IF ~InParty("Keldorn") !Dead("Keldorn") See("Keldorn")~ THEN @819
== VICONIJ IF ~InParty("Viconia") !Dead("Viconia") See("Viconia") Gender(Player1,MALE)~ THEN @820
== KORGANJ IF ~InParty("Korgan") !Dead("Korgan") See("Korgan")~ THEN @821
END RCHLOEJ GTKU67Next


APPEND RCHLOEJ
IF ~~ THEN BEGIN GTKU67Next
   SAY @822
   IF ~~ THEN REPLY @823 GOTO GTKU67c
   IF ~~ THEN REPLY @824 GOTO GTKU67b
   IF ~~ THEN REPLY @825 GOTO GTKU67a
END

IF ~~ THEN BEGIN GTKU67a
   SAY @826
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GTKU67b
   SAY @827
   IF ~~ THEN REPLY @828 GOTO GTKU67b3
   IF ~~ THEN REPLY @829 GOTO GTKU67a
   IF ~~ THEN REPLY @830 GOTO GTKU67b2
   IF ~~ THEN REPLY @831 GOTO GTKU67b1
END

IF ~~ THEN BEGIN GTKU67b1
   SAY @832
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN GTKU67b2
   SAY @833
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GTKU67b3
   SAY @834
   IF ~~ THEN EXIT
END

 IF ~~ THEN BEGIN GTKU67c
   SAY @835
   IF ~~ THEN REPLY @836 GOTO GTKU67c3
   IF ~~ THEN REPLY @837 GOTO GTKU67c2
   IF ~~ THEN REPLY @838 GOTO GTKU67c1
END

IF ~~ THEN BEGIN GTKU67c1
   SAY @839
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN GTKU67c2
   SAY @840
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN GTKU67c3
   SAY @841
   IF ~~ THEN REPLY @837 GOTO GTKU67c2
   IF ~~ THEN REPLY @842 GOTO GTKU67c3a
   IF ~~ THEN REPLY @843 GOTO GTKU67c1
END

IF ~~ THEN BEGIN GTKU67c3a
   SAY @844
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN GTKU68
   SAY @845
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GTKU69
   SAY @846
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GTKU70
   SAY @847
   IF ~~ THEN REPLY @848 GOTO GTKU70e
   IF ~Gender(Player1,MALE)~ THEN REPLY @849 GOTO GTKU70d
   IF ~Gender(Player1,FEMALE)~ THEN REPLY @850 GOTO GTKU70dF
   IF ~~ THEN REPLY @851 GOTO GTKU70c
   IF ~Gender(Player1,MALE)~ THEN REPLY @852 GOTO GTKU70b
   IF ~Gender(Player1,FEMALE)~ THEN REPLY @853 GOTO GTKU70b
   IF ~~ THEN REPLY @854 GOTO GTKU70a
END

IF ~~ THEN BEGIN GTKU70a
   SAY @855
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN GTKU70b
   SAY @856
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GTKU70c
   SAY @857
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GTKU70d
   SAY @858
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GTKU70dF
   SAY @859
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GTKU70e
   SAY @860
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GTKU71
   SAY @861
   IF ~~ THEN REPLY @862 GOTO GTKU71d
   IF ~~ THEN REPLY @863 GOTO GTKU71c
   IF ~~ THEN REPLY @864 GOTO GTKU71b
   IF ~~ THEN REPLY @865 GOTO GTKU71a
END

IF ~~ THEN BEGIN GTKU71a
   SAY @866
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN GTKU71b
   SAY @867
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GTKU71c
   SAY @868
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END
END

CHAIN RCHLOEJ GTKU71d
@869
== VICONIJ IF ~IsValidForPartyDialog("Viconia")~ THEN @870
== RCHLOEJ @871 DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~
EXIT





// ~~ GTKU14: Chloe asks for a funny story about him/her and Imoen ~~


APPEND RCHLOEJ
IF WEIGHT #200 ~Global("ChloeGTKUCR","GLOBAL",26)~ THEN BEGIN GTKU72
   SAY @872 
   IF ~~ THEN REPLY @873 DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~ GOTO GTKU77
   IF ~!IsValidForPartyDialog("Nalia")~ THEN REPLY @874 DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~ GOTO GTKU76
   IF ~IsValidForPartyDialog("Nalia")~ THEN REPLY @874 DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~ EXTERN NALIAJ GTKU76nalia
   IF ~~ THEN REPLY @875 DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~ GOTO GTKU75
   IF ~~ THEN REPLY @876 DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~ GOTO GTKU74
   IF ~~ THEN REPLY @877 DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~ GOTO GTKU73
END
END

CHAIN RCHLOEJ GTKU73
@878
DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT

CHAIN RCHLOEJ GTKU74
@879
EXIT

CHAIN RCHLOEJ GTKU75
@880
== PLAYER1 @881
== RCHLOEJ @882
== PLAYER1 @883
== RCHLOEJ @884
== PLAYER1 @885
== MINSCJ IF ~IsValidForPartyDialog("Minsc")~ THEN @886
== RCHLOEJ @887
== PLAYER1 @888
== RCHLOEJ @889
== PLAYER1 @890
== RCHLOEJ @891 DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~
EXIT

APPEND NALIAJ
IF ~~ THEN BEGIN GTKU76nalia
   SAY @892
   IF ~~ THEN EXTERN RCHLOEJ GTKU76
END
END

CHAIN RCHLOEJ GTKU76
@884
== PLAYER1 @893
== RCHLOEJ @894
== PLAYER1 @895
== RCHLOEJ @896
== PLAYER1 @897
== RCHLOEJ @898
== PLAYER1 @899
== RCHLOEJ @900
== PLAYER1 @901
== RCHLOEJ @902 DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~
EXIT

CHAIN RCHLOEJ GTKU77
@882
== PLAYER1 @903
== RCHLOEJ @904
== PLAYER1 @905
== RCHLOEJ @906
== PLAYER1 @907
== RCHLOEJ @908
== PLAYER1 @909
== RCHLOEJ @794
== PLAYER1 @910
== RCHLOEJ @911 DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~
EXIT








// ~~ GTKU15: the most feared fear ~~


APPEND RCHLOEJ
IF WEIGHT #200 ~Global("ChloeGTKUCR","GLOBAL",28) Global("GTKU15NotLooperCR","LOCALS",0)~ THEN BEGIN GTKU78
   SAY @912 
   IF ~~ THEN REPLY @913 DO ~SetGlobal("ChloeGTKUCR","GLOBAL",-1) SetGlobal("GTKU15NotLooperCR","LOCALS",1)~ GOTO GTKU85
   IF ~~ THEN REPLY @914 DO ~SetGlobal("ChloeGTKUCR","GLOBAL",-1) SetGlobal("GTKU15NotLooperCR","LOCALS",1)~ GOTO GTKU84
   IF ~~ THEN REPLY @915 DO ~SetGlobal("ChloeGTKUCR","GLOBAL",-1) SetGlobal("GTKU15NotLooperCR","LOCALS",1)~ GOTO GTKU83
   IF ~~ THEN REPLY @916 DO ~SetGlobal("ChloeGTKUCR","GLOBAL",-1) SetGlobal("GTKU15NotLooperCR","LOCALS",1)~ GOTO GTKU82
   IF ~~ THEN REPLY @917 DO ~SetGlobal("ChloeGTKUCR","GLOBAL",-1) SetGlobal("GTKU15NotLooperCR","LOCALS",1)~ GOTO GTKU81
   IF ~~ THEN REPLY @918 DO ~SetGlobal("ChloeGTKUCR","GLOBAL",-1) SetGlobal("GTKU15NotLooperCR","LOCALS",1)~ GOTO GTKU80
   IF ~~ THEN REPLY @919 DO ~SetGlobal("ChloeGTKUCR","GLOBAL",-1) SetGlobal("GTKU15NotLooperCR","LOCALS",1)~ GOTO GTKU79
END

IF ~~ THEN BEGIN GTKU79
   SAY @920
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN GTKU80
   SAY @921
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GTKU81
   SAY @922
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GTKU82
   SAY @923
   IF ~~ THEN REPLY @924 GOTO GTKU88
   IF ~~ THEN REPLY @925 GOTO GTKU87
   IF ~~ THEN REPLY @926 GOTO GTKU86
END

IF ~~ THEN BEGIN GTKU83
   SAY @927
   IF ~~ THEN REPLY @924 GOTO GTKU88
   IF ~~ THEN REPLY @925 GOTO GTKU87
   IF ~~ THEN REPLY @926 GOTO GTKU86
END

IF ~~ THEN BEGIN GTKU84
   SAY @928
   IF ~~ THEN REPLY @924 GOTO GTKU88
   IF ~~ THEN REPLY @925 GOTO GTKU87
   IF ~~ THEN REPLY @926 GOTO GTKU86
END
END


CHAIN RCHLOEJ GTKU85
@929
== AERIEJ IF ~InParty("Aerie") !Dead("Aerie") See("Aerie")~ THEN @930
== VICONIJ IF ~InParty("Viconia") !Dead("Viconia") See("Viconia")~ THEN @931
== JANJ IF ~InParty("Jan") !Dead("Jan") See("Jan")~ THEN @932
END RCHLOEJ GTKU85Next


APPEND RCHLOEJ
IF ~~ THEN BEGIN GTKU85Next
   SAY @933
   IF ~~ THEN REPLY @924 GOTO GTKU88
   IF ~~ THEN REPLY @925 GOTO GTKU87
   IF ~~ THEN REPLY @926 GOTO GTKU86
END

IF ~~ THEN BEGIN GTKU86
   SAY @934
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN GTKU87
   SAY @935
   IF ~~ THEN REPLY @936 GOTO GTKU88c
   IF ~~ THEN REPLY @937 GOTO GTKU88b
   IF ~~ THEN REPLY @938 GOTO GTKU88a
END

IF ~~ THEN BEGIN GTKU88
   SAY @939
   IF ~~ THEN REPLY @936 GOTO GTKU88c
   IF ~~ THEN REPLY @937 GOTO GTKU88b
   IF ~~ THEN REPLY @938 GOTO GTKU88a
END

IF ~~ THEN BEGIN GTKU88a
   SAY @940
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN GTKU88b
   SAY @941
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GTKU88c
   SAY @942
   IF ~~ THEN DO ~IncrementGlobal("ChloeInterest","GLOBAL",1)~ EXIT
END
END










// ||| Chloe Lovetalks |||

/*
Conditions for ChloeromanceactiveCR to equal 1 and lovetalks to begin:
-Gender = female
-Race = human, half elf, elf
-Chloeinterest = 9-15
-Charisma = 10
-Intelligence = 9
GTKUfinishedCR = 1
*/



// ~~ 1st Lovetalk ~~



APPEND RCHLOEJ
IF WEIGHT #300 ~Global("ChLovetalksCR","GLOBAL",2)~ THEN BEGIN lt1
   SAY @943 
   IF ~~ THEN REPLY @944 GOTO lt7
   IF ~~ THEN REPLY @945 GOTO lt6
   IF ~!IsValidForPartyDialog("Anomen")~ THEN REPLY @946 GOTO lt5
   IF ~IsValidForPartyDialog("Anomen")~ THEN REPLY @946 EXTERN ANOMENJ lt5AnusMan
   IF ~!IsValidForPartyDialog("Anomen")~ THEN REPLY @947 GOTO lt4
   IF ~IsValidForPartyDialog("Anomen")~ THEN REPLY @947 EXTERN ANOMENJ lt4AnusMan
   IF ~~ THEN REPLY @948 GOTO lt3
   IF ~~ THEN REPLY @949 GOTO lt2
   IF ~IsValidForPartyDialog("Anomen")~ THEN EXTERN ANOMENJ lt1AnusMan
END


IF ~~ THEN BEGIN lt2
   SAY @950
   IF ~~ THEN DO ~SetGlobal("ChloeRomanceActiveCR","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN lt3
   SAY @951
   IF ~~ THEN DO ~SetGlobal("ChloeRomanceActiveCR","GLOBAL",3)~ EXIT
END
END

APPEND ANOMENJ
IF ~~ THEN BEGIN lt1AnusMan
   SAY @952
   IF ~~ THEN REPLY @944 EXTERN RCHLOEJ lt7
   IF ~~ THEN REPLY @945 EXTERN RCHLOEJ lt6
   IF ~!IsValidForPartyDialog("Anomen")~ THEN REPLY @946 EXTERN RCHLOEJ lt5
   IF ~IsValidForPartyDialog("Anomen")~ THEN REPLY @946 GOTO lt5AnusMan
   IF ~!IsValidForPartyDialog("Anomen")~ THEN REPLY @947 EXTERN RCHLOEJ lt4
   IF ~IsValidForPartyDialog("Anomen")~ THEN REPLY @947 GOTO lt4AnusMan
   IF ~~ THEN REPLY @948 EXTERN RCHLOEJ lt3
   IF ~~ THEN REPLY @949 EXTERN RCHLOEJ lt2
END

IF ~~ THEN BEGIN lt4AnusMan
   SAY @953
   IF ~~ THEN EXTERN RCHLOEJ lt4
END

IF ~~ THEN BEGIN lt5AnusMan
   SAY @954
   IF ~~ THEN EXTERN RCHLOEJ lt5
END
END

APPEND RCHLOEJ
IF ~~ THEN BEGIN lt4
   SAY @955
   IF ~~ THEN REPLY @956 GOTO lt4d
   IF ~~ THEN REPLY @957 GOTO lt4c
   IF ~~ THEN REPLY @958 GOTO lt4b
   IF ~~ THEN REPLY @959 GOTO lt4a
END

IF ~~ THEN BEGIN lt4a
   SAY @960
   IF ~~ THEN DO ~SetGlobal("ChloeRomanceActiveCR","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN lt4b
   SAY @961
   IF ~~ THEN DO ~IncrementGlobal("ChloeHumorCR","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN lt4c
   SAY @962
   = @963
   IF ~~ THEN REPLY @964 GOTO lt4c3
   IF ~~ THEN REPLY @965 GOTO lt4c2
   IF ~~ THEN REPLY @966 GOTO lt4c1
END

IF ~~ THEN BEGIN lt4c1
   SAY @967
   IF ~~ THEN DO ~SetGlobal("ChloeRomanceActiveCR","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN lt4c2
   SAY @968
   IF ~~ THEN DO ~IncrementGlobal("ChloeNormalCR","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN lt4c3
   SAY @969
   IF ~~ THEN DO ~IncrementGlobal("ChloeRomanticCR","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN lt4d
   SAY @970
   IF ~~ THEN DO ~IncrementGlobal("ChloeNormalCR","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN lt5
   SAY @971
   IF ~~ THEN REPLY @972 GOTO lt5c
   IF ~~ THEN REPLY @973 GOTO lt5b
   IF ~~ THEN REPLY @974 GOTO lt5a
END

IF ~~ THEN BEGIN lt5a
   SAY @975
   IF ~~ THEN DO ~IncrementGlobal("ChloeNormalCR","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN lt5b
   SAY @976
   IF ~~ THEN DO ~IncrementGlobal("ChloeHumorCR","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN lt5c
   SAY @977
   IF ~~ THEN DO ~IncrementGlobal("ChloeHumorCR","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN lt6
   SAY @978
   IF ~~ THEN DO ~IncrementGlobal("ChloeNormalCR","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN lt7
   SAY @979
   IF ~!IsValidForPartyDialog("Anomen")~ THEN REPLY @980 GOTO lt7d
   IF ~IsValidForPartyDialog("Anomen")~ THEN REPLY @980 EXTERN ANOMENJ lt7dAnusMan
   IF ~~ THEN REPLY @981 GOTO lt7c
   IF ~~ THEN REPLY @982 GOTO lt7b
   IF ~!IsValidForPartyDialog("Anomen")~ THEN REPLY @983 GOTO lt7a
   IF ~IsValidForPartyDialog("Anomen")~ THEN REPLY @983 EXTERN ANOMENJ lt7aAnusMan
END
END

APPEND ANOMENJ
IF ~~ THEN BEGIN lt7aAnusMan
   SAY @984
   IF ~~ THEN EXTERN RCHLOEJ lt7a
END

IF ~~ THEN BEGIN lt7dAnusMan
   SAY @985
   IF ~~ THEN EXTERN RCHLOEJ lt7d
END
END

APPEND RCHLOEJ
IF ~~ THEN BEGIN lt7a
   SAY @986
   IF ~~ THEN DO ~SetGlobal("ChloeRomanceActiveCR","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN lt7b
   SAY @951
   IF ~~ THEN DO ~SetGlobal("ChloeRomanceActiveCR","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN lt7c
   SAY @987
   IF ~~ THEN DO ~IncrementGlobal("ChloeNormalCR","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN lt7d
   SAY @988
   IF ~~ THEN DO ~IncrementGlobal("ChloeRomanticCR","GLOBAL",1)~ EXIT
END






// ~~ 2nd Lovetalk ~~



IF WEIGHT #300 ~Global("ChLovetalksCR","GLOBAL",4)~ THEN BEGIN lt8
   SAY @989 
   IF ~~ THEN REPLY @990 GOTO lt12
   IF ~~ THEN REPLY @991 GOTO lt11
   IF ~~ THEN REPLY @992 GOTO lt10
   IF ~~ THEN REPLY @993 GOTO lt9
END

IF ~~ THEN BEGIN lt9
   SAY @994
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt10
   SAY @995
   IF ~~ THEN REPLY @996 GOTO lt10d
   IF ~~ THEN REPLY @997 GOTO lt10c
   IF ~IsValidForPartyDialog("Minsc")~ THEN REPLY @998 EXTERN MINSCJ lt10bMinsc
   IF ~~ THEN REPLY @999 GOTO lt10a
END

IF ~~ THEN BEGIN lt10a
   SAY @1000
   IF ~~ THEN DO ~IncrementGlobal("ChloeHumorCR","GLOBAL",1)~ EXIT
END
END

APPEND MINSCJ
IF ~~ THEN BEGIN lt10bMinsc
   SAY @1001
   IF ~~ THEN EXTERN RCHLOEJ lt10b
END
END

APPEND RCHLOEJ
IF ~~ THEN BEGIN lt10b
   SAY @1002
   IF ~~ THEN DO ~IncrementGlobal("ChloeHumorCR","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN lt10c
   SAY @1003
   IF ~~ THEN DO ~IncrementGlobal("ChloeHumorCR","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN lt10d
   SAY @1004
   IF ~~ THEN DO ~IncrementGlobal("ChloeHumorCR","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN lt11
   SAY @1005
   IF ~~ THEN DO ~IncrementGlobal("ChloeRomanticCR","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN lt12
   SAY @1006 
   IF ~~ THEN REPLY @1007 GOTO lt12d
   IF ~~ THEN REPLY @1008 GOTO lt12c
   IF ~~ THEN REPLY @1009 GOTO lt12b
   IF ~~ THEN REPLY @1010 GOTO lt12a
END

IF ~~ THEN BEGIN lt12a
   SAY @1011
   IF ~~ THEN DO ~IncrementGlobal("ChloeNormalCR","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN lt12b
   SAY @1012
   IF ~~ THEN DO ~IncrementGlobal("ChloeNormalCR","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN lt12c
   SAY @1013
   IF ~~ THEN DO ~IncrementGlobal("ChloeNormalCR","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN lt12d
   SAY @1014
   IF ~~ THEN DO ~IncrementGlobal("ChloeNormalCR","GLOBAL",1)~ EXIT
END



// ~~ 3rd Lovetalk ~~ (after camp, before rescuing Imoen)



IF WEIGHT #300 ~Global("ChLovetalksCR","GLOBAL",6)~ THEN BEGIN lt13
   SAY @1015 
   IF ~~ THEN REPLY @1016 GOTO lt17
   IF ~~ THEN REPLY @1017 GOTO lt16
   IF ~~ THEN REPLY @1018 GOTO lt15
   IF ~~ THEN REPLY @1019 GOTO lt14
END

IF ~~ THEN BEGIN lt14
   SAY @1020
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt15
   SAY @1021
   IF ~~ THEN REPLY @1022 GOTO lt15c
   IF ~~ THEN REPLY @1023 GOTO lt15b
   IF ~~ THEN REPLY @1024 GOTO lt15a
END

IF ~~ THEN BEGIN lt15a
   SAY @1025
   IF ~~ THEN DO ~IncrementGlobal("ChloeHumorCR","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN lt15b
   SAY @1026
   IF ~~ THEN DO ~IncrementGlobal("ChloeHumorCR","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN lt15c
   SAY @1027
   IF ~~ THEN DO ~IncrementGlobal("ChloeHumorCR","GLOBAL",1)~ EXIT
END
END

CHAIN RCHLOEJ lt16
@1028
== ANOMENJ IF ~InParty("Anomen") !Dead("Anomen") See("Anomen")~ THEN @1029
== AERIEJ IF ~InParty("Aerie") !Dead("Aerie") See("Aerie")~ THEN @1030
== VICONIJ IF ~InParty("Viconia") !Dead("Viconia") See("Viconia")~ THEN @1031
END RCHLOEJ lt16Next


APPEND RCHLOEJ
IF ~~ THEN BEGIN lt16Next
   SAY @1032
   IF ~~ THEN DO ~IncrementGlobal("ChloeRomanticCR","GLOBAL",1)~ EXIT
END


IF ~~ THEN BEGIN lt17
   SAY @1033
   IF ~~ THEN REPLY @1034 GOTO lt17d
   IF ~~ THEN REPLY @1035 GOTO lt17c
   IF ~~ THEN REPLY @1036 GOTO lt17b
   IF ~~ THEN REPLY @1037 GOTO lt17a
END

IF ~~ THEN BEGIN lt17a
   SAY @1038
   IF ~~ THEN REPLY @1039 GOTO lt17a4
   IF ~~ THEN REPLY @1040 GOTO lt17a3
   IF ~~ THEN REPLY @1041 GOTO lt17a2
   IF ~~ THEN REPLY @1042 GOTO lt17a1
END

IF ~~ THEN BEGIN lt17a1
   SAY @1043
   IF ~~ THEN DO ~SetGlobal("ChloeRomanceActiveCR","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN lt17a2
   SAY @1044
   IF ~~ THEN DO ~IncrementGlobal("ChloeNormalCR","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN lt17a3
   SAY @1045
   IF ~~ THEN DO ~IncrementGlobal("ChloeNormalCR","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN lt17a4
   SAY @1046
   IF ~~ THEN DO ~IncrementGlobal("ChloeNormalCR","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN lt17b
   SAY @1047
   IF ~~ THEN DO ~IncrementGlobal("ChloeNormalCR","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN lt17c
   SAY @1048
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt17d
   SAY @1049
   IF ~~ THEN DO ~IncrementGlobal("ChloeNormalCR","GLOBAL",1)~ EXIT
END






// ~~ 4th Lovetalk ~~ (short after rescuing Imoen) -- Imoen depending



IF WEIGHT #300 ~Global("ChLovetalksCR","GLOBAL",8)~ THEN BEGIN lt18
   SAY @1050 
   IF ~~ THEN REPLY @1051 EXTERN IMOEN2J lt23
   IF ~OR(2) !Global("AnomenRomanceActive","GLOBAL",1) !IsValidForPartyDialog("Anomen")~ THEN REPLY @1052 DO ~SetGlobal("ChLovetalksCR","GLOBAL",9)~ EXTERN IMOEN2J lt22
   IF ~IsValidForPartyDialog("Anomen") Global("AnomenRomanceActive","GLOBAL",1)~ THEN REPLY @1052 DO ~SetGlobal("ChLovetalksCR","GLOBAL",9)~ EXTERN IMOEN2J lt22
   IF ~~ THEN REPLY @1053 DO ~SetGlobal("ChLovetalksCR","GLOBAL",9)~ EXTERN IMOEN2J lt21
   IF ~~ THEN REPLY @867 DO ~SetGlobal("ChLovetalksCR","GLOBAL",9)~ GOTO lt20
   IF ~~ THEN REPLY @1054 DO ~SetGlobal("ChLovetalksCR","GLOBAL",9)~ EXTERN IMOEN2J lt19
END
END

CHAIN IMOEN2J lt19
@1055
== RCHLOEJ @1056 DO ~SetGlobal("ChloeRomanceActiveCR","GLOBAL",3)~
EXIT

APPEND RCHLOEJ
IF ~~ THEN BEGIN lt20
   SAY @1057
   IF ~~ THEN EXIT
END
END

CHAIN IMOEN2J lt21
@1058
== RCHLOEJ @1059 DO ~IncrementGlobal("ChloeHumorCR","GLOBAL",1)~
EXIT

APPEND ANOMENJ
IF ~~ THEN BEGIN lt22Anus
   SAY @1060
   IF ~~ THEN EXTERN IMOEN2J lt22
END
END

CHAIN IMOEN2J lt22
@1061
== RCHLOEJ @1062 DO ~IncrementGlobal("ChloeRomanticCR","GLOBAL",1)~
EXIT

CHAIN IMOEN2J lt23
@1063
== JAHEIRAJ IF ~IsValidForPartyDialog("Jaheira")~ THEN @1064
== RCHLOEJ @1065 DO ~IncrementGlobal("ChloeNormalCR","GLOBAL",1)~
EXIT






// ~~ 5th Lovetalk ~~  -- Imoen depending



APPEND RCHLOEJ
IF WEIGHT #300 ~Global("ChLovetalksCR","GLOBAL",10)~ THEN BEGIN lt24
   SAY @1066 
   IF ~~ THEN EXTERN IMOEN2J lt25
END
END

APPEND IMOEN2J
IF ~~ THEN BEGIN lt25
   SAY @1067
   IF ~~ THEN REPLY @1068 GOTO lt29
   IF ~~ THEN REPLY @1069 GOTO lt28
   IF ~~ THEN REPLY @1070 GOTO lt27
   IF ~~ THEN REPLY @1071 GOTO lt26
END

IF ~~ THEN BEGIN lt27
   SAY @1072
   IF ~~ THEN EXTERN RCHLOEJ lt27a
END

IF ~~ THEN BEGIN lt27a2
   SAY @1073
   IF ~~ THEN DO ~IncrementGlobal("ChloeHumorCR","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN lt27a3
   SAY @1074
   IF ~~ THEN DO ~IncrementGlobal("ChloeHumorCR","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN lt28a
   SAY @1075
   IF ~~ THEN REPLY @1076 EXTERN RCHLOEJ lt28a4
   IF ~~ THEN REPLY @1077 EXTERN IMOEN2J lt28a3
   IF ~~ THEN REPLY @1078 EXTERN IMOEN2J lt28a2
   IF ~~ THEN REPLY @1079 EXTERN RCHLOEJ lt28a1
END

IF ~~ THEN BEGIN lt30
   SAY @1080
   IF ~~ THEN REPLY @1081 EXTERN RCHLOEJ lt30c
   IF ~~ THEN REPLY @1082 EXTERN RCHLOEJ lt30b
   IF ~~ THEN REPLY @1083 GOTO lt30a
END
END

CHAIN IMOEN2J lt26
@1084
== AERIEJ IF ~IsValidForPartyDialog("Aerie")~ THEN @1085
== RCHLOEJ @1086
EXIT

CHAIN IMOEN2J lt28
@1087
== RCHLOEJ @1088
END IMOEN2J lt28a

CHAIN RCHLOEJ lt28a1
@1089 DO ~IncrementGlobal("ChloeNormalCR","GLOBAL",1)~
EXIT

CHAIN IMOEN2J lt28a2
@1090
== RCHLOEJ @1091
== IMOEN2J @1092
== RCHLOEJ @1093 DO ~IncrementGlobal("ChloeHumorCR","GLOBAL",1)~
EXIT

CHAIN IMOEN2J lt28a3
@1094
== RCHLOEJ @1095
== VICONIJ IF ~IsValidForPartyDialog("Viconia")~ THEN @1096
== RCHLOEJ @1097 DO ~IncrementGlobal("ChloeRomanticCR","GLOBAL",1)~
EXIT

CHAIN RCHLOEJ lt28a4
@1098 DO ~IncrementGlobal("ChloeRomanticCR","GLOBAL",1)~
EXIT

CHAIN IMOEN2J lt29
@1099
== RCHLOEJ @1100 
== IMOEN2J @1101
== RCHLOEJ @1102
END IMOEN2J lt30

CHAIN IMOEN2J lt30a
@1103
== RCHLOEJ @1104 DO ~IncrementGlobal("ChloeHumorCR","GLOBAL",1)~
EXIT

CHAIN RCHLOEJ lt30b
@1105
== IMOEN2J @1106 DO ~IncrementGlobal("ChloeNormalCR","GLOBAL",1)~
EXIT

CHAIN RCHLOEJ lt30c
@1107
== IMOEN2J @1108 DO ~IncrementGlobal("ChloeNormalCR","GLOBAL",1)~
EXIT

APPEND RCHLOEJ
IF ~~ THEN BEGIN lt27a
   SAY @1109
   IF ~~ THEN REPLY @1110 EXTERN IMOEN2J lt27a3
   IF ~~ THEN REPLY @640 EXTERN IMOEN2J lt27a2
   IF ~~ THEN REPLY @1111 GOTO lt27a1
END

IF ~~ THEN BEGIN lt27a1
   SAY @1112
   IF ~~ THEN DO ~IncrementGlobal("ChloeNormalCR","GLOBAL",1)~ EXIT
END
END





// ~~ 6th Lovetalk ~~  -- not really a lovetalk, heh... event.

CHAIN IF ~OR(2) Global("ChLovetalksCR","GLOBAL",12) Global("SlavQRC","Global",2)~ THEN MAN1CR lt31
@1113
== MAN2CR IF ~Global("FreeSlaves","GLOBAL",1)~ THEN @1114
== MAN2CR IF ~Global("FreeSlaves","GLOBAL",0)~ THEN @1115
== MAN1CR @1116
== MAN2CR @1117
== AERIEJ IF ~IsValidForPartyDialog("Aerie")~ THEN @1118
END RCHLOEJ lt32


APPEND RCHLOEJ
IF ~~ THEN BEGIN lt32
   SAY @1119 
   IF ~~ THEN DO ~SetGlobal("CutSceneApproachGlobalCR","GLOBAL",1) SetGlobal("SlavQRC","Global",3)~ EXTERN MAN1CR lt33
END
END

CHAIN IF ~Global("CutSceneApproachGlobalCR","GLOBAL",1)~ THEN MAN1CR lt33
@1120 DO ~SetGlobal("CutSceneApproachGlobalCR","GLOBAL",0)~
== RCHLOEJ @1121
== MAN1CR @1122
== RCHLOEJ @1123
== MAN2CR @1124 DO ~SetGlobal("KilledYourPartnerSweetyCR","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("Kill1CR")~
EXIT

CHAIN IF WEIGHT #50 ~Global("KilledYourPartnerSweetyCR","GLOBAL",1)~ THEN RCHLOEJ lt34
@1125 
== AERIEJ IF ~IsValidForPartyDialog("Aerie")~ THEN @1126
== MAN2CR @1127 DO ~SetGlobal("KilledYourPartnerSweetyCR","GLOBAL",0)~
== RCHLOEJ @1128 DO ~ SetGlobal("GonnaKillYouSweetyCR","GLOBAL",1) ClearAllActions() StartCutSceneMode() CutSceneId("RChloe") MoveToObject("Man2CR") EndCutSceneMode() StartDialog("RCHLOEJ","Man2CR")~
EXIT

CHAIN IF WEIGHT #50 ~Global("GonnaKillYouSweetyCR","GLOBAL",1)~ THEN RCHLOEJ lt35
@1129  DO ~SetGlobal("GonnaKillYouSweetyCR","GLOBAL",0)~
== MAN2CR @1130
DO ~SetGlobal("YouMustBeStupidManCR","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("Kill2CR")~
EXIT

CHAIN IF WEIGHT #50 ~Global("YouMustBeStupidManCR","GLOBAL",1)~ THEN RCHLOEJ lt36
@1131 
== AERIEJ IF ~InParty("Aerie") !Dead("Aerie") See("Aerie")~ THEN @1132
== VICONIJ IF ~InParty("Viconia") !Dead("Viconia") See("Viconia")~ THEN @1133
== KELDORJ IF ~InParty("Keldorn") !Dead("Keldorn") See("Keldorn")~ THEN @1134
END RCHLOEJ lt36Next

APPEND RCHLOEJ
IF ~~ THEN BEGIN lt36Next
   SAY @1135
   IF ~~ THEN REPLY @1136 DO ~SetGlobal("YouMustBeStupidManCR","GLOBAL",2)~ GOTO lt37c
   IF ~IsValidForPartyDialog("Imoen2")~ THEN REPLY @1137 DO ~SetGlobal("YouMustBeStupidManCR","GLOBAL",2)~ EXTERN IMOEN2J lt37bImoen
   IF ~!IsValidForPartyDialog("Imoen2")~ THEN REPLY @1137 DO ~SetGlobal("YouMustBeStupidManCR","GLOBAL",2)~ GOTO lt37b
   IF ~~ THEN REPLY @1138 DO ~SetGlobal("YouMustBeStupidManCR","GLOBAL",2)~ GOTO lt37a
END
END

APPEND RCHLOEJ
IF ~~ THEN BEGIN lt37a
   SAY @1139
   IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END
END

APPEND IMOEN2J
IF ~~ THEN BEGIN lt37bImoen
   SAY @1140
   IF ~~ THEN EXTERN RCHLOEJ lt37b
END
END

APPEND RCHLOEJ
IF ~~ THEN BEGIN lt37b
   SAY @1141
   IF ~~ THEN REPLY @1142 GOTO lt37c
   IF ~~ THEN REPLY @1143 GOTO lt37a
END

IF ~~ THEN BEGIN lt37c
   SAY @867
   IF ~~ THEN DO ~SetGlobalTimer("ChloeComplainCR","GLOBAL",900)~ EXIT
END


IF WEIGHT #-12 ~RealGlobalTimerExpired("ChloeComplainCR","GLOBAL") Global("HadFirstComplainCR","GLOBAL",0)~ THEN BEGIN Complain1
   SAY @1144 
   IF ~~ THEN DO ~RealSetGlobalTimer("ChloeComplainCR","GLOBAL",900) SetGlobal("HadFirstComplainCR","GLOBAL",1)~ EXIT
END

IF WEIGHT #-12 ~RealGlobalTimerExpired("ChloeComplainCR","GLOBAL") Global("HadFirstComplainCR","GLOBAL",1)~ THEN BEGIN Complain2
   SAY @1145 
   IF ~~ THEN DO ~SetGlobal("HadFirstComplainCR","GLOBAL",2) LeaveParty() EscapeArea()~ EXIT
END
END







// ~~ 7th "Lovetalk" ~~ actually it's the continuation of the eventful event


CHAIN IF ~Global("ChLovetalksQuestCR","GLOBAL",1)~ THEN SUBMANCR lt38
@1146 DO ~SetGlobal("ChLovetalksQuestCR","GLOBAL",2)~
== RCHLOEJ @1147 
== SUBMANCR @1148 DO ~Enemy() ActionOverride("MAGMANCR",Enemy()) ActionOverride("PRIMANCR",Enemy()) ActionOverride("SLAMANCR",Enemy())~
EXIT

/*
(Battle begins) -Note: Hehe it'd be funny if we could have the sub-commander cry for mercy after receiving damage in a floaty. :)
When everyone is dead you make this global set, you hear me!?
After battle, if Chloe is still alive, dialogue box opens:
*/

CHAIN IF WEIGHT #50 ~Global("KilledFirstSlaversCR","GLOBAL",1)~ THEN RCHLOEJ lt39
@1149  DO ~SetGlobal("KilledFirstSlaversCR","GLOBAL",2)~
EXIT


/*
Scene 2, second level where all the beds are. (What does a tanner need with all those beds anyway?) 5 slaver guards, lvls 6 to 10. Nothing special.
*/

CHAIN IF ~Global("ChLovetalksQuestCR","GLOBAL",3)~ THEN GUAMANCR lt40
@1150 DO ~SetGlobal("ChLovetalksQuestCR","GLOBAL",4) Enemy() ActionOverride("SLMAN1CR",Enemy()) ActionOverride("SLMAN2CR",Enemy()) ActionOverride("SLMAN3CR",Enemy()) ActionOverride("SLMAN4CR",Enemy())~
== RCHLOEJ @1151
EXIT

/*
(Battle begins)
After battle, if Chloe is still alive, dialogue box opens:
*/

CHAIN IF WEIGHT #50 ~Global("KilledSecondSlaversCR","GLOBAL",1)~ THEN RCHLOEJ lt41
@1152  DO ~SetGlobal("KilledSecondSlaversCR","GLOBAL",2)~
EXIT

/*
Scene 3, third level where the boat area is. Two slavers, a Slaver Commander and a Slaver Wizard are talking.
Dialogue box opens:
*/

CHAIN IF ~Global("ChLovetalksQuestCR","GLOBAL",5)~ THEN COMMANCR lt42
@1153 DO ~SetGlobal("ChLovetalksQuestCR","GLOBAL",6)~
== WIZMANCR @1154
== COMMANCR @1155
== RCHLOEJ @1156
== COMMANCR @1157
== WIZMANCR @1158
== RCHLOEJ @1159
== COMMANCR @1160
DO ~SetGlobal("ChLovetalksQuestCR","GLOBAL",7) ClearAllActions() StartCutSceneMode() StartCutScene("Kill3CR")~ EXIT

/* This cut scene is very pretty. Chloe advances to the middle of the room screaming "COWARDS!" as the mage casts some dimension
door spells.
Scene: Wizard and commander dimension door out. A paper is left on the ground.
*/

CHAIN IF WEIGHT #50 ~Global("ChLovetalksQuestCR","GLOBAL",7) Global("SlavQRC","Global",3)~ THEN RCHLOEJ lt43a
@1161 
DO ~SetGlobal("WeMustReadItCR","GLOBAL",1) SetGlobal("ChLovetalksQuestCR","GLOBAL",8) SetGlobal("SlavQRC","Global",4) StartCutSceneMode() StartCutScene("Kill4CR")~ EXIT

CHAIN IF WEIGHT #50 ~Global("ChLovetalksQuestCR","GLOBAL",7) !Global("SlavQRC","Global",3)~ THEN RCHLOEJ lt43b
@1161 
DO ~SetGlobal("WeMustReadItCR","GLOBAL",1) SetGlobal("ChLovetalksQuestCR","GLOBAL",8) SetGlobal("ChLovetalksCR","GLOBAL",15) StartCutSceneMode() StartCutScene("Kill4CR")~ EXIT
/*
Paper reads:

My dear slavers,

You apparently hold in your possession a boy that I and my army are looking for. We will offer you 200 gold coins for this boy. Take the money, or our next offer will be your corpses littering the floor. We destroyed La'risadiim, an entire village, for this boy and we will have him. Please take the money and give the boy to Illa-sera here and forget you ever met him. -Y.S.

Dialogue box opens:

To save pointless work and unpredictable player behavior, Chloe automatically moves to the paper,
makes as if she read it, drops it, steps back horrorized saying in a floaty "This... this can't be..." and approaches to the water.
*/

APPEND RCHLOEJ
IF WEIGHT #50 ~Global("ChLovetalksQuestCR","GLOBAL",9) Global("YetAnotherNoLooperCR","LOCALS",0)~ THEN BEGIN lt44
   SAY @1162 
   IF ~IsValidForPartyDialog("Jaheira")~ THEN REPLY @1163 DO ~SetGlobal("YetAnotherNoLooperCR","LOCALS",1) SetGlobal("FeelingSickLikeHellCR","LOCALS",1)~ EXTERN JAHEIRAJ lt47cha
   IF ~!IsValidForPartyDialog("Jaheira") IsValidForPartyDialog("Minsc")~ THEN REPLY @1163 DO ~SetGlobal("YetAnotherNoLooperCR","LOCALS",1) SetGlobal("FeelingSickLikeHellCR","LOCALS",1)~ EXTERN MINSCJ lt47Minsc
   IF ~!IsValidForPartyDialog("Jaheira") !IsValidForPartyDialog("Minsc")~ THEN REPLY @1163 DO ~SetGlobal("YetAnotherNoLooperCR","LOCALS",1) SetGlobal("FeelingSickLikeHellCR","LOCALS",1)~ GOTO lt47
   IF ~IsValidForPartyDialog("Aerie")~ THEN REPLY @1164 DO ~SetGlobal("YetAnotherNoLooperCR","LOCALS",1) SetGlobal("FeelingSickLikeHellCR","LOCALS",1)~ EXTERN AERIEJ lt46Aerie
   IF ~!IsValidForPartyDialog("Aerie")~ THEN REPLY @1164 DO ~SetGlobal("YetAnotherNoLooperCR","LOCALS",1) SetGlobal("FeelingSickLikeHellCR","LOCALS",1)~ GOTO lt46
   IF ~~ THEN REPLY @1165 GOTO lt45
END

IF ~~ THEN BEGIN lt45
   SAY @1166
   IF ~~ THEN REPLY @1167 GOTO lt45b
   IF ~~ THEN REPLY @1168 GOTO lt45a
END

IF ~~ THEN BEGIN lt45a
   SAY @1169
   IF ~InParty("Imoen2")~ THEN DO ~RealSetGlobalTimer("ImoenBitchesOutPlayerCR","GLOBAL",10) LeaveParty() EscapeArea()~ EXIT
   IF ~!InParty("Imoen2")~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN lt45b
   SAY @1170
   IF ~~ THEN REPLY @1171 GOTO lt45b1
   IF ~~ THEN REPLY @1172 GOTO lt45b2
END

IF ~~ THEN BEGIN lt45b1
   SAY @1173
   IF ~~ THEN DO ~RealSetGlobalTimer("IgottaRestSweetyCR","GLOBAL",180)~ EXIT
END

IF ~~ THEN BEGIN lt45b2
   SAY @1174
   IF ~~ THEN REPLY @1175 GOTO lt45b2b
   IF ~~ THEN REPLY @1176 GOTO lt45b2a
END

IF ~~ THEN BEGIN lt45b2a
   SAY @1177
   IF ~InParty("Imoen2")~ THEN DO ~RealSetGlobalTimer("ImoenBitchesOutPlayerCR","GLOBAL",10) LeaveParty() EscapeArea()~ EXIT
   IF ~!InParty("Imoen2")~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN lt45b2b
   SAY @1173
   IF ~~ THEN DO ~RealSetGlobalTimer("IgottaRestSweetyCR","GLOBAL",180)~ EXIT
END
END

APPEND AERIEJ
IF ~~ THEN BEGIN lt46Aerie
   SAY @1178
   IF ~~ THEN EXTERN RCHLOEJ lt46
END
END

APPEND RCHLOEJ
IF ~~ THEN BEGIN lt46
   SAY @1179
   IF ~~ THEN REPLY @1171 GOTO lt45b1
   IF ~~ THEN REPLY @1172 GOTO lt45b2
END
END

CHAIN JAHEIRAJ lt47cha
@1180
== MINSCJ IF ~IsValidForPartyDialog("Minsc")~ THEN @1181
END RCHLOEJ lt47

APPEND MINSCJ
IF ~~ THEN BEGIN lt47Minsc
   SAY @1181
   IF ~~ THEN EXTERN RCHLOEJ lt47
END
END

APPEND RCHLOEJ
IF ~~ THEN BEGIN lt47
   SAY @1182
   IF ~~ THEN REPLY @1183 GOTO lt47a
   IF ~~ THEN REPLY @1184 GOTO lt47a
   IF ~~ THEN REPLY @1185 GOTO lt45
END

IF ~~ THEN BEGIN lt47a
   SAY @1186
   IF ~~ THEN REPLY @1171 GOTO lt45b2
   IF ~~ THEN REPLY @1172 GOTO lt45b1
END


// ~~ If you don't go rest soon Chloe will complain ~~

IF WEIGHT #100 ~OR(3)  Global("FeelingSickLikeHellCR","LOCALS",1) Global("ComplainingAboutRestCR","GLOBAL",1) Global("ComplainingAboutRestCR","GLOBAL",2)~ THEN BEGIN feelsick1
   SAY @1187 
   IF ~~ THEN REPLY @1188 DO ~SetGlobal("ComplainingAboutRestCR","GLOBAL",2)~ GOTO lt45b2b
   IF ~~ THEN REPLY @1189 GOTO feelsick2
   IF ~~ THEN REPLY @1190 GOTO feelsick1a
END

IF ~~ THEN BEGIN feelsick1a
   SAY @1191
   IF ~InParty("Imoen2")~ THEN DO ~RealSetGlobalTimer("ImoenBitchesOutPlayerCR","GLOBAL",10) LeaveParty() EscapeArea()~ EXIT
   IF ~!InParty("Imoen2")~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN feelsick2
   SAY @1192
   IF ~~ THEN REPLY @1193 DO ~SetGlobal("ComplainingAboutRestCR","GLOBAL",2)~ GOTO lt45b2b
   IF ~~ THEN REPLY @1194 GOTO feelsick1a
END

//  ~~ If she compains again, she leaves you! ~~

IF WEIGHT #99 ~Global("ComplainingAboutRestCR","GLOBAL",3)~ THEN BEGIN feelsick4
   SAY @1195 
   = @1196
   IF ~InParty("Imoen2")~ THEN DO ~RealSetGlobalTimer("ImoenBitchesOutPlayerCR","GLOBAL",10) LeaveParty() EscapeArea()~ EXIT
   IF ~!InParty("Imoen2")~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END
END

// Imoen bitches out <CHARNAME>.

APPEND IMOEN2J
IF WEIGHT #0 ~Global("BitchingOutCR","GLOBAL",1) !Dead("C6BODHI")~ THEN BEGIN ImBitch1
   SAY @1197 
   IF ~~ THEN REPLY @1198 GOTO ImBitch4
   IF ~~ THEN REPLY @1199 GOTO ImBitch3
   IF ~~ THEN REPLY @1200 GOTO ImBitch2
END

IF WEIGHT #0 ~Global("BitchingOutCR","GLOBAL",1) Dead("C6BODHI")~ THEN BEGIN ImBitch1a
   SAY @1201 
   IF ~~ THEN REPLY @1198 GOTO ImBitch4
   IF ~~ THEN REPLY @1199 GOTO ImBitch3
   IF ~~ THEN REPLY @1200 GOTO ImBitch2
END

IF ~~ THEN BEGIN ImBitch2
   SAY @1202
   IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN ImBitch3
   SAY @1203
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ImBitch4
   SAY @1204
   IF ~~ THEN EXIT
END
END


// ~~ Lovetalk 8 ~~ After rested

/* ChLovetalksCR is in 15, and when the party rests in the five flagons inn (or any other) it's 16. */

APPEND RCHLOEJ
IF WEIGHT #300 ~Global("ChLovetalksCR","GLOBAL",16)~ THEN BEGIN lt48
   SAY @1205 
   IF ~~ THEN REPLY @1206 DO ~SetGlobal("ChLovetalksCR","GLOBAL",17) SetGlobal("AllLovetalksHadCR","GLOBAL",1)~ GOTO lt52
   IF ~~ THEN REPLY @1207 DO ~SetGlobal("ChLovetalksCR","GLOBAL",17) SetGlobal("AllLovetalksHadCR","GLOBAL",1)~ GOTO lt51
   IF ~~ THEN REPLY @1208 DO ~SetGlobal("ChLovetalksCR","GLOBAL",17) SetGlobal("AllLovetalksHadCR","GLOBAL",1)~ GOTO lt50
   IF ~~ THEN REPLY @1209 DO ~SetGlobal("ChLovetalksCR","GLOBAL",17) SetGlobal("AllLovetalksHadCR","GLOBAL",1)~ GOTO lt49
END

IF ~~ THEN BEGIN lt49
   SAY @1210
   = @1211
   = @1212
   IF ~~ THEN DO ~IncrementGlobal("ChloeNormalCR","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN lt50
   SAY @1213
   = @1214
   = @1212
   IF ~~ THEN DO ~IncrementGlobal("ChloeHumorCR","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN lt51
   SAY @1215
   IF ~~ THEN REPLY @1216 GOTO lt51c
   IF ~~ THEN REPLY @1217 GOTO lt51b
   IF ~~ THEN REPLY @1218 GOTO lt50
   IF ~~ THEN REPLY @1219 GOTO lt51a
END

IF ~~ THEN BEGIN lt51a
   SAY @1220
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt51b
   SAY @1221
   = @1222
   = @1212
   IF ~~ THEN DO ~IncrementGlobal("ChloeRomanticCR","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN lt51c
   SAY @1223
   = @1222
   = @1212
   IF ~~ THEN DO ~IncrementGlobal("ChloeNormalCR","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN lt52
   SAY @1224
   IF ~~ THEN REPLY @1216 GOTO lt51c
   IF ~~ THEN REPLY @1217 GOTO lt51b
   IF ~~ THEN REPLY @1218 GOTO lt50
   IF ~~ THEN REPLY @1219 GOTO lt51a
END





// ||| Tree of Life Thingie |||


IF ~~ THEN BEGIN ToL2a
   SAY @1225
   = @1226
   = @1227
   IF ~~ THEN REPLY @1228 DO ~SetGlobal("ChloeRomanceActiveCR","GLOBAL",2)~ GOTO ToL2a3
   IF ~~ THEN REPLY @1229 DO ~SetGlobal("ChloeRomanceActiveCR","GLOBAL",3)~ GOTO ToL2a2
   IF ~~ THEN REPLY @1230 DO ~SetGlobal("ChloeRomanceActiveCR","GLOBAL",3)~ GOTO ToL2a1
END

IF ~~ THEN BEGIN ToL2a1
   SAY @1231
   COPY_TRANS PLAYER1 33
END

IF ~~ THEN BEGIN ToL2a2
   SAY @1232
   COPY_TRANS PLAYER1 33
END

IF ~~ THEN BEGIN ToL2a3
   SAY @1233
   COPY_TRANS PLAYER1 33
END

IF ~~ THEN BEGIN ToL3a
   SAY @1234
   COPY_TRANS PLAYER1 33
END

IF ~~ THEN BEGIN ToL3b
   SAY @1235
   IF ~~ THEN DO ~ActionOverride(Player1,SetDialog("Player1")) SetGlobal("WHATTHEHELLCR","GLOBAL",1) StartCutSceneMode() LeaveParty() RunAwayFrom(Player1,80) Wait(2) ActionOverride(Player1,StartDialog("Player1",Player1)) EndCutSceneMode() EscapeArea()~ EXIT
END
END



EXTEND_BOTTOM PLAYER1 33
IF ~IsValidForPartyDialog("RChloe") !Global("ChloeRomanceActiveCR","GLOBAL",1) !Global("ImoenChloeRomanceActiveCR","GLOBAL",1) Global("CharnameAndChloeSittingInATreeCR","GLOBAL",0)~ THEN DO ~SetGlobal("CharnameAndChloeSittingInATreeCR","GLOBAL",1)~ GOTO ToL3
IF ~IsValidForPartyDialog("RChloe") Global("ChloeRomanceActiveCR","GLOBAL",1) !Global("ImoenChloeRomanceActiveCR","GLOBAL",1) Global("CharnameAndChloeSittingInATreeCR","GLOBAL",0)~ THEN DO ~SetGlobal("CharnameAndChloeSittingInATreeCR","GLOBAL",1)~ GOTO ToL2
IF ~IsValidForPartyDialog("RChloe") Global("ImoenChloeRomanceActiveCR","GLOBAL",1) Global("CharnameAndChloeSittingInATreeCR","GLOBAL",0)~ THEN DO ~SetGlobal("CharnameAndChloeSittingInATreeCR","GLOBAL",1)~ GOTO ToL1
END

APPEND PLAYER1
IF WEIGHT #-1 ~Global("WHATTHEHELLCR","GLOBAL",1)~ THEN BEGIN ToL3b1
   SAY @1236
   IF ~~ THEN DO ~SetGlobal("WHATTHEHELLCR","GLOBAL",0)~ GOTO ERRCALCAACLALetoakweto
END

IF ~~ THEN BEGIN ERRCALCAACLALetoakweto
   SAY @1237
   COPY_TRANS PLAYER1 33
END

IF ~~ THEN BEGIN ToL1
   SAY @1238
   IF ~~ THEN REPLY @1239 EXTERN RCHLOEJ ToL1a
   IF ~~ THEN REPLY @1240 EXTERN RCHLOEJ ToL1a
   IF ~~ THEN REPLY @1241 EXTERN RCHLOEJ ToL1a
END

IF ~~ THEN BEGIN ToL2
   SAY @1242
   IF ~~ THEN REPLY @1243 EXTERN RCHLOEJ ToL2a
   IF ~~ THEN REPLY @1244 EXTERN RCHLOEJ ToL2a
   IF ~~ THEN REPLY @1245 EXTERN RCHLOEJ ToL2a
END

IF ~~ THEN BEGIN ToL3
   SAY @1246
   IF ~GGT("ChloeInterest",8)~ THEN REPLY @1247 EXTERN RCHLOEJ ToL3a
   IF ~!GGT("ChloeInterest",8)~ THEN REPLY @1247 EXTERN RCHLOEJ ToL3b
   IF ~GGT("ChloeInterest",8)~ THEN REPLY @1248 EXTERN RCHLOEJ ToL3a
   IF ~!GGT("ChloeInterest",8)~ THEN REPLY @1248 EXTERN RCHLOEJ ToL3b
   IF ~GGT("ChloeInterest",8)~ THEN REPLY @1249 EXTERN RCHLOEJ ToL3a
   IF ~!GGT("ChloeInterest",8)~ THEN REPLY @1249 EXTERN RCHLOEJ ToL3b
END
END

CHAIN RCHLOEJ ToL1a
@1250
== IMOEN2J @1251
== RCHLOEJ @1252 DO ~SetGlobal("ImoenChloeRomanceActiveCR","GLOBAL",2)~
END IMOEN2J ToL1aFin

APPEND IMOEN2J
IF ~~ THEN BEGIN ToL1aFin
   SAY @1253
   COPY_TRANS PLAYER1 33
END
END

// ||| This dialogue shouldn't have a flag! |||

/*
Conditions:
Female PC
Chloe in party
Nalia in party
Aerie in party
Jaheira in party
Viconia in party
Before Spellhold
*/

CHAIN IF WEIGHT #100 ~Global("GirlPartyCR","GLOBAL",1)~ THEN RCHLOEJ gp1cha
@1254  DO ~SetGlobal("GirlPartyCR","GLOBAL",2)~
== NALIAJ @1255
== AERIEJ @1256
== VICONIJ @1257
== JAHEIRAJ @1258
== RCHLOEJ @1259
== AERIEJ @1260
== NALIAJ @1261
== VICONIJ @1262
== AERIEJ @1263
== JAHEIRAJ @1264
== NALIAJ @1265
END AERIEJ gp1

APPEND AERIEJ
IF ~~ THEN BEGIN gp1
   SAY @1266
   IF ~~ THEN REPLY @245 GOTO gp2cha
   IF ~~ THEN REPLY @1267 GOTO gp2cha
   IF ~~ THEN REPLY @1268 EXTERN RCHLOEJ gp2
END
END

CHAIN AERIEJ gp2cha
@1269
== VICONIJ @1270
== NALIAJ @1271
== JAHEIRAJ @1272
== AERIEJ @1273
== NALIAJ @1274
== RCHLOEJ @1275
== JAHEIRAJ @1276
== AERIEJ @1277
EXIT

APPEND RCHLOEJ
IF ~~ THEN BEGIN gp2
   SAY @1278
   IF ~~ THEN EXIT
END
END



///////////////////////////////////////////////////////////////////////




// ||| Chloe respawning in Spellhold totally crazed |||

EXTEND_BOTTOM IMOEN2 18
   IF ~Global("ChloeWillBeBackInSpellholdCR","GLOBAL",1)~ THEN GOTO ChloeNuts1
END

CHAIN IMOEN2 ChloeNuts1
@1279
== RChloe @1280
== IMOEN2 @1281
END IMOEN2 19

APPEND RCHLOEP
IF WEIGHT #-200 ~OR(3) !InParty("Imoen2") !See("Imoen2") Dead("Imoen2") Global("ChloeWillBeBackInSpellholdCR","GLOBAL",1)~ THEN BEGIN IAmTotallyNuts
   SAY @1282
   IF ~~ THEN EXIT
END
END

CHAIN IF WEIGHT #-200 ~InParty("Imoen2") See("Imoen2") !Dead("Imoen2") Global("ChloeWillBeBackInSpellholdCR","GLOBAL",1)~ THEN RChloe IAmNutsAndIDisappear
@1283
== IMOEN2J @1284
== RChloe @1285
== IMOEN2J @1286
== RChloe @1287
DO ~StartCutSceneMode() StartCutScene("CRDisint")~ EXIT

CHAIN IF WEIGHT #-200 ~Global("PostDisintegrateCR","GLOBAL",1)~ THEN IMOEN2J PostDisintegrate
@1288
DO ~SetGlobal("PostDisintegrateCR","GLOBAL",0)~ EXIT

// ||| Chloe Kickout and rejoin dialogues |||

APPEND RCHLOEP
IF WEIGHT #-100 ~Global("ChloeKickedOutCR","LOCALS",1) !HasItem("CHLOSW1","RChloe") Global("IHaveSW1CR","LOCALS",1)~ THEN BEGIN MyWeapons1
   SAY @1289 
   IF ~~ THEN DO ~SetGlobal("ChloeJoinedCR","LOCALS",1) SetGlobal("ChloeKickedOutCR","LOCALS",0) JoinParty()~ EXIT
END

IF WEIGHT #-100 ~Global("ChloeKickedOutCR","LOCALS",1) !HasItem("CHLOSW2","RChloe") Global("IHaveSW2CR","LOCALS",1)~ THEN BEGIN MyWeapons1
   SAY @1289 
   IF ~~ THEN DO ~SetGlobal("ChloeJoinedCR","LOCALS",1) SetGlobal("ChloeKickedOutCR","LOCALS",0) JoinParty()~ EXIT
END

IF WEIGHT #-100 ~Global("ChloeKickedOutCR","LOCALS",1) !HasItem("CHLOSW3","RChloe") Global("IHaveSW3CR","LOCALS",1)~ THEN BEGIN MyWeapons1
   SAY @1289 
   IF ~~ THEN DO ~SetGlobal("ChloeJoinedCR","LOCALS",1) SetGlobal("ChloeKickedOutCR","LOCALS",0) JoinParty()~ EXIT
END

IF WEIGHT #-100 ~Global("ChloeKickedOutCR","LOCALS",1) !HasItem("CHLOSW4","RChloe") Global("IHaveSW4CR","LOCALS",1)~ THEN BEGIN MyWeapons1
   SAY @1289 
   IF ~~ THEN DO ~SetGlobal("ChloeJoinedCR","LOCALS",1) SetGlobal("ChloeKickedOutCR","LOCALS",0) JoinParty()~ EXIT
END

IF WEIGHT #-100 ~Global("ChloeKickedOutCR","LOCALS",1) !HasItem("CHLOSW5","RChloe") Global("IHaveSW5CR","LOCALS",1)~ THEN BEGIN MyWeapons1
   SAY @1289 
   IF ~~ THEN DO ~SetGlobal("ChloeJoinedCR","LOCALS",1) SetGlobal("ChloeKickedOutCR","LOCALS",0) JoinParty()~ EXIT
END

IF WEIGHT #-100 ~Global("ChloeKickedOutCR","LOCALS",1) !HasItem("CHLOSW6","RChloe") Global("IHaveSW6CR","LOCALS",1)~ THEN BEGIN MyWeapons1
   SAY @1289 
   IF ~~ THEN DO ~SetGlobal("ChloeJoinedCR","LOCALS",1) SetGlobal("ChloeKickedOutCR","LOCALS",0) JoinParty()~ EXIT
END

IF WEIGHT #5 ~Global("ChloeKickedOutCR","LOCALS",1)~ THEN BEGIN KO1
 SAY @1290 
  IF ~~ THEN REPLY @1291 GOTO KO3
  IF ~~ THEN REPLY @1292 GOTO KO2
END

IF ~~ THEN BEGIN KO2
 SAY @1293
  IF ~~ THEN DO ~SetGlobal("ChloeMercenaryCR","GLOBAL",1) SetGlobal("ChloeRomanceActiveCR","GLOBAL",3) SetGlobal("ChloeJoinedCR","LOCALS",0) SetGlobal("ChloeKickedOutCR","LOCALS",1)
MoveGlobal("AR0709","RChloe",[480.445])~ EXIT 
END

IF ~~ THEN BEGIN KO3
 SAY @1294
  IF ~~ THEN DO ~SetGlobal("ChloeJoinedCR","LOCALS",1) SetGlobal("ChloeKickedOutCR","LOCALS",0) JoinParty()~ EXIT
END

IF ~IsValidForPartyDialog("Imoen2") !Global("ChloeIsAngryCR","GLOBAL",1)~ THEN BEGIN HiImoen
 SAY @1295
  IF ~~ THEN EXTERN IMOEN2J HiChloe
END

IF ~~ THEN BEGIN RejoinImoen1
 SAY @1296
  IF ~~ THEN DO ~SetGlobal("ChloeJoinedCR","LOCALS",1) JoinParty()~ EXIT
END

IF WEIGHT #0 ~Global("ChloeMercenaryCR","GLOBAL",1) OR(2) Global("ChloeIsAngryCR","GLOBAL",1) !IsValidForPartyDialog("Imoen2")~ THEN BEGIN RejoinPayMe
  SAY @1297 
   IF ~~ THEN REPLY @1298 GOTO RejoinPayMe1
   IF ~~ THEN REPLY @1299 GOTO GonnaGetDrunk
END

IF ~~ THEN BEGIN GonnaGetDrunk
 SAY @1300
  IF ~~ THEN EXIT
END
END

CHAIN RCHLOEP RejoinPayMe1
@1301
== RCHLOEJ IF ~Global("ChloeIsAngryCR","GLOBAL",1)~ THEN @1302
END RCHLOEP RejoinPayMe2

APPEND RCHLOEP
IF ~~ THEN BEGIN RejoinPayMe2
 SAY @1303
  IF ~PartyGoldGT(9999)~ THEN REPLY @1304 GOTO DirtyMoney
  IF ~~ THEN REPLY @1305 GOTO GonnaGetDrunk
  IF ~CheckStatGT(Player1,14,CHR) GLT("Chapter",16)~ THEN REPLY @1306 GOTO WhoaYup
  IF ~OR(2) !CheckStatGT(Player1,14,CHR) !GLT("Chapter",16)~ THEN REPLY @1306 GOTO WhoaNope
END


IF ~~ THEN BEGIN DirtyMoney
  SAY @1307
   IF ~~ THEN DO ~ActionOverride(Player1,DestroyGold(10000)) SetGlobal("ChloeJoinedCR","LOCALS",1) SetGlobal("ChloeMercenaryCR","GLOBAL",0) SetGlobal("ChloeKickedOutCR","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN WhoaYup
 SAY @1308
 IF ~~ THEN DO ~SetGlobal("ChloeJoinedCR","LOCALS",1) SetGlobal("ChloeKickedOutCR","LOCALS",0) SetGlobal("ChloeMercenaryCR","GLOBAL",0) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN WhoaNope
   SAY @1309
  IF ~PartyGoldGT(9999)~ THEN REPLY @1304 GOTO DirtyMoney
   IF ~~ THEN REPLY @1305 GOTO GonnaGetDrunk
   IF ~~ THEN REPLY @1310 GOTO WFY1
   END

IF ~~ THEN BEGIN WFY1
   SAY @179
   IF ~~ THEN DO ~Enemy() ChangeAIScript("WTASIGHT",Override)~ EXIT
END
END

APPEND IMOEN2J

 IF ~~ THEN BEGIN HiChloe
  SAY @1311
   IF ~~ THEN REPLY @1312 EXTERN RCHLOEP RejoinImoen1
   IF ~~ THEN REPLY @1313 EXTERN RCHLOEP GonnaGetDrunk
 END
END



///////////////////////////////////////////////////////////////////////

// Chloe pissed off

APPEND RCHLOEJ
IF WEIGHT #999 ~Global("ChloeIsAngryCR","GLOBAL",1)~ THEN BEGIN PissedForce
   SAY @1314
   IF ~~ THEN REPLY @1315 GOTO AngryApologize
   IF ~~ THEN REPLY @1316 GOTO AngryProblem
   IF ~~ THEN REPLY @1317 GOTO StringFixAngry
   IF ~~ THEN REPLY @1318 EXIT
END

IF ~~ THEN BEGIN AngryApologize
   SAY @1319
   IF ~~ THEN DO ~SetGlobal("ChloeIsAngryCR","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN AngryProblem
   SAY @1320
   IF ~~ THEN EXIT
END



IF ~~ THEN BEGIN StringFixAngry
   SAY @1321
   IF ~~ THEN DO ~StartCutSceneMode() StartCutScene("CRStrFix")~ EXIT
END


// Chloe normal forcetalk

IF WEIGHT #999 ~IsGabber(Player1) !Global("ChloeIsAngryCR","GLOBAL",1)~ THEN BEGIN Forcetalk
   SAY @1322
   

   // ~~ Flirts ~~
   
   IF ~OR(2) Global("ChloeRomanceActiveCR","GLOBAL",1) Global("ChloeRomanceActiveCR","GLOBAL",2) GGT("ChloeMildFlirtsCR",0)~ THEN REPLY @1323 GOTO flirt1
   IF ~OR(2) Global("ChloeRomanceActiveCR","GLOBAL",1) Global("ChloeRomanceActiveCR","GLOBAL",2) GGT("ChloeMildFlirtsCR",0)~ THEN REPLY @1324 GOTO flirt2
   IF ~OR(2) Global("ChloeRomanceActiveCR","GLOBAL",1) Global("ChloeRomanceActiveCR","GLOBAL",2) GGT("ChloeMildFlirtsCR",0)~ THEN REPLY @1325 GOTO flirt3
   IF ~OR(2) Global("ChloeRomanceActiveCR","GLOBAL",1) Global("ChloeRomanceActiveCR","GLOBAL",2) GGT("ChloeMildFlirtsCR",1)~ THEN REPLY @1326 GOTO flirt4
   IF ~OR(2) Global("ChloeRomanceActiveCR","GLOBAL",1) Global("ChloeRomanceActiveCR","GLOBAL",2) GGT("ChloeMildFlirtsCR",1)~ THEN REPLY @1327 GOTO flirt5
   IF ~OR(2) Global("ChloeRomanceActiveCR","GLOBAL",1) Global("ChloeRomanceActiveCR","GLOBAL",2) GGT("ChloeMildFlirtsCR",1)~ THEN REPLY @1328 GOTO flirt6
   IF ~Global("ChloeRomanceActiveCR","GLOBAL",2)~ THEN REPLY @1329 GOTO flirt7
   IF ~Global("ChloeRomanceActiveCR","GLOBAL",2)~ THEN REPLY @1330 GOTO flirt8
   IF ~Global("ChloeRomanceActiveCR","GLOBAL",2)~ THEN REPLY @1331 GOTO flirt9
   IF ~Global("ChloeRomanceActiveCR","GLOBAL",2)~ THEN REPLY @1332 GOTO flirt10
   IF ~Global("ChloeRomanceActiveCR","GLOBAL",2)~ THEN REPLY @1333 GOTO flirt11

   // ~~ Questions ~~

   IF ~GGT("ChloeQuestionsCR",1) !Global("Had1CR","GLOBAL",1)~ THEN REPLY @1334 DO ~SetGlobal("Had1CR","GLOBAL",1)~ GOTO q1
   IF ~GGT("ChloeQuestionsCR",2) !Global("Had2CR","GLOBAL",1)~ THEN REPLY @1335 DO ~SetGlobal("Had2CR","GLOBAL",1)~ GOTO q2
   IF ~GGT("ChloeQuestionsCR",3) !Global("Had3CR","GLOBAL",1)~ THEN REPLY @1336 DO ~SetGlobal("Had3CR","GLOBAL",1)~ GOTO q3
   IF ~GGT("ChloeQuestionsCR",4) !Global("Had4CR","GLOBAL",1)~ THEN REPLY @1337 DO ~SetGlobal("Had4CR","GLOBAL",1)~ GOTO q4
   IF ~GGT("ChloeQuestionsCR",5) !Global("Had5CR","GLOBAL",1)~ THEN REPLY @1338 DO ~SetGlobal("Had5CR","GLOBAL",1)~ GOTO q5
   IF ~GGT("ChloeQuestionsCR",6) !Global("Had6CR","GLOBAL",1)~ THEN REPLY @1339 DO ~SetGlobal("Had6CR","GLOBAL",1)~ GOTO q6
   IF ~GGT("ChloeQuestionsCR",7) !Global("Had7CR","GLOBAL",1)~ THEN REPLY @1340 DO ~SetGlobal("Had7CR","GLOBAL",1)~ GOTO q7
   IF ~GGT("ChloeQuestionsCR",8) !Global("Had8CR","GLOBAL",1)~ THEN REPLY @1341 DO ~SetGlobal("Had8CR","GLOBAL",1)~ GOTO q8
   IF ~GGT("ChloeQuestionsCR",9) !Global("Had9CR","GLOBAL",1)~ THEN REPLY @1342 DO ~SetGlobal("Had9CR","GLOBAL",1)~ GOTO q9
   IF ~GGT("ChloeQuestionsCR",10) !Global("Had10CR","GLOBAL",1)~ THEN REPLY @1343 DO ~SetGlobal("Had10CR","GLOBAL",1)~ GOTO q10
   IF ~GGT("ChloeQuestionsCR",11) !Global("Had11CR","GLOBAL",1)~ THEN REPLY @1344 DO ~SetGlobal("Had11CR","GLOBAL",1)~ GOTO q11
   IF ~GGT("ChloeQuestionsCR",12) !Global("Had12CR","GLOBAL",1)~ THEN REPLY @1345 DO ~SetGlobal("Had12CR","GLOBAL",1)~ GOTO q12
   IF ~GGT("ChloeQuestionsCR",13) !Global("Had13CR","GLOBAL",1)~ THEN REPLY @1346 DO ~SetGlobal("Had13CR","GLOBAL",1)~ GOTO q13
   IF ~Global("Had1CR","GLOBAL",1)~ THEN REPLY @1347 GOTO Remind

   IF ~~ THEN REPLY @1348 GOTO StringFix

   IF ~~ THEN REPLY @1349 EXIT
END

IF ~~ THEN BEGIN Remind
   SAY @1350
   IF ~GGT("ChloeQuestionsCR",1) Global("Had1CR","GLOBAL",1)~ THEN REPLY @1334 GOTO q1
   IF ~GGT("ChloeQuestionsCR",2) Global("Had2CR","GLOBAL",1)~ THEN REPLY @1335 GOTO q2
   IF ~GGT("ChloeQuestionsCR",3) Global("Had3CR","GLOBAL",1)~ THEN REPLY @1336 GOTO q3
   IF ~GGT("ChloeQuestionsCR",4) Global("Had4CR","GLOBAL",1)~ THEN REPLY @1337 GOTO q4
   IF ~GGT("ChloeQuestionsCR",5) Global("Had5CR","GLOBAL",1)~ THEN REPLY @1338 GOTO q5
   IF ~GGT("ChloeQuestionsCR",6) Global("Had6CR","GLOBAL",1)~ THEN REPLY @1339 GOTO q6
   IF ~GGT("ChloeQuestionsCR",7) Global("Had7CR","GLOBAL",1)~ THEN REPLY @1340 GOTO q7
   IF ~GGT("ChloeQuestionsCR",8) Global("Had8CR","GLOBAL",1)~ THEN REPLY @1341 GOTO q8
   IF ~GGT("ChloeQuestionsCR",9) Global("Had9CR","GLOBAL",1)~ THEN REPLY @1342 GOTO q9
   IF ~GGT("ChloeQuestionsCR",10) Global("Had10CR","GLOBAL",1)~ THEN REPLY @1343 GOTO q10
   IF ~GGT("ChloeQuestionsCR",11) Global("Had11CR","GLOBAL",1)~ THEN REPLY @1344 GOTO q11
   IF ~GGT("ChloeQuestionsCR",12) Global("Had12CR","GLOBAL",1)~ THEN REPLY @1345 GOTO q12
END

IF ~~ THEN BEGIN StringFix
   SAY @1351
   IF ~~ THEN DO ~StartCutSceneMode() StartCutScene("CRStrFix")~ EXIT
END

IF ~~ THEN BEGIN q1
   SAY @1352
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN q2
   SAY @1353
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN q3
   SAY @1354
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN q4
   SAY @1355
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN q5
   SAY @1356
   = @1357
   = @1358
   = @1359
   IF ~~ THEN REPLY @1360 GOTO q5b
   IF ~~ THEN REPLY @1361 GOTO q5a
END

IF ~~ THEN BEGIN q5a
   SAY @611
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN q5b
   SAY @1362
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN q6
   SAY @1363
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN q7
   SAY @1364
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN q8
   SAY @1365
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN q9
   SAY @1366
   = @1367
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN q10
   SAY @1368
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN q11
   SAY @1369
   = @1370
   = @1371
   = @1372
   = @1373
   = @1374
   = @1375
   = @1376
   = @1377
   = @1378
   = @1379
   = @1380
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN q12
   SAY @1381
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN q13
   SAY @1382
   = @1383
   = @1384
   = @1385
   = @1386
   IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN flirt1
   SAY @1387
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt2
   SAY @1388
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt3
   SAY @1389
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt4
   SAY @1390
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt5
   SAY @1391
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt6
   SAY @1392
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt7
   SAY @1393
   = @1394
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt8
   SAY @1395
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt9
   SAY @1396
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt10
   SAY @1397
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt11
   SAY @1398
   IF ~~ THEN EXIT
END






// ||| If Imoen leaves, you are screwed! |||

IF WEIGHT #0 ~!InParty("Imoen2") !Global("ChloeRomanceActiveCR","GLOBAL",3) Global("YouMustBeStupidDroppingImoenCR","GLOBAL",1)~ THEN BEGIN DroppedCuteGirl
   SAY @1399 
   = @1400
   IF ~~ THEN DO ~SetGlobal("ChloeRomanceActiveCR","GLOBAL",3) SetGlobal("YouMustBeStupidDroppingImoenCR","GLOBAL",2)~ EXIT
END

IF WEIGHT #0 ~!InParty("Imoen2") Global("ChloeRomanceActiveCR","GLOBAL",3) Global("YouMustBeStupidDroppingImoenCR","GLOBAL",1)~ THEN BEGIN DroppedCuteGirl2
   SAY @1401 
   = @1402
   IF ~~ THEN DO ~SetGlobal("KillImoenCR","GLOBAL",1) ActionOverride("Imoen2",DestroySelf()) LeaveParty() EscapeArea()~ EXIT
END
END


APPEND RCHLOEJ
IF WEIGHT #-20 ~Global("PostCutSpeak","AR0700",1)~ THEN BEGIN Damnation1
   SAY @1403
   IF ~~ THEN DO ~SetGlobal("PostCutSpeak","AR0700",2)~ EXIT
   IF ~InParty("Yoshimo") !Dead("Yoshimo") !StateCheck("Yoshimo",STATE_SLEEPING)~ THEN DO ~SetGlobal("PostCutSpeak","AR0700",2)~ EXTERN YOSHJ 147
   IF ~InParty("Jaheira") !Dead("Jaheira") !StateCheck("Jaheira",STATE_SLEEPING)~ THEN DO ~SetGlobal("PostCutSpeak","AR0700",2)~ EXTERN JAHEIRAJ 528
   IF ~InParty("Minsc") !Dead("Minsc") !StateCheck("Minsc",STATE_SLEEPING)~ THEN DO ~SetGlobal("PostCutSpeak","AR0700",2)~ EXTERN MINSCJ 238
END
END

// ||| Chloe's "abduction" |||


EXTEND_BOTTOM BODHIAMB 5
IF ~Global("ChloeRomanceActiveCR","GLOBAL",1) !Dead("RChloe") InParty("RChloe")~ THEN GOTO ChloeAmb1
END

CHAIN BODHIAMB ChloeAmb1
@1404
== RCHLOEJ @1405
== BODHIAMB @1406
== RCHLOEJ @1407
== IMOEN2J IF ~!Dead("Imoen2") InParty("Imoen2")~ THEN @1408
== RCHLOEJ @1409
== BODHIAMB @1410
END BODHIAMB 6


// ||| Chloe witnesses the Slayer Change |||

EXTEND_BOTTOM PLAYER1 7
IF ~Global("ChloeRomanceActiveCR","GLOBAL",1) See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN EXTERN RCHLOEJ Slayer1
END

APPEND RCHLOEJ
IF ~~ THEN BEGIN Slayer1
   SAY @1411
   IF ~~ THEN REPLY @1412 GOTO Slayer2
   IF ~~ THEN REPLY @1413 GOTO Slayer2
   IF ~~ THEN REPLY @1414 GOTO Slayer2
END

IF ~~ THEN BEGIN Slayer2
   SAY @1415
   IF ~~ THEN DO ~SetGlobal("SlayerAttacksChloeCR","GLOBAL",1) ActionOverride(Player1,ReallyForceSpell(Myself,SLAYER_CHANGE)) ActionOverride(Player1,Attack("RChloe"))~ EXIT
END
END

EXTEND_BOTTOM PLAYER1 10
IF ~Global("SlayerAttacksChloeCR","GLOBAL",1) Dead("RChloe")~ THEN DO ~SetGlobal("SlayerAttacksChloeCR","GLOBAL",0)~ GOTO 12
IF ~Global("SlayerAttacksChloeCR","GLOBAL",1) !Dead("RChloe")~ THEN DO ~SetGlobal("SlayerAttacksChloeCR","GLOBAL",0)~ EXTERN RCHLOEJ Slayer3
END

CHAIN RCHLOEJ Slayer3
@1416
= @1417
EXIT
