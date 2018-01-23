*version 9.1 627126009
u 48
M? 2
R? 3
V? 3
? 3
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
pageloc 1 0 2930 
@status
n 0 110:08:24:08:19:16;1285309156 e 
s 2833 110:08:24:08:19:20;1285309160 e 
*page 1 0 970 720 iA
@ports
port 6 AGND 510 360 h
@parts
part 4 VDC 590 230 h
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
part 43 R 510 350 v
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R2
a 0 ap 9 0 20 -15 hln 100 REFDES=R2
a 0 u 13 0 10 50 hln 100 VALUE={RVAR}
part 3 r 510 230 v
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 15 0 hln 100 REFDES=R1
a 0 u 13 0 15 25 hln 100 VALUE=3k
part 2 NMOS5 480 280 h
a 0 sp 0:11 0 0 50 hln 100 PART=NMOS5
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=M1
a 0 ap 9 0 5 10 hln 100 REFDES=M1
a 0 u 0 0 0 0 hln 100 L=0.25u
a 0 u 0 0 0 0 hln 100 W=5u
part 46 PARAM 310 170 h
a 0 a 0:13 0 0 0 hln 100 PKGREF=PM1
a 1 ap 0 0 10 -2 hcn 100 REFDES=PM1
a 0 u 13 0 0 20 hln 100 NAME1=RVAR
a 0 u 13 0 50 22 hlb 100 VALUE1=0
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
part 28 nodeMarker 510 250 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=1
part 30 iMarker 510 300 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 6 20 hlb 100 LABEL=2
@conn
w 8
a 0 up 0:33 0 0 0 hln 100 V=
s 420 290 420 280 7
s 420 280 480 280 9
a 0 up 33 0 450 279 hct 100 V=
w 14
a 0 up 0:33 0 0 0 hln 100 V=
s 510 190 510 180 13
s 510 180 590 180 15
a 0 up 33 0 550 179 hct 100 V=
s 590 180 590 230 17
w 12
a 0 up 0:33 0 0 0 hln 100 V=
s 510 260 510 250 11
a 0 up 33 0 512 245 hlt 100 V=
s 510 250 510 230 29
w 33
a 0 up 0:33 0 0 0 hln 100 V=
s 590 270 590 360 19
s 590 360 510 360 21
s 420 350 420 330 37
s 510 350 510 360 42
s 420 350 510 350 25
a 0 up 33 0 465 349 hct 100 V=
w 45
a 0 up 0:33 0 0 0 hln 100 V=
s 510 310 510 300 44
a 0 up 33 0 512 305 hlt 100 V=
@junction
j 510 230
+ p 3 1
+ w 12
j 510 190
+ p 3 2
+ w 14
j 590 230
+ p 4 +
+ w 14
j 510 250
+ p 28 pin1
+ w 12
j 510 360
+ s 6
+ w 33
j 590 270
+ p 4 -
+ w 33
j 510 350
+ p 43 1
+ w 33
j 510 310
+ p 43 2
+ w 45
j 510 300
+ p 30 pin1
+ w 45
j 420 290
+ p 5 +
+ w 8
j 420 330
+ p 5 -
+ w 33
j 480 280
+ p 2 g
+ w 8
j 510 260
+ p 2 d
+ w 12
j 510 300
+ p 30 pin1
+ p 2 s
j 510 300
+ p 2 s
+ w 45
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
