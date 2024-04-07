DECLARE @CapturaID TABLE (ID_Pessoa INT);

INSERT INTO Pessoa (Nome, Telefone, Logradouro, Cidade, Estado, Email)
OUTPUT INSERTED.ID_Pessoa INTO @CapturaID
VALUES ('Joao', '1111-1111', 'Rua 12, casa 3, Quitanda', 'Riacho do Sul', 'PA', 'joao@riacho.com');

INSERT INTO PessoaFisica (ID_Pessoa, CPF)
SELECT ID_Pessoa, '11111111211' FROM @CapturaID;
GO

DECLARE @CapturaID TABLE (ID_Pessoa INT);

INSERT INTO Pessoa (Nome, Telefone, Logradouro, Cidade, Estado, Email)
OUTPUT INSERTED.ID_Pessoa INTO @CapturaID
VALUES ('Joao', '1111-1111', 'Rua 12, casa 3, Quitanda', 'Riacho do Sul', 'PA', 'joao@riacho.com');

INSERT INTO PessoaFisica (ID_Pessoa, CPF)
SELECT ID_Pessoa, '11111111111' FROM @CapturaID;
GO

SELECT
    P.ID_Pessoa,
    P.Nome,
    P.Telefone,
    P.Logradouro,
    P.Cidade,
    P.Estado,
    P.Email,
	PF.ID_Pessoa,
    PF.CPF
FROM Pessoa P
INNER JOIN PessoaFisica PF ON P.ID_Pessoa = PF.ID_Pessoa;
