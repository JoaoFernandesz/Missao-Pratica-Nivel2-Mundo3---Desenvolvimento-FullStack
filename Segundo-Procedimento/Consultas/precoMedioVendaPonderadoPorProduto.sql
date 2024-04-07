SELECT Produto.Nome, 
SUM(Movimento.Quantidade * Movimento.PrecoUnitario) / SUM(Movimento.Quantidade) AS PrecoMedioVenda
FROM Movimento
INNER JOIN Produto ON Movimento.ID_Produto = Produto.ID_Produto
WHERE Movimento.TipoMovimento = 'V'
GROUP BY Produto.Nome;
