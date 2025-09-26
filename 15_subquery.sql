-- Dos clientes que começaram SQL no primeiro dia, quantos chegaram ao 5o dia?

SELECT count(DISTINCT idCliente)

FROM transacoes AS t1

WHERE t1.idCliente IN (
    SELECT DISTINCT idCliente
    FROM transacoes
    WHERE substr(DtCriacao, 1, 10) = '2025-08-25'
)

AND substr(DtCriacao, 1, 10) = '2025-08-29'
;

SELECT count(DISTINCT idCliente)

FROM transacoes AS t1

WHERE substr(DtCriacao, 1, 10) = '2025-08-25';