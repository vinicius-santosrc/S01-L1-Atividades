:- consult('banco_rl15.pl').

item_faltante(Hangar, Peca) :-
    possui(Hangar, _),
    componente(Sistema, _, sistemas),
    precisa(Sistema, Peca),
    \+ possui(Hangar, Peca).

pode_montar(Hangar, Componente) :-
    possui(Hangar, _),
    componente(Componente, _, Categoria),
    Categoria \= fundamental,
    \+ (
        precisa(Componente, Peca),
        \+ possui(Hangar, Peca)
    ).

consulta_ex3_beta(Componente) :-
    pode_montar(hangar_beta, Componente).

consulta_ex3_gamma :-
    pode_montar(hangar_gamma, ia_navegação).