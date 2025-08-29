-- Qual o produto com mais pontos transacionado?
SELECT IdProduto,
       sum(VlProduto * QtdeProduto) AS totalPontos,
       sum(QtdeProduto) AS qtdeVendas

FROM transacao_produto

GROUP BY IdProduto

ORDER BY sum(VlProduto) DESC