x=symbols('x')
y=Function('y')(x)
MiEcua=Eq(y.diff(x),y/x)
f=dsolve(MiEcua,y)