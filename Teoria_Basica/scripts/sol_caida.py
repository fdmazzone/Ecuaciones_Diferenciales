from sympy import *
m,g,c,k,t=symbols('m,g,c,k,t')
v=m/c*g+k*exp(-c/m*t)
simplify(v.diff(t)+c/m*v)