x=symbols('x')
y=Function('y')(x)
MiEcua=Eq(y.diff(x),y/x)
tipo=classify_ode(MiEcua,y)