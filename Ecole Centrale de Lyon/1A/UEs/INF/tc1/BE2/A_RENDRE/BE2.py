## Imports

import math
from PIL import Image
im=Image.open("Image8.bmp")
px=im.load()
wi,hi=im.size
arbre_q=[]

## Lecture de la valeur d'un pixel

def pixel_read(x,y):
    
    try:
        if x>=wi or y>=hi : raise ValueError #On gère le cas ou le pixel demandé sort des bornes de l'image
    except:
        print("WARNING : La tentative d'acces demande un pixel hors de l'image ! Utilisation d'un offset")
        x,y=x%wi,y%hi
    return px[x,y]
    
## Ecriture de la valeur d'un pixel


def pixel_write(x,y,r,g,b):
    
    try:
        if x>=wi or y>=hi : raise ValueError #On gère le cas ou le pixel demandé sort des bornes de l'image
    except:
        print("WARNING : La tentative d'acces demande un pixel hors de l'image ! Utilisation d'un offset")
        x,y=x%wi,y%hi
    px[x,y]=r,g,b
    
## Ecriture d'une couleur sur une zone rectangulaire

def rect_write(x,y,w,h,r,g,b,type):
    # x,y sont les coordonnées du point de référence
    # h,w sont la hauteur et la largeur du rectangle a dessiner
    # r,g,b définit la couleur a appliquer
    # type (0 ou 1) définit la position du rectangle relativement au point de reférence (edged ou centered)
    
    if type==0:
        for i in range(w):
            for j in range(h):
                pixel_write(x+i,y+j,r,g,b)
    else:
        for i in range(-w//2,w//2+1):
            for j in range(-h//2,h//2+1):
                pixel_write(x+i,y+j,r,g,b)

## Estimation de l'homogénéité d'une région

def homogene(x,y,w,h,s,type):
    # x,y sont les coordonnées du point de référence
    # h,w sont la hauteur et la largeur du rectangle a dessiner
    # s définit le seuil d'homogénéité a utiliser
    # type (0 ou 1) définit la position du rectangle relativement au point de reférence (edged ou centered)
    
    
    #------------On passe en mode centré--------------------------
    if type!=0:         
        x=x-w//2
        y=y-h//2
    #-------------------------------------------------------------
        
    #------------On crée la liste des valeurs RGB-----------------
    les_r=[px[x+i,y+j][0] for i in range(w) for j in range(h)]
    les_g=[px[x+i,y+j][1] for i in range(w) for j in range(h)]
    les_b=[px[x+i,y+j][2] for i in range(w) for j in range(h)]
    #-------------------------------------------------------------
    
    #---------On calcule les différents moments des listes--------
    #sigma_r,sigma_g,sigma_b=sigma(les_r),sigma(les_g),sigma(les_b)
    #moy_r,moy_g,moy_b=moyenne(les_r),moyenne(les_g),moyenne(les_b)
    #m=max(sigma_r,sigma_g,sigma_b)
    #-------------------------------------------------------------
    
    #---------On calcule les différents moments des listes--------
    sigma_r,moy_r=ValCh(les_r)
    sigma_g,moy_g=ValCh(les_g)
    sigma_b,moy_b=ValCh(les_b)
    m=max(sigma_r,sigma_g,sigma_b)
    #-------------------------------------------------------------
    
    #--------On renvoie le résultat en fonction du seuil----------
    if m>=s:
        return False,moy_r,moy_g,moy_b
    else:
        return True,moy_r,moy_g,moy_b
    #-------------------------------------------------------------
        


    
## Fonctions suplémentaires

    
def ValCh(T):       #Calcul de la moyenne, variance et ecart type d'une liste de valeurs
    l= len(T)
    try :
        if l==0: raise ValueError      #On fait attention aux divisions par 0
    except:
        return (0,0)
    m= sum(T)/l
    v=sum([e**2 for e in T])/l - m**2
    sigma=math.sqrt(abs(v))     #On evite les racines négatives
    return (sigma, m)
    
    
## Réalisation récursive de la quadripartition

def quadripart(x,y,w,h,s,i):
    
    
    
    #-------------On teste l'homogénéité de la zone---------------
    bool,r,g,b=homogene(x,y,w,h,s,0)                                #Le "0" correspond au fait que l'on ne travaille pas en mode centré (la coordonnée x,y du pixel est celle du pixel en haut a gauche de la zone)
    #-------------------------------------------------------------
    
    
    
    #-----On enregistre la region a sa place dans l'arbre---------
    if len(arbre_q)==i:
        arbre_q.append([x,y,w,h,int(r),int(g),int(b),bool,False])
        
    elif len(arbre_q)>i:        #Si la place a deja été crée
        arbre_q[i]=[x,y,w,h,int(r),int(g),int(b),bool,False]
        
    else:                       #Si sa place n'existe pas on la crée
        while len(arbre_q)<i:
            arbre_q.append([])
        arbre_q.append([x,y,w,h,int(r),int(g),int(b),bool,False])
    #-------------------------------------------------------------
    
    
    
    # Si la zone compte quatre pixels ou moins, on arrete de la couper
    # Si la zone est homogène, on arrete de la couper
    if bool or h*w<5:       
        rect_write(x,y,w,h,int(r),int(g),int(b),0)                          #On remplace la zone par sa couleur moyenne
        return None                                                         #Pas de valeurs particulière à retourner, on pourrait s'en servir pour du debug
    #-------------------------------------------------------------

    else:
    
        
        #---------------Appels récursifs--------------------------
        w=w//2                                                              #On coupe la largeur et la hauteur des zones en 2, ce qui en fait 4 au total
        h=h//2
        quadripart(x,y,w,h,s,4*i+1)
        quadripart(x+w,y,w,h,s,4*i+2)                                       #On réalise les appels récursifs, en prenant soin de décaler l'indice de la zone au format "4*i+b"
        quadripart(x,y+h,w,h,s,4*i+3)
        quadripart(x+w,y+h,w,h,s,4*i+4)
        #---------------------------------------------------------
    
#-----------------------------------Fin-------------------------------------------

    
    
## Fonction permettant un appel propre a la fonction, ainsi qu'un affichage du résultat
   
def Split(s):
    assert(s>=1)        #La valeur du seuil doit etre supérieure ou égale à 1
    quadripart(0,0,wi,hi,s,0)
    im.show()
    # im.save('seuil'+ str(s) +'.bmp')
    # return arbre_q
    
    


    
    
    
    
## Fonction de réunion globale d'une zone et de toute les sous zones affiliées

def merge(T,i):
    try :
        
        if T[i][7]:
            return None
        else:
            merge_sz(T,i)
            merge_adjacents(T,i)
    except:
        return None
    
    
    
## Fonction de réunion des sous zones (appels récursifs condensés)

def merge_sz(T,i):
    
    merge(T,4*i+1)
    merge(T,4*i+2)
    merge(T,4*i+3)
    merge(T,4*i+4)
    
    
## Fonction de réunion des adjacents dans la meme sous cellule
    
def merge_adjacents(T,i):
    
    merge_voisins(T,i)
    
    fusion(T,i,i+1)
    fusion(T,i,i+2)
    fusion(T,i+1,i+3)
    fusion(T,i+2,i+3)
    
## Fonction de réunion des voisins des sous cellules voisines 
    
def merge_voisins(T,i):
    
   
    fusion(T,4*i+2,4*(i+1)+1)
    fusion(T,4*i+4,4*(i+1)+3)
    
    fusion(T,4*i+3,4*(i+2)+1)
    fusion(T,4*i+4,4*(i+2)+2)
    
    fusion(T,4*(i+2)+2,4*(i+3)+1)
    fusion(T,4*(i+2)+4,4*(i+3)+3)
    
    fusion(T,4*(i+1)+3,4*(i+3)+1)
    fusion(T,4*(i+1)+4,4*(i+3)+2)
    
    
    
    
## Fonction de fusion de deux zones adjacentes

def fusion(T,i,j):
    if (T[i]==[] or T[j]==[]):
        return None
    else:
        xA,yA,wA,hA,rA,gA,bA,_,mergedA=T[i]
        xB,yB,wB,hB,rB,gB,bB,_,mergedB=T[j]
        if abs(rA-rB)+abs(gA-gB)+abs(bA-bB)<=3:
            if mergedA and not mergedB:
                rect_write(xB,yB,wB,hB,rA,gA,bA,0)
                T[j][-1]=True
            
            elif mergedB and not mergedA:
               rect_write(xA,yA,wA,hA,rB,gB,bB,0)
               T[1][-1]=True
            
            else:
                # m_r,m_g,m_b=(rA+rB)//2,(gA+gB)//2,(bA+bB)//2              On réalise une moyenne pure
                
                #--------------Moyenne Pondérée---------------------------
                m_r=(rA*hA*wA+rB*hB*wB)//(hA*wA+hB*wB)
                m_g=(gA*hA*wA+gB*hB*wB)//(hA*wA+hB*wB)                         #On pondère la couleur optenue par la taille des zones qui se mergent
                m_b=(bA*hA*wA+bB*hB*wB)//(hA*wA+hB*wB)
                #---------------------------------------------------------
                
                
                rect_write(xA,yA,wA,hA,m_r,m_g,m_b,0)
                rect_write(xB,yB,wB,hB,m_r,m_g,m_b,0)
                T[i][-1],T[j][-1] = True,True
            
        return None 
    
    
    
## Fonction finale

def Compression(s):
    Split(s)
    merge(arbre_q,0)
    im.show()
    
    
    
    