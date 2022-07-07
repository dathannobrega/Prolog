homem(homer).
homem(abraham).
homem(clancy).
homem(bart).
homem(helbert).
homem(ribeirin).

mulher(mona).
mulher(marge).
mulher(jacqueline).
mulher(selma).
mulher(patty).
mulher(ling).
mulher(lisa).
mulher(maggie).
mulher(abbey).
mulher(elisa).

pai(abraham,homer).
pai(abraham,helbert).
pai(abraham,abbey).
pai(homer,bart).
pai(homer,lisa).
pai(homer,maggie).
pai(clancy,marge).
pai(clancy,selma).
pai(clancy,patty).
pai(bart,paola).
pai(helbert,ribeirin).

mae(mona,homer).
mae(marge,maggie).
mae(marge,bart).
mae(marge,lisa).
mae(jacqueline,marge).
mae(jacqueline,selma).
mae(jacqueline,patty).
mae(selma,ling).

avoF(X,Y):-
    pai(Z,Y),
    mae(X,Z);
    mae(Z,Y),
    mae(X,Z).

avo(X,Y):- 
    pai(X,Z),
    pai(Z,Y);
    mae(Z,Y),
    pai(X,Z).


bis(X,Y):- 
    avo(X,Z),
    pai(Z,Y).

filho(X,Y):- 
    pai(Y,X),
    homem(X).

filha(X,Y):- 
    pai(Y,X),
    mulher(X).

irmao(X,Y):- 
    pai(Z,Y),
    pai(Z,X),
    homem(X),
    not(X == Y).

irma(X,Y):- 
    pai(Z,Y),
    pai(Z,X),
    mulher(X),
    not(X == Y).

tio(Tio,Sobrinho):- 
    pai(X,Sobrinho),
    irmao(X,Tio),
    homem(Tio);
    mae(X,Sobrinho),
    irmao(X,Tio),
    homem(Tio).

tia(Tia,Sobrinha):- 
    pai(X,Sobrinha),
    irma(X,Tia),
    mulher(Tia);
    mae(X,Sobrinha),
    irma(X,Tia),
    mulher(Tia).

%X é primo de Y
primo(X,Y):- 
        homem(X),
        mae(Z,Y),
        mae(A,X),
        irma(Z,A);
        homem(X),
        pai(Z,Y),
        pai(A,X),
        irmao(Z,A).

%X é prima de Y
prima(X,Y):-
        mulher(X),
        mae(Z,Y),
        mae(A,X),
        irma(Z,A);
        mulher(X),
        pai(Z,Y),
        pai(A,X),
        irmao(Z,A).