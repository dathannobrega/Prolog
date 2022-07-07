%https://www.ic.unicamp.br/~meidanis/courses/mc336/2009s2/prolog/problemas/
%%####################QUESTAO 1 DA PROVA####################
pai(abel, bernardo).
pai(abel, bia).

mae(cria, bernardo).
mae(cria, bia).

teste(X, Y) :- pai(X, Y).
teste(X, Y) :- mae(X, Y).

irmaos(X, Y) :- teste(Z, X), teste(Z, Y), X \= Y.
%%####################QUESTAO 2 DA PROVA####################
pai(abel, bernardo).
pai(abel, bia).

mae(cria, bernardo).
mae(cria, bia).

teste(X, Y) :- pai(X, Y).
teste(X, Y) :- mae(X, Y).

irmaos(X, Y) :- teste(Z, X), teste(Z, Y), X \= Y.
%##########################QUESTAO 3 DA PROVA#################
blabla([ ], L, L ).
blabla([ H| T], L,[ H| R]):- blabla( T, L, R).

% Call: (10) blabla(_36690, _36692, [a, b]) ? creep
% Exit: (10) blabla([], [a, b], [a, b]) ? creep
% L1 = [],
% L2 = [a, b] .
% [trace]  ?- blabla(L1,L2,[a,b]).
% Call: (10) blabla(_41288, _41290, [a, b]) ? Unknown option (h for help)
% Call: (10) blabla(_41288, _41290, [a, b]) ? Unknown option (h for help)
% Call: (10) blabla(_41288, _41290, [a, b]) ? creep
% Exit: (10) blabla([], [a, b], [a, b]) ? creep
% L1 = [],
% L2 = [a, b] ;
% Redo: (10) blabla(_41288, _41290, [a, b]) ? creep
% Call: (11) blabla(_47314, _41290, [b]) ? creep
% Exit: (11) blabla([], [b], [b]) ? creep
% Exit: (10) blabla([a], [b], [a, b]) ? creep
% L1 = [a],
% L2 = [b] ;
% Redo: (11) blabla(_47314, _41290, [b]) ? creep
% Call: (12) blabla(_52088, _41290, []) ? creep
% Exit: (12) blabla([], [], []) ? creep
% Exit: (11) blabla([b], [], [b]) ? creep
% Exit: (10) blabla([a, b], [], [a, b]) ? creep
% L1 = [a, b],
% L2 = [] ;

%#########################QUESTAO 4 DA PROVA####################
% aplaina(L1,L2) :-  A lista L2 é obtidade a partir a Lista L1 por.
%    achatamento, i.e. onde se elemento da L1 é uma lista, então ela é substituída
%    por seus elementos, recursivamente.
%    (list,list) (+,?)

% Note: flatten(+List1, -List2) ja é uma funçao do prolog.
aplaina(X,[X]) :- 
    \+ is_list(X).
aplaina([],[]).
aplaina([X|Xs],Zs) :- 
    aplaina(X,Y), 
    aplaina(Xs,Ys), 
    append(Y,Ys,Zs).