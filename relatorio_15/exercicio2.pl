:- consult('banco_rl15.pl').

hangar_combate(H) :-
    possui(H, P1),
    possui(H, P2),
    P1 \= P2,
    componente(P1, _, combate),
    componente(P2, _, combate).

falta_energia(H) :-
    possui(H, _),
    \+ (
        possui(H, P),
        componente(P, _, propulsao)
    ).

consulta_ex2(H) :-
    hangar_combate(H),
    falta_energia(H).