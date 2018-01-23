*version 9.1 2884707947
u 87
X? 2
V? 2
R? 2
C? 3
DSTM? 3
? 6
U? 2
@libraries
@analysis
.TRAN 1 0 0 0
+0 0ns
+1 24us
.OPT 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
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
pageloc 1 0 4732 
@status
n 0 110:00:10:11:30:38;1263119438 e 
s 0 110:00:10:11:30:41;1263119441 e 
*page 1 0 970 720 iA
@ports
port 16 AGND 560 270 h
@parts
part 58 c 270 250 v
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C2
a 0 ap 9 0 15 0 hln 100 REFDES=C2
part 72 7404 510 180 h
a 0 sp 11 0 40 40 hln 100 PART=7404
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 0 a 0:13 0 0 0 hln 100 PKGREF=U1
a 0 ap 9 0 28 8 hln 100 REFDES=U1A
part 18 r 340 150 v
a 0 u 13 0 15 25 hln 100 VALUE=1k
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 15 0 hln 100 REFDES=R1
part 19 c 340 250 v
a 0 u 13 0 15 25 hln 100 VALUE=1n
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C1
a 0 ap 9 0 15 0 hln 100 REFDES=C1
part 3 VDC 690 170 h
a 1 u 13 0 -11 18 hcn 100 DC=5V
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 a 0:13 0 0 0 hln 100 PKGREF=V1
a 1 ap 9 0 24 7 hcn 100 REFDES=V1
part 2 555D 390 170 h
a 0 sp 11 0 66 100 hlb 100 PART=555D
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP8
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=X1
a 1 ap 9 0 70 8 hln 100 REFDES=X1
part 67 STIM1 250 170 h
a 0 u 0 0 0 80 hln 100 COMMAND1=0s 1
a 0 u 0 0 0 90 hln 100 COMMAND2=1us 0
a 0 a 0:13 0 0 0 hln 100 PKGREF=DSTM1
a 0 ap 9 0 1 -2 hln 100 REFDES=DSTM1
a 0 u 0 0 0 100 hln 100 COMMAND3=1.1us 1
a 0 u 0 0 0 110 hln 100 COMMAND4=3us 0
a 0 u 0 0 0 120 hln 100 COMMAND5=3.1us 1
a 0 u 0 0 0 130 hln 100 COMMAND6=3.2us 0
a 0 u 0 0 0 140 hln 100 COMMAND7=3.3us 1
a 0 u 0 0 0 150 hln 100 COMMAND8=3.4us 0
a 0 u 0 0 0 160 hln 100 COMMAND9=3.5us 1
a 0 u 0 0 0 170 hln 100 COMMAND10=5us 0
a 0 u 0 0 0 180 hln 100 COMMAND11=5.2us 1
a 0 u 0 0 0 190 hln 100 COMMAND12=7us 0
a 0 u 0 0 0 10 hln 100 COMMAND13=7.2us 1
a 0 u 0 0 0 20 hln 100 COMMAND14=9us 0
part 80 STIM1 280 50 h
a 0 u 0 0 0 80 hln 100 COMMAND1=0s 1
a 0 u 0 0 0 100 hln 100 COMMAND3=
a 0 a 0:13 0 0 0 hln 100 PKGREF=DSTM2
a 0 ap 9 0 1 -2 hln 100 REFDES=DSTM2
a 0 u 0 0 0 90 hln 100 COMMAND2=15us 0
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 300 95 hrn 100 PAGENO=1
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
part 70 nodeMarker 350 200 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=2
part 75 nodeMarker 500 180 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=3
part 77 nodeMarker 280 170 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=4
part 85 nodeMarker 360 50 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=5
@conn
w 60
a 0 up 0:33 0 0 0 hln 100 V=
s 390 190 270 190 59
a 0 up 33 0 330 189 hct 100 V=
s 270 190 270 220 61
w 64
a 0 up 0:33 0 0 0 hln 100 V=
s 270 250 270 270 63
s 340 250 340 270 33
s 690 210 690 270 10
s 690 270 560 270 12
a 0 up 33 0 625 269 hct 100 V=
s 440 270 440 240 14
s 560 270 440 270 17
s 340 270 440 270 35
s 270 270 340 270 65
w 43
a 0 up 0:33 0 0 0 hln 100 V=
s 390 210 360 210 42
s 390 200 360 200 20
s 360 210 360 200 44
s 340 220 340 200 29
s 340 200 340 150 48
a 0 up 33 0 342 175 hlt 100 V=
s 340 200 350 200 46
s 350 200 360 200 71
w 74
a 0 up 0:33 0 0 0 hln 100 LVL=
s 490 180 500 180 73
a 0 up 33 0 500 179 hct 100 LVL=
s 500 180 510 180 76
w 50
a 0 up 0:33 0 0 0 hln 100 V=
s 390 170 280 170 49
a 0 up 33 0 320 169 hct 100 V=
s 280 170 250 170 78
w 5
a 0 up 0:33 0 0 0 hln 100 V=
s 440 140 440 100 4
s 440 100 690 100 6
a 0 up 33 0 565 99 hct 100 V=
s 690 100 690 170 8
s 340 110 340 100 37
s 340 100 440 100 39
w 82
a 0 up 0:33 0 0 0 hln 100 V=
a 0 up 0:33 0 0 0 hln 100 LVL=
s 280 50 360 50 81
s 390 180 370 180 51
s 370 50 370 180 83
a 0 up 33 0 372 115 hlt 100 LVL=
s 360 50 370 50 86
@junction
j 440 140
+ p 2 VCC
+ w 5
j 690 170
+ p 3 +
+ w 5
j 440 270
+ w 64
+ w 64
j 340 110
+ p 18 2
+ w 5
j 440 100
+ w 5
+ w 5
j 390 210
+ p 2 DISCHARGE
+ w 43
j 390 200
+ p 2 THRESHOLD
+ w 43
j 340 150
+ p 18 1
+ w 43
j 340 220
+ p 19 2
+ w 43
j 340 200
+ w 43
+ w 43
j 360 200
+ w 43
+ w 43
j 390 170
+ p 2 TRIGGER
+ w 50
j 390 190
+ p 2 CONTROL
+ w 60
j 270 220
+ p 58 2
+ w 60
j 270 250
+ p 58 1
+ w 64
j 340 250
+ p 19 1
+ w 64
j 690 210
+ p 3 -
+ w 64
j 440 240
+ p 2 GND
+ w 64
j 560 270
+ s 16
+ w 64
j 340 270
+ w 64
+ w 64
j 350 200
+ p 70 pin1
+ w 43
j 490 180
+ p 2 OUTPUT
+ w 74
j 510 180
+ p 72 A
+ w 74
j 500 180
+ p 75 pin1
+ w 74
j 280 170
+ p 77 pin1
+ w 50
j 280 50
+ p 80 pin1
+ w 82
j 390 180
+ p 2 RESET
+ w 82
j 250 170
+ p 67 pin1
+ w 50
j 360 50
+ p 85 pin1
+ w 82
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
