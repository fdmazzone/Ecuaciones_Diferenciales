#En una ecuación y''+py'+qy=0 con p^2-4q<0 proponemos el cambio de variables y=e#e^(-p/x*x)v(x) y vemos que resuelve v. 
x,p,q,lambda0=var('x,p,q,lambda0')
y=function('y',x)
v=function('v',x)
assume(p^2-4*q>0)
y=exp(-p/2*x)*v
ecua=y.diff(x,2)+p*y.diff(x)+q*y==0
ecuav=(ecua/exp(-p/2*x)).simplify_full()
ecuav.show()


#queda la ecuación de un oscilador armónico. Cambiemos un poco los parámetros
nu=var('nu')
assume(nu>0)
ecuav=ecuav.subs_expr((p^2-4*q)==-4*nu^2)
solv=desolve(ecuav,v,ivar=x)
y=solv*exp(mu*x)
y.show()

#graficamos algunas soluciones para distintos valores de los parámetros mu y nu 
#

k1,k2=var('k1,k2')
y0=y.subs({k1:1,k2:0,mu:-.3,nu:2})
plot(y0,(x,-2,10)).show()

k1,k2=var('k1,k2')
y0=y.subs({k1:1,k2:0,mu:.3,nu:2})
plot(y0,(x,-2,10)).show()

k1,k2=var('k1,k2')
y0=y.subs({k1:1,k2:0,mu:0,nu:2})
plot(y0,(x,-2,10)).show()
 