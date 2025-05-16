#9 - Distribuição geográfica de beneficiários (Geographical distribution of associates)

SELECT cidade AS 'Cidade',
	   COUNT(id_beneficiario) AS 'Qtde. Beneficiários'
  FROM beneficiarios
 WHERE data_termino IS NULL
 GROUP BY cidade
 ORDER BY COUNT(id_beneficiario) DESC;
 
SELECT estado AS 'UF',
	   COUNT(id_beneficiario) AS 'Qtde. Beneficiários'
  FROM beneficiarios
 WHERE data_termino IS NULL
 GROUP BY estado
 ORDER BY COUNT(id_beneficiario) DESC 