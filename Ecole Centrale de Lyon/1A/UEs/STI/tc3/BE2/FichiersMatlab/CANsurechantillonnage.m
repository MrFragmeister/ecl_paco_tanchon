
%
% Ecole Centrale de Lyon
% STItc3 - Conversion Analogique-Numérique
% BE2 : conversion Sigma-Delta
%
% CANSurechantillonnage : observation de l'impact du sur-échantillonnage
%

clear all;
close all;
clc;

% signal "analogique" x %
%-----------------------%
load glock.mat;     % contient data et nus
nuscont = nus;      % nuscont = 60000 Hz
x = data;
x = x/max(abs(x));  % normalisation de x dans [-1;+1]
Ncont = length(x);
Tscont = 1/nuscont;
tcont = [0:Ncont-1]*Tscont;
nucont = [-Ncont/2:Ncont/2-1]*nuscont/Ncont;
Xcont = fftshift(Tscont*fft(x));

% filtre antirepliement %
%-----------------------%
numax = 7500;
nuc = 0.8*numax;    % frequence de coupure (Hz)
ordre = 10;         % ordre du filtre
[B,A] = butter(ordre,2*nuc/nuscont);
y = filter(B,A,x);

% Echantillonnage à Nyquist et quantification uniforme %
%------------------------------------------------------%
nus = 2*numax;      % frequence d'echantillonnage (Hz)
rse = nuscont/nus;  % facteur de sous-echantillonnage vis a vis de nuscont
Ts = 1/nus;         % periode d'echantillonnage (sec)
% echantillonnage %
xstar = y(1:rse:end);
N = length(xstar);
t = [0:N-1]*Ts;
nu = [-N/2:N/2-1]*nus/N;
Xstar = fftshift(Ts*fft(xstar));
% Quantification uniforme %
Nbit = 5;       % nombre de bits de quantification
q = (max(xstar)-min(xstar))/(2^Nbit);   % pas de quantification
xtild = q*round(xstar/q);
Xtild = fftshift(Ts*fft(xtild));
% erreur de quantification %
equant = xtild-xstar;
Pequant = mean(equant.^2) % puissance de l'erreur de quantification
Sequant = fftshift(Ts*abs(fft(equant)).^2); % DSP de l'erreur de quantification

% Sur-echantillonnage et quantification uniforme %
%------------------------------------------------%
R = 4;              % facteur de sur-echantillonnage
nus = 2*numax*R;    % frequence d'echantillonnage (Hz)
rse = nuscont/nus;  % facteur de sous-echantillonnage vis a vis de nuscont
Ts = 1/nus;         % periode d'echantillonnage (sec)
% echantillonnage %
xstarR = y(1:rse:end);
N = length(xstarR);
tR = [0:N-1]*Ts;
nuR = [-N/2:N/2-1]*nus/N;
% Quantification uniforme %
xtildR = q*round(xstarR/q);
XtildR = fftshift(Ts*fft(xtildR));
% erreur de quantification %
equantR = xtildR-xstarR;
PequantR = mean(equantR.^2) % puissance de l'erreur de quantification
SequantR = fftshift(Ts*abs(fft(equantR)).^2)/R; % DSP de l'erreur de quantification

% affichage des résultats %
%-------------------------%

figure,
subplot(211), plot(t,xtild,'-b*',tR,xtildR,'-mo',tcont,y,'g');
legend('signal numérique a Nyquist','signal numérique surechantillonne','signal analogique')
xlim([t(1) t(end)]);
xlabel('temps (sec)');
ylabel('amplitude');
title('signal analogique et signaux numériques');
subplot(212), plot(nu,abs(Xtild),'b',nuR,abs(XtildR),'--m',nucont,abs(Xcont),'g');
legend('signal numérique a Nyquist','signal numérique surechantillonne','signal analogique')
xlabel('frequence (Hz)');
ylabel('module du spectre');

figure,
plot(nu,Sequant,'b',nuR,SequantR,'m');
legend('echantillonnage a Nyquist','surechantillonnage')
xlabel('frequence (Hz)');
ylabel('densite spectrale de puissance');
title('erreur de quantification e');

% ecoute eventuelle %
%-------------------%

if(1)
%sound(x,nuscont);
%pause(3)
sound(xtild,nus/R);
pause(3);
sound(xtildR,nus);
pause(3);
end

