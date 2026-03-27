package main
import "fmt"

func main() {

    var ladoA, ladoB, ladoC int

    fmt.Print("Digite o lado A: ")
    fmt.Scanln(&ladoA)

    fmt.Print("Digite o lado B: ")
    fmt.Scanln(&ladoB)

    fmt.Print("Digite o lado C: ")
    fmt.Scanln(&ladoC)

    if ladoA + ladoB > ladoC && ladoA + ladoC > ladoB && ladoB + ladoC > ladoA {
        switch {
        case ladoA == ladoB && ladoB == ladoC:
            fmt.Println("Triângulo Equilátero")
        case ladoA == ladoB || ladoA == ladoC || ladoB == ladoC:
            fmt.Println("Triângulo Isósceles")
        default:
            fmt.Println("Triângulo Escaleno")
        }

    } else {
        fmt.Println("Erro: os valores não formam um triângulo")
    }

}