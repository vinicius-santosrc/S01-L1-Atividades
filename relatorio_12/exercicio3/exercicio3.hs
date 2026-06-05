data Banda = Banda {
    nome :: String,
    genero :: String,
    cache :: Double
}

data StatusEvento = Ativo | Encerrado | Cancelado

data Evento = Evento {
    bandas :: [Banda],
    statusEvento :: StatusEvento
}

calculaCustoevento :: Evento -> Double
calculaCustoevento evento =
    if statusEvento evento == Cancelado
        then 0
        else total + taxa
    where
        total = sum (map cache (bandas evento))
        taxa = total * 0.20

bandaQueComeca :: Evento -> String
bandaQueComeca evento =
    case bandas evento of
        [] -> "nao tem banda"
        (banda:_) -> nome banda

ultimaBandaevento :: Evento -> String
ultimaBandaevento evento =
    if null (bandas evento)
        then "Sem banda cadastrada"
        else nome (last (bandas evento))

main :: IO ()
main = do
    let b1 = Banda "Guns N ROses" "Rock" 1000.00
    let b2 = Banda "The Weekend" "Pop" 800.00
    let b3 = Banda "Mettalica" "Metal" 1200.00

    let evento1 = Evento [b1, b2] Ativo
    let evento2 = Evento [b2, b3] Encerrado
    let evento3 = Evento [b1] Cancelado

    putStrLn "Evento 1"
    putStrLn ("Banda que começa: " ++ bandaQueComeca evento1)
    putStrLn ("Banda que fecha:" ++ ultimaBandaevento evento1)
    putStrLn ("Valor total: " ++ show (calculaCustoevento evento1))

    putStrLn "Evento 2"
    putStrLn ("Primeira banda: " ++ bandaQueComeca evento2)
    putStrLn ("Ultima banda: " ++ ultimaBandaevento evento2)
    putStrLn ("Custo do evento: " ++ show (calculaCustoevento evento2))

    putStrLn "Evento cancelado"
    putStrLn ("Começaria com: " ++ bandaQueComeca evento3)
    putStrLn ("Valor: " ++ show (calculaCustoevento evento3))