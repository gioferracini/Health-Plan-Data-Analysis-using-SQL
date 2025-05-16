#11 - Especialidades com maior volume de atendimentos (Specialties with the highest volume of services)

SELECT p.especialidade AS 'Especialidade',
       COUNT(a.id_atendimento) AS 'Qtde. Atendimentos',
       ROUND(SUM(a.valor_cobranca ), 2) AS 'Valor Total'
  FROM atendimentos a
 INNER JOIN prestadores p ON a.id_prestador = p.id_prestador
 GROUP BY p.especialidade
 ORDER BY COUNT(a.id_atendimento) DESC
 LIMIT 10