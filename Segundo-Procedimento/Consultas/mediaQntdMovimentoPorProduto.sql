SELECT ID_Produto, SUM(Quantidade)/ Count(ID_produto) as "M�dia de Quantidade Por Movimento"
FROM Movimento
Group By ID_Produto
