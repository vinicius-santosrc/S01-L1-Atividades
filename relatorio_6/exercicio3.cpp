#include <iostream>
#include <string>

using namespace std;

class MembroInatel {
public:
    string nomeCompleto;

    virtual void identificar() {
        cout << "Sou um membro da comunidade Inatel: " << nomeCompleto << "." << endl;
    }
};

class Coordenador : public MembroInatel {
public:
    string departamento;

    void identificar() override {
        cout << "Meu nome é " << nomeCompleto << ", sou o coordenador do departamento de " << departamento << " no Inatel." << endl;
    }
};

class Pesquisador : public MembroInatel {
public:
    string laboratorio;

    void identificar() override {
        cout << "Meu nome é " << nomeCompleto << ", e realizo pesquisas no laboratório " << laboratorio << " do Inatel." << endl;
    }
};

int main() {
    MembroInatel* membro1;
    MembroInatel* membro2;

    Coordenador coord;
    Pesquisador pesq;

    coord.nomeCompleto = "Carlos Silva";
    coord.departamento = "Engenharia";

    pesq.nomeCompleto = "Ana Souza";
    pesq.laboratorio = "Lab de IA";

    membro1 = &coord;
    membro2 = &pesq;

    membro1->identificar();
    membro2->identificar();

    return 0;
}