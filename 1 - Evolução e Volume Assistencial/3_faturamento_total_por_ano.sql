#3 - Faturamento total por ano/mês (Total revenue by year/month)

SELECT DATE_FORMAT(data_atendimento, '%Y') AS Ano,
	   ROUND(SUM(valor_cobranca), 2) AS 'Faturamento Anual'
 FROM atendimentos
GROUP BY Ano;