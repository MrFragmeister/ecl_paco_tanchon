*version 9.1 727053553
u 32
M? 2
V? 3
? 4
@libraries
@analysis
.DC 1 1 0 0 0 0
+ 0 0 V2
+ 0 4 0
+ 0 5 2.5
+ 0 6 0.01
+ 1 0 V1
+ 1 4 0
+ 1 5 2.5
+ 1 6 0.1
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
pageloc 1 0 1792 
@status
n 0 110:08:24:08:23:33;1285309413 e 
s 2832 110:08:24:08:23:37;1285309417 e 
*page 1 0 0 0 iA
@ports
port 5 AGND 440 240 h
@parts
part 4 VDC 510 160 h
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 a 0:13 0 0 0 hln 100 PKGREF=V2
a 1 ap 9 0 24 7 hcn 100 REFDES=V2
a 1 u 13 0 -11 18 hcn 100 DC=2.5
part 3 VDC 370 180 h
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 a 0:13 0 0 0 hln 100 PKGREF=V1
a 1 ap 9 0 24 7 hcn 100 REFDES=V1
a 1 u 13 0 -11 18 hcn 100 DC=1V
part 2 NMOS5 420 170 h
a 0 sp 0:11 0 0 50 hln 100 PART=NMOS5
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=M1
a 0 ap 9 0 5 10 hln 100 REFDES=M1
a 0 u 0 0 0 0 hln 100 L=0.25u
a 0 u 0 0 0 0 hln 100 W=5u
part 27 nodeMarker 470 140 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=1
part 29 nodeMarker 380 170 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=2
part 31 iMarker 450 150 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 6 20 hlb 100 LABEL=3
@conn
w 7
a 0 up 0:33 0 0 0 hln 100 V=
s 370 220 370 240 6
s 370 240 440 240 8
a 0 up 33 0 405 239 hct 100 V=
s 440 240 450 240 10
s 510 240 510 200 12
s 450 240 510 240 26
s 450 190 450 240 24
w 21
a 0 up 0:33 0 0 0 hln 100 V=
s 420 170 380 170 20
a 0 up 33 0 395 169 hct 100 V=
s 370 170 370 180 22
s 380 170 370 170 30
w 15
a 0 up 0:33 0 0 0 hln 100 V=
s 510 160 510 140 14
s 510 140 470 140 16
a 0 up 33 0 480 139 hct 100 V=
s 450 140 450 150 18
s 470 140 450 140 28
@junction
j 370 220
+ p 3 -
+ w 7
j 440 240
+ s 5
+ w 7
j 510 200
+ p 4 -
+ w 7
j 510 160
+ p 4 +
+ w 15
j 450 150
+ p 2 d
+ w 15
j 420 170
+ p 2 g
+ w 21
j 370 180
+ p 3 +
+ w 21
j 450 190
+ p 2 s
+ w 7
j 450 240
+ w 7
+ w 7
j 470 140
+ p 27 pin1
+ w 15
j 380 170
+ p 29 pin1
+ w 21
j 450 150
+ p 31 pin1
+ p 2 d
j 450 150
+ p 31 pin1
+ w 15
@attributes
@graphics
