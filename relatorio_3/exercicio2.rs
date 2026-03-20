use std::io;

fn eh_impar(numero: i32) -> bool {
    numero % 2 != 0
}

fn main() {
    let mut entrada = String::new();
    println!("Jogador 1, escolha (par/impar):");
    io::stdin().read_line(&mut entrada).expect("Erro ao ler");
    let escolha = entrada.trim().to_lowercase();

    let mut entrada = String::new();
    println!("Jogador 1, digite um numero:");
    io::stdin().read_line(&mut entrada).expect("Erro ao ler");
    let num1: i32 = entrada.trim().parse().unwrap_or(0);

    let mut entrada = String::new();
    println!("Jogador 2, digite um numero:");
    io::stdin().read_line(&mut entrada).expect("Erro ao ler");
    let num2: i32 = entrada.trim().parse().unwrap_or(0);

    let soma = num1 + num2;

    println!("Soma: {}", soma);

    if (eh_impar(soma) && escolha == "impar") || (!eh_impar(soma) && escolha == "par") {
        println!("Jogador 1 venceu!");
    } else {
        println!("Jogador 2 venceu!");
    }
}