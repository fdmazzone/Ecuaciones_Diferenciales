t,omega,omega0,F0=var('t,omega,omega0,F0')
A,B=var('A,B')                   
x=A*cos(omega0*t)+B*sin(omega0*t)
eq=x.diff(t,2)+omega^2*x-F0*cos(omega0*t)
eqL1=eq.coefficient(sin(omega0*t))
eqL2=eq.coefficient(cos(omega0*t))
matrix([[eqL1.coefficient(A),eqL1.coefficient(B)],\
[eqL2.coefficient(A),eqL2.coefficient(B)]]).det().show()
SolAB=solve([eqL1,eqL2],[A,B],solution_dict=True)    
show(x)
x=x.subs(SolAB[0])
show(x)
print(latex(x))

