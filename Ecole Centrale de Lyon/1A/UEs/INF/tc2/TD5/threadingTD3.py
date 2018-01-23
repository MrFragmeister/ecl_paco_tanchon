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
import math

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
        self.__mass = (4/3)*math.pi*self.__radius
        self.__canCollide=False
        self.__colliderActive=False
        self.__pop=False
        self.__qttx, self.__qtty = getP(self)
        
    def deplacement(self, xlim, ylim, liste_balle):
        
        #---------On prepare les variables pour la nouvelle iteration----------
        self.__colliderActive=False
        currentObjectFutureX=self.__x + self.__horzspeed
        currentObjectFutureY=self.__y + self.__vertspeed
        futureXHitbox= self.__x + self.__horzspeed + self.__radius
        futureYHitbox= self.__y + self.__vertspeed + self.__radius
        self.__colliderActive=False
        
        #------------On s'occupe des collisions avec les murs------------------
        
        
        if futureXHitbox<xlim and futureXHitbox-2*self.__radius>0:
            if futureYHitbox<ylim and futureYHitbox-2*self.__radius>0:
                self.__x += self.__horzspeed
                self.__y += self.__vertspeed
                self.__can.move(self.__id,self.__horzspeed,self.__vertspeed)
            else:
                self.__x = currentObjectFutureX
                self.__y = currentObjectFutureY
                self.__can.move(self.__id,self.__horzspeed,self.__vertspeed)
                self.__vertspeed = - self.__vertspeed
        else:
            self.__x = currentObjectFutureX
            self.__y = currentObjectFutureY
            self.__can.move(self.__id,self.__horzspeed,self.__vertspeed)
            self.__horzspeed = - self.__horzspeed
        #----------------------------------------------------------------------
        
        
        
        
        #-----------On s'occupe des collisions entre les balles----------------       
        for balle in liste_balle:
            if colliderMatrix.getValue(self.__id,balle.getCanvasId())==None:
                balle_x, balle_y = balle.getPos()
                balle_vx, balle_vy = balle.getSpeed()
                balleObjectFutureX = balle_x + balle_vx
                balleObjectFutureY = balle_y + ballevy
                d= math.sqrt((balleObjectFutureX-currentObjectFutureX)**2+(balleObjectFutureY-currentObjectFutureY)**2)
                balle_r = balle.getRadius()
                if not self.__canCollide:
                    if 0.8*d<=r+self.__radius : self.__colliderActive=True
                elif balle.getColliderState():
                    DisTest=(d<=balle_r+self.__radius)
                    if DisTest and balle.getColor()==self.__color: 
                        self.__pop=True
                        balle.setPopperState(True)
                    elif DisTest:
                        ballePX, ballePY = balle.getP()
                        PX, PY = ballePX + self.__qttx, ballePY + self.__qtty
                        invx, invy = False, False
                        
                        if balle_vx*self.__horzspeed<0:
                            invx=True
                        if balle_vy*self.__vertspeed<0
                            invy=True
                            
                        balle.setSpeedQtt(PX/2,PY/2,invx,invy)
                        self.getSpeedQtt(PX/2,PY/2,invx,invy)
                        colliderMatrix.setValue(self.__id, balle.getCanvasId(),True)
                    elif 1.3*d<=balle_r+self.__radius:
                        self.__canCollide=False
                        balle.setColliderState=False
                        colliderMatrix.setValue(self.__id, balle.getCanvasId(),False)
                    else :
                        colliderMatrix.setValue(self.__id, balle.getCanvasId(),False)
                    
            if not self.__colliderActive:
                self.__canCollide=True
            
                
        
        
        """
        
        
        

        else :
            for e in liste_balle:
                x,y = e.getPos()
                d= math.sqrt((x-self.__x-self.__horzspeed)**2+(y-self.__y-self.__vertspeed)**2)
                r=e.getRadius()
                if d<=r+self.__radius and e.getColliderState() and not e.getColliderStatus():
                    self.__horzspeed = - self.__horzspeed
                    self.__vertspeed = - self.__vertspeed
                    if e.getColor()==self.__color: 
                        self.__pop=True
                        e.setPopperState(True)
                    self.__colliderActive=True
                if 1.4*d<=r+self.__radius:
                    self.__canCollide=False
            """
            
    def getPos(self):
        return self.__x, self.__y
    
    def getSpeed(self):
        return self.__horzspeed, self.__vertspeed
    
    def setSpeed(self, vx,vy):
        self.__horzspeed=vx
        self.__vertspeed=vy
        
    def setPos(self, x, y):
        if self.__alreadyMoved:
            return False
        else:
            self.__x = x
            self.__y = y
            return True
        
    def setSpeedQtt(self, px, py, inx, iny):
        if inx : 
            self.__horzspeed= int(-px/self.__mass)
        else :
            self.__horzspeed= int(px/self.__mass)
            
        if iny : 
            self.__vertspeed= int(-py/self.__mass)
        else :
            self.__horzspeed= int(py/self.__mass)

    
    def getRadius(self):
        return self.__radius
    
    def getColliderState(self):
        return self.__canCollide
    
    def getColliderStatus(self):
        return self.__colliderActive
    
    def setColliderStatus(self,boolean):
        self.__colliderActive=boolean
        
    def getCanvasId(self):
        return self.__id
    
    def getPopperState(self):
        return self.__pop
    
    def getColor(self):
        return self.__color
    
    def setPopperState(self,boolean):
        self.__pop=boolean
        
    def getP(self):
        return self.__mass*abs(self.__horzspeed),self.__mass*abs(self.__vertspeed)
    
    
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
            try : 
                self.__gen.start()
            except:
                pass
        
        
        
    """
    def refresh(self):
        for b in self.__listeBalle:
            b.deplacement(self.__w,self.__h)
        
        self.CreationBalle()
        
        if len(self.__listeBalle)>=20:
            self.__gen.stop()
        
        self.after(30, self.refresh )
    """       
        
    
    def refresh(self):
        i=0
        while i< len(self.__listeBalle):
            self.__listeBalle[i].deplacement(self.__w,self.__h,self.__listeBalle[:i]+self.__listeBalle[i+1:])
            posx,posy=self.__listeBalle[i].getPos()
            rad=self.__listeBalle[i].getRadius()
            try : 
                if posx-rad<-3 or posy-rad<-3 : 
                    self.__zoneAffichage.delete(self.__listeBalle[i].getCanvasId())
                    self.__listeBalle.remove(self.__listeBalle[i])
                if posx+rad>self.__w+3 or posy+rad>self.__h+3 : 
                    self.__zoneAffichage.delete(self.__listeBalle[i].getCanvasId())
                    self.__listeBalle.remove(self.__listeBalle[i])
                if self.__listeBalle[i].getPopperState():
                    self.__zoneAffichage.delete(self.__listeBalle[i].getCanvasId())
                    self.__listeBalle.remove(self.__listeBalle[i])
            except:
                pass
            
            i+=1
        
        self.CreationBalle()
        
        if len(self.__listeBalle)>=20:
            self.__gen.stop()
        elif not self.__gen.is_alive():
            self.__gen=""
            self.__gen=Generateur(self.__w,self.__h,self.__zoneAffichage)
            self.__gen.start()
        
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
            r=random()*70
            time.sleep(0.01)
            if r<1:
                rad=randint(10,80)
                xspeed=randint(-4,4)
                if xspeed==0 : xspeed=1
                yspeed=randint(-4,4)
                if yspeed==0 : yspeed=-1
                
                b=BalleMobile(rad,
                                randint(rad,self.__w-rad),
                                randint(rad,self.__h-rad),
                                xspeed, 
                                yspeed,
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