*version 9.1 534901047
u 48
U? 2
R? 4
C? 3
V? 2
? 2
@libraries
@analysis
.AC 1 1 0
+0 101
+1 10
+2 100.00K
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
pageloc 1 0 3169 
@status
n 0 110:00:10:09:27:53;1263112073 e 
s 2832 110:00:10:09:28:11;1263112091 e 
*page 1 0 970 720 iA
@ports
port 37 AGND 290 270 h
@parts
part 2 OPAMP 370 190 h
a 0 sp 11 0 50 60 hln 100 PART=OPAMP
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=U1
a 0 ap 9 0 14 0 hln 100 REFDES=U1
part 36 VAC 200 210 h
a 0 sp 0 0 0 50 hln 100 PART=VAC
a 0 a 0:13 0 0 0 hln 100 PKGREF=V1
a 1 ap 9 0 20 10 hcn 100 REFDES=V1
a 1 u 0 0 0 0 hcn 100 DC=1
a 0 u 13 0 -9 23 hcn 100 ACMAG=1
part 3 R 270 190 h
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 15 0 hln 100 REFDES=R1
a 0 u 13 0 15 25 hln 100 VALUE=5k
part 5 R 360 190 u
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R3
a 0 ap 9 0 15 0 hln 100 REFDES=R3
a 0 u 13 0 15 25 hln 100 VALUE=18.7k
part 4 R 310 160 v
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R2
a 0 ap 9 0 15 0 hln 100 REFDES=R2
a 0 u 13 0 15 25 hln 100 VALUE=5k
part 6 c 310 240 v
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C1
a 0 ap 9 0 15 0 hln 100 REFDES=C1
a 0 u 13 0 15 25 hln 100 VALUE=15n
part 7 c 360 150 v
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C2
a 0 ap 9 0 15 0 hln 100 REFDES=C2
a 0 u 13 0 15 25 hln 100 VALUE=1.56n
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 300 95 hrn 100 PAGENO=1
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
part 47 nodeMarker 450 120 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=1
@conn
w 11
a 0 up 0:33 0 0 0 hln 100 V=
s 310 190 320 190 10
s 310 190 310 210 12
s 310 160 310 170 14
s 310 170 320 170 16
s 320 170 320 190 18
a 0 up 33 0 322 180 hlt 100 V=
w 21
a 0 up 0:33 0 0 0 hln 100 V=
s 360 190 360 150 20
a 0 up 33 0 362 170 hlt 100 V=
s 360 190 370 190 22
w 9
a 0 up 0:33 0 0 0 hln 100 V=
s 200 190 270 190 8
a 0 up 33 0 235 189 hct 100 V=
s 200 190 200 210 38
w 31
a 0 up 0:33 0 0 0 hln 100 V=
s 370 230 370 260 30
s 370 260 310 260 32
s 310 260 310 240 34
s 200 250 200 260 40
s 200 260 290 260 42
a 0 up 33 0 245 259 hct 100 V=
s 290 260 310 260 46
s 290 260 290 270 44
w 25
a 0 up 0:33 0 0 0 hln 100 V=
s 310 120 360 120 24
s 360 120 450 120 26
s 450 120 450 210 28
a 0 up 33 0 452 165 hlt 100 V=
@junction
j 270 190
+ p 3 1
+ w 9
j 320 190
+ p 5 2
+ w 11
j 310 190
+ p 3 2
+ w 11
j 310 210
+ p 6 2
+ w 11
j 310 160
+ p 4 1
+ w 11
j 360 150
+ p 7 1
+ w 21
j 360 190
+ p 5 1
+ w 21
j 370 190
+ p 2 +
+ w 21
j 310 120
+ p 4 2
+ w 25
j 360 120
+ p 7 2
+ w 25
j 450 210
+ p 2 OUT
+ w 25
j 370 230
+ p 2 -
+ w 31
j 310 240
+ p 6 1
+ w 31
j 200 210
+ p 36 +
+ w 9
j 200 250
+ p 36 -
+ w 31
j 310 260
+ w 31
+ w 31
j 290 270
+ s 37
+ w 31
j 290 260
+ w 31
+ w 31
j 450 120
+ p 47 pin1
+ w 25
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
