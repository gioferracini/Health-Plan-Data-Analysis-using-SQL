#20 - Principais prestadores por especialidade (Main providers by specialty)

WITH maior_especialidade AS (
	SELECT p.nome_prestador,
	   p.especialidade,
       ROUND(SUM(a.valor_cobranca),2) AS valor_total
  FROM atendimentos a
 INNER JOIN prestadores p ON a.id_prestador = p.id_prestador
 GROUP BY p.nome_prestador, p.especialidade
),

ranking AS (
	SELECT *,
		   ROW_NUMBER() OVER (PARTITION BY nome_prestador ORDER BY valor_total DESC) AS rk
	  FROM maior_especialidade
)

SELECT nome_prestador,
	   especialidade,
       valor_total
  FROM ranking
 WHERE rk = 1
 ORDER BY valor_total DESC