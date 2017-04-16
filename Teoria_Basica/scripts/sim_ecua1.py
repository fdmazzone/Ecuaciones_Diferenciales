from sympy import *
x,theta=symbols('x,theta')
y=Function('y')(x)
x_n=cos(theta)*x-sin(theta)*y
y_n=sin(theta)*x+cos(theta)*y
Expr2=y_n.diff(x)/x_n.diff(x)
Expr3=Expr2.subs(y.diff(),\
(y**3+x**2*y-x-y)/(x**3+x*y**2-x+y))
x_n,y_n=symbols('x_n,y_n')
Expr4=Expr3.subs([(y, -sin(theta)*x_n+cos(theta)*y_n),\
(x,cos(theta)*x_n+sin(theta)*y_n)])
Expr5=simplify(Expr4)