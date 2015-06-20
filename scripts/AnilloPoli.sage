sage: PoliQX=QQ['X']
sage: print(PoliQX)
Univariate Polynomial Ring in X over Rational Field
sage: PoliRX=RR['X']
sage: print(PoliRX)
Univariate Polynomial Ring in X over Real Field with 53 bits of
...precision
sage: PoliZ3X=Integers(3)['X']
sage: print(PoliZ3X)
Univariate Polynomial Ring in X over Ring of integers modulo 3
sage: p=PoliZ3X([1,1,1])
sage: p
X^2 + X + 1
sage: p+p
2*X^2 + 2*X + 2
sage: p+p+p
0
sage: PoliZ3Xb = PolynomialRing(Integers(3),"X")
sage: PoliZ3X is PoliZ3Xb
True
sage: X+X
NameError: name 'X' is not defined
sage: PoliZ3Xc.<X> = Integers(3)["X"]
sage: PoliZ3Xc([1,2,1])+X
X^2 + 1
sage: P.<X,Y>=QQ["X,Y"]
sage: 1+X+X^2+Y^3 in P
True
sage: p=sum([j*X^j*Y^(3-j) for j in range(4)] )
sage: p in P
True
sage: p
3*X^3 + 2*X^2*Y + X*Y^2
sage: P=QQ[['a'+str(j) for j in range(8)]]
sage: P
Multivariate Power Series Ring in a0, a1, a2, a3, a4,
...a5, a6, a7 over Rational Field
sage: a0 in P
NameError: name 'a0' is not defined
sage: a=P.gens()
sage: a
(a0, a1, a2, a3, a4, a5, a6, a7)
sage: a[0] in P
True
sage: type(a[0])
<class 'sage.rings.multi_power_series_ring_element.
...MPowerSeriesRing_generic_with_category.element_class'>
sage: sum([a[j]*j for j in range(8)])
a1 + 2*a2 + 3*a3 + 4*a4 + 5*a5 + 6*a6 + 7*a7
sage: sum([a[j]*j for j in range(8)]) in P
True
sage: A=QQ[['a'+str(j) for j in range(5)]]
sage: A
Multivariate Power Series Ring in a0, a1, a2, a3, a4
....over Rational Field
sage: P.<X>=A["X"]
sage: a=A.gens()
sage: a
(a0, a1, a2, a3, a4)
sage: a[0]*X+a[1]*X^2 in P
True
sage: a[0]*X+a[1]*X^2
a1*X^2 + a0*X
sage: (a[0]*X+a[1]*X^2)^2
a1^2*X^4 + 2*a0*a1*X^3 + a0^2*X^2
sage: p=sum([a[j]*X^j for j in range(5)])
sage: p
a4*X^4 + a3*X^3 + a2*X^2 + a1*X + a0
sage: grado=4
sage: lista_var=['a'+str(j) for j in range(grado)]
sage: lista_var+=['b'+str(j) for j in range(grado)]
sage: lista_var+=['p', 'q']
sage: A = PolynomialRing(QQ,lista_var)
sage: P=A['X']
sage: r=P([A.gen(i) for i in range(grado)])
sage: r
a3*X^3 + a2*X^2 + a1*X + a0
sage: y=P([A.gen(i) for i in range(grado,2*grado)])
sage: y
b3*X^3 + b2*X^2 + b1*X + b0
sage: eq=y.derivative(2)+y.derivative()*A.gen(2*grado)+y*A.gen(2*grado+1)-r
sage: ecuaciones=[SR(l)==0 for l in eq.coefficients()]
sage: parametros=[SR(A.gen(j)) for j in range(2*grado+2)]
sage: Sol=solve(ecuaciones,parametros[grado:2*grado])
sage: show(Sol[0])
