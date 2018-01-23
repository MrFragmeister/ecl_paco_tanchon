*version 9.1 659609500
u 128
M? 3
R? 4
V? 3
? 4
PM? 3
@libraries
@analysis
.AC 1 1 0
+0 101
+1 10
+2 1.00G
.DC 1 0 0 0 1 1
+ 0 0 V2
+ 0 4 0
+ 0 5 2.5
+ 0 6 0.01
.TRAN 1 0 0 0
+0 0ns
+1 10ms
.STEP 0 0 4
+ 0 RVAR
+ 4 0.001
+ 5 10
+ 6 5
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
pageloc 1 0 3760 
@status
n 0 110:09:04:08:21:01;1286173261 e 
s 2832 110:09:04:08:21:05;1286173265 e 
*page 1 0 970 720 iA
@ports
port 6 AGND 510 360 h
@parts
part 53 r 610 300 v
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 u 13 0 15 25 hln 100 VALUE=3k
a 0 a 0:13 0 0 0 hln 100 PKGREF=R3
a 0 ap 9 0 15 0 hln 100 REFDES=R3
part 4 VDC 720 250 h
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 a 0:13 0 0 0 hln 100 PKGREF=V1
a 1 ap 9 0 24 7 hcn 100 REFDES=V1
a 1 u 13 0 -11 18 hcn 100 DC=2.5
part 5 VSIN 420 290 h
a 0 a 0:13 0 0 0 hln 100 PKGREF=V2
a 1 ap 9 0 20 10 hcn 100 REFDES=V2
a 1 u 0 0 0 0 hcn 100 DC=1
a 1 u 0 0 0 0 hcn 100 AC=1
a 1 u 0 0 0 0 hcn 100 VOFF=0
a 1 u 0 0 0 0 hcn 100 VAMPL=1
a 1 u 0 0 0 0 hcn 100 FREQ=1k
part 2 NMOS5 480 280 h
a 0 sp 0:11 0 0 50 hln 100 PART=NMOS5
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=M1
a 0 ap 9 0 5 10 hln 100 REFDES=M1
a 0 u 0 0 0 0 hln 100 L=0.25u
a 0 u 0 0 0 0 hln 100 W=3u
part 3 r 510 230 v
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 15 0 hln 100 REFDES=R1
a 0 u 13 0 20 35 hln 100 VALUE=8.6k
part 52 PMOS5 580 220 h
a 0 sp 0:11 0 0 50 hln 100 PART=PMOS5
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=M2
a 0 ap 9 0 5 10 hln 100 REFDES=M2
a 0 u 0 0 0 0 hln 100 L=0.25u
a 0 u 0 0 0 0 hln 100 W=8.7u
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
part 69 nodeMarker 610 250 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=3
part 30 iMarker 510 300 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 6 20 hlb 100 LABEL=2
part 28 nodeMarker 510 250 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=1
@conn
w 64
a 0 up 0:33 0 0 0 hln 100 V=
a 0 sr 0:3 0 612 255 hln 100 LABEL=OUT_PMOS
s 610 250 610 260 79
a 0 sr 3 0 612 255 hln 100 LABEL=OUT_PMOS
s 610 240 610 250 63
a 0 up 33 0 612 256 hlt 100 V=
w 102
a 0 up 0:33 0 0 0 hln 100 V=
s 420 290 420 280 7
s 480 280 420 280 121
a 0 up 33 0 450 279 hct 100 V=
w 12
a 0 up 0:33 0 0 0 hln 100 V=
s 510 190 510 180 13
s 510 180 610 180 49
a 0 up 33 0 550 179 hct 100 V=
s 610 180 610 200 61
s 610 180 720 180 80
s 720 180 720 250 82
w 85
a 0 up 0:33 0 0 0 hln 100 V=
s 720 290 720 360 84
s 420 350 420 330 37
s 510 350 510 360 42
s 420 350 510 350 25
a 0 up 33 0 465 349 hct 100 V=
s 510 300 510 350 50
a 0 up 33 0 512 305 hlt 100 V=
s 610 300 610 360 65
s 610 360 510 360 21
s 720 360 610 360 86
w 112
a 0 sr 0:3 0 512 240 hln 100 LABEL=OUT_NMOS
a 0 up 0:33 0 0 0 hln 100 V=
s 510 250 510 230 115
a 0 sr 3 0 512 240 hln 100 LABEL=OUT_NMOS
s 510 260 510 250 11
a 0 up 33 0 512 245 hlt 100 V=
s 510 230 560 230 124
s 560 220 580 220 92
s 560 230 560 220 126
@junction
j 510 300
+ p 30 pin1
+ p 2 s
j 510 350
+ w 85
+ w 85
j 610 240
+ p 52 d
+ w 64
j 610 260
+ p 53 2
+ w 64
j 610 250
+ p 69 pin1
+ w 64
j 610 180
+ w 12
+ w 12
j 720 290
+ p 4 -
+ w 85
j 510 300
+ p 30 pin1
+ w 85
j 510 300
+ p 2 s
+ w 85
j 510 360
+ s 6
+ w 85
j 420 330
+ p 5 -
+ w 85
j 610 300
+ p 53 1
+ w 85
j 610 360
+ w 85
+ w 85
j 510 190
+ p 3 2
+ w 12
j 610 200
+ p 52 s
+ w 12
j 720 250
+ p 4 +
+ w 12
j 420 290
+ p 5 +
+ w 102
j 510 230
+ p 3 1
+ w 112
j 510 250
+ p 28 pin1
+ w 112
j 510 260
+ p 2 d
+ w 112
j 480 280
+ p 2 g
+ w 102
j 580 220
+ p 52 g
+ w 112
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
