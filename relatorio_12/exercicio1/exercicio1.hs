data Bebida = Bebida {
    nome :: String,
    tipoBebida :: String,
    preco :: Double
}

data StatusPedido = Aberto | Entregue | Cancelado

data Pedido = Pedido {
    bebidas :: [Bebida],
    statusPedido :: StatusPedido
}

valorTotalpedido :: Pedido -> Double
valorTotalpedido pedido =
    case statusPedido pedido of
        Cancelado -> 0
        _ -> sum (map preco (bebidas pedido))

pegaPrimeirabebida :: Pedido -> String
pegaPrimeirabebida pedido =
    case bebidas pedido of
        [] -> "Nao tem bebida no pedido"
        (bebida:_) -> nome bebida

main :: IO ()
main = do
    let cafe = Bebida "Cafe" "Quente" 8.50
    let capuccino = Bebida "Capuccino" "Quente" 12.00
    let suco = Bebida "Suco" "Gelado" 9.00

    let pedido1 = Pedido [cafe, capuccino] Entregue
    let pedido2 = Pedido [suco] Cancelado
    let pedido3 = Pedido [] Aberto

    putStrLn "Pedido 1"
    putStrLn ("Bebida inicial: " ++ pegaPrimeirabebida pedido1)
    putStrLn ("Total: " ++ show (valorTotalpedido pedido1))

    putStrLn "Pedido 2"
    putStrLn ("Bebida inicial: " ++ pegaPrimeirabebida pedido2)
    putStrLn ("Total: " ++ show (valorTotalpedido pedido2))

    putStrLn "Pedido vazio"
    putStrLn ("Bebida: " ++ pegaPrimeirabebida pedido3)
    putStrLn ("Valor: " ++ show (valorTotalpedido pedido3))