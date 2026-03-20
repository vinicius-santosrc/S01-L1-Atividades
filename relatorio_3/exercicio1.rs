use std::io;

fn verificar_senha(senha: &str) -> bool {
    if senha.len() < 10 {
        return false;
    }

    let mut numeros = 0;
    let mut maiuscula = false;

    for c in senha.chars() {
        if c.is_digit(10) {
            numeros += 1;
        }
        if c.is_ascii_uppercase() {
            maiuscula = true;
        }
    }

    numeros >= 2 && maiuscula
}

fn main() {
    loop {
        let mut entrada = String::new();
        println!("Digite uma senha:");
        io::stdin().read_line(&mut entrada).expect("Erro ao ler");

        let senha = entrada.trim();

        if verificar_senha(senha) {
            println!("A senha é válida, seja bem vindo!");
            break;
        } else {
            println!("Senha inválida.");
        }
    }
}