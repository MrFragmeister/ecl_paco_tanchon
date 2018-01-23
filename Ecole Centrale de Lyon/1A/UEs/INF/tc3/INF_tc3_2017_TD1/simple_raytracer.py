# module raytracer

from PIL import Image
import numpy as np
import time
import numbers
import functools
import types


###############################################################################
#
# Vecteur 3D compatible numpy
#
###############################################################################

class vec3():
    def __init__(self, x, y, z):
        (self.x, self.y, self.z) = (x, y, z)
        
    def __mul__(self, other):
        return self.__class__(self.x * other, self.y * other, self.z * other)
    
    def __add__(self, other):
        return self.__class__(self.x + other.x, self.y + other.y, self.z + other.z)
    
    def __sub__(self, other):
        return self.__class__(self.x - other.x, self.y - other.y, self.z - other.z)
    
    def dot(self, other):
        return (self.x * other.x) + (self.y * other.y) + (self.z * other.z)

    def crossprod(self, other):
        return self.__class__(
            self.y * other.z - self.z * other.y,
            self.z * other.x - self.x * other.z,
            self.x * other.y - self.y * other.x )

    def abs2(self):
        return self.dot(self)
    
    def __abs__(self):
        return np.sqrt(self.dot(self))
        
    def __str__(self):
        return "{}({}, {}, {})".format(self.__class__.__name__,*self.components())
    
    def norm(self):
        mag = abs(self)
        return self * (1.0 / np.where(mag == 0, 1, mag))
    
    def rotate_x(self,a):
        return self.__class__(self.x, self.y * np.cos(a) - self.z * np.sin(a), self.y * np.sin(a) + self.z * np.cos(a))

    def rotate_y(self,a):
        return self.__class__(self.x * np.cos(a) + self.z * np.sin(a), self.y, - self.x * np.sin(a) + self.z * np.cos(a))

    def rotate_z(self,a):
        return self.__class__(self.x * np.cos(a) - self.y * np.sin(a), self.x * np.sin(a) + self.y * np.cos(a), self.z)
    
    def components(self):
        return (self.x, self.y, self.z)
    
    def extract(self, cond):
        return self.__class__(
            self.extract_component(cond, self.x),
            self.extract_component(cond, self.y),
            self.extract_component(cond, self.z))

    def extract_component(self,cond, x):
        if isinstance(x, numbers.Number):
            return x
        else:
            return np.extract(cond, x)

    def place(self, cond):
        r = self.__class__(np.zeros(cond.shape), np.zeros(cond.shape), np.zeros(cond.shape))
        np.place(r.x, cond, self.x)
        np.place(r.y, cond, self.y)
        np.place(r.z, cond, self.z)
        return r

    def where(pred, v1, v2):
        return vec3(np.where(pred,v1.x,v2.x), np.where(pred,v1.y,v2.y), np.where(pred, v1.z,v2.z))


###############################################################################
#
# Couleur rgb
#
###############################################################################

class rgb(vec3):
    def mul(self, other):
        return rgb(self.x * other.x, self.y * other.y, self.z * other.z)


###############################################################################
#
# Carré de la valeur absolue
#
###############################################################################

abs2 = vec3.abs2


###############################################################################
#
# Source de lumière
#
###############################################################################

class LightSource():
    def __init__(self,position,color):
        self.position = position
        self.color = color


###############################################################################
#
# Description de la scène
#
###############################################################################

class Scene():
    def __init__(self,name,ambient=None,max_bounce=3,faraway=1.0e39):
        self.name = name
        self.ambient = ambient if ambient else rgb(0,0,0)
        self.max_bounce = max_bounce
        self.faraway = faraway
        self._sources = []
        self._objects = []
        self._items = []
    
    def sources(self,sources):
        self._sources = sources
        return self
    
    def objects(self,objects):
        self._objects = objects
        for o in self._objects:
            if isinstance(o,ComposedArtifact):
                self._items += o
            else :
                self._items.append(o)
        return self
    
    def append(self,*args):
        for i in range(len(args)):
            o = args[i]
            if isinstance(o, ComposedArtifact):
                self._objects.append(o)
                self._items += o
            elif isinstance(o, Artifact):
                self._objects.append(o)
                self._items.append(o)
            elif isinstance(o, LightSource):
                self._sources.append(o)
            else:
                print("WARNING : Could not append, unknown object class {}".format(o.__class__.__name__))
        return self
    
    def initialize(self, w = 400, h = 300, E = None):
        if not hasattr(self,'camera'):
            self.camera = E if E else vec3(0., 0.1, -10.)
        if not hasattr(self,'w'):
            self.w = w
        if not hasattr(self,'h'):
            self.h = h

        r = float(self.w) / self.h
        x = np.tile(np.linspace(-1., 1., self.w), self.h)
        y = np.repeat(np.linspace(1./r, -1./r, self.h), self.w)
        self.Q = vec3(x, y, 0)

        if len(self._sources) == 0:
            self.append(LightSource(vec3(0,10,-5),rgb(1,1,1)))

        return self
    
    def trace (self,silent = False):
        t0 = time.perf_counter()
        self.data = self.raytrace(self.camera, (self.Q - self.camera).norm(), 0)
        self.ptime = time.perf_counter() - t0
        if ( not silent ):
            print("{} took {:.3f}s".format(self.name,self.ptime))
        return self

    def save_image(self):
        if type(self.data.x) == int:
            all_black = [0]*(self.h*self.w)
            self.data = rgb(all_black,all_black,all_black)

        self.rgb_img = [
            Image.fromarray((255 * np.clip(c,0,1).reshape((self.h,self.w))).astype(np.uint8), "L")
            for c in self.data.components() ]
        self.filename = "{}.png".format(self.name) 
        Image.merge("RGB", self.rgb_img).save(self.filename)
        return self
    
    # O : origine du rayon
    # D : direction du rayon
    # bounce : nombre de reflets, 0 pour le rayon primaire
    def raytrace(self, O, D, bounce):
        
        distances = [obj.intersect(O, D, self.faraway) for obj in self._items]
        nearest = functools.reduce(np.minimum, distances)
        color = rgb(0, 0, 0)

        for (obj, dist) in zip(self._items, distances):
            # points non situés à l'infini, et non cachés par un autre objet
            hit = (nearest != self.faraway) & (dist == nearest)

            if np.any(hit):

                # on extrait les points vus
                dc = vec3.extract_component(None,hit, dist)
                Oc = O.extract(hit)
                Dc = D.extract(hit)
            
                # on calcule la couleur des points vus
                cc = obj.light(Oc, Dc, dc, self, bounce)
            
                # on replace les points calculés dans l'ensemble des points 
                color += cc.place(hit)
        return color


###############################################################################
#
# Artifact est la classe mère de tous les objets
#   Fournit la méthode de calcul de la couleur en point donné
#
###############################################################################

class Artifact(): 
    def __init__(self, diffuse = 0.5, ambient = 1.0, specular = 0.5, phong = 70, mirror = 0.5):
        self._diffuse = rgb(*[diffuse]*3) if isinstance(diffuse, numbers.Number) else diffuse
        self._ambient = rgb(*[ambient]*3) if isinstance(ambient, numbers.Number) else ambient
        self._specular = rgb(*[specular]*3) if isinstance(specular, numbers.Number) else specular
        self._phong = phong
        self._mirror = rgb(*[mirror]*3) if isinstance(mirror, numbers.Number) else mirror

    def diffuse(self, M):
        return self._diffuse

    def ambient(self, M):
        return self._ambient

    def specular(self, M):
        return self._specular

    def phong(self, M):
        return self._phong

    def mirror(self, M):
        return self._mirror

    # light : renvoie la couleur en un point donné d'un objet
    #   O : Origine du rayon incident
    #   D : Direction normalisée du rayon incident
    #   d : distance depuis l'origine au point considéré
    #   scene : liste des objets de la scène
    #   bounce : utilisé pour les réflections, vaut 0 pour un rayon primaire.
    def light(self, O, D, d, scene, bounce):
        M = (O + D * d)                 # point sur l'objet
        N = self.normal(M)              # normale au point M
        toO = (scene.camera - M).norm() # vecteur depuis l'observateur vers le point M
        nudged = M + N * .0001          # point légèrement éloigné sur la normale en M pour éviter de se voir soi-même

        # Eclairage ambiant
        color = scene.ambient.mul(self.ambient(M))

        # boucle sur les sources de lumière
        for light in scene._sources:
            toL = (light.position - M).norm()        # direction sous laquelle M voit la source de lumière
            distL = abs(light.position - M)          # distance à laquelle M voit la source de lumière
            
            # M voit-il la source de lumière ?
            light_distances = [obj.intersect(nudged, toL, scene.faraway) for obj in scene._items]
            light_nearest = functools.reduce(np.minimum, light_distances)
            seelight = distL < light_nearest # FIXED

            # Lambert (réflexion diffuse)
            lambert = np.maximum(N.dot(toL), 0)
            color += self.diffuse(M).mul(light.color) * lambert * seelight

            # Blinn-Phong (réflexion spéculaire)
            phong = np.power(np.clip(N.dot((toL + toO).norm()), 0, 1), self.phong(M))
            color += self.specular(M).mul(light.color) * phong * seelight

        # Réflexions
        if bounce < scene.max_bounce:
            rayD = (D - N * 2 * D.dot(N)).norm()
            color += scene.raytrace(nudged, rayD, bounce + 1).mul(self.mirror(M))
        
        return color

    @classmethod
    def kw(cls):
        return ['diffuse', 'ambient', 'specular', 'phong', 'mirror']

    def getattr(self,k):
        return getattr(self,'_'+k) if k in self.kw() else Serializable.getattr(self,k)

    def setattr(self,k,v):
        return setattr(self,'_'+k,v) if k in self.kw() else Serializable.setattr(self,k,v)


###############################################################################
#
# ComposedArtifact est la classe mère des objets composés
#   de plusieurs sous-objets (cube, cylindre, cône tronqué)
#
###############################################################################

class ComposedArtifact(Artifact):
    def __init__(self, l, *args, **kwargs):
        Artifact.__init__(self, *args, **kwargs)
        for k in self.kw():
            attrval = self.getattr(k)
            if not hasattr(attrval,'__getitem__'):
                self.setattr(k,[attrval]*l)
            elif len(attrval) < l:
                self.setattr(k, list(attrval) + [attrval[-1]]*(l-len(attrval)))
        self._subparts = [None]*l
        self.len = l

    def __iter__(self):
        return iter(self._subparts)

    def __len__(self):
        return len(self._subparts)

    def __setitem__(self, key, item):
        self._subparts[key] = item

    def __getitem__(self, key):
        return self._subparts[key]

    def kwargs(self, index):
        return {k:self.getattr(k)[index] for k in self.kw()}


###############################################################################
#
# Objets bicolores
#
###############################################################################

class Bicolor(Artifact):
    def __init__(self):
        for k in Artifact.kw():
            attrval = self.getattr(k)
            if not hasattr(attrval,'__getitem__'):
                self.setattr(k,[attrval]*2)

    def area_rgb(self,k,M):
        _area = self.selector(M)
        attrval = self.getattr(k)
        return rgb(
            np.where(_area,attrval[0].x,attrval[1].x),
            np.where(_area,attrval[0].y,attrval[1].y),
            np.where(_area,attrval[0].z,attrval[1].z))

    def area_value(self,k,M):
        _area = self.selector(M)
        attrval = self.getattr(k)
        return np.where(_area,attrval[0],attrval[1])

    # Modification de la fonction de sélection
    def set_selector(self,func):
        self.selector = types.MethodType(func, self)
        return self

    def diffuse(self,M):
        return self.area_rgb('diffuse',M)

    def ambient(self, M):
        return self.area_rgb('ambient',M)

    def specular(self, M):
        return self.area_rgb('specular',M)

    def phong(self, M):
        return self.area_value('phong',M)

    def mirror(self, M):
        return self.area_rgb('mirror',M)

class Checkered(Bicolor):
    def __init__(self):
       Bicolor.__init__(self)

    # Fonction de sélection par défaut
    def selector(self,M):
        return ((M.x * 2 - 1000.5).astype(int) % 2) == ((M.z * 0.5 + 1000.5).astype(int) % 2)


###############################################################################
#
# Sphères
#
###############################################################################

class Sphere(Artifact):
    def __init__(self, center, radius, *args, **kwargs):
        Artifact.__init__(self, *args, **kwargs)
        self.center = center
        self.radius = radius
    
    def normal(self,M):
        return (M - self.center)*(1./self.radius)
    
    def intersect(self, O, D, faraway):
        b = 2 * D.dot(O - self.center)
        c = abs2(O-self.center) - (self.radius * self.radius)
        disc = (b ** 2) - (4 * c)
        sq = np.sqrt(np.maximum(0, disc))
        h0 = (-b - sq) / 2
        h1 = (-b + sq) / 2
        h = np.where((h0 > 0) & (h0 < h1), h0, h1)
        pred = (disc > 0) & (h > 0)
        return np.where(pred, h, faraway)


class CheckeredSphere(Checkered, Sphere):
    def __init__(self, C, r, *args, **kwargs):
        Sphere.__init__(self, C, r, *args, **kwargs)
        Checkered.__init__(self)


###############################################################################
#
# Objets plans
#
###############################################################################

class Plane(Artifact):
    def __init__(self, P, N, *args, **kwargs):
        Artifact.__init__(self, *args, **kwargs)
        self.P = P
        self.N = N.norm()
    
    def normal(self,M):
        return self.N
    
    def intersect(self, O, D, faraway):
        k = np.where( D.dot(self.N) == 0, faraway, (self.P - O).dot(self.N) / D.dot(self.N))
        return np.where( k < 0, faraway, k)


class CheckeredPlane(Checkered, Plane):
    def __init__(self, P, N, *args, **kwargs):
        Plane.__init__(self, P, N, *args, **kwargs)
        Checkered.__init__(self)

class Polygon(Plane):
    def __init__(self, points, P, U, V, ns, *args, **kwargs):
        N = U.crossprod(V).norm() * ns  # normale
        Plane.__init__(self,P, N, *args, **kwargs)
        self.vertices = points # liste de points 2D
        self.U = U             # vec3 vecteur des abscisess
        self.V = V             # vec3 vecteur des ordonnées
        self.ns = ns           # orientation de la normale
        self.initialized = False

    # précalcul des coefficients nécessaires pour chacun des segments
    def initialize(self,faraway):
        self.k = [];
        for i in range(len(self.vertices)):
            p1 = self.vertices[i]
            p2 = self.vertices[i+1] if (i+1 < len(self.vertices)) else self.vertices[0]
            k1 = 0 if p1[1] == p2[1] else (p2[0] - p1[0])/(p2[1] - p1[1])
            k2 = -faraway if p1[1] == p2[1] else (p2[0]*p1[1]-p1[0]*p2[1])/(p2[1] - p1[1])
            k3 = min(p1[1],p2[1])
            k4 = max(p1[1],p2[1])
            self.k.append((k1,k2,k3,k4))
        self.initialized = True
        return self
    
    def intersect(self, O, D, faraway):
        if not self.initialized:
            self.initialize(faraway)
        d = Plane.intersect(self,O, D, faraway)
        M = (O + D * d) - self.P
        mu = M.dot(self.U)
        mv = M.dot(self.V)
        count = np.zeros_like(mu)
        for i in range(len(self.k)):
            ki = self.k[i]
            count = count + np.where( (mv > ki[2]) * (mv < ki[3]) * (mv*ki[0] - ki[1] > mu),1,0)
        return np.where( (d < faraway) * (count%2 == 1), d, faraway)


class Disk(Plane):
    def __init__(self, C, N, R, *args, **kwargs):
        Plane.__init__(self, C, N, *args, **kwargs)
        self.radius = R
        
    def intersect(self, O, D, faraway):
        d = Plane.intersect(self, O, D, faraway)
        r = abs2((O + D * d) - self.P)
        pred = r < self.radius * self.radius
        return np.where(pred, d, faraway)


###############################################################################
#
# Cylindres
#
###############################################################################

class Pipe(Artifact):
    def __init__(self, P, V, r, *args, **kwargs):
        V = V.norm()
        Artifact.__init__(self, *args, **kwargs)
        self.P = P
        self.V = V
        self.r = r

    def intersect(self, O, D, faraway):
        W = (O - self.P).crossprod(self.V)
        c = abs2(W) - (self.r * self.r)
        T = D.crossprod(self.V)
        a = abs2(T)
        b = 2 * T.dot(W)
        delta = (b ** 2) - (a * 4 * c)
        sq = np.sqrt(np.maximum(0, delta))
        p0 = (-b - sq) / a / 2
        p1 = (-b + sq) / a / 2
        p = np.where((p0 > 0) & (p0 < p1), p0, p1)
        pred = (delta > 0) & (p > 0)
        return np.where(pred, p, faraway)
    
    def normal(self,M):
        return (self.P - M).crossprod(self.V).crossprod(self.V).norm()


class PipeSection(Pipe):
    def __init__(self, P, V, r, h, *args, **kwargs):
        Pipe.__init__(self, P, V, r, *args, **kwargs)
        self.h = h

    def intersect(self, O, D, faraway):
        d = Pipe.intersect(self, O, D, faraway)
        M = O + D * d
        h = (M - self.P).dot(self.V)
        pred = (h > 0) & (h < self.h)
        return np.where(pred, d, faraway)


class Cylinder(ComposedArtifact):
    def __init__(self, P, V, r, h, *args, **kwargs):
        V = V.norm()
        ComposedArtifact.__init__(self, 3, *args, **kwargs)
        self[0:3] = [
            PipeSection(P, V, r, h, **self.kwargs(0)),
            Disk(P, V * -1, r,      **self.kwargs(1)),
            Disk(P + V * h, V, r,   **self.kwargs(2))
        ]


###############################################################################
#
# Polyèdres
#
###############################################################################

class Cube(ComposedArtifact):
    def __init__(self, C, U, V, l, *args, **kwargs):
        ComposedArtifact.__init__(self, 6, *args, **kwargs)
        W = U.crossprod(V)
        coords = [(0,0),(0,l),(l,l),(l,0)]
        l2 = l / 2
        self[0:6] = [
            Polygon(coords, C-U*l2-V*l2-W*l2, U, V, -1, **self.kwargs(0)),
            Polygon(coords, C-U*l2-V*l2+W*l2, U, V, +1, **self.kwargs(1)),
            Polygon(coords, C-U*l2-V*l2-W*l2, W, V, +1, **self.kwargs(2)),
            Polygon(coords, C+U*l2-V*l2-W*l2, W, V, -1, **self.kwargs(3)),
            Polygon(coords, C-U*l2-V*l2-W*l2, U, W, +1, **self.kwargs(4)),
            Polygon(coords, C-U*l2+V*l2-W*l2, U, W, -1, **self.kwargs(5))
        ]
        self.center = C
        self.U = U
        self.V = V


###############################################################################
#
# Cônes
#
###############################################################################

class Cone(Artifact):
    def __init__(self, P, V, k, *args, **kwargs):
        Artifact.__init__(self, *args, **kwargs)
        self.P = P
        self.V = V.norm()
        self.k = k

    def intersect(self, O, D, faraway):
        PO = O - self.P
        W = PO.crossprod(self.V)
        w = PO.dot(self.V)
        k2 = self.k * self.k
        c = abs2(W) - k2 * w * w
        T = D.crossprod(self.V)
        t = D.dot(self.V)
        b = 2 * (T.dot(W) - k2 * t * w)
        a = abs2(T) - k2 * t * t
        delta = (b ** 2) - (a * 4 * c)
        sq = np.sqrt(np.maximum(0, delta))
        p0 = (-b - sq) / a / 2
        p1 = (-b + sq) / a / 2
        p = np.where((p0 > 0) & (p0 < p1), p0, p1)
        pred = (delta > 0) & (p > 0)
        return np.where(pred, p, faraway)
    
    def normal(self,M):
        PM = M - self.P
        h = PM.dot(self.V)
        vect = vec3.where( h > 0, PM * -1, PM)
        return PM.crossprod(self.V).crossprod(vect).norm()


class ConeTrunk(Cone):
    def __init__(self, P, V, k, h, *args, **kwargs):
        if hasattr(h, '__getitem__') :
            h1, h2 = min(h), max(h)
        else:
            h1, h2 = min(0, h), max(0,h)      
        Cone.__init__(self, P, V, k, *args, **kwargs)
        self.h1 = h1
        self.h2 = h2

    # O : source du rayon
    # D : direction du rayon
    def intersect(self, O, D, faraway):
        d = Cone.intersect(self, O, D, faraway)
        M = O + D * d
        h = (M - self.P).dot(self.V)
        pred = (h > self.h1) & (h < self.h2)
        return np.where(pred, d, faraway)


class BasedConeTrunk(ComposedArtifact):
    def __init__(self, P, V, k, h, *args, **kwargs):
        ComposedArtifact.__init__(self, 3, *args, **kwargs)

        self[0] = cone = ConeTrunk(P, V, k, h, **self.kwargs(0))
        print('cone.h1 {}, cone.h2 {}'.format(cone.h1,cone.h2))

        # si on a un sommet de rayon nul, on ignore le disque correspondant
        n = 0
        if not cone.h1 == 0:
            n =  n + 1
            self[n] = Disk(P+V*cone.h1, V*-1, abs2(k*cone.h1), **self.kwargs(n))
        if not cone.h2 == 0:
            n =  n + 1
            self[n] = Disk(P+V*cone.h2, V, abs2(k*cone.h2), **self.kwargs(n))
        if n < 2:
            self.len = n+1
            self._subparts = self._subparts[0:self.len]
            for k in Artifact.kw():
                self.setattr(k,self.getattr(k)[0:self.len])

