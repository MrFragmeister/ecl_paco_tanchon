# -*- coding: utf-8 -*-
"""
Created on Mon Dec  4 08:13:36 2017

@author: Paco TANCHON
"""
#%% Imports
import queue
from random import *
from threading import *
import time
from tkinter import *


#%% Classe BalleMobile

class BalleMobile:
    def __init__(self, radius, pos_x, pos_y, horizontal_velocity, vertical_velocity, color, relative_canvas_object):
        self.__radius = radius
        self.__x = pos_x
        self.__y = pos_y
        self.__color = color
        self.__horzspeed = horizontal_velocity
        self.__vertspeed = vertical_velocity
        self.__can=relative_canvas_object
        self.__id = self.__can.create_oval(self.__x - self.__radius,self.__y - self.__radius,self.__x + self.__radius,self.__y + self.__radius, outline=self.__color)
        
        
    def deplacement(self, xlim, ylim):
        futureXHitbox= self.__x + self.__horzspeed + self.__radius
        futureYHitbox= self.__y + self.__vertspeed + self.__radius
        if futureXHitbox<xlim and futureXHitbox-2*self.__radius>0:
            if futureYHitbox<ylim and futureYHitbox-2*self.__radius>0:
                self.__x += self.__horzspeed
                self.__y += self.__vertspeed
                self.__can.move(self.__id,self.__horzspeed,self.__vertspeed)
            else:
                self.__x = futureXHitbox-self.__radius
                self.__y = futureYHitbox-self.__radius
                self.__can.move(self.__id,self.__horzspeed,self.__vertspeed)
                self.__vertspeed = - self.__vertspeed
        else:
            self.__x = futureXHitbox-self.__radius
            self.__y = futureYHitbox-self.__radius
            self.__can.move(self.__id,self.__horzspeed,self.__vertspeed)
            self.__horzspeed = - self.__horzspeed
        
            
    def getPos(self):
        return self.__x, self.__y

#%% Classe FenPrincipale

class FenPrincipale(Tk):
    
    def __init__(self):
        Tk.__init__(self)
        self.title('Balles Mobiles')
        self.__w=1280
        self.__h=720
        self.__zoneAffichage = ZoneAffichage(self,self.__w,self.__h,'black')
        self.__zoneAffichage.pack(padx=5, pady=5)
        
        self.__listeBalle=[]
        self.__gen=Generateur(self.__w,self.__h,self.__zoneAffichage)
        self.__gen.start()
        self.refresh()
         
    def CreationBalle(self):
        try:
            newBalle=file.get(block=False)
            self.__listeBalle.append(newBalle)
        except queue.Empty:
            pass
        
        
        
    
    def refresh(self):
        for b in self.__listeBalle:
            b.deplacement(self.__w,self.__h)
        
        self.CreationBalle()
        
        if len(self.__listeBalle)>=20:
            self.__gen.stop()
        
        self.after(30, self.refresh )
            
        
        
        
        
        
#%% Classe Zone d'affichage

class ZoneAffichage(Canvas):
    def __init__(self,parent, w, h, c):
         Canvas.__init__(self, width = w, height = h, bg = c)
         


#%% Classe Generateur

class Generateur(Thread):
    def __init__(self,w,h,relative_canvas_object):
        Thread.__init__(self)
        self.__w=w
        self.__h=h
        self.__isActive=True
        self.__colorlist=["white","blue","green","red"]
        self.__canvas=relative_canvas_object
        
    def run(self):
        while self.__isActive:
            r=random()*100
            time.sleep(0.01)
            if r<1:
                rad=randint(10,80)
                b=BalleMobile(rad,
                                randint(rad,self.__w-rad),
                                randint(rad,self.__h-rad),
                                randint(-4,4)+1, 
                                randint(-4,4)+1,
                                self.__colorlist[randint(0,len(self.__colorlist)-1)],
                                self.__canvas)
                file.put(b)
            else : 
                pass
            
    def stop(self):
        self.__isActive=False
        

file=queue.Queue(5000)
fen = FenPrincipale()
fen.mainloop()