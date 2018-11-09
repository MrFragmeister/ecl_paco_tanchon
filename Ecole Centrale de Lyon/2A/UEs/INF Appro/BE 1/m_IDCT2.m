function [a] = m_IDCT2(m)
%Fonction calculant la DCT inverse d'une matrice 
%arguments d'entree: 
%	- m matrice 8*8 sur laquelle sera appliqu�e la dct inverse
%argument de sortie: 
%  	- a matrice 8*8 correspondant � la dct inverse appliqu�e sur m
%recuperation de la taille de la matrice m
[N,N]=size(m);
%declaration d'une matrice nulle de meme dimension que m
a=zeros(N,N);

%Calcul des coefficients de la tranformes de la  dct
%i,j sont les indices de la nouvelle matrice a
%u,v sont les indices de la matrice m
c(1) = 1/sqrt(2);
c(2:N) = 1;

pi_sur_N = pi/N;

for i=1:N
     ARG_COS_U = pi_sur_N * (i-0.5);
    for j=1:N
        ARG_COS_V = pi_sur_N * (j-0.5);
        for u=1:N
            COS_U = cos(ARG_COS_U * (u-1));
            for v=1:N
                if(m(u,v) ~= 0)
                    a(i,j) = a(i,j) + c(u)*c(v) * m(u,v) * COS_U * cos(ARG_COS_V * (v-1));
                end
            end
        end
    end
end
a = a/sqrt(2*N);
%for i=0:N-1
 %    ARG_COS_U = pi_sur_N * (i+0.5);
  %  for j=0:N-1
   %     ARG_COS_V = pi_sur_N * (j+0.5);
    %    for u=0:N-1
     %       COS_U = cos(ARG_COS_U * u);
      %      for v=0:N-1
       %         if(m(u+1,v+1) ~= 0)
        %            a(i+1,j+1) = a(i+1,j+1) + c(u+1)*c(v+1) * m(u+1,v+1) * COS_U * cos(ARG_COS_V * v);
        %       end
        %    end
        %end
        %    end
        %end
