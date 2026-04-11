#include <iostream>
#include <string>

using namespace std;

class Pessoa {
private:
    string nome;
    int idade;

public:
    void setNome(string n) {
        nome = n;
    }

    string getNome() {
        return nome;
    }

    void setIdade(int i) {
        idade = i;
    }

    int getIdade() {
        return idade;
    }
};

class Protagonista : public Pessoa {
private:
    int nivel;

public:
    void setNivel(int n) {
        nivel = n;
    }

    int getNivel() {
        return nivel;
    }
};

class Personagem : public Pessoa {
private:
    int rank;

public:
    void setRank(int r) {
        if (r >= 0 && r <= 10) {
            rank = r;
        }
    }

    int getRank() {
        return rank;
    }
};

int main() {
    Protagonista protagonista;
    Personagem personagem;

    protagonista.setNome("Joker");
    protagonista.setIdade(17);
    protagonista.setNivel(12);

    personagem.setNome("Ryuji");
    personagem.setIdade(17);
    personagem.setRank(7);

    cout << "Protagonista:" << endl;
    cout << "Nome: " << protagonista.getNome() << endl;
    cout << "Idade: " << protagonista.getIdade() << endl;
    cout << "Nivel: " << protagonista.getNivel() << endl;

    cout << endl;

    cout << "Personagem:" << endl;
    cout << "Nome: " << personagem.getNome() << endl;
    cout << "Idade: " << personagem.getIdade() << endl;
    cout << "Rank: " << personagem.getRank() << endl;

    return 0;
}