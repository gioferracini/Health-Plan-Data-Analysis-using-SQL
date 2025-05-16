#1 - Evolução de Beneficiários ativos por ano (Evolution of active associates by year)

WITH associados_ano AS (SELECT DATE_FORMAT(data_adesao, '%Y') AS Ano, 
	   COUNT(id_beneficiario) AS associados_ativos
  FROM beneficiarios
 GROUP BY Ano
),
termino_ano AS (SELECT DATE_FORMAT(data_termino, '%Y') AS Ano, 
	   COUNT(id_beneficiario) AS associados_terminos
  FROM beneficiarios
 GROUP BY Ano
)
SELECT a.Ano,
	   a.associados_ativos AS 'Associados Ativos',
       t.associados_terminos AS 'Associados Inativos',
	   SUM(a.associados_ativos) OVER (ORDER BY a.Ano) -
       COALESCE(t.associados_terminos, 0) AS 'Associados Ativos'
 FROM associados_ano a
 LEFT JOIN termino_ano t ON a.Ano = t.Ano
 ORDER BY a.Ano;