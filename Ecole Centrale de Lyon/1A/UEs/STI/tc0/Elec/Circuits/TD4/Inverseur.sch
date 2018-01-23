*version 9.1 640771273
u 47
M? 3
V? 5
? 3
PM? 2
@libraries
@analysis
.AC 0 1 0
+0 101
+1 10
+2 1.00K
.DC 1 0 0 0 1 1
+ 0 0 V4
+ 0 4 0
+ 0 5 2.5
+ 0 6 0.001
.STEP 0 0 4
+ 0 VGS
+ 4 1.42
+ 5 1.425
+ 6 0.001
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
pageloc 1 0 3110 
@status
n 0 110:06:13:14:14:41;1279023281 e 
s 0 110:09:14:14:04:03;1287057843 e 
*page 1 0 970 720 iA
@ports
port 22 +5V 530 110 h
port 24 GND_ANALOG 530 380 h
port 23 +5V 680 100 h
port 28 GND_ANALOG 680 250 h
@parts
part 25 VDC 680 170 h
a 1 u 13 0 -11 18 hcn 100 DC=2.5V
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 a 0:13 0 0 0 hln 100 PKGREF=V1
a 1 ap 9 0 24 7 hcn 100 REFDES=V1
part 44 PARAM 360 110 h
a 0 u 13 0 0 20 hln 100 NAME1=VGS
a 0 u 13 0 50 22 hlb 100 VALUE1=1
a 0 a 0:13 0 0 0 hln 100 PKGREF=PM1
a 1 ap 0 0 10 -2 hcn 100 REFDES=PM1
part 46 VSIN 390 250 h
a 0 a 0:13 0 0 0 hln 100 PKGREF=V4
a 1 ap 9 0 20 10 hcn 100 REFDES=V4
a 1 u 0 0 0 0 hcn 100 DC={VGS}
a 1 u 0 0 0 0 hcn 100 VOFF={VGS}
a 1 u 0 0 0 0 hcn 100 AC=1
a 1 u 0 0 0 0 hcn 100 VAMPL=1
a 1 u 0 0 0 0 hcn 100 FREQ=1k
part 2 NMOS5 500 280 h
a 0 u 0 0 0 0 hln 100 L=0.25u
a 0 u 0 0 0 0 hln 100 W=1u
a 0 sp 0:11 0 0 50 hln 100 PART=NMOS5
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=M1
a 0 ap 9 0 5 10 hln 100 REFDES=M1
part 3 PMOS5 500 220 h
a 0 u 0 0 0 0 hln 100 W=2.47u
a 0 sp 0:11 0 0 50 hln 100 PART=PMOS5
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=M2
a 0 ap 9 0 5 10 hln 100 REFDES=M2
a 0 u 0 0 0 0 hln 100 L=0.25u
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
part 40 nodeMarker 560 250 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=1
part 42 nodeMarker 430 250 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=2
@conn
w 11
a 0 up 0:33 0 0 0 hln 100 V=
s 530 200 530 110 10
a 0 up 33 0 532 155 hlt 100 V=
w 27
a 0 up 0:33 0 0 0 hln 100 V=
s 680 170 680 100 26
a 0 up 33 0 682 135 hlt 100 V=
w 33
a 0 up 0:33 0 0 0 hln 100 V=
s 680 250 680 210 32
a 0 up 33 0 682 230 hlt 100 V=
w 13
a 0 up 0:33 0 0 0 hln 100 V=
s 530 300 530 340 12
s 390 290 390 340 35
s 530 340 530 380 39
s 390 340 530 340 37
a 0 up 33 0 460 339 hct 100 V=
w 5
a 0 up 0:33 0 0 0 hln 100 V=
a 0 sr 0 0 0 0 hln 100 LABEL=Vin
s 430 250 390 250 43
a 0 sr 3 0 410 248 hcn 100 LABEL=Vin
s 500 280 480 280 4
s 480 280 480 250 6
s 480 220 500 220 8
s 480 250 480 220 21
s 480 250 430 250 19
a 0 up 33 0 435 249 hct 100 V=
w 15
a 0 up 0:33 0 0 0 hln 100 V=
a 0 sr 0 0 0 0 hln 100 LABEL=Vout
s 530 250 560 250 16
a 0 up 33 0 555 249 hct 100 V=
a 0 sr 3 0 545 248 hcn 100 LABEL=Vout
s 530 240 530 250 14
s 530 250 530 260 18
s 560 250 580 250 41
@junction
j 500 280
+ p 2 g
+ w 5
j 500 220
+ p 3 g
+ w 5
j 530 200
+ p 3 s
+ w 11
j 530 300
+ p 2 s
+ w 13
j 530 240
+ p 3 d
+ w 15
j 530 260
+ p 2 d
+ w 15
j 530 250
+ w 15
+ w 15
j 480 250
+ w 5
+ w 5
j 530 110
+ s 22
+ w 11
j 530 380
+ s 24
+ w 13
j 680 170
+ p 25 +
+ w 27
j 680 100
+ s 23
+ w 27
j 680 210
+ p 25 -
+ w 33
j 680 250
+ s 28
+ w 33
j 530 340
+ w 13
+ w 13
j 560 250
+ p 40 pin1
+ w 15
j 430 250
+ p 42 pin1
+ w 5
j 390 250
+ p 46 +
+ w 5
j 390 290
+ p 46 -
+ w 13
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
