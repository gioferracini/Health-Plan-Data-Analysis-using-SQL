#15 - Reutilização do prestador (fidelidade) (Provider reuse (loyalty))

SELECT p.nome_prestador AS 'Nome Prestador',
	   b.nome_beneficiario AS 'Nome Benef.',
       COUNT(DISTINCT a.id_atendimento) AS 'Qtde. Reutilização'
  FROM atendimentos a
 INNER JOIN beneficiarios b ON a.id_beneficiario = b.id_beneficiario
 INNER JOIN prestadores p ON a.id_prestador = p.id_prestador
 GROUP BY a.id_prestador, a.id_beneficiario
 HAVING COUNT(*) >= 2
 ORDER BY COUNT(DISTINCT a.id_atendimento) DESC
 LIMIT 20
 