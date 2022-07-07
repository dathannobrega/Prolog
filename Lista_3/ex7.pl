contido(X,[X|_]).
contido(X,[H|L]):-contido(X,L).

subconjunto([],X).
subconjunto([X|H],L):- contido(X,L),subconjunto(H,L).