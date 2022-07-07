somaL(S,[S]).
somaL(X,[Y/L]):-
    X1 is X+Y,
    somaL(X1,L).

%%%FORMA CORRETA

somatoria([X],X).
somatoria([X/Xs],S):-
    somamatoria(Xs,Soma),
