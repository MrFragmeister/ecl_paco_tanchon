# -*- coding: utf-8 -*-
"""
Created on Mon Nov 20 08:10:13 2017

@author: Yves
"""
from tkinter import *
from tkinter.messagebox import *
from formes import*
from random import randint

def chargerMot(f):
    '''lit le fichier f'''
    f = open(f, 'r')          
    s = f.read()         
    l = s.split('\n') 
    f.close()
    return l      



class ZoneAffichage(Canvas):
    '''classe permettant de gérer l'affichage de formes dans un Canvas'''
    
    def __init__(self,parent, w, h, c):
        Canvas.__init__(self, width = w, height = h, bg = c)
        self.__d = Dessin()# on crée une instance de la classe dessin auquel on rajoute les formes constitutives du pendu
        self.__d.ajout_forme(Rectangle(150, 250, 'rouge', 100, 10))
        self.__d.ajout_forme(Rectangle(150, 150, 'rouge', 10, 200))
        self.__d.ajout_forme(Rectangle(250, 55, 'rouge', 200, 10))
        self.__d.ajout_forme(Rectangle(345, 70, 'rouge', 10, 40))
        self.__d.ajout_forme(Cercle(345, 95, 'vert', 20))
        self.__d.ajout_forme(Rectangle(345, 140,'vert', 10, 70))
        self.__d.ajout_forme(Rectangle(325, 140, 'vert', 40, 10))
        self.__d.ajout_forme(Rectangle(365, 140, 'vert', 40, 10))
        self.__d.ajout_forme(Rectangle(335, 195,'vert', 10, 70))
        self.__d.ajout_forme(Rectangle(355, 195,'vert', 10, 70))
        
    def affiche(self, i):
        '''fonction permettant d'afficher les éléments de 0 à i compris dans la liste des dessins'''
        self.__d.affiche(self, i)
    
        
    def selection_formes(self, x, y):
        L = self.__d.liste()
        for f in L:
            if f.selection(x, y):
                showinfo(f.__str__())
                print(x)
                break

class FenPrincipale(Tk):
    '''classe permettant de gérer la fenêtre principale et le déroulement du jeu du pendu en particulier'''
    def __init__(self):
        Tk.__init__(self)
        self.__zoneAffichage = ZoneAffichage(self,480,320,'white')#création de la zone dans laquelle s'affiche le pendu
            
# La méthode bind() permet de lier un événement avec une fonction :
#  un  clic  gauche  sur  la  zone  graphique  provoquera  l'appel  de  la  fonction utilisateur cliquer()
        self.__zoneAffichage.pack(padx = 5, pady = 5)#place la zone d'affichage du pendu sur la fenêtre principale
        self.__mots = chargerMot('mots.txt')# lit le fichier des mots du pendu
        self.__mot = self.nouveauMot()#mot tiré au hasard dans le fichier des mots
        self.__motAffiche = ''
        self.__nbManques = 0#compteur du nombre de coups manqués
        for x in self.__mot:
            self.__motAffiche += '*' #représentaion cachée du mot tiré 

        
# Création d'un widget Button (bouton Quitter)
        
        self.__boutons = [] #on initialise la liste des boutons du clavier virtuel
        f = Frame(self) #on les dispose en grille 
        
        for i in range(7):#ligne la plus haute du clavier virtuel
            bouton = MonBouton(f, chr(ord('A')+i), self)
            self.__boutons.append(bouton)
            bouton.grid(row=0, column=i)
            self.__boutons[i].config(command=self.__boutons[i].cliquer) 
        for i in range(7, 14):#deuxième ligne du clavier virtuel
            bouton = MonBouton(f, chr(ord('A')+i), self)
            self.__boutons.append(bouton)
            bouton.grid(row=2, column=i-7)
            self.__boutons[i].config(command=self.__boutons[i].cliquer)
        for i in range(14, 21):#troisième ligne du clavier virtuel
            bouton = MonBouton(f, chr(ord('A')+i), self)
            self.__boutons.append(bouton)
            bouton.grid(row=3, column=i-14)
            self.__boutons[i].config(command=self.__boutons[i].cliquer)
        for i in range(21, 26):#quatrième ligne du clavier virtuel
            bouton = MonBouton(f, chr(ord('A')+i), self)
            self.__boutons.append(bouton)
            bouton.grid(row=4, column=i-21)
            self.__boutons[i].config(command=self.__boutons[i].cliquer)#relie l'action du clic de la souris à la touche du clavier virtuel correspondante
        f.pack(side=BOTTOM, padx = 5, pady = 5)    #affichage du clavier sur la fenêtre principale
        
        f1 = Frame(self)# ajout d'une seconde grille pour les boutons nouvelle partie et cliquer
        f1.pack(side=TOP, padx=5, pady=5)#affichage de cette grille sur la fenêtre principale en haut du clavier
        self.__boutonNew = Button(f1, text ='Nouvelle partie', width=15, command = self.nouvellePartie).pack(side=LEFT,padx = 5,pady = 5) #définition du bouton nouvelle partie lié à la méthode gérant le début d'une partie
        self.__boutonQuitter    =    Button(f1,    text    ='Quitter',    command    =  self.destroy).pack(side=LEFT,padx=5,pady=5)# définition du bouton quitter lié à la méthode permettant de quitter la partie
        self.__lmot = Label(self)#affichage du mot qui doit être découvert
        self.__lmot.pack(side=TOP)
        self.__lmot.config(text= 'Mot:'+self.__motAffiche)
    
    def nouveauMot(self):
        '''tire aléatoirement un mot dans la liste des mots provenant du fichier mots'''
        n = len(self.__mots)
        r = randint(1, n)
        return self.__mots[r]
        
        
    def nouvellePartie(self):
        '''gère la réinitialisation du jeu et le début d'une nouvelle partie'''
        self.__zoneAffichage.delete(ALL)#efface le dessin de pendu de la partie précédente
        for x in self.__boutons:
            x.config(state = 'normal')#réactive les boutons du clavier virtuel
        self.__mot = self.nouveauMot()#tire un nouveau mot 
        self.__motAffiche = ''#réinitialise l'affichage du mot dans la fenêtre principale
        n = len(self.__mot)
        for i in range(n):
            self.__motAffiche += '*'
        self.__lmot.config(text='Mot :'+self.__motAffiche)
        self.__nbManques = 0#réinitialise le compteur d'erreurs à 0
        
    def traitement(self, lettre):
        '''permet de gérer le déroulement d'une partie'''
        n = len(self.__mot)
        a = False 
        for i in range(n):
            #permet de savoir si la lettre a été trouvée dans le mot.
            if self.__mot[i] == lettre :#dans la cas positif, on change l'affichage du mot en affichant la lettre dans le mot sur la fenêtre principale
                a = True
                self.__motAffiche = self.__motAffiche[:i]+lettre+self.__motAffiche[i+1:]
                self.__lmot.config(text = 'Mot:'+self.__motAffiche)
        
        if not a:#dans le cas négatif, on augmente affiche une partie supplémentaire du pendu et on incrémente d'un le compteur des coups manqués
            
            self.__nbManques += 1
            self.affiche(self.__nbManques)
        
        if self.__mot == self.__motAffiche:#si le mot est tout trouvé, on appelle la méthode gérant la fin de partie
            self.finPartie(True)
            
        elif self.__nbManques == 10:#si le compteur de coups manqués arrive à 10, on appelle également la méthode gérant la fin de partie
            self.finPartie(False)
        
    def affiche(self, i):
        '''permet d'afficher les partie du pendues correspondant aux formes de 0 à i dans la liste des formes'''
        self.__zoneAffichage.affiche(i)
        
                
    def finPartie(self, b):
        '''gère la fin de partie grâce à un booléen indiquant si la partie a été gagné ou perdue'''
        for x in self.__boutons:
            x.config(state = 'disabled')#désactive tous les boutons du clavier virtuel
        if b:# affichage d'un message suivant si la partie a été gagnée ou perdue
            self.__lmot.config(text = self.__mot+' Bravo, vous avez gagné')
        else:
            self.__lmot.config(text = 'Vous avez perdu, le mot était: ' + self.__mot)
        

        
class MonBouton(Button):
    '''classe permettant la gestion du clic sur un bouton'''
    def __init__(self, f, l, fen):
        Button.__init__(self, f, text=l)
        self.__lettre = l #association d'une lettre à un bouton en vue de créer le clavier virtuel
        self.__frame = f
        self.__fenetre = fen
        
    def get_lettre(self):
        return self.__lettre
    
    def cliquer(self):
        '''gère le clic sur un bouton et appelle la méthode traitement de la fenêtre pour faire avancer le jeu du pendu'''
        self.config(state = 'disabled')
        self.__fenetre.traitement(self.__lettre)
        
        
        
# Création de la fenêtre principale
fen = FenPrincipale()
fen.mainloop()