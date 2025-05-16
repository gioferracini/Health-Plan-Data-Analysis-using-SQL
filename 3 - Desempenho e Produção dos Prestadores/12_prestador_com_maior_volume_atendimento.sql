#12 - Prestador com maior valor médio por atendimento (Provider with the highest average value per service)

SELECT p.nome_prestador AS 'Nome Prestador',
       p.cidade AS 'Cidade Prest.',
       p.estado AS 'UF Prest.',
       COUNT(a.id_atendimento) AS 'Qtde. Atendimentos',
       ROUND(SUM(a.valor_cobranca ), 2) AS 'Valor Total'
  FROM atendimentos a
 INNER JOIN prestadores p ON a.id_prestador = p.id_prestador
 GROUP BY p.id_prestador
 ORDER BY COUNT(a.id_atendimento) DESC
 LIMIT 10