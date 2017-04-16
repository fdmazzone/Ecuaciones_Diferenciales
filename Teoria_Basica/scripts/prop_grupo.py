from sympy import *
x,y,epsilon,epsilon1,epsilon2=symbols('x,y,epsilon,epsilon1,epsilon2')
T=Matrix([x+epsilon,y])
x_copete=T.subs(epsilon,epsilon1)[0]
y_copete=T.subs(epsilon,epsilon1)[1]
PropGrupo=T.subs([(x,x_copete),(y,y_copete),(epsilon,epsilon2)])-T.subs(epsilon,epsilon1+epsilon2)
PropGrupo