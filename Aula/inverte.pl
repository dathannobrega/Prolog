concatena([],L,L).
concatena([X/L1],L2,[X/L3]):-
    concatena(L1,L2,L3).


inverte([],[]).
inverte(L,[U/I]):-
    concatena(L0,[U],L),
    inverte(L0,I).


%ou pode-se fazer dessa outra maneira usando acumulador!!
reverse([],L,L).
teverseAcum([H/T],Acum,Inv):-
    reverseAcum(T,[H/Acum],Inv).