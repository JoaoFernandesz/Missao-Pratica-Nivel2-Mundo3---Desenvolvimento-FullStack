SELECT ID_Produto, SUM(Quantidade)/ Count(ID_produto) as "Média de Quantidade Por Movimento"
FROM Movimento
Group By ID_Produto
