# -*- coding: utf-8 -*-
"""
Created on Mon Nov  6 10:27:41 2017

@author: Paco TANCHON
"""

import random
from tkinter import *
from tkinter.messagebox import * # boîte de dialogue

#%% Definition des formes

class Dessin:
    def __init__(self):
        self.__formlist=[]
        
    def addForm(self,form):
        assert(isinstance(form,Forme))
        self.__formlist.append(form)
        
    def removeForm(self,form):
        assert(isinstance(form,Forme))
        self.__formlist.remove(form)
        
    def is_cursor_on_form(self,x,y):
        for e in self.__formlist:
            if e.is_inside(x,y):
                return True
        return False
    
    def getSelectedForm(self,x,y):
        for e in self.__formlist:
            if e.is_inside(x,y):
                return e
        return None
    
    def getFormList(self):
        return self.__formlist
    
    
    
class Forme:
    def __init__(self,xc,yc,color):
        self.__centrex = xc
        self.__centrey = yc
        self.__c = color
    def getColor(self):
        return self.__c
    def getCentre(self):
        return (self.__centrex, self.__centrey)
    def setColor(self,color):
        self.__c = color
    def setCentre(self,x,y):
        self.__centrex = x
        self.__centrey = y


class Rectangle(Forme):
    def __init__(self, xc, yc, color, height, width):
        Forme.__init__(self,xc,yc,color)
        self.__w = width
        self.__h = height
    def getWidth(self):
        return self.__w
    def getHeight(self):
        return self.__h
    def setWidth(self, width):
        self.__w = width
    def setHeight(self, height):
        self.__h = height
    def area(self):
        return self.__h*self.__w
    def perimeter(self):
        return 2*(self.__h + self.__w)
    def is_inside(self,x,y):
        centre_x,centre_y=self.getCentre()
        if (centre_x - self.__w/2<=x and x>= centre_x + self.__w/2):
            if (centre_y - self.__h/2<=x and y>= centre_y + self.__h/2):
                return True
        return False
    def getType(self):
        return "Rectangle"
        
class Carre(Rectangle):
    def __init__(self, xc, yc, color, height):
         Rectangle.__init__(self,xc,yc,color,height,height)
    def getType(self):
        return "Carré"
    
    
class Cercle(Forme):
    def __init__(self, xc, yc, color, diameter):
        Forme.__init__(self, xc, yc, color)
        self.__d=diameter
    def getDiameter(self):
        return self.__d
    def setDiameter(self, diameter):
        self.__d = diameter
    def area(self):
        return 3.14159*((self.__d/2)**2)
    def perimeter(self):
        return 2*3.14159*(self.__d/2)
    def is_inside(self,x,y):
        if (x-self.__centrex)**2 + (y-self.__centrey)**2 <= self.__d:
           return True
        return False
    def getType(self):
        return "Cercle"
    
    
#%% Definition de la GUI

class ZoneAffichage(Canvas):
    def __init__(self,parent, w, h, c):
         Canvas.__init__(self, width = w, height = h, bg = c)

class FenPrincipale(Tk):
    def __init__(self):
         Tk.__init__(self)
         self.title('Affichage des cercles')
         self.__zoneAffichage = ZoneAffichage(self,480,320,'white')
         self.__zoneAffichage.bind('<Button-1>',self.cliquer)
         self.__zoneAffichage.pack(padx=5, pady=5)


         # Création d'un widget Button (bouton Afficher)
         self.__boutonEffacer = Button(self, text ='Afficher', command = self.afficher(dessin)).pack(side=LEFT,padx = 5,pady = 5)
         # Création d'un widget Button (bouton Effacer)
         self.__boutonEffacer = Button(self, text ='Effacer', command = self.effacer).pack(side=LEFT,padx = 5,pady = 5)
         # Création d'un widget Button (bouton Quitter)
         self.__boutonQuitter = Button(self, text ='Quitter', command = self.destroy).pack(side=LEFT,padx=5,pady=5)
         

    def cliquer(self,event):
         """ Gestion de l'événement Clic gauche sur la zone graphique """
         # position du pointeur de la souris
         x = event.x
         y = event.y
         if self.selection(d, x, y):
             form=d.getSelectedForm(x,y)
             if form.getType()=="Carré":
                 showinfo("Forme selectionée !","Vous avez cliqué sur un : " + str(form.getType()) + " de centre : " + str(form.getCentre()) + " et de coté : " + str(form.getHeight()))
             elif form.getype()=="Rectangle":
                 showinfo("Forme selectionée !","Vous avez cliqué sur un : " + str(form.getType()) + " de centre : " + str(form.getCentre()) + " et de hauteurs et largeurs : " + str(form.getHeight()) +"," + str(form.getWidth()))
             else:   
                 showinfo("Forme selectionée !","Vous avez cliqué sur un : " + str(form.getType()) + " de centre : " + str(form.getCentre()) + " et de diametre : " + str(form.getDiameter()))
     
    def effacer(self):
         """ Efface la zone graphique """
         self.__zoneAffichage.delete(ALL)
         
    def afficher(self,d):
        #on determine le type de forme à réaliser
        #on determine ses caracteristiques en fonction
        #on lui donne une couleur
        #on l'affiche
        for forme in d.getFormList():
            if forme.getType()=="Cercle":
                r=forme.getDiameter()/2
                x,y=forme.getCentre()
                self.__zoneAffichage.create_oval(x-r,y-r,x+r,y+r,outline='blue',fill='black')
                #On affiche un cercke
            elif forme.getType()=="Rectangle":
                #On affiche un rectangle
                x,y=forme.getCentre()
                a,b=forme.getWidth(),forme.getHeight()
                self.__zoneAffichage.create_rectangle(x-a/2, y-b/2, x+a/2, y+b/2, outline='blue', fill='red')
            else:
                #On affiche un carre
                x,y=forme.getCentre()
                a=forme.getHeight()
                self.__zoneAffichage.create_rectangle(x-a/2, y-a/2, x+a/2, y+a/2, outline='blue', fill='green')
                
        
        
    def selection(self,dessin,x,y):
        return dessin.is_cursor_on_form(x,y)
        
        
# Création de la fenêtre principale
dessin=Dessin()
carre=Carre(0,0,"black",20)
cercle=Cercle(30,50,"blue",30)
rectangle=Rectangle(80,80,"red",30,10)
dessin.addForm(carre)
dessin.addForm(rectangle)
dessin.addForm(cercle)

fen = FenPrincipale()
fen.mainloop()