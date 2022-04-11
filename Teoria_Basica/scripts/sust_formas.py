from sympy import *
from sympy.diffgeom.rn import R2
init_printing()
forma=(R2.y**3+R2.x**2*R2.y-R2.x-R2.y)*R2.dx-(R2.x**3+R2.x*R2.y**2-R2.x+R2.y)*R2.dy
M=forma.rcall(R2.e_theta)
N=forma.rcall(R2.e_r)
r=symbols('r',positive=True)
theta=symbols('theta')
sust={R2.x:r*cos(theta),R2.y:r*sin(theta),R2.theta:theta,R2.r:r}
Mpol=M.subs(sust).simplify()
Npol=N.subs(sust).simplify()
forma_pol=Mpol*R2.dtheta+Npol*R2.dr
