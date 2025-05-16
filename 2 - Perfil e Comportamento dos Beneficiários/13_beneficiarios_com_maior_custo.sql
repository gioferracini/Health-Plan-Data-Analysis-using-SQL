#13 - Beneficiários que mais geraram custo (Associates who generated the most costs)

SELECT b.nome_beneficiario AS 'Nome Beneficiário',
       b.cidade AS 'Cidade Benef.',
       b.estado AS 'UF Benef.',
       COUNT(a.id_atendimento) AS 'Qtde. Atendimentos',
       ROUND(SUM(a.valor_cobranca ), 2) AS 'Valor Total',
       CASE
			WHEN b.data_termino IS NULL THEN 'Ativo'
            ELSE 'Inativo'
	   END AS 'Status'
  FROM atendimentos a
 INNER JOIN beneficiarios b ON a.id_beneficiario = b.id_beneficiario
 GROUP BY b.id_beneficiario
 ORDER BY COUNT(a.id_atendimento) DESC
 LIMIT 10