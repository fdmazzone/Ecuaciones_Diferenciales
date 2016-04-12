x=var('x')
P.<D>=PolynomialRing(QQ,"D")
#y''-3y'+2y=xe^x
p=D^2-3*D+2
q=p.factor()
LinInv=lambda r,a: e^(a*x)* (e^(-a*x)*r ).integral(x)
y=LinInv(LinInv(x*e^x,1),2)
print(y)
print((y.diff(x,2)-3*y.diff(x)+2*y).simplify_full())
q=(1/p).partial_fraction_decomposition()
z=LinInv(x*e^x,2)-LinInv(x*e^x,1)
print(z)
print((z.diff(x,2)-3*z.diff(x)+2*z).simplify_full())
print(((z-y).diff(x,2)-3*(z-y).diff(x)+2*(z-y)).simplify_full())
x=var('x')
r=x^4+2*x+5
D=var('D')
L=(1/(1+2*D^2+D^3)).taylor(D,0,4).coefficients()
y=sum([k[0]*r.diff(x,ZZ(k[1])) for k in L])
