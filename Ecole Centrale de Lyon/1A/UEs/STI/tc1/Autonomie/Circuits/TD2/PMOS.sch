*version 9.1 4026139379
u 52
M? 3
V? 3
? 5
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
+ 1 6 0.2
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
pageloc 1 0 1355 
@status
n 0 110:00:09:23:11:02;1263075062 e 
s 2832 110:00:09:23:12:07;1263075127 e 
*page 1 0 0 0 iA
@ports
port 5 AGND 440 240 h
@parts
part 4 VDC 510 160 h
a 1 u 13 0 -11 18 hcn 100 DC=2.5
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 a 0:13 0 0 0 hln 100 PKGREF=V2
a 1 ap 9 0 24 7 hcn 100 REFDES=V2
part 3 VDC 380 120 h
a 1 u 13 0 -11 18 hcn 100 DC=1V
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 a 0:13 0 0 0 hln 100 PKGREF=V1
a 1 ap 9 0 24 7 hcn 100 REFDES=V1
part 32 PMOS5 420 170 h
a 0 sp 0:11 0 0 50 hln 100 PART=PMOS5
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=M2
a 0 ap 9 0 5 10 hln 100 REFDES=M2
part 51 iMarker 450 190 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 6 20 hlb 100 LABEL=4
@conn
w 47
a 0 up 0:33 0 0 0 hln 100 V=
s 420 170 380 170 20
a 0 up 33 0 395 169 hct 100 V=
s 380 160 380 170 36
w 21
a 0 up 0:33 0 0 0 hln 100 V=
s 510 160 510 140 14
s 450 140 450 150 18
s 510 140 450 140 28
a 0 up 33 0 480 139 hct 100 V=
s 450 120 450 140 39
s 380 120 450 120 37
w 7
a 0 up 0:33 0 0 0 hln 100 V=
s 440 240 450 240 10
s 510 240 510 200 12
s 450 240 510 240 26
s 450 190 450 240 24
@junction
j 420 170
+ p 32 g
+ w 47
j 510 160
+ p 4 +
+ w 21
j 450 150
+ p 32 s
+ w 21
j 450 140
+ w 21
+ w 21
j 380 120
+ p 3 +
+ w 21
j 380 160
+ p 3 -
+ w 47
j 440 240
+ s 5
+ w 7
j 510 200
+ p 4 -
+ w 7
j 450 240
+ w 7
+ w 7
j 450 190
+ p 32 d
+ w 7
j 450 190
+ p 51 pin1
+ p 32 d
j 450 190
+ p 51 pin1
+ w 7
@attributes
@graphics
