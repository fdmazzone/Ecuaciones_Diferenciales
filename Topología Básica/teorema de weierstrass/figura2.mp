def drawgradient(expr topcolour, botcolour, stp, len, wid, ang ) :=
   save pw,l,r,t,b,shade,grad;

   numeric l,r,t,b,pw;
   color shade, grad;

   pw = len/stp;
   pickup pensquare scaled pw;
   lft l = 0 = bot b;
   rt r = wid;
   t = len;

   shade := botcolour;
   grad := (1/stp)*(topcolour - botcolour);

   for ypos := b step pw until t:
      draw (1, ypos) rotated ang -- (r, ypos) rotated ang withcolor shade ;
      shade := shade + grad;
   endfor;

   pickup pencircle scaled 0.5pt;
enddef;


beginfig(1);
u=1.5mm;

path ex,ey,c[][], c, cmas[],bordek;
picture as, bs;
pair x[][], centro, xmas[];
c=(0,-5u)..(5u,0)..(0,5u)..(-5u,0)..cycle;
bordek=(50u,8u){left}..{left}(30u,8u){left}..{up}(22u,16u)..
{left}(14u,24u)..{left}(-16u,24u)..{down}(-24u,16u)..{down}(-24u,-16u)..
{right}(-16u,-24u)..{right}(14u,-24u)..{up}(22u,-16u)..{right}(30u,-8u)..
{right}(50u,-8u){up}..{up}cycle;
fill bordek withcolor (0,0,1);

ex=(-40u,0)--(40u,0);
ey=(0,-40u)--(0,40u);
centro=(0,0);

for j=-1 upto 1:
	for i=-1 upto 1:
		x[i][j]=centro shifted (11*i*u,11*j*u);
	endfor
endfor


for i=2 upto 4:
	xmas[i]=centro shifted (11*i*u,0);
endfor


for j=-1 upto 1:
	for i=-1 upto 1:
		c[i][j] = c shifted (11*i*u,11*j*u);
	endfor
endfor
for j=-1 upto 1:
	for i=-1 upto 1:
		draw c[i][j];
	endfor
endfor

for i=2 upto 4:
	cmas[i] = c shifted (11*i*u, 0);
endfor

for i=2 upto 4:
	draw cmas[i];
endfor

draw bordek;

for j=-1 upto 1:
	for i=-1 upto 1:
		unfill c[i][j];
	endfor
endfor

for i=2 upto 4:
	unfill cmas[i];
endfor



label(btex $B(x_1,\delta)$ etex, x[-1][-1]);
label(btex $B(x_2,\delta)$ etex, x[-1][0]);
label(btex $B(x_3,\delta)$ etex, x[-1][1]);
label(btex $B(x_4,\delta)$ etex, x[0][-1]);
label(btex $B(x_5,\delta)$ etex, x[0][0]);
label(btex $B(x_6,\delta)$ etex, x[0][1]);
label(btex $B(x_7,\delta)$ etex, x[1][-1]);
label(btex $B(x_8,\delta)$ etex, x[1][0]);
label(btex $B(x_9,\delta)$ etex, x[1][1]);
label(btex $B(x_{10},\delta)$ etex, xmas[2]);
label(btex $B(x_{11},\delta)$ etex, xmas[3]);
label(btex $B(x_{12},\delta)$ etex, xmas[4]);














   picture gradient, gradientdos;
   path p;
	
   gradient = image(drawgradient((1,1,1), (0,0,1), 1000, 20u, 
16.2u,0););

 
	
	p=(0,0)--(0,20u)--(16.2u, 20u)--(16.2u,0)--cycle;

   clip gradient to p;
	gradientdos = gradient rotated -90 shifted (50u,8.3u);
   draw gradientdos;








endfig;
end;