-- Qual dia da semana com mais pedidos em 2025?
SELECT
    CASE strftime('%w', datetime(substr(DtCriacao,1,19)))
      WHEN '0' THEN 'Domingo' 
      WHEN '1' THEN 'Segunda-feira' 
      WHEN '2' THEN 'Terça-feira'
      WHEN '3' THEN 'Quarta-feira' 
      WHEN '4' THEN 'Quinta-feira' 
      WHEN '5' THEN 'Sexta-feira'
      WHEN '6' THEN 'Sábado' 
    END AS DiaNome,

    strftime('%w', datetime(substr(DtCriacao,1,19))) AS DiaSemanaNum,
    COUNT(*) AS TotalPedidos

FROM transacoes
WHERE strftime('%Y', datetime(substr(DtCriacao,1,19))) = '2025'

GROUP BY 1

ORDER BY 3 DESC
;

SELECT 
        strftime('%w', substr(DtCriacao,1,10)) AS diaSeamana,
        count(DISTINCT IdTransacao) AS qtdeTransacao,
        count(IdTransacao) AS qtdeTransacao2,
        count(*) AS qtdeTransacao3

FROM transacoes

WHERE substr(DtCriacao,1,4) = '2025'

GROUP BY 1
;