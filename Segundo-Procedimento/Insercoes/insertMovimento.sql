INSERT INTO Movimento (ID_Produto, ID_Usuario, ID_Pessoa, TipoMovimento, Quantidade, PrecoUnitario) 
VALUES (1, 1, 12, 'V', 50, (SELECT PrecoVenda FROM Produto WHERE ID_Produto = 1));

INSERT INTO Movimento (ID_Produto, ID_Usuario, ID_Pessoa, TipoMovimento, Quantidade, PrecoUnitario) 
VALUES (3, 2, 14, 'C', 100, (SELECT PrecoVenda FROM Produto WHERE ID_Produto = 3));
GO

SELECT *
FROM Movimento