*version 9.1 175306740
u 329
U? 18
DSTM? 5
? 12
C? 3
V? 4
PM? 3
R? 3
@libraries
@analysis
.TRAN 1 0 0 0
+0 0ns
+1 10u
.OPT 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
DIGINITSTATE 2
DIGIOLVL 1
@targets
@attributes
@translators
a 0 u 13 0 0 0 hln 100 PCBOARDS=PCB
a 0 u 13 0 0 0 hln 100 PSPICE=PSPICE
a 0 u 13 0 0 0 hln 100 XILINX=XILINX
@setup
unconnectedPins 0
connectViaLabel 0
connectViaLocalLabels 0
NoStim4ExtIFPortsWarnings 1
AutoGenStim4ExtIFPorts 1
@index
pageloc 1 0 7694 
@status
n 0 110:11:02:15:07:47;1291298867 e 
s 2832 110:11:02:15:07:47;1291298867 e 
c 110:11:02:15:07:45;1291298865
*page 1 0 970 720 iA
@ports
port 110 HI 800 300 h
port 105 HI 800 150 h
@parts
part 65 7404 360 350 h
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 0 ap 9 0 28 8 hln 100 REFDES=U1A
a 0 a 0:13 0 0 0 hln 100 PKGREF=U1
part 66 7408 450 350 h
a 0 sp 11 0 40 50 hln 100 PART=7408
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 0 ap 9 0 40 0 hln 100 REFDES=U2A
a 0 a 0:13 0 0 0 hln 100 PKGREF=U2
part 67 7408 450 410 h
a 0 sp 11 0 40 50 hln 100 PART=7408
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 0 a 0:13 0 0 0 hln 100 PKGREF=U3
a 0 ap 9 0 40 0 hln 100 REFDES=U3A
part 81 DigClock 310 250 h
a 0 x 0:13 0 0 0 hln 100 PKGREF=Clk
a 1 xp 9 0 0 -2 hln 100 REFDES=Clk
part 83 STIM1 310 390 h
a 0 u 0 0 0 90 hln 100 COMMAND2=1us 1
a 0 x 0:13 0 0 0 hln 100 PKGREF=Sel
a 0 xp 9 0 1 -2 hln 100 REFDES=Sel
part 70 74126 850 330 D
a 0 sp 11 0 40 50 hln 100 PART=74126
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 0 ap 9 0 40 0 hln 100 REFDES=U6A
a 0 a 0:13 0 0 0 hln 100 PKGREF=U6
part 69 74126 580 360 v
a 0 sp 11 0 40 50 hln 100 PART=74126
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 0 a 0:13 0 0 0 hln 100 PKGREF=U5
a 0 ap 9 0 40 0 hln 100 REFDES=U5A
part 290 74126 710 500 v
a 0 sp 11 0 40 50 hln 100 PART=74126
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 0 a 0:13 0 0 0 hln 100 PKGREF=U15
a 0 ap 9 0 40 0 hln 100 REFDES=U15A
part 68 7474 770 230 h
a 0 sp 11 0 40 80 hln 100 PART=7474
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 0 ap 9 0 40 8 hln 100 REFDES=U4A
a 0 a 0:13 0 0 0 hln 100 PKGREF=U4
part 313 7408 610 230 h
a 0 sp 11 0 40 50 hln 100 PART=7408
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 0 a 0:13 0 0 0 hln 100 PKGREF=U17
a 0 ap 9 0 40 0 hln 100 REFDES=U17A
part 82 STIM1 310 350 h
a 0 u 0 0 0 90 hln 100 COMMAND2=2us 1
a 0 x 0:13 0 0 0 hln 100 PKGREF=rw
a 0 xp 9 0 1 -2 hln 100 REFDES=rw
a 0 u 0 0 0 100 hln 100 COMMAND3=4us 0
a 0 u 0 0 0 110 hln 100 COMMAND4=5us 1
part 84 STIM1 720 520 h
a 0 u 0 0 0 90 hln 100 COMMAND2=0.2us 1
a 0 u 0 0 0 80 hln 100 COMMAND1=0s Z
a 0 x 0:13 0 0 0 hln 100 PKGREF=data_in
a 0 xp 9 0 1 -2 hln 100 REFDES=data_in
a 0 u 0 0 0 100 hln 100 COMMAND3=3us 0
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
part 92 nodeMarker 530 360 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=5
part 94 nodeMarker 330 350 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=6
part 96 nodeMarker 320 390 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=7
part 87 nodeMarker 870 230 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=Q
a 0 a 0 0 4 22 hlb 100 LABEL=2
part 90 nodeMarker 560 420 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=4
part 204 nodeMarker 740 220 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=9
part 85 nodeMarker 830 450 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=data:pin1
a 0 a 0 0 4 22 hlb 100 LABEL=1
part 206 nodeMarker 730 180 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=D
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=10
part 98 nodeMarker 330 250 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=8
part 327 nodeMarker 730 520 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=11
@conn
w 3
a 0 up 0:33 0 0 0 hln 100 LVL=
s 410 350 450 350 2
a 0 up 33 0 430 349 hct 100 LVL=
w 39
a 0 up 0:33 0 0 0 hln 100 LVL=
s 430 410 430 390 38
s 430 370 430 390 42
s 450 370 430 370 44
s 450 410 430 410 46
s 430 390 320 390 80
a 0 up 33 0 375 389 hct 100 LVL=
s 320 390 310 390 97
w 100
a 0 sr 0:3 0 550 418 hcn 100 LABEL=B
a 0 up 0:33 0 0 0 hln 100 LVL=
s 520 420 560 420 18
a 0 sr 3 0 550 418 hcn 100 LABEL=B
a 0 up 33 0 550 419 hct 100 LVL=
s 730 420 560 420 91
s 850 330 730 330 22
s 730 330 730 420 20
w 5
a 0 sr 0:3 0 760 228 hcn 100 LABEL=Q
a 0 up 0:33 0 0 0 hln 100 LVL=
s 830 230 870 230 4
a 0 sr 3 0 850 228 hcn 100 LABEL=Q
a 0 up 33 0 850 229 hct 100 LVL=
s 870 230 880 230 88
s 880 230 880 330 111
w 118
a 0 up 0:33 0 0 0 hln 100 LVL=
s 800 300 800 280 14
a 0 up 33 0 802 290 hlt 100 LVL=
w 119
a 0 up 0:33 0 0 0 hln 100 LVL=
s 800 150 800 200 108
a 0 up 33 0 802 175 hlt 100 LVL=
w 29
a 0 sr 0 0 0 0 hln 100 LABEL=rw
a 0 up 0:33 0 0 0 hln 100 LVL=
s 330 350 310 350 95
a 0 sr 3 0 320 348 hcn 100 LABEL=rw
s 340 430 450 430 28
a 0 up 33 0 395 429 hct 100 LVL=
s 340 350 340 430 30
s 360 350 340 350 34
s 340 350 330 350 78
w 184
a 0 sr 0:3 0 775 448 hcn 100 LABEL=data
a 0 up 0:33 0 0 0 hln 100 LVL=
s 740 450 830 450 291
a 0 sr 3 0 775 448 hcn 100 LABEL=data
s 830 450 880 450 86
s 880 450 880 380 54
s 610 360 610 450 50
a 0 up 33 0 612 405 hlt 100 LVL=
s 610 450 740 450 128
w 239
a 0 up 0:33 0 0 0 hln 100 V=
a 0 sr 0 0 0 0 hln 100 LABEL=D
a 0 up 0:33 0 0 0 hln 100 LVL=
s 770 230 740 230 8
a 0 sr 3 0 755 228 hcn 100 LABEL=D
a 0 up 33 0 755 229 hct 100 LVL=
a 0 up 33 0 755 229 hct 100 V=
s 610 310 610 280 138
s 610 280 500 280 140
s 500 280 500 180 142
s 740 180 740 220 176
s 740 220 740 230 205
s 500 180 730 180 282
a 0 up 33 0 555 179 hct 100 LVL=
a 0 up 33 0 580 179 hct 100 V=
s 730 180 740 180 302
w 25
a 0 up 0:33 0 0 0 hln 100 LVL=
s 330 250 310 250 99
s 330 250 420 250 305
s 420 250 420 230 307
s 420 230 610 230 309
a 0 up 33 0 515 229 hct 100 LVL=
w 17
a 0 sr 0:3 0 550 358 hcn 100 LABEL=A
a 0 up 0:33 0 0 0 hln 100 LVL=
s 560 360 530 360 316
a 0 sr 3 0 550 358 hcn 100 LABEL=A
s 570 360 560 360 294
s 580 360 570 360 16
a 0 up 33 0 550 359 hct 100 LVL=
s 530 360 520 360 93
s 570 360 570 500 292
s 570 500 710 500 295
s 560 360 560 250 314
s 560 250 610 250 317
w 320
a 0 up 0:33 0 0 0 hln 100 LVL=
s 720 240 720 250 321
s 720 250 770 250 323
a 0 up 33 0 745 249 hct 100 LVL=
s 720 240 680 240 325
w 298
a 0 up 0:33 0 0 0 hln 100 LVL=
s 720 520 730 520 297
s 740 520 740 500 299
a 0 up 33 0 742 510 hlt 100 LVL=
s 730 520 740 520 328
@junction
j 340 350
+ w 29
+ w 29
j 430 390
+ w 39
+ w 39
j 410 350
+ p 65 Y
+ w 3
j 360 350
+ p 65 A
+ w 29
j 450 350
+ p 66 A
+ w 3
j 520 360
+ p 66 Y
+ w 17
j 450 370
+ p 66 B
+ w 39
j 520 420
+ p 67 Y
+ w 100
j 450 430
+ p 67 B
+ w 29
j 450 410
+ p 67 A
+ w 39
j 580 360
+ p 69 G
+ w 17
j 310 350
+ p 82 pin1
+ w 29
j 560 420
+ p 90 pin1
+ w 100
j 530 360
+ p 92 pin1
+ w 17
j 330 350
+ p 94 pin1
+ w 29
j 320 390
+ p 96 pin1
+ w 39
j 310 390
+ p 83 pin1
+ w 39
j 310 250
+ p 81 1
+ w 25
j 330 250
+ p 98 pin1
+ w 25
j 870 230
+ p 87 pin1
+ w 5
j 880 330
+ p 70 A
+ w 5
j 830 230
+ p 68 Q
+ w 5
j 800 200
+ p 68 \PRE\
+ w 119
j 800 280
+ p 68 \CLR\
+ w 118
j 850 330
+ p 70 G
+ w 100
j 830 450
+ p 85 pin1
+ w 184
j 880 380
+ p 70 Y
+ w 184
j 800 300
+ s 110
+ w 118
j 800 150
+ s 105
+ w 119
j 610 310
+ p 69 Y
+ w 239
j 770 230
+ p 68 D
+ w 239
j 740 220
+ p 204 pin1
+ w 239
j 610 360
+ p 69 A
+ w 184
j 740 450
+ p 290 Y
+ w 184
j 570 360
+ w 17
+ w 17
j 710 500
+ p 290 G
+ w 17
j 740 500
+ p 290 A
+ w 298
j 730 180
+ p 206 pin1
+ w 239
j 610 230
+ p 313 A
+ w 25
j 560 360
+ w 17
+ w 17
j 610 250
+ p 313 B
+ w 17
j 770 250
+ p 68 CLK
+ w 320
j 680 240
+ p 313 Y
+ w 320
j 730 520
+ p 327 pin1
+ w 298
j 720 520
+ p 84 pin1
+ w 298
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
