100 REM*** KHL V.11***
105 FLAG=0
110 COLOUR 0,0
115 X=10:Y=7
120 PRINT CHR$(147)
140 T=1
150 GOSUB 2000
190 VO=54296:A1=54277:A2=54284:A3=54291
200 S1=54278:S2=54285:S3=54292
210 W1=54276:W2=54283:W3=54290
220 H1=54273:H2=54280:H3=54287
230 L1=54272:L2=54279:L3=54286
240 FOR G=54272 TO 54296
250 POKE G,O
260 NEXT G
270 XX=0
280 PRINT AT(X,Y)"."
290 GOSUB 360
295 IF JOY>10 THEN FLAG=1
300 XX=XX+1
310 GOSUB 400
315 IF JOY>10 THEN FLAG=1
320 IF XX<2 THEN FOR TD=1 TO 60: NEXT TD
330 IF XX=2 THEN XX=0: GOSUB 610
335 IF JOY>10 THEN FLAG=1
340 F=INKEY:IF F=1 THEN GOSUB 1510:END
343 IF JOY>10 THEN FLAG=1
345 IF FLAG=1 THEN GOTO 120
350 GOTO 290
360 REM*** VELD PRINTEN **
370 PRINT AT(11,2)C$:PRINT AT(29,2)G$:PRINT AT(2,12)A$:PRINT AT(20,12)E$
380 PRINT AT(37,12)B$:PRINT AT(11,22)F$:PRINT AT (29,22)D$
390 RETURN
400 REM*** JOYTICK ***
410 A=JOY+1
420 ON A GOTO 430,440,450,460,470,480,490,500,510
430 P=Y:Q=X:GOTO 520
440 P=Y-1:Q=X:GOTO 520
450 P=Y-1:Q=X+1:GOTO 520
460 P=Y:Q=X+1:GOTO 520
470 P=Y+1:Q=X+1:GOTO 520
480 P=Y+1:Q=X:GOTO 520
490 P=Y+1:Q=X-1:GOTO 520
500 P=Y:Q=X-1:GOTO 520
510 P=Y-1:Q=X-1:GOTO 520
520 IF Q<1 THEN Q=1
530 IF Q>38 THEN Q=38
540 IF P<1 THEN P=1
550 IF P>23 THEN P=23
560 PRINT AT(X,Y)CHR$(144);"*";CHR$(5)
570 PRINT AT(Q,P)"*"
580 GOSUB 360
590 X=Q:Y=P
600 RETURN
610 REM*** WELKE DRIEHOEK ***
620 IF Y>12 THEN GOTO 660
630 IF Y>1.1*X-10 THEN GOSUB 690:RETURN
640 IF Y>1.1*X+34 THEN GOSUB 950:RETURN
650 GOSUB 820:RETURN
660 IF Y<1.1*X+34 THEN GOSUB 1080:RETURN
670 IF Y<1.1*X-10 THEN GOSUB 1340:RETURN
680 GOSUB 1210:RETURN
690 REM*** DRIEHOEK 1 ***
700 DC=ABS(X-11)+ABS(Y-2)
710 DA=ABS(X-2)+ABS(Y-12)
720 DE=ABS(X-20)+ABS(Y-12)
730 VC=240-13*DC:IF VC<0 THEN VC=0
740 VA=240-13*DA:IF VA<0 THEN VA=0
750 VE=240-13*DE:IF VE<0 THEN VE=0
760 POKE S1,VC:POKE S2,VA:POKE S2,VE
770 POKE W1,17:POKE W2,17:POKE W2,17
780 POKE H1,HC:POKE H2,HA:POKE H2,HE
790 POKE L1,LC:POKE L2,LA:POKE L2,LE
800 GOSUB 1470
810 RETURN
820 REM*** DRIEHOEK 2 ***
830 DC=ABS(X-11)+ABS(Y-2)
840 DG=ABS(X-29)+ABS(Y-2)
850 DE=ABS(X-20)+ABS(Y-12)
860 VC=240-13*DC:IF VC<0 THEN VC=0
870 VG=240-13*DG:IF VG<0 THEN VG=0
880 VE=240-13*DE:IF VE<0 THEN VE=0
890 POKE S1,VC:POKE S2,VG:POKE S2,VE
900 POKE W1,17:POKE W2,17:POKE W2,17
910 POKE H1,HC:POKE H2,HG:POKE H2,HE
920 POKE L1,LC:POKE L2,LG:POKE L2,LE
930 GOSUB 1470
940 RETURN
950 REM*** DRIEHOEK 3 ***
960 DB=ABS(X-37)+ABS(Y-12)
970 DG=ABS(X-29)+ABS(Y-2)
980 DE=ABS(X-20)+ABS(Y-12)
990 VB=240-13*DB:IF VB<0 THEN VB=0
1000 VG=240-13*DG:IF VG<0 THEN VG=0
1010 VE=240-13*DE:IF VE<0 THEN VE=0
1020 POKE S1,VB:POKE S2,VG:POKE S2,VE
1030 POKE W1,17:POKE W2,17:POKE W2,17
1040 POKE H1,HB:POKE H2,HG:POKE H2,HE
1050 POKE L1,LB:POKE L2,LG:POKE L2,LE
1060 GOSUB 1470
1070 RETURN
1080 REM*** DRIEHOEK 4 ***
1090 DF=ABS(X-11)+ABS(Y-22)
1100 DA=ABS(X-2)+ABS(Y-12)
1110 DE=ABS(X-20)+ABS(Y-12)
1120 VF=240-13*DF:IF VF<0 THEN VF=0
1130 VA=240-13*DA:IF VA<0 THEN VA=0
1140 VE=240-13*DE:IF VE<0 THEN VE=0
1150 POKE S1,VF:POKE S2,VA:POKE S2,VE
1160 POKE W1,17:POKE W2,17:POKE W2,17
1170 POKE H1,HF:POKE H2,HA:POKE H2,HE
1180 POKE L1,LF:POKE L2,LA:POKE L2,LE
1190 GOSUB 1470
1200 RETURN
1210 REM*** DRIEHOEK 5 ***
1220 DF=ABS(X-11)+ABS(Y-22)
1230 DD=ABS(X-29)+ABS(Y-22)
1240 DE=ABS(X-20)+ABS(Y-12)
1250 VF=240-13*DF:IF VF<0 THEN VF=0
1260 VD=240-13*DD:IF VD<0 THEN VD=0
1270 VE=240-13*DE:IF VE<0 THEN VE=0
1280 POKE S1,VF:POKE S2,VD:POKE S2,VE
1290 POKE W1,17:POKE W2,17:POKE W2,17
1300 POKE H1,HF:POKE H2,HD:POKE H2,HE
1310 POKE L1,LF:POKE L2,LD:POKE L2,LE
1320 GOSUB 1470
1330 RETURN
1340 REM*** DRIEHOEK 6 ***
1350 DB=ABS(X-37)+ABS(Y-12)
1360 DD=ABS(X-29)+ABS(Y-22)
1370 DE=ABS(X-20)+ABS(Y-12)
1380 VB=240-13*DB:IF VB<0 THEN VB=0
1390 VD=240-13*DD:IF VD<0 THEN VD=0
1400 VE=240-13*DE:IF VE<0 THEN VE=0
1410 POKE S1,VB:POKE S2,VD:POKE S2,VE
1420 POKE W1,17:POKE W2,17:POKE W2,17
1430 POKE H1,HB:POKE H2,HD:POKE H2,HE
1440 POKE L1,LB:POKE L2,LD:POKE L2,LE
1450 GOSUB 1470
1460 RETURN
1470 IF T=2 GOTO 1510
1480 POKE V0,15
1490 T=2
1500 RETURN
1510 POKE V0,0:POKE W1,0:POKE W2,0: POKE W3,0
1520 T=1
1530 RETURN
2000 REM*** RANDOM/6 ***
2005 FLAG=0
2010 XX=INT(RND(0)*12)+1
2020 0N XX GOTO 2030,2040,2050,2060,2070,2080,2090,2100,2110,2120,2130,2140
2030 A$="C ":HA=8,LA=147:GOTO 2210
2040 A$="C#":HA=9,LA=21:GOTO 2210
2050 A$="D ":HA=9,LA=159:GOTO 2210
2060 A$="D#":HA=10,LA=60:GOTO 2210
2070 A$="E ":HA=10,LA=205:GOTO 2210
2080 A$="F ":HA=11,LA=114:GOTO 2210
2090 A$="F#":HA=12,LA=32:GOTO 2210
2100 A$="G ":HA=12,LA=216:GOTO 2210
2110 A$="G#":HA=13,LA=156:GOTO 2210
2120 A$="A ":HA=14,LA=107:GOTO 2210
2130 A$="A#":HA=15,LA=70:GOTO 2210
2140 A$="B ":HA=16,LA=47:GOTO 2210
2210 XX=INT(RND(0)*12)+1
2220 0N XX GOTO 2230,2240,2250,2260,2270,2280,2290,2300,2310,2320,2330,2340
2230 B$="C ":HB=8,LB=147:GOTO 2400
2240 B$="C#":HB=9,LB=21:GOTO 2400
2250 B$="D ":HB=9,LB=159:GOTO 2400
2260 B$="D#":HB=10,LB=60:GOTO 2400
2270 B$="E ":HB=10,LB=205:GOTO 2400
2280 B$="F ":HB=11,LB=114:GOTO 2400
2290 B$="F#":HB=12,LB=32:GOTO 2400
2300 B$="G ":HB=12,LB=216:GOTO 2400
2310 B$="G#":HB=13,LB=156:GOTO 2400
2320 B$="A ":HB=14,LB=107:GOTO 2400
2330 B$="A#":HB=15,LB=70:GOTO 2400
2340 B$="B ":HB=16,LB=47:GOTO 2400
2400 IF B$=A$ GOTO 2210
2410 XX=INT(RND(0)*12)+1
2420 0N XX GOTO 2430,2440,2450,2460,2470,2480,2490,2500,2510,2520,2530,2540
2430 C$="C ":HC=8,LC=147:GOTO 2600
2440 C$="C#":HC=9,LC=21:GOTO 2600
2450 C$="D ":HC=9,LC=159:GOTO 2600
2460 C$="D#":HC=10,LC=60:GOTO 2600
2470 C$="E ":HC=10,LC=205:GOTO 2600
2480 C$="F ":HC=11,LC=114:GOTO 2600
2490 C$="F#":HC=12,LC=32:GOTO 2600
2500 C$="G ":HC=12,LC=216:GOTO 2600
2510 C$="G#":HC=13,LC=156:GOTO 2600
2520 C$="A ":HC=14,LC=107:GOTO 2600
2530 C$="A#":HC=15,LC=70:GOTO 2600
2540 C$="B ":HC=16,LC=47:GOTO 2600
2600 IF C$=B$ GOTO 2410
2601 IF C$=A$ GOTO 2410
2610 XX=INT(RND(0)*12)+1
2620 0N XX GOTO 2630,2640,2650,2660,2670,2680,2690,2700,2710,2720,2730,2740
2630 D$="C ":HD=8,LD=147:GOTO 2800
2640 D$="C#":HD=9,LD=21:GOTO 2800
2650 D$="D ":HD=9,LD=159:GOTO 2800
2660 D$="D#":HD=10,LD=60:GOTO 2800
2670 D$="E ":HD=10,LD=205:GOTO 2800
2680 D$="F ":HD=11,LD=114:GOTO 2800
2690 D$="F#":HD=12,LD=32:GOTO 2800
2700 D$="G ":HD=12,LD=216:GOTO 2800
2710 D$="G#":HD=13,LD=156:GOTO 2800
2720 D$="A ":HD=14,LD=107:GOTO 2800
2730 D$="A#":HD=15,LD=70:GOTO 2800
2740 D$="B ":HD=16,LD=47:GOTO 2800
2800 IF D$=C$ GOTO 2610
2801 IF D$=B$ GOTO 2610
2802 IF D$=A$ GOTO 2610
2810 XX=INT(RND(0)*12)+1
2820 0N XX GOTO 2830,2840,2850,2860,2870,2880,2890,2900,2910,2920,2930,2940
2830 E$="C ":HE=8,LE=147:GOTO 3000
2840 E$="C#":HE=9,LE=21:GOTO 3000
2850 E$="D ":HE=9,LE=159:GOTO 3000
2860 E$="D#":HE=10,LE=60:GOTO 3000
2870 E$="E ":HE=10,LE=205:GOTO 3000
2880 E$="F ":HE=11,LE=114:GOTO 3000
2890 E$="F#":HE=12,LE=32:GOTO 3000
2900 E$="G ":HE=12,LE=216:GOTO 3000
2910 E$="G#":HE=13,LE=156:GOTO 3000
2920 E$="A ":HE=14,LE=107:GOTO 3000
2930 E$="A#":HE=15,LE=70:GOTO 3000
2940 E$="B ":HE=16,LE=47:GOTO 3000
3000 IF E$=D$ GOTO 2810
3001 IF E$=C$ GOTO 2810
3002 IF E$=B$ GOTO 2810
3003 IF E$=A$ GOTO 2810
3010 XX=INT(RND(0)*12)+1
3020 0N XX GOTO 3030,3040,3050,3060,3070,3080,3090,3100,3110,3120,3130,3140
3030 F$="C ":HF=8,LF=147:GOTO 3200
3040 F$="C#":HF=9,LF=21:GOTO 3200
3050 F$="D ":HF=9,LF=159:GOTO 3200
3060 F$="D#":HF=10,LF=60:GOTO 3200
3070 F$="E ":HF=10,LF=205:GOTO 3200
3080 F$="F ":HF=11,LF=114:GOTO 3200
3090 F$="F#":HF=12,LF=32:GOTO 3200
3100 F$="G ":HF=12,LF=216:GOTO 3200
3110 F$="G#":HF=13,LF=156:GOTO 3200
3120 F$="A ":HF=14,LF=107:GOTO 3200
3130 F$="A#":HF=15,LF=70:GOTO 3200
3140 F$="B ":HF=16,LF=47:GOTO 3200
3200 IF F$=E$ GOTO 3010
3201 IF F$=D$ GOTO 3010
3202 IF F$=C$ GOTO 3010
3203 IF F$=B$ GOTO 3010
3204 IF F$=A$ GOTO 3010
3210 XX=INT(RND(0)*12)+1
3220 0N XX GOTO 3230,3240,3250,3260,3270,3280,3290,3300,3310,3320,3330,3340
3230 G$="C ":HG=8,LG=147:GOTO 3400
3240 G$="C#":HG=9,LG=21:GOTO 3400
3250 G$="D ":HG=9,LG=159:GOTO 3400
3260 G$="D#":HG=10,LG=60:GOTO 3400
3270 G$="E ":HG=10,LG=205:GOTO 3400
3280 G$="F ":HG=11,LG=114:GOTO 3400
3290 G$="F#":HG=12,LG=32:GOTO 3400
3300 G$="G ":HG=12,LG=216:GOTO 3400
3310 G$="G#":HG=13,LG=156:GOTO 3400
3320 G$="A ":HG=14,LG=107:GOTO 3400
3330 G$="A#":HG=15,LG=70:GOTO 3400
3340 G$="B ":HG=16,LG=47:GOTO 3400
3400 IF G$=F$ GOTO 3210
3400 IF G$=E$ GOTO 3210
3401 IF G$=D$ GOTO 3210
3402 IF G$=C$ GOTO 3210
3403 IF G$=B$ GOTO 3210
3404 IF G$=A$ GOTO 3210