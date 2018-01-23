*version 9.1 951003141
u 84
M? 7
V? 5
I? 2
? 5
C? 2
@libraries
@analysis
.AC 1 3 0
+0 100
+1 10
+2 1000.00K
.DC 0 0 0 0 1 1
+ 0 0 V1
+ 0 4 1
+ 0 5 4.5
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
pageloc 1 0 3938 
@status
c 109:09:14:08:15:52;1255500952
n 0 109:09:13:15:27:48;1255440468 e 
s 0 109:09:14:08:14:23;1255500863 e 
*page 1 0 0 0 iA
@ports
port 34 +5V 410 30 h
port 60 GND_ANALOG 410 290 h
port 66 GND_ANALOG 520 230 h
port 72 +5V 210 60 h
port 73 GND_ANALOG 210 100 h
port 65 GND_ANALOG 300 220 h
port 83 GND_ANALOG 560 170 h
@parts
part 61 IDC 410 250 h
a 1 u 13 0 -9 21 hcn 100 DC=95uA
a 0 sp 11 0 0 50 hln 100 PART=IDC
a 0 a 0:13 0 0 0 hln 100 PKGREF=I1
a 1 ap 9 0 20 10 hcn 100 REFDES=I1
part 71 VDC 210 60 h
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 a 0:13 0 0 0 hln 100 PKGREF=V3
a 1 ap 9 0 24 7 hcn 100 REFDES=V3
a 1 u 13 0 -11 18 hcn 100 DC=5V
part 42 VDC 520 180 h
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 a 0:13 0 0 0 hln 100 PKGREF=V2
a 1 ap 9 0 24 7 hcn 100 REFDES=V2
a 1 u 13 0 -11 18 hcn 100 DC=2.75
part 82 C 560 170 v
a 0 sp 0 0 0 10 hlb 100 PART=C
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C1
a 0 ap 9 0 15 0 hln 100 REFDES=C1
a 0 u 13 0 15 25 hln 100 VALUE=5p
part 32 PMOS5 400 100 H
a 0 u 0 0 0 0 hln 100 L=0.25u
a 0 u 0 0 0 0 hln 100 W=4.3u
a 0 sp 0:11 0 0 50 hln 100 PART=PMOS5
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=
a 0 x 0:13 0 0 0 hln 100 PKGREF=M3
a 0 xp 9 0 5 10 hln 100 REFDES=M3
part 31 PMOS5 430 100 h
a 0 u 0 0 0 0 hln 100 L=0.25u
a 0 u 0 0 0 0 hln 100 W=4.3u
a 0 sp 0:11 0 0 50 hln 100 PART=PMOS5
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=
a 0 x 0:13 0 0 0 hln 100 PKGREF=M4
a 0 xp 9 0 5 10 hln 100 REFDES=M4
part 1 NMOS5 340 170 h
a 0 u 0 0 0 0 hln 100 L=0.25u
a 0 u 0 0 0 0 hln 100 W=2.2u
a 0 sp 0:11 0 0 50 hln 100 PART=NMOS5
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=M1
a 0 ap 9 0 5 10 hln 100 REFDES=M1
part 2 NMOS5 490 170 H
a 0 u 0 0 0 0 hln 100 L=0.25u
a 0 u 0 0 0 0 hln 100 W=2.2u
a 0 sp 0:11 0 0 50 hln 100 PART=NMOS5
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=M2
a 0 ap 9 0 5 10 hln 100 REFDES=M2
part 81 VSIN 300 180 h
a 1 u 0 0 0 0 hcn 100 DC=2.75
a 1 u 0 0 0 0 hcn 100 AC=1
a 1 u 0 0 0 0 hcn 100 VOFF=2.75
a 1 u 0 0 0 0 hcn 100 VAMPL=0.01
a 1 u 0 0 0 0 hcn 100 FREQ=1k
a 0 x 0:13 0 0 0 hln 100 PKGREF=V1
a 1 xp 9 0 20 10 hcn 100 REFDES=V1
@conn
w 10
a 0 up 0:33 0 0 0 hln 100 V=
s 370 80 370 50 9
s 370 50 410 50 11
s 460 50 460 80 13
s 410 50 460 50 27
a 0 up 33 0 435 49 hct 100 V=
s 410 50 410 30 25
w 55
a 0 up 0:33 0 0 0 hln 100 V=
s 370 190 370 210 19
s 370 210 410 210 21
s 460 210 460 190 23
s 410 210 460 210 30
a 0 up 33 0 435 209 hct 100 V=
s 410 210 410 250 28
w 64
a 0 up 0:33 0 0 0 hln 100 V=
s 520 220 520 230 54
a 0 up 33 0 522 225 hlt 100 V=
w 16
a 0 up 0:33 0 0 0 hln 100 V=
s 370 120 370 130 15
s 400 100 430 100 6
s 400 100 400 130 36
s 370 130 370 150 40
s 400 130 370 130 38
a 0 up 33 0 385 129 hct 100 V=
w 44
a 0 up 0:33 0 0 0 hln 100 V=
a 0 sr 0 0 0 0 hln 100 LABEL=VIN1
s 340 170 300 170 43
a 0 up 33 0 320 169 hct 100 V=
a 0 sr 3 0 320 168 hcn 100 LABEL=VIN1
s 300 170 300 180 45
w 48
a 0 up 0:33 0 0 0 hln 100 V=
a 0 sr 0 0 0 0 hln 100 LABEL=VIN2
s 490 170 520 170 47
a 0 up 33 0 505 169 hct 100 V=
a 0 sr 3 0 505 168 hcn 100 LABEL=VIN2
s 520 170 520 180 49
w 18
a 0 up 0:33 0 0 0 hln 100 V=
a 0 sr 0 0 0 0 hln 100 LABEL=VOUT
s 460 140 560 140 75
a 0 up 33 0 510 139 hct 100 V=
a 0 sr 3 0 510 138 hcn 100 LABEL=VOUT
s 460 120 460 140 17
s 460 140 460 150 69
@junction
j 370 150
+ p 1 d
+ w 16
j 460 150
+ p 2 d
+ w 18
j 410 50
+ w 10
+ w 10
j 460 80
+ p 31 s
+ w 10
j 460 120
+ p 31 d
+ w 18
j 370 120
+ p 32 d
+ w 16
j 370 80
+ p 32 s
+ w 10
j 410 30
+ s 34
+ w 10
j 430 100
+ p 31 g
+ w 16
j 400 100
+ p 32 g
+ w 16
j 370 130
+ w 16
+ w 16
j 340 170
+ p 1 g
+ w 44
j 490 170
+ p 2 g
+ w 48
j 520 180
+ p 42 +
+ w 48
j 520 220
+ p 42 -
+ w 64
j 410 290
+ p 61 -
+ s 60
j 520 230
+ s 66
+ w 64
j 460 140
+ w 18
+ w 18
j 210 60
+ s 72
+ p 71 +
j 210 100
+ s 73
+ p 71 -
j 410 210
+ w 55
+ w 55
j 370 190
+ p 1 s
+ w 55
j 460 190
+ p 2 s
+ w 55
j 410 250
+ p 61 +
+ w 55
j 300 220
+ p 81 -
+ s 65
j 300 180
+ p 81 +
+ w 44
j 560 140
+ p 82 2
+ w 18
j 560 170
+ s 83
+ p 82 1
@attributes
@graphics
