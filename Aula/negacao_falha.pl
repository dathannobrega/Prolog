%a combinaçao de corte com gail parece estar e nos oferecer alguma frma de negaçao
%isto é chamado de negaçao como falha e é definido como segue:tt
% neg(Objetivo): Objetivo,!,fail.
% neg(Objetivo).

%//////////////////////////////////////////////////////////////////////////////////
%VICENTE APRECIA HAMBURGUER

aprecia(vicente,X):-hamburguer(X),
                    \+bigkahunaBurguer(X).
                    
hamburguer(X) :- bigMac(X).
hamburguer(X) :- bigkahunaBurguer(X).
hamburguer(X) :- whopper(X).

bigMac(a).
bigkahunaBurguer(b).
whopper(c).
% ////////////////////////////////////////////////////////////

