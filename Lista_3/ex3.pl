tresvezes([],[]).
tresvezes([X|S],[X,X,X|Y]):-tresvezes(S,Y).
%Isso faz com que o prologue busque o caso basico e va substituindo
%os valores de baixo pra cima
