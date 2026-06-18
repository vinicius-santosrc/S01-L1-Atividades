:- consult('banco_rl14.pl').

alimenta(agua, sucuri).
alimenta(terra, sucuri).

especie_chave(Animal) :-
    (alimenta(agua, Animal) ; alimenta(terra, Animal)),
    (nicho(Animal, rios) ; nicho(Animal, pântano) ; nicho(Animal, profundezas)).