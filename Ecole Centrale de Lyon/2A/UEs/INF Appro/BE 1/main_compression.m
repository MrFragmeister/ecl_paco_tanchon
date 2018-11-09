%Le programme principal de compression d'une image bitmap basée sur la DCT
%Entrées :  
%   - la qualite de la de la quantification
%	- nom de l'image source sous forme de charactères
%   - nom du fichier destination où les matrices DCTs sont sauvegardées
%   - seuil pour determiner les coefficients nuls

%Sortie : 
%   - temps du traitement en seconde

function [duree_traitement,nb] = main_compression(qualite, nom_source_bmp, nom_destination_jpg,seuil)

%Initialisation de l'horloge
temps_debut = cputime;

%lecture de l'image source
imageBMP = lecture_image_bmp(nom_source_bmp);

%conversion de la matrice avec l'application de la DCT sur les blocs 8x8 de l'image bitmap source
imageJPG = conversion_spatial_frequantiel(imageBMP, qualite);

%calcul du nombre de coefficients non nuls
nb=0;
N=size(imageJPG);
for i=1:N(1)
    for j=1:N(2)
        for k=1:N(3)
            if abs(imageJPG(i,j,k))>seuil
                nb=nb+1;
            else 
                imageJPG(i,j,k)=0;
            end
        end
    end
end
nb;

%ecriture de l'image DCTs dans un fichier
ecriture_jpg(imageJPG, nom_destination_jpg, qualite);

%terminaison de l'horloge à la fin du traitement
temps_fin = cputime;

duree_traitement = temps_fin - temps_debut;

