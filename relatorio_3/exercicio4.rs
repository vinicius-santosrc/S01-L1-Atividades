use std::io;

fn calcular_media(nota1: f64, nota2: f64, nota3: f64) -> f64 {
    let npt = (nota1 + nota2) / 2.0;
    let media = (npt * 0.7) + (nota3 * 0.3);

    if npt >= 60.0 && nota3 >= 60.0 {
        println!("Aprovado! Parabéns!");
    } else {
        println!("Reprovado.");
    }

    media
}

fn main() {
    let mut entrada = String::new();
    println!("Digite a NP1:");
    io::stdin().read_line(&mut entrada).expect("Erro ao ler");
    let n1: f64 = entrada.trim().parse().unwrap_or(0.0);

    let mut entrada = String::new();
    println!("Digite a NP2:");
    io::stdin().read_line(&mut entrada).expect("Erro ao ler");
    let n2: f64 = entrada.trim().parse().unwrap_or(0.0);

    let mut entrada = String::new();
    println!("Digite a NPL:");
    io::stdin().read_line(&mut entrada).expect("Erro ao ler");
    let n3: f64 = entrada.trim().parse().unwrap_or(0.0);

    let media = calcular_media(n1, n2, n3);
    println!("Media final: {}", media);
}