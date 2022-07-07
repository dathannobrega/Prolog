concatena([],X,X).
concatena([X/S],YS,[X/Z]):-
    concatena(XS,YS,Z)S.

palindromo([]).
palindromo([_]).
palindromo([H/L]):- 
    concatena(Rest,[H],L),
    palindromo(Rest).