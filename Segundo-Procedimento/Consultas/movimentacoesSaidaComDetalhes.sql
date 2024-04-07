SELECT Produto.Nome AS Produto, Pessoa.Nome AS Comprador, Movimento.Quantidade, 
       Movimento.PrecoUnitario, (Movimento.Quantidade * Movimento.PrecoUnitario) AS ValorTotal
FROM Movimento
INNER JOIN Produto ON Movimento.ID_Produto = Produto.ID_Produto
INNER JOIN Pessoa ON Movimento.ID_Pessoa = Pessoa.ID_Pessoa
WHERE Movimento.TipoMovimento = 'V';
