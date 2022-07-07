% AQUI TEMOS o modelo de estudo sobre rpeenchimento de dados 


% assert/1 == assertz
% asserta/1 = A informaçao vem no inicio
% assertz/1  = A informaçao vem no fim
%/////////////////////////////////////////////////
%%As manipulaçoes na base de dados alteram o significado do predicado feliz/1
%Mais genericamente:
%- os comandos de manipulaçao da base de dados nos dão a habilidade de alterar o significado dos predicados em tempo de execuçao
%///////////////////
%----------------PREDICATOS ESTATICOS E DINAMICOS-----------------------
% *Predicato cujo significado se altera durante o tempo de execuçao sao chamados de predicados DINAMICOS
% - feliz/1 é um predicato dinâmico
% - Alguns interpretadores Prolog necessitam de uma declaraçao de predicados dinamicos
% * Predicados comuns sao algumas vezes chamados de predicados estaticos
%
%-----------------REMOVENDO INFORMAÇOES--------------------
%*Agora sabemos como adicionar informaçoes á base da dados prolog
%  - fazemos isto como o predicado assert/1
%  *Como nós removemos informaçao?
%  - Fazemos isto como o predicado retract/1 que removerá uma cláusula
%  - Podemos remover muitas cláusulas simultaneamente com o predicado retractall/1
% Se usarmos (retract(feliz(X))). ele vai ir apagando todas as ocorrencias.
%
%--------------------

