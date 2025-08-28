SELECT  IdCliente, 

        QtdePontos, 
        QtdePontos + 10 AS QtdePontosPlus10,
        QtdePontos * 2 AS QtdePontosDouble,

        DtCriacao,

        datetime(substr(DtCriacao, 1, 19)) AS DtCriacaoNova,

        strftime('%w', datetime(substr(DtCriacao, 1, 19))) AS DiaSemana

FROM clientes