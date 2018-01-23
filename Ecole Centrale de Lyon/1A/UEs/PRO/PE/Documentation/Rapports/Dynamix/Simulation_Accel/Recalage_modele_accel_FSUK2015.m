% Ce script vise � recaler le mod�le d'acc�l�ration gr�ce aux runs
% effectu�s � la comp�tition FSUK2015

% Le mod�le utilis� est modifi� pour avoir des r�gimes de passages de
% vitesse similaires

%% Chargement des donn�es FSUK
clear all

load('C:\Users\Thomas\Documents\EPSA\Dynamix v2\Controle moteur\Donnees DTA\FSUK\FSUK-skidacc.mat')
set(0,'defaultlinelinewidth',2);
set(0,'defaultaxesfontsize',11);
set(0,'DefaultAxesXGrid','on','DefaultAxesYGrid','on')
scrsz = get(groot,'ScreenSize');

TIME = [0:0.1:1033.3]';

% D�coupage accel

acc{1} = [6378:6452];
acc{2} = [6880:6966];
acc{3} = [9408:9501];
acc{4} = [10130:10220];

% Param�tres d'entr�es pour chaque run

% r_pat = r�gime de patinage ou de launch control
% m_p = masse du pilote
% R_pas_2 = r�gime de passage du deuxi�me rapport
% R_pas_3 = r�gime de passage du troisi�me rapport
% t_offset = recalage temporel
% t_run = temps � l'�preuve

r_pat = 10500;
M_p = [73,73, 56, 56];
R_pas_2 = [13400, 13500, 13600, 14000];
R_pas_3 = [12800, 12300, 12400, 12600];
T_offset = [639.8, 689.7, 943.5, 1015.6];
T_run = [4.359, 4.226, 4.486, 4.308];

%%
figure('OuterPosition',[1 scrsz(4)/20 scrsz(3)/1 scrsz(4)/1.06])

for run=1:4
    m_p = M_p(run);
    r_pas_2 = R_pas_2(run);
    r_pas_3 = R_pas_3(run);
    t_offset = T_offset(run);
    
    acceleration_pour_recalage;
   
    subplot(2,2,run)
    [gAx,gLine1,gLine2] = plotyy(TIME(acc{run})-t_offset,LUSP(acc{run}),TIME(acc{run})-t_offset,RPM(acc{run}));
    hold on
    plot(T,3.6*V,'r');
    axes(gAx(2));
    hold on
    plot(T,R,'m');
    
    title(strcat('Accel�ration run', num2str(run)))
    set(gAx(1),'ylim',[0 150],'ytick',0:20:140,'xtick',-2:0.5:6,'xlim',[-1 6]);
    xlabel('Time (s)');
    ylabel(gAx(1), {'Vitesse (km/h)'});
    set(gAx(2),'ylim',[0 15000],'ytick',0:2000:15000,'xtick',-2:0.5:6,'xlim',[-1 6]);
    ylabel(gAx(2),'R�gime moteur (tr/min)');
%    legend('Vitesse r�elle','RPM r�el','Vitesse simu','RPM simu');
    text(-0.75,5500,strcat('Temps r�el :', num2str(T_run(run)),'s'),'FontWeight','bold');
    text(-0.75,4500,strcat('Temps simu :', num2str(t-t_30),'s'),'FontWeight','bold');
    set(gcf,'Color','w');
end

%%
figure('OuterPosition',[1 scrsz(4)/20 scrsz(3)/1 scrsz(4)/1.06])

run=2;
m_p = M_p(run);
r_pas_2 = R_pas_2(run);
r_pas_3 = R_pas_3(run);
t_offset = T_offset(run);

acceleration_pour_recalage;

[gAx,gLine1,gLine2] = plotyy(TIME(acc{run})-t_offset,LUSP(acc{run}),TIME(acc{run})-t_offset,RPM(acc{run}));
hold on
plot(T,3.6*V,'r');
axes(gAx(2));
hold on
plot(T,R,'m');

title(strcat('Accel�ration run', num2str(run)))
set(gAx(1),'ylim',[0 150],'ytick',0:20:140,'xtick',-2:0.5:6,'xlim',[-1 6]);
xlabel('Time (s)');
ylabel(gAx(1), {'Vitesse (km/h)'});
set(gAx(2),'ylim',[0 15000],'ytick',0:2000:15000,'xtick',-2:0.5:6,'xlim',[-1 6]);
ylabel(gAx(2),'R�gime moteur (tr/min)');
%    legend('Vitesse r�elle','RPM r�el','Vitesse simu','RPM simu');
text(-0.75,5500,strcat('Temps r�el :', num2str(T_run(run)),'s'),'FontWeight','bold');
text(-0.75,4500,strcat('Temps simu :', num2str(t-t_30),'s'),'FontWeight','bold');
text(-0.75,3500,strcat('Vitesse de fin simu :', num2str(round(3.6*v)),'km/h'),'FontWeight','bold');
set(gcf,'Color','w');
