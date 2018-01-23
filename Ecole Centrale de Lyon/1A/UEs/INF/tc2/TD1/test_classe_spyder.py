# -*- coding: utf-8 -*-
"""

Essais d'executions sur les classes

"""

from forme import *

rect1=Rectangle(0,1,"black",3,4)
print(rect1.getCentre())
print(rect1.getColor())
print(rect1.area())
rect1.setCentre(3,7)
rect1.setColor("red")
rect1.setHeight(5)
rect1.setWidth(6)
print(rect1.area())
print(rect1.perimeter())
print(rect1.getColor())