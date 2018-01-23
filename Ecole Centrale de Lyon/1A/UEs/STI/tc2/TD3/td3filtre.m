
T =  1;  % Période du signal x
Tsim = 10;  % Temps de simulation pour le schéma simulink

nu_m =  10; % A compléter

N  =  100;   % A compléter
Wc = 2*pi*nu_m;   % A compléter

[B,A] = butter(N,Wc,'s'); % Calcul d'un filtre de butterworth 
                          % d'ordre N de PULSATION (rad/s) de coupure Wc
                          % B est le vecteur des coefficients du polynome
                          % numérateur du filtre écrit par puissance 
                          % décroissance.
                          % Ex : si B=[5,0,12] alors le polynome
                          % correspondant est : P(s) = 5s^2+0s+12
                          % A = coefficients du dénominateur du filtre.
                          % Pour plus d'info, taper sous Matlab
                          %  help butter
                          
nu1 = 2*nu_m;  
                          
nu =  linspace(0, nu1, 1000); % Génere un vecteur de 100 points de 0 à nu1
H = freqs(B,A,2*pi*nu); % Calcule la valeur du spectre de Butterworth pour 
                        % les fréquences dans le vecteur nu.
                        
figure; 
plot(nu, abs(H));   % Affiche le module du spectre pour les fréquences dans nu 

figure; 
plot(nu, angle(H)); % Affiche l'argument du spectre pour les fréquences dans nu 
