*version 9.1 580472433
u 950
U? 20
DSTM? 6
? 7
@libraries
@analysis
.TRAN 1 0 0 0
+0 0ns
+1 400us
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
pageloc 1 0 13078 
@status
c 118:00:22:09:04:36;1516608276
n 0 118:00:22:09:04:42;1516608282 e 
s 2832 118:00:22:09:04:42;1516608282 e 
*page 1 0 970 720 iA
@ports
port 68 LO 680 360 d
port 70 HI 670 380 d
port 71 HI 660 360 d
port 69 LO 650 380 d
port 866 LO 340 440 d
port 944 LO 570 410 h
port 943 LO 530 260 d
@parts
part 2 7483A 190 350 d
a 0 sp 11 0 40 110 hln 100 PART=7483A
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP16
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=U1
a 0 ap 9 0 40 -2 hln 100 REFDES=U1
part 660 74157 430 480 d
a 0 sp 11 0 0 130 hln 100 PART=74157
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP16
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=U17
a 1 ap 9 0 40 -2 hln 100 REFDES=U17
part 900 7402 360 330 u
a 0 sp 11 0 40 50 hln 100 PART=7402
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 0 a 0:13 0 0 0 hln 100 PKGREF=U19
a 0 ap 9 0 40 0 hln 100 REFDES=U19A
part 4 7483A 680 410 d
a 0 sp 11 0 40 110 hln 100 PART=7483A
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP16
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=U3
a 0 ap 9 0 40 -2 hln 100 REFDES=U3
part 3 7483A 610 270 d
a 0 sp 11 0 40 110 hln 100 PART=7483A
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP16
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=U2
a 0 ap 9 0 40 -2 hln 100 REFDES=U2
part 938 STIM8 940 60 d
a 0 a 0:13 0 0 0 hln 100 PKGREF=DSTM5
a 0 ap 9 0 1 -2 hln 100 REFDES=DSTM5
a 0 u 0 0 0 80 hln 100 COMMAND1=0s 00001000
part 937 STIM8 80 80 v
a 0 a 0:13 0 0 0 hln 100 PKGREF=DSTM4
a 0 ap 9 0 1 -2 hln 100 REFDES=DSTM4
a 0 u 0 0 0 80 hln 100 COMMAND1=0s 00000010
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
part 854 nodeMarker 440 60 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=1
part 856 nodeMarker 400 80 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=2
part 858 nodeMarker 50 540 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=3
part 860 nodeMarker 280 620 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=4
@conn
w 73
a 0 up 0:33 0 0 0 hln 100 LVL=
s 680 360 680 410 72
a 0 up 33 0 682 385 hlt 100 LVL=
w 75
a 0 up 0:33 0 0 0 hln 100 LVL=
s 670 380 670 410 74
a 0 up 33 0 672 395 hlt 100 LVL=
w 77
a 0 up 0:33 0 0 0 hln 100 LVL=
s 660 360 660 410 76
a 0 up 33 0 662 385 hlt 100 LVL=
w 79
a 0 up 0:33 0 0 0 hln 100 LVL=
s 650 380 650 410 78
a 0 up 33 0 652 395 hlt 100 LVL=
w 81
a 0 up 0:33 0 0 0 hln 100 LVL=
s 590 330 590 360 80
s 590 360 640 360 82
s 640 360 640 410 84
s 590 360 370 360 749
a 0 up 33 0 480 359 hct 100 LVL=
s 370 360 370 480 751
w 87
a 0 up 0:33 0 0 0 hln 100 LVL=
s 570 330 570 370 86
s 570 370 630 370 88
s 630 370 630 410 90
s 570 370 390 370 753
a 0 up 33 0 480 369 hct 100 LVL=
s 390 370 390 480 755
w 93
a 0 up 0:33 0 0 0 hln 100 LVL=
s 550 330 550 380 92
s 550 380 620 380 94
s 620 380 620 410 96
s 550 380 410 380 757
a 0 up 33 0 480 379 hct 100 LVL=
s 410 380 410 480 759
w 748
a 0 up 0:33 0 0 0 hln 100 LVL=
s 530 330 530 390 98
s 530 390 610 390 104
s 610 390 610 410 106
s 530 390 430 390 761
a 0 up 33 0 480 389 hct 100 LVL=
s 430 390 430 480 763
w 766
a 0 up 0:33 0 0 0 hln 100 LVL=
s 600 470 520 470 765
s 520 470 520 400 767
s 520 400 420 400 769
a 0 up 33 0 470 399 hct 100 LVL=
s 420 400 420 480 771
w 774
a 0 up 0:33 0 0 0 hln 100 LVL=
s 620 470 620 480 773
s 620 480 510 480 775
s 510 480 510 410 777
s 510 410 400 410 779
a 0 up 33 0 455 409 hct 100 LVL=
s 400 410 400 480 781
w 784
a 0 up 0:33 0 0 0 hln 100 LVL=
s 640 470 640 490 783
s 640 490 500 490 785
a 0 up 33 0 570 489 hct 100 LVL=
s 500 490 500 420 787
s 500 420 380 420 789
s 380 420 380 480 791
w 794
a 0 up 0:33 0 0 0 hln 100 LVL=
s 660 470 660 500 793
s 660 500 490 500 795
a 0 up 33 0 575 499 hct 100 LVL=
s 490 500 490 430 797
s 490 430 360 430 799
s 360 430 360 480 801
w 394
a 0 sr 0:3 0 672 75 hln 100 LABEL=A[3]
a 0 up 0:33 0 0 0 hln 100 LVL=
s 670 200 670 60 715
a 0 sr 3 0 672 75 hln 100 LABEL=A[3]
a 0 up 33 0 672 76 hlt 100 LVL=
s 610 200 610 270 607
s 610 200 670 200 713
w 697
a 0 sr 0:3 0 642 85 hln 100 LABEL=A[2]
a 0 up 0:33 0 0 0 hln 100 LVL=
s 640 60 640 160 722
a 0 sr 3 0 642 85 hln 100 LABEL=A[2]
a 0 up 33 0 642 86 hlt 100 LVL=
s 640 160 600 160 724
s 600 160 600 270 726
w 629
a 0 sr 0:3 0 212 75 hln 100 LABEL=A[7]
a 0 up 0:33 0 0 0 hln 100 LVL=
s 210 60 210 150 62
a 0 sr 3 0 212 75 hln 100 LABEL=A[7]
a 0 up 33 0 212 76 hlt 100 LVL=
s 210 150 190 150 656
s 190 150 190 350 658
w 273
a 0 sr 0 0 0 0 hln 100 LABEL=A[4]
a 0 up 0:33 0 0 0 hln 100 LVL=
s 180 120 180 60 160
a 0 sr 3 0 182 90 hln 100 LABEL=A[4]
a 0 up 33 0 182 91 hlt 100 LVL=
s 160 350 160 120 638
s 160 120 180 120 640
w 223
a 0 sr 0:3 0 322 45 hln 100 LABEL=A[5]
a 0 up 0:33 0 0 0 hln 100 LVL=
s 190 60 190 130 56
a 0 sr 3 0 192 85 hln 100 LABEL=A[5]
a 0 up 33 0 192 86 hlt 100 LVL=
s 190 130 170 130 644
s 170 130 170 350 646
w 215
a 0 sr 0:3 0 332 40 hln 100 LABEL=A[6]
a 0 up 0:33 0 0 0 hln 100 LVL=
s 200 60 200 140 59
a 0 sr 3 0 202 80 hln 100 LABEL=A[6]
a 0 up 33 0 202 81 hlt 100 LVL=
s 180 350 180 140 648
s 180 140 200 140 650
w 376
a 0 sr 0 0 0 0 hln 100 LABEL=A[0]
a 0 up 0:33 0 0 0 hln 100 LVL=
s 580 60 580 270 732
a 0 sr 3 0 582 75 hln 100 LABEL=A[0]
a 0 up 33 0 582 76 hlt 100 LVL=
w 382
a 0 sr 0:3 0 612 80 hln 100 LABEL=A[1]
a 0 up 0:33 0 0 0 hln 100 LVL=
s 610 100 610 60 562
a 0 sr 3 0 612 80 hln 100 LABEL=A[1]
a 0 up 33 0 612 81 hlt 100 LVL=
s 610 100 590 100 734
s 590 100 590 270 736
w 28
a 0 sr 0 0 0 0 hln 100 LABEL=B[0]
a 0 up 0:33 0 0 0 hln 100 LVL=
s 540 80 540 270 27
a 0 sr 3 0 542 175 hln 100 LABEL=B[0]
a 0 up 33 0 542 176 hlt 100 LVL=
w 25
a 0 sr 0 0 0 0 hln 100 LABEL=B[7]
a 0 up 0:33 0 0 0 hln 100 LVL=
s 150 80 150 350 24
a 0 sr 3 0 152 215 hln 100 LABEL=B[7]
a 0 up 33 0 152 216 hlt 100 LVL=
w 31
a 0 sr 0 0 0 0 hln 100 LABEL=B[1]
a 0 up 0:33 0 0 0 hln 100 LVL=
s 550 80 550 270 30
a 0 sr 3 0 552 175 hln 100 LABEL=B[1]
a 0 up 33 0 552 176 hlt 100 LVL=
w 34
a 0 sr 0 0 0 0 hln 100 LABEL=B[2]
a 0 up 0:33 0 0 0 hln 100 LVL=
s 560 80 560 270 33
a 0 sr 3 0 562 175 hln 100 LABEL=B[2]
a 0 up 33 0 562 176 hlt 100 LVL=
w 37
a 0 sr 0 0 0 0 hln 100 LABEL=B[3]
a 0 up 0:33 0 0 0 hln 100 LVL=
s 570 80 570 270 36
a 0 sr 3 0 572 175 hln 100 LABEL=B[3]
a 0 up 33 0 572 176 hlt 100 LVL=
w 831
a 0 sr 0 0 0 0 hln 100 LABEL=S1[3]
a 0 up 0:33 0 0 0 hln 100 LVL=
s 170 410 170 540 830
a 0 sr 3 0 172 475 hln 100 LABEL=S1[3]
a 0 up 33 0 172 476 hlt 100 LVL=
w 829
a 0 sr 0 0 0 0 hln 100 LABEL=S1[2]
a 0 up 0:33 0 0 0 hln 100 LVL=
s 150 410 150 540 828
a 0 sr 3 0 152 475 hln 100 LABEL=S1[2]
a 0 up 33 0 152 476 hlt 100 LVL=
w 827
a 0 sr 0 0 0 0 hln 100 LABEL=S1[1]
a 0 up 0:33 0 0 0 hln 100 LVL=
s 130 410 130 540 826
a 0 sr 3 0 132 475 hln 100 LABEL=S1[1]
a 0 up 33 0 132 476 hlt 100 LVL=
w 825
a 0 sr 0 0 0 0 hln 100 LABEL=S1[0]
a 0 up 0:33 0 0 0 hln 100 LVL=
s 110 410 110 540 824
a 0 sr 3 0 112 475 hln 100 LABEL=S1[0]
a 0 up 33 0 112 476 hlt 100 LVL=
w 835
a 0 sr 0 0 0 0 hln 100 LABEL=S0[3]
a 0 up 0:33 0 0 0 hln 100 LVL=
s 360 550 360 620 834
a 0 sr 3 0 362 585 hln 100 LABEL=S0[3]
a 0 up 33 0 362 586 hlt 100 LVL=
w 837
a 0 sr 0 0 0 0 hln 100 LABEL=S0[2]
a 0 up 0:33 0 0 0 hln 100 LVL=
s 380 550 380 620 836
a 0 sr 3 0 382 585 hln 100 LABEL=S0[2]
a 0 up 33 0 382 586 hlt 100 LVL=
w 839
a 0 sr 0 0 0 0 hln 100 LABEL=S0[1]
a 0 up 0:33 0 0 0 hln 100 LVL=
s 400 550 400 620 838
a 0 sr 3 0 402 585 hln 100 LABEL=S0[1]
a 0 up 33 0 402 586 hlt 100 LVL=
w 841
a 0 sr 0 0 0 0 hln 100 LABEL=S0[0]
a 0 up 0:33 0 0 0 hln 100 LVL=
s 420 550 420 620 840
a 0 sr 3 0 422 585 hln 100 LABEL=S0[0]
a 0 up 33 0 422 586 hlt 100 LVL=
w 19
a 0 sr 0 0 0 0 hln 100 LABEL=B[5]
a 0 up 0:33 0 0 0 hln 100 LVL=
s 130 80 130 350 18
a 0 sr 3 0 132 185 hln 100 LABEL=B[5]
a 0 up 33 0 132 216 hlt 100 LVL=
w 22
a 0 sr 0 0 0 0 hln 100 LABEL=B[6]
a 0 up 0:33 0 0 0 hln 100 LVL=
s 140 80 140 350 21
a 0 sr 3 0 142 200 hln 100 LABEL=B[6]
a 0 up 33 0 142 216 hlt 100 LVL=
w 868
a 0 up 0:33 0 0 0 hln 100 LVL=
s 340 440 340 480 867
a 0 up 33 0 342 460 hlt 100 LVL=
w 899
a 0 up 0:33 0 0 0 hln 100 LVL=
s 110 320 110 350 903
s 290 320 260 320 901
s 260 320 110 320 906
a 0 up 33 0 185 319 hct 100 LVL=
s 260 320 260 440 904
s 330 440 330 480 895
s 260 440 330 440 907
w 897
a 0 up 0:33 0 0 0 hln 100 LVL=
s 610 330 610 350 870
s 610 350 470 350 909
a 0 up 33 0 540 349 hct 100 LVL=
s 470 350 470 310 911
s 470 310 360 310 913
w 739
a 0 up 0:33 0 0 0 hln 100 LVL=
s 680 470 680 510 803
s 460 510 680 510 880
a 0 up 33 0 570 509 hct 100 LVL=
s 460 510 460 330 915
s 460 330 360 330 917
w 946
a 0 up 0:33 0 0 0 hln 100 LVL=
s 570 410 600 410 945
a 0 up 33 0 585 409 hct 100 LVL=
w 948
a 0 up 0:33 0 0 0 hln 100 LVL=
s 530 260 530 270 947
a 0 up 33 0 532 265 hlt 100 LVL=
w 16
a 0 sr 0 0 0 0 hln 100 LABEL=B[4]
a 0 up 0:33 0 0 0 hln 100 LVL=
s 120 80 120 350 15
a 0 sr 3 0 102 240 hln 100 LABEL=B[4]
a 0 up 33 0 122 216 hlt 100 LVL=
b 843
a 0 sr 0 0 0 0 hln 100 LABEL=S1[3..0]
s 50 540 110 540 859
a 0 sr 3 0 70 538 hcn 100 LABEL=S1[3..0]
s 30 540 50 540 842
s 110 540 130 540 844
s 130 540 150 540 845
s 150 540 170 540 846
b 848
a 0 sr 0 0 0 0 hln 100 LABEL=S0[3..0]
s 280 620 360 620 861
a 0 sr 3 0 315 618 hcn 100 LABEL=S0[3..0]
s 270 620 280 620 847
s 360 620 380 620 849
s 380 620 400 620 850
s 400 620 420 620 851
b 8
a 0 sr 0:3 0 455 18 hcn 100 LABEL=A[7..0]
s 210 60 440 60 550
a 0 sr 3 0 265 58 hcn 100 LABEL=A[7..0]
s 640 60 670 60 692
s 610 60 640 60 696
s 670 60 940 60 705
s 200 60 210 60 461
s 190 60 200 60 453
s 180 60 190 60 55
s 580 60 610 60 731
s 440 60 580 60 855
b 6
a 0 sr 0 0 0 0 hln 100 LABEL=B[7..0]
s 150 80 400 80 440
a 0 sr 3 0 325 78 hcn 100 LABEL=B[7..0]
s 540 80 550 80 436
s 120 80 130 80 437
s 130 80 140 80 438
s 140 80 150 80 439
s 550 80 560 80 483
s 560 80 570 80 484
s 400 80 540 80 857
s 80 80 120 80 32
@junction
j 190 350
+ p 2 A4
+ w 629
j 160 350
+ p 2 A1
+ w 273
j 540 80
+ w 28
+ b 6
 B[0]
j 120 350
+ p 2 B1
+ w 16
j 120 80
+ w 16
+ b 6
 B[4]
j 130 350
+ p 2 B2
+ w 19
j 130 80
+ w 19
+ b 6
 B[5]
j 140 350
+ p 2 B3
+ w 22
j 140 80
+ w 22
+ b 6
 B[6]
j 150 350
+ p 2 B4
+ w 25
j 150 80
+ w 25
+ b 6
 B[7]
j 680 360
+ s 68
+ w 73
j 670 380
+ s 70
+ w 75
j 660 360
+ s 71
+ w 77
j 650 380
+ s 69
+ w 79
j 550 80
+ w 31
+ b 6
 B[1]
j 560 80
+ w 34
+ b 6
 B[2]
j 570 80
+ w 37
+ b 6
 B[3]
j 170 350
+ p 2 A2
+ w 223
j 180 350
+ p 2 A3
+ w 215
j 640 60
+ w 697
+ b 8
 A[2]
j 670 60
+ w 394
+ b 8
 A[3]
j 180 60
+ w 273
+ b 8
 A[4]
j 190 60
+ w 223
+ b 8
 A[5]
j 200 60
+ w 215
+ b 8
 A[6]
j 210 60
+ w 629
+ b 8
 A[7]
j 580 60
+ w 376
+ b 8
 A[0]
j 610 60
+ w 382
+ b 8
 A[1]
j 590 360
+ w 81
+ w 81
j 370 480
+ p 660 4A
+ w 81
j 570 370
+ w 87
+ w 87
j 390 480
+ p 660 3A
+ w 87
j 550 380
+ w 93
+ w 93
j 410 480
+ p 660 2A
+ w 93
j 530 390
+ w 748
+ w 748
j 430 480
+ p 660 1A
+ w 748
j 380 480
+ p 660 3B
+ w 784
j 360 480
+ p 660 4B
+ w 794
j 110 350
+ p 2 C0
+ w 899
j 110 410
+ p 2 SUM1
+ w 825
j 130 410
+ p 2 SUM2
+ w 827
j 150 410
+ p 2 SUM3
+ w 829
j 170 410
+ p 2 SUM4
+ w 831
j 360 550
+ p 660 4Y
+ w 835
j 380 550
+ p 660 3Y
+ w 837
j 400 550
+ p 660 2Y
+ w 839
j 420 550
+ p 660 1Y
+ w 841
j 110 540
+ w 825
+ b 843
 S1[0]
j 130 540
+ w 827
+ b 843
 S1[1]
j 150 540
+ w 829
+ b 843
 S1[2]
j 170 540
+ w 831
+ b 843
 S1[3]
j 360 620
+ w 835
+ b 848
 S0[3]
j 380 620
+ w 837
+ b 848
 S0[2]
j 400 620
+ w 839
+ b 848
 S0[1]
j 420 620
+ w 841
+ b 848
 S0[0]
j 440 60
+ p 854 pin1
+ b 8
j 400 80
+ p 856 pin1
+ b 6
j 50 540
+ p 858 pin1
+ b 843
j 280 620
+ p 860 pin1
+ b 848
j 340 480
+ p 660 STROBE\G\
+ w 868
j 340 440
+ s 866
+ w 868
j 290 320
+ p 900 Y
+ w 899
j 260 320
+ w 899
+ w 899
j 330 480
+ p 660 SELECT\A\B
+ w 899
j 360 310
+ p 900 B
+ w 897
j 360 330
+ p 900 A
+ w 739
j 540 270
+ p 3 B1
+ w 28
j 590 330
+ p 3 SUM4
+ w 81
j 570 330
+ p 3 SUM3
+ w 87
j 550 330
+ p 3 SUM2
+ w 93
j 530 330
+ p 3 SUM1
+ w 748
j 550 270
+ p 3 B2
+ w 31
j 560 270
+ p 3 B3
+ w 34
j 570 270
+ p 3 B4
+ w 37
j 610 270
+ p 3 A4
+ w 394
j 590 270
+ p 3 A2
+ w 382
j 580 270
+ p 3 A1
+ w 376
j 600 270
+ p 3 A3
+ w 697
j 610 330
+ p 3 C4
+ w 897
j 400 480
+ p 660 2B
+ w 774
j 420 480
+ p 660 1B
+ w 766
j 680 410
+ p 4 A4
+ w 73
j 670 410
+ p 4 A3
+ w 75
j 660 410
+ p 4 A2
+ w 77
j 650 410
+ p 4 A1
+ w 79
j 640 410
+ p 4 B4
+ w 81
j 630 410
+ p 4 B3
+ w 87
j 620 410
+ p 4 B2
+ w 93
j 610 410
+ p 4 B1
+ w 748
j 600 470
+ p 4 SUM1
+ w 766
j 620 470
+ p 4 SUM2
+ w 774
j 640 470
+ p 4 SUM3
+ w 784
j 660 470
+ p 4 SUM4
+ w 794
j 680 470
+ p 4 C4
+ w 739
j 600 410
+ p 4 C0
+ w 946
j 570 410
+ s 944
+ w 946
j 530 270
+ p 3 C0
+ w 948
j 530 260
+ s 943
+ w 948
j 940 60
+ P 938 pin[0-7]
 pin[0]
 pin[1]
 pin[2]
 pin[3]
 pin[4]
 pin[5]
 pin[6]
 pin[7]
+ b 8
 A[7]
 A[6]
 A[5]
 A[4]
 A[3]
 A[2]
 A[1]
 A[0]
j 80 80
+ P 937 pin[0-7]
 pin[0]
 pin[1]
 pin[2]
 pin[3]
 pin[4]
 pin[5]
 pin[6]
 pin[7]
+ b 6
 B[7]
 B[6]
 B[5]
 B[4]
 B[3]
 B[2]
 B[1]
 B[0]
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
