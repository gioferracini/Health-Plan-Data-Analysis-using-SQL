#10 - Ticket médio por atendimento (Average ticket by service)

WITH qtde_atend AS (
	SELECT COUNT(*) AS total_qtde FROM atendimentos
),

total_fat AS (
	SELECT ROUND(SUM(valor_cobranca), 2) AS valor_fat FROM atendimentos
)

SELECT ROUND((tf.valor_fat / qa.total_qtde), 2)
  FROM total_fat tf
  JOIN qtde_atend qa