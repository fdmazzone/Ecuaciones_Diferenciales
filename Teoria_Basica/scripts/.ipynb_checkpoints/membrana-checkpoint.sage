P.<x>=RR[x]
n=5
l=3
J= sum([(-1)^k/factorial(k)/gamma(k+1)*(x/2)^(2*k+n) for k in range(20)])
Ceros=J.roots()
Ceros=[i[0] for i in Ceros if i[0]>0]
t,theta,r=var('t,theta,r')
u=cos(Ceros[l]*t)*cos(n*theta)*J(Ceros[l]*r)
gra=[]
Trans = Cylindrical('height', ['radius', 'azimuth'])
z=var('z')
Trans.transform(radius=r, azimuth=theta, height=z)
aux=parametric_plot3d([-1,-1,t],(t,-1,1),opacity=0)
for j in range(50):
    gra=plot3d(u(t=2*pi/Ceros[l]*j/50),(r,0,1),(theta,0,2*pi),transformation=Trans,viewer='tachyon')+aux
    #k=5-len(str(j))
    #str1=''.join(['0' for i in range(k)])
    str2='mem-'+str(j)
    gra.save('/home/fdmazzone/Git/Ecuaciones_Diferenciales/membrana/54/'+str2+'.png')
