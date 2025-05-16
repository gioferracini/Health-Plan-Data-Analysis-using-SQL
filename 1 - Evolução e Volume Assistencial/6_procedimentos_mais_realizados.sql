#6 - Procedimentos mais realizados (Most perfomed procedures)

SELECT descricao_procedimento AS 'Procedimento',
	   COUNT(id_atendimento) AS 'Total de Atendimentos',
       ROUND(SUM(valor_cobranca), 2) AS 'Valor Total'
  FROM atendimentos 
GROUP BY descricao_procedimento
ORDER BY COUNT(id_atendimento) DESC
LIMIT 10