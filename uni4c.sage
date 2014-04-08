x,p,q,a,A=var('x,p,q,a,A')
y=function('y',x)
y=A*exp(a*x)
ecua=y.diff(x,2)+p*y.diff(x)+q*y==exp(a*x)
ecua.show()
ecua_alg=(ecua/exp(a*x)).simplify_full()
ecua_alg.show()

A=solve(ecua_alg,A)
print str(A[0])+ ' siempre que',str((1/A[0]).rhs())+'<>0'