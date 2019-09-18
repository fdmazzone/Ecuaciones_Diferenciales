from sympy import *
x=symbols('x') #unico simbolo primitivo
y_n=Function('y_n')(x) #declaro las varaibles nuevas, funciones de las viejas
y=exp(y_n)/x #relacion entre y, y_n
eq=Eq(y.diff(x)-(ln(x*y))**2*x*y+y/x,0) #la ecuacion
simplify(eq) # simplifica expresiones