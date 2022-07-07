intercala1([],[],[]).
intercala1([List1|H1],[List2|H2],[List1,List2|Res]):-intercala1(H1,H2,Res).

