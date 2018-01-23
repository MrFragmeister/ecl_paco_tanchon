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
        return self._h
    def setWidth(self, width):
        self.__w = width
    def setHeight(self, height):
        self.__h = height
    def area(self):
        return self.__h*self.__w
    def perimeter(self):
        return 2*(self.__h + self.__w)
        
class Carre(Rectangle):
    def __init__(self, xc, yc, color, height):
         Rectangle.__init__(self,xc,yc,color,height,height)
    
    
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
        
