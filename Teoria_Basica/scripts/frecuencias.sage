def y(x,a):
    if a<0:
        return 1/2/sqrt(abs(a))* exp(sqrt(abs(a))*x)-1/2/sqrt(abs(a))*exp(-sqrt(abs(a))*x)
    elif a==0:
        return x
    else:
        return 1/sqrt(a)*sin(sqrt(a)*x)

for j in range(80): 
    gra=plot(y(x,-2+j/10),(x,-5,5))
    #k=5-len(str(j)) 
    #str1=''.join(['0' for i in range(k)]) 
    str2=str(j) 
    gra.save('/home/fdmazzone/Git/Ecuaciones_Diferenciales/ondas/'+'ondas'+str2+'.png')     
    
