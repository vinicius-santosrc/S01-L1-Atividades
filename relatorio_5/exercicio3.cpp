#include <iostream>
using namespace std;

int main() {
    float saldo;
    int opcao;

    cout << "Informe o saldo inicial: ";
    cin >> saldo;

    do {
        cout << "\n--- MENU ---\n";
        cout << "1. Ver Saldo\n";
        cout << "2. Depositar\n";
        cout << "3. Sacar\n";
        cout << "4. Sair\n";
        cout << "Escolha uma opcao: ";
        cin >> opcao;

        if (opcao == 1) {
            cout << "Saldo atual: R$ " << saldo << endl;

        } else if (opcao == 2) {
            float deposito;
            cout << "Digite o valor para depositar: ";
            cin >> deposito;

            saldo = saldo + deposito;
            cout << "Deposito realizado!\n";

        } else if (opcao == 3) {
            float saque;
            cout << "Digite o valor para sacar: ";
            cin >> saque;

            if (saque > saldo) {
                cout << "Saldo insuficiente!\n";
            } else {
                saldo = saldo - saque;
                cout << "Saque realizado!\n";
            }

        } else if (opcao == 4) {
            cout << "Saindo...\n";

        } else {
            cout << "Opcao invalida!\n";
        }

    } while (opcao != 4);

    return 0;
}