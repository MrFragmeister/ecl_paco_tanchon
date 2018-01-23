

[x, Fs] = audioread('string5a.wav') ; 
x = x(:,1);
les_t=0:(1/Fs):(length(x)-1)/Fs;
les_t=les_t';
plot(les_t,x);


X=fftshift(fft(x));
nu=-Fs/2:(Fs/(length(X)-1)):Fs/2;
plot(nu,abs(X))
sound(x,Fs);
Xabs=abs(X);

figure;
np=2^11;
spectrogram(x,np,np/2^2,np*2^4,Fs/1000);
xlim([0 3]) ; colorbar ; shading interp;

%xprime=sin(2*pi*[les_t]*220);
%pause(1);
%sound(xprime,44100)