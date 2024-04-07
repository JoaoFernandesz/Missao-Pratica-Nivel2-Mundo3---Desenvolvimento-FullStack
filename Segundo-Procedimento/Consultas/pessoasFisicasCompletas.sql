SELECT Pessoa.*, PessoaFisica.CPF 
FROM Pessoa
INNER JOIN PessoaFisica ON Pessoa.ID_Pessoa = PessoaFisica.ID_Pessoa;
