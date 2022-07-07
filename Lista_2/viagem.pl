%Exercicio 4.
deCarro(auckland,hamilton).
deCarro(hamilton,raglan).
deCarro(valmont,saarbruecken).
deCarro(valmont,metz).

deTrem(metz,frankfurt).
deTrem(saarbruecken,frankfurt).
deTrem(metz,paris).
deTrem(saarbruecken,paris).

deAviao(frankfurt,bangkok).
deAviao(frankfurt,singapore).
deAviao(paris,losAngeles).
deAviao(bangkok,auckland).
deAviao(losAngeles,auckland).

%casos Bases.
viagem(X,Y):- deCarro(X,Y);
              deTrem(X,Y);
              deAviao(X,Y).
viagem(X,Y):- deCarro(X,Z),viagem(Z,Y);
              deAviao(X,Z),viagem(Z,Y);
              deTrem(X,Z),viagem(Z,Y).

%%predicato viagem/3 que mostra os caminhos que devemos pegar
viagem(X,Y,go(X,Y)):-deCarro(X,Y);
                     deTrem(X,Y);
                     deAviao(X,Y).
viagem(X,Y,go(X,Z,C)):- (deCarro(X,Z);
                        deTrem(X,Z);
                        deAviao(X,Z)),viagem(Z,Y,C).

%na só as cidades intermediarias , como como ira
rota(X,Y,go(X,deAviao,Y)):-deAviao(X,Y).
rota(X,Y,go(X,deAviao,Z,V)):-deAviao(X,Z),rota(Z,Y,V).
%%rota de trem
rota(X,Y,go(X,deTrem,Y)):-deTrem(X,Y).
rota(X,Y,go(X,deTrem,Z,V)):-deTrem(X,Z),rota(Z,Y,V).
%%rota de carro
rota(X,Y,go(X,deCarro,Y)):-deCarro(X,Y).
rota(X,Y,go(X,deCarro,Z,V)):-deCarro(X,Z),rota(Z,Y,V).
%esse 'V' é a variavel que vai repetir a chamada da funcao dentro da funçao