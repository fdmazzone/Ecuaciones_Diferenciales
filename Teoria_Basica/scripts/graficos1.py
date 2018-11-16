# -*- coding: utf-8 -*-
"""
Created on Sat Mar 19 11:51:45 2016

@author: fdmazzone
"""

x,y,epsilon = var('x,y,epsilon')
x_n=cos(epsilon)*x-sin(epsilon)*y
y_n=sin(epsilon)*x+cos(epsilon)*y
xi=x_n.diff(epsilon).subs(epsilon,0)
eta=y_n.diff(epsilon).subs(epsilon,0)
x_abs=0
substi=[(x,x_abs),(y,0)]
p=plot(x_n.subs(substi),y_n.subs(substi), (epsilon,0,2*pi),xlim=(-1,1),aspect_ratio=(1,1),show=False)
for i in range(1,21):
    x_abs=i*1/20.0
    substi=[(x,x_abs),(y,0)]
    q=plot_parametric(x_n.subs(substi),y_n.subs(substi), (epsilon,0,2*pi),xlim=(-1,1),aspect_ratio=(1,1),show=False)
    p.append(q[0])
