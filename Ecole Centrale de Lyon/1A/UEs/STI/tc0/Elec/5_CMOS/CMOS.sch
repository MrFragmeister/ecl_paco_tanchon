*version 9.1 2345893305
u 34
M? 3
V? 3
? 3
@libraries
@analysis
.DC 1 0 0 0 1 1
+ 0 0 VIN
+ 0 4 0
+ 0 5 2.5
+ 0 6 0.01
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
pageloc 1 0 2166 
@status
n 0 118:00:21:15:34:45;1516545285 e 
s 0 118:00:21:15:34:45;1516545285 e 
*page 1 0 970 720 iA
@ports
port 7 GND_ANALOG 300 240 h
port 6 GND_ANALOG 450 50 v
@parts
part 5 VDC 360 50 v
a 1 u 13 0 -11 18 hcn 100 DC=2.5V
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 x 0:13 0 0 0 hln 100 PKGREF=VDD
a 1 xp 9 0 24 7 hcn 100 REFDES=VDD
part 4 VSIN 210 190 h
a 1 u 0 0 0 0 hcn 100 DC=1V
a 1 u 0 0 0 0 hcn 100 AC=1V
a 1 u 0 0 0 0 hcn 100 VOFF=1.25V
a 1 u 0 0 0 0 hcn 100 VAMPL=1V
a 1 u 0 0 0 0 hcn 100 FREQ=1k
a 0 x 0:13 0 0 0 hln 100 PKGREF=VIN
a 1 xp 9 0 20 10 hcn 100 REFDES=VIN
part 3 PMOS5 270 100 h
a 0 a 0:13 0 0 0 hln 100 PKGREF=M2
a 0 ap 9 0 5 10 hln 100 REFDES=M2
a 0 u 0 0 0 0 hln 100 W=7.6um
a 0 u 0 0 0 0 hln 100 L=0.25um
part 2 NMOS5 270 180 h
a 0 a 0:13 0 0 0 hln 100 PKGREF=M1
a 0 ap 9 0 5 10 hln 100 REFDES=M1
a 0 u 0 0 0 0 hln 100 L=0.25um
a 0 u 0 0 0 0 hln 100 W=3um
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 300 95 hrn 100 PAGENO=1
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
part 31 nodeMarker 300 140 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=1
part 33 nodeMarker 210 180 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=2
@conn
w 13
s 210 230 300 230 12
s 300 230 300 240 14
s 300 200 300 230 16
w 26
s 300 80 300 50 25
s 300 50 360 50 27
w 30
s 400 50 450 50 29
w 19
a 0 sr 0 0 0 0 hln 100 LABEL=vout
s 300 140 300 120 32
a 0 sr 3 0 302 140 hln 100 LABEL=vout
s 300 160 300 140 18
w 21
a 0 sr 0 0 0 0 hln 100 LABEL=vin
s 250 180 210 180 24
a 0 sr 3 0 230 178 hcn 100 LABEL=vin
s 270 100 250 100 20
s 270 180 250 180 8
s 210 180 210 190 10
s 250 100 250 180 22
@junction
j 210 230
+ p 4 -
+ w 13
j 300 240
+ s 7
+ w 13
j 300 200
+ p 2 s
+ w 13
j 300 230
+ w 13
+ w 13
j 300 120
+ p 3 d
+ w 19
j 300 160
+ p 2 d
+ w 19
j 270 100
+ p 3 g
+ w 21
j 270 180
+ p 2 g
+ w 21
j 210 190
+ p 4 +
+ w 21
j 250 180
+ w 21
+ w 21
j 300 80
+ p 3 s
+ w 26
j 360 50
+ p 5 +
+ w 26
j 400 50
+ p 5 -
+ w 30
j 450 50
+ s 6
+ w 30
j 300 140
+ p 31 pin1
+ w 19
j 210 180
+ p 33 pin1
+ w 21
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
