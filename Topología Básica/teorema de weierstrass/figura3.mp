beginfig(1);
u=1mm;
path ex, ey, f, dl;
picture llave;

ex=(0,0)--(100u,0);
ey=(0,0)--(0,50u);
f=(0,0)--(10u,0)--(20u,10u)--(30u,0)--(40u,0)--(50u,20u)--(60u,0)--(70u,0)--
	(80u,30u)--(90u,0)--(100u,0);
dl=(0,40u)--(100u,40u);

pickup pensquare scaled 1;
drawarrow ex;
drawarrow ey;

pickup pensquare scaled 2;
drawarrow f withcolor blue;
label(btex $B(x_1,\delta)$ etex, (20u, -10u));
label(btex $B(x_2,\delta)$ etex, (50u, -10u));
label(btex $B(x_3,\delta)$ etex, (80u, -10u));
llave=thelabel(btex $\{$ etex, (0,0)) rotated 90 scaled 6;

label.lft(btex $\delta$ etex, (0,40u));

draw llave shifted (20u,-5u);
draw llave shifted (50u,-5u);
draw llave shifted (80u,-5u);

pickup pencircle scaled 1.5;

draw dl dashed evenly;


endfig;
end;