grado=4
lista_var=['a'+str(j) for j in range(grado)] 
lista_var+=['b'+str(j) for j in range(grado)]
lista_var+=['p', 'q']                        
A = PolynomialRing(QQ,lista_var)
P=A['X']
r=P([A.gen(i) for i in range(grado)])
r
y=P([A.gen(i) for i in range(grado,2*grado)])
y
eq=y.derivative(2)+y.derivative()*A.gen(2*grado)+y*A.gen(2*grado+1)-r
ecuaciones=[SR(l)==0 for l in eq.coefficients()]
parametros=[SR(A.gen(j)) for j in range(2*grado+2)] 
Sol=solve(ecuaciones,parametros[grado:2*grado])
show(Sol[0])