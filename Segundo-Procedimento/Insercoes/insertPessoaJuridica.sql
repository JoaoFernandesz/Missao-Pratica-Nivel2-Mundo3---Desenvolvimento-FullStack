DECLARE @CapturaID TABLE (ID_Pessoa INT);

INSERT INTO Pessoa (Nome, Telefone, Logradouro, Cidade, Estado, Email)
OUTPUT INSERTED.ID_Pessoa INTO @CapturaID
VALUES ('JJC', '1212-1212', 'Rua 1, Centro', 'Riacho do Norte', 'PA', 'jjc@riacho.com');

INSERT INTO PessoaJuridica(ID_Pessoa, CNPJ)
SELECT ID_Pessoa, '22222222222222' FROM @CapturaID;
GO

SELECT
    P.ID_Pessoa,
    P.Nome,
    P.Telefone,
    P.Logradouro,
    P.Cidade,
    P.Estado,
    P.Email,
	PJ.ID_Pessoa,
    PJ.CNPJ
FROM Pessoa P
INNER JOIN PessoaJuridica PJ ON P.ID_Pessoa = PJ.ID_Pessoa;
