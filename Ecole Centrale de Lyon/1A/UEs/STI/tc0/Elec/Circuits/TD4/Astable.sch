*version 9.1 2622178515
u 106
X? 2
R? 4
C? 3
V? 2
U? 2
? 3
@libraries
@analysis
.TRAN 1 0 0 0
+0 0ns
+1 1m
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
pageloc 1 0 3809 
@status
n 0 110:09:14:14:02:31;1287057751 e 
s 0 110:09:14:14:02:45;1287057765 e 
c 110:09:14:14:02:04;1287057724
*page 1 0 970 720 iA
@ports
port 8 GND_ANALOG 190 220 h
port 11 GND_ANALOG 340 200 h
port 7 GND_ANALOG 240 220 h
port 96 GND_ANALOG 340 30 u
@parts
part 2 555D 290 110 h
a 0 sp 11 0 66 100 hlb 100 PART=555D
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP8
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=X1
a 1 ap 9 0 70 8 hln 100 REFDES=X1
part 99 7404 420 120 h
a 0 sp 11 0 40 40 hln 100 PART=7404
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 0 a 0:13 0 0 0 hln 100 PKGREF=U1
a 0 ap 9 0 28 8 hln 100 REFDES=U1A
part 4 r 240 190 v
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R2
a 0 ap 9 0 15 0 hln 100 REFDES=R2
a 0 u 13 0 15 25 hln 100 VALUE=3K
part 6 C 190 210 v
a 0 sp 0 0 0 10 hlb 100 PART=C
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C2
a 0 ap 9 0 15 0 hln 100 REFDES=C2
a 0 u 13 0 5 -5 hln 100 VALUE=0.01u
part 5 C 240 190 d
a 0 sp 0 0 0 10 hlb 100 PART=C
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C1
a 0 ap 9 0 15 0 hln 100 REFDES=C1
a 0 u 13 0 20 40 hln 100 VALUE=0.01u
part 3 r 240 120 v
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 15 0 hln 100 REFDES=R1
a 0 u 13 0 15 35 hln 100 VALUE=3.9K
part 10 VDC 340 70 u
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 a 0:13 0 0 0 hln 100 PKGREF=V1
a 1 ap 9 0 24 7 hcn 100 REFDES=V1
a 1 u 13 0 -11 18 hcn 100 DC=5V
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
part 100 nodeMarker 400 120 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=1
part 104 nodeMarker 250 190 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=2
@conn
w 23
a 0 up 0:33 0 0 0 hln 100 V=
s 190 220 190 210 22
s 190 210 190 200 24
a 0 up 33 0 192 205 hlt 100 V=
w 26
a 0 up 0:33 0 0 0 hln 100 V=
s 340 200 340 180 39
a 0 up 33 0 342 190 hlt 100 V=
w 17
a 0 up 0:33 0 0 0 hln 100 V=
s 190 130 190 180 53
s 290 130 190 130 80
a 0 up 33 0 240 129 hct 100 V=
w 86
a 0 up 0:33 0 0 0 hln 100 V=
s 290 120 280 120 85
s 340 80 340 70 12
s 240 80 280 80 82
s 280 80 340 80 89
a 0 up 33 0 310 79 hct 100 V=
s 280 120 280 80 87
w 79
a 0 up 0:33 0 0 0 hln 100 V=
s 240 120 240 150 16
s 290 150 270 150 90
s 270 150 270 120 92
s 270 120 240 120 94
a 0 up 33 0 255 119 hct 100 V=
w 15
a 0 up 0:33 0 0 0 hln 100 LVL=
s 390 120 400 120 14
a 0 up 33 0 405 119 hct 100 LVL=
s 400 120 420 120 101
w 19
a 0 up 0:33 0 0 0 hln 100 V=
s 260 110 260 140 29
s 260 140 290 140 31
s 290 110 260 110 27
s 260 140 260 190 42
a 0 up 33 0 262 165 hlt 100 V=
s 260 190 250 190 35
s 250 190 240 190 105
@junction
j 240 120
+ p 3 1
+ w 79
j 190 210
+ p 6 1
+ w 23
j 190 220
+ s 8
+ w 23
j 390 120
+ p 2 OUTPUT
+ w 15
j 340 180
+ p 2 GND
+ w 26
j 340 200
+ s 11
+ w 26
j 190 180
+ p 6 2
+ w 17
j 240 190
+ p 4 1
+ w 19
j 240 150
+ p 4 2
+ w 79
j 260 140
+ w 19
+ w 19
j 290 110
+ p 2 TRIGGER
+ w 19
j 290 140
+ p 2 THRESHOLD
+ w 19
j 240 190
+ p 5 1
+ p 4 1
j 240 220
+ p 5 2
+ s 7
j 240 190
+ p 5 1
+ w 19
j 290 130
+ p 2 CONTROL
+ w 17
j 290 120
+ p 2 RESET
+ w 86
j 340 80
+ p 2 VCC
+ w 86
j 340 70
+ p 10 +
+ w 86
j 240 80
+ p 3 2
+ w 86
j 280 80
+ w 86
+ w 86
j 290 150
+ p 2 DISCHARGE
+ w 79
j 340 30
+ s 96
+ p 10 -
j 420 120
+ p 99 A
+ w 15
j 400 120
+ p 100 pin1
+ w 15
j 250 190
+ p 104 pin1
+ w 19
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
