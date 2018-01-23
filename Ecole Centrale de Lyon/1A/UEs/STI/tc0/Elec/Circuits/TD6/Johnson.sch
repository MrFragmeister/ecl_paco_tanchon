*version 9.1 998920927
u 83
U? 4
DSTM? 5
? 6
@libraries
@analysis
.TRAN 1 0 0 0
+0 0ns
+1 18us
.OPT 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
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
pageloc 1 0 4047 
@status
n 0 110:10:22:15:30:03;1290436203 e 
s 0 110:10:22:15:30:18;1290436218 e 
*page 1 0 970 720 iA
@ports
port 71 HI 400 50 d
@parts
part 63 STIM1 190 200 h
a 0 a 0:13 0 0 0 hln 100 PKGREF=DSTM1
a 0 ap 9 0 1 -2 hln 100 REFDES=DSTM1
a 0 u 0 0 0 80 hln 100 COMMAND1=1us 0
a 0 u 0 0 0 90 hln 100 COMMAND2=2us 1
part 4 7474 510 130 h
a 0 sp 11 0 40 80 hln 100 PART=7474
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 0 a 0:13 0 0 0 hln 100 PKGREF=U3
a 0 ap 9 0 40 8 hln 100 REFDES=U3A
part 3 7474 390 130 h
a 0 sp 11 0 40 80 hln 100 PART=7474
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 0 a 0:13 0 0 0 hln 100 PKGREF=U2
a 0 ap 9 0 40 8 hln 100 REFDES=U2A
part 2 7474 260 130 h
a 0 sp 11 0 40 80 hln 100 PART=7474
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 0 a 0:13 0 0 0 hln 100 PKGREF=U1
a 0 ap 9 0 40 8 hln 100 REFDES=U1A
part 70 DigClock 180 170 h
a 0 u 0 0 0 20 hln 100 ONTIME=2.5uS
a 0 u 0 0 0 30 hln 100 OFFTIME=2.5uS
a 0 a 0:13 0 0 0 hln 100 PKGREF=DSTM4
a 1 ap 9 0 0 -2 hln 100 REFDES=DSTM4
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 300 95 hrn 100 PAGENO=1
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
part 72 nodeMarker 370 130 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=1
part 74 nodeMarker 470 130 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=2
part 76 nodeMarker 580 130 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=3
part 80 nodeMarker 220 200 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=5
part 78 nodeMarker 200 190 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=U1A:CLK
a 0 a 0 0 4 22 hlb 100 LABEL=4
@conn
w 10
a 0 up 0:33 0 0 0 hln 100 LVL=
s 570 150 600 150 9
s 600 150 600 80 11
s 600 80 250 80 13
a 0 up 33 0 425 79 hct 100 LVL=
s 250 80 250 130 15
s 250 130 260 130 17
w 20
a 0 up 0:33 0 0 0 hln 100 LVL=
s 290 100 290 90 19
s 290 90 400 90 21
s 420 90 420 100 23
s 420 90 540 90 25
a 0 up 33 0 480 89 hct 100 LVL=
s 540 90 540 100 27
s 400 90 420 90 41
s 400 90 400 50 39
w 6
a 0 sr 0 0 0 0 hln 100 LABEL=Q[0]
a 0 up 0:33 0 0 0 hln 100 LVL=
s 320 130 370 130 5
a 0 sr 3 0 355 128 hcn 100 LABEL=Q[0]
a 0 up 33 0 355 129 hct 100 LVL=
s 370 130 390 130 73
w 8
a 0 sr 0 0 0 0 hln 100 LABEL=Q[1]
a 0 up 0:33 0 0 0 hln 100 LVL=
s 470 130 510 130 75
a 0 sr 3 0 480 128 hcn 100 LABEL=Q[1]
a 0 up 33 0 480 129 hct 100 LVL=
s 450 130 470 130 7
w 61
a 0 sr 0 0 0 0 hln 100 LABEL=Q[2]
a 0 up 0:33 0 0 0 hln 100 LVL=
s 580 130 590 130 77
a 0 sr 3 0 580 128 hcn 100 LABEL=Q[2]
a 0 up 33 0 580 129 hct 100 LVL=
s 570 130 580 130 60
w 30
a 0 up 0:33 0 0 0 hln 100 LVL=
s 540 180 540 200 29
s 540 200 420 200 31
s 420 200 420 180 33
s 420 200 290 200 35
a 0 up 33 0 355 199 hct 100 LVL=
s 290 200 290 180 37
s 290 200 220 200 42
s 220 200 190 200 81
w 67
a 0 up 0:33 0 0 0 hln 100 LVL=
s 180 170 190 170 66
s 510 150 500 150 44
s 500 150 500 190 46
s 500 190 390 190 48
s 390 190 390 150 50
s 390 190 250 190 52
a 0 up 33 0 320 189 hct 100 LVL=
s 250 190 250 150 54
s 250 150 260 150 56
s 190 170 190 190 68
s 250 190 200 190 79
s 200 190 190 190 82
@junction
j 320 130
+ p 2 Q
+ w 6
j 390 130
+ p 3 D
+ w 6
j 510 130
+ p 4 D
+ w 8
j 450 130
+ p 3 Q
+ w 8
j 570 150
+ p 4 \Q\
+ w 10
j 260 130
+ p 2 D
+ w 10
j 290 100
+ p 2 \PRE\
+ w 20
j 420 100
+ p 3 \PRE\
+ w 20
j 420 90
+ w 20
+ w 20
j 540 100
+ p 4 \PRE\
+ w 20
j 540 180
+ p 4 \CLR\
+ w 30
j 420 180
+ p 3 \CLR\
+ w 30
j 420 200
+ w 30
+ w 30
j 290 180
+ p 2 \CLR\
+ w 30
j 400 90
+ w 20
+ w 20
j 290 200
+ w 30
+ w 30
j 390 190
+ w 67
+ w 67
j 250 190
+ w 67
+ w 67
j 570 130
+ p 4 Q
+ w 61
j 190 200
+ p 63 pin1
+ w 30
j 510 150
+ p 4 CLK
+ w 67
j 390 150
+ p 3 CLK
+ w 67
j 260 150
+ p 2 CLK
+ w 67
j 180 170
+ p 70 1
+ w 67
j 400 50
+ s 71
+ w 20
j 370 130
+ p 72 pin1
+ w 6
j 470 130
+ p 74 pin1
+ w 8
j 580 130
+ p 76 pin1
+ w 61
j 220 200
+ p 80 pin1
+ w 30
j 200 190
+ p 78 pin1
+ w 67
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
