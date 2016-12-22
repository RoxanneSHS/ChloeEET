



// *** BANTERS AND INTERJECTIONS ***

// Pass the chain. What would we do without chains, someone tell me...!


// *** Imoen (No Romance) ***

// ~~ Pre-First ~~ : in Irenicus' dungeon

CHAIN IF WEIGHT #-10 ~Global("ImoenYouDontLookSoGoodCR","GLOBAL",1)~ THEN RCHLOEJ ImPre1
@0 DO ~FaceObject("Imoen")~
== IMOEN2J @1 DO ~SetGlobal("ImoenYouDontLookSoGoodCR","GLOBAL",2) FaceObject("RChloe")~
== RCHLOEJ @2
== IMOEN2J @3
== RCHLOEJ @4
== IMOEN2J @5
== RCHLOEJ @6
== IMOEN2J @7
== RCHLOEJ @8
== IMOEN2J @9
== RCHLOEJ @10
== IMOEN2J @11
== RCHLOEJ @12
== IMOEN2J @13
== RCHLOEJ @14
== IMOEN2J @15
EXIT

// ~~ First ~~ (if PC-Chloe romance active)


CHAIN IF WEIGHT #-10 ~Global("ImoenBanter1CR","GLOBAL",1)~ THEN RCHLOEJ b1
@16 DO ~SetGlobal("ImoenBanter1CR","GLOBAL",2) RealSetGlobalTimer("BanteringTimerCR","GLOBAL",2400)~
== IMOEN2J @17 
== RCHLOEJ @18
== IMOEN2J @19
== RCHLOEJ @20
== IMOEN2J @21
== RCHLOEJ @22
== IMOEN2J @23
== RCHLOEJ @24
== IMOEN2J @25
== RCHLOEJ @26
== IMOEN2J @27
EXIT

// ~~ Second ~~ 


CHAIN IF WEIGHT #-10 ~Global("ImoenBanter2CR","GLOBAL",1)~ THEN RCHLOEJ b2
@28 DO ~SetGlobal("ImoenBanter2CR","GLOBAL",2)RealSetGlobalTimer("BanteringTimerCR","GLOBAL",2400)~ 
== IMOEN2J @29 
== RCHLOEJ @30
== IMOEN2J @31
== RCHLOEJ @32
== IMOEN2J @33
== RCHLOEJ @34
== IMOEN2J @35
== RCHLOEJ @36
== IMOEN2J @37
== RCHLOEJ @38
== IMOEN2J @39
== RCHLOEJ @40
== IMOEN2J @41
== RCHLOEJ @42
== IMOEN2J @43
EXIT


// ~~ Third ~~


CHAIN IF WEIGHT #-10 ~Global("ImoenBanter3CR","GLOBAL",1)~ THEN RCHLOEJ b3
@44 DO ~SetGlobal("ImoenBanter3CR","GLOBAL",2) RealSetGlobalTimer("BanteringTimerCR","GLOBAL",2400)~
== IMOEN2J @45 
== RCHLOEJ @46 
== IMOEN2J @47
== RCHLOEJ @48
== IMOEN2J @49
== RCHLOEJ @50
== IMOEN2J @51
== RCHLOEJ @52
== IMOEN2J @53
== RCHLOEJ @54
== IMOEN2J @55
== RCHLOEJ @56
== IMOEN2J @57
== RCHLOEJ @58
EXIT


// *** Jaheira ***


// ~~ First ~~

CHAIN IF WEIGHT #-10 ~Global("JaheiraBanter1CR","GLOBAL",1)~ THEN RCHLOEJ b4
@59 DO ~RealSetGlobalTimer("BanteringTimerCR","GLOBAL",2400)~
== JAHEIRAJ @60 DO ~SetGlobal("JaheiraBanter1CR","GLOBAL",2)~
== RCHLOEJ @61
== JAHEIRAJ @62
== RCHLOEJ @63
== JAHEIRAJ @64
== RCHLOEJ @65
== JAHEIRAJ @66
== RCHLOEJ @67
== JAHEIRAJ @68
== RCHLOEJ @69
== JAHEIRAJ @70
== RCHLOEJ @71
EXIT


// ~~ Second ~~


CHAIN IF WEIGHT #-10 ~Global("JaheiraBanter2CR","GLOBAL",1)~ THEN RCHLOEJ b5
@72 DO ~SetGlobal("JaheiraBanter2CR","GLOBAL",2)~
== JAHEIRAJ @73 DO ~RealSetGlobalTimer("BanteringTimerCR","GLOBAL",2400)~
== RCHLOEJ @74
== JAHEIRAJ @75
== RCHLOEJ @76
== JAHEIRAJ @77
== RCHLOEJ @78
== JAHEIRAJ @79
== RCHLOEJ @80
== JAHEIRAJ @81
== RCHLOEJ @82
== RCHLOEJ @83
== JAHEIRAJ @84
EXIT


// ~~ Third ~~


CHAIN IF WEIGHT #-10 ~Global("JaheiraBanter3CR","GLOBAL",1)~ THEN RCHLOEJ b6
@85 DO ~RealSetGlobalTimer("BanteringTimerCR","GLOBAL",2400)~
== JAHEIRAJ @86 DO ~SetGlobal("JaheiraBanter3CR","GLOBAL",2)~
== RCHLOEJ @87 DO ~SetGlobal("NoMoreJaheiraBantersCR","GLOBAL",1)~
== RCHLOEJ @88
== JAHEIRAJ @89
== RCHLOEJ @90
== JAHEIRAJ @91
== JAHEIRAJ @92
== RCHLOEJ @93
== RCHLOEJ @94
== JAHEIRAJ @95
== RCHLOEJ @96
== JAHEIRAJ @97
EXIT


// ~~ Fourth ~~ Only if Chloe-PC romance active

CHAIN IF WEIGHT #-10 ~Global("JaheiraBanter4CR","GLOBAL",1)~ THEN JAHEIRAJ b7
@98 DO ~RealSetGlobalTimer("BanteringTimerCR","GLOBAL",2400)~
== RCHLOEJ @99 DO ~SetGlobal("JaheiraBanter4CR","GLOBAL",2)~
== JAHEIRAJ @100
== RCHLOEJ @101
== JAHEIRAJ @102
== RCHLOEJ @103
== JAHEIRAJ @104
== RCHLOEJ @105
== JAHEIRAJ @106
== RCHLOEJ @107
== JAHEIRAJ @108
EXIT



// *** Minsc ***


// ~~ First ~~

CHAIN IF WEIGHT #-10 ~Global("MinscBanter1CR","GLOBAL",1)~ THEN RCHLOEJ b8
@109 DO ~SetGlobal("MinscBanter1CR","GLOBAL",2)~
== MINSCJ @110 DO ~RealSetGlobalTimer("BanteringTimerCR","GLOBAL",2400)~
== RCHLOEJ @111
== MINSCJ @112
== RCHLOEJ @113
== MINSCJ @114
== RCHLOEJ @115
== MINSCJ @116
== RCHLOEJ @117
== MINSCJ @118
== RCHLOEJ @119
EXIT


// ~~ Second ~~ 

CHAIN IF WEIGHT #-10 ~Global("MinscBanter2CR","GLOBAL",1)~ THEN MINSCJ b9
@120 DO ~RealSetGlobalTimer("BanteringTimerCR","GLOBAL",2400)~
== RCHLOEJ @121 DO ~SetGlobal("MinscBanter2CR","GLOBAL",2)~
== MINSCJ @122 DO ~SetGlobal("NoMoreMinscBantersCR","GLOBAL",1)~
== RCHLOEJ @123
== MINSCJ @124
== RCHLOEJ @125
== MINSCJ @126
== RCHLOEJ @127
== MINSCJ @128
== RCHLOEJ @129
== MINSCJ @130
== RCHLOEJ @131
== MINSCJ @132
== RCHLOEJ @133
== MINSCJ @134
== RCHLOEJ @135
EXIT


// *** Edwin ***

// ~~ First ~~

CHAIN IF WEIGHT #-10 ~Global("EdwinBanter1CR","GLOBAL",1)~ THEN RCHLOEJ b10
@136 DO ~RealSetGlobalTimer("BanteringTimerCR","GLOBAL",2400)~
== EDWINJ @137 DO ~SetGlobal("EdwinBanter1CR","GLOBAL",2)~
== RCHLOEJ @138
== EDWINJ @139
== RCHLOEJ @140
== EDWINJ @141
== RCHLOEJ @142
== EDWINJ @143
== RCHLOEJ @144
== EDWINJ @145
== RCHLOEJ @146
EXIT


// ~~ Second ~~


CHAIN IF WEIGHT #-10 ~Global("EdwinBanter2CR","GLOBAL",1)~ THEN EDWINJ b11
@147 DO ~RealSetGlobalTimer("BanteringTimerCR","GLOBAL",2400)~
== RCHLOEJ @148 DO ~SetGlobal("EdwinBanter2CR","GLOBAL",2)~
== EDWINJ @149 DO ~SetGlobal("NoMoreEdwinBantersCR","GLOBAL",1)~
END RCHLOEJ b12

APPEND RCHLOEJ
IF ~~ THEN BEGIN b12
   SAY @150
   IF ~~ THEN REPLY @151 GOTO b14
   IF ~~ THEN REPLY @152 GOTO b13
END
END

CHAIN RCHLOEJ b13
@153 DO ~Attack("Edwin")~
== EDWINJ @154 DO ~SetGlobal("EdwinChloeToDeathCR","GLOBAL",1) ReallyForceSpell("RChloe",WIZARD_FLAME_ARROW)~
EXIT

CHAIN RCHLOEJ b14
@155
== EDWINJ @156
= @157
EXIT

APPEND RCHLOEJ
IF WEIGHT #20 ~Global("ChloeWonEdwinCR","GLOBAL",1)~ THEN BEGIN b15
   SAY @158
   IF ~~ THEN REPLY @159 GOTO b17
   IF ~~ THEN REPLY @160 GOTO b16
END

IF ~~ THEN BEGIN b16
   SAY @161
   IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN b17
   SAY @162
   IF ~~ THEN DO ~SetGlobal("ChloeWonEdwinCR","GLOBAL",2)~ EXIT
END
END

APPEND EDWINJ
IF WEIGHT #20 ~Global("EdwinWonChloeCR","GLOBAL",1)~ THEN BEGIN b18
   SAY @163
   = @164
   IF ~~ THEN REPLY @165 GOTO b19
   IF ~~ THEN REPLY @166 GOTO b20
END

IF ~~ THEN BEGIN b19
   SAY @167
   IF ~~ THEN DO ~SetGlobal("EdwinWonChloeCR","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN b20
   SAY @168
   IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END
END



// ~~ Third ~~ Edwina

CHAIN IF WEIGHT #-10 ~Global("EdwinBanter3CR","GLOBAL",1)~ THEN RCHLOEJ b21
@169 DO ~RealSetGlobalTimer("BanteringTimerCR","GLOBAL",2400)~
== EDWINJ @170 DO ~SetGlobal("EdwinBanter3CR","GLOBAL",2)~
== RCHLOEJ @171
== EDWINJ @172
EXIT



// *** Viconia ***

// ~~ First ~~

CHAIN IF WEIGHT #-10 ~Global("ViconiaBanter1CR","GLOBAL",1)~ THEN RCHLOEJ b22
@173 DO ~RealSetGlobalTimer("BanteringTimerCR","GLOBAL",2400)~
== VICONIJ @174 DO ~SetGlobal("ViconiaBanter1CR","GLOBAL",2)~
== RCHLOEJ @175
== VICONIJ @176
== RCHLOEJ @177
== VICONIJ @178
== RCHLOEJ @179
EXIT



// ~~ Second ~~

CHAIN IF WEIGHT #-10 ~Global("ViconiaBanter2CR","GLOBAL",1)~ THEN VICONIJ b23
@180 DO ~RealSetGlobalTimer("BanteringTimerCR","GLOBAL",2400)~
== RCHLOEJ @181 DO ~SetGlobal("ViconiaBanter2CR","GLOBAL",2)~
== VICONIJ @182
== RCHLOEJ @183
== VICONIJ @184
EXIT


// ~~ Third ~~ After Battle

CHAIN IF WEIGHT #-10 ~Global("ViconiaBanter3CR","GLOBAL",1)~ THEN RCHLOEJ b24
@185 DO ~RealSetGlobalTimer("BanteringTimerCR","GLOBAL",2400)~
== VICONIJ @186 DO ~SetGlobal("ViconiaBanter3CR","GLOBAL",2)~
== RCHLOEJ @187
== VICONIJ @188
== RCHLOEJ @189
== VICONIJ @190
== RCHLOEJ @191
== VICONIJ @192
== RCHLOEJ @193
== VICONIJ @194
== RCHLOEJ @195
== VICONIJ IF ~Gender(Player1,MALE)~ THEN @196
== VICONIJ IF ~Gender(Player1,FEMALE)~ THEN @197
EXIT


// ~~ Fourth ~~

CHAIN IF WEIGHT #-10 ~Global("ViconiaBanter4CR","GLOBAL",1)~ THEN VICONIJ b25
@198 DO ~RealSetGlobalTimer("BanteringTimerCR","GLOBAL",2400)~
== RCHLOEJ @199 DO ~SetGlobal("ViconiaBanter4CR","GLOBAL",2)~
== VICONIJ @200 DO ~SetGlobal("NoMoreViconiaBantersCR","GLOBAL",1)~
== RCHLOEJ @201
== VICONIJ @202
== RCHLOEJ @203
== VICONIJ @204
== RCHLOEJ @205
== VICONIJ @206
EXIT




// *** Aerie ***


// ~~ First ~~ 


CHAIN IF WEIGHT #-10 ~Global("AerieBanter1CR","GLOBAL",1)~ THEN RCHLOEJ b26
@207 DO ~SetGlobal("AerieBanter1CR","GLOBAL",2) RealSetGlobalTimer("BanteringTimerCR","GLOBAL",2400)~
== AERIEJ @208 
== RCHLOEJ @209
== AERIEJ @210
== AERIEJ @211
== RCHLOEJ @212
== AERIEJ @213
EXIT


// ~~ Second ~~

CHAIN IF WEIGHT #-10 ~Global("AerieBanter2CR","GLOBAL",1)~ THEN AERIEJ b27
@214
== RCHLOEJ @215 DO ~SetGlobal("AerieBanter2CR","GLOBAL",2) RealSetGlobalTimer("BanteringTimerCR","GLOBAL",2400)~
== AERIEJ @216 
== RCHLOEJ @217
== AERIEJ @218
== RCHLOEJ @219
== RCHLOEJ @220
== AERIEJ @221
== RCHLOEJ @222
== AERIEJ @223
== RCHLOEJ @224
== AERIEJ @225
== RCHLOEJ @226
== AERIEJ @227
== RCHLOEJ @228
== AERIEJ @229
EXIT


// ~~ Third ~~

CHAIN IF WEIGHT #-10 ~Global("AerieBanter3CR","GLOBAL",1)~ THEN RCHLOEJ b28
@230 DO ~SetGlobal("AerieBanter3CR","GLOBAL",2) SetGlobal("NoMoreAerieBantersCR","GLOBAL",1) RealSetGlobalTimer("BanteringTimerCR","GLOBAL",2400)~
== AERIEJ @231 
== RCHLOEJ @232 
== AERIEJ @233
== RCHLOEJ @234
== AERIEJ @235
== RCHLOEJ @236
== AERIEJ @237
== RCHLOEJ @238
== RCHLOEJ @239
== AERIEJ @240
== RCHLOEJ @215
== AERIEJ @241
== RCHLOEJ @242
== AERIEJ @243
== RCHLOEJ @244
== AERIEJ @245
== RCHLOEJ @246
EXIT



// *** Korgan ***


// ~~ First ~~

CHAIN IF WEIGHT #-10 ~Global("KorganBanter1CR","GLOBAL",1)~ THEN KORGANJ b29
@247 DO ~RealSetGlobalTimer("BanteringTimerCR","GLOBAL",2400)~
== RCHLOEJ @248 DO ~SetGlobal("KorganBanter1CR","GLOBAL",2)~
== KORGANJ @249 DO ~RealSetGlobalTimer("HadKorgan1TimerCR","GLOBAL",1800)~
== RCHLOEJ @250
== KORGANJ @251
== RCHLOEJ @252
== KORGANJ @253
== RCHLOEJ @254
== KORGANJ @255
== RCHLOEJ @256
== KORGANJ @257
== RCHLOEJ @258
EXIT


// ~~ Second ~~


CHAIN IF WEIGHT #-10 ~Global("KorganBanter2CR","GLOBAL",1)~ THEN RCHLOEJ b30
@259 DO ~RealSetGlobalTimer("BanteringTimerCR","GLOBAL",2400)~
== KORGANJ @260 DO ~SetGlobal("KorganBanter2CR","GLOBAL",2)~
== RCHLOEJ @261
== KORGANJ @262
EXIT

// ~~ Third ~~

CHAIN IF WEIGHT #-10 ~Global("KorganBanter3CR","GLOBAL",1)~ THEN RCHLOEJ b31
@263 DO ~RealSetGlobalTimer("BanteringTimerCR","GLOBAL",2400)~
== KORGANJ @264 DO ~SetGlobal("KorganBanter3CR","GLOBAL",2)~
EXIT

// ~~ Fourth ~~

CHAIN IF WEIGHT #-10 ~Global("KorganBanter4CR","GLOBAL",1)~ THEN RCHLOEJ b32
@265 DO ~RealSetGlobalTimer("BanteringTimerCR","GLOBAL",2400)~
== KORGANJ @266 DO ~SetGlobal("KorganBanter4CR","GLOBAL",2)~
== RCHLOEJ @267 DO ~SetGlobal("NoMoreKorganBantersCR","GLOBAL",1)~
== KORGANJ @268
== RCHLOEJ @269
== KORGANJ @270
== RCHLOEJ @271
== KORGANJ @272
== RCHLOEJ @273
EXIT


// *** Valygar ***

// ~~ First ~~

CHAIN IF WEIGHT #-10 ~Global("ValygarBanter1CR","GLOBAL",1)~ THEN RCHLOEJ b33
@274 DO ~RealSetGlobalTimer("BanteringTimerCR","GLOBAL",2400)~
== VALYGARJ @275 DO ~SetGlobal("ValygarBanter1CR","GLOBAL",2)~
== RCHLOEJ @276
== VALYGARJ @277
== RCHLOEJ @278
== VALYGARJ @279
== RCHLOEJ @280
== VALYGARJ @281
== RCHLOEJ @282
== VALYGARJ @283
== RCHLOEJ @284
EXIT

// ~~ Second ~~

CHAIN IF WEIGHT #-10 ~Global("ValygarBanter2CR","GLOBAL",1)~ THEN VALYGARJ b34
@285 DO ~RealSetGlobalTimer("BanteringTimerCR","GLOBAL",2400)~
== RCHLOEJ @286 DO ~SetGlobal("ValygarBanter2CR","GLOBAL",2)~
== VALYGARJ @287 DO ~SetGlobal("NoMoreValygarBantersCR","GLOBAL",1)~
== RCHLOEJ @288
== VALYGARJ @289
EXIT

// *** Anomen ***

// ~~ First ~~

CHAIN IF WEIGHT #-10 ~Global("AnomenBanter1CR","GLOBAL",1)~ THEN ANOMENJ b35
@290 DO ~RealSetGlobalTimer("BanteringTimerCR","GLOBAL",2400)~
== RCHLOEJ @291 DO ~SetGlobal("AnomenBanter1CR","GLOBAL",2)~
== ANOMENJ @292
== RCHLOEJ @293
== ANOMENJ @294
== RCHLOEJ @295
== ANOMENJ @296
== RCHLOEJ @297
== ANOMENJ @298
== RCHLOEJ @299
== ANOMENJ @300
EXIT

// ~~ Second ~~

CHAIN IF WEIGHT #-10 ~Global("AnomenBanter2CR","GLOBAL",1)~ THEN RCHLOEJ b36
@301 DO ~RealSetGlobalTimer("BanteringTimerCR","GLOBAL",2400)~
== ANOMENJ @302 DO ~SetGlobal("AnomenBanter2CR","GLOBAL",2)~
== RCHLOEJ @303
== ANOMENJ @304
== RCHLOEJ @305
== ANOMENJ @306
== RCHLOEJ @307
EXIT

// ~~ Third ~~ Knight

CHAIN IF WEIGHT #-10 ~Global("AnomenBanter3CR","GLOBAL",1) Global("AnomenIsKnight","GLOBAL",1)~ THEN RCHLOEJ b37
@308 DO ~RealSetGlobalTimer("BanteringTimerCR","GLOBAL",2400)~
== ANOMENJ @309 DO ~SetGlobal("AnomenBanter3CR","GLOBAL",2)~
== RCHLOEJ @310 DO ~SetGlobal("NoMoreAnomenBantersCR","GLOBAL",1)~
== ANOMENJ @311
== RCHLOEJ @312
== ANOMENJ @313
== RCHLOEJ @314
== ANOMENJ @315
EXIT

// ~~ Third ~~ Not knight

CHAIN IF WEIGHT #-10 ~Global("AnomenBanter3CR","GLOBAL",1) Global("AnomenIsNotKnight","GLOBAL",1)~ THEN RCHLOEJ b38
@316 DO ~RealSetGlobalTimer("BanteringTimerCR","GLOBAL",2400)~
== ANOMENJ @317 DO ~SetGlobal("AnomenBanter3CR","GLOBAL",2)~
== RCHLOEJ @318 DO ~SetGlobal("NoMoreAnomenBantersCR","GLOBAL",1)~
== ANOMENJ @319
== RCHLOEJ @320
== ANOMENJ @315
EXIT


// *** Cernd ***

// ~~ First ~~ 

CHAIN IF WEIGHT #-10 ~Global("CerndBanter1CR","GLOBAL",1)~ THEN RCHLOEJ b39
@321 DO ~RealSetGlobalTimer("BanteringTimerCR","GLOBAL",2400)~
== CERNDJ @322 DO ~SetGlobal("CerndBanter1CR","GLOBAL",2)~
== RCHLOEJ @323 DO ~SetGlobal("NoMoreCerndBantersCR","GLOBAL",1)~
== CERNDJ @324
== RCHLOEJ @325
== CERNDJ @326
== RCHLOEJ @327
== CERNDJ @328
== RCHLOEJ @329
EXIT

// ~~ Second ~~ -Ok, not really a banter so much as dialogue that pops up when Cernd tries to rejoin after baby

CHAIN IF WEIGHT #-10 ~Global("KickedOut","LOCALS",1) Global("CerndBaby","GLOBAL",1) Detect("RChloe") !StateCheck("RChloe",STATE_SLEEPING)~ THEN CERNDP b40
@330 DO ~RealSetGlobalTimer("BanteringTimerCR","GLOBAL",2400)~
== RCHLOEJ @331
== CERNDP @332 DO ~SetGlobal("CerndRejoiningTheThingCR","GLOBAL",2)~
== RCHLOEJ @333
== CERNDP @334
== RCHLOEJ @335
== CERNDP @336
== RCHLOEJ @337
== CERNDP @338
== RCHLOEJ @339
== CERNDP @340
== RCHLOEJ @341
== CERNDP @342 DO ~EscapeArea()~
EXIT



// *** Jan ***

// ~~ First ~~ 

CHAIN IF WEIGHT #-10 ~Global("JanBanter1CR","GLOBAL",1)~ THEN RCHLOEJ b41
@343 DO ~RealSetGlobalTimer("BanteringTimerCR","GLOBAL",2400)~
== JANJ @344 DO ~SetGlobal("JanBanter1CR","GLOBAL",2)~
== RCHLOEJ @345
== JANJ @346
== JANJ @347
== JANJ @348
== RCHLOEJ @349
== JANJ @350
== RCHLOEJ @351
== JANJ @352
== RCHLOEJ @353
== JANJ @354
== JANJ @355
== RCHLOEJ @356
== JANJ @357
== RCHLOEJ @358
== JANJ @359
== RCHLOEJ @360
== JANJ @361
== RCHLOEJ @362
== JANJ @363
== RCHLOEJ @135
EXIT

// ~~ Second ~~

CHAIN IF WEIGHT #-10 ~Global("JanBanter2CR","GLOBAL",1)~ THEN JANJ b42
@364 DO ~RealSetGlobalTimer("BanteringTimerCR","GLOBAL",2400)~
== RCHLOEJ @365 DO ~SetGlobal("JanBanter2CR","GLOBAL",2)~
== JANJ @366 DO ~SetGlobal("NoMoreJanBantersCR","GLOBAL",1)~
== RCHLOEJ @367
== JANJ @368
== JANJ IF ~IsValidForPartyDialog("Mazzy")~ THEN @369
== MAZZYJ IF ~IsValidForPartyDialog("Mazzy")~ THEN @370
== RCHLOEJ @371
== JANJ @372
== RCHLOEJ @373
== JANJ @374
== RCHLOEJ @375
== JANJ @376
== RCHLOEJ @377
== JANJ @378
EXIT



// *** Yoshimo ***

// ~~ First ~~ 

CHAIN IF WEIGHT #-10 ~Global("YoshimoBanter1CR","GLOBAL",1)~ THEN RCHLOEJ b43
@379 DO ~RealSetGlobalTimer("BanteringTimerCR","GLOBAL",2400)~
== YOSHJ @380 DO ~SetGlobal("YoshimoBanter1CR","GLOBAL",2)~
== RCHLOEJ @381
== YOSHJ @382
== RCHLOEJ @383
== YOSHJ @384
== RCHLOEJ @385
== YOSHJ @386
== RCHLOEJ @387
== YOSHJ @388
EXIT

// ~~ Second ~~

CHAIN IF WEIGHT #-10 ~Global("YoshimoBanter2CR","GLOBAL",1)~ THEN YOSHJ b44
@389 DO ~RealSetGlobalTimer("BanteringTimerCR","GLOBAL",2400)~
== RCHLOEJ @390 DO ~SetGlobal("YoshimoBanter2CR","GLOBAL",2)~
== YOSHJ @391 DO ~SetGlobal("NoMoreYoshimoBantersCR","GLOBAL",1)~
== RCHLOEJ @392
== YOSHJ @393
== RCHLOEJ @394
== YOSHJ @395
== RCHLOEJ @396
EXIT


// *** Nalia ***

// ~~ First ~~ 

CHAIN IF WEIGHT #-10 ~Global("NaliaBanter1CR","GLOBAL",1)~ THEN RCHLOEJ b45
@397 DO ~RealSetGlobalTimer("BanteringTimerCR","GLOBAL",2400)~
== NALIAJ @398 DO ~SetGlobal("NaliaBanter1CR","GLOBAL",2)~
== RCHLOEJ @399
== NALIAJ @400
== RCHLOEJ @401
== NALIAJ @402
EXIT

// ~~ Second ~~

CHAIN IF WEIGHT #-10 ~Global("NaliaBanter2CR","GLOBAL",1)~ THEN RCHLOEJ b46
@403 DO ~RealSetGlobalTimer("BanteringTimerCR","GLOBAL",2400)~
== NALIAJ @404 DO ~SetGlobal("NaliaBanter2CR","GLOBAL",2)~
== RCHLOEJ @405
== NALIAJ @406
== RCHLOEJ @407
== NALIAJ @408
== RCHLOEJ @409
== NALIAJ @410
== RCHLOEJ @411
== NALIAJ @412
== RCHLOEJ @413
== NALIAJ @414
== RCHLOEJ @415
== NALIAJ @416
== RCHLOEJ @417
== NALIAJ @418
== RCHLOEJ @419
== NALIAJ @420
EXIT


// ~~ Third ~~

CHAIN IF WEIGHT #-10 ~Global("NaliaBanter3CR","GLOBAL",1)~ THEN NALIAJ b47
@421 DO ~RealSetGlobalTimer("BanteringTimerCR","GLOBAL",2400)~
== RCHLOEJ @422 DO ~SetGlobal("NaliaBanter3CR","GLOBAL",2)~
== NALIAJ @423 DO ~SetGlobal("NoMoreNaliaBantersCR","GLOBAL",1)~
== RCHLOEJ @424
== NALIAJ @425
== RCHLOEJ @426
== NALIAJ @427
== RCHLOEJ @428
== NALIAJ @429
== RCHLOEJ @430
== NALIAJ @431
== RCHLOEJ @432
== NALIAJ @433
EXIT


// *** Keldorn ***

// ~~ First ~~ 

CHAIN IF WEIGHT #-10 ~Global("KeldornBanter1CR","GLOBAL",1)~ THEN KELDORJ b48
@434 DO ~RealSetGlobalTimer("BanteringTimerCR","GLOBAL",2400)~
== RCHLOEJ @435 DO ~SetGlobal("KeldornBanter1CR","GLOBAL",2)~
== KELDORJ @436
== RCHLOEJ @437
== KELDORJ @438
== RCHLOEJ @439
== KELDORJ @440
== RCHLOEJ @441
== KELDORJ @442
== RCHLOEJ @443
== KELDORJ @444
== RCHLOEJ @445
== KELDORJ @446
== RCHLOEJ @447
== KELDORJ @448
EXIT


// ~~ Second ~~

CHAIN IF WEIGHT #-10 ~Global("KeldornBanter2CR","GLOBAL",1)~ THEN RCHLOEJ b49
@449 DO ~RealSetGlobalTimer("BanteringTimerCR","GLOBAL",2400)~
== KELDORJ @450 DO ~SetGlobal("KeldornBanter2CR","GLOBAL",2)~
== RCHLOEJ @451
== KELDORJ @452
== RCHLOEJ @453
== KELDORJ @454
== RCHLOEJ @455
== KELDORJ @456
== RCHLOEJ @457
== KELDORJ @458
== RCHLOEJ @459
== KELDORJ @460
EXIT

// ~~ Third ~~

CHAIN IF WEIGHT #-10 ~Global("KeldornBanter3CR","GLOBAL",1)~ THEN KELDORJ b50
@461 DO ~RealSetGlobalTimer("BanteringTimerCR","GLOBAL",2400)~
== RCHLOEJ @462 DO ~SetGlobal("KeldornBanter3CR","GLOBAL",2)~
== KELDORJ @463 DO ~SetGlobal("KeldornTrainingWithChloeCR","GLOBAL",1)~
== KELDORJ @464
== RCHLOEJ @465
== KELDORJ @466
== RCHLOEJ @467
== KELDORJ @468
== RCHLOEJ @469
== KELDORJ @470
== RCHLOEJ @471
== KELDORJ @472
EXIT

// ~~ Fourth ~~

CHAIN IF WEIGHT #-10 ~Global("KeldornBanter4CR","GLOBAL",1)~ THEN RCHLOEJ b51
@473 DO ~RealSetGlobalTimer("BanteringTimerCR","GLOBAL",2400)~
== KELDORJ @474 DO ~SetGlobal("KeldornBanter4CR","GLOBAL",2)~
== RCHLOEJ @475 DO ~SetGlobal("NoMoreKeldornBantersCR","GLOBAL",1)~
== KELDORJ @476
== RCHLOEJ @477
== KELDORJ @478
== RCHLOEJ @479
== KELDORJ @480
== RCHLOEJ @481
== KELDORJ @482
== RCHLOEJ @483
EXIT


// *** Mazzy ***

// ~~ First ~~

CHAIN IF WEIGHT #-10 ~Global("MazzyBanter1CR","GLOBAL",1)~ THEN RCHLOEJ b52
@484 DO ~RealSetGlobalTimer("BanteringTimerCR","GLOBAL",2400)~
== MAZZYJ @485 DO ~SetGlobal("MazzyBanter1CR","GLOBAL",2)~
== RCHLOEJ @486
== MAZZYJ @487
== RCHLOEJ @488
== MAZZYJ @489
== RCHLOEJ @490
== MAZZYJ @491
EXIT

// ~~ Second ~~

CHAIN IF WEIGHT #-10 ~Global("MazzyBanter2CR","GLOBAL",1)~ THEN MAZZYJ b53
@492 DO ~RealSetGlobalTimer("BanteringTimerCR","GLOBAL",2400)~
== RCHLOEJ @493 DO ~SetGlobal("MazzyBanter2CR","GLOBAL",2)~
== MAZZYJ @494 DO ~SetGlobal("NoMoreMazzyBantersCR","GLOBAL",1)~
== RCHLOEJ @495
== MAZZYJ @496
== RCHLOEJ @497
== MAZZYJ @498
== RCHLOEJ @499
== MAZZYJ @500
== RCHLOEJ @501
== MAZZYJ @502
END RCHLOEJ b54

APPEND RCHLOEJ
IF ~~ THEN BEGIN b54
   SAY @503
   IF ~~ THEN REPLY @504 GOTO b55
   IF ~~ THEN REPLY @505 EXTERN MAZZYJ b56
END
END

CHAIN RCHLOEJ b55
@506
== MAZZYJ @507
EXIT

CHAIN MAZZYJ b56
@508 DO ~SetGlobal("KickedOut","LOCALS",1) LeaveParty() SetGlobal("MazzyHappy","GLOBAL",1) RevealAreaOnMap("AR2000") EscapeAreaMove("AR2002",341,400,12)~
== RCHLOEJ @509
EXIT



// *** Haer'Dalis ***

// ~~ First ~~ 

CHAIN IF WEIGHT #-10 ~Global("HaerDalisBanter1CR","GLOBAL",1)~ THEN HAERDAJ b57
@510 DO ~RealSetGlobalTimer("BanteringTimerCR","GLOBAL",2400)~
== RCHLOEJ @511 DO ~SetGlobal("HaerDalisBanter1CR","GLOBAL",2)~
== HAERDAJ @512
== RCHLOEJ @513
== HAERDAJ @514
== RCHLOEJ @515
== HAERDAJ @516
== RCHLOEJ @517
== HAERDAJ @518
== RCHLOEJ @519
== HAERDAJ @520
== HAERDAJ @521
== RCHLOEJ @522
== HAERDAJ @523
EXIT

// ~~ Second ~~

CHAIN IF WEIGHT #-10 ~Global("HaerDalisBanter2CR","GLOBAL",1)~ THEN HAERDAJ b58
@524 DO ~RealSetGlobalTimer("BanteringTimerCR","GLOBAL",2400)~
== RCHLOEJ @525 DO ~SetGlobal("HaerDalisBanter2CR","GLOBAL",2)~
== HAERDAJ @526
== RCHLOEJ @527
== HAERDAJ @528	
== RCHLOEJ @529
== HAERDAJ @530
== RCHLOEJ @531
== HAERDAJ @532
== RCHLOEJ @533
== HAERDAJ @534
== RCHLOEJ @535
== RCHLOEJ @536
== HAERDAJ @537
== RCHLOEJ @538
== HAERDAJ @539
== RCHLOEJ @540
== HAERDAJ @541
EXIT

// ~~ Third ~~

CHAIN IF WEIGHT #-10 ~Global("HaerDalisBanter3CR","GLOBAL",1)~ THEN RCHLOEJ b59
@542 DO ~RealSetGlobalTimer("BanteringTimerCR","GLOBAL",2400)~
== HAERDAJ @543 DO ~SetGlobal("HaerDalisBanter3CR","GLOBAL",2)~
== RCHLOEJ @544
== HAERDAJ @545
== RCHLOEJ @546
== HAERDAJ @547
== RCHLOEJ @548
== HAERDAJ @549
== RCHLOEJ @550
== HAERDAJ @551
== RCHLOEJ @552
EXIT

// ~~ Fourth ~~

CHAIN IF WEIGHT #-10 ~Global("HaerDalisBanter4CR","GLOBAL",1)~ THEN RCHLOEJ b60
@553 DO ~SetGlobal("NoMoreHaerDalisBantersCR","GLOBAL",1) RealSetGlobalTimer("BanteringTimerCR","GLOBAL",2400)~
== HAERDAJ @554 DO ~SetGlobal("HaerDalisBanter4CR","GLOBAL",2)~
END RCHLOEJ b61

APPEND RCHLOEJ 
IF ~~ THEN BEGIN b61
   SAY @555
   IF ~~ THEN REPLY @556 EXTERN HAERDAJ b63
   IF ~~ THEN REPLY @557 GOTO b62
END
END

CHAIN RCHLOEJ b62
@558
== HAERDAJ @559
EXIT

CHAIN HAERDAJ b63
@560 DO ~SetGlobal("KickedOut","LOCALS",1) LeaveParty() SetGlobal("Happy","LOCALS",1) EscapeAreaMove("AR0510",1430,311,2)~
== RCHLOEJ @561
EXIT




//////////////////////////////////////////////////////////////////////




// *** Imoen - Chloe romance ***

// ~~ First ~~


CHAIN IF WEIGHT #-3 ~Global("ImoenChloeLovetalksCR","GLOBAL",2)~ THEN RCHLOEJ ImCh1
@562 DO ~SetGlobal("ImoenChloeLovetalksCR","GLOBAL",3)~
== IMOEN2J @563
== IMOEN2J @564
== RCHLOEJ @565
== IMOEN2J @566
== RCHLOEJ @567
== IMOEN2J @568
== RCHLOEJ @569
== IMOEN2J @570
== RCHLOEJ @571
== JAHEIRAJ IF ~IsValidForPartyDialog("Jaheira")~ THEN @572
== IMOEN2J @573
== RCHLOEJ @574
== IMOEN2J @575
== RCHLOEJ @576
EXIT


// ~~ Second ~~ this one might have to be changed in order to fit with Imoen's Romance mod. That depends on Lucy...

CHAIN IF WEIGHT #-3 ~Global("ImoenChloeLovetalksCR","GLOBAL",4)~ THEN RCHLOEJ ImCh2
@577 DO ~SetGlobal("ImoenChloeLovetalksCR","GLOBAL",5)~
== IMOEN2J @578
== RCHLOEJ @579
== IMOEN2J @580
== RCHLOEJ @581
== IMOEN2J @582
== IMOEN2J @583
== RCHLOEJ @584
== IMOEN2J @585
== IMOEN2J @586
== RCHLOEJ @587
== IMOEN2J @588
== RCHLOEJ @589
== IMOEN2J @590
EXIT


// ~~ Third ~~ when in camp

CHAIN IF WEIGHT #-3 ~Global("ImoenChloeLovetalksCR","GLOBAL",6)~ THEN RCHLOEJ ImCh3
@591 DO ~SetGlobal("ImoenChloeLovetalksCR","GLOBAL",7)~
== IMOEN2J @592
== KORGANJ IF ~IsValidForPartyDialog("Korgan")~ THEN @593
== RCHLOEJ @594
== IMOEN2J @595
== RCHLOEJ @596
== IMOEN2J @597
== RCHLOEJ @598
== IMOEN2J @599
== RCHLOEJ @600
== IMOEN2J @601
== RCHLOEJ @602
== IMOEN2J @603
== RCHLOEJ @604
== RCHLOEJ @605
== IMOEN2J @606
== AERIEJ IF ~IsValidForPartyDialog("Aerie")~ THEN  @607
== RCHLOEJ @608
== IMOEN2J @609 DO~RestParty()~
EXIT



// ~~ Fourth ~~


CHAIN IF WEIGHT #-3 ~Global("ImoenChloeLovetalksCR","GLOBAL",8)~ THEN RCHLOEJ ImCh4
@610 DO ~SetGlobal("ImoenChloeLovetalksCR","GLOBAL",9)~
== IMOEN2J @611
== RCHLOEJ @612
== IMOEN2J @613
== RCHLOEJ @614
== IMOEN2J @615
== RCHLOEJ @616
== IMOEN2J @617
== RCHLOEJ @618
== IMOEN2J @619
== RCHLOEJ @620
== IMOEN2J @621
== RCHLOEJ @622
== IMOEN2J @623
== RCHLOEJ @624
== IMOEN2J @625
== RCHLOEJ @626
== IMOEN2J @627
== RCHLOEJ @628
EXIT


// ~~ Fifth ~~


CHAIN IF WEIGHT #-3 ~Global("ImoenChloeLovetalksCR","GLOBAL",10)~ THEN RCHLOEJ ImCh5
@629 DO ~SetGlobal("ImoenChloeLovetalksCR","GLOBAL",11)~
== IMOEN2J @630
== RCHLOEJ @631
== IMOEN2J @632
== RCHLOEJ @633
== IMOEN2J @634
== RCHLOEJ @635
== IMOEN2J @636
== RCHLOEJ @637
== IMOEN2J @638
== RCHLOEJ @639
== IMOEN2J @640
== RCHLOEJ @641
EXIT


// ~~ Sixth ~~ Camp. Looks like Chloe will *really* need a ChloeD.bcs...


CHAIN IF WEIGHT #-3 ~Global("ImoenChloeLovetalksCR","GLOBAL",12)~ THEN RCHLOEJ ImCh6
@642 DO ~SetGlobal("ImoenChloeLovetalksCR","GLOBAL",13)~
== IMOEN2J @643
== RCHLOEJ @644
== IMOEN2J @645
== RCHLOEJ @646
== IMOEN2J @647
== RCHLOEJ @648
== IMOEN2J @649
== RCHLOEJ @650
== IMOEN2J @651
== RCHLOEJ @652
== IMOEN2J @653
== RCHLOEJ @654
== IMOEN2J @655
== RCHLOEJ @656
== IMOEN2J @657
== RCHLOEJ @658
== IMOEN2J @659
== RCHLOEJ @660
== IMOEN2J @661 DO~RestParty()~
EXIT



// ~~ Seventh ~~ After that night


CHAIN IF WEIGHT #-3 ~Global("ImoenChloeLovetalksCR","GLOBAL",14)~ THEN RCHLOEJ ImCh7
@662 DO ~SetGlobal("ImoenChloeLovetalksCR","GLOBAL",15)~
== IMOEN2J @663
== RCHLOEJ @664
== IMOEN2J @665
== RCHLOEJ @666
== IMOEN2J @667
== RCHLOEJ @668
== IMOEN2J @669
== RCHLOEJ @670
== IMOEN2J @671
== RCHLOEJ @672
EXIT



// ~~ Eighth ~~



CHAIN IF WEIGHT #-3 ~Global("ImoenChloeLovetalksCR","GLOBAL",16)~ THEN IMOEN2J ImCh8
@673 DO ~SetGlobal("ImoenChloeLovetalksCR","GLOBAL",17)~
== RCHLOEJ @674
== IMOEN2J @675
== RCHLOEJ @676
== IMOEN2J @677
== RCHLOEJ @678
== IMOEN2J @679
== RCHLOEJ @680
== IMOEN2J @681
== RCHLOEJ @682
== IMOEN2J @683
== IMOEN2J @684
EXIT


// ~~ 9th ~~ (alright, alright, I don't know if it's ninth or nineth, so WHAT!?)


CHAIN IF WEIGHT #-3 ~Global("ImoenChloeLovetalksCR","GLOBAL",18)~ THEN RCHLOEJ ImCh9
@685 DO ~SetGlobal("ImoenChloeLovetalksCR","GLOBAL",19)~
== IMOEN2J @686
== RCHLOEJ @687
== IMOEN2J @688
== RCHLOEJ @689
EXIT


// ~~ Tenth ~~ camp


CHAIN IF WEIGHT #-3 ~Global("ImoenChloeLovetalksCR","GLOBAL",20)~ THEN RCHLOEJ ImCh10
@690 DO ~SetGlobal("ImoenChloeLovetalksCR","GLOBAL",21)~
== IMOEN2J @691
== RCHLOEJ @692
== IMOEN2J @693
== RCHLOEJ @694
== IMOEN2J @695
== RCHLOEJ @696
EXIT


// ~~ Eleventh ~~


APPEND IMOEN2J
IF WEIGHT #-3 ~Global("ImoenChloeLovetalksCR","GLOBAL",22)~ THEN BEGIN ImCh11
   SAY @697
   IF ~~ THEN REPLY @698 DO ~SetGlobal("ImoenChloeLovetalksCR","GLOBAL",23)~ GOTO ImCh14
   IF ~~ THEN REPLY @699 DO ~SetGlobal("ImoenChloeLovetalksCR","GLOBAL",23)~ GOTO ImCh13
   IF ~~ THEN REPLY @700 DO ~SetGlobal("ImoenChloeLovetalksCR","GLOBAL",23)~ GOTO ImCh12
END

IF ~~ THEN BEGIN ImCh12
   SAY @701
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ImCh13
   SAY @702
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ImCh14
   SAY @703
   IF ~~ THEN REPLY @704 GOTO ChIm14d
   IF ~~ THEN REPLY @705 GOTO ChIm14c
   IF ~~ THEN REPLY @706 GOTO ChIm14b
   IF ~~ THEN REPLY @707 GOTO ChIm14a
END

IF ~~ THEN BEGIN ChIm14a
   SAY @708
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ChIm14b
   SAY @709
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ChIm14c
   SAY @710
   IF ~~ THEN REPLY @711 GOTO ChIm14c4
   IF ~~ THEN REPLY @712 GOTO ChIm14c3
   IF ~~ THEN REPLY @713 GOTO ChIm14c2
   IF ~~ THEN REPLY @714 GOTO ChIm14c1
END

IF ~~ THEN BEGIN ChIm14c1
   SAY @715
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ChIm14c2
   SAY @716
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ChIm14c3
   SAY @717
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ChIm14c4
   SAY @718
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ChIm14d
   SAY @719
   IF ~~ THEN REPLY @720 GOTO ChIm14d1
   IF ~~ THEN REPLY @721 GOTO ChIm14d2
END

IF ~~ THEN BEGIN ChIm14d1
   SAY @722
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ChIm14d2
   SAY @723
   IF ~~ THEN EXIT
END
END


// ~~ Twelveth ~~ final for SoA


CHAIN IF WEIGHT #-3 ~Global("ImoenChloeLovetalksCR","GLOBAL",24)~ THEN RCHLOEJ ImCh12
@724 DO ~SetGlobal("ImoenChloeLovetalksCR","GLOBAL",25)~
== IMOEN2J @725
== RCHLOEJ @726
== IMOEN2J @727
== IMOEN2J @728
== AERIEJ IF ~IsValidForPartyDialog("Aerie")~ THEN @729
== RCHLOEJ @730
== IMOEN2J @731
== RCHLOEJ @732
== IMOEN2J @214
== RCHLOEJ @733
== IMOEN2J @734
== RCHLOEJ @735
== IMOEN2J @736
== RCHLOEJ @737
== IMOEN2J @738
== RCHLOEJ @739
== IMOEN2J @740
== RCHLOEJ @741
== IMOEN2J @742
== RCHLOEJ @743
== IMOEN2J @744
== RCHLOEJ @745
EXIT






//////////////////////////////////////////////////////////////////////




// *** Interjections ***


// ~~ To others NPC's in the party ~~


I_C_T BNALIA 18 azucarCR1
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @746
END

I_C_T BMINSC 35 azucarCR2
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @747
END

I_C_T BANOMEN 12 azucarCR3
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @748
== BANOMEN IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @749
END

I_C_T BANOMEN 79 azucarCR4
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @750
== BANOMEN IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @751
END

I_C_T BANOMEN 138 azucarCR5
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @752
END

I_C_T BANOMEN 262 azucarCR6
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @753
== BANOMEN IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @754
END

I_C_T BANOMEN 341 azucarCR7
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @755
== BANOMEN IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @756
END

I_C_T BANOMEN 349 azucarCR8
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @757
END

I_C_T BANOMEN 350 azucarCR9
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @758
END

I_C_T BANOMEN 358 azucarCR10
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe") !Global("ChloeRomanceActiveCR","GLOBAL",3)~ THEN @759
END

I_C_T BANOMEN 416 azucarCR11
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @760
== BANOMEN IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @761
END

I_C_T BANOMEN 425 azucarCR12
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe") !Global("ChloeRomanceActiveCR","GLOBAL",3)~ THEN @759
== BANOMEN IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @762
END

I_C_T BMAZZY 40 azucarCR13
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @763
== BMAZZY IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @764
END

I_C_T BAERIE 55 azucarCR14
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @765
== BAERIE IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @766
== BJAHEIR IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @767
END

I_C_T BMAZZY 105 azucarCR15
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @768
END

I_C_T BMAZZY 106 azucarCR16
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @769
END

I_C_T BJAHEIR 203 azucarCR17
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @770
END

I_C_T BJAHEIR 205 azucarCR18
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @770
END

I_C_T BJAHEIR 304 azucarCR19
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @771
END

I_C_T BCERND 14 azucarCR20
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @772
END



// ~~ To quests ~~


I_C_T YOSHIMO 0 azucarCR21
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @773
END

I_C_T JAHEIRAJ 338 azucarCR22
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @774
== JAHEIRAJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @775
END

I_C_T VAMPIRE1 7 azucarCR23
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @776
END

I_C_T ISHADMT1 1 azucarCR24
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @777
END

I_C_T CIRCG1 8 azucarCR25
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @778
END

I_C_T AERIE 0 azucarCR26
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @779
END

I_C_T AERIE 3 azucarCR27
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @780
END

I_C_T AERIE 26 azucarCR28
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @781
END

I_C_T KALAH2 5 azucarCR29
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @782
END

CHAIN IF WEIGHT #-10 ~Detect("RChloe") Global("IlmaterFlubCR","GLOBAL",0) AreaCheck("AR0703")~ THEN SLILMAT ChloeBarbarian
@783 DO ~SetGlobal("IlmaterFlubCR","GLOBAL",1)~
= @784
END SLILMAT 0

I_C_T GAELAN 21 azucarCR30
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @785
END

I_C_T GAELAN 29 azucarCR31
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @786
END

CHAIN IF WEIGHT #-10 ~Detect("RChloe") !Global("ChloeWaylaneCR","GLOBAL",1)~ THEN WAYLANE ChWay1
@787 DO ~SetGlobal("ChloeWaylaneCR","GLOBAL",1)~
== RCHLOEJ @788
== WAYLANE @789
== RCHLOEJ @790
== WAYLANE @791
== RCHLOEJ @792
== WAYLANE @793
EXIT

I_C_T LEHTIN 10 azucarCR32
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @794
END

I_C_T HENDAK 1 azucarCR33
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @795
END

I_C_T HENDAK 18 azucarCR34
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @796
END

CHAIN IF ~!InPartySlot(LastTalkedToBy,0) Name("RChloe",LastTalkedToBy)~ THEN SALVANAS ChloeFieryRedHead
@797
== RCHLOEJ @798
== SALVANAS @799
== RCHLOEJ @800
== SALVANAS @801
== RCHLOEJ @802
== SALVANAS @803
EXIT

I_C_T NALIA 13 azucarCR35
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @804
END

I_C_T TORGAL 0 azucarCR36
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @805
END

EXTEND_BOTTOM DELCIA 16
IF ~See("RChloe") !Dead("RChloe") InParty("RChloe") InParty("Nalia") !InParty("Valen")~ THEN DO ~SetGlobal("DelceaMove","GLOBAL",1) ActionOverride("kpsold01",EscapeArea()) SetGlobal("DelciaLeave","GLOBAL",1) EscapeAreaMove("AR1300",768,3310,8)~ UNSOLVED_JOURNAL #7262 EXTERN RCHLOEJ DelciaCom
END

APPEND RCHLOEJ
IF ~~ THEN BEGIN DelciaCom
   SAY @806
   IF ~~ THEN EXIT
END
END

I_C_T NALIAJ 108 azucarCR38
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @807
== NALIAJ IF ~IsValidForPartyDialog("Nalia")~ THEN @808
END

INTERJECT ISAEA 26 azucarCR39
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @809
END ISAEA 27

I_C_T ISAEA 29 azucarCR40
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @810
END

I_C_T INSPECT 13 azucarCR41
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @811
END

I_C_T MURDGIRL 1 azucarCR42
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @812
== MURDGIRL IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @813
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @814
== MURDGIRL IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @815
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @816
== MURDGIRL IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @817
END

I_C_T MURDGIRL 0 azucarCR42a
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @812
== MURDGIRL IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @813
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @814
== MURDGIRL IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @815
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @816
== MURDGIRL IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @817
END


I_C_T VICONI 2 azucarCR43
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @818
END

I_C_T CORNEIL 11 BribedCowled
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @819
END

I_C_T UHMAY01 18 azucarCR45
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @820
END

I_C_T MAZZY 13 azucarCR46
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @821
END

INTERJECT SASSAR 15 azucarCR47
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @822
END SASSAR 16

I_C_T SASSAR 28 azucarCR48
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @823
END


CHAIN IF WEIGHT #-10 ~Detect("RChloe") !Global("RenalHasTalkedWithChloeCR","GLOBAL",1)~ THEN RENAL ChloeRenal1
@824 DO ~SetGlobal("RenalHasTalkedWithChloeCR","GLOBAL",1)~
== RCHLOEJ @825
== RENAL @826
== RCHLOEJ @827
== RENAL @828
== RCHLOEJ @829
== RENAL @830
== RCHLOEJ @831
== RCHLOEJ @832
== RENAL @833
== RCHLOEJ @834
== RENAL @835 DO ~GiveGoldForce(3000)~
END RCHLOEJ ShortySheSays

APPEND RCHLOEJ
IF ~~ THEN BEGIN ShortySheSays
   SAY @836
   IF ~~ THEN EXIT
   IF ~Global("Talked0TimesCR","GLOBAL",1)~ THEN EXTERN RENAL Shorty1
END
END

APPEND RENAL
IF ~~ THEN BEGIN Shorty1
   SAY @837
   IF ~~ THEN GOTO 1
   IF ~ReactionLT([PC],FRIENDLY_LOWER) !InParty("Yoshimo")~ THEN GOTO 0
   IF ~ReactionGT([PC],NEUTRAL_UPPER) !InParty("Yoshimo")~ THEN GOTO 1
   IF ~See("Yoshimo") InParty("Yoshimo")~ THEN GOTO 95
   IF ~InParty("Yoshimo") OR(2) !See("Yoshimo") Dead("Yoshimo")~ THEN GOTO 108
END
END

I_C_T RENAL 30 azucarCR49
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @838
END

I_C_T EDWIN 8 azucarCR50
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @839
END

I_C_T EDWIN 27 azucarCR51
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @840
END

I_C_T MAEVAR 31 azucarCR52
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @841
END

EXTEND_BOTTOM TRGYP02 2
IF ~Name("RChloe",LastTalkedToBy) !Global("TalkedToChloeGypsyCR","GLOBAL",1)~ THEN DO ~SetGlobal("TalkedToChloeGypsyCR","GLOBAL",1)~ GOTO chloegypsy1
END

CHAIN TRGYP02 chloegypsy1
@842
== RCHLOEJ @843
EXIT

INTERJECT CELOGAN 0 azucarCR55
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @844
END CELOGAN ChloeCelogan
INTERJECT CELOGAN 1 azucarCR55a
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @844
END CELOGAN ChloeCelogan
INTERJECT CELOGAN 2 azucarCR55b
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @844
END CELOGAN ChloeCelogan

APPEND CELOGAN
IF ~~ THEN BEGIN ChloeCelogan
   SAY @845
   COPY_TRANS CELOGAN 1
END
END

CHAIN IF WEIGHT #-10 ~NumTimesTalkedTo(0) See("RChloe") !StateCheck("RChloe",STATE_SLEEPING)~ THEN ARAN ChAran1
@846
== RCHLOEJ @847
== ARAN @848
END ARAN 0

I_C_T ARAN 4 azucarCR56
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @849
END

I_C_T ARAN 13 azucarCR57
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @850
END

I_C_T ARAN 20 azucarCR58
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @851
END

I_C_T ARAN 40 azucarCR59
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @852
END

I_C_T ARAN 53 azucarCR60
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @853
END

I_C_T BODHI 1 azucarCR61
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @854
END

I_C_T BODHI 6 azucarCR62
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @855
END

EXTEND_BOTTOM BODHI 28
IF ~See("RChloe") !Dead("RChloe") InParty("RChloe") Global("AzucarCR63","GLOBAL",0)~ THEN DO ~MoveToPointNoInterrupt([648.1028])
UnLock("DOOR12")
OpenDoor("DOOR12")
SetGlobal("BodhiAppear","GLOBAL",2)
SetGlobal("BodhiJob","GLOBAL",1)
SetGlobal("WorkingForBodhi","GLOBAL",1)
EscapeArea()
SetGlobal("AzucarCR63","GLOBAL",1)~ EXTERN RCHLOEJ BodhiC1
END

APPEND RCHLOEJ
IF ~~ THEN BEGIN BodhiC1
   SAY @856
  IF ~!IsValidForPartyDialog("Jan")
!IsValidForPartyDialog("Aerie")
!IsValidForPartyDialog("Nalia")
!IsValidForPartyDialog("Edwin")~ THEN EXIT
  IF ~IsValidForPartyDialog("Jan")~ THEN EXTERN ~JANJ~ 118
  IF ~!IsValidForPartyDialog("Jan")
IsValidForPartyDialog("Aerie")~ THEN EXTERN ~AERIEJ~ 89
  IF ~!IsValidForPartyDialog("Jan")
!IsValidForPartyDialog("Aerie")
IsValidForPartyDialog("Nalia")~ THEN EXTERN ~NALIAJ~ 254
  IF ~!IsValidForPartyDialog("Jan")
!IsValidForPartyDialog("Aerie")
!IsValidForPartyDialog("Nalia")
IsValidForPartyDialog("Edwin")~ THEN EXTERN ~EDWINJ~ 77
END
END

I_C_T BODHI 45 azucarCR64
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @857
END

I_C_T BODHI 72 azucarCR65
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @858
END

I_C_T BODHI 94 azucarCR66
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @859
END

I_C_T UDSVIR03 23 azucarCR67
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @860
END

I_C_T UDSVIR03 31 azucarCR68
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @861
END

I_C_T UDSILVER 14 azucarCR69
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @862
END

I_C_T UDSILVER 20 azucarCR70
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @863
END

I_C_T UDSILVER 27 azucarCR71
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @864
END

I_C_T IDJINNI 7 ChloeAdvicesAboutFlaskyCR
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @865
END

I_C_T YOSHJ 113 azucarCR72
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @866
END

EXTEND_BOTTOM GAELAN 66
IF ~!Dead("RChloe") InParty("RChloe")~ THEN DO ~GiveItem("MISC4S",[PC])~ EXTERN RCHLOEJ ThiefKey
END

APPEND RCHLOEJ
IF ~~ THEN BEGIN ThiefKey
   SAY @867
   IF ~!IsValidForPartyDialog("Keldorn")
!IsValidForPartyDialog("Yoshimo")
!IsValidForPartyDialog("Jaheira")
!IsValidForPartyDialog("Anomen")
!IsValidForPartyDialog("Edwin")~ THEN DO ~SetGlobal("Linvail","GLOBAL",1)~ EXIT
  IF ~IsValidForPartyDialog("Keldorn")~ THEN DO ~SetGlobal("Linvail","GLOBAL",1)~ EXTERN ~KELDORJ~ 141
  IF ~!IsValidForPartyDialog("Keldorn")
IsValidForPartyDialog("Yoshimo")~ THEN DO ~SetGlobal("Linvail","GLOBAL",1)~ EXTERN ~YOSHJ~ 61
  IF ~!IsValidForPartyDialog("Keldorn")
!IsValidForPartyDialog("Yoshimo")
IsValidForPartyDialog("Jaheira")~ THEN DO ~SetGlobal("Linvail","GLOBAL",1)~ EXTERN ~JAHEIRAJ~ 385
  IF ~!IsValidForPartyDialog("Keldorn")
!IsValidForPartyDialog("Yoshimo")
!IsValidForPartyDialog("Jaheira")
IsValidForPartyDialog("Anomen")~ THEN DO ~SetGlobal("Linvail","GLOBAL",1)~ EXTERN ~ANOMENJ~ 212
  IF ~!IsValidForPartyDialog("Keldorn")
!IsValidForPartyDialog("Yoshimo")
!IsValidForPartyDialog("Jaheira")
!IsValidForPartyDialog("Anomen")
IsValidForPartyDialog("Edwin")~ THEN DO ~SetGlobal("Linvail","GLOBAL",1)~ EXTERN ~EDWINJ~ 64
END
END

I_C_T LUCY 0 azucarCR74
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @868
END

// Chloe and Talos' faith

EXTEND_BOTTOM TALVILON 54
IF ~InParty("RChloe") !Dead("RChloe")~ THEN EXTERN RCHLOEJ Talos1
END

APPEND RCHLOEJ
IF ~~ THEN BEGIN Talos1
   SAY @869
   = @870
   IF ~~ THEN REPLY @871 GOTO Talos1a
   IF ~~ THEN REPLY @872 GOTO Talos1b
END

IF ~~ THEN BEGIN Talos1a
   SAY @873
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Talos1b
   SAY @874
   IF ~~ THEN DO ~SetGlobal("TalonWar","GLOBAL",1) SetGlobal("TempleShout0902","GLOBAL",1) LeaveParty() Enemy() Attack(Player1)~ EXIT
END
END

// Aerie and her blankets

I_C_T BAERIE 69 azucarCR75
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @875
== BAERIE IF ~See("RChloe") !Dead("RChloe") InParty("RChloe") OR(2) Global("ChloeRomanceActiveCR","GLOBAL",1) Global("ChloeRomanceActiveCR","GLOBAL",2)~ THEN @876
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe") OR(2) Global("ChloeRomanceActiveCR","GLOBAL",1) Global("ChloeRomanceActiveCR","GLOBAL",2)~ THEN @877
== BAERIE IF ~See("RChloe") !Dead("RChloe") InParty("RChloe") OR(2) Global("ChloeRomanceActiveCR","GLOBAL",1) Global("ChloeRomanceActiveCR","GLOBAL",2)~ THEN @878
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe") OR(2) Global("ChloeRomanceActiveCR","GLOBAL",1) Global("ChloeRomanceActiveCR","GLOBAL",2)~ THEN @879

== BAERIE IF ~See("RChloe") !Dead("RChloe") InParty("RChloe") !Global("ChloeRomanceActiveCR","GLOBAL",1) !Global("ChloeRomanceActiveCR","GLOBAL",2)~ THEN @880
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe") !Global("ChloeRomanceActiveCR","GLOBAL",1) !Global("ChloeRomanceActiveCR","GLOBAL",2)~ THEN @881
== BAERIE IF ~See("RChloe") !Dead("RChloe") InParty("RChloe") !Global("ChloeRomanceActiveCR","GLOBAL",1) !Global("ChloeRomanceActiveCR","GLOBAL",2)~ THEN @882
END

I_C_T BAERIE 70 azucarCR76
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @883
== BAERIE IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @884
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @885
== BAERIE IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @886
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @887
END

// Sweetroll

I_C_T BAERIE 75 azucarCR77
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @888
== BAERIE IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @889
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @890
END

// The Thespian bent

I_C_T BHAERDA 63 azucarCR78
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @891
END

// Imoen gets back her soul

I_C_T IMOEN2J 15 azucarCR79
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @892
== IMOEN2J IF ~See("RChloe") !Dead("RChloe") InParty("RChloe") Global("ImoenChloeRomanceActiveCR","GLOBAL",1)~ THEN @893
== IMOEN2J IF ~See("RChloe") !Dead("RChloe") InParty("RChloe") Global("ChloeRomanceActiveCR","GLOBAL",1)~ THEN @894
END

// RChloe in hell

I_C_T PLAYER1 25 azucarCR80
== RCHLOEJ IF ~InParty("RChloe") !Dead("RChloe") !StateCheck("RChloe",STATE_SLEEPING)~ THEN @895
END

// Final battle talk

I_C_T HELLJON 7 azucarCR81
== RCHLOEJ IF ~InParty("RChloe") !Dead("RChloe") !StateCheck("RChloe",STATE_SLEEPING)~ THEN @896
END

// Slayer Change

I_C_T IMOEN2J 6 azucarCR82
== RCHLOEJ IF ~See("RChloe") !Dead("RChloe") InParty("RChloe")~ THEN @897
END
