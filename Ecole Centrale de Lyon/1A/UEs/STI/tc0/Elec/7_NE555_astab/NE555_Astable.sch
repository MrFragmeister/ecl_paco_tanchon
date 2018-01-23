*version 9.1 27883820
u 82
R? 4
C? 3
X? 2
V? 2
DSTM? 2
? 4
@libraries
@analysis
.TRAN 1 0 0 0
+0 1ns
+1 50us
+3 1ns
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
pageloc 1 0 3866 
@status
n 0 118:00:21:15:56:59;1516546619 e 
s 2832 118:00:21:15:57:03;1516546623 e 
*page 1 0 970 720 iA
@ports
port 2 GND_ANALOG 270 300 h
port 8 GND_ANALOG 420 160 v
port 9 GND_ANALOG 480 60 v
@parts
part 6 c 110 280 v
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C2
a 0 ap 9 0 15 0 hln 100 REFDES=C2
part 4 r 350 160 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R2
a 0 ap 9 0 15 0 hln 100 REFDES=R2
a 0 u 13 0 15 25 hln 100 VALUE=40k
part 10 VDC 400 60 v
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 a 0:13 0 0 0 hln 100 PKGREF=V1
a 1 ap 9 0 24 7 hcn 100 REFDES=V1
a 1 u 13 0 -11 18 hcn 100 DC=5V
part 5 c 160 280 v
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C1
a 0 ap 9 0 15 0 hln 100 REFDES=C1
part 7 555D 210 150 h
a 0 sp 11 0 66 100 hlb 100 PART=555D
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP8
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=X1
a 1 ap 9 0 70 8 hln 100 REFDES=X1
part 3 r 160 130 v
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 15 0 hln 100 REFDES=R1
part 65 r 160 220 v
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R3
a 0 ap 9 0 15 0 hln 100 REFDES=R3
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
part 55 nodeMarker 320 160 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=1
@conn
w 28
a 0 up 0:33 0 0 0 hln 100 V=
s 210 170 110 170 27
a 0 up 33 0 160 169 hct 100 V=
s 110 170 110 250 29
w 32
a 0 up 0:33 0 0 0 hln 100 V=
s 110 280 110 300 31
s 160 280 160 300 20
s 160 300 260 300 22
a 0 up 33 0 210 299 hct 100 V=
s 260 300 270 300 26
s 260 220 260 300 24
s 110 300 160 300 33
w 15
a 0 up 0:33 0 0 0 hln 100 V=
s 400 60 260 60 14
a 0 up 33 0 330 59 hct 100 V=
s 160 60 160 90 16
s 190 60 160 60 37
s 190 60 190 160 35
s 190 160 210 160 38
s 260 60 190 60 48
s 260 120 260 60 46
w 52
a 0 up 0:33 0 0 0 hln 100 V=
s 420 160 390 160 51
a 0 up 33 0 405 159 hct 100 V=
w 54
a 0 up 0:33 0 0 0 hln 100 V=
s 440 60 480 60 53
a 0 up 33 0 460 59 hct 100 V=
w 50
a 0 sr 0 0 0 0 hln 100 LABEL=out
a 0 up 0:33 0 0 0 hln 100 V=
s 320 160 350 160 56
a 0 sr 3 0 330 158 hcn 100 LABEL=out
a 0 up 33 0 330 159 hct 100 V=
s 310 160 320 160 49
w 69
a 0 up 0:33 0 0 0 hln 100 V=
s 160 220 160 240 68
s 210 180 200 180 40
s 200 150 200 180 61
s 210 150 200 150 59
s 200 180 200 240 70
s 160 240 160 250 74
s 200 240 160 240 72
w 76
s 210 190 180 190 75
s 180 190 180 150 77
s 160 130 160 150 66
s 160 150 160 180 81
s 180 150 160 150 79
@junction
j 400 60
+ p 10 +
+ w 15
j 160 90
+ p 3 2
+ w 15
j 260 300
+ w 32
+ w 32
j 210 170
+ p 7 CONTROL
+ w 28
j 110 250
+ p 6 2
+ w 28
j 110 280
+ p 6 1
+ w 32
j 160 280
+ p 5 1
+ w 32
j 270 300
+ s 2
+ w 32
j 260 220
+ p 7 GND
+ w 32
j 160 300
+ w 32
+ w 32
j 190 60
+ w 15
+ w 15
j 210 160
+ p 7 RESET
+ w 15
j 260 120
+ p 7 VCC
+ w 15
j 260 60
+ w 15
+ w 15
j 350 160
+ p 4 1
+ w 50
j 310 160
+ p 7 OUTPUT
+ w 50
j 390 160
+ p 4 2
+ w 52
j 420 160
+ s 8
+ w 52
j 440 60
+ p 10 -
+ w 54
j 480 60
+ s 9
+ w 54
j 320 160
+ p 55 pin1
+ w 50
j 160 250
+ p 5 2
+ w 69
j 160 220
+ p 65 1
+ w 69
j 200 180
+ w 69
+ w 69
j 210 180
+ p 7 THRESHOLD
+ w 69
j 210 150
+ p 7 TRIGGER
+ w 69
j 160 240
+ w 69
+ w 69
j 210 190
+ p 7 DISCHARGE
+ w 76
j 160 130
+ p 3 1
+ w 76
j 160 180
+ p 65 2
+ w 76
j 160 150
+ w 76
+ w 76
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
