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
h=var('h')
a1=sol[0].simplify_full()
a2=sol[1].simplify_full()
h=var('h')
ed=(a1[0]).subs_expr(theta.diff(t)==h/r^2)
ed+=mu/r^2   
#ed.show()
z=function('z',theta)
r=1/z
ed2=r.diff(t,2)+mu/r^2-h^2/r^3
theta2diff=(h*z^2).diff(t).subs_expr(theta.diff(t)==h*z^2)
ed3=ed2.subs_expr(theta.diff(t)==h*z^2,theta.diff(t,2)==theta2diff)
#ed3.show()
ed4=(ed3/z^2/h^2).expand()
#ed4.show()
s=var('s')
ed5=ed4.subs_expr(theta==s)
sol1=desolve(ed5,z,ivar=s)

ListaGra=[]
for e in srange(0,.8,.1):
    ListaGra+=[polar_plot(1/(1+e*cos(s)),(s,0,2*pi),rgbcolor=(e,1-e,0))]
ListaGra+=[polar_plot(1/(1+cos(s)),(s,-3*pi/4,3/4*pi),rgbcolor=(e,1-e,0))]
for e in srange(1.2,2,.1):
    ListaGra+=[polar_plot(1/(1+e*cos(s)),(s,-0.65*pi,0.65*pi),rgbcolor=(0,2-e,e-1))]
gra=sum(ListaGra)
gra.show()

#gra=[]
#for e in srange(0,1,.1):
#    gra+=[polar_plot(1/(1+e*cos(s)),(s,0,2*pi))]
#
#sum(gra).show()

#gra=[]
#for omega in srange(0,2*pi,pi/4):
#    gra+=[polar_plot(1/(1+.5*cos(s-omega)),(s,0,2*pi),rgbcolor)]
#
#sum(gra).show()
