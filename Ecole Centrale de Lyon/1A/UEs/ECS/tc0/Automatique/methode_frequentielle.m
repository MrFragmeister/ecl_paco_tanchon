a=0.3;
t1=250;
t2=25;
wn=0.026;
xi=0.5912;
k=0.00832;

w=0.0188;
acor=w/10
phi1=180+58.6;
phi2=-18.8;
Mphi=(phi1-phi2)*(pi/180);
x=(1-sin(Mphi))/(1+sin(Mphi));
b=w/sqrt(x)
c=b*x


nump=[k*a];
denp=[t2 1+(t2/t1) 1/t1 0];

numMref=[1];
denMref=[1/(wn*wn) 2*xi/wn 1];

denPref=[1/(wn*wn) 2*xi/wn 0];
P=tf(nump,denp);
nichols(P)


M=tf(numMref,denPref);
sisotool(M)
Kpi=tf([1 acor],[1 0]);
Kap=tf([1 b],[1 c]);




%sisotool(Kpi*Kap*P)