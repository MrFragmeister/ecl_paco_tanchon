*version 9.1 999927403
u 434
U? 8
DSTM? 8
? 23
@libraries
@analysis
.TRAN 1 0 0 0
+0 0ns
+1 10us
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
pageloc 1 0 6926 
@status
c 110:11:02:16:32:42;1291303962
n 0 110:11:02:16:32:48;1291303968 e 
s 2832 110:11:02:16:32:52;1291303972 e 
*page 1 0 970 720 iA
@ports
port 193 HI 240 300 h
port 206 LO 240 310 h
port 355 LO 280 160 d
port 431 LO 240 220 h
port 432 LO 240 230 h
port 430 HI 240 240 h
port 433 HI 240 250 h
@parts
part 269 DigClock 410 290 h
a 0 a 0:13 0 0 0 hln 100 PKGREF=DSTM4
a 1 ap 9 0 0 -2 hln 100 REFDES=DSTM4
part 349 DigClock 300 160 d
a 0 u 0 0 0 20 hln 100 ONTIME=3S
a 0 u 0 0 0 10 hln 100 DELAY=5u
a 0 a 0:13 0 0 0 hln 100 PKGREF=DSTM7
a 1 ap 9 0 0 -2 hln 100 REFDES=DSTM7
part 267 DigClock 430 330 h
a 0 u 0 0 0 20 hln 100 ONTIME=3S
a 0 a 0:13 0 0 0 hln 100 PKGREF=DSTM3
a 1 ap 9 0 0 -2 hln 100 REFDES=DSTM3
a 0 u 0 0 0 10 hln 100 DELAY=0.1u
part 268 74175 410 200 h
a 0 sp 11 0 40 118 hln 100 PART=74175
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP16
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=U7
a 0 ap 9 0 40 -2 hln 100 REFDES=U7
part 2 74181 260 220 h
a 0 sp 11 0 38 140 hln 100 PART=74181
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP24
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=U1
a 0 ap 9 0 54 8 hln 100 REFDES=U1
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
part 274 nodeMarker 440 330 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=DSTM3:1
a 0 a 0 0 4 22 hlb 100 LABEL=11
part 330 nodeMarker 380 200 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=14
part 332 nodeMarker 380 220 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=15
part 334 nodeMarker 380 240 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=16
part 336 nodeMarker 380 260 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=17
part 346 nodeMarker 410 290 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=22
part 338 nodeMarker 480 210 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=18
part 340 nodeMarker 480 230 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=19
part 342 nodeMarker 480 250 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=20
part 344 nodeMarker 480 270 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=21
@conn
w 132
a 0 up 0:33 0 0 0 hln 100 LVL=
s 240 300 260 300 131
a 0 up 33 0 250 299 hct 100 LVL=
w 122
a 0 up 0:33 0 0 0 hln 100 LVL=
s 240 310 260 310 121
a 0 up 33 0 250 309 hct 100 LVL=
w 228
a 0 up 0:33 0 0 0 hln 100 LVL=
s 440 330 430 330 229
s 440 310 440 330 227
a 0 up 33 0 442 320 hlt 100 LVL=
w 317
a 0 sr 0:3 0 375 348 hcn 100 LABEL=s0
a 0 up 0:33 0 0 0 hln 100 LVL=
s 330 200 380 200 318
a 0 sr 3 0 375 198 hcn 100 LABEL=s0
a 0 up 33 0 375 199 hct 100 LVL=
s 330 220 330 200 316
s 380 200 410 200 331
w 321
a 0 sr 0:3 0 360 368 hcn 100 LABEL=s1
a 0 up 0:33 0 0 0 hln 100 LVL=
s 380 220 350 220 333
a 0 sr 3 0 370 218 hcn 100 LABEL=s1
a 0 up 33 0 370 219 hct 100 LVL=
s 410 220 380 220 253
a 0 up 33 0 370 219 hct 100 LVL=
s 330 230 350 230 320
s 350 230 350 220 322
w 256
a 0 sr 0:3 0 360 388 hcn 100 LABEL=s2
a 0 up 0:33 0 0 0 hln 100 LVL=
s 330 240 380 240 324
a 0 up 33 0 370 239 hct 100 LVL=
a 0 sr 3 0 370 238 hcn 100 LABEL=s2
s 380 240 410 240 335
w 327
a 0 sr 0:3 0 360 408 hcn 100 LABEL=s3
a 0 up 0:33 0 0 0 hln 100 LVL=
s 380 260 350 260 337
a 0 sr 3 0 370 258 hcn 100 LABEL=s3
a 0 up 33 0 370 259 hct 100 LVL=
s 410 260 380 260 261
a 0 up 33 0 370 259 hct 100 LVL=
s 330 250 350 250 326
s 350 250 350 260 328
w 264
a 0 up 0:33 0 0 0 hln 100 LVL=
s 410 290 410 280 293
a 0 up 33 0 425 289 hct 100 LVL=
w 108
a 0 up 0:33 0 0 0 hln 100 LVL=
s 280 160 280 190 107
a 0 up 33 0 282 175 hlt 100 LVL=
w 357
a 0 up 0:33 0 0 0 hln 100 LVL=
s 290 190 290 160 356
s 300 160 300 170 352
a 0 up 33 0 302 170 hlt 100 LVL=
s 290 160 300 160 358
s 300 170 300 190 362
s 300 170 310 170 360
s 310 170 310 190 363
w 411
a 0 up 0:33 0 0 0 hln 100 LVL=
s 470 210 480 210 410
s 510 80 180 80 382
a 0 up 33 0 380 79 hct 100 LVL=
s 180 80 180 260 384
s 180 260 260 260 386
s 510 210 510 80 412
s 480 210 510 210 426
w 415
a 0 up 0:33 0 0 0 hln 100 LVL=
s 470 230 480 230 414
s 520 70 170 70 388
a 0 up 33 0 380 69 hct 100 LVL=
s 170 70 170 270 390
s 170 270 260 270 392
s 520 230 520 70 416
s 480 230 520 230 427
w 419
a 0 up 0:33 0 0 0 hln 100 LVL=
s 470 250 480 250 418
s 530 60 160 60 394
a 0 up 33 0 380 59 hct 100 LVL=
s 160 60 160 280 396
s 160 280 260 280 398
s 530 250 530 60 420
s 480 250 530 250 428
w 423
a 0 up 0:33 0 0 0 hln 100 LVL=
s 470 270 480 270 422
s 540 50 150 50 400
a 0 up 33 0 380 49 hct 100 LVL=
s 150 50 150 290 402
s 150 290 260 290 404
s 540 270 540 50 424
s 480 270 540 270 429
w 370
a 0 up 0:33 0 0 0 hln 100 LVL=
s 240 220 260 220 369
a 0 up 33 0 250 219 hct 100 LVL=
w 372
a 0 up 0:33 0 0 0 hln 100 LVL=
s 240 230 260 230 371
a 0 up 33 0 250 229 hct 100 LVL=
w 374
a 0 up 0:33 0 0 0 hln 100 LVL=
s 240 240 260 240 373
a 0 up 33 0 250 239 hct 100 LVL=
w 376
a 0 up 0:33 0 0 0 hln 100 LVL=
s 240 250 260 250 375
a 0 up 33 0 250 249 hct 100 LVL=
@junction
j 280 190
+ p 2 S3
+ w 108
j 260 310
+ p 2 M
+ w 122
j 260 300
+ p 2 CN
+ w 132
j 240 300
+ s 193
+ w 132
j 240 310
+ s 206
+ w 122
j 430 330
+ p 267 1
+ w 228
j 440 330
+ p 274 pin1
+ w 228
j 440 310
+ p 268 \CLR\
+ w 228
j 410 240
+ p 268 3D
+ w 256
j 330 220
+ p 2 \F\0
+ w 317
j 410 200
+ p 268 1D
+ w 317
j 330 230
+ p 2 \F\1
+ w 321
j 410 220
+ p 268 2D
+ w 321
j 330 240
+ p 2 \F\2
+ w 256
j 330 250
+ p 2 \F\3
+ w 327
j 410 260
+ p 268 4D
+ w 327
j 410 280
+ p 268 CLK
+ w 264
j 380 200
+ p 330 pin1
+ w 317
j 380 220
+ p 332 pin1
+ w 321
j 380 240
+ p 334 pin1
+ w 256
j 380 260
+ p 336 pin1
+ w 327
j 410 290
+ p 346 pin1
+ w 264
j 280 160
+ s 355
+ w 108
j 410 290
+ p 269 1
+ w 264
j 410 290
+ p 346 pin1
+ p 269 1
j 290 190
+ p 2 S2
+ w 357
j 300 160
+ p 349 1
+ w 357
j 300 190
+ p 2 S1
+ w 357
j 300 170
+ w 357
+ w 357
j 310 190
+ p 2 S0
+ w 357
j 260 220
+ p 2 \A\0
+ w 370
j 260 230
+ p 2 \A\1
+ w 372
j 260 240
+ p 2 \A\2
+ w 374
j 260 250
+ p 2 \A\3
+ w 376
j 470 210
+ p 268 1\Q\
+ w 411
j 260 260
+ p 2 \B\0
+ w 411
j 470 230
+ p 268 2\Q\
+ w 415
j 260 270
+ p 2 \B\1
+ w 415
j 470 250
+ p 268 3\Q\
+ w 419
j 260 280
+ p 2 \B\2
+ w 419
j 470 270
+ p 268 4\Q\
+ w 423
j 260 290
+ p 2 \B\3
+ w 423
j 480 210
+ p 338 pin1
+ w 411
j 480 230
+ p 340 pin1
+ w 415
j 480 250
+ p 342 pin1
+ w 419
j 480 270
+ p 344 pin1
+ w 423
j 240 220
+ s 431
+ w 370
j 240 230
+ s 432
+ w 372
j 240 240
+ s 430
+ w 374
j 240 250
+ s 433
+ w 376
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
t 354 t 5 380 116 474 130 0 26
résultat : 3, 6, 9, 12, 11
