*version 9.1 498576578
u 35
M? 2
R? 2
V? 3
? 3
@libraries
@analysis
.TRAN 1 0 0 0
+0 1us
+1 10ms
+3 1us
.OP 1 
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
pageloc 1 0 2400 
@status
n 0 118:00:21:10:44:42;1516527882 e 
s 2832 118:00:22:10:43:46;1516614226 e 
*page 1 0 970 720 iA
@ports
port 6 GND_ANALOG 420 290 h
@parts
part 3 r 490 110 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 15 0 hln 100 REFDES=R1
a 0 u 13 0 15 25 hln 100 VALUE=3k
part 5 VDC 620 170 h
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 a 0:13 0 0 0 hln 100 PKGREF=V2
a 1 ap 9 0 24 7 hcn 100 REFDES=V2
a 1 u 13 0 -11 18 hcn 100 DC=2.5V
part 2 NMOS5 380 180 h
a 0 a 0:13 0 0 0 hln 100 PKGREF=M1
a 0 ap 9 0 5 10 hln 100 REFDES=M1
a 0 u 0 0 0 0 hln 100 L=0.25um
a 0 u 0 0 0 0 hln 100 W=5um
part 4 VSIN 230 210 h
a 0 a 0:13 0 0 0 hln 100 PKGREF=V1
a 1 ap 9 0 20 10 hcn 100 REFDES=V1
a 1 u 0 0 0 0 hcn 100 DC=1V
a 1 u 0 0 0 0 hcn 100 VOFF=1.25V
a 1 u 0 0 0 0 hcn 100 AC=1V
a 1 u 0 0 0 0 hcn 100 VAMPL=200mV
a 1 u 0 0 0 0 hcn 100 FREQ=2k
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 300 95 hrn 100 PAGENO=1
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
part 32 nodeMarker 410 110 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=1
part 33 nodeMarker 320 210 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=2
@conn
w 21
a 0 up 0:33 0 0 0 hln 100 V=
s 620 210 620 250 20
s 230 250 410 250 11
s 420 250 420 290 13
s 410 250 420 250 17
s 410 200 410 250 15
s 620 250 420 250 22
a 0 up 33 0 520 249 hct 100 V=
w 25
a 0 up 0:33 0 0 0 hln 100 V=
s 620 170 620 110 24
s 620 110 530 110 26
a 0 up 33 0 575 109 hct 100 V=
w 29
a 0 sr 0 0 0 0 hln 100 LABEL=vout
a 0 up 0:33 0 0 0 hln 100 V=
s 410 110 410 160 30
a 0 sr 3 0 412 135 hln 100 LABEL=vout
a 0 up 33 0 412 136 hlt 100 V=
s 490 110 410 110 28
w 8
a 0 sr 0 0 0 0 hln 100 LABEL=vin
a 0 up 0:33 0 0 0 hln 100 V=
s 230 210 320 210 7
a 0 sr 3 0 305 208 hcn 100 LABEL=vin
a 0 up 33 0 305 209 hct 100 V=
s 380 210 380 180 9
s 320 210 380 210 34
@junction
j 230 210
+ p 4 +
+ w 8
j 380 180
+ p 2 g
+ w 8
j 410 250
+ w 21
+ w 21
j 620 210
+ p 5 -
+ w 21
j 230 250
+ p 4 -
+ w 21
j 420 290
+ s 6
+ w 21
j 410 200
+ p 2 s
+ w 21
j 420 250
+ w 21
+ w 21
j 620 170
+ p 5 +
+ w 25
j 530 110
+ p 3 2
+ w 25
j 490 110
+ p 3 1
+ w 29
j 410 160
+ p 2 d
+ w 29
j 410 110
+ p 32 pin1
+ w 29
j 320 210
+ p 33 pin1
+ w 8
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
