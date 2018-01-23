*version 9.1 5496756
u 87
U? 9
@libraries
@analysis
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
pageloc 1 0 3697 
@status
c 110:00:10:15:07:23;1263132443
*page 1 0 970 720 iA
@ports
port 29 IF_IN 150 50 d
a 1 xr 3 0 19 8 hcn 100 LABEL=B
port 28 IF_IN 110 50 d
a 1 xr 3 0 19 8 hcn 100 LABEL=A
port 30 IF_IN 190 50 d
a 1 xr 3 0 19 8 hcn 100 LABEL=Cin
port 31 IF_OUT 660 180 h
a 1 xr 3 0 31 8 hcn 100 LABEL=S
port 32 IF_OUT 660 410 h
a 1 xr 3 0 31 8 hcn 100 LABEL=R
@parts
part 2 7486 320 120 h
a 0 sp 11 0 40 50 hln 100 PART=7486
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 0 a 0:13 0 0 0 hln 100 PKGREF=U1
a 0 ap 9 0 40 0 hln 100 REFDES=U1A
part 3 7486 440 170 h
a 0 sp 11 0 40 50 hln 100 PART=7486
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 0 a 0:13 0 0 0 hln 100 PKGREF=U2
a 0 ap 9 0 40 0 hln 100 REFDES=U2A
part 5 7408 320 350 h
a 0 sp 11 0 40 50 hln 100 PART=7408
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 0 a 0:13 0 0 0 hln 100 PKGREF=U4
a 0 ap 9 0 40 0 hln 100 REFDES=U4A
part 6 7408 320 430 h
a 0 sp 11 0 40 50 hln 100 PART=7408
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 0 a 0:13 0 0 0 hln 100 PKGREF=U5
a 0 ap 9 0 40 0 hln 100 REFDES=U5A
part 7 7408 320 510 h
a 0 sp 11 0 40 50 hln 100 PART=7408
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 0 a 0:13 0 0 0 hln 100 PKGREF=U6
a 0 ap 9 0 40 0 hln 100 REFDES=U6A
part 61 7432 460 390 h
a 0 sp 11 0 40 50 hln 100 PART=7432
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 0 a 0:13 0 0 0 hln 100 PKGREF=U7
a 0 ap 9 0 40 0 hln 100 REFDES=U7A
part 62 7432 560 450 h
a 0 sp 11 0 40 50 hln 100 PART=7432
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 0 a 0:13 0 0 0 hln 100 PKGREF=U8
a 0 ap 9 0 40 0 hln 100 REFDES=U8A
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
@conn
w 13
s 390 130 420 130 12
s 420 130 420 170 14
s 420 170 440 170 16
w 21
s 510 180 660 180 20
w 11
s 150 50 150 140 24
s 150 140 150 370 38
s 150 140 320 140 36
s 150 370 150 430 47
s 150 370 320 370 45
s 150 430 150 520 50
s 150 430 320 430 48
w 9
s 110 50 110 120 22
s 110 120 110 350 35
s 110 120 320 120 33
s 110 350 110 510 44
s 110 350 320 350 42
s 110 510 110 520 56
s 320 510 110 510 54
w 58
s 320 530 190 530 57
s 190 50 190 190 26
s 190 190 190 450 41
s 190 190 440 190 39
s 320 450 190 450 51
s 190 530 190 450 59
w 64
s 390 360 460 360 63
s 460 360 460 390 65
w 68
s 390 440 400 440 67
s 400 440 400 410 69
s 400 410 460 410 71
w 74
s 390 520 510 520 73
s 510 520 510 470 75
s 510 470 560 470 77
w 80
s 530 400 530 450 79
s 530 450 560 450 81
w 84
s 630 460 630 410 83
s 630 410 660 410 85
@junction
j 320 120
+ p 2 A
+ w 9
j 320 140
+ p 2 B
+ w 11
j 390 130
+ p 2 Y
+ w 13
j 440 170
+ p 3 A
+ w 13
j 510 180
+ p 3 Y
+ w 21
j 660 180
+ s 31
+ w 21
j 110 50
+ s 28
+ w 9
j 110 120
+ w 9
+ w 9
j 150 50
+ s 29
+ w 11
j 150 140
+ w 11
+ w 11
j 190 190
+ w 58
+ w 58
j 320 350
+ p 5 A
+ w 9
j 110 350
+ w 9
+ w 9
j 320 370
+ p 5 B
+ w 11
j 150 370
+ w 11
+ w 11
j 320 430
+ p 6 A
+ w 11
j 150 430
+ w 11
+ w 11
j 190 450
+ w 58
+ w 58
j 320 510
+ p 7 A
+ w 9
j 110 510
+ w 9
+ w 9
j 320 530
+ p 7 B
+ w 58
j 440 190
+ p 3 B
+ w 58
j 190 50
+ s 30
+ w 58
j 320 450
+ p 6 B
+ w 58
j 390 360
+ p 5 Y
+ w 64
j 460 390
+ p 61 A
+ w 64
j 390 440
+ p 6 Y
+ w 68
j 460 410
+ p 61 B
+ w 68
j 390 520
+ p 7 Y
+ w 74
j 560 470
+ p 62 B
+ w 74
j 530 400
+ p 61 Y
+ w 80
j 560 450
+ p 62 A
+ w 80
j 630 460
+ p 62 Y
+ w 84
j 660 410
+ s 32
+ w 84
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
