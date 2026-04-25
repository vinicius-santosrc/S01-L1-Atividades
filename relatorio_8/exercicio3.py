class ArmaCorpoACorpo:
    def __init__(self, nome):
        self.nome = nome


class PhantomThieves:
    def __init__(self, nome, arma):
        self.nome = nome
        self.arma = arma


class Joker:
    def __init__(self, equipe):
        self.arma = ArmaCorpoACorpo("Faca")
        self.equipe = equipe

    def mostrar_equipe(self):
        for membro in self.equipe:
            print(f"{membro.nome} usa {membro.arma.nome}")


equipe = [
    PhantomThieves("Ryuji", ArmaCorpoACorpo("Bastao")),
    PhantomThieves("Ann", ArmaCorpoACorpo("Chicote"))
]

joker = Joker(equipe)
joker.mostrar_equipe()