%% Decalaration des variables
a=0;
b=2;
c=0.5;
L=[]
limit=100000;

%% Declaration des lois
loi_u1=makedist('uniform',a,b);
loi_u2=makedist('uniform',0,1);
loi_t=makedist('triangular',a,c,b);

%% Premiere methode
tic;
x_t=random(loi_t,limit,1);
tt=toc;


%% Seconde Methode
tic;
compteur=0;
val=[];
x_ux=random(loi_u1,limit,1);
x_uy=random(loi_u2,limit,1);
for i = 1:limit
    
    if x_uy(i)<=triangle(x_ux(i),a,b,c)
        compteur= compteur+1;
        val=vertcat(val,x_ux(i));
    end
    
end
t1=toc;


%% Troisième methode
tic;
s=0;
v=0;
for j=1:limit
    res=triangle_inv(x_ux(j),a,b,c);
    s=s+res;
    L=[L res];

end
esp=s/limit;
% On obtient esp = 0.9431
t2=toc;

%% Calcul de la variance
for l=1:limit
    v = v + (L(l)-esp)^2;
end
var=v/limit;
% On obtient var = 0.11


%% Affichage des temps de calculs
%disp(t1)
% t1 = 1.45s
%disp(t2)
% t2 = 5.36s
%disp(tt)
% tt = 0.01s


%% Affichage des différentes valeurs
%disp(compteur/limit);
%histogram(val);
%histogram(x_t);

disp(esp);
disp(var);

%La méthode la plus efficace est celle utilisée par MatLab


distrib_T=makedist('triangular',6,8,17);
distrib_X1=makedist('uniform',12,13);
distrib_X2=makedist('uniform',12,18);


random(distrib_T,1,1)


