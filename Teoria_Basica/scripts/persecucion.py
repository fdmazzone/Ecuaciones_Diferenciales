from sympy import *
x=symbols('x',real=True)
a=Rational(2)
b=Rational(1)
c=Rational(1)
y=integrate((x/c)**(a/b)-(c/x)**(a/b),x)
C=symbols('C')
C=solve(y.subs(x,1)+C,C)[0]
plot(y+C,(x,0.001,1))