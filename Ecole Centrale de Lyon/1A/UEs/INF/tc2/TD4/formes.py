# -*- coding: utf-8 -*-
"""
Created on Mon Oct 16 10:17:35 2017

@author: Yves
"""
import numpy as np

class Dessin:
    
    def __init__(self):
        self.__liste_formes = []
        
    def ajout_forme(self, F):
        self.__liste_formes.append(F)
        
    def affiche(self, canevas, i):
        for k in range(i):
            self.__liste_formes[k].affiche(canevas)
    
    def liste(self):
        return self.__liste_formes
            
    

class Forme:
    
    def __init__(self, x, y, c):
        self.__centre_x = x
        self.__centre_y = y
        self.__couleur = c
        
    def get_centre_x(self):
        return self.__centre_x
    
    def get_centre_y(self):
        return self.__centre_y
    
    def get_couleur(self):
        return self.__couleur
    
    def set_centre_x(self,x):
        self.__centre_x = x
        
    def set_centre_y(self, y):
        self.__centre_y = y
    
    def set_couleur(self, c):
        self.__couleur = c
        
    
        
class Cercle(Forme):
    
    def __init__(self, x, y, c, r):
        Forme.__init__(self, x, y, c)
        self.__rayon = r
    
    def get_rayon(self):
        return self.__rayon
    
    def set_rayon(self, r):
        self.__rayon = r
    
    def get_perimetre(self):
        return 2*np.pi*self.__rayon
    
    def get_surface(self):
        return np.pi*(self.__rayon)**2
    
    def affiche(self, canevas):
        x = self.get_centre_x()
        y = self.get_centre_y()
        r = self.get_rayon()
        canevas.create_oval(x-r,y-r,x+r,y+r,outline='blue',fill='blue')
        
    def selection(self, x, y):
        a = self.get_centre_x()
        b = self.get_centre_y()
        r = self.__rayon
        return (x-a)^2+(y-b)^2 <= r^2
    
    def __str__(self):
        
        return 'Cercle de centre '+str((self.get_centre_x(), self.get_centre_y()))+'et de rayon '+str(self.get_rayon())
        
class Rectangle(Forme):
    
    def __init__(self, x, y, c, l, h):
        Forme.__init__(self, x , y, c)
        self.__longueur_x = l
        self.__longueur_y = h
    
    def get_lx(self):
        return self.__longueur_x
    
    def get_ly(self):
        return self.__longueur_y
    
    def set_lx(self, l):
        self.__longueur_x = l
    
    def set_ly(self, h):
        self.__longueur_y = h
        
    def get_perimetre(self):
        return 2*(self.__longueur_x + self.__longueur_y)
    
    def get_surface(self):
        return self.__longueur_x * self.__longueur_y
    
    def affiche(self, canevas):
        x = self.get_centre_x()
        y = self.get_centre_y()
        l = self.get_lx()
        h = self.get_ly()
        canevas.create_rectangle(x-l/2, y-h/2, x+l/2, y+h/2, outline='red', fill='red')
        
    def selection(self, x, y):
        a = self.get_centre_x()
        b = self.get_centre_y()
        lx = self.get_lx()
        ly = self.get_ly()
        return ((x-a) <=lx/2) and ((y-b) <= ly/2)
    
    def __str__(self):
        
        return 'Rectangle de centre '+str((self.get_centre_x(), self.get_centre_y()))+'et de longueur suivant x '+str(self.get_lx())+' et de longueur suivant y'+str(self.get_ly())
    
        

class Carre(Rectangle):
    
    def __init__(self, x, y, c, l):
        Rectangle.__init__(self, x, y, c, l, l)
        
    def get_l(self):
        return self.get_longueur_x()
    
    def affiche(self, canevas):
        x = self.get_centre_x()
        y = self.get_centre_y()
        l = self.get_lx()
        canevas.create_rectangle(x-l/2, y-l/2, x+l/2, y+l/2, outline='green', fill='green')
    
    def selection(self, x, y):
        a = self.get_centre_x()
        b = self.get_centre_y()
        lx = self.get_lx()
        return ((x-a) <= lx/2) and ((y-b) <= lx/2)
    
    def __str__(self):
        
        return 'Carré de centre '+str((self.get_centre_x(), self.get_centre_y()))+'et de côté '+str(self.get_lx())
        
