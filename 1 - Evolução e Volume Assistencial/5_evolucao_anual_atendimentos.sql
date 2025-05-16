#5 - Evolução anual do volume de atendimento (Annual evolution of service volume)

SELECT DATE_FORMAT(data_atendimento, '%Y') AS 'Ano',
	   COUNT(id_atendimento) AS 'Qtde. Atendimentos'
  FROM atendimentos
 GROUP BY DATE_FORMAT(data_atendimento, '%Y')