#En una ecuación y''+py'+qy=0 con p^2-4q=0 proponemos el cambio de variables y=e#e^(-p/2*x)v(x) y vemos que resuelve v. 
x,p=var('x,p')
y=function('y',x)
v=function('v',x)
y1=exp(-p/2*x)
y=v*y1
ecua=y.diff(x,2)+p*y.diff(x)+p^2/4*y==0
ecuav=(ecua/exp(-p/2*x)).simplify_full()
sol=desolve(ecuav,v,ivar=x)