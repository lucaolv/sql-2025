-- Quantos produtos são de rpg?
SELECT count(*) AS totalRpg
FROM produtos
WHERE DescCateogriaProduto = 'rpg';

SELECT DescCateogriaProduto, 
       count(*)

FROM produtos

GROUP BY DescCateogriaProduto;