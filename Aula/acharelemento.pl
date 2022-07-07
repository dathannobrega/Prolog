acharitem(_,[H/_],H).
acharitem(N,[X/S],H):-
    N1 is = N+1,
    acharitem(N1,S,H).

achar(_,[H/_],H).
achar(N,[_/S],H):-
    N1 is = N-1,
    achar(N1,S,H).

%ultimo elemento
ultimo(X,[X]).
ultimo(X,[_/S]):-
    ultimo(X,S).