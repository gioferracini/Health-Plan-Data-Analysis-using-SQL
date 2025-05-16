#7 - Percentual de atendimentos por tipo de guia (Percentage of services by type of guide)

WITH total AS (
SELECT SUM(valor_cobranca) AS totalfat FROM atendimentos
)

SELECT a.tipo_guia AS 'Tipo de Guia',
	   ROUND(SUM(a.valor_cobranca), 2) AS 'Valor Total',
       ROUND(SUM(a.valor_cobranca) / MAX(t.totalfat) * 100, 2) AS 'Percentual %'
  FROM atendimentos a
  JOIN total t
  GROUP BY a.tipo_guia
  ORDER BY 'Valor Total' DESC