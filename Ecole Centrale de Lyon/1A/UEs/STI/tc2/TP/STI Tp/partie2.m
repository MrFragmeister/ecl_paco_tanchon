la=[3492 3855 947 125 23 467 414 392 290 0 100 69 0 15 0 45 159 140 114 38];

la = la/max(la);

vu0La=110;


nus = 11025;
les_tla=0:(1/nus):1/vu0La;


xpla=la(1)*sin(les_tla*2*pi*vu0La);
for i=2:20
    xpla=xpla+la(i)*sin(les_tla*2*pi*i*vu0La);
end
xpla = xpla/max(abs(xpla));

tr=5;
D=tr/log(1000);
epsilon=(1/abs(cos(pi*vu0La/nus)))*exp(-1/(D*vu0La));

res=xpla;
L=length(xpla);
for i=1:round(tr*nus)
    res(L+i)=epsilon*0.5*(res(i)+res(i+1));    
end

les_t=0:1/nus:tr+100/nus;
subplot(1,2,1);
plot(les_t,res);

X=fftshift(fft(res));
nu=-nus/2:(nus/(length(X)-1)):nus/2;
subplot(1,2,2);
plot(nu,abs(X))
figure;
np=2^11;
spectrogram(res,np,np/2^2,np*2^4,nus/1000);
xlim([0 3]) ; colorbar ; shading interp;

