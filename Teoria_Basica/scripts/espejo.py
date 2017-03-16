"""
Solución problema espejo
"""

from sympy import *
from sympy.diffgeom.rn import R2
eq=(-sqrt(R2.x**2+R2.y**2)+R2.x)*R2.dx+R2.y*R2.dy
M=eq.rcall(R2.e_theta)
N=eq.rcall(R2.e_r)
x,y,theta=symbols('x,y,theta')
r=symbols('r',positive=True)
subst={R2.x:r*cos(theta),R2.y:r*sin(theta),R2.theta:theta,R2.r:r}
M=M.subs(subst).simplify()
N=N.subs(subst).simplify()
mu=(N.diff(theta)-M.diff(r))/M
FactInt=exp(Integral(mu,r).doit())
phi=(M/r).integrate(theta)
g=Function('g')(r)
phi=phi+g
dsolve(phi.diff(r)-N/r,g)
phi=(M/r).integrate(theta)+r
phi