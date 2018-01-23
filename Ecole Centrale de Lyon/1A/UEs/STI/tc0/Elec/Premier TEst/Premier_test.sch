*version 9.1 776178860
u 60
V? 5
M? 2
? 5
R? 2
C? 2
U? 2
DSTM? 2
@libraries
@analysis
.AC 1 3 0
+0 101
+1 10
+2 1meg
.DC 0 0 0 0 1 1
+ 0 0 V2
+ 0 4 0
+ 0 5 2.5
+ 0 6 0.01
.TRAN 0 0 0 0
+0 0
+1 5u
.STEP 0 0 0
+ 0 V1
+ 4 0.1
+ 5 2.5
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
pageloc 1 0 1892 
@status
n 0 117:08:15:16:20:06;1505485206 e 
s 2832 117:08:15:16:20:06;1505485206 e 
*page 1 0 970 720 iA
@ports
port 29 GND_ANALOG 250 180 h
@parts
part 31 c 310 170 v
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C1
a 0 ap 9 0 15 0 hln 100 REFDES=C1
part 30 r 270 110 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 15 0 hln 100 REFDES=R1
part 49 VAC 150 130 h
a 0 sp 0 0 0 50 hln 100 PART=VAC
a 0 a 0:13 0 0 0 hln 100 PKGREF=V4
a 1 ap 9 0 20 10 hcn 100 REFDES=V4
a 0 u 13 0 -9 23 hcn 100 ACMAG=1V
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 300 95 hrn 100 PAGENO=1
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
part 47 nodeMarker 310 110 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=2
part 48 nodeMarker 150 110 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=3
@conn
w 38
a 0 sr 0 0 0 0 hln 100 LABEL=vout
a 0 up 0:33 0 0 0 hln 100 V=
s 310 110 310 140 37
a 0 sr 3 0 312 125 hln 100 LABEL=vout
a 0 up 33 0 312 126 hlt 100 V=
w 40
a 0 up 0:33 0 0 0 hln 100 V=
s 310 170 310 180 39
s 310 180 250 180 41
s 250 180 150 180 43
a 0 up 33 0 200 179 hct 100 V=
s 150 180 150 170 45
w 34
a 0 sr 0 0 0 0 hln 100 LABEL=vin
a 0 up 0:33 0 0 0 hln 100 V=
s 150 110 270 110 35
a 0 sr 3 0 210 108 hcn 100 LABEL=vin
a 0 up 33 0 210 109 hct 100 V=
s 150 130 150 110 33
@junction
j 310 110
+ p 30 2
+ w 38
j 310 110
+ p 47 pin1
+ p 30 2
j 310 140
+ p 31 2
+ w 38
j 310 110
+ p 47 pin1
+ w 38
j 150 170
+ p 49 -
+ w 40
j 150 130
+ p 49 +
+ w 34
j 310 170
+ p 31 1
+ w 40
j 250 180
+ s 29
+ w 40
j 270 110
+ p 30 1
+ w 34
j 150 110
+ p 48 pin1
+ w 34
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
