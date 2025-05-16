#4 - Reutilização por Especialidade (Specialty reuse)

SELECT p.especialidade,
	   b.nome_beneficiario,
       COUNT(DISTINCT a.id_atendimento)
  FROM atendimentos a
 INNER JOIN prestadores p ON a.id_prestador = p.id_prestador
 INNER JOIN beneficiarios b ON a.id_beneficiario = b.id_beneficiario
 GROUP BY p.especialidade, a.id_beneficiario
 HAVING COUNT(*) >= 2
 ORDER BY COUNT(DISTINCT a.id_atendimento) DESC
 LIMIT 20