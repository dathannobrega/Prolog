%exercicio 1.
sobre(cupcake,hipopotamo2).
sobre(hipopotamo2,hipopotamo1).
sobre(hipopotamo1,maca).
sobre(maca,sorvete).
sobre(sorvete,novelo).
sobre(novelo,elefante).
sobre(elefante,base).
sobre(base,mesa).
sobre(caneca,mesa).
sobre(lapis,vidro).
sobre(vidro,mesa).

acima_de(X,Y):- sobre(X,Y).
acima_de(X,Y):- sobre(Z,Y),acima_de(X,Z).

%'X' vai estar em baixo_de "Y" se O objeto que esta sobre X estiver abaixo de Y tambem; 
abaixo_de(X,Y):- sobre(Y,X).
abaixo_de(X,Y):- sobre(Z,X),abaixo_de(Z,Y).
