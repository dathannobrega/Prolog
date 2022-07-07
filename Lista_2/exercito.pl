%exercicio 2.
posto(soldado).
posto(taifeiro).
posto(cabo).
posto(terceiro_sargento).
posto(segundo_sargento).
posto(primeiro_sargento).
posto(subtenente).
posto(aspirante).
posto(segundo_tenente).
posto(primeiro_tenente).
posto(capitao).
posto(major).
posto(tenente_coronel).
posto(coronel).
posto(general_de_brigada).
posto(general_de_divisao).
posto(general_de_exercito).
posto(marechal).

proximo_posto(soldado,taifeiro).
proximo_posto(taifeiro,cabo).
proximo_posto(cabo,terceiro_sargento).
proximo_posto(terceiro_sargento,segundo_sargento).
proximo_posto(segundo_sargento,primeiro_sargento).
proximo_posto(primeiro_sargento,subtenente).
proximo_posto(subtenente,aspirante).
proximo_posto(aspirante,segundo_tenente).
proximo_posto(segundo_tenente,primeiro_tenente).
proximo_posto(primeiro_tenente,capitao).
proximo_posto(capitao,major).
proximo_posto(major,tenente_coronel).
proximo_posto(tenente_coronel,coronel).
proximo_posto(coronel,general_de_brigada).
proximo_posto(general_de_brigada,general_de_divisao).
proximo_posto(general_de_divisao,general_de_exercito).
proximo_posto(general_de_exercito,marechal).

militar(zero,soldado).
militar(platao,soldado).
militar(dentinho,soldado).
militar(cosme,soldado).
militar(roque,soldado).
militar(quindim,soldado).
militar(blips,soldado).
militar(ky,cabo).
militar(cuca,terceiro_sargento).
militar(tainha,primeiro_sargento).
militar(louise_lorota,primeiro_sargento).
militar(escovinha,segundo_tenente).
militar(mironga,primeiro_tenente).
militar(durindana,capitao).
militar(peroba,major).
militar(dureza,general_de_exercito).

%%predicato que busca qual se X patente é menor que Y
menor_patente(X,Y):- proximo_posto(X,Y).
menor_patente(X,Y):- proximo_posto(X,Z),
                     menor_patente(Z,Y).

maior_patente(X,Y):- proximo_posto(Y,X).
maior_patente(X,Y):- menor_patente(Z,X),
                        !,maior_patente(Z,Y).

%predicado que ao colocar nomes de soldados,verifica se X é subordinado a Y.
subordinado(X,Y):- militar(X,X1),militar(Y,Y1),menor_patente(X1,Y1).

