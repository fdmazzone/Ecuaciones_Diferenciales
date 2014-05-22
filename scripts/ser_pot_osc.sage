"""
Método de coeficientes indeterminados para
la ecuación y''+omega^2y=0
"""
orden=8
Lista=['a%s'%i for i in range(orden)]+['omega']
A = PolynomialRing(QQ,Lista)
Series.<X> = PowerSeriesRing(A)
Coef=A.gens() 
y=sum(Coef[i]*X^i for i in range(orden)) 
Ecua=y.derivative(2)+A.gens()[-1]^2*y
a= [SR(i) for i in A.gens()[:-1]] 
Ecuaciones=[a[0]-1,a[1],list(Ecua)[:-2]]
Sol_a_n=solve(Ecuaciones,a) 
L=[f.rhs() for f in Sol_a_n[0]] 
x=var('x')
y1=sum([L[i]*x^i for i in range(orden)])
Ecuaciones=[a[0],a[1]-1,list(Ecua)[:-2]]
Sol_a_n=solve(Ecuaciones,a) 
L=[f.rhs() for f in Sol_a_n[0]] 
y2=sum([L[i]*x^i for i in range(orden)])
