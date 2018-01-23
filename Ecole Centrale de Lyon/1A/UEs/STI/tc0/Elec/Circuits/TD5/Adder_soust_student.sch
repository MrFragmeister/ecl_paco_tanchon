*version 9.1 2517223639
u 220
U? 7
DSTM? 4
@libraries
@analysis
.TRAN 1 0 0 0
+0 0ns
+1 7us
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
pageloc 1 0 6038 
@status
n 0 110:11:15:09:37:20;1292402240 e 
s 0 110:11:15:09:37:27;1292402247 e 
c 110:11:15:09:39:27;1292402367
*page 1 0 970 720 iA
@ports
port 174 Lo 490 360 d
@parts
part 185 STIM4 170 100 h
a 0 u 0 0 0 90 hln 100 COMMAND2=1us 1001
a 0 a 0:13 0 0 0 hln 100 PKGREF=DSTM3
a 0 ap 9 0 1 -2 hln 100 REFDES=DSTM3
part 172 7483A 510 500 d
a 0 sp 11 0 40 110 hln 100 PART=7483A
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP16
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=U5
a 0 ap 9 0 40 -2 hln 100 REFDES=U5
part 173 74157 580 360 d
a 0 sp 11 0 0 130 hln 100 PART=74157
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP16
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=U6
a 1 ap 9 0 40 -2 hln 100 REFDES=U6
part 184 STIM4 340 70 h
a 0 u 0 0 0 90 hln 100 COMMAND2=2us 0100
a 0 a 0:13 0 0 0 hln 100 PKGREF=DSTM2
a 0 ap 9 0 1 -2 hln 100 REFDES=DSTM2
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 300 95 hrn 100 PAGENO=1
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
part 175 nodeMarker 440 100 h
a 0 s 0 0 0 0 hln 100 PROBEVAR={B[3:0]}
a 0 a 0 0 4 22 hlb 100 LABEL=1
part 179 nodeMarker 530 580 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=5
part 177 nodeMarker 560 70 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=2
@conn
w 3
a 0 sr 0:3 0 422 270 hln 100 LABEL=B[0]
a 0 up 0:33 0 0 0 hln 100 LVL=
s 420 100 420 440 2
a 0 sr 3 0 422 270 hln 100 LABEL=B[0]
a 0 up 33 0 422 271 hlt 100 LVL=
s 470 440 470 500 4
s 420 440 470 440 6
w 9
a 0 sr 0:3 0 402 275 hln 100 LABEL=B[1]
a 0 up 0:33 0 0 0 hln 100 LVL=
s 400 100 400 450 8
a 0 sr 3 0 402 275 hln 100 LABEL=B[1]
a 0 up 33 0 402 276 hlt 100 LVL=
s 460 450 460 500 10
s 400 450 460 450 12
w 15
a 0 sr 0:3 0 382 280 hln 100 LABEL=B[2]
a 0 up 0:33 0 0 0 hln 100 LVL=
s 380 100 380 460 14
a 0 sr 3 0 382 280 hln 100 LABEL=B[2]
a 0 up 33 0 382 281 hlt 100 LVL=
s 450 460 450 500 16
s 380 460 450 460 18
w 45
a 0 up 0:33 0 0 0 hln 100 LVL=
s 510 430 510 500 44
a 0 up 33 0 512 465 hlt 100 LVL=
w 47
a 0 up 0:33 0 0 0 hln 100 LVL=
s 530 430 530 450 46
s 530 450 500 450 48
s 500 450 500 500 50
a 0 up 33 0 502 475 hlt 100 LVL=
w 53
a 0 up 0:33 0 0 0 hln 100 LVL=
s 550 430 550 440 52
s 550 440 490 440 54
s 490 440 490 500 56
a 0 up 33 0 492 470 hlt 100 LVL=
w 59
a 0 up 0:33 0 0 0 hln 100 LVL=
s 570 430 570 460 58
s 570 460 480 460 60
a 0 up 33 0 525 459 hct 100 LVL=
s 480 460 480 500 62
w 99
a 0 sr 3 0 432 570 hln 100 LABEL=S[0]
a 0 up 0:33 0 0 0 hln 100 LVL=
s 430 560 430 580 98
a 0 sr 3 0 432 570 hln 100 LABEL=S[0]
a 0 up 33 0 432 571 hlt 100 LVL=
w 101
a 0 sr 3 0 452 570 hln 100 LABEL=S[1]
a 0 up 0:33 0 0 0 hln 100 LVL=
s 450 560 450 580 100
a 0 sr 3 0 452 570 hln 100 LABEL=S[1]
a 0 up 33 0 452 571 hlt 100 LVL=
w 103
a 0 sr 3 0 472 570 hln 100 LABEL=S[2]
a 0 up 0:33 0 0 0 hln 100 LVL=
s 470 560 470 580 102
a 0 sr 3 0 472 570 hln 100 LABEL=S[2]
a 0 up 33 0 472 571 hlt 100 LVL=
w 105
a 0 sr 3 0 492 570 hln 100 LABEL=S[3]
a 0 up 0:33 0 0 0 hln 100 LVL=
s 490 560 490 580 104
a 0 sr 3 0 492 570 hln 100 LABEL=S[3]
a 0 up 33 0 492 571 hlt 100 LVL=
w 115
a 0 sr 0:3 0 362 285 hln 100 LABEL=B[3]
a 0 up 0:33 0 0 0 hln 100 LVL=
s 360 470 360 100 114
a 0 sr 3 0 362 285 hln 100 LABEL=B[3]
a 0 up 33 0 362 286 hlt 100 LVL=
s 440 470 360 470 116
s 440 500 440 470 118
w 193
a 0 sr 3 0 712 215 hln 100 LABEL=A[O]
a 0 up 0:33 0 0 0 hln 100 LVL=
s 710 70 710 360 88
a 0 sr 3 0 712 215 hln 100 LABEL=A[O]
a 0 up 33 0 712 216 hlt 100 LVL=
s 710 360 580 360 96
w 189
a 0 up 0:33 0 0 0 hln 100 LVL=
a 0 sr 0:3 0 592 105 hln 100 LABEL=A[2]
s 590 70 590 280 195
a 0 up 33 0 592 106 hlt 100 LVL=
a 0 sr 3 0 592 105 hln 100 LABEL=A[2]
s 540 280 540 360 199
s 590 280 540 280 197
w 191
a 0 sr 0:3 0 652 120 hln 100 LABEL=A[1]
a 0 up 0:33 0 0 0 hln 100 LVL=
s 650 70 650 310 201
a 0 up 33 0 652 106 hlt 100 LVL=
a 0 sr 3 0 652 105 hln 100 LABEL=A[1]
s 560 310 560 360 205
s 650 310 560 310 203
w 107
a 0 sr 0:3 0 522 120 hln 100 LABEL=A[3]
a 0 up 0:33 0 0 0 hln 100 LVL=
s 520 70 520 360 106
a 0 sr 3 0 522 120 hln 100 LABEL=A[3]
a 0 up 33 0 522 121 hlt 100 LVL=
b 135
a 0 sr 0:3 0 615 578 hcn 100 LABEL=S[3:0]
s 530 580 700 580 180
a 0 sr 3 0 615 578 hcn 100 LABEL=S[3:0]
s 490 580 530 580 142
s 430 580 450 580 136
s 450 580 470 580 138
s 470 580 490 580 140
b 145
a 0 sr 0:3 0 265 98 hcn 100 LABEL=B[3:0]
s 170 100 360 100 144
a 0 sr 3 0 265 98 hcn 100 LABEL=B[3:0]
s 360 100 380 100 154
s 420 100 440 100 148
s 400 100 420 100 150
s 380 100 400 100 152
s 440 100 470 100 176
b 157
a 0 sr 0:3 0 430 68 hcn 100 LABEL=A[3:0]
s 340 70 520 70 156
a 0 sr 3 0 430 68 hcn 100 LABEL=A[3:0]
s 710 70 730 70 164
s 650 70 710 70 210
s 520 70 560 70 166
s 560 70 590 70 178
s 590 70 650 70 219
@junction
j 490 580
+ w 105
+ b 135
 S[3]
j 430 580
+ w 99
+ b 135
 S[0]
j 450 580
+ w 101
+ b 135
 S[1]
j 470 580
+ w 103
+ b 135
 S[2]
j 360 100
+ w 115
+ b 145
 B[3]
j 380 100
+ w 15
+ b 145
 B[2]
j 420 100
+ w 3
+ b 145
 B[0]
j 400 100
+ w 9
+ b 145
 B[1]
j 710 70
+ w 193
+ b 157
 A[0]
j 470 500
+ p 172 B4
+ w 3
j 460 500
+ p 172 B3
+ w 9
j 450 500
+ p 172 B2
+ w 15
j 510 500
+ p 172 A4
+ w 45
j 500 500
+ p 172 A3
+ w 47
j 490 500
+ p 172 A2
+ w 53
j 480 500
+ p 172 A1
+ w 59
j 430 560
+ p 172 SUM1
+ w 99
j 450 560
+ p 172 SUM2
+ w 101
j 470 560
+ p 172 SUM3
+ w 103
j 490 560
+ p 172 SUM4
+ w 105
j 440 500
+ p 172 B1
+ w 115
j 510 430
+ p 173 4Y
+ w 45
j 530 430
+ p 173 3Y
+ w 47
j 550 430
+ p 173 2Y
+ w 53
j 570 430
+ p 173 1Y
+ w 59
j 580 360
+ p 173 1A
+ w 193
j 520 360
+ p 173 4A
+ w 107
j 490 360
+ s 174
+ p 173 STROBE\G\
j 440 100
+ p 175 pin1
+ b 145
j 530 580
+ p 179 pin1
+ b 135
j 170 100
+ P 185 pin[0-3]
 pin[0]
 pin[1]
 pin[2]
 pin[3]
+ b 145
 B[3]
 B[2]
 B[1]
 B[0]
j 540 360
+ p 173 3A
+ w 189
j 650 70
+ w 191
+ b 157
 A[1]
j 560 360
+ p 173 2A
+ w 191
j 520 70
+ w 107
+ b 157
 A[3]
j 560 70
+ p 177 pin1
+ b 157
j 340 70
+ P 184 pin[0-3]
 pin[0]
 pin[1]
 pin[2]
 pin[3]
+ b 157
 A[3]
 A[2]
 A[1]
 A[0]
j 590 70
+ w 189
+ b 157
 A[2]
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
