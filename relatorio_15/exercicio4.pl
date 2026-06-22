:- consult('banco_rl15.pl').

peça_raiz(P) :-
    componente(P, _, _),
    \+ precisa(P, _).

peça_final(P) :-
    componente(P, _, _),
    \+ precisa(_, P).

consulta_ex4(P) :-
    peça_raiz(P),
    \+ componente(P, _, propulsao).