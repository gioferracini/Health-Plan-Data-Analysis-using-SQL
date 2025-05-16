#18 - Comparativo por sexo (Comparison by sex)

SELECT b.sexo AS 'Sexo',
	   COUNT(DISTINCT b.id_beneficiario) AS 'Qtde. por Sexo',
       COUNT(a.id_atendimento) AS 'Qtde. Atendimentos',
       ROUND(SUM(a.valor_cobranca), 2) AS 'Valor Total de Atendimentos'
  FROM beneficiarios b
 INNER JOIN atendimentos a ON b.id_beneficiario = a.id_beneficiario
 WHERE b.data_termino IS NULL
 GROUP BY b.sexo