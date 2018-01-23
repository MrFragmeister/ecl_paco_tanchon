*version 9.1 2857415277
u 59
R? 3
C? 3
X? 2
V? 2
DSTM? 2
? 4
@libraries
@analysis
.TRAN 1 0 0 0
+0 1ns
+1 50us
+3 1ns
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
pageloc 1 0 3809 
@status
n 0 118:00:21:15:51:51;1516546311 e 
s 2832 118:00:21:15:51:51;1516546311 e 
*page 1 0 970 720 iA
@ports
port 2 GND_ANALOG 270 300 h
port 8 GND_ANALOG 420 160 v
port 9 GND_ANALOG 480 60 v
@parts
part 3 r 160 130 v
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 15 0 hln 100 REFDES=R1
part 6 c 110 280 v
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C2
a 0 ap 9 0 15 0 hln 100 REFDES=C2
part 5 c 160 280 v
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C1
a 0 ap 9 0 15 0 hln 100 REFDES=C1
part 7 555D 210 150 h
a 0 sp 11 0 66 100 hlb 100 PART=555D
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP8
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=X1
a 1 ap 9 0 70 8 hln 100 REFDES=X1
part 4 r 350 160 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R2
a 0 ap 9 0 15 0 hln 100 REFDES=R2
a 0 u 13 0 15 25 hln 100 VALUE=40k
part 10 VDC 400 60 v
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 a 0:13 0 0 0 hln 100 PKGREF=V1
a 1 ap 9 0 24 7 hcn 100 REFDES=V1
a 1 u 13 0 -11 18 hcn 100 DC=5V
part 11 STIM1 100 150 h
a 0 a 0:13 0 0 0 hln 100 PKGREF=DSTM1
a 0 ap 9 0 1 -2 hln 100 REFDES=DSTM1
a 0 u 0 0 0 80 hln 100 COMMAND1=0s 1
a 0 u 0 0 0 90 hln 100 COMMAND2=1us 0
a 0 u 0 0 0 100 hln 100 COMMAND3=15us 1
a 0 u 0 0 0 110 hln 100 COMMAND4=30us 0
a 0 u 0 0 0 120 hln 100 COMMAND5=39us 1
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 300 95 hrn 100 PAGENO=1
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
part 55 nodeMarker 320 160 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=1
part 57 nodeMarker 160 190 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=2
part 58 nodeMarker 100 150 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=3
@conn
w 28
s 210 170 110 170 27
s 110 170 110 250 29
w 32
s 110 280 110 300 31
s 160 280 160 300 20
s 160 300 260 300 22
s 260 300 270 300 26
s 260 220 260 300 24
s 110 300 160 300 33
w 15
s 400 60 260 60 14
s 160 60 160 90 16
s 190 60 160 60 37
s 190 60 190 160 35
s 190 160 210 160 38
s 260 60 190 60 48
s 260 120 260 60 46
w 52
s 420 160 390 160 51
w 54
s 440 60 480 60 53
w 50
a 0 sr 0 0 0 0 hln 100 LABEL=out
s 320 160 350 160 56
a 0 sr 3 0 330 158 hcn 100 LABEL=out
s 310 160 320 160 49
w 19
a 0 sr 0 0 0 0 hln 100 LABEL=discharge
s 210 190 160 190 43
a 0 sr 3 0 185 188 hcn 100 LABEL=discharge
s 160 130 160 180 18
s 160 180 160 190 42
s 210 180 160 180 40
s 160 190 160 250 45
w 13
a 0 sr 0 0 0 0 hln 100 LABEL=trig
s 100 150 210 150 12
a 0 sr 3 0 155 148 hcn 100 LABEL=trig
@junction
j 210 150
+ p 7 TRIGGER
+ w 13
j 100 150
+ p 11 pin1
+ w 13
j 400 60
+ p 10 +
+ w 15
j 160 90
+ p 3 2
+ w 15
j 160 250
+ p 5 2
+ w 19
j 160 130
+ p 3 1
+ w 19
j 260 300
+ w 32
+ w 32
j 210 170
+ p 7 CONTROL
+ w 28
j 110 250
+ p 6 2
+ w 28
j 110 280
+ p 6 1
+ w 32
j 160 280
+ p 5 1
+ w 32
j 270 300
+ s 2
+ w 32
j 260 220
+ p 7 GND
+ w 32
j 160 300
+ w 32
+ w 32
j 190 60
+ w 15
+ w 15
j 210 160
+ p 7 RESET
+ w 15
j 210 180
+ p 7 THRESHOLD
+ w 19
j 160 180
+ w 19
+ w 19
j 210 190
+ p 7 DISCHARGE
+ w 19
j 160 190
+ w 19
+ w 19
j 260 120
+ p 7 VCC
+ w 15
j 260 60
+ w 15
+ w 15
j 350 160
+ p 4 1
+ w 50
j 310 160
+ p 7 OUTPUT
+ w 50
j 390 160
+ p 4 2
+ w 52
j 420 160
+ s 8
+ w 52
j 440 60
+ p 10 -
+ w 54
j 480 60
+ s 9
+ w 54
j 320 160
+ p 55 pin1
+ w 50
j 160 190
+ p 57 pin1
+ w 19
j 100 150
+ p 58 pin1
+ p 11 pin1
j 100 150
+ p 58 pin1
+ w 13
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
