
%
% Ecole Centrale de Lyon
% STItc3 - Conversion Analogique-Numérique
% BE2 : conversion Sigma-Delta
%
% mModulateurSigmaDelta : Simulation du modulateur Sigma-Delta
%

clear all;
close all;
clc;

% Paramètres de simulation %
%--------------------------%

nu0 = 10;     % frequence du signal sinusoidale (Hz)
nusn = 500;   % frequence d'echantillonnage de Nyquist (Hz)
R = 4;        % facteur de sur-echantillonnage
Tsim = 1;     % temps de simulation (sec)

Tsn = 1/nusn;    % periode d'echantillonnage de Nyquist (sec)
TsR = Tsn/R;     % periode de sur-echantillonnage (sec)
nusR = 1/TsR;    % frequence de sur-echantillonnage (Hz)

% Simulation du modulateur Sigma-Delta %
%--------------------------------------%

sim('ModulateurSigmaDelta');    % lancement du schema simulink
t = input.time;        % recuperation des donnees
x = input.data;         % recuperation des donnees
ytilde = output.data;   % recuperation des donnees

% Analyse des signaux %
%---------------------%

N = length(t);
nu = [-N/2:N/2-1]/TsR/N;
X = fftshift(TsR*fft(x));
Ytilde = fftshift(TsR*fft(ytilde));

figure,
plot(t,ytilde,'b',t,x,'r');
legend('sortie ytilde','entree x');
ylim([-1.5 1.5]);
grid on;
xlabel('temps (sec)');
ylabel('amplitude');
title('signaux en entrée et en sortie du modulateur \Sigma\Delta');

figure,
plot(nu,abs(Ytilde),'b',nu,abs(X),'--r');
xlim([-1 1]*nusR/2);
legend('sortie ytilde','entree x');
xlabel('frequence (Hz)');
ylabel('module du spectre');
title('signaux en entrée et en sortie du modulateur \Sigma\Delta');


