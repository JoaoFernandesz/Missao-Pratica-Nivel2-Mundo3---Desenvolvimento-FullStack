SELECT Usuario.Login, SUM(Movimento.Quantidade * Movimento.PrecoUnitario) AS ValorTotalEntrada
FROM Movimento
INNER JOIN Usuario ON Movimento.ID_Usuario = Usuario.ID_Usuario
WHERE Movimento.TipoMovimento = 'C'
GROUP BY Usuario.Login;
