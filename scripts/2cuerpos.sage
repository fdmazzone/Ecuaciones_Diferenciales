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
r=1/z
ed2=(r.diff(t,2)+mu/r^2-h^2/r^3).simplify_full()
r=1/z
ed2=r.diff(t,2)+mu/r^2-h^2/r^3
theta2diff=(h*z^2).diff(t).subs_expr(theta.diff(t)==h*z^2)
ed3=ed2.subs_expr(theta.diff(t)==h*z^2,theta.diff(t,2)==theta2diff)
ed4=(ed3/z^2/h^2).expand()
s=var('s')
ed5=ed4.subs_expr(theta==s)
sol=desolve(ed5,z,ivar=s)
#sol.show()
gra=[]
for e in srange(0,1,.1):
    gra+=[polar_plot(1/(1+e*cos(s)),(s,0,2*pi))]
#
sum(gra).show()

gra=[]
for omega in srange(0,2*pi,pi/4):
    gra+=[polar_plot(1/(1+.5*cos(s-omega)),(s,0,2*pi),rgbcolor)]
#
sum(gra).show()
