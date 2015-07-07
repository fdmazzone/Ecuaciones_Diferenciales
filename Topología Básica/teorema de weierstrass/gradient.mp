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

   picture gradient;
   path p;

   gradient = image(drawgradient((1,0.3,0), (0,1,0), 500, 10cm, 
10cm,45););

   p = fullcircle scaled 5cm shifted(0,5cm);

   clip gradient to p;

   draw gradient shifted (10cm,10cm);

endfig;
end

