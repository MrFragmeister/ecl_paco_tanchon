## Essai d'execution du code

# La sortie Y=1 si x1=1 ( ou bien y=(x1 and x3) )
# Pas de hidden couche , donc les résultats ne seront pas top .

import numpy as np
import matplotlib.pyplot as plt

# La fonction de combinaison ( ici une sigmoide )

def sigmoide ( x ) : 
    return 1/(1+np.exp(-x))
    
    
# Et sa dérivée

def derivee_de_sigmoide (x) : 
    return x*(1-x)


# Les entrées
X = np.array([[0,0,0],[0,0,1],[0,1,0],[0,1,1],[1,0,0],[1,0,1 ],[1,1,0],[1,1,1]])


# Les sorties ( ici un vecteur )
Y = np.array([[0,0,0,0,1,1,1,1]]).T # Transposé


# On utilise seed pour rendre les calculs déterministes .
np.random.seed(1)


# Initialisation aléatoire des poids ( avec une moyenne = 0)
synapse0 = 2*np .random.random(( 3 , 1 )) - 1


# Variable de stockage de données pour tracer des graphes sur chacune des composantes
les_i=[i for i in range(1000)]
les_erreurs=[[],[],[],[]]




couche_entree = X
for iter in range (1000) : # On peut augmenter !

    # propagation vers l’avant ( forward )
    couche_sortie = sigmoide(np.dot(couche_entree, synapse0)) # dot multiplication
    
    
    # Quelle est l’erreur ( l’écart entre les sorties calculées et attendues )
    erreur_couche_sortie = Y - couche_sortie
    
    #On stocke l'erreur calculée
    
    les_erreurs[0].append(erreur_couche_sortie[0])
    les_erreurs[1].append(erreur_couche_sortie[1])
    les_erreurs[2].append(erreur_couche_sortie[2])
    les_erreurs[3].append(erreur_couche_sortie[3])
    
    # Multiplier l’erreur ( l'écart ) par la pente du sigmoïde pour les valeurs dans couche_sortie
    delta_couche_sortie = erreur_couche_sortie * derivee_de_sigmoide ( couche_sortie )
    
    
    # Mise à jour des poids : rétropropagation
    synapse0 += np.dot(couche_entree.T , delta_couche_sortie )
    
print( " Les sorties après l’apprentissage : " )
print( couche_sortie )


#On affiche le graphe des erreurs en fonction des itération croissantes
plt.plot(les_i,les_erreurs[0])
plt.plot(les_i,les_erreurs[1])
plt.plot(les_i,les_erreurs[2])
plt.plot(les_i,les_erreurs[3])
plt.show()


## On modifie la fonction ci dessus pour qu'elle puisse afficher la courbe de l'evolution des erreurs


## Réseau avec couche cachée

def arctan_et_sa_derivee(x,deriv=False):
    if deriv==True:
        return 1/(1+x**2)
    return np.arctan(x)/(np.pi/2)

def tgh_et_sa_derivee(x,deriv=False):
    if deriv==True:
        return 1-x**2
    return 1/(1+np.exp(-2*x))

def sigmoide_et_sa_derivee (x, deriv=False ):
    if (deriv==True) :
        return x*(1-x)
    return 1/(1+np.exp(-x))
    
    
X = np.array([[ 0 ,0 ,1 ] ,[ 0 ,1 ,1 ] ,[ 1 ,0 ,1 ] ,[ 1 ,1 ,1 ] ] )
y = np.array( [ [ 0 ] ,[ 1 ] ,[ 1 ] ,[ 0 ] ] )


# On utilise seed pour rendre les calculs déterministes .
np.random.seed(1)


# Initialisation aléatoire des poids ( avec une moyenne = 0 et écart-type =1)
# Ici, on met l a moyenne à zéro , le std ne change pas .
# L’écriture X = b*np.random.random(( 3 , 4 )) - a
# permet un tirage dans [ a , b ) ], ici entre b=1 et a=-1 (donc moyenne=0)

synapse0 = 2*np.random.random(( 3 , 4 )) - 1
synapse1 = 2*np.random.random(( 4 , 1 )) - 1
couche_entree = X
nb_iterations = 100000
err=[]

for j in range( nb_iterations ) :
    
    # propagation vers l’avant ( forward )
    # couche_entree = X


    couche_cachee = sigmoide_et_sa_derivee(np.dot(couche_entree,synapse0))
    couche_sortie = sigmoide_et_sa_derivee(np.dot(couche_cachee,synapse1))
    
    
    # erreur ?
    erreur_couche_sortie = y - couche_sortie
    moy=np.mean(np.abs(erreur_couche_sortie))
    err.append(abs(moy))


    
    if j%(nb_iterations//10) == 0: # des traces de l’erreur

        print( "Moyenne Erreur couche sortie : " + str( np.mean(np.abs(erreur_couche_sortie))))


    # pondération par l’erreur ( si pente douce , ne pas trop changer sinon , changer pondérations )
    delta_couche_sortie = erreur_couche_sortie * sigmoide_et_sa_derivee(couche_sortie , deriv =True )


    # Quelle est la contribution de couche_cachee à l’erreur de couche_sortie
    # (suivant les pondérations) ?
    error_couche_cachee = delta_couche_sortie.dot(synapse1.T)


    # Quelle est la "direction" de couche_cachee ( dérivée ) ?
    # Si OK, ne pas trop changer la valeur .
    delta_couche_cachee = error_couche_cachee * sigmoide_et_sa_derivee( couche_cachee , deriv=True )
    synapse1 += couche_cachee.T.dot( delta_couche_sortie )
    synapse0 += couche_entree.T.dot( delta_couche_cachee )
    
    
print( "Résultat de l’apprentissage : " )
print( couche_sortie )
plt.plot(range(nb_iterations),err)
plt.show()

## On va tester le réseau que l'on a entrainé


def test(vecteurs_entree):
    return sigmoide_et_sa_derivee(np.dot(np.dot(vecteurs_entree,synapse0),synapse1))
    
    
## On modifie le réseau avec une couche cachée pour le faire apprendre sur la table de vérité complete Y=(X1 ^ X2 ^ \X3)



## On implemente les fonctions tangente hyperbolique, gaussiene et arctan


## RN avec deux couches cachées : (non fonctionnel pour l'instant)



'''    
X = np.array([[ 0 ,0 ,1 ] ,[ 0 ,1 ,1 ] ,[ 1 ,0 ,1 ] ,[ 1 ,1 ,1 ] ] )
y = np.array( [ [ 0 ] ,[ 1 ] ,[ 1 ] ,[ 0 ] ] )


# On utilise seed pour rendre les calculs déterministes .
np.random.seed(1)


# Initialisation aléatoire des poids ( avec une moyenne = 0 et écart-type =1)
# Ici, on met l a moyenne à zéro , le std ne change pas .
# L’écriture X = b*np.random.random(( 3 , 4 )) - a
# permet un tirage dans [ a , b ) ], ici entre b=1 et a=-1 (donc moyenne=0)

synapse0 = 2*np.random.random(( 3 , 3 )) - 1
synapse1 = 2*np.random.random(( 3 , 4 )) - 1
synapse2 = 2*np.random.random(( 4 , 1 )) - 1

couche_entree = X
nb_iterations = 100000
err=[]

for j in range( nb_iterations ) :
    
    # propagation vers l’avant ( forward )
    # couche_entree = X


    couche_cachee1 = sigmoide_et_sa_derivee(np.dot(couche_entree,synapse0))
    couche_cachee2 = sigmoide_et_sa_derivee(np.dot(couche_cachee1,synapse1))
    couche_sortie = sigmoide_et_sa_derivee(np.dot(couche_cachee2,synapse2))
    
    
    # erreur ?
    erreur_couche_sortie = y - couche_sortie
    moy=np.mean(np.abs(erreur_couche_sortie))
    err.append(abs(moy))


    
    if j%(nb_iterations//10) == 0: # des traces de l’erreur

        print( "Moyenne Erreur couche sortie : " + str( np.mean(np.abs(erreur_couche_sortie))))


    # pondération par l’erreur ( si pente douce , ne pas trop changer sinon , changer pondérations )
    delta_couche_sortie = erreur_couche_sortie * sigmoide_et_sa_derivee(couche_sortie , deriv =True )
    delta_couche_sortie = erreur_couche_sortie * sigmoide_et_sa_derivee(couche_sortie , deriv =True )


    # Quelle est la contribution de couche_cachee à l’erreur de couche_sortie
    # (suivant les pondérations) ?
    error_couche_cachee1 = delta_couche_sortie.dot(synapse1.T)
    error_couche_cachee2 = delta_couche_sortie.dot(synapse2.T)

    # Quelle est la "direction" de couche_cachee ( dérivée ) ?
    # Si OK, ne pas trop changer la valeur .
    delta_couche_cachee1 = error_couche_cachee1 * sigmoide_et_sa_derivee( couche_cachee1 , deriv=True )
    delta_couche_cachee2 = error_couche_cachee2 * sigmoide_et_sa_derivee( couche_cachee2 , deriv=True )
    synapse1 += couche_cachee.T.dot( delta_couche_cachee2 )
    synapse0 += couche_entree.T.dot( delta_couche_cachee1 )
    
    
print( "Résultat de l’apprentissage : " )
print( couche_sortie )
plt.plot(range(nb_iterations),err)
plt.show()




'''


## Utilisation d'un RN pour la reconnaissance de chiffres manuscrits


def factiv(x, deriv=False):
    if deriv==True:
        return sigmoide(x)
    return np.log(1+np.exp(x))


#Declaration de variables pour collecter les données
valuelist=[]
vectorlist=[]

#Lecture dans un fichier des données
with open("train.data", "r") as trainingdata:
    for line in trainingdata:
        entry=line.split()
        valuelist.append([int(entry[-1])])
        vectorlist.append([ int(e) for e in entry[:-1]])




X = np.array( vectorlist)
y = np.array( valuelist )


# On utilise seed pour rendre les calculs déterministes .
np.random.seed(1)



#les_alphas=[i*10**(-5) for i in range(30,0,-5)]
les_alphas=[0.0005]
erralpha=[]


for alpha in les_alphas:

    # Initialisation aléatoire des poids ( avec une moyenne = 0 et écart-type =1)
    # Ici, on met l a moyenne à zéro , le std ne change pas .
    # L’écriture X = b*np.random.random(( 3 , 4 )) - a
    # permet un tirage dans [ a , b ) ], ici entre b=1 et a=-1 (donc moyenne=0)
    
    synapse0 = 2*np.random.random(( 48 , 4 )) - 1
    synapse1 = 2*np.random.random(( 4 , 1 )) - 1
    couche_entree = X
    nb_iterations = 100000
    err=[]
    
    
    for j in range( nb_iterations ) :
    
        # propagation vers l’avant ( forward )
        # couche_entree = X


        couche_cachee = factiv(np.dot(couche_entree,synapse0))
        couche_sortie = factiv(np.dot(couche_cachee,synapse1))
    
    
        # erreur ?
        erreur_couche_sortie = y - couche_sortie
        moy=np.mean(np.abs(erreur_couche_sortie))
        err.append(abs(moy))
    
    
        
        if j%(nb_iterations//10) == 0: # des traces de l’erreur

            print( "Moyenne Erreur couche sortie : " + str( np.mean(np.abs(erreur_couche_sortie))))


        # pondération par l’erreur ( si pente douce , ne pas trop changer sinon , changer pondérations )
        delta_couche_sortie = erreur_couche_sortie * factiv(couche_sortie , deriv =True )
    
    
        # Quelle est la contribution de couche_cachee à l’erreur de couche_sortie
        # (suivant les pondérations) ?
        error_couche_cachee = delta_couche_sortie.dot(synapse1.T)
    
    
        # Quelle est la "direction" de couche_cachee ( dérivée ) ?
        # Si OK, ne pas trop changer la valeur .
        delta_couche_cachee = error_couche_cachee * factiv( couche_cachee , deriv=True )
        synapse1 += couche_cachee.T.dot( delta_couche_sortie ) *alpha
        synapse0 += couche_entree.T.dot( delta_couche_cachee ) *alpha
        
    erralpha.append(err[-1])
    print("remise a 0")
    
print( couche_sortie )
plt.plot(range(nb_iterations),err)
#plt.plot(les_alphas,erralpha)
plt.show()




def digit_analysis():
    valuelist=[]
    vectorlist=[]
    with open("test.data", "r") as trainingdata:
        for line in trainingdata:
            entry=line.split()
            valuelist.append([int(entry[-1])])
            vectorlist.append([ int(e) for e in entry[:-1]])
    
    
    X = np.array( vectorlist)
    y = np.array( valuelist )
    result=factiv(np.dot(np.dot(X,synapse0),synapse1))
    return [int(e) for e in result] #On renvoie en discretisant pour une meilleure lecture











