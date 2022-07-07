intercala3([],[],[]).
intercala3([List1|H1],[List2|H2],[junta(List1,List2)|Res]):-intercala3(H1,H2,Res).