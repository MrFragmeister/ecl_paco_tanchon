clear all
close all

% Question 1
m=[1 2 3 4 5 6 7 8 ;
   8 7 6 5 4 3 2 1 ;
   1 2 3 4 5 6 7 8 ;
   8 7 6 5 4 3 2 1 ;
   1 2 3 4 5 6 7 8 ;
   8 7 6 5 4 3 2 1 ;
   1 2 3 4 5 6 7 8 ;
   8 7 6 5 4 3 2 1 ]; 
mat=m_DCT2(m);

matrice=m_IDCT2(mat)


% Question 2
facteur=25;
nom='im_bmp.bmp';
fichier='BE_-_code_source_MatlabDCTiDCT';
seuil=1;
main_compression(facteur,nom,fichier,seuil);
main_decompression('BE_-_code_source_MatlabDCTiDCT','image.bmp');

% Question 3
nombre=zeros(25,1);
for facteur=1:25
    [duree_traitement,nb]=main_compression(facteur,nom,fichier,seuil);
    nombre(facteur)=nb;
end
nombre
facteurs=[1 : 1 : 25];
plot(facteurs,nombre)
title('Nombre de coefficients DCT non nuls en fonction du facteur de quantification')
xlabel('facteur de quantification')
ylabel('nombre de coefficients non nuls')

% Question 4
erreur_moy=zeros(25,1);
norme_erreur=zeros(25,1);
imageBMP = lecture_image_bmp(nom);
N=size(imageBMP);
nb=0;
for i=1:N(1)
    for j=1:N(2)
        for k=1:N(3)
            if abs(imageBMP(i,j,k))>seuil
                nb=nb+1;
            else 
                imageBMP(i,j,k)=0;
            end
        end
    end
end
taux=nombre./nb;
for facteur=1:25
    main_compression(facteur,nom,fichier,seuil);
    [duree_traitement,BMP]=main_decompression('BE_-_code_source_MatlabDCTiDCT','image.bmp');
    erreur=BMP-imageBMP;
    erreur_moy(facteur)=sum(sum(sum(erreur)))/(N(1)*N(2)*N(3));
    norme_erreur(facteur)=(norm(erreur(:,:,1))+norm(erreur(:,:,2))+norm(erreur(:,:,3)))/(N(1)*N(2)*N(3));
end
erreur_moy
norme_erreur
ax1=subplot(3,1,1);
plot(ax1,facteurs,erreur_moy)
title(ax1,'Erreur moyenne en fonction du facteur de quantification')
xlabel('facteur')
ylabel(ax1,'erreur moyenne')
ax2=subplot(3,1,2);
plot(ax2,facteurs,norme_erreur)
title(ax2,'norme de l erreur en fonction du facteur de quantification')
ylabel(ax2,'norme de l erreur')
ax3=subplot(3,1,3);
plot(ax3,facteurs,taux)
title(ax3,'taux de compression en fonction du facteur de quantification')
ylabel(ax3,'taux')
