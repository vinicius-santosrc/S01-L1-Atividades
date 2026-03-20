use std::io;

fn imprimir_multiplos(numero: i32, limite_inferior: i32, limite_superior: i32) {
    for i in limite_inferior..=limite_superior {
        if i % numero == 0 {
            println!("{}", i);
        }
    }
}

fn main() {
    let mut entrada = String::new();
    println!("Digite o numero da tabuada:");
    io::stdin().read_line(&mut entrada).expect("Erro ao ler");
    let numero: i32 = entrada.trim().parse().unwrap_or(0);

    let mut entrada = String::new();
    println!("Digite o limite inferior:");
    io::stdin().read_line(&mut entrada).expect("Erro ao ler");
    let li: i32 = entrada.trim().parse().unwrap_or(0);

    let mut entrada = String::new();
    println!("Digite o limite superior:");
    io::stdin().read_line(&mut entrada).expect("Erro ao ler");
    let ls: i32 = entrada.trim().parse().unwrap_or(0);

    imprimir_multiplos(numero, li, ls);
}