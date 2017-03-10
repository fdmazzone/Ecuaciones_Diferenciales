theta=symbols('theta')
from sympy.plotting import *
plot_parametric(theta-sin(theta),1-cos(theta),(theta,0,10*pi))