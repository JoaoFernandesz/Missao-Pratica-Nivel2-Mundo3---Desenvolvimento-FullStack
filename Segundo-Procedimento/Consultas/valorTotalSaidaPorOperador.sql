SELECT Usuario.Login, SUM(Movimento.Quantidade * Movimento.PrecoUnitario) AS ValorTotalSaida
FROM Movimento
INNER JOIN Usuario ON Movimento.ID_Usuario = Usuario.ID_Usuario
WHERE Movimento.TipoMovimento = 'V'
GROUP BY Usuario.Login;
