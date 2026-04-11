#include <iostream>
#include <string>

using namespace std;

class Robo {
public:
    string modelo;
    int versao;
    float potenciaLaser;
    int integridade;

    void disparar(Robo &alvo) {
        cout << "Robô " << modelo << " disparou contra " << alvo.modelo << "!" << endl;
        
        alvo.integridade -= potenciaLaser;

        if (alvo.integridade < 0) {
            alvo.integridade = 0;
        }
    }

    void exibirStatus() {
        cout << "--- STATUS DO ROBÔ ---" << endl;
        cout << "Modelo: " << modelo << endl;
        cout << "Versão: " << versao << endl;
        cout << "Potência do Laser: " << potenciaLaser << endl;
        cout << "Integridade: " << integridade << endl;
    }
};

int main() {
    Robo robo1;
    Robo robo2;

    robo1.modelo = "RX-78";
    robo1.versao = 1;
    robo1.potenciaLaser = 30.5;
    robo1.integridade = 100;

    robo2.modelo = "ZX-99";
    robo2.versao = 2;
    robo2.potenciaLaser = 25.0;
    robo2.integridade = 100;

    cout << "STATUS INICIAL:" << endl;
    robo1.exibirStatus();
    robo2.exibirStatus();

    cout << "--- ATAQUE ---" << endl;
    robo1.disparar(robo2);

    cout << "STATUS FINAL:" << endl;
    robo1.exibirStatus();
    robo2.exibirStatus();

    return 0;
}