Expr3=Expr2.subs(y.diff(x),(y**3+x**2*y-x-y)/(x**3+x*y**2-x+y))
r,theta=symbols('r,theta',positive=True)
Expr4=Expr3.subs([(y,r*sin(theta)),(x,r*cos(theta))])
Expr5=simplify(Expr4)