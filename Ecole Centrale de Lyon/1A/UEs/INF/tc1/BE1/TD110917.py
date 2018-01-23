## Imports

import math
import random

## Exo IV.3 Pair ou Impair

def parite():
    a=int(input("Veuillez rentrer un nombre : "))
    if a%2==0:
        return "Pair"
    else:
        return "Impair"
        

## Exo V.2 Racines d'une quadratique

def quadratique(a,b,c):
    if a == 0:
        if b!=0:
            return -c/b
        else:
            return c
    else :
        delta=(b**2-4*a*c)
        if delta>=0:
            return (-b-math.sqrt(delta))/(2*a),(-b+math.sqrt(delta))/(2*a)
        else:
            return False

## Exo V.3 Moyenne et ecart-type

echantillon=[random.gauss(16,2) for _ in range(1000)]

def moyenne(L):
    assert(len(L)!=0)
    s=0
    for i in L:
        s=s+i
    return s/len(L)
    
def ecarttype(L):
    m=moyenne(L)
    Lp=[(i-m)**2 for i in L]
    sigma=moyenne(Lp)
    et=sigma**2
    return sigma,et
    

## Exo V.4 Ecart type V2


def ecarttype2(L):
    assert(len(L)!=0)
    s=0
    for i in L:
        s=s+i**2
    return (1/len(L))*s - (moyenne(L))**2
    
    
## Exo VIII.2

def convertir(S):
    if S[0]=='-':
        assert(S[1:].isdigit())
        return -int(S[1:])
    else:
        assert(S.isdigit())
        return int(S)
    
## Exo VIII.3

def convertir2r(S):
    if S[0]=='-':                                           #On distingue le signe
        A=S[1:].split(".",2)                                #Puis on separe la chaine (en maximum deux morceaux)
        assert(A[0].isdigit() and A[1].isdigit())           #On verifie sa conformitée au type float
        s1,s2=float(A[0]),float(A[1])/(10**len(A[1]))       #On la convertie (le float() pourrai etre remplacé par un int() ici)
        return -s1-s2
    else:
        A=S.split(".",2)
        assert(A[0].isdigit() and A[1].isdigit())
        s1,s2=float(A[0]),float(A[1])/(10**len(A[1]))
        return s1+s2
    
    
## Exo XI.6 FIFO (Bonus)

def create():
    return []
    
    
def empile(p,e):
    p.append(e)
    
def depile(p):
    try:
        p.pop()
        return p
    except:
        print("La pile est vide !")
        return None
        
def estvide(p):
    return p==[]

    
## Exo XI.7 Moyennes

echantillon2=[random.gauss(16,2) for _ in range(100)]

def moyennes(V):
    s=0
    M=[]
    for i in range(len(V)):
        s=s+V[i]
        M.append(s/(i+1))
    return M



## Exo XI.8 Methode EM

def metEM(L,n): # n est la taille de la liste désirée, L la liste initiale
    l=len(L)
    T=L+(n-l)*[0]
    m1=1
    m2=0
    while abs(m1-m2)>=10**(-3):     # On utilise une condition de précision pour la sortie
        m1,m2=m2,moyenne(T)         # On garde en mémoire l'ancienne moyenne pour pouvoir sortir de la boucle. On pourrait utiliser la fonction moyennes précédemment définie
        T=L+(n-l)*[m2]
    return T
        
    
## Exo XI.9 Suppression de doublons

def dedoubleur(T):                  # J'ai choisi de ne pas modifier la liste de depart, et d'en renvoyer une nouvelle
    ref=[]
    for e in range(len(T)):
        if (T[e] not in ref):
            ref.append(T[e])
    return ref


## Exo XIV.2 Tables

def table(N):
    for i in range(1,N+1):
        print('{0:3d} {1:3d} {2:4f}'.format(i,i*i,math.sqrt(i)))


## Exo XV.3 Valeur de e

def value_e(n):
    s=0
    for i in range(n):
        s=s+(1/math.factorial(i))
    return s
    
    
## Exo XV.4 Premier ?

def primalite(p):
    d=2
    while d<=math.sqrt(p)+1:
        if p%d==0:
            return False
        else:
            return True
        d+=1
    
    
## Exo XV.9 Comptage dans le texte


def TextStats(S):
    voyelles="aeyuio"
    consonnes="zrtpqsdfghjklmwxcvbn"
    t_v,t_c=0,0
    for elem in voyelles:
        t_v+=S.lower().count(elem)
    for elem in consonnes:
        t_c+=S.lower().count(elem)
    l=len(S)
    print( "Le texte comporte %d voyelles, ainsi que %d consonnes et %d autres caractères" % (t_v,t_c,l-t_v-t_c))
    
    
    
## Exo XVII.6 Tirages de cartes

def tirage(n):
    valeurs={1,2,3,4,5,6,7,8,9,10,'Valet','Dame','Roi'}
    couleurs={'carreau','coeur','pique','trefle'}
    full_set=[str(v)+''+c for v in valeurs for c in couleurs]
    main=[]
    for _ in range(n):
        main.append(random.choice(full_set))
    return main
    
def proba_3c(n,m):
    somme=0
    for i in range(m):
        d=tirage(n)
        car,coe,piq,tre=0,0,0,0
        for e in d:
            if 'carreau' in e:
                car+=1
            elif 'coeur' in e:
                coe+=1
            elif 'pique' in e:
                piq+=1
            else:
                tre+=1
        if car>=3 or coe>=3 or piq>=3 or tre>=3:
            somme+=1
    return somme/m
  
  
## XVII.7 Triple As ?

def proba_as(n,m):
    somme=0
    for i in range(m):
        d=tirage(n)
        c_as=0
        for e in d:
            if ('1' in e) and ('10' not in e):
                c_as+=1
        if c_as>=3:
            somme+=1
    return somme/m
    
    
## XXI.3 Dichotomie récursive
    
def Rech_dicho(T,e):
    if T==[]:
        return False
    else:
        f=len(T)-1
        m=f//2
        if T[m]==e:
            return True
        elif T[m]>e:
            return Rech_dicho(T[:m],e)
        else:
            return Rech_dicho(T[m+1:],e)
            
            
## XXIV.4 Mots en majuscules

def Caps(s):
    return [str(e).upper() for e in s.lower().split()]


    
## Exo XXIV-5

def anagramme(M1,M2):
    M1b,M2b=[e for e in M1],[e for e in M2]
    if len(M1b)!=len(M2b):
        return False
    else:
        for e in M1b:
            try:
                M2b.remove(e)
            except:
                return False
        return M2b==[]                
    
    
    
    
## exo XXIV.6
    
def Tous_diff(N):
    t=[random.randint(0,3*N) for _ in range(N)]
    return t==[e for e in set(t)]
    
    
    
## Exo XXV.6

def lecture():
    f = open('fic-test.txt')
    lgn_non_empty=(line for line in f if line.strip())
    lgn_dot_ended=(l for l in lgn_non_empty if l.endswith('.'))
    nb=list(enumerate(lgn_dot_ended))
    
