SELECT Produto.Nome, SUM(Movimento.Quantidade * Movimento.PrecoUnitario) AS ValorTotalEntradas
FROM Movimento
INNER JOIN Produto ON Movimento.ID_Produto = Produto.ID_Produto
WHERE Movimento.TipoMovimento = 'C'
GROUP BY Produto.Nome;
