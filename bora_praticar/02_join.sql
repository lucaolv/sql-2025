-- Em 2024, quantas transações de Lovers tivemos?

SELECT t3.DescCateogriaProduto,
       count(DISTINCT t1.IdTransacao)

FROM transacoes AS t1

LEFT JOIN transacao_produto AS t2
ON t1.IdTransacao = t2.IdTransacao

LEFT JOIN produtos AS t3
ON t2.IdProduto = t3.IdProduto

WHERE substr(DtCriacao, 1, 4) = '2024'
-- AND t3.DescCateogriaProduto = 'lovers'

GROUP BY t3.DescCateogriaProduto
HAVING count(DISTINCT t1.IdTransacao) < 1000

ORDER BY count(DISTINCT t1.IdTransacao) DESC
