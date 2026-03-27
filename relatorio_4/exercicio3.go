package main
import "fmt"

func fibonacci(n int) {
    a, b := 0, 1

    for i := 0; i < n; i++ {
        fmt.Print(a, " ")

        proximo := a + b
        a = b
        b = proximo
    }

    fmt.Println()
}

func main() {

    var n int

    fmt.Print("Quantos números da sequência Fibonacci deseja ver? ")
    fmt.Scanln(&n)

    fibonacci(n)

}