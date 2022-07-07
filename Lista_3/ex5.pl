intercala2([],[],[]).
intercala2([List1|H1],[List2|H2],[[List1,List2]|Res]):-intercala2(H1,H2,Res).