data Item = Item {
    nome :: String,
    categoria :: String,
    preco :: Double
}

data StatusCompra = Pendente | Concluida | Cancelada

data Compra = Compra {
    itens :: [Item],
    statusCompra :: StatusCompra
}

calculaValorFinal :: Compra -> Double
calculaValorFinal compra
    | statusCompra compra == Cancelada = 0
    | total > 200 = total * 0.90
    | otherwise = total
    where
        total = sum (map preco (itens compra))

primeiroitem :: Compra -> String
primeiroitem compra =
    if null (itens compra)
        then "Compra vazia"
        else nome (head (itens compra))

main :: IO ()
main = do
    let item1 = Item "Espada" "Arma" 150.00
    let item2 = Item "Escudo" "Defesa" 90.00
    let item3 = Item "Pocao" "Cura" 30.00

    let compra1 = Compra [item1, item2, item3] Concluida
    let compra2 = Compra [] Pendente
    let compra3 = Compra [item1] Cancelada

    putStrLn "Compra de Hyrule"
    putStrLn ("Primeiro item: " ++ primeiroitem compra1)
    putStrLn ("Valor final: " ++ show (calculaValorFinal compra1))

    putStrLn "Outra compra"
    putStrLn ("Primeiro item: " ++ primeiroitem compra2)
    putStrLn ("Valor final: " ++ show (calculaValorFinal compra2))

    putStrLn "Compra cancelada"
    putStrLn ("Item: " ++ primeiroitem compra3)
    putStrLn ("Total: " ++ show (calculaValorFinal compra3))