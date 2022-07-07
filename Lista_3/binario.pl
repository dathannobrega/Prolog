
bin(X,Y):-bin(X,[],Y).
bin(0,Ac,Ac).
bin(X,Ac,L):- Resto is mod(X,2),Div is div(X,2),bin(Div,[Resto|Ac],L).
%%esse predicato e feita com acumulador.
%%O acumulador server para salvar a o resultado na hora de recolher no Exit.
%%O predicato abaixo é feito sem Acumulador, Veja no trace, que ao retornar a funçao,ela exlui os resultados.
%% Nunca se sabe o Que é o elemento L ate o caso base onde ele o trasnforma no total.

concatena([ ], L, L ).
concatena([ H| T], L,[ H| R]):- concatena( T, L, R).



inverte2( Lista , ListaInv ) :- inverte2( Lista ,[ ], ListaInv ).
inverte2([ ], Ac, Ac).
inverte2([ H| T], Ac, ListaInv) :- inverte2( T,[ H| Ac], ListaInv ).

list_to_set('Param1', 'Param2')
