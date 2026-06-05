data Servico = Servico {
    nome :: String,
    tipoServico :: String,
    preco :: Double
}

data StatusAtendimento = EmAndamento | Finalizado | Cancelado

data Atendimento = Atendimento {
    servicos :: [Servico],
    statusAtendimento :: StatusAtendimento
}

valorAtendimentofinal :: Atendimento -> Double
valorAtendimentofinal atendimento =
    if statusAtendimento atendimento == Cancelado
        then 0
        else if length (servicos atendimento) > 3
            then total + taxaExtra
            else total
    where
        total = sum (map preco (servicos atendimento))
        taxaExtra = total * 0.25

servicoPrimeiro :: Atendimento -> String
servicoPrimeiro atendimento =
    case servicos atendimento of
        [] -> "Nao foi colocado nenhum servico"
        (servico:_) -> nome servico

main :: IO ()
main = do
    let s1 = Servico "Banho medicinal" "Banho" 80.00
    let s2 = Servico "Massagem" "Relaxamento" 60.00
    let s3 = Servico "Cha espiritual" "Alimento" 25.00
    let s4 = Servico "Limpeza especial" "Limpeza" 100.00

    let atendimento1 = Atendimento [s1, s2] Finalizado
    let atendimento2 = Atendimento [s1, s2, s3, s4] EmAndamento
    let atendimento3 = Atendimento [] Finalizado
    let atendimento4 = Atendimento [s3] Cancelado

    putStrLn "Atendimento 1"
    putStrLn ("Primeiro servico: " ++ servicoPrimeiro atendimento1)
    putStrLn ("Valor: " ++ show (valorAtendimentofinal atendimento1))

    putStrLn "Atendimento 2"
    putStrLn ("Primeiro servico: " ++ servicoPrimeiro atendimento2)
    putStrLn ("Valor: " ++ show (valorAtendimentofinal atendimento2))

    putStrLn "Atendimento 3"
    putStrLn ("Primeiro servico: " ++ servicoPrimeiro atendimento3)
    putStrLn ("Valor: " ++ show (valorAtendimentofinal atendimento3))

    putStrLn "Atendimento cancelado"
    putStrLn ("Servico: " ++ servicoPrimeiro atendimento4)
    putStrLn ("Valor final: " ++ show (valorAtendimentofinal atendimento4))