beginfig(1);
u=1mm;
path ex, ey, inv, lab, liz, compx, compy, cuno,cdos,ctres,ccuatro,ccinco,cseis;
picture texto, text, gn, xem;
lab=(10u,20u)--(10u,0);
liz=(10u,20u)--(0,20u);
ex=(0,0)--(70u,0);
ey=(0,0)--(0,70u);
inv=(1u, 60u ){dir 274}..(10u,20u)..(20u,10u)..{dir 355}(60u,2.5u);
compx=(10u,0)--(70u,0);
compy=(0,20u)--(0,0);
cuno=(10u,-2u)--(10u,-7u);
cdos=(70u,-2u)--(70u,-7u);
ctres=(10u,-4.5u)--(70u,-4.5u);
ccuatro=(70u,-8u)--(70u,-13u);
ccinco=(0,-8u)--(0,-13u);
cseis=(0,-10.5u)--(70u,-10.5u);
pickup pencircle scaled 1;
drawarrow ex;
drawarrow ey;
pickup pencircle scaled 2 
draw inv withcolor (1,0,0);
drawarrow compx withcolor (0,0,1);
draw compy withcolor (0,0,1);

pickup pencircle scaled 1;

draw lab dashed evenly;
draw liz dashed evenly;


pickup pencircle scaled .8;
draw cuno;
draw cdos;
drawdblarrow ctres;
draw ccuatro;
draw ccinco;
drawdblarrow cseis;
label("(", (10.3u,0));
text=thelabel("(", (0,0));
texto=text  rotated -90 shifted (0,19.7u);
label.rt(btex $f(x)={1\over x}$ etex, (3u,60u));
label.lft(btex $y$ etex, (-2u,20u));
gn=thelabel(btex $G_y$ etex, (40u,-4.5u));
xem=thelabel(btex $K=(0,+\infty)$ etex, (40u,-10.5u));
unfill bbox gn;
unfill bbox xem;
draw gn;
draw xem;
draw texto;
endfig;
end;