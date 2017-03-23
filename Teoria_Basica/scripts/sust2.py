x,x_n=symbols('x,x_n')
x_n=acos(x)
y=Function('y')(x_n)
Ecuacion=-y.diff()+1/(sqrt(1-x**2))*y
xn=symbols('xn')
Ecuacion.subs(x,cos(xn))