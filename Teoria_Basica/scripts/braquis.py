x,c=symbols('x,c')
y=Function('y')(x)
MiEcua=Eq(y.diff(x),sqrt((c-y)/y))
f=dsolve(MiEcua,y,hint='separable')