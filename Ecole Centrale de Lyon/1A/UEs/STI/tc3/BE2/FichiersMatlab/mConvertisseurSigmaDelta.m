
%
% Ecole Centrale de Lyon
% STItc3 - Conversion Analogique-Numérique
% BE2 : conversion Sigma-Delta
%
% mConvertisseurSigmaDelta : Simulation du convertisseur Sigma-Delta
%

clear all;
close all;
clc;


% Paramètres de simulation %
%--------------------------%

Tsim = 1;       % temps de simulation (sec)
nu0 = 10;      % frequence du signal sinusoidale (Hz)
nusn = 1000;    % frequence d'echantillonnage de Nyquist (Hz)
Tsn = 1/nusn;   % periode d'echantillonnage de Nyquist (sec)
Nbit = 3;       % nombre de bits de quantification

% Filtre anti-repliement
nuc = 0.95*nusn/2;
ordre = 15;
[B,A] = butter(ordre,2*pi*nuc,'s');

% Surechantillonnage
R = 2^Nbit - 1; % facteur de sur-echantillonnage
TsR = Tsn/R;     % periode de sur-echantillonnage (sec)
nusR = 1/TsR;     % frequence de sur-echantillonnage (Hz)

% Filtre en sortie du modulateur SigmaDelta
L = 2^Nbit - 1;     % ordre du filtre
gk = ones(1,L)/(L);   % coefficents de la réponse impulsionnelle du filtre


% Simulation du convertisseur Sigma-Delta %
%-----------------------------------------%

sim('ConvertisseurSigmaDelta');    % lancement du schema simulink
tx = input.time;        % recuperation des donnees : vecteur temps de l'entree
x = input.data;         % recuperation des donnees : signal d'entree
txtilde = output.time;  % recuperation des donnees : vecteur temps de la sortie
xtilde = output.data;   % recuperation des donnees : signal de sortie


% Analyse des signaux en entrée et en sortie du convertisseur %
%---------------------%

Nx = length(tx);
nux = [-Nx/2:Nx/2-1]/TsR/Nx;
X = fftshift(TsR*fft(x));
Nxtilde = length(txtilde);
nuxtilde = [-Nxtilde/2:Nxtilde/2-1]/Tsn/Nxtilde;
Xtilde = fftshift(Tsn*fft(xtilde));

figure,
stairs(txtilde,xtilde,'b'); hold on;
plot(tx,x,'r'); hold off;
legend('sortie xtilde','entree x');
ylim([-1.5 1.5]);
grid on;
xlabel('temps (sec)');
ylabel('amplitude');
title('signaux en entrée et en sortie du convertisseur \Sigma\Delta');

figure,
plot(nuxtilde,abs(Xtilde),'b',nux,abs(X),'--r');
xlim([-1 1]*nusR/2);
legend('sortie xtilde','entree x');
xlabel('frequence (Hz)');
ylabel('module du spectre');
title('signaux en entrée et en sortie du convertisseur \Sigma\Delta');


return
% Analyse de l'erreur de quantification %
%---------------------------------------%

equant = xtilde-x(1:R:end);
Sequant = fftshift(1/Nxtilde*abs(fft(equant)).^2);

figure,
plot(txtilde,equant);
xlabel('temps (sec)');
ylabel('amplitude');
title('erreur de quantification en sortie du convertisseur \Sigma\Delta');
figure,
plot(nuxtilde,Sequant);
xlabel('frequence (Hz)');
ylabel('densité spectrale de puissance');
title('erreur de quantification en sortie du convertisseur \Sigma\Delta');




