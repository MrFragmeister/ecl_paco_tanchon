# -*- coding: utf-8 -*-
"""
Created on Mon Nov  6 09:18:37 2017

@author: Paco TANCHON
"""

import random
from tkinter import *
from tkinter.messagebox import * # boîte de dialogue

#%% -------------------------- Exemple 1 --------------------------------------


# Création de la fenêtre principale (main window)
mafenetre = Tk()

# Création d'un widget Label (texte 'Bonjour ECL !')
label = Label(mafenetre, text = 'Bonjour ECL !', fg = 'blue')

# Positionnement du widget avec la méthode pack()
label.pack()

# Création d'un widget Button (bouton Quitter)
bouton = Button(mafenetre, text = 'Quitter', command = mafenetre.destroy)
bouton.pack()

# Lancement du gestionnaire d'événements
mafenetre.mainloop()


## ----------------------------------------------------------------------------
#%% -------------------------- Exemple 2 --------------------------------------



def tirage():
    nb = random.randint(1,100)
    texte.set('Nombre : ' + str(nb))
    
    
# Création de la fenêtre principale (main window)
mafenetre = Tk()
mafenetre.title('Tirage aléatoire')
mafenetre.geometry('300x100+400+400')


# Création d'un widget Button (bouton Lancer)
boutonLancer = Button(mafenetre, text ='Tirage', command = tirage)


# Positionnement du widget avec la méthode pack()
boutonLancer.pack(side = LEFT, padx = 5, pady = 5)
texte = StringVar()
tirage()


# Création d'un widget Label (texte 'Résultat -> x')
labelResultat = Label(mafenetre, textvariable = texte, fg ='red', bg ='white')
labelResultat.pack(side = LEFT, padx = 5, pady = 5)


# Création d'un widget Button (bouton Quitter)
boutonQuitter = Button(mafenetre, text ='Quitter', command = mafenetre.destroy)
boutonQuitter.pack(side = LEFT, padx = 5, pady = 5)
mafenetre.mainloop()

## ----------------------------------------------------------------------------
#%% -------------------------- Exemple 3 --------------------------------------

# Création de la fenêtre principale
mafenetre = Tk()
mafenetre.title('Pense bête')
mafenetre['bg']='blue' # couleur de fond

# création d'un widget Frame dans la fenêtre principale
frame1 = Frame(mafenetre,borderwidth=2,relief=GROOVE)
frame1.pack(side=LEFT,padx=10,pady=10)

# création d'un second widget Frame dans la fenêtre principale
frame2 = Frame(mafenetre,borderwidth=2,relief=GROOVE)
frame2.pack(side=LEFT,padx=10,pady=10)

# création d'un troisieme widget Frame dans la fenêtre principale
frame3 = Frame(mafenetre,bg="white",borderwidth=2,relief=GROOVE)
frame3.pack(side=LEFT,padx=10,pady=10)

# création d'un widget Label et d'un widget Button dans un widget Frame
Label(frame1,text="Acheter de l'eau").pack(padx=10,pady=10)
Button(frame1,text="Effacer",fg='navy',command=frame1.destroy).pack(padx=10,pady=10)
Label(frame2,text="Appeler le médecin").pack(padx=10,pady=10)
Button(frame2,text="Effacer",fg='navy',command=frame2.destroy).pack(padx=10,pady=10)
Label(frame3,text="Entrainement de tennis à 18h",bg="white").pack(padx=10,pady=10)
Button(frame3,text="Effacer",fg='navy',command=frame3.destroy).pack(padx=10,pady=10)
mafenetre.mainloop()

## ----------------------------------------------------------------------------
#%% -------------------------- Exemple 4 --------------------------------------




def verification():
    if nombre.get() == str(nb):
 # le nombre a été deviné : on affiche une boîte de dialogue puis on ferme la fenêtre
         showinfo('Résultat','Bravo, c\'est gagné.\nAu revoir !')
         mafenetre.destroy()
    else:
 # le nombre n’a pas été deviné : on affiche une boîte de dialogue
         showwarning('Résultat','Perdu...\nVeuillez recommencer !')
         nombre.set('')
         
         
# Création de la fenêtre principale (main window)
mafenetre = Tk()
mafenetre.title('Deviner un nombre entre 1 et 10')
# Création d'un widget Label (texte 'Mot de passe')
label = Label(mafenetre, text = 'Nombre : ')
label.pack(side = LEFT, padx = 5, pady = 5)
# Création d'un widget Entry (champ de saisie)
nombre= StringVar()
texte = Entry(mafenetre, textvariable= nombre, bg ='bisque', fg='maroon')
texte.focus_set()
texte.pack(side = LEFT, padx = 5, pady = 5)
# Génération d'un nombre aléatoire entre 1 et 10
nb = random.randint(1,10)
print('Valeur :',nb)
# Création d'un widget Button (bouton Valider)
bouton = Button(mafenetre, text ='Tester', command = verification)
bouton.pack(side = LEFT, padx = 5, pady = 5)
mafenetre.mainloop()


## ----------------------------------------------------------------------------
#%% ------------------------- Exemple 5 ---------------------------------------



def dessinerCarre():
    """ Dessine un carre de centre (x,y) et de cote 2*c """
    x = random.randint(0,largeur)
    y = random.randint(0,hauteur)
    c = 20
    canevas.create_rectangle(x-c, y-c, x+c, y+c, outline='blue', fill='red')
    
def effacer():
    """ Efface le contenu de la zone d'affichage """
    canevas.delete(ALL)
    
    
# Création de la fenêtre principale (main window)
mafenetre = Tk()
mafenetre.title('Affichage des carrés')

# Création d'un widget Canvas (zone graphique)
largeur = 480
hauteur = 320
canevas = Canvas(mafenetre, width = largeur, height = hauteur, bg ='white')
canevas.pack(padx =5, pady =5)

# Création d'un widget Button (bouton Afficher)
boutonAfficher = Button(mafenetre, text ='Dessiner', command = dessinerCarre)
boutonAfficher.pack(side = LEFT, padx = 10, pady = 10)

# Création d'un widget Button (bouton Effacer)
boutonEffacer = Button(mafenetre, text ='Effacer', command = effacer)
boutonEffacer.pack(side = LEFT, padx = 5, pady = 5)

# Création d'un widget Button (bouton Quitter)
boutonQuitter = Button(mafenetre, text ='Quitter', command = mafenetre.destroy)
boutonQuitter.pack(side = LEFT, padx = 5, pady = 5)

mafenetre.mainloop()

## ----------------------------------------------------------------------------
#%% -------------------------- Exemple 6 --------------------------------------


def cliquer(event):
     """ Gestion de l'événement Clic gauche sur la zone graphique """
     # position du pointeur de la souris
     x = event.x
     y = event.y
     # on dessine un cercle
     r = 20
     canevas.create_oval(x-r, y-r, x+r, y+r, outline='blue',fill='black')
     
def effacer():
     """ Efface la zone graphique """
     canevas.delete(ALL)
     
# Création de la fenêtre principale
mafenetre = Tk()
mafenetre.title('Affichage des cercles')

# Création d'un widget Canvas
largeur = 480
hauteur = 320
canevas = Canvas(mafenetre, width = largeur, height = hauteur, bg ='white')

# La méthode bind() permet de lier un événement avec une fonction :
# un clic gauche sur la zone graphique provoquera l'appel de la fonction utilisateur
# cliquer()
canevas.bind('<Button-1>', cliquer)
canevas.pack(padx =5, pady =5)

# Création d'un widget Button (bouton Effacer)
Button(mafenetre, text ='Effacer', command = effacer).pack(side=LEFT,padx= 5,pady =5)

# Création d'un widget Button (bouton Quitter)
Button(mafenetre,text='Quitter',command=mafenetre.destroy).pack(side=LEFT,padx=5,pady=5)
mafenetre.mainloop()

## ----------------------------------------------------------------------------
#%% -------------------------- Exemple 7 --------------------------------------


class ZoneAffichage(Canvas):
     def __init__(self,parent, w, h, c):
         Canvas.__init__(self, width = w, height = h, bg = c)

class FenPrincipale(Tk):
    def __init__(self):
         Tk.__init__(self)
         self.title('Affichage des cercles')
         self.__zoneAffichage = ZoneAffichage(self,480,320,'white')
         
 # La méthode bind() permet de lier un événement avec une fonction :
 # un clic gauche sur la zone graphique provoquera l'appel de la fonction utilisateur cliquer()
 
         self.__zoneAffichage.bind('<Button-1>',self.cliquer)
         self.__zoneAffichage.pack(padx=5, pady=5)

         # Création d'un widget Button (bouton Effacer)
         self.__boutonEffacer = Button(self, text ='Effacer', command = self.effacer).pack(side=LEFT,padx = 5,pady = 5)
         # Création d'un widget Button (bouton Quitter)
         self.__boutonQuitter = Button(self, text ='Quitter', command = self.destroy).pack(side=LEFT,padx=5,pady=5)

    def cliquer(self,event):
         """ Gestion de l'événement Clic gauche sur la zone graphique """
         # position du pointeur de la souris
         x = event.x
         y = event.y
         # on dessine un cercle
         r = 20
         self.__zoneAffichage.create_oval(x-r,y-r,x+r,y+r,outline='blue',fill='black')
     
    def effacer(self):
         """ Efface la zone graphique """
         self.__zoneAffichage.delete(ALL)
         
# Création de la fenêtre principale
fen = FenPrincipale()
fen.mainloop()