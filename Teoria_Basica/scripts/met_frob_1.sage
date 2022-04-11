orden=10
#Declaramos muchas variables en una sola linea
ListaCoefNom='a0'
for i in range(1,orden):
    ListaCoefNom+=',a'+str(i)
a=var(ListaCoefNom)
x=var('x')
m=var('m')
y = x^m*sum(a[i]*x^i for i in range(orden))
a,b=var('a,b')
Ecua=x*y.diff(x,2)+(b-x)*y.diff(x)-a*y
"""
La exponente más chico para el x en esta expresión es, a los sumo, m-2. Dividimos por m-2 asi todos los exponentes son enteros positivos. Extraemos los coeficientes que acompañan a x que son las ecuaciones que debemos resolver
"""
Ecua=Ecua.coefficients(x)
Ecuaciones=[f[0] for f in Ecua[:-2]] 
"""
La primera es la ecuación indicial. La resolvemos
"""
#Sol_Ecua_Ind=solve(Ecuaciones[0],m)
#Ecuaciones1=[f.subs(Sol_Ecua_Ind[1]) for f in Ecuaciones[1:]]
#Coef_Sol_1=solve([a[0]-1]+[a[1]-0]+ Ecuaciones,a,solution_dict=True)
#y1=y.subs(Coef_Sol_1[0])#.subs(Sol_Ecua_Ind[1])
