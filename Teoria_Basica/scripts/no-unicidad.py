from sympy import *
x,y=symbols('x,y')
Rango=range(-10,11)
C=[k/6.0 for k in Rango] 
p=plot((x/3+C[0])**3,(x,-5,5),show=False,xlim=(-5,5),\
ylim=(-2,2),aspect_ratio=(1,1))
for pend in C[1:]:
    p1=plot((x/3+pend)**3,(x,-5,5),show=False,xlim=(-5,5),\
ylim=(-2,2),aspect_ratio=(1,1))
    p.append(p1[0])
p.show()