t=symbols('t')
y=Function('y')(t)
x=Function('x')(t)
alpha,beta,gamma,delta=symbols('alpha,beta,gamma,delta',positive=True)
ec=y.diff()+gamma*y-delta*x*y 
ec1=alpha*x-beta*x*y
ec2=ec.diff(t)
ec3=ec2.subs(x.diff(),ec1)
ec4=(y+gamma*y)/delta/y #Esto es  x 
ec5=ec3.subs(x,ec4)
ec6=ec5.simplify()
ec6
