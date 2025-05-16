#17 - Contagem de planos (Plans count)
 
SELECT p.id_plano AS 'ID Plano',
	   p.nome_plano AS 'Nome Plano',
       COUNT(b.id_beneficiario) AS 'Qtde. Benef. Plano',
       ROUND(SUM(b.mensalidade)) AS 'Total Mensalidade'
  FROM beneficiarios b
 INNER JOIN planos p ON b.id_plano = p.id_plano
 WHERE b.data_termino IS NULL
 GROUP BY p.id_plano, p.nome_plano
 ORDER BY COUNT(b.id_beneficiario) DESC