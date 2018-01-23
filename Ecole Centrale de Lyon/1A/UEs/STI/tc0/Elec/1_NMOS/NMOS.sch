*version 9.1 3004540705
u 64
M? 3
V? 3
? 6
@libraries
@analysis
.DC 1 0 0 0 1 1
+ 0 0 V1
+ 0 4 0V
+ 0 5 3V
+ 0 6 0.01V
.STEP 1 0 0
+ 0 V2
+ 4 0
+ 5 3
+ 6 0.5
.OP 0 
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
pageloc 1 0 1802 
@status
n 0 118:00:21:10:35:27;1516527327 e 
s 2832 118:00:21:10:35:27;1516527327 e 
*page 1 0 970 720 iA
@ports
port 9 GND_ANALOG 400 200 h
a 1 s 3 0 14 20 hln 100 LABEL=0
@parts
part 3 VDC 400 90 u
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 a 0:13 0 0 0 hln 100 PKGREF=V1
a 1 ap 9 0 24 7 hcn 100 REFDES=V1
a 1 u 13 0 -11 18 hcn 100 DC=2.5V
part 4 VDC 310 160 d
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 a 0:13 0 0 0 hln 100 PKGREF=V2
a 1 ap 9 0 24 7 hcn 100 REFDES=V2
a 1 u 13 0 -11 18 hcn 100 DC=2V
part 52 NMOS5 360 160 h
a 0 a 0:13 0 0 0 hln 100 PKGREF=M2
a 0 ap 9 0 5 10 hln 100 REFDES=M2
a 0 u 0 0 0 0 hln 100 L=0.25um
a 0 u 0 0 0 0 hln 100 W=1um
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 300 95 hrn 100 PAGENO=1
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
part 63 iMarker 390 140 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 6 20 hlb 100 LABEL=5
@conn
w 45
a 0 up 0:33 0 0 0 hln 100 V=
s 400 50 480 50 44
s 480 50 480 200 46
s 270 160 270 200 40
s 400 200 400 180 10
a 0 up 33 0 402 190 hlt 100 V=
s 270 200 400 200 42
s 480 200 400 200 48
s 390 180 400 180 55
w 6
a 0 up 0:33 0 0 0 hln 100 V=
a 0 sr 0 0 0 0 hln 100 LABEL=vds
s 400 140 400 90 51
a 0 sr 3 0 402 115 hln 100 LABEL=vds
a 0 up 33 0 402 105 hlt 100 V=
s 390 140 400 140 53
w 8
a 0 up 0:33 0 0 0 hln 100 V=
a 0 sr 0:3 0 325 158 hcn 100 LABEL=vgs
s 360 160 310 160 62
a 0 sr 3 0 325 158 hcn 100 LABEL=vgs
a 0 up 33 0 325 159 hct 100 V=
@junction
j 400 90
+ p 3 +
+ w 6
j 310 160
+ p 4 +
+ w 8
j 400 50
+ p 3 -
+ w 45
j 270 160
+ p 4 -
+ w 45
j 400 200
+ s 9
+ w 45
j 390 140
+ p 52 d
+ w 6
j 390 180
+ p 52 s
+ w 45
j 360 160
+ p 52 g
+ w 8
j 390 140
+ p 63 pin1
+ p 52 d
j 390 140
+ p 63 pin1
+ w 6
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
