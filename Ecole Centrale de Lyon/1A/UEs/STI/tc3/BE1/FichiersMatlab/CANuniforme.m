
%
% STItc3 - Conversion Analogique Num�rique
% BE1 : Conversion Uniforme
%
% NOM : TANCHON 
% Pr�nom :Paco
%
% NOM : DUCHEMIN
% Pr�nom : Antoine
%
% groupe de TP : C1b2
% date : 01/12/17
%

clear all;
close all;
clc;


%% 1- signal "analogique" x %
%--------------------------%

load chant.mat;  % choix du signal, contient data et nus
nuscont = nus;   % frequence d'�chantillonnage (Hz) du signal "analogique"
x = data;        % signal
x = x/max(abs(x));  % normalisation x \in [-1;+1]

Ts = 1/nuscont;                     % periode d'echantillonnage
N = length(x);                      % taille du signal
tcont = [0:N-1]*Ts;                 % vecteur des temps "continus"
nucont = [-N/2:N/2-1]*nuscont/N;    % vecteur des fr�quences (centre sur 0)

X = fftshift(Ts*fft(x));            % spectre du signal (centre sur 0)

figure,
subplot(211), plot(tcont,x);
axis tight;
xlabel('temps (sec)');
ylabel('amplitude');
title('signal analogique x');
subplot(212), plot(nucont,abs(X));
xlabel('frequence (Hz)');
ylabel('module du spectre');

if(0)   % mettre if(0) pour ne pas ecouter
sound(x,nuscont);
pause(2);
end

% Question 1 : On remarque que le spectre du signal analogique est a
% support born�. On va donc pouvoir echantilloner sans pertes de
% l'information.

% Question 2 : On rel�ve que vmax~=8000Hz


%% 2- Echantillonnage : signal discret xstar %
%-------------------------------------------%

nus = 15000;        % frequence d'echantillonnage (Hz)
Ts = 1/nus;         % periode d'echantillonnage (sec)

% filtre antirepliement (analogique) %
nuc = 7500;    % frequence de coupure (Hz)
% On choisit nus/2 comme valeur de la fr�quence de coupure, car le crit�re
% de shanon nous impose que nus>2*nmax. De plus, le spectre du signal est
% pratiquement nul de 7500Hz a 8000Hz, donc on ne perd pas beaucoup
% d'information. On �vite ainsi a la fois la perte d'information et le
% repliement du spectre.

ordre = 8;  % ordre du filtre
% L'ordre parait etre un bon compromis entre complexit� et performance, qui
% est valid� par la simulation matlab
[B,A] = butter(ordre,2*pi*nuc,'s');
y = lsim(tf(B,A),x,tcont);
Y = fftshift(Ts*fft(y));

figure,
plot(nucont,abs(X)/max(abs(X)),'r',nucont,abs(Y)/max(abs(Y)),'b'); hold on;
plot([nus/2 nus/2],[0 0.5],'--k','linewidth',2); hold on;
plot([-nus/2 -nus/2],[0 0.5],'--k','linewidth',2);
axis tight;
legend('signal initial x','signal filtre y');
xlabel('frequence (Hz)');
ylabel('module du spectre');
title(['filtre anti-repliement, nuc = ',num2str(nuc),'Hz, ordre = ',num2str(ordre)]);

% echantillonnage %
rse = round(nuscont/nus);
xstar = y(1:rse:end);
N = length(xstar);
t = [0:N-1]*Ts;
nu = [-N/2:N/2-1]*nus/N;
Xstar = fftshift(fft(xstar));

figure,
subplot(211), plot(t,xstar);
axis tight;
xlabel('temps (sec)');
title('signal discret xstar');
subplot(212), plot(nu,abs(Xstar));
xlabel('frequence (Hz)');

if(0)
sound(xstar,nus);
pause(2);
end

% Question 4 : Il n'y a pas de perte d'information, visuellement et
% auditivement, les signaux sembles proches voire egaux.



% 3- Quantification uniforme : signal num�rique xtild %
%-----------------------------------------------------%

Nbit = 8;       % nombre de bits de quantification
q = (max(xstar)-min(xstar))/(2^Nbit);         % pas de quantification
xtild = q*round(xstar/q);      % signal num�rique
Xtild = fftshift(fft(xtild));      % spectre du signal num�rique

figure,
subplot(211), plot(t,xstar,'g',t,xtild,'b');
legend('signal discret','signal num�rique')
xlim([t(1) t(end)]);
xlabel('temps (sec)');
title('signal num�rique xtild en sortie du CAN uniforme');
subplot(212), plot(nu,abs(Xtild),'b',nu,abs(Xstar),'g');
xlabel('frequence (Hz)');

if(0)
sound(xtild,nus);
pause(2);
end

% Le signal audio souffre de deformations, qui sont audibles et visibles
% sur le signal temporel. Le spectre en revanche semble ne pas avoir subit
% de deformation majeure. On essaie avec Nbit>=8, la d�formation n'est plus
% vraiment perceptible. Le resultat est vrai pour les trois autres fichiers
% audio.



% 4- Analyse de l'erreur de quantification equant %
%-------------------------------------------------%

% erreur de quantification
equant = xstar-xtild; 
figure,
plot(t,equant,'b');
xlim([t(1) t(end)]);
xlabel('temps (sec)');
ylabel('amplitude');
title('erreur de quantification e');

%Pour Nbit>=8, on observe que la DSP de equant est a peu pr�s uniforme sur tout son
%spectre, on reconnait donc un bruit blanc, conform�ment au mod�le propos�
%par le cours.


% densit� spectrale de puissance
Sequant = fftshift(1/N*abs(fft(equant)).^2);
figure,
plot(nu,Sequant,'b');
xlabel('frequence (Hz)');
ylabel('densit� spectrale de puissance');
title('erreur de quantification e');

% loi de probabilit�
hist(equant)
% On observe sur l'histogramme que les valeur de equant sont uniformement
% r�partie sur son domaine. Cela montre que la loi de probabilit� est
% uniforme, et valide ainsi le mod�le de l'erreur de quantification propos�
% dans le cours.


% relation cout-performance
vNbit = [1:16];       % nombre de bits de quantification
for ii = 1:length(vNbit)
    q = (max(xstar)-min(xstar))/(2^ii);    % pas de quantification
    xtild = q*round(xstar/q);      % signal num�rique
    equant = xstar-xtild;   % erreur de quantification
    RSBdB(ii) = 10*log10(mean(xtild.^2)/mean(equant.^2));   % rapport signal sur bruit
end

figure,
plot(vNbit,RSBdB,'b',vNbit,1.76+6.02*vNbit,'g');
legend('experience','th�orie');
xlim([0 max(vNbit)+1]);
xlabel('Nb de bit de quantification');
ylabel('RSBdB');
title('Relation cout-performance');

%Question 10 : La theorie est valid�e par l'exp�rience


