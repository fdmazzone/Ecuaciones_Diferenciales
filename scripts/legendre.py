from sympy import *
def Legendre(n):
    orden=n+2
    Lista=['a%s'%i for i in range(orden)]
    a=symbols(Lista)
    x,p=symbols('x,p')
    y=sum([a[i]*x**i for i in range(orden)])
    Ecua=(1-x**2)*y.diff(x,2)-2*x*y.diff(x)+n*(n+1)*y
    Ecuaciones=[Ecua.diff(x,i).subs(x,0)/factorial(i) for i in range(orden-2)]       
    s=symbols('s')
    if n%2==0:
        Ecuaciones+=[a[0]-s,a[1]]
    else:
        Ecuaciones+=[a[0],a[1]-s]
    Sol_a_n=solve(Ecuaciones,a)
    y=y.subs(Sol_a_n)
    sol=solve(y.subs(x,1)-1,s)
    return y.subs(s,sol[0])
