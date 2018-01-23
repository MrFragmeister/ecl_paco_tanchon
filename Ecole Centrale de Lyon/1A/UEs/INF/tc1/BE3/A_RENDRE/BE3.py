## Imports

from math import *
import numpy as np



## Definition du jeu de monnaie disponible

monnaie = [200,100,50,20,10,5,2,1]        #Definition des différentes valeurs fiduciaires disponibles 
dispo = [10,10,10,10,10,10,10,10]               #Definition de la disponibilité respective de ces valeurs



## Solution gloutonne sans disponiblité (iterative)

def gloutonne(S,M):
    assert(M==int(M))                      #On s'assure que M est bien un nombre entier de centimes
    T=[0]*len(S)                           #On initialise le vecteur solution 
    while M>0:                             #On continue tant que l'on a pas fini le rendu exact
        i=indice_piece(S,M)                #On determine le premier indice qui satisfait S[i]<=M
        T[i]=M//S[i]                       #On determine le nombre de fois que cette piece sera utilisée
        M=M%S[i]                           #On met a jour pour savoir ce qu'il reste a rendre
    
    return T,sum(T)                        #On retourne le vecteur solution, ainsi que le nombre total de pièces
    
    
    
def indice_piece(S,m):                     #Calcul de l'indice qui satisfait S[i]<=m
    i=0
    while S[i]>m:
        i+=1
    return i                               #On retourne cet indice
        

## Solution gloutonne avec disponibilités (iterative)


def gloutonne_dispo(S,D,M):
    assert(M==int(M))
    Disp=[e for e in D]                    #On ne modifie pas D (pour pouvoir re-executer sans F5)
    T=[0]*len(S)
    while M>0:
        i=indice_piece_d(S,Disp,M)
        if i<0:
            # print("Pas assez de monnaie pour rendre le total demandé")
            return [],np.inf
        T[i]=M//S[i]
        if T[i]>Disp[i]:
            T[i]=Disp[i]
        M=M-T[i]*S[i]
        Disp[i]=Disp[i]-T[i]
    return T,sum(T)
        
        
def indice_piece_d(S,D,m):                     #Calcul de l'indice qui satisfait S[i]<=m
    i=0
    try:
        while (S[i]>m or D[i]==0):
            i+=1
        return i                               #On retourne cet indice
    except:
        return -1
    
    
## Solution en Programmation Dynamique sans pièces utilisées


def PrD(S,M):
    assert(M==int(M))
    Mat=[[0 for _ in range(M+1)] for _ in range(len(S)+1)]
    for i in range(len(S)+1):
        Mat[0][i]=np.inf
    for i in range(len(S)+1):
        for m in range(M+1):
            if m==0:
                Mat[i][m] = 0
            else:
                if m-S[i-1]>=0:
                    m1=1+Mat[i][m-S[i-1]]
                else:
                    m1=np.inf
                    
                if i>=1:
                    m2=Mat[i-1][m]
                else:
                    m2=np.inf
                    
                
                Mat[i][m] = min(m1,m2)
            
    return Mat[len(S)][M]



## Solution en Programmation Dynamique avec pièces utilisées


def PrD(S,M):
    assert(M==int(M))
    Mat=[[0 for _ in range(M+1)] for _ in range(len(S)+1)]
    for i in range(M+1):
        Mat[0][i]=np.inf
    for i in range(len(S)+1):
        for m in range(M+1):
            if m==0:
                Mat[i][m] = 0
            else:
                if m-S[i-1]>=0:
                    m1=1+Mat[i][m-S[i-1]]
                else:
                    m1=np.inf
                    
                if i>=1:
                    m2=Mat[i-1][m]
                else:
                    m2=np.inf
                    
                
                Mat[i][m] = min(m1,m2)
            
    return Mat[len(S)][M]




## Glouton optimal avec disponibilités

def glouton_opti(S,D,M):
    assert(M==int(M))
    s_opt,t_opt=np.inf,[]
    sol=[]
    for i in range(len(S)):
        t1,s1=gloutonne_dispo(S,D,M)
        t2,s2=gloutonne_dispo(S,D[0:i]+[0]+D[i+1:],M)
        s=min(s1,s2)
        if s==s1:
            t=t1
        else:
            t=t2
        if s<s_opt:
            t_opt,s_opt=t,s
    return t,s
            
        

    
    



 