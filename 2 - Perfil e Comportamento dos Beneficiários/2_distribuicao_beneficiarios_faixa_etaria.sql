#2 - Distribuição de beneficiários por faixa etária (Distribution of associates by age group)

SELECT 
faixa_etaria,
SUM(CASE WHEN sexo = 'M' THEN 1 ELSE 0 END) AS 'Masculino',
SUM(CASE WHEN sexo = 'F' THEN 1 ELSE 0 END) AS 'Feminino',
COUNT(*) as 'Total de Vidas'
FROM (
SELECT CASE 
	WHEN idade BETWEEN 0 AND 18 THEN  '0 a 18 anos'
	WHEN idade BETWEEN 19 AND 23 THEN '19 a 23 anos'
	WHEN idade BETWEEN 24 AND 28 THEN '24 a 28 anos'
	WHEN idade BETWEEN 29 AND 33 THEN '29 a 33 anos'
	WHEN idade BETWEEN 34 AND 38 THEN '34 a 38 anos'
	WHEN idade BETWEEN 39 AND 43 THEN '39 a 43 anos'
	WHEN idade BETWEEN 44 AND 48 THEN '44 a 48 anos'
	WHEN idade BETWEEN 49 AND 53 THEN '49 a 53 anos'
	WHEN idade BETWEEN 54 AND 58 THEN '54 a 58 anos'
	ELSE 'Acima de 59 anos'
	END AS faixa_etaria,
    sexo
  FROM beneficiarios
  WHERE data_termino IS NULL
) AS base
GROUP BY faixa_etaria
ORDER BY faixa_etaria

