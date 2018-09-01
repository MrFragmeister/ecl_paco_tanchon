a=0.3;
t1=250;
t2=25;

nump=[a];
denp=[t2 1+(t2/t1) 1/t1 0];
P=tf(nump,denp);
sisotool(P)