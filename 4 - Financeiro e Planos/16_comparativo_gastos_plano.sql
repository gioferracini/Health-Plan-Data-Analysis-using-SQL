#16 -  Comparativo de gastos por plano (Expense comparison by plan)

SELECT p.id_plano AS 'ID Plano',
       p.nome_plano AS 'Nome Plano',
       ROUND(SUM(a.valor_cobranca),2) AS 'Valor Gasto'
  FROM atendimentos a
 INNER JOIN beneficiarios b ON a.id_beneficiario = b.id_beneficiario
 INNER JOIN planos p ON b.id_plano = p.id_plano
 GROUP BY p.id_plano, p.nome_plano
 ORDER BY ROUND(SUM(a.valor_cobranca),2) DESC