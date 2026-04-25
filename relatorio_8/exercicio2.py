class Heroi:
    def __init__(self, nome, funcao):
        self.nome = nome
        self.funcao = funcao

    def usar_ultimate(self):
        raise NotImplementedError


class Tanque(Heroi):
    def usar_ultimate(self):
        print(f"{self.nome} usa ultimate de tanque protegendo o time")


class Dano(Heroi):
    def usar_ultimate(self):
        print(f"{self.nome} usa ultimate causando muito dano")


heroes = [
    Tanque("Reinhardt", "Tanque"),
    Dano("Tracer", "Dano")
]

for h in heroes:
    h.usar_ultimate()