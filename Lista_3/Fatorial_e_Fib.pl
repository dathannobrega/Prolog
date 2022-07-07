fatorial(1,1).
fatorial(X,Y1):- X1 is X-1,fatorial(X1,Y),!,Y1 is Y*X.


fibonacci(0,0):-!.
fibonacci(1,1):-!.
fibonacci(X,Y):- X1 is X-1,
                 X2 is X-2,
                 fibonacci(X1,Y1),
                 fibonacci(X2,Y2),
                 Y is Y2+Y1.

%######FORMULA FIBONACCI.########
%     {0             n = 0
%     {1             n = 1
% F(N){
%     {F(n-1)+F(n-2) n > 1
%################################