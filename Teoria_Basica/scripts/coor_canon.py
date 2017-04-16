>>> from sympy import *
>>> x,y,epsilon=symbols('x,y,epsilon')
>>> T=Matrix([x/(1-epsilon*x),y/(1-epsilon*x)])
>>> xi=T[0].diff(epsilon).subs(epsilon,0)
>>> xi
x**2
>>> eta=T[1].diff(epsilon).subs(epsilon,0)
>>> eta/xi
y/x
>>> y=Function('y')(x)
>>> dsolve(y.diff(x)-y/x,y)
y(x) == C1*x
>>> Integral(1/xi,x).doit()
-1/x