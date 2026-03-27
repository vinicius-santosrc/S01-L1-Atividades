package main
import "fmt"

func ValidarUsuario(nome string) (bool, string) {
    if len(nome) >= 8 {
        return true, "Usuário criado com sucesso!"
    }
    return false, "Erro: O nome de usuário é muito curto"
}

func main() {

    var usuario string
    var valido bool
    var mensagem string

    for {
        fmt.Print("Digite um nome de usuário: ")
        fmt.Scanln(&usuario)

        valido, mensagem = ValidarUsuario(usuario)

        fmt.Println(mensagem)

        if valido {
            break
        }
    }

}