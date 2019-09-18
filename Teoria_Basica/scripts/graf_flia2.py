for pend in L[1:]:
    p1=plot(pend*x,(x,-2,2),show=False,\
xlim=(-2,2),ylim=(-2,2),aspect_ratio=(1,1))
    p.append(p1[0])
for r in range(1,10):
    p1=plot_implicit(Eq(x**2 + y**2, 0.2*r),\
show=False,aspect_ratio=(1,1),xlim=(-2,2),ylim=(-2,2))
    p.append(p1[0])