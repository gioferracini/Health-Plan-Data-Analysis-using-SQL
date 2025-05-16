#14 - Frequência de atendimentos por dia da semana (Frequency of services by day of the week)

SELECT dayname(data_atendimento),
	   COUNT(dayofweek(data_atendimento))
  FROM atendimentos
  GROUP BY dayname(data_atendimento)
  ORDER BY COUNT(dayofweek(data_atendimento)) DESC