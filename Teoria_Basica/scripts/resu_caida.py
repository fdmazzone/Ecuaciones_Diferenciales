v=symbols('v',cls=Function)
EqCaida=Eq(v(t).diff(t)+c/m*v(t),g)
Vel=dsolve(EqCaida,v(t))
Vel