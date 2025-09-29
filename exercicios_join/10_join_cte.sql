-- 10. Como foi a curva de Churn do Curso de SQL?

-- SELECT 
--        substr(DtCriacao, 1, 10) AS dtDia,
--        count(DISTINCT idCliente) AS qtdeCliente
-- FROM transacoes
-- WHERE DtCriacao >= '2025-08-25'
-- AND DtCriacao < '2025-08-30'
-- GROUP BY dtDia

WITH tb_clientes_d1 AS (
     SELECT DISTINCT idCliente
     FROM transacoes
     WHERE DtCriacao >= '2025-08-25'
     AND DtCriacao < '2025-08-26'
)

SELECT 
       substr(t2.DtCriacao, 1, 10) AS dtDia,
       count(DISTINCT t1.idCliente) AS qtdeCliente,
       1.* count(DISTINCT t1.idCliente) / (SELECT count(*) from tb_clientes_d1) AS pctRetencao,
       1 - 1.* count(DISTINCT t1.idCliente) / (SELECT count(*) from tb_clientes_d1) AS pctChurn

FROM tb_clientes_d1 AS t1

LEFT JOIN transacoes AS t2
ON t1.idCliente = t2.idCliente

WHERE DtCriacao >= '2025-08-25'
AND DtCriacao < '2025-08-30'

GROUP BY dtDia