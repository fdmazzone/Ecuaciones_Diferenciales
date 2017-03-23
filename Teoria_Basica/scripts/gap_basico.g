gap> G:=SymmetricGroup(3);
Sym( [ 1 .. 3 ] )
gap> Elements(G);
[ (), (2,3), (1,2), (1,2,3), (1,3,2), (1,3) ]
gap> r:=(1,3,2);
(1,3,2)
gap> r^2;
(1,2,3)
gap> r^3;
()
gap> H:=Subgroup(G,[r]);
Group([ (1,3,2) ])
gap> Elements(H);
[ (), (1,2,3), (1,3,2) ]
gap> IsNormal(G,H);
true
gap> K:=FactorGroup(G,H);
Group([ f1 ])
gap> Size(K);
2



