x=var('x')
y=function('y',x)
u=function('u',x)
v=function('v',x)
P=function('P',x)
Q=function('Q',x)
y=u*v
eq=y.diff(2)+P*y.diff()+Q*y
eq1=eq.coefficient(u.diff())==0
v=desolve(eq1,v)
y=u*v
eq=y.diff(x,2)+P*y.diff(x)+Q*y
eq=(eq/v).simplify_full()
a=var('a') 
eq2=eq.subs_expr({P(x):1/x,Q(x):1-a^2/x^2,P.diff():(1/x).diff(x)}).simplify_full()
p=plot(cos(x),(x,-4*pi,4*pi),color='red',legend_label='$y_1(x)=\cos x$')
p+=plot(cos(x-pi/4),(x,-4*pi,4*pi),color='green',legend_label='$y_2(x)=\cos( x-\pi/4)$')
#show(p)
reset()
x,t,epsilon=var('x,t,epsilon')
t=ln(x)
y=function('y',t)
z=y*sqrt(x)
eq=z.diff(x,2)+(1+epsilon)/4/x^2*z==0
eq=(eq*x^(3/2)).subs(x==e^t).simplify_full()
s=var('s')
eq=eq.subs_expr(ln(x)==s)
#eq.show()
x=var('x')
y=function('y',x)
z=function('z',x)
p0=function('p0',x)
p1=function('p1',x)
eq=(y/z*(z*p0*y.diff()-y*p1*z.diff())).diff()==y*(p0*y.diff()).diff()-y^2/z*(p1*z.diff()).diff()+(p0-p1)*(y.diff())^2+p1*(y.diff()-y/z*z.diff())^2

