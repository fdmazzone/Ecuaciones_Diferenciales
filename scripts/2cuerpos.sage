t,mu=var('t,mu')
x=function('x',t)
y=function('y',t)
r=function('r',t)
theta=function('theta',t)
u_r=vector([cos(theta),sin(theta)])
u_theta=vector([-sin(theta),cos(theta)])
pos=(r*u_r).column()
M=matrix([   [cos(theta),-sin(theta)],  [sin(theta),cos(theta)]  ])
sol=M.solve_right(pos.derivative(t,2))
#show([sol[0].simplify_full(),sol[0].simplify_full()])
h=var('h')
ed1=(sol[0].simplify_full())[0]+mu/r^2   
ed1=ed1.subs_expr((theta.diff(t))==h/r^2)
#ed1.show()
z=function('z',theta)
ed1.
