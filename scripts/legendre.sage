def legendre(n):
    if n not in NN:
        print "n no es entero"
    else:
        """
        Método de coeficientes indeterminados para
        la ecuación(1-x^2)y''-2xy'+p(p+1)y=0
        """
        orden=n+2
        Lista=['a%s'%i for i in range(orden)]
        A = PolynomialRing(QQ,Lista)
        Series.<X> = PowerSeriesRing(A)
        Coef=A.gens() 
        y=sum(Coef[i]*X^i for i in range(orden)) 
        Ecua=(1-X^2)*y.derivative(2)-2*X*y.derivative()+n*(n+1)*y
        a= [SR(i) for i in A.gens()] 
        Ecuaciones=list(Ecua)[:-2]
        s=var('s')
        if n%2==0:
            Ecuaciones+=[a[0]-s,a[1]]
        else:
            Ecuaciones+=[a[0],a[1]-s]
        Sol_a_n=solve(Ecuaciones,a) 
        L=[f.rhs() for f in Sol_a_n[0]] 
        x=var('x')
        y=sum([L[i]*x^i for i in range(orden)])
        sol=solve(y(x=1)==1,s)
        return y.subs(sol[0])


