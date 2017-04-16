x,y,epsilon = var('x,y,epsilon')
x_n=cos(epsilon)*x-sin(epsilon)*y
y_n=sin(epsilon)*x+cos(epsilon)*y
xi=x_n.diff(epsilon).subs(epsilon,0)
eta=y_n.diff(epsilon).subs(epsilon,0)
p=[]
for x_abs in [.2*k for k in range(6)]:
    p+=plot_parametric(x_n.subs({x:x_abs,y:0}),\
    y_n.subs({x:x_abs,y:0}), (epsilon,0,2*pi))
    p+= plot_vector_field((xi,eta),(x,-1,1),\
    (y,-1,1))