#19 - Tempo médio de permanência dos beneficiários ativos (Average length of stay of active beneficiaries)

WITH dif_tempo AS (
SELECT nome_beneficiario AS 'Nome Beneficiario',
	   data_adesao AS 'Data Adesão',
	   data_termino AS 'Data Término',
	   DATEDIFF(data_termino, data_adesao) AS periodo_dias
  FROM beneficiarios
 WHERE data_termino IS NOT NULL

UNION ALL

SELECT nome_beneficiario AS 'Nome Beneficiario',
	   data_adesao AS 'Data Adesão',
       data_termino AS 'Data Término',
       DATEDIFF('2025-01-01', data_adesao) AS periodo_dias
  FROM beneficiarios
 WHERE data_termino IS NULL
)
 
SELECT ROUND(AVG(periodo_dias), 2) AS 'Período Médio em Dias',
	   ROUND(AVG(periodo_dias) / 7, 2) AS 'Período Médio em Semanas',
       ROUND(AVG(periodo_dias) / 30, 2) AS 'Período Médio em Meses',
       ROUND(AVG(periodo_dias) / 365.25, 2) AS 'Período Médio em Anos'
  FROM dif_tempo
