-- Qual cliente fez mais transações no ano de 2024?
SELECT IdCliente, 
       COUNT(*) AS total_transacoes,
       count(DISTINCT IdTransacao)

FROM transacoes

WHERE DtCriacao >= '2024-01-01' 
AND DtCriacao < '2025-01-01'

GROUP BY IdCliente

ORDER BY total_transacoes DESC

LIMIT 1