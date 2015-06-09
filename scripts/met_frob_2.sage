reset()
orden=10
#Declaramos muchas variables en una sola linea
ListaCoefNom='a0'
for i in range(1,orden):
    ListaCoefNom+=',a'+str(i)
a=var(ListaCoefNom)

x,b,alpha,m=var('x,b,alpha,m')
y = x^m*sum(a[i]*x^i for i in range(orden))
Ecua=x*y.diff(x,2)+(b-x)*y.diff(x,1)-alpha*y
"""
La exponente más chico para el x en esta expresión es, a los sumo, m-2. Dividimos por m-2 asi todos los exponentes son enteros positivos. Extraemos los coeficientes que acompañan a x que son las ecuaciones que debemos resolver
"""
Ecua=Ecua/x^(m-2)
Ecua=Ecua.coefficients(x)
Ecuaciones=[f[0] for f in Ecua] 
"""
La primera es la ecuación indicial. La resolvemos
"""
Sol_Ecua_Ind=solve(Ecuaciones[0],m)
Ecuaciones1=[f.subs(Sol_Ecua_Ind[0]).factor() for f in Ecuaciones[1:-2]]
Coef_Sol_1=solve(Ecuaciones1,a[1:],solution_dict=True)[0]
y1=y.subs(Coef_Sol_1).subs(Sol_Ecua_Ind[1])
#[solve(Ecuaciones1[i],a[i+1]) for i in range(len(Ecuaciones1))]

