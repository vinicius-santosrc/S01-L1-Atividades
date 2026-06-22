:- consult('banco_rl15.pl').

peça_crítica(P) :-
    componente(P, Energia, _),
    Energia > 5,
    precisa(P1, P),
    precisa(P2, P),
    P1 \= P2.

consulta_ex1(P) :-
    componente(P, 6, sistemas),
    \+ precisa(_, P).