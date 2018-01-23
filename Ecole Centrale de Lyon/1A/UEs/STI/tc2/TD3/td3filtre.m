
T =  1;  % P�riode du signal x
Tsim = 10;  % Temps de simulation pour le sch�ma simulink

nu_m =  10; % A compl�ter

N  =  100;   % A compl�ter
Wc = 2*pi*nu_m;   % A compl�ter

[B,A] = butter(N,Wc,'s'); % Calcul d'un filtre de butterworth 
                          % d'ordre N de PULSATION (rad/s) de coupure Wc
                          % B est le vecteur des coefficients du polynome
                          % num�rateur du filtre �crit par puissance 
                          % d�croissance.
                          % Ex : si B=[5,0,12] alors le polynome
                          % correspondant est : P(s) = 5s^2+0s+12
                          % A = coefficients du d�nominateur du filtre.
                          % Pour plus d'info, taper sous Matlab
                          %  help butter
                          
nu1 = 2*nu_m;  
                          
nu =  linspace(0, nu1, 1000); % G�nere un vecteur de 100 points de 0 � nu1
H = freqs(B,A,2*pi*nu); % Calcule la valeur du spectre de Butterworth pour 
                        % les fr�quences dans le vecteur nu.
                        
figure; 
plot(nu, abs(H));   % Affiche le module du spectre pour les fr�quences dans nu 

figure; 
plot(nu, angle(H)); % Affiche l'argument du spectre pour les fr�quences dans nu 
