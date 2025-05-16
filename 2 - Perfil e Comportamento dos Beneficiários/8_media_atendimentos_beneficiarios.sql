#8 - Média de atendimentos por beneficiário (Average number of services by associates)

WITH total_benef AS (
	SELECT COUNT(*) AS totalbenef FROM beneficiarios WHERE data_termino IS NULL
),

total_atend AS (
	SELECT COUNT(*) AS totalatend FROM atendimentos a INNER JOIN beneficiarios b ON a.id_beneficiario = b.id_beneficiario WHERE data_termino IS NULL 
)

SELECT tb.totalbenef AS 'Total Beneficiarios Ativos',
	   ta.totalatend AS 'Total Atendimentos Benef. Ativos',
       ta.totalatend / tb.totalbenef AS 'Média de Atendimentos'
 FROM total_benef tb
 JOIN total_atend ta
 GROUP BY tb.totalbenef, ta.totalatend
