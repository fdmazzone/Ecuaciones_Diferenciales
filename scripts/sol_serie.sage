reset()
orden=20
#Declaramos muchas variables en una sola linea
ListaCoefNom='a0'
for i in range(1,orden):
    ListaCoefNom+=',a'+str(i)
a=var(ListaCoefNom)
x=var('x')
y = sum(a[i]*x^i for i in range(orden))
Ecua=y.diff(x,3)+x*y
"""
La exponente más chico para el x en esta expresión es, a los sumo, m-2. Dividimos por m-2 asi todos los exponentes son enteros positivos. Extraemos los coeficientes que acompañan a x que son las ecuaciones que debemos resolver
"""
Ecua=Ecua.coefficients(x)
Ecuaciones=[f[0] for f in Ecua] 
"""
La primera es la ecuación indicial. La resolvemos
"""
#for i in range(orden-2):
#    print(solve(Ecuaciones[i],a[i+2]))    

Ecuaciones1=[f for f in Ecuaciones[:-4]]
Coef_Sol_1=solve(Ecuaciones1,a[2:],solution_dict=True)[0]
y1=y.subs(Coef_Sol_1)
#Ecuaciones1=[f.subs(Sol_Ecua_Ind[0]).factor() for f in Ecuaciones[1:-2]]
#Ecuaciones2=[]
#for i in range(1,len(Ecuaciones1)):
#    Ecuaciones2+=[solve(Ecuaciones1[i],a[i+1])[0]]
