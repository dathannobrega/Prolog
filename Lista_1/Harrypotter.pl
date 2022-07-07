:- dynamic feiticeiro/1.

elfo_domestico(dobby).

bruxo(hermione).
bruxo('McGonagall').
bruxo(rita_skeeter).

magico(X):- elfo_domestico(X).
magico(X):- feiticeiro(X).
magico(X):- bruxo(X).