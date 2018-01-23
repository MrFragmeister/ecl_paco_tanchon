*version 9.1 3186992553
u 48
M? 3
R? 3
V? 3
? 4
@libraries
@analysis
.DC 1 0 0 0 1 1
+ 0 0 V1
+ 0 4 0
+ 0 5 3
+ 0 6 0.01
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
pageloc 1 0 2944 
@status
n 0 118:00:21:11:02:00;1516528920 e 
s 0 118:00:21:11:02:00;1516528920 e 
*page 1 0 970 720 iA
@ports
port 2 GND_ANALOG 500 320 h
@parts
part 6 r 360 150 v
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R2
a 0 ap 9 0 15 0 hln 100 REFDES=R2
part 5 r 510 270 v
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 15 0 hln 100 REFDES=R1
a 0 u 13 0 15 25 hln 100 VALUE=3k
part 8 VDC 650 210 h
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 a 0:13 0 0 0 hln 100 PKGREF=V2
a 1 ap 9 0 24 7 hcn 100 REFDES=V2
a 1 u 13 0 -11 18 hcn 100 DC=2.5V
part 3 NMOS5 330 240 h
a 0 a 0:13 0 0 0 hln 100 PKGREF=M1
a 0 ap 9 0 5 10 hln 100 REFDES=M1
part 4 PMOS5 480 180 h
a 0 a 0:13 0 0 0 hln 100 PKGREF=M2
a 0 ap 9 0 5 10 hln 100 REFDES=M2
a 0 u 0 0 0 0 hln 100 L=0.25um
a 0 u 0 0 0 0 hln 100 W=8.7um
part 7 VSIN 220 260 h
a 0 a 0:13 0 0 0 hln 100 PKGREF=V1
a 1 ap 9 0 20 10 hcn 100 REFDES=V1
a 1 u 0 0 0 0 hcn 100 DC=0v
a 1 u 0 0 0 0 hcn 100 AC=1V
a 1 u 0 0 0 0 hcn 100 FREQ=2k
a 1 u 0 0 0 0 hcn 100 VAMPL=200mV
a 1 u 0 0 0 0 hcn 100 VOFF=0V
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 300 95 hrn 100 PAGENO=1
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
part 45 nodeMarker 510 200 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=1
part 46 nodeMarker 360 180 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=2
part 47 iMarker 360 260 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 6 20 hlb 100 LABEL=3
@conn
w 10
s 510 160 510 100 9
s 510 100 650 100 11
s 650 100 650 210 13
s 360 110 360 100 26
s 360 100 510 100 28
w 38
s 330 240 220 240 37
s 220 240 220 260 39
w 42
s 220 300 220 320 41
s 360 260 360 320 33
s 650 250 650 320 15
s 650 320 510 320 17
s 510 320 500 320 21
s 510 270 510 320 19
s 360 320 500 320 35
s 220 320 360 320 43
w 25
a 0 sr 0 0 0 0 hln 100 LABEL=OUT_NMOS
s 360 220 360 180 24
a 0 sr 3 0 362 200 hln 100 LABEL=OUT_NMOS
s 360 180 360 150 32
s 480 180 360 180 30
w 23
a 0 sr 0 0 0 0 hln 100 LABEL=OUT_PMOS
s 510 230 510 200 22
a 0 sr 3 0 512 215 hln 100 LABEL=OUT_PMOS
@junction
j 510 160
+ p 4 s
+ w 10
j 650 210
+ p 8 +
+ w 10
j 510 320
+ w 42
+ w 42
j 510 200
+ p 4 d
+ w 23
j 510 230
+ p 5 2
+ w 23
j 510 100
+ w 10
+ w 10
j 480 180
+ p 4 g
+ w 25
j 360 180
+ w 25
+ w 25
j 220 260
+ p 7 +
+ w 38
j 220 300
+ p 7 -
+ w 42
j 650 250
+ p 8 -
+ w 42
j 500 320
+ s 2
+ w 42
j 510 270
+ p 5 1
+ w 42
j 360 320
+ w 42
+ w 42
j 360 150
+ p 6 1
+ w 25
j 360 110
+ p 6 2
+ w 10
j 510 200
+ p 45 pin1
+ p 4 d
j 510 200
+ p 45 pin1
+ w 23
j 360 180
+ p 46 pin1
+ w 25
j 360 260
+ p 47 pin1
+ w 42
j 360 220
+ p 3 d
+ w 25
j 360 260
+ p 3 s
+ w 42
j 330 240
+ p 3 g
+ w 38
j 360 260
+ p 47 pin1
+ p 3 s
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
