# -*- coding: utf-8 -*-
"""
Created on Mon Dec 18 09:06:05 2017

@author: TIPHAINE
"""

from raytracer import *

#______________________________________________________________________________

class Pyramid(ComposedArtifact):

    # base est un Polygone
    # S est un vec3 correspondant au sommet
    def __init__(self, base, S, *args, **kwargs):

        # La pyramide est composée de n+1 facettes
        npoints = len(base.vertices)
        ComposedArtifact.__init__(self, npoints+1, *args, **kwargs)

        # La première facette de la pyramide est sa base
        self[0] = base
        
        # Si la base est un Polygon2 on dispose déjà des coordonnées 3D
        # des sommets, sinon on les calcule
        vertices3D = base.vertices3D if hasattr(base,'vertices3D') else \
          [base.P + base.U * v[0] + base.V * v[1] for v in base.vertices]

        # Chacune des facettes s'appuie sur le sommet et un segment de la base
        for n in range(npoints):
            P1 = S
            P2 = (vertices3D[n-1] if n > 0 else vertices3D[npoints-1])
            P3 = vertices3D[n]
            self[n+1] = Polygon2((P1,P2,P3), -base.ns, **self.kwargs(n))

        self.vertices3D = [*vertices3D, S]
        self.base = base
        self.S = S

    @classmethod
    def keys(cls):
        return ['base', 'S'] + Artifact.keys()

    def getattr(self,k):
        return getattr(self,k) if k in self.keys() else ComposedArtifact.getattr(self,k)
    
#==============================================================================
    #Maison
#==============================================================================   

class Maison (ComposedArtifact):

    #composé d'un pavé ou cube d'une pyramide
    #S est le vecteur qui correspond au sommet du toit(pyramide)
    
#version1    
    
#    def __init__ (self, C, S, l , U, V, *args, **kwargs):
#        
#        ComposedArtifact.__init__(self, 10, *args, **kwargs)
#        
#        W = U.crossprod(V)
#        coords = [(0,0),(0,l),(l,l),(l,0)]
#        l2 = l / 2
#        self[0:6] = [
#            Polygon(coords, C-U*l2-V*l2-W*l2, U, V, -1, **self.kwargs(0)),
#            Polygon(coords, C-U*l2-V*l2+W*l2, U, V, +1, **self.kwargs(1)),
#            Polygon(coords, C-U*l2-V*l2-W*l2, W, V, +1, **self.kwargs(2)),
#            Polygon(coords, C+U*l2-V*l2-W*l2, W, V, -1, **self.kwargs(3)),
#            Polygon(coords, C-U*l2-V*l2-W*l2, U, W, +1, **self.kwargs(4)),
#            Polygon(coords, C-U*l2+V*l2-W*l2, U, W, -1, **self.kwargs(5))
#        ]
#        
#        base = Polygon(coords, C-U*l2-V*l2+W*l2, U, V, +1, **self.kwargs(1))
#        
#        vertices3D = base.vertices3D if hasattr(base,'vertices3D') else \
#          [base.P + base.U * v[0] + base.V * v[1] for v in base.vertices]
#
#        # Chacune des facettes s'appuie sur le sommet et un segment de la base
#        for n in range(4):
#            P1 = S
#            P2 = (vertices3D[n-1] if n > 0 else vertices3D[4-1])
#            P3 = vertices3D[n]
#            self[n+1+5] = Polygon2((P1,P2,P3), -base.ns, **self.kwargs(n+5))

#version2

    def __init__ (self, C, S, l, U,V, *args, **kwargs) :
        
        ComposedArtifact.__init__(self, 2, *args, **kwargs)
        
        Cube.__init__(self, C, U, V, l,*args, **kwargs)
        
        base = self[1]
        
        Pyramid.__init__(self, base, S,*args, **kwargs)
        
        self.C  = C
        self.S = S
        self.largeur = l
        self.U = U
        self.V = V
     
    @classmethod
    def keys(cls):
        return ['centre cube', 'Sommet pyramide', 'largeur', 'abscisse', 'ordonnée'] + Artifact.keys()

    def getattr(self,k):
        return getattr(self,k) if k in self.keys() else ComposedArtifact.getattr(self,k)   
        
        
        
    
    
#==============================================================================
    #Arbre(cylindre+sphère)
#==============================================================================

class Arbre_chene(ComposedArtifact):
    
    def __init__(self, P, V, r, C, *args, **kwargs):
        
        ComposedArtifact.__init__(self, 2, *args, **kwargs)
        Cylinder.__init__(self, P, V, r, 8*r, *args, **kwargs)
        
        rs = 4*r
        
        self[1] = Sphere(C, rs, **self.kwargs(1))
        
        self.P = P
        self.V = V
        self.r = r
        self.h = 8*r
        self.rs = rs
        self.C = C
        
    
    @classmethod
    def keys(cls):
        return ['position', 'axe', 'rayon cylindre', 'hauteur', 'rayon sphère', 'centre sphère'] + Artifact.keys()

    def getattr(self,k):
        return getattr(self,k) if k in self.keys() else ComposedArtifact.getattr(self,k)   
#==============================================================================
    #Arbre(cylindre+cone)
#==============================================================================
class Arbre_sapin(ComposedArtifact):
    
    def __init__(self, Pc, V, r, P, *args, **kwargs):
        
        ComposedArtifact.__init__(self, 2, *args, **kwargs)
        Cylinder.__init__(self, Pc, V, r, 6*r, *args, **kwargs)
        
        self[1] = ConeTrunk(P, V.__mul__(-1), 7*r, 8*r,**self.kwargs(1))
        
        self.r= r
        self.h = 6*r
        self.he = 8*r
        self.k = 7*r
        self.Pc = Pc
        self.P = P
        self.V = V
        
        
    @classmethod
    def keys(cls):
        return ['rayon cylindre', 'hauteur', 'ends', 'position cylindre', 'position cone', 'axe'] + Artifact.keys()

    def getattr(self,k):
        return getattr(self,k) if k in self.keys() else ComposedArtifact.getattr(self,k) 
        

#==============================================================================
    
#==============================================================================    
scene = Scene('test', 0, 1)
scene.append(LightSource(vec3(-0.9, 1.5, -0.5), 1))

#P = vec3(0,0,0.5)
#r = 0.05
#C = vec3(0,8*r - 0.05,0.5)
#scene.append(Arbre_chene(P, vec3(0, 1, 0), r, C, diffuse = rgb(0.4, 0.5, 0.1), mirror = 0, specular = 0))
#vertices = [vec3(-0.5,0,0), vec3(0.5,0,0), vec3(0.5,0,1), vec3(-0.5,0,1)]
#base = Polygon2(vertices, 1, diffuse=rgb(0.5,0.5,0), mirror=0, specular=0)

P1 =vec3(0, 0, 0.5)
P2 =vec3(0, 0.5, 0.5)
scene.append(Arbre_sapin(P1, vec3(0, 1, 0), 0.05, P2, diffuse = rgb(0.4, 0.5, 0.1), mirror = 0, specular = 0))
#scene.append(ConeTrunk(P2, vec3(0, -1, 0), 0.2,0.5, diffuse = rgb(0.4, 0.5, 0.1), mirror = 0, specular = 0))

scene.append(Plane(vec3(0,-0.1,0), vec3(0,1,0)))
#scene.append(Cube(C, vec3(0, 0, 1), vec3(1, 0, 0), 0.5, diffuse=rgb(0.5,0.5,0), mirror=0, specular=0))



#scene.append(Sphere(vec3(0,5,10), 5))

scene.initialize(E = vec3(0, 2, -10)).trace().save_image()
pass

#==============================================================================
    
#==============================================================================

#scene = Scene('pyramid', 0, 1)
#scene.append(LightSource(vec3(-1., 2, 0), 1))
#
#S = vec3(0,0.5,0.5)
#vertices = [vec3(-0.5,0,0), vec3(0.5,0,0), vec3(0.5,0,1), vec3(-0.5,0,1)]
#base = Polygon2(vertices, 1, diffuse=rgb(0.5,0.5,0), mirror=0, specular=0)
#
##scene.append(Plane(vec3(0,-0.1,0), vec3(0,1,0)))
#scene.append(Pyramid(base, S, diffuse=rgb(0.9,0.5,0.1), mirror=0, specular=0))
#
#scene.initialize(E=vec3(0,2,-10)).trace().save_image()
#pass