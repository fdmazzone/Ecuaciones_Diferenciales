# -*- coding: utf-8 -*-
"""
Created on Wed Apr 26 15:16:27 2017

@author: fernando

ATENCION IMPORTAR
from sympy import *
"""
xn=symbols('\hat{x}')
yn=Function('\hat{y}')(xn)
zn=dsolve(yn.diff()-(yn**2-xn**2)/2/xn/yn,yn)



